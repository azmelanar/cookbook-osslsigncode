osslsigncode Cookbook
=====================

Install and configure osslsigncode.

Requirements
------------

## Platforms

- Ubuntu

## Cookbooks

- apt
- build-essential

Attributes
----------

See `attributes/default.rb` for default values.

Usage
-----

#### osslsigncode::default
Download, compile and install osslsigncode.

Just include `osslsigncode` in your role's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[osslsigncode]"
  ]
}
```

Contributing
------------

1. Fork the repository
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

License and Authors
-------------------
Author: Dmytro Slupytskyi (<dslupytskyi@gmail.com>)

```text
Copyright (C) 2016, Dmytro Slupytskyi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
