#
# Cookbook:: pythonapp
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'pythonapp::pythonapp' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do

      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install python' do
      expect(chef_run).to install_package 'python'
    end

    it 'should install python-pip' do
      expect(chef_run).to install_package 'python-pip'
    end

    it 'should install virtualenv' do
      expect(chef_run).to install_package 'virtualenv'
    end

  end
end
