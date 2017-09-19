# Rails Todo
A rails todo application built for educational purposes!

Rails version: 5.1.4

Ruby version: 2.3.3 (i386-mingw32)

## Building
> Assuming you have git, ruby, rails and bundler installed
1. `$ git clone github.com/jacsmith21/railstodo`
2. `$ cd railstodo`
3. `$ bundle install`
4. `$ gem install mailcatcher`
5. `$ mailcatcher` (in one terminal)
5. `$ rails server` (in another)

If you are receiving this error: `cannot load such file -- bcrypt` then run:
1. `$ gem uninstall bcrypt`
2. `$ gem install bcrypt --platform=Ruby`

## Technologies Used
* The HTML Abstraction Markup Language `haml` is used as the templating engine instead of the default Embedded RuBy `erb` engine (similar but much cleaner)
* `mailcatcher` is used to catch mail before it's (unsuccessfully) sent out so that you can confirm your email!
* `devise` is used for authentication
* `cancan` is used to manage permissions

## Todo
1. Dockerize
2. Make New Task button look better
