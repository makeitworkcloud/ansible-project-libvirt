# ansible-project-libvirt

Ansible playbooks for managing libvirt-based GitHub Actions runners.

## Playbooks

- **configure_runner.yml**: Configures a pre-provisioned VM as a GitHub Actions self-hosted runner
  - Downloads and installs the latest GitHub Actions runner
  - Registers runner with the makeitworkcloud org
  - Installs as systemd service
  - Sets up work directory cleanup cron

## Dependencies

- `tfroot-libvirt`: Provisions the VM infrastructure
- GitHub PAT with `admin:org` scope for runner registration

## Usage

```bash
# Dry run
make check

# Apply configuration
make apply
```

## Requirements

- Ansible 2.9+
- `community.sops` collection (for secrets)
- `ansible.posix` collection (for SELinux)

## License

GPL-3.0-or-later
