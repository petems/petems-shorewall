require 'spec_helper'

describe 'shorewall' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "shorewall class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('shorewall') }
          it { is_expected.to contain_class('shorewall::params') }
          it { is_expected.to contain_class('shorewall::install').that_comes_before('shorewall::config') }
          it { is_expected.to contain_class('shorewall::config') }
          it { is_expected.to contain_class('shorewall::service').that_subscribes_to('shorewall::config') }

          it { is_expected.to contain_file('/etc/shorewall.conf').with_content(/Sample shorewall.conf/) }
          it { is_expected.to contain_file('/etc/shorewall/hosts').with_content(/HOSTS/) }
          it { is_expected.to contain_file('/etc/shorewall/interfaces').with_content(/Sample Interfaces File/) }
          it { is_expected.to contain_file('/etc/shorewall/masq').with_content(/Sample Masq file/) }
          it { is_expected.to contain_file('/etc/shorewall/policy').with_content(/Sample Policy File/) }
          it { is_expected.to contain_file('/etc/shorewall/routestopped').with_content(/Sample Routestopped/) }
          it { is_expected.to contain_file('/etc/shorewall/rules').with_content(/Sample Rules File/) }
          it { is_expected.to contain_file('/etc/shorewall/tcclasses').with_content(/Tcclasses File/) }
          it { is_expected.to contain_file('/etc/shorewall/tcdevices').with_content(/IN-BANDWIDTH/) }
          it { is_expected.to contain_file('/etc/shorewall/tcrules').with_content(/PROTO PORT/) }
          it { is_expected.to contain_file('/etc/shorewall/tunnels').with_content(/tunnels/) }
          it { is_expected.to contain_file('/etc/shorewall/zones').with_content(/Sample Zones File/) }

          it { is_expected.to contain_service('shorewall') }
          it { is_expected.to contain_package('shorewall').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'shorewall class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('shorewall') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
