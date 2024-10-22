# IAPExperience
This package is used to central all Purchasing UIs used in the app.

## API

### ProductPurchase
This should be used in cases where the user is being asked to purchase a virtual item (developer product, gamepass, avatar assets, etc.)

    Roact.createElement(ProductPurchase, {
        position = UDim2.new(0.5, 0, 0.5, 0),
        anchorPoint = Vector2.new(0.5, 0.5),
        screenSize = self.state.screenSize,

        itemIcon = PREMIUM_ICON_LARGE,
        itemName = "Premium Coins",
        itemRobuxCost = 50,
        currentBalance = 100,

        buyItemActivated = function() warn("Buy Item!") end,
        cancelPurchaseActivated = function() warn("Cancel Purchase!") end,
    })

### ProductPurchaseRobuxUpsell
This should be used in cases where the user is being asked to purchase a virtual item however the user does not have enough Robux for the complete purchase.

    Roact.createElement(ProductPurchaseRobuxUpsell, {
        position = UDim2.new(0.5, 0, 0.5, 0),
        anchorPoint = Vector2.new(0.5, 0.5),
        screenSize = self.state.screenSize,

        itemIcon = PREMIUM_ICON_LARGE,
        itemName = "Premium Coins",
        itemRobuxCost = 9901,
        robuxPurchaseAmount = 10000,
        balanceAmount = 100,

        buyItemActivated = function() warn("Buy Item!") end,
        cancelPurchaseActivated = function() warn("Cancel Purchase!") end,
    })

### Locale.LocaleProvider
This needs to be somewhere in the parent of the UI, this will serve the correct localized content to UI used in these packages!

    Roact.createElement(LocaleProvider, {
        locale = game:GetService("LocalizationService").RobloxLocaleId,
    })

## Development Environment

### [Foreman](https://github.com/roblox/foreman)
Foreman is used to install tools used to develop on this repository. Install foreman and run `foreman install` to get the correct version of these tools.

### [Rotriever](https://github.com/Roblox/rotriever)
Rotriever is used to install dependencies like Roact and t. Rotriever will be automatically installed via `foreman` in the step above.

### robloxdev-cli
`robloxdev-cli` is a command-line tool provided to internal engineers for analyzing, packing, and uploading Lua / Luau projects. It is provided by the `game-engine` repo in `Client/cmake/scripts/bin/`, or it can be downloaded using [rbx-aged-tool](https://github.com/Roblox/rbx-aged-tool): `rbx-aged-cli download robloxdev-cli`.

### [Lest](https://github.com/Roblox/lest)
Lest is used to run test locally.
- Follow the instructions here to install Lest: <https://github.com/Roblox/lest#installation>

## Developing and testing IAPExperience
In order to open IAPExperience's development workflow:
1. Install Rotriever dependencies: `rotrieve install` (this only needs to be done any time dependencies change)
2. Open `storybook.rbxp` from Roblox Studio

## Running Tests

All Rhodium tests should go under the `tests/` directory, and have the .spec.lua suffix. Unit tests use the same suffix and are typically stored in the same place as the file they're testing.

After installing lest, simply run `lest` from the command line to run all tests within all test suites. You may use the `-t` argument to filter which tests to run. The `-e` argument can be used to determine which test suite to run. `lest env list` will list out all available test suites.

## Update Localization

TODO

Message #payments-and-fraud on Slack with questions.

## Merging to [Lua-Apps](https://github.com/Roblox/lua-apps)

Once your PR is merged to master, you should update the IAPExperience dependency in [Lua-Apps](https://github.com/Roblox/lua-apps).

- Create a branch for your upgrade PR for [Lua-Apps](https://github.com/Roblox/lua-apps) repo
- Navigate to `content/LuaPackages` in your [Lua-Apps](https://github.com/Roblox/lua-apps) repo
- Make sure you have at least version [Rotriever](https://github.com/Roblox/rotriever/releases)
- Run `rotrieve upgrade --packages IAPExperience` to pull in the latest changes
- Use RobloxTest or [lest](https://github.rbx.com/Roblox/lest) to verify all unit tests and Rhodium tests are passing
- Commit everything to your upgrade branch and create a PR for review
- Follow these instruction for [commit messages](https://confluence.rbx.com/display/Client/Commit+Messages)
- Squash and merge once approved
