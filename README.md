# Webbramverk-RegisterApp
This is an application in which developers can register their accounts and then fetch Event-resources through the backend API.


**RegisterApp copied from repository [1DV450_wk222as](https://github.com/WictorKihlbaum/1DV450_wk222as)**
* I have been following [this guide](https://www.railstutorial.org/book/frontmatter) to accomplish parts of this application.
* [Link](https://webbramverk-registerapp.herokuapp.com/) to the published application on Heroku (Might take some time to load first time).

<p>
The application database has been seeded with 26 different users and 10 registered applications for each user. One of these users is an Admin. To be able to login as admin please use these credentials:
</p>
**Email**: admin@user.com   
**Password**: Password   


This application has been developed on a Mac in JetBrains RubyMine IDE.
I would recommend following [this guide](http://railsapps.github.io/installrubyonrails-mac.html) to setup your Mac if you want to test this application locally.

I have written down the essentials step-by-step from the guide above.

**Prepare your Mac**

`$` Is included in the terminal by default.

**1.** Upgrade your Mac to OS X El Capitan (El Capitan can be downloaded from AppStore).

**2.** Install XCode (XCode can be downloaded from AppStore).

**3.** Install Homebrew by open terminal and type:  
 `$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`

**4.** Install GPG. In terminal type:  
`$ brew install gpg`

**5.** Install the security key for RVM. In terminal type:  
`$ command curl -sSL https://rvm.io/mpapis.asc | gpg --import -`

**6.** Install RVM. In terminal type:  
`$ \curl -L https://get.rvm.io | bash -s stable`

**7.** Close and reopen the Terminal, or type:  
`$ source ~/.rvm/scripts/rvm`

**8.** Install Ruby. In terminal type:  
`$ rvm install ruby-2.3.1`

**9.** Update gems. In terminal type:  
`$ gem update`

**10.** Install Bundler. In terminal type:  
`$ gem install bundler`

**11.** Install Nokogiri. In terminal type:  
`$ gem install nokogiri`

**12.** Install Rails. In terminal type:   
`$ gem install rails`

**Done! You should now be ready to download and run the application!**

**Application installation**  
**1.** Download the Zip-file and extract it.  
**2.** Open the terminal on your computer.   
**3.** Navigate to the extracted folder in your terminal.   
**4.** Type `bundle install --without production`  
**5.** Run the application by one of these options:    
--**5A.** Start RubyMine. Press Run > Run 'Development: RegisterApp'.     
--**5B.** Open terminal and type: `rails s`.     
**6.** Open your web browser and type "localhost:portnumber" (example: localhost:3000) in the address bar.   

**Done! Start using the application locally.**


### Reset database
Open the terminal and navigate to the application folder. Type in what it says below step by step.

**1.** `rake db:drop`   
**2.** `rake db:create`    
**3.** `rake db:migrate`    
**4.** `rake db:seed`    
