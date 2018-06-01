# run-crisalix

Some scripts that make you the life easier working at Crisalix

## Getting Started

### Prerequisites

If you can run the Crisalix apps by hand one by one you can use this scripting tool.

### Installing

Clone the repo
```
$ git clone https://github.com/maguri/run-crisalix.git
```

And configure the corresponding alias into your `.bashrc`

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

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
