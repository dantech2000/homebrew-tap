# DanTech2000 Homebrew Tap

A [Homebrew](https://brew.sh) tap for CLI tools and applications by DanTech2000.

## Installation

First, add this tap to your Homebrew:

```bash
brew tap dantech2000/tap
```

## Available Casks

### refresh

Manage and monitor AWS EKS node groups using your local kubeconfig and AWS credentials.

```bash
brew install --cask dantech2000/tap/refresh
```

**Features:**
- List all managed node groups with AMI status
- Update AMI for nodegroups with partial name matching
- Beautiful tree-like output similar to `nix flake show`
- Color-coded status indicators

**Requirements:**
- macOS (Intel or Apple Silicon)
- AWS credentials configured
- kubeconfig file for EKS access

## Usage

After installation, you can use the tools directly:

```bash
# List nodegroups in a cluster
refresh list --cluster development-blue

# Update AMI for specific nodegroups
refresh update-ami --cluster dev --nodegroup monolith

# Get help
refresh --help
```

## Development

This tap is automatically updated when new releases are published to the respective GitHub repositories.

## Issues

If you encounter any issues with the casks, please report them in the respective tool's repository:

- [refresh](https://github.com/dantech2000/refresh/issues)
