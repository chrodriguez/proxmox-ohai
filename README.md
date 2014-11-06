# proxmox-ohai-cookbook

Proxmox Ohai plugin to overwrite ipaddress.

When a vm is launched in proxmox, chef reports ipaddress from venet interface,
that is a loopback ipaddress. This plugin updates ipaddress with public ip from
venet0:0

## Usage

Add recipe `proxmox-ohai` first at to your runlist


## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Christian A. Rodriguez (car@cespi.unlp.edu.ar)
Author:: Leandro Di Tommaso (lditommaso@cespi.unlp.edu.ar)
