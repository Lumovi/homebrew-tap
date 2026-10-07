# Lumovi's Homebrew tap

[Lumovi](https://lumovi.dev), the Kubernetes dashboard, for macOS:

```sh
brew install --cask lumovi/tap/lumovi
```

(Named in full, it's trusted as Homebrew 7 asks of a tap's casks: this one, and nothing else
from here.)

Lumovi updates itself once it's installed (Help → Check for Updates), so `brew upgrade`
leaves it be unless you ask for it: `brew upgrade --greedy lumovi`.

The cask follows Lumovi's releases on its own: [the update workflow](.github/workflows/update.yml)
checks for a new one every hour. It takes the installers' checksums from the release,
checks that GitHub attests Lumovi's release workflow built them, installs the cask on a Mac,
and only then commits it.
