# RAWG API Wrapper
An [Avion School](https://www.avionschool.com/) Project with the task of creating our own API wrapper in a Ruby on Rails application using an API Client and a third-party API.

### What is an API Wrapper?
  - encapsulates multiple API calls to make complicated functions easy to use
  - help streamline the process of making API calls
  - can convert data into a compatible format

### RAWG, the 3rd-party API used
[RAWG](rawg.io) is the largest video game database and game discovery service. 
  - More than 350,000 games for 50 platforms including mobiles.
  - Rich metadata: tags, genres, developers, publishers, individual creators, official websites, release dates, Metacritic ratings.

See full RAWG Video Games Database API Documentation [here](https://api.rawg.io/docs/).

### REST Client, the API client used
A simple HTTP and REST client for Ruby, inspired by the Sinatra's microframework style of specifying actions: get, put, post, delete.

Check the API documentation [here](https://rubydoc.info/github/rest-client/rest-client/master).

## Installation
Sign up to RAWG first [here](https://rawg.io/signup) to get your own API key.

In your desired directory, run these commands on the terminal

```
git clone https://github.com/emerjohncy/rawg_api_wrapper.git
bundle install
cd rawg_api_wrapper
```
While in the root of the project's directory, run this command to create .env file
```
touch .env
```
Then add your API key inside the .env file you just created
```
# Inside the .env file


RAWG_API_KEY=your_rawg_api_key_here   #No apostrophes or quotation marks


#Only change 'your_rawg_api_key_here', don't change the variable name
```

Finally, run the server
```
rails s
```

## Routes
#### Get a list of creator positions/jobs
```
/api/creator-roles
```
#### Get a list of game creators
Since the API can only return a maximum of 40 results, I added params[:page_num] to possibly get all 25,000+ creators
```
/api/creators/:page_num
```
#### Get details of the creator
```
/api/creator/:id
```
