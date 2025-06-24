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
2. Run `rotrieve upgrade --packages UGCValidation` locally from `C:\Git\StudioPlugins\Builtin\Toolbox`
3. Commit all changes to your branch, and open a pull request
   - changes should only be to the rotriever.toml and rotriever.lock files

### Updating UGC Validation in [game-engine](https://github.rbx.com/GameEngine/game-engine)

1. Update the rotriever.toml in AvatarCompatibilityPreviewer to contain the new version of UGCValidation
2. Run `git rbx lua-projects manage-libraries --install AvatarCompatibilityPreviewer` locally from the game-engine folder
3. Delete old version in `Client/RobloxStudio/LuaProjects/Libraries/UGCValidation-X.X.X`
4. Commit all changes on a branch, and open a pull request to merge

NOTE: running `git rbx lua-projects manage-libraries --install` may make changes not just related to the ugc-validation upgrade. Check the changes, you may not want all of them. Also check `lock` and `toml` file changes to make sure they look correct (correct meaning that they only have changes related to ugc-validation)
