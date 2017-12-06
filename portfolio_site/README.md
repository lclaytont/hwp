### **Create a Portfolio Website**

As a developer, it is important to have a place to refer people to in order to view your contact information as well as some of the current and past projects you are either working on or have worked on. Building a portfolio website is a good way for you to get some practice with HTML, CSS, and even some Bootstrap. It's important to remember this is the website that future employers will be looking at to get a snapshot at your professional background and your code.  

### **Your portfolio website should have the following information:**
• A profile image of yourself  
• A short bio of yourself  
• Social links (LinkedIn, Github, Twitter)  
• Your contact information (name, email, and phone number)  
• Projects (There must a way to link out to your projects whether they are live or on Github)  


### **Phase 1**
* Create a portfolio with basic styling
* Use Bootstrap: http://getbootstrap.com/ (tip: use Bootstrap CDN)
* Present your website in class


#### **Example Template**
```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <!-- Update your website title -->
    <title>My Website</title>

    <!-- Load Bootstrap CSS here -->
  </head>
  <body>
    <!-- Your content goes here -->

    <!-- At the end of all your content, add Bootstrap JS here -->
  </body>
</html>
```

---

### **Phase 2**
* Convert your portfolio website to a Rails app
* Push your portfolio website to Heroku
* Add your custom domain name (www.myname.com or www.myname.co)

#### Instructions for Converting Your Website to a Rails App

In the projects folder, create a new Rails app using **Rails Composer**: `$ rails new personal_site_rails -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb`

Select the following options:
1. Build a starter application? Choose `3` => Custom application (experimental)
1. Get on the mailing list for Rails Composer news? Press `Enter`
1. Web server for development? Choose `1` => Puma (default)
1. Web server for production? Choose `1` => Same as development
1. Database used in development? Choose `1` => SQLite
1. Template engine? Choose `1` => ERB
1. Test framework? Choose `1` => None
1. Front-end framework? Choose `2` => Bootstrap 4.0
1. How to install jQuery? Choose `1` => Add jquery-rails gem
1. Add support for sending email? Choose `1` => None
1. Authentication? Choose `1` => None
1. Authorization? Choose `1` => None
1. Add pages? Choose `2` => Home
1. Set a locale? Enter nothing for English, or es, de, etc: Press `Enter`
1. Install page-view analytics? Choose `1` => None
1. Prepare for deployment? Choose `2` => Heroku
1. Disable Rails Turbolinks? (y/n) Choose `y`
1. Set a robots.txt file to ban spiders? (y/n) Choose `n`
1. Create a GitHub repository? (y/n) `y`
1. Add gem and file for environment variables? Choose `1` => None
1. Improve error reporting with 'better_errors' during development? (y/n) Choose `y`
1. Use 'pry' as console replacement during development and test? (y/n) Choose `n`
1. Use 'rubocop' to ensure that your code conforms to the Ruby style guide? (y/n) Choose `n`
1. Add 'therubyracer' JavaScript runtime (for Linux users without node.js)? (y/n) Choose `n`
1. Rails Composer will install a bunch of stuff. You will then be asked for your github username and password.
1. You will see the following message: The authenticity of host 'github.com (192.30.253.113)' can't be established.
RSA key fingerprint is 16:27:ac:...:df:a6:48.
Are you sure you want to continue connecting (yes/no)? Choose `yes`
1. You may get the following warning: `fatal: Could not read from remote repository. Please make sure you have the correct access rights and the repository exists.` Ignore this.
1. Wait until the installation process is completed.

Once the installation process is completed:
1. `cd` into the newly created directory: `$ cd personal_site_rails/`
1. Run the Rails server: `$ rails s`
1. Go into your browser and open the URL: `http://<box-name>.codio.io:3000`
1. You should now see a blank page with a **Welcome** header. This is your *homepage*. Rails Composer created a `visitors` controller which serves as the landing page for the app.

Your `routes.rb` file should look something like the following:
```
Rails.application.routes.draw do
  root to: 'visitors#index'
end
```

By pointing the `root` to the `index` action of the `visitors` controller, the user will see the landing page when navigating to your URL.


---

#### Instructions for Deploying to Heroku
