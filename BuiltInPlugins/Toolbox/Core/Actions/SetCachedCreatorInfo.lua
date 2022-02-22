local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local FrameworkUtil = require(Packages.Framework).Util
local Action = FrameworkUtil.Action
local Util = Plugin.Core.Util
local CreatorInfoHelper = require(Util.CreatorInfoHelper)

local t = require(Packages.Framework).Util.Typecheck.t

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
