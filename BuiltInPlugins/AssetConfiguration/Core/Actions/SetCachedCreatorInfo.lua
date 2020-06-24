local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local FrameworkUtil = require(Libs.Framework.Util)
local Action = FrameworkUtil.Action
local Util = Plugin.Core.Util
local CreatorInfoHelper = require(Util.CreatorInfoHelper)

local t = require(Libs.Framework.Util.Typecheck.t)

local FFlagStudioFixGroupCreatorInfo = game:GetFastFlag("StudioFixGroupCreatorInfo")

return Action(script.Name, function(creatorInfo)
	if FFlagStudioFixGroupCreatorInfo then
		assert(t.union(
			t.strictInterface({}),
			t.interface({
				Id = t.number,
				Name = t.string,
				Type = CreatorInfoHelper.isValidCreatorType
			})
		)(creatorInfo), "CreatorInfo must be either an empty table, or have all keys defined")
	end

	return {
		cachedCreatorInfo = creatorInfo,
	}
end)
