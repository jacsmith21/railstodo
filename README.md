# Rails Todo
A rails todo application built for educational purposes!

Rails version: 5.1.4

Ruby version: 2.3.3 (i386-mingw32)


<img src="https://github.com/jacsmith21/railstodo/blob/master/screenshot.PNG" alt="Drawing" width="600"/>

## Building
With ruby, rails and bundler:
1. `$ git clone github.com/jacsmith21/railstodo.git`
2. `$ cd railstodo`
3. `$ bundle install`
4. `$ gem install mailcatcher`
5. `$ mailcatcher` (in one terminal)
5. `$ rails server` (in another)

Or with docker:
1. `$ git clone github.com/jacsmith21/railstodo.git`
2. `$ cd railstodo`
3. `docker build -t railstodo .`
4. `docker run -it -p 3000:3000 railstodo`

If you are receiving this error: `cannot load such file -- bcrypt` then run:
1. `$ gem uninstall bcrypt`
2. `$ gem install bcrypt --platform=Ruby`

## Technologies Used
* The HTML Abstraction Markup Language `haml` is used as the templating engine instead of the default Embedded RuBy `erb` engine (similar but much cleaner)
* `mailcatcher` is used to catch mail before it's (unsuccessfully) sent out so that you can confirm your email!
* `devise` is used for authentication
* `cancan` is used to manage permissions

*Used as guide: [iridakos/todo](https://github.com/iridakos/todo)*  
*Modeled style after: [tastejs/todomvc](https://github.com/tastejs/todomvc)*
