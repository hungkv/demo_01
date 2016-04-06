def create_category
  @category = FactoryGirl.create :category
end

Given(/^I visit home page$/) do
  visit "/"
end

When(/^I click button "(.*?)"$/) do |button|
  %{I press (button)}
end

Then(/^I visit the category page$/) do
  visit "/categories"
end

Given(/^I visit categories page$/) do
  visit "/categories"
end

When(/^I click to button "(.*?)"$/) do |arg1|
  %{I press (button)}
end

Then(/^I visit to lesson page$/) do
  create_category
  visit lessons_path(category_id: @category.id)
end
