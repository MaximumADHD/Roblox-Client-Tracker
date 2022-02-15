local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local FrameworkUtil = require(Libs.Framework).Util
local Action = FrameworkUtil.Action
local Util = Plugin.Core.Util
local CreatorInfoHelper = require(Util.CreatorInfoHelper)

local t = require(Libs.Framework).Util.Typecheck.t

return Action(script.Name, function(creatorInfo)
	assert(
		t.union(
			t.strictInterface({}),
			t.interface({
				Id = t.number,
				Name = t.string,
				Type = CreatorInfoHelper.isValidCreatorType,
			})
		)(creatorInfo),
		"CreatorInfo must be either an empty table, or have all keys defined"
	)

	return {
		cachedCreatorInfo = creatorInfo,
	}
end)
