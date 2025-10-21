# UGC Validation

## Local Testing

TODO

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
This is a semi-optional step that can be done when new translations are added, as we just need someone in lua-apps to do it before code-cutoff. If your strings are not available when you flip the flag, only the enum will show. Check the [documentation](https://roblox.atlassian.net/wiki/spaces/IN/pages/2536473082/Using+Platform+Translations#lua-apps-(LuaApp-%2F-RobloxInGameContent)) for more context.
1. Run the Pull translations and create pull request job in this [GHA workflow](https://github.com/Roblox/lua-apps/actions/workflows/create-translations-pull-request.yaml)
2. Check [github](https://github.com/Roblox/lua-apps/pulls?q=is%3Apr+is%3Aopen+UC-6278+%5BAUTO-GENERATED%5D) and verify that there are two PRs. They will either be newly created, or newly updated 
3. Check that the PRs have any changes to Common.UGCValidation. If so, approve and merge the PRs. 

