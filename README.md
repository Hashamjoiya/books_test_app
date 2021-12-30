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

<br>
2-Setup ENV or update database credentials in database.yml
<br>
3- Create database
<br>
```$ rails db:create```
<br>
4- Migrate database
 <br>
```$ rails db:migrate```
<br>
5- Seed database
<br>
```$ rails db:seed```
 <br>
6- run specs
<br>
```$ rspec ```
<br>
7- run rails server and visit http://localhost:3000 in browser
<br>

```$ rails server```
<br>

Note:
To run rake task for dispatching emails to users pass following command 
```$ rake emails:TopTaggedBooks


    
