local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

local FFlagStudioFixGroupCreatorInfo3 = game:GetFastFlag("StudioFixGroupCreatorInfo3")
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

return Action(script.Name, function(changes, settings)
	if FFlagStudioFixGroupCreatorInfo3 and DebugFlags.shouldDebugWarnings() then
		-- We check type(changes.creator) == "table" because it can be set to Cryo.None,
		-- which passes a truthiness or ~= nil check
		if changes and type(changes.creator) == "table" and changes.creator.Id ~= nil and changes.creator.Type == nil then
			warn("Setting PageInfo.creator without a type")
		end
	end

	return {
		changes = changes,
		settings = settings,
	}
end)
