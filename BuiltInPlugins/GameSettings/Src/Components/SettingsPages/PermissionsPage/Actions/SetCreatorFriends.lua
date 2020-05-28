local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(friends)
	assert(typeof(friends) == "table", script.Name.." requires friends to be a table, not "..typeof(friends))
	for _,userId in ipairs(friends) do
		assert(typeof(userId) == "number", script.Name.." requires a table of numbers for friends, not "..typeof(userId))
	end

	return {
		creatorFriends = friends,
	}
end)
