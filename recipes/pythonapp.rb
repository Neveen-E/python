package 'python'
package 'python-pip'


apt_update 'update_sources' do
  action :update
end

package 'libncurses5-dev'
