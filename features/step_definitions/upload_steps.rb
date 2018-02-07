Given('that I authenticated') do
  visit '/'
  fill_in 'username', with: 'eu@papito.io'
  fill_in 'password', with: 'secret'
  click_on 'Login'
end

Given('that I selected my profile picture') do
  @my_photo = File.join(Dir.pwd, 'features/support/fixtures/foto2.jpg')
end

When('I upload this photo') do
  click_link 'Profile'
  attach_file('profile-avatar', @my_photo)
end

Then('I see the message {string}') do |message|
  expect(page).to have_content message
  sleep 5 # trocar por wair for until
end
