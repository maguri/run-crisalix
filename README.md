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
# mysql.server start
alias mystart="mysql.server start"
alias mystatus="mysql.server status"
alias mystop="mysql.server stop"

# Crisalix
alias crun="/Users/mauri/Scripts/run_crisalix.sh"         # run
alias cstatus="/Users/mauri/Scripts/status_crisalix.sh"   # status
alias cstop="/Users/mauri/Scripts/stop_crisalix.sh"       # stop
```

### Run & Stop Apps

- `crun` => run all apps.
- `cstop` => stop all apps.
- `cstatus` => see info of each app.

- `kill -9 #pid` => stop the app you want.
- `bundle exec rails server -p #port` => run the app you want to see the log (in the corresponding directory).

## TODO


- [ ] Restart Option [restart_crisalix.sh](restart_crisalix.sh).
- [ ] Arguments and options for each script.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
