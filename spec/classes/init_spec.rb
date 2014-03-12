require 'spec_helper'

describe 'clamav' do
context 'classes' do
        it { should contain_class('clamav::run_freshclam') }

        it { should contain_class('clamav::package') }
        it { should contain_class('clamav::config') }
        it { should contain_class('clamav::service') }
    end

end
