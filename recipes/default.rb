package 'apache2'
service 'apache2' do
  action :nothing
end

bash 'overrride install php7.2' do
  code <<-EOH
    apt -y install python-software-properties
    add-apt-repository -y ppa:ondrej/php
    add-apt-repository -y ppa:ondrej/apache2

    apt -y update
    apt-get -y purge php5-fpm 
    apt-get -y --purge autoremove

    apt -y install          \
      php7.2                \
      php7.2-mysql          \
      php7.2-json           \
      php7.2-curl           \
      php7.2-opcache        \
      php7.2-xml            \
      php7.2-gd             \
      php7.2-bz2            \
      php7.2-mbstring       \
      libapache2-mod-php7.2 \
      libpcre3

    a2dismod php5
    a2enmod php7.2
  EOH
  notifies :restart, "service[apache2]"
  not_if "which php7.2"
end
