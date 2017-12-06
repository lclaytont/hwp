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

**Now that we have our Rails app up and running, let's add in the HTML content from our Portfolio project.**

Open `app/views/layouts/_navigation.html.erb` and replace its contents with the following:
```
<%# navigation styled for Bootstrap 4.0 %>
<nav class="navbar navbar-light bg-light">
    <div class="container">
        <%= link_to "Your Name Goes Here", root_path, class: 'navbar-brand' %>
        <ul class="nav navbar-nav">
            <%= render 'layouts/navigation_links' %> <!-- All your other links should go in the navigation_links layout file. -->
        </ul>
    </div>
</nav>
```

Note: Make sure to replace `Your Name Goes Here` with your full (legal) name.


Open `app/views/visitors/index.html.erb` in the Codio text editor and replace the `<h3>Welcome</h3>` with your HTML content. Since we already added the `navbar`, do not add this to `index`. For example:
```
<div class="container" id="page-content">
        <!-- Content here -->
        <div class="row">
            <div class="col-sm-4">
                <img id="profile-pic" src="https://avatars2.githubusercontent.com/u/5952189?s=460&v=4" alt="Profile Image">
            </div>
            <div class="col-sm-8">
                <h1>About Me</h1>

                <p>
                    Spicy jalapeno bacon ipsum dolor amet turkey cow sausage, venison pork hamburger
                    andouille shoulder bresaola ribeye ham drumstick flank. Pancetta turducken salami,
                    prosciutto frankfurter cow ham. Pork chop biltong ham chicken boudin jerky tenderloin.
                    Shoulder chicken short loin, kielbasa shank pork loin brisket turducken filet mignon
                    jerky cupim pancetta. Pig cupim sausage chicken fatback bresaola bacon, ham tenderloin
                    short ribs.
                </p>

                <p>
                    Short loin ground round corned beef, prosciutto kielbasa leberkas flank rump chicken
                    tongue cupim picanha andouille. Sirloin bresaola hamburger bacon, jowl t-bone salami
                    pastrami shankle frankfurter prosciutto meatloaf chuck alcatra meatball. Pancetta chuck
                    tri-tip fatback, boudin turkey pork loin doner. Biltong short ribs swine boudin andouille drumstick.
                </p>

                <a class="btn btn-outline-dark" href="https://github.com/ryankopinsky" role="button" target="_blank">GitHub</a>
            </div>
        </div>
    </div>
```

Note: Make sure to add your own Profile Image and link to your GitHub.

Finally, copy your CSS content from your Portfolio project into `app/assets/stylesheets/application.css.scss`. For example:
```
/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, or any plugin's
 * vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any other CSS/SCSS
 * files in this directory. Styles in this file should be added after the last require_* statement.
 * It is generally better to create a new file per style scope.
 *
 *= require_tree .
 *= require_self
 */

#page-content {
    margin-top: 60px;
}

#profile-pic {
    width: 100%;
    height: auto;
    margin-bottom: 40px;
}
```

You are now done with converting your Portfolio website to a Rails App.

---

#### Instructions for Deploying to Heroku
