package 'android-sdk'

execute 'update-sdk-system-tools-and-platforms' do
  command "echo y | android update sdk --no-ui"
end

atom_system_image_package_id = node['sprout']['android']['atom_system_image_package_id']

execute 'update-sdk-system-images' do
  command "echo y | android update sdk -a --no-ui --filter #{atom_system_image_package_id}"
  user node['current_user']
end
