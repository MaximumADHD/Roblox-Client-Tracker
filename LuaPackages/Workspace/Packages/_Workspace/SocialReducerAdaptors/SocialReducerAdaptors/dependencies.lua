local Root = script.Parent
local Packages = Root.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local Players = game:GetService("Players")

return {
	Players = Players,
	llama = LuaSocialLibrariesDeps.llama,
	Rodux = require(Packages.Rodux),
}
