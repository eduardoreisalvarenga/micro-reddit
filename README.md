# micro-reddit
The purpose of this project is to implement the backend logic of the reddit website, a mini version of reddit called micro-reddit. 
It allows;
        - creation users
        - users to create a post or many posts
        - users to add comments to a post

## Built With
- Major languages: Ruby 2.7.0
- frameworks: Rails 5.2.3
- technologies used: Rubocop, Capybara

### Prerequisites
ruby version 2.7.0
rails version 5.2.3

### Setup
1. Clone the project
```console
git clone git@github.com:eduardoreisalvarenga/micro-reddit.git
```
2. Go to the project folder
```console
cd micro-reddit
```
3. run bundle to install all gems
```console 
bundle install
```
4. Update local database
```console
rails db:migrate
```
### Usage
Run the following command to run the project
```console
rails s
```
Run the rails console with `rails c` command
#### Creating new user
  `u1 = User.create(user_name: 'provide the username', email: 'user@example.com')`
#### Creating post
  `post1 = u1.posts.create(title: 'the title of the post', body: 'the body goes here')`

#### Adding comments
  `comment1 = post1.comments.create(comment: 'this is the comment', user_id: 1)`

## Validations
   #### users validations
      - user_name => Shall be present 
      - user_name => Shall be unique
      - users => Should be valid 
      - user_name_length => should be a minimun of 4 && maximum of 15
      - email => should be present && should be email format

   #### posts validations 
      - post should be valid
      - post title must be present
      - post body must be present
      - post title should have a minimum length of 4 chars
      - post title should be a maximum of 50 chars
      - post body should have a minim length of 5 chars
      - post body should have a maximum length of 300 chars
      - post should have a user id


   #### comments validation
      - comments should be valid 
      - comments should have user_id
      - comments can't be empty
      - comments should be attached to a post/a comment can't exist if there's no post
  
## Testing
  Run `rails test`

## Authors

👤 **Eduardo**

- Github: [@githubhandle](https://github.com/eduardoreisalvarenga)
- Twitter: [@twitterhandle](https://twitter.com/eduardodosrei11)
- Linkedin: [linkedin](https://www.linkedin.com/in/eduardo-alvarenga-44204818a/)


👤 **Oloo Moses**

- Github: [@githubhandle](https://github.com/oloomoses) 
- Twitter: [@twitterhandle](https://twitter.com/olooine)
- Linkedin: [linkedin](https://www.linkedin.com/in/oloo-moses-528bb1b3/)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
