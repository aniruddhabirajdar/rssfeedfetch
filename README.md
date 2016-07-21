# RSS Reader

### Prerequisites
> - Ruby 2.3 +
> - Rails 4.1.5

#### **Execute following commands to start server:**

```sh
$ bundle install
$ rake db:migrate
$ rails s
```

#### **Execute following commands to run rspe suite:**
```sh
$ rake spec
```

# Urls

```sh
/ : post page
/feeds :- Feed index page
/feeds/new :- Add new feed into feed list
/feeds/:id/edit :- edit feed list items
```