require 'spec_helper'
describe 'redhat_cve2016' do

  context 'with defaults for all parameters' do
    it { should contain_class('redhat_cve2016') }
  end
end
