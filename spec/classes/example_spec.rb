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

          it { is_expected.to contain_class('shorewall::params') }
          it { is_expected.to contain_class('shorewall::install').that_comes_before('shorewall::config') }
          it { is_expected.to contain_class('shorewall::config') }
          it { is_expected.to contain_class('shorewall::service').that_subscribes_to('shorewall::config') }

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
