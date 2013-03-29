# Getting Started with FakeBook

This is a repo for creating a simple social network site, called Fakebook. It is meant to be educational and part of CMU's ScottyLabs [Web App in a Weekend](http://webapp.scottylabs.org/). 

## 1. Pulling the Repository
Once you've set up [git, ruby, and Rails](http://cmu-is-272.org/labs/1), clone this repository to your own computer.
We recommend using github's [Mac](http://mac.github.com/) and [Windows](http://windows.github.com/) apps, but you can also run the following command from your terminal.
```
git clone git@github.com:juliat/fakebook.git
```

## 2. Starting the Server
First move to your fakebook folder 
```
cd fakebook
```

Run the following commands to start the server
```
bundle install
rake db:migrate
rails server
```

Once things are running, open your browser to [http://localhost:3000/](http://localhost:3000/)

## 3. Switching Branches

We've included sample code for a couple different stages of building this app.
In the github for Mac/Windows apps, you can just click on "Branches" to switch between these various stages.


### master
You should be at this stage at the end of day one. Models have been generated, and the database has been structured. To switch back to this stage, enter
```
git checkout master
```

### intermediate
You should be at this stage at the end of the "Models Logic, Custom Views, and Testing" sessions on Saturday.
We've added some controllers and views (HTML). To switch to this stage, enter
```
git checkout intermediate
```

### final
You should end up with something close to this at the end of Saturday. We've added some basic styling through CSS.
To switch to this stage, enter
```
git checkout final
```