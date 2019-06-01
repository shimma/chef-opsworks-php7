## Notice 2019/06/01

Unfortunately, PHP7.2 with PPA on Ubuntu 14.04 (Trusty) has been out of support and does not work properly. We recommended to use Chef12 Stack with Ubuntu 18.04 on OpsWorks. (The default PHP version is 7.2). 

## Chef-OpsWorks-PHP7

PHP7 cookbook for OpsWorks Ubuntu 14.04 LTS Stack with PHP Application.


## Usage


Edit `Berksfile` in your custom cookbooks repository which you are using in the OpsWorks stack.

```
cookbook 'opsworks-php7', github: "shimma/chef-opsworks-php7"
```

Add `opsworks-php7` in `Setup` in Custom Chef Recipes section in OpsWorks.
