#
# Author:: Benjamin Black (<b@b3k.us>), Sean Cribbs (<sean@basho.com>), Seth Thomas (<sthomas@basho.com>), and Hector Castro (<hector@basho.com>)
# Cookbook Name:: riak
#
# Copyright (c) 2014 Basho Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name              'riak-yetu'
maintainer        'Basho Technologies, Inc.'
maintainer_email  'riak@basho.com'
license           'Apache 2.0'
description       'Installs and configures Riak distributed data store. Forked off of https://github.com/basho/riak-chef-cookbook 3.0.1'

# This has been forked off of the base Basho repository version 3.0.1.
# However, because of chef version number limitations we can't reflect
# the original Basho cookbook version. That means that we can make
# changes that bump up our version number to 3.0.2 but Basho can make
# other changes that bump up THEIR version to 3.0.2. In that case,
# when merging changes from upstream we would have to bump up our
# version to 3.0.3 (which would correspond to upstream version 3.0.2)
# There seems to be no way of reflecting this in the version number.

version           '3.0.1'

recipe            'riak', 'Installs Riak from a package'
recipe            'riak::source', 'Installs Erlang and Riak from source'

depends 'apt', '~> 2.3'
depends 'build-essential'
depends 'erlang', '~> 1.5.2'
depends 'git', '~> 3.0'
depends 'java', '~> 1.28.0'
depends 'sysctl', '~> 0.3.5'
depends 'ulimit', '~> 0.3.2'
depends 'yum', '~> 3.4'
depends 'yum-epel', '~> 0.5.1'
depends 'packagecloud'

%w{ubuntu debian centos redhat fedora amazon}.each do |os|
  supports os
end
