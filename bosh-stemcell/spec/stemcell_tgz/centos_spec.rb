require 'spec_helper'

describe 'CentOS stemcell.tgz', stemcell_tgz: true do
  
  context 'installed by bosh_license stage' do
    describe file("#{ENV['STEMCELL_TGZ_WORKDIR']}/LICENSE") do
      it { should be_file }
      it { should contain 'Apache License' }
    end
    
    describe file("#{ENV['STEMCELL_TGZ_WORKDIR']}/NOTICE") do
      it { should be_file }
      it { should contain 'Cloud Foundry Foundation. All Rights Reserved.' }
    end
  end
end
