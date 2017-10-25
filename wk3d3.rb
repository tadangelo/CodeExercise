require 'rspec'

def html_generator title
<<HTML
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
 
  <title>"#{ title }"</title>
</head>

<body>
</body>
</html>
HTML
end

p html_generator 'My Site'



# describe 'HTML generator' do
  # it 'allows for a dynamic title' do
    # expect(html_generator 'My Site').to match(/My Site/)
  # end
# end