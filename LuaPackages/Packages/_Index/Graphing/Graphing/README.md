# Graphing

A shared set of React components for drawing interactable 2D plots in Roblox UI.

## Usage

The Graphing library can be included in your project using [Rotriever](https://github.com/Roblox/rotriever). Follow the instructions in the link to install rotriever, then add the following to your project's `rotriever.toml` file:
```
Graphing = "github.com/Roblox/graphing@0.1.0"
```
Replace `0.1.0` with whatever version of the library you want - you can check what versions are available [here](https://github.com/Roblox/rotriever-registry-index/blob/main/Graphing/metadata). Then, run `rotrieve install` to update your project's dependencies. You should see the "Graphing" directory appear underneath your project's Packages directory.

## Development

You'll need [Rust](https://www.rust-lang.org/) and [foreman](https://github.com/Roblox/foreman) to install many of the tools used in the development process described below.

To set up a development environment for contributing to the Graphing library, first clone the repository:
```
cd git/Roblox
git clone https://github.com/Roblox/graphing-lua.git
```

Then, point a testing project at your local clone of the repository. For example, if you decide to test the library using a plugin in the [StudioPlugins](https://github.com/Roblox/StudioPlugins) repository, change the Graphing dependency in the `rotriever.toml` file in the plugin of your choice to a relative path navigating from the directory containing the `rotriever.toml` file to the `graphing-lua` directory, which would look something like:
```
Graphing = { path = "path/to/graphing-lua" }
```

Run `rotrieve install` in the test project directory to update its dependencies. Then, make code changes to your local clone and reload the test project as necessary. For StudioPlugins, you can follow the guides linked in that repository to develop against it in the engine.

There are other tools that can be helpful for making development run more smoothly:
- The [Luau LSP extension](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp) in VSCode, for autocomplete and intellisense
- The [watchexec](https://github.com/watchexec/watchexec) package, for autoreloading projects after modifying files in certain directories

## Storybook

This project uses `.story` files openable via Storybook in Roblox Studio to show example usage. 

To open these story files, open the `default.rbxp` file in Roblox Studio and open the Storybook plugin. You should see some "Graphing" sections appear in the list of stories.

This also works as an alternative development environment if you don't have a plugin or other project that incorporates the graphing library to test against.

## Contributing

This repository runs CI checks on any changes pushed to it. You can run these locally to verify that they will work before you push anything.

- To run tests, install [lest](https://github.com/Roblox/lest) by following the instructions in the link, then, in the root directory, run:
```
lest
```
- To run tests and generate an [lcov code coverage file](https://roblox.atlassian.net/wiki/spaces/HOW/pages/1556185762/How+to+collect+code+coverage+from+lua+code+using+roblox-cli), run:
```
lest --coverage.on --coverage.excludes Packages --coverage.outputPath=output_lcov.info
```
- To run linting, install [selene](https://github.com/kampfkarren/selene) by following the instructions in the link, then, in the root directory, run:
```
selene src
```
- To run static analysis, install [robloxdev-cli](https://roblox.atlassian.net/wiki/spaces/HOW/pages/1556185593/How+to+use+rbx-aged-cli+to+download+roblox-cli+robloxdev-cli) by following the instructions in the link, then, in the root directory, run:
```
robloxdev-cli analyze --project default.rbxp --report.exclude.startsWith /absolute/path/to/graphing-lua/Packages
```
- To auto-format all files, install [stylua](https://github.com/JohnnyMorganz/StyLua) by following the instructions in the link, then, in the root directory, run:
```
stylua src
```
- You will also need to bump the **version number** in this repository's `rotriever.toml` file before publishing the changes to the rotriever registry.

In the future, the repository will have a changelog and documentation, which should all be updated prior to publishing any changes.
