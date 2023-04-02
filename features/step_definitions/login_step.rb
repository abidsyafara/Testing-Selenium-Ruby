Given('I am on the homepage') do
  visit("https://dribbble.com/")
end

When('I click Sign In') do
  click_on "Sign in"
  expect(find('h2').text).to eql("Sign in to Dribbble")
end

When('I fill my credential') do
  fill_in 'login', with: 'abidsya71@gmail.com'
  fill_in 'password', with: 'Akubisa.123'
  find('input.button.form-sub').click
end

Then('I should be logged') do
  expect(find('#home.logged-in'))
end

When('I fill wrong email') do
  fill_in 'login', with: 'a@gmail.com'
  fill_in 'password', with: 'Akubisa.1234567'
  find('input.button.form-sub').click
end

Then('I should see the error message') do
  expect(find('div.notice.error')).to eql("We couldn’t find an account matching the email and password you entered. Please check your email and password and try again.")
end