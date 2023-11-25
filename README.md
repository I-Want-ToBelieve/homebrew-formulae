# homebrew-formulae

brew
```
brew tap I-Want-ToBelieve/homebrew-formulae
brew install yakite yakite-toast-bin
```

nix: 
```
 homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      # 'zap': uninstalls all formulae(and related files) not listed here.
      cleanup = "zap";
    };

    # Applications to install from Mac App Store using mas.
    # You need to install all these Apps manually first so that your apple account have records for them.
    # otherwise Apple Store will refuse to install them.
    # For details, see https://githubfast.com/mas-cli/mas
    masApps = {
      # TODO Feel free to add your favorite apps here.

      Xcode = 497799835;
      # Wechat = 836500024;
      # NeteaseCloudMusic = 944848654;
      # QQ = 451108668;
      # WeCom = 1189898970;  # Wechat for Work
      # TecentMetting = 1484048379;
      # QQMusic = 595615424;
    };

    taps = [
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/services"
      "homebrew/cask-versions"
      "v2raya/v2raya"
      "FelixKratz/formulae"
      "I-Want-ToBelieve/homebrew-formulae"
    ];

    # `brew install`
    # TODO Feel free to add your favorite apps here.
    brews = [
      "wget" # download tool
      "yakite"
      "yakite-toast-bin"
    ];

    # `brew install --cask`
    # TODO Feel free to add your favorite apps here.
    casks = [
      "firefox"
    ];
  };
```
