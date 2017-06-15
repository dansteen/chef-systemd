#
# Cookbook Name:: systemd
# Attributes:: resolved
#
# Copyright 2015 The Authors
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

# Ref: http://www.freedesktop.org/software/systemd/man/resolved.conf.html
default['systemd']['resolved'].tap do |r|
  r['dns'] = %w( 8.8.8.8 8.8.4.4 )
  r['fallback_dns'] = %w( 208.67.222.222 208.67.220.220 )
  r['dns_stub_listener'] = nil
  r['llmnr'] = nil
end
