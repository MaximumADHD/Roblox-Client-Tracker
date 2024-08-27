# Foundation
Ready-to-use foundational React Lua components.

<p align="center">
	<a href="https://foundation.roblox.com">
		<img src="https://img.shields.io/badge/%E2%80%8E-Documentation-6AE488?logo=materialformkdocs&logoColor=white" alt="Documentation Link">
	</a>
	<a href="https://roblox.atlassian.net/wiki/spaces/UIBlox/overview">
		<img src="https://img.shields.io/badge/%E2%80%8E-Confluence-0052CC?logo=confluence&logoColor=white" alt="Confluence Link">
	</a>
	<a href="https://www.roblox.com/games/18428583948/Foundation">
		<img src="https://img.shields.io/badge/%E2%80%8E-Storybook-FF4785?logo=storybook&logoColor=white" alt="Storybook Link">
	</a>
	<a href="https://rbx.enterprise.slack.com/archives/CHJL4PV61">
		<img src="https://img.shields.io/badge/Slack-%23uiblox-4A154B?logo=slack" alt="Slack Link">
	</a>
</p>
<p align="center">
	<a href="https://github.com/Roblox/foundation/actions/workflows/test.yml?query=branch%3Amain">
		<img src="https://github.com/Roblox/foundation/actions/workflows/test.yml/badge.svg?branch=main" alt="Tests">
	</a>
	<a href="https://github.com/Roblox/foundation/actions/workflows/analyze.yml?query=branch%3Amain">
		<img src="https://github.com/Roblox/foundation/actions/workflows/analyze.yml/badge.svg?branch=main" alt="Static Code Analysis">
	</a>
	<a href="https://roblox.codecov.io/gh/Roblox/foundation" > 
		<img src="https://roblox.codecov.io/gh/Roblox/foundation/graph/badge.svg?token=naygRna4En"/> 
	</a>
</p>

## Getting Started
In order to contribute to this repo you will need to be a part of the [Lua Apps Team](https://github.com/orgs/Roblox/teams/lua-apps/members)

Make sure you've cloned the Foundation repository:

```sh
git clone https://github.com/Roblox/foundation.git
```

## Development Environment

### Foreman
[Foreman](https://github.com/roblox/foreman) is used to install tools used to develop on this repository. Install foreman and run `foreman install` to get the correct version of these tools.

### Rotriever
[Rotriever](https://github.com/Roblox/rotriever) is used to install dependencies like Roact and t. Rotriever will be automatically installed via `foreman` in the step above. Run `rotrieve install` to install the dependencies.

### Developer Storybook
[Developer Storybook]((https://roblox.atlassian.net/wiki/spaces/HOW/pages/1556186059/1005+-+Using+Developer+Storybooks)) is Roblox Studio's built in storybook viewer solution. You will need to be logged in with an internal account.
* Open `uiblox/default.rbxp` in Roblox Studio
* Click on the Storybook button under the Plugins tab!

#### Working with Storybook
To work on Storybook stories, open the test place with the steps above.
Open the Storybook plugin from the plugins menu, and you will see the public and private storybooks for Foundation.
You can also play the Place to view all the stories embedded in the running game.

#### Storybook Place
When you create a PR, Foundation CI will publish your changes to a place development place based on your PR number. A link to the place will be commented on your PR. This place will be updated with your changes every time you push to your PR.

When a PR is merged, Foundation CI will publish the latest main to [this Roblox place](https://www.roblox.com/games/18428583948/Foundation) via [this GHA job](https://github.com/Roblox/foundation/actions/workflows/place-publish.yml).

## Running Tests
All Rhodium tests should go under the `tests/` directory, and have the .test.lua suffix. Unit tests use the same suffix and are typically stored in the same place as the file they're testing.

After installing lest, simply run `lest` from the command line to run all tests within all test suites. You may use the `-t` argument to filter which tests to run. The `-e` argument can be used to determine which test suite to run. `lest env list` will list out all available test suites.

## Adding Images to the ImageSet Spritesheet
Reach out to the [Foundation team in Slack](https://rbx.enterprise.slack.com/archives/CHJL4PV61) to request for an image to be added to the ImageSet spritesheet.

## Consumers of UIBlox

### LuaApps
[LuaApps](https://github.com/Roblox/lua-apps) is the main consumer of UIBlox. Previously, UIBlox was within the [LuaApps](https://github.com/Roblox/lua-apps) repository - it was broken out into its own repository as part of decomposition and to support a future in which it can be shared with other repositories.

#### Merging to LuaApps
Once your PR is merged to master, you should update the UIBlox dependency in [LuaApps](https://github.com/Roblox/lua-apps).

- Create a branch for your upgrade PR for [LuaApps](https://github.com/Roblox/lua-apps) repo
- Navigate to `content/LuaPackages` in your [LuaApps](https://github.com/Roblox/lua-apps) repo
- Run `rotrieve upgrade --packages UIBlox` to pull in the latest changes
- Commit everything to your upgrade branch and create a PR for review
- Squash and merge once approved

### Other Consumers
There are only a couple known additional consumers of UIBlox
1. [Edu Admin Mode](https://github.com/Roblox/edu-admin-mode/blob/main/rotriever.toml#L25)
	- Pulls in the master version of UIBlox.
2. [Office Space Experience](https://github.com/Roblox/office-space-experience/blob/main/rotriever.toml#L16)
	- Pulls in a specific version of UIBlox based on a hash.
3. [InGameAvatarEditor](https://github.com/Roblox/avatar/tree/main/InGameAvatarEditor/src/ServerScriptService/AvatarEditorInGameSetup/AvatarEditorInGame/Modules/Packages/UIBlox)
	- Has an old fork of UIBlox as a folder under Packages. There is no intention for this copy to be updated. The avatar team got permission to make this code public back in the day with the understanding that this is not encouraging personal use of the dependencies, and they were already publically visible in the CoreScripts shipped with studio.
