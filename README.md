# BooksApp

I have implemented in the most simpler way. Used ransack for search functionality that can be replaced by pg_search or elasticsearch if advanced searching and filtering. Added letter_opener to test emails on local. Letter opener can be accessd at http://localhost:3000/letter_opener. 

Depndencies
 - Ruby 2.7.1
 - Mysql 
 - rails 5.2.6
 
 Setup
 1- Clone the repo
 <br>
    
```$ git clone ```

2-Setup ENV or update database credentials in database.yml

3- Create database

```$ rails db:create```

4- Migrate database
 
```$ rails db:migrate```

5- Seed database

```$ rails db:seed```
 
6- run specs

```$ rspec ```

7- run rails server and visit http://localhost:3000 in browser


```$ rails server```

Note:
To run rake task for dispatching emails to users pass following command 
```$ rake emails:TopTaggedBooks```



    
