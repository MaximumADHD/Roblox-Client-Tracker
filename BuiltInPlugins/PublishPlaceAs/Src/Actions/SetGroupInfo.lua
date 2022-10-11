local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AssertType = require(Plugin.Src.Util.AssertType)

local Action = require(script.Parent.Action)

return Action(script.Name, function(groupInfoArg)
	AssertType.assertNullableType(groupInfoArg, "table", "SetGroupInfo arg")
	local groupInfo = groupInfoArg or {}

	local groups = groupInfo.groups

	AssertType.assertType(groups, "table", "SetGroupInfo.groups")

	return {
		groupInfo = {
			groups = groups,
		},
	}
end)
