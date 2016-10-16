# ansible-role-su

Add a list of users to wheel group in `/etc/group`.

`su(1)` of OpenBSD states:

```
If group 0 (normally ``wheel'') has users listed then only those users
can su to ``root''.  It is not sufficient to change a user's /etc/passwd
entry to add them to the ``wheel'' group; they must explicitly be listed
in /etc/group.  If no one is in the ``wheel'' group, it is ignored, and
anyone who knows the root password is permitted to su to ``root''.
```

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| su\_users | list of users to be added to wheel in `/etc/group` | [] |


Created by [yaml2readme.rb](https://gist.github.com/trombik/b2df709657c08d845b1d3b3916e592d3)

# Dependencies

None

# Example Playbook

```yaml
- hosts: localhost
  roles:
    - ansible-role-su
  vars:
    su_users:
      - vagrant
      - nobody
      - _syslogd
```

# License

```
Copyright (c) 2016 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [ansible-role-init](https://gist.github.com/trombik/d01e280f02c78618429e334d8e4995c0)
