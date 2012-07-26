Happy Birthday OpenStack
========================

A small repository to illustrate the de-obfuscation of my entry into the [Happy Birthday OpenStack obfuscated code contest](http://blog.appfog.com/openstack-is-turning-two-and-were-celebrating-by-giving-stuff-away/).

Notes
=================

In order for this application to work, it requires more than the normal amount of configuration.

1. You need to make sure to have the correct version of Ruby installed
2. Make sure to install the appropriate gems

```shell
    gem install bundler
    bundle install
```

3. Add a host definition for the domain (this is important, the domain is significant to this app)

```bash
    echo "j0lwtfrjhuyqw 127.0.0.1" >> /etc/hosts
```

4. Start it up!

```bash
    ruby app.rb
```

5. Visit http://j0lwtfrjhuyqw:4567/src in your browser of choice
