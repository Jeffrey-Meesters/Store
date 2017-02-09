# Project - in development :metal:

###An Image of the Shoes index page:

- Left: A normal user (not signed up, but sees the same as a signed-up/in user)
- Right: Admin user (gets more crud options)

![Image of index]
(http://res.cloudinary.com/debyt5msz/image/upload/v1480600155/Schermafbeelding_2016-12-01_om_14.47.47_t0vwe5.png)


###An Image of the Shoe and Cart show page:
![Image of show]
(http://res.cloudinary.com/debyt5msz/image/upload/v1483455329/Schermafbeelding_2017-01-03_om_15.54.14_mrzd6x.png)


###An Image of Stripe checkout and Stripe dashboard
![Image of Stripe]
(http://res.cloudinary.com/debyt5msz/image/upload/v1483530857/Schermafbeelding_2017-01-04_om_12.55.05_bguweh.png)


## README

- Ruby version
  - Ruby 2.3.1
  - Rails 5.0

- Database creation
  - terminal: rails db:setup

- Database initialization
  - terminal: rails db:seed
  
- To use stripe
  - Create an account on stripe
  - replace your keys with my test-keys     <del>(O, o security issue)</del>
  
- Run web-app
  - Go to the apps' root folder in your terminal
  - type: gem install
  - start the server: PUBLISHABLE_KEY=!!YOUR KEY!!\SECRET_KEY=!!YOUR KEY!! rails s
  - go in your browser to: localhost:3000
