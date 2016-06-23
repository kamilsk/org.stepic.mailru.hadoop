> # org.stepic.mailru.hadoop
>
> Skeleton for Hadoop course from Mail.ru on
> [stepic.org](http://bit.ly/stepic-hadoop).

## Requirements

### Python 3

### [virtualenv](https://virtualenv.pypa.io/en/stable/installation.html)

## Installation

```bash
$ git clone git@github.com:kamilsk/org.stepic.mailru.hadoop.git
$ cd org.stepic.mailru.hadoop
$ virtualenv -p `which python3` virtenv
$ source virtenv/bin/activate
```

## Example of work

### Silent

```bash
$ ./solve.sh example show
- success
```

### Verbose (print stdout)

```bash
$ ./solve.sh example show --verbose
Hello, World!
- success
```

### Task test

```bash
$ ./solve.sh example show:testN
- success
```

### Example of failure

```bash
$ ./solve.sh example show:fail
- failure
The test that failed                                          | The test that checked
```

## Usage

### Create task

```bash
$ ./init.sh 5.3 1
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
$ ./solve.sh 5.3 1
- success
```

Otherwise you will see `sdiff` between your script `stdout` and `out.txt`.
