`Notice 2019/06/01`

Unfortunately, PHP7.2 with PPA on Ubuntu 14.04 (Trusty) has reached the end of support and does not work any longer. (https://github.com/oerdnj/deb.sury.org/issues/1153)

We recommend to use Chef12 Stack with Ubuntu 18.04 on OpsWorks. (The OS default PHP version supports +7.2). 

## Chef-OpsWorks-PHP7

PHP7 cookbook for OpsWorks Ubuntu 14.04 LTS Stack with PHP Application.


## Usage


Edit `Berksfile` in your custom cookbooks repository which you are using in the OpsWorks stack.

```
cookbook 'opsworks-php7', github: "shimma/chef-opsworks-php7"
```

Add `opsworks-php7` in `Setup` in Custom Chef Recipes section in OpsWorks.
