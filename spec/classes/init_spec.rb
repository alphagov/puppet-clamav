require 'spec_helper'

describe 'clamav' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "clamav class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should include_class('clamav::params') }

        it { should contain_class('clamav::install') }
        it { should contain_class('clamav::config') }
        it { should contain_class('clamav::service') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'clamav class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
