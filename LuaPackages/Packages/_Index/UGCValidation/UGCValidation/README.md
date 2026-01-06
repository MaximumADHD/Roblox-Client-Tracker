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
As of June 2024, you require this version of rotriever https://github.com/Roblox/rotriever/releases/tag/v0.5.13-alpha.2 in order to publish

### Publishing a new version

1. In this repo, update `rotriever.toml`'s "version" field and merge the change to the `main` branch
2. Run this Github Action https://github.com/Roblox/ugc-validation/actions/workflows/publish.yml (select the `Run workflow` dropdown, then press the `Run workflow` button)
3. Locally on the 'main' branch (which has the rotriever.toml change made above), remove the entire `[config]` section from C:\Git\ugc-validation\rotriever.toml (this change is a hack to make running `rotrieve publish origin` work). Create a branch locally and commit the change to the branch (don't push the branch)
4. Locally on the branch, from `C:\Git\ugc-validation` run `rotrieve publish origin`
   - Note: if you don't have rotrieve, download it from https://github.com/Roblox/rotriever/releases, then unzip it to use the exe
   - Note: missing packages may be reported. Install them with pip install and re-run
   - the result of successfully running should be a new entry in https://github.com/Roblox/ugc-validation/tags
5. You can now delete the local branch with the rotriever.toml edit (the edit which removed the `[config]` section)
6. [Run this TeamCity job](https://teamcity-sage.rbx.com/buildConfiguration/App_Lua_Tools_CacheRotrieverPackage05x)
   - Package Source: github.com/Roblox/ugc-validation
   - Package name: UGCValidation
   - Version: [version from step 1]

### Updating UGC Validation in [rcc-jobs-lua-scripts](https://github.com/Roblox/rcc-jobs-lua-scripts)

1. Update `rotriever.toml` in rcc-jobs-lua-scripts repo to include the new version (commit this change on a branch)
2. Run `rotrieve upgrade --packages UGCValidation` locally from `C:\Git\rcc-jobs-lua-scripts`
3. Commit all changes to your branch, and open a pull request
   - changes should only be to the UGC-Validation library plus lock.toml, rotriever.lock
4. rcc-jobs-lua-scripts repo will automatically get synced into game-engine after the pull request is merged (might take ~20min)

### Updating UGC Validation in [LuaPackages](https://github.com/Roblox/lua-apps/tree/master/content/LuaPackages) and [RccServer/CorePackages](https://github.com/Roblox/lua-apps/tree/master/apps/RccServer/CorePackages)

1. Update `rotriever.toml` in the linked LuaPackages and RccServer/CorePackages folders to include the new version (commit this change on a branch)
2. Run `git lua install` locally from `C:\Git\lua-apps`
3. Commit all changes to your branch, and open a pull request
   - changes should only be to the rotriever.toml and rotriever.lock files
4. lua-apps repo will automatically get synced into game-engine after the pull request is merged (might take ~20min)


### Updating UGC Validation in StudioPlugins
1. Update `rotriever.toml` in [Toolbox folder](https://github.com/Roblox/StudioPlugins/tree/main/Builtin/Toolbox) to include the new version
   - Increase the Toolbox version under the [package] section
2. Run `rotrieve upgrade --packages UGCValidation` locally from `C:\Git\StudioPlugins\Builtin\Toolbox`
3. Update `rotriever.toml` in [AvatarCompatibilityPreviewer folder](https://github.com/Roblox/StudioPlugins/tree/main/Builtin/AvatarCompatibilityPreviewer) to include the new version
   - Increase the AvatarCompatibilityPreviewer version under the [package] section
4. Run `rotrieve upgrade --packages UGCValidation` locally from `C:\Git\StudioPlugins\Builtin\AvatarCompatibilityPreviewer`
5. If any new strings are added, edited, or translated, then run `python3 scripts/translations/download_artifacts.py --download-source --namespaces Studio.Toolbox Common.UGCValidation Studio.AvatarCompatibilityPreviewer` locally from `C:\Git\StudioPlugins\`. This will update any translation string changes in Toolbox and ACP, including everything in our [namespace](https://translations-hub.simulprod.com/translatable-content?namespace=Common.UGCValidation)
6. Commit all changes to your branch, and open a pull request
   - changes should only be to the rotriever.toml, rotriever.lock, and potentially csv files

### Updating Toolbox and AvatarCompatibilityPreviewer packages in game-engine
1. Once the PR for StudioPlugins is merged, take note of the commit hash of the merge commit.
   - It will show up in the PR timeline with the message "[username] merged commit [commit hash] into main"
   - Ensure an automated comment shows up on the PR confirming that Toolbox and AvatarCompatibilityPreviewer were published at that commit hash
2. In your game-engine repo open [Client/RobloxStudio/rbox.yaml](https://github.rbx.com/GameEngine/game-engine/blob/master/Client/RobloxStudio/rbox.yaml)
   - Find the line with 'StudioPlugin-Toolbox' and replace the commit hash (the value after the '@') with the new commit hash
   - Replace the commit hash for StudioPlugin-AvatarCompatibilityPreviewer as well
3. Commit all changes to a branch, and open a pull request



### Updating Error Strings in Lua-apps [LuaPackages](https://github.com/Roblox/lua-apps).
This is an optional process that does not currently have impact, as in-experience creation does not utilize translations.
1. Run the `Pull translations and create pull request` job in this [GHA workflow](https://github.com/Roblox/lua-apps/actions/workflows/create-translations-pull-request.yaml)
2. Check [github](https://github.com/Roblox/lua-apps/pulls?q=is%3Apr+is%3Aopen+UC-6278+%5BAUTO-GENERATED%5D) and verify that there are two PRs. They will either be newly created, or newly updated 
3. Check that the PRs have any changes to Common.UGCValidation. If so, approve and merge the PRs. 
That should be all. For more context, you can read the full [documentation](https://roblox.atlassian.net/wiki/spaces/IN/pages/2536473082/Using+Platform+Translations#lua-apps-(LuaApp-%2F-RobloxInGameContent)).