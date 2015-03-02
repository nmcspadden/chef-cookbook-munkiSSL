munkiSSL Cookbook
=================
Copies the SSL client certificates created with the [x509 cookbook munki client recipe](https://github.com/nmcspadden/chef-cookbook-ssl/blob/development/recipes/munki2_client.rb) into /Library/Managed Installs/certs/.

Requirements
------------
No external requirements, but will fail if the named certificates don't exist in /etc/ssl/.  It doesn't check for their existence first.


Usage
-----
Add [munkiSSL::munki] to your node's runlist.  Change the certificate names inside to match your own domain.

1. Create the directory /Library/Managed Installs/certs
2. Copy /etc/ssl/munki2_ca.crt into /Library/Managed Installs/certs/ca.pem
3. Copy /etc/ssl/munki2.sacredsf.org.crt into /Library/Managed Installs/certs/clientcert.pem
4. Copy /etc/ssl/munki2.sacredsf.org.key into /Library/Managed Installs/certs/clientkey.pem
5. Touch /Users/Shared/.com.googlecode.munki.checkandinstallatstartup


License and Authors
-------------------
Authors: Nick McSpadden (<nmcspadden@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.