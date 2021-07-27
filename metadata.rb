name 'phpcb'
maintainer 'David Joos'
maintainer_email 'development@davidjoos.com'
license 'MIT'
description 'Installs/Configures phpcb'
version '1.1.0'

%w(debian ubuntu redhat centos fedora scientific amazon).each do |os|
  supports os
end

source_url 'https://github.com/djoos-cookbooks/phpcb'
issues_url 'https://github.com/djoos-cookbooks/phpcb/issues'

depends 'php'
depends 'composer'
