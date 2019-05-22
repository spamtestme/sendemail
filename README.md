# sendemail

Wraps [SendEmail](http://manpages.ubuntu.com/manpages/bionic/man1/sendEmail.1.html)
into a docker image. Sends an email using remote SMTP server.

## Usage

Send an email using remote SMTP server at `mail.spamtest.me:25` using SMTP authentication:

```
docker run spamtest.me/sendemail    \
    -f average.joe@spamtest.me      \
    -t random.dude@spamtest.me      \
    -u Hi                           \
    -m 'Foo bar!'                   \
    -s mail.spamtest.me:25          \
    -xu joe                         \
    -xp secret          
```

Run with `-h` to show all available options:

```
docker run spamtest.me/sendemail -h
```

## License

See the [LICENSE.md](LICENSE.md) file for details
