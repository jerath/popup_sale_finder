###Overview
For our [Lighthouse Labs midterm project](https://github.com/jerath/junk-hunters), we made an app that helps people find pop-up shops like garage sales or farmers markets happening now in their area.

#####This is a spin-off of that midterm project.

###Features
* Search for pop-up sales based on user location
* See a map of all current sales near user
* Browse all sales and see information like address, time, description, and image
* Post and edit sales

###Wish List
* Ability to reserve item can be set by sale creator, and if selected, reserving an item will sends a text to the sale owner.
* Items that have been reserved are apparently
* Ability to edit all sales instead of most recent
* Play with bootstrap
* Ability to post and view future sales
* Break up the create sale form into more usable chunks
* Get user information from browser
* **Sanitize user input to escape HTML**

###To run locally on vagrant
1. `bundle install`
2. `shotgun -p 3000 -o 0.0.0.0`
3. Visit `http://localhost:3000/` in your browser
4. `rake db:rebirth` to generate some test sales near Gastown, Vancouver

##### Contributors: [Samson Wong](https://github.com/samwongson), [Robin Beechey](https://github.com/robinbeechey).
