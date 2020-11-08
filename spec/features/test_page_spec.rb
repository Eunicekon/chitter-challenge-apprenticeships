feature 'Viewing test page' do
  scenario 'visiting the test page' do
    visit('/')
    expect(page).to have_content "Chitter"
  end
end

# As a Maker
# So that I can see what people are doing
# I want to see all the messages (peeps) in a browser
feature 'View_all_messages' do
  scenario 'view all messages' do
    visit('/messages')
    expect(page).to have_content "This is very interesting!"
    expect(page).to have_content "Or maybe not?!"
    expect(page).to have_content "lets continue and see!"
  end
end

# As a Maker
# So that I can let people know what I am doing  
# I want to post a message (peep) to chitter
feature 'post_a_messages' do
  scenario 'post a messages' do
    visit('/index')

    fill_in :comment, with: 'Hello'
    click_button 'Submit'
    
    expect(page).to have_content "Hello"
  end
end