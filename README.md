> # org.stepic.mailru.hadoop
>
> Skeleton for Hadoop course from Mail.ru on
> [stepic.org](https://stepic.org/course/Hadoop-Система-для-обработки-больших-объемов-данных-150).

## Requirements

### Python 3

### [virtualenv](https://virtualenv.pypa.io/en/stable/installation.html)

## Installation

```bash
$ virtualenv -p `which python3` virtenv
$ source virtenv/bin/activate
```

## Usage

### Silent

```bash
$ ./run.sh example show
- success
```

### Verbose

```bash
$ ./run.sh example show --verbose
Hello, World!
- success
```

### Task test

```bash
$ ./run.sh example show:testN
- success
```

### Example of failure

```bash
$ ./run.sh example show:fail
- failure
The test that failed                                          | The test that checked
```
