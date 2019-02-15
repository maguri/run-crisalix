# run-crisalix

Some scripts that make you the life easier working at Crisalix.

## Getting Started

### Prerequisites

If you can run the Crisalix apps by hand one by one you can use this scripting tool.

### Installing

```
$ git clone https://github.com/maguri/run-crisalix.git
```

Configure the corresponding alias into your `~/.bashrc` file.

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

## TODO

- [ ] Arguments and options for each script.
- [ ] Help Option

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
