### **Phase 2**
* Convert your portfolio website to a Rails app
* Push your portfolio website to Heroku
* Add your custom domain name (www.myname.com or www.myname.co): https://www.namecheap.com/support/knowledgebase/article.aspx/9737/2208/pointing-a-domain-to-the-heroku-app

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
1. You may get the following warning: `fatal: Could not read from remote repository. Please make sure you have the correct access rights and the repository exists.` Ignore this for now.
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

As always, let's add the changes we have made to Git:
```
$ git add .
$ git commit -m "Added content for personal site"
$ git push -u origin master
```
If you get an error pushing to GitHub, read the next section.

---

#### Instructions for Pushing to Github

Rails Composer should have created a GitHub repository for your Rails app. If you received the `fatal: Could not read from remote repository. Please make sure you have the correct access rights and the repository exists.` warning, complete this section. If you did not, push to GitHub and move onto the next section.

You received the fatal warning because your Codio box does not have SSH keys to connect to GitHub. Don't worry too much about the technicalities, just follow along.

First you'll want to cd into your .ssh directory: `$ cd ~/.ssh && ssh-keygen`

Your terminal will display the following:

```
Generating public/private rsa key pair.
Enter file in which to save the key (/home/codio/.ssh/id_rsa):
```

Press `Enter` to use the default filename.

You may receive a the following message: `/home/codio/.ssh/id_rsa already exists. Overwrite (y/n)?` Choose `y`.

You will be asked to enter a password (you can press `Enter` if you want to provide no password):
```
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
```

Finally, you will the terminal will display a message that looks like:
```
Your identification has been saved in /home/codio/.ssh/id_rsa.
Your public key has been saved in /home/codio/.ssh/id_rsa.pub.
The key fingerprint is:
56:ee:dd:...:e3:ab:ff
```

Next you need to copy the SSH key. Execute `$ cat id_rsa.pub` to output the SSH key to the terminal. Copy its output to your clipboard. The output should look something like:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHSnjS6UaBq/Nr71P+GYMwTjHLDtEQ0sWl4yDliSdYdp0y9WPNnLWtC0ldrVxbLBQfpkKBlpy8vbaNjmBig1D2EOcr
3mfhGzsjKDtjr3ubAeNMnq2Nti3wPyl0ap4TgIl8ETxSioIbUKH308EBVFAwEqwy7IxBzwVDF4qvCTf4TYKhjKzTePgVn/RBjZ codio@compact-lima
```

Once you've copied the key, add it to GitHub:
1. On GitHub.com, select your profile in the top right and go to `Settings => SSH and GPG keys`.
1. Selecting `New SSH Key`.
1. For the Title, you can add `Codio <Box-Name>`. For example, Title: `Codio Compact Lima`.
1. For the Key, paste it from your clipboard. For example, Key:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHSnjS6UaBq/Nr71P+GYMwTjHLDtEQ0sWl4yDliSdYdp0y9WPNnLWtC0ldrVxbLBQfpkKBlpy8vbaNjmBig1D2EOcr
3mfhGzsjKDtjr3ubAeNMnq2Nti3wPyl0ap4TgIl8ETxSioIbUKH308EBVFAwEqwy7IxBzwVDF4qvCTf4TYKhjKzTePgVn/RBjZ codio@compact-lima
```

Make sure you are in your Rails project and push to GitHub: `$ git push -u origin master`. You will be asked for the password that you entered when creating the SSH key: `Enter passphrase for key '/home/codio/.ssh/id_rsa':`. After entering the password, you should see that your code is successfully pushed to GitHub.

---

#### Instructions for Deploying to Heroku

In order to deploy our Rails app to Heroku, we will mirror the **Getting Started on Heroku with Ruby** instructions on Heroku (you can follow instructions in this guide instead of Heroku's): https://devcenter.heroku.com/articles/getting-started-with-ruby#set-up

If this is your first time using Heroku in your Codio box, we need to install the Heroku Command Line Interface (CLI). The following will add our apt repository and install the CLI:
```
$ sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
$ curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install heroku
```
Once installed, you can use the `heroku` command from your command shell. Log in using the email address and password you used when creating your Heroku account: `$ heroku login`. If you've successfully logged in, you should see a message: `Logged in as youremail@mail.com.`

Create an app on Heroku, which prepares Heroku to receive your source code: `$ heroku create`. You should see something similar to the following output:
```
Creating app... done, ⬢ salty-castle-49500
https://salty-castle-49500.herokuapp.com/ | https://git.heroku.com/salty-castle-49500.git
```

Take note of the herokuapp.com URL. This will be the Heroku URL you will use to visit your site.

Now deploy your code: `$ git push heroku master`.

You may get the following error: `error: failed to push some refs to 'https://git.heroku.com/salty-castle-49500.git'`. Upon further inspection, you will notice an error: `Gemfile.lock required. Please check it in.` We can verify that `Gemfile.lock` has not been added to git by `$ git status`.

Let's fix this by adding the Gemlock.file:
```
$ git add Gemfile.lock
$ git commit -m "Added Gemfile.lock"
$ git push
```

Retry pushing to Heroku: `$ git push heroku master`. After waiting for a bit, your Rails app should be successfully deployed to Heroku. **Virtual High Five!**
