# UGC Validation
Welcome to UGCValidation! This module ensures assets and bundles uploaded to the marketplace do not have any exploits, are somewhat properly made, follow our supported asset schema, and follow marketplace expectations. This is used by studio plugins, in-experience core scripts, and by the rccservice script executor which is used by our backend and the appeal portal. 

This means that although we code in this repository, our code is actually duplicated into these different consumers, and must work in all environments (RCCService, GameServerRCC, Studio).

We are currently in a migratory period, with our core module having two parts:
- Deprecated system: a nested file structure where each file returns (boolean, error strings). For example, a layered clothing would first hit the .validate entrypoint, which goes to validateInternal, then gets directed to validateLayeredClothingAccessory which calls different categories of test files. This structure allows for easier understanding of the E2E code flow, but limits us from doing just about anything extra.
- New structure:  enum-based folder structure, where each validation is clearly defined. That means, opening the validation file should tell you everything about when this validation runs, what data it uses, and what it checks for. We are migrating to this structure to enable auto fixing, quality detection, localization, standardized telemetry, efficient back-testing, automatic documentation, and much more.

Starting from **November 1, 2025**, all new validations must be written in the new system.

## Adding a new Validation
To start, lets create a fake validation that ensures all layered clothing Accessories are named "Accessory".

1. Open `src/validationSystem/ValidationEnums.lua`, and find `ValidationEnums.ValidationModule`. The first step is to add a well named enum for our validation, something creative like `AccessoryIsNamedAccessory`. Add `AccessoryIsNamedAccessory = "AccessoryIsNamedAccessory"` to the bottom of the table. 
2. Now that the enum exists, the module runner will expect to find a module with that name. Create `src/validationFolders/AccessoryIsNamedAccessory/AccessoryIsNamedAccessory.lua`. We create a folder instead of just the lua module so that we can group the validation, unit tests, and documentation all into the same folder.
3. Before we can add the validation, lets create the error message and have it ready. Turn on the vpn and go to the translation hub, select namespace `Common.UGCValidation`, and add a new string. The key name should follow `ErrorLabel.YourCoolAnything`. Since this is a mock validation, do not mark it for translation. Otherwise, mark this string for `Studio` and `InGameContent`, and have it ready for translation. Make it public before we publish a new UGCValidation version.
4. Once you decide on your error string, lets fetch it so we have a backup. While on VPN, run `python3 PythonHelpers/createBackupTranslations.py`.  
3. Now lets write the test! Here is a basic template

```lua
local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local AccessoryIsNamedAccessory = {}

AccessoryIsNamedAccessory.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
AccessoryIsNamedAccessory.requiredData = {ValidationEnums.SharedDataMember.rootInstance }

AccessoryIsNamedAccessory.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local accessory = data.rootInstance 

	if whatever you want then
		reporter:fail(ErrorSourceStrings.Keys.YourCoolAnything)
	end
end

return AccessoryIsNamedAccessory :: Types.ValidationModule
```

Thats it! Once you've specified the test enum, we will automatically run the test unless you include a fast flag to exclude it. You must always specify the categories, or else the test will not run on any upload. 


## Local Testing
TODO: Update


## Adding unit and system tests
TODO: Update

## Publishing

Rotriever, the version of which is pinned in `foreman.toml`, is the only tool you need.

### Publishing a new version

1. On a PR, bump `version` in `rotriever.toml`. Merge to `main`.
2. Run the [Publish Rotriever Package](https://github.com/Roblox/ugc-validation/actions/workflows/publish.yml) GitHub Action against `main` (`Run workflow` → `Run workflow`). Confirm your version is the last line of [`rotriever-registry-index/UGCValidation/metadata`](https://github.com/Roblox/rotriever-registry-index/blob/main/UGCValidation/metadata) — that's the package live for all consumers.
3. After pulling the merge locally, create a throwaway branch, delete the `[config]` section from `rotriever.toml`, and commit — **don't push**. (Removing `[config]` is required for the legacy publish to work: it otherwise tries to resolve our git-based dependencies through the registry index and fails.)
4. Run `rotrieve publish origin`. Confirm a new `v<version>` entry appears in [the tag list](https://github.com/Roblox/ugc-validation/tags).
5. Delete the throwaway branch.

### Updating UGC Validation in [rcc-jobs-lua-scripts](https://github.com/Roblox/rcc-jobs-lua-scripts)

1. On a branch, bump the UGCValidation version in `rotriever.toml`.
2. Run `rotrieve upgrade --packages UGCValidation` from the repo root.
3. Open a PR. The diff is `rotriever.toml`, `rotriever.lock`, and the entire `Packages/_Index/UGCValidation/` vendored tree — this repo checks the resolved package contents into source control, so every bump rewrites them.
4. After merge, rcc-jobs-lua-scripts auto-syncs into game-engine within ~20 minutes.

### Updating UGC Validation in [LuaPackages](https://github.com/Roblox/lua-apps/tree/master/content/LuaPackages) and [RccServer/CorePackages](https://github.com/Roblox/lua-apps/tree/master/apps/RccServer/CorePackages)

1. On a branch, bump UGCValidation in **both** `content/LuaPackages/rotriever.toml` and `apps/RccServer/CorePackages/rotriever.toml`.
2. Run `lute build` from the repo root to regenerate both lockfiles.
3. Open a PR. The diff should only be the two `rotriever.toml` files and their `rotriever.lock` siblings.
4. After merge, lua-apps back-merges into game-engine within ~2 hours.


### Updating UGC Validation in StudioPlugins

1. From the StudioPlugins repo run `python3 scripts/rotriever/update.py set UGCValidation "<version>"`.
2. If new translation strings landed in this release, run `python3 scripts/translations/download_artifacts.py --download-source --namespaces Studio.Toolbox Common.UGCValidation Studio.AvatarCompatibilityPreviewer` ([translations hub](https://translations-hub.simulprod.com/translatable-content?namespace=Common.UGCValidation)).
3. Open a PR. Diff should be limited to `rotriever.toml`, `rotriever.lock`, and any CSV updates.


### Updating Toolbox and AvatarCompatibilityPreviewer packages in game-engine
This can be skipped if you are not rushing code cutoff. There is a daily automatic sync.
1. Once the PR for StudioPlugins is merged, take note of the commit hash of the merge commit.
   - It will show up in the PR timeline with the message "[username] merged commit [commit hash] into main"
   - Ensure an automated comment shows up on the PR confirming that Toolbox and AvatarCompatibilityPreviewer were published at that commit hash
2. In your game-engine repo open [Client/RobloxStudio/rbox.yaml](https://github.rbx.com/GameEngine/game-engine/blob/master/Client/RobloxStudio/rbox.yaml)
   - Find the line with 'StudioPlugin-Toolbox' and replace the commit hash (the value after the '@') with the new commit hash
   - Replace the commit hash for StudioPlugin-AvatarCompatibilityPreviewer as well
3. Commit all changes to a branch, and open a pull request
