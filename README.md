---
tags: forms, active record, databases, kids, ruby, advanced, challenges
language: ruby
level: 3
type: challenges
---

## Flatiron Swag Shop!

If you haven't already started setting up your own Flatiron Swag Shop app first watch this [video](https://docs.google.com/a/flatironschool.com/file/d/0B_qWLnYbXOdPS2tMbHVpOG1GUVE/edit) then follow the steps below to get started.

**If you already got started last week you can skip to step 4**

**Step 1** - Set up your app and MVC directories.

**Step 2** - Set up your public directory with directories for css, img and js.

**Step 3** - Set up your config.ru file.

**Step 4** - Set up a config directory and an environment.rb file - **don't forget your SQL database connection!** (Hint: It's totally okay to copy the environment.rb file from your Fwitter project.)

**Step 5** - Set up your Gemfile with all of your gems - don't forget activerecord and sqlite3 (totally okay to copy from Fwitter again!)

**Step 6** - Set up your Rakefile (copy that Fwitter!)

**Step 7** - Now for the MVC. We're going to start with one model/table for Items with the following attributes/columns:

```ruby
:name
:image_url 
:price
:count
```

Create an `item.rb` file with an Item class - **don't forget to inherit from ActiveRecord::Base**. If you already created `item.rb` last week make sure to delete (or comment out) everything inside of the Item class - you don't need it and it might conflict with ActiveRecord.

**Step 8** - Create a migration for the items table `rake db:create_migration NAME="create_items"` and get in there to set up your `up` and `down` methods. (Look at your Fwitter migration!). Don't forget to run your migration with `rake db:migrate` when you are done! 

**Step 9** - Let's add some items to our database! Boot up `tux` in your terminal and create some new items. Here are some image links that you can use:

+ [hat](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hat.jpg)
+ [hoodie](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hoodie.jpg)
+ [men's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_m.jpg)
+ [women's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_w.jpg)
+ [tote](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tote.jpg)

You can set your own price and decide the count that you have in stock.

**Step 10** - We've got the M covered, now let's move onto the V. In your views directory create an `items.erb` file that will display all of the merch for our store - including each item's name, photo and price.

**Step 11** - Set up your `get '/items'` route to pull all of your items from the database and display them in your new `items.erb` template.

Take a look at that swag!

## Bonus Challenges
+ Add an inventory page that displays the count for each item.
+ Set up a form that lists all the items and allows users to chose how many of each item they would like to order. Hint: There is a `type="number"` attribute for form inputs. Google it! 
  * When the form is submitted the user is displayed a page that shows them what they ordered and their total cost.
  * Don't forget that the items' inventory (count) should also decrease when the form is submitted!
+ Set up a form on your inventory page that lets you increase the inventory for any item.
  * When the form is submitted, the items' inventory (count) should increase.

