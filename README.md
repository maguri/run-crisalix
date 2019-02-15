# run-crisalix
Some scripts that make you the life easier working at [Crisalix](https://www.crisalix.com).

## Getting Started
Assuming that you work at Crisalix, and you have all the corresponding dependencies to run theire apps in local.

- Download de repo.
```
$ git clone https://github.com/maguri/run-crisalix.git
```

- Create the file `repo_path.txt` into run-crisalix repo and write the path to your working directory where you should have all the Crisalix repos.
```
$ cd run-crisalix
$ echo "/Users/user/path/to/crisalix/repos/" >> repo_path.txt
```

- Configure the corresponding alias into your `~/.bashrc` file.
```
# Crisalix
alias crun="/Users/mauri/Scripts/run_crisalix.sh"         # run
alias cstatus="/Users/mauri/Scripts/status_crisalix.sh"   # status
alias cstop="/Users/mauri/Scripts/stop_crisalix.sh"       # stop
```

### Run & Stop Apps
- `crun` => run all apps.
- `cstop` => stop all apps.
- `cstatus` => see info of each app.

**To see the server log of one app**
```
$ cstatus

  Apps and DBs statuses
  - Rails:
    <pid> bin/rails s -p <port>
    ...

   - Redis:
     #pid 127.0.0.1:6379
   - MySQL:
     SUCCESS! MySQL running (674)

$ kill -9 <pid>
$ bundle exec rails server -p <port>
```

## License
This project is licensed under the MIT License. 

Feel free to contribute! - [TODO](https://github.com/maguri/run-crisalix/issues/1) LIST.
