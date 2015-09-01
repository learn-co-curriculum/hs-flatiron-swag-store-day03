## Flatiron Swag Shop!
Let's get a database set up to store our items!

**Step 1** - Set up a config directory and an environment.rb file - **don't forget your SQL database connection!** (Hint: It's totally okay to copy the environment.rb file from your Fwitter project.)

**Step 2** - Set up your Gemfile with all of your gems - don't forget activerecord and sqlite3 (totally okay to copy from Fwitter again!)

**Step 3** - Set up your Rakefile (copy that Fwitter!)

**Step 4** - Now we need to modify our Item class that inherits from ActiveRecord::Base

**Step 5** - Create a migration for the items table `rake db:create_migration NAME="create_items"` and get in there to set up your `up` and `down` methods. (Look at your Fwitter migration!). Don't forget to run your migration with `rake db:migrate` when you are done! The items table should include columns for:

```ruby
:name
:image_url 
:price
:count
```

**Step 6** - Let's add some items to our database! Boot up `tux` in your terminal and create some new items. Here are some image links that you can use:

+ [hat](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hat.jpg)
+ [hoodie](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hoodie.jpg)
+ [men's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_m.jpg)
+ [women's tee](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_w.jpg)
+ [tote](https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tote.jpg)

You can set your own price and decide the count that you have in stock.

**Step 7** -  You'll want to modify your controller action for `/items` route. You shouldn't be creating items in that route, instead you want to create an instance variable that stores all the items in the database.

Take a look at that swag!

## Bonus Challenges
+ Add an inventory page that displays the count for each item.
+ Set up a form that lists all the items and allows users to chose how many of each item they would like to order. Hint: There is a `type="number"` attribute for form inputs. Google it! 
  * When the form is submitted the user is displayed a page that shows them what they ordered and their total cost.
  * Don't forget that the items' inventory (count) should also decrease when the form is submitted!
+ Set up a form on your inventory page that lets you increase the inventory for any item.
  * When the form is submitted, the items' inventory (count) should increase.

