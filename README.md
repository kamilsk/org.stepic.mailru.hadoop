> # org.stepic.mailru.hadoop
>
> Skeleton for Hadoop course from Mail.ru on [stepic.org](http://bit.ly/stepic-hadoop).

## Requirements

### Python 3

### [virtualenv](https://virtualenv.pypa.io/en/stable/installation.html)

## Installation

```bash
$ git clone git@github.com:kamilsk/org.stepic.mailru.hadoop.git
$ cd org.stepic.mailru.hadoop
$ git remote rename origin upstream
$ virtualenv -p `which python3` virtenv
$ source virtenv/bin/activate
```

## Update

```bash
$ git fetch upstream --all
$ git rebase upstream/master
```

## Example of work

### Silent

```bash
$ ./solve example show
- success
```

### Verbose (print stdout)

```bash
$ ./solve example show --verbose
Hello, World!
- success
```

### Task test

```bash
$ ./solve example show:testN
- success
```

### Example of failure

```bash
$ ./solve example show:fail
- failure
The test that failed                                          | The test that checked
```

## Usage

### Create task

```bash
$ ./init 5.3 1
```

It will be create the next structure:

```
./
- 5.3
  - 1
    - in.txt      # place for stdin
    - out.txt     # place for stdout to check task work
    - solution.py # your code will be here
```

### Do some work

- fill stdin to `in.txt`
- fill stdout to `out.txt`
- write code in `solution.py` (you can rename `task()` function to what you want, it is just usual python script)

### Run it

If your task solution is ok you will see something like this

```bash
$ ./solve 5.3 1
- success
```

Otherwise you will see `sdiff` between your script `stdout` and `out.txt`.

[![Analytics](https://ga-beacon.appspot.com/UA-109817251-23/unsupported/org.stepic.mailru.hadoop/readme)](https://github.com/igrigorik/ga-beacon)
