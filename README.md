# Blood Tracker

This simple web application which enables a user to input and
track blood glucose readings and view reports on those readings.


* Ruby version
  Ruby 2.2.3
* Rails version
  Rails 5.0.0.1

##### Configuration


Homebrew : Homebrew is a package manager for Mac. Go to [this webpage](http://brew.sh) and follow the
instructions to install via git. Run this at the end to make sure everything is working correctly:

        brew doctor


rbenv : rbenv manages different versions of Ruby and sets of gems. Install via homebrew:
```
  brew install rbenv ruby-build
```
make sure to have all above versions of Ruby and Rails installed, otherwise do the following instructions:
```
  rbenv install 2.2.3
  rbenv global 2.2.3
  ruby -v  
```

More configurations:
  - $gem update --system
  - $gem install rails --version=5.0.0.1

  ##### Set up App

  Clone with HTTPS:
  - $git clone https://github.com/Farnoosh63/BloodTracker.git
  - $cd BloodTracker
  - $gem install bundler
  - $bundle install

##### Database creation
Open another terminal tab and start MYSQL

      - $mysql.server start
      - $mysql -u root -p


##### Database initialization
create the tables

      - $rake db:migrate

 Populate the levels database

      - $rake db:seed

##### boot server
```
  - $rails server
```
   visit http://localhost:3000/levels


##### How to run the test suite
```
  - $rake db:test:prepare # makes sure your test db is set up
  - $rake spec            # runs rspec tests
  - $rake                 # runs all tests
```

##### Legal

  Copyright (c) 2016 Farnoosh Johnson

  This software is licensed under the MIT license.

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
