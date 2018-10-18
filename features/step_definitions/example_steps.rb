Dado(/^que eu acesse o website$/) do
  @@page = @browser
  @@page.navigate.to @url
end
