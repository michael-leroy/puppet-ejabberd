require 'spec_helper'

describe 'ejabberd::package' do

    context 'with ensure => installed and package_name => ejabberd' do
        let(:params) { {:ensure => 'installed'}}
        let(:params) { {:package_name => 'ejabberd'}}

        it do
            should contain_package('ejabberd') \
                .with_ensure('installed') \
                .with_name('ejabberd')
        end
    end

    context 'with osfamily => RedHat' do
        let(:facts) { {:osfamily => 'RedHat'} }

        it { should contain_class('epel') }
    end

end