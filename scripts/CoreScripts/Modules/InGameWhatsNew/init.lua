--[[
	CoreScript entry point for What's New in-game tours.
]]

local CorePackages = game:GetService("CorePackages")

local WhatsNew = require(CorePackages.Workspace.Packages.WhatsNew)
local createInGameScopeActions = require(script.createInGameScopeActions)

return WhatsNew.createInGameWhatsNewHost({
	scopeActions = createInGameScopeActions(),
})
