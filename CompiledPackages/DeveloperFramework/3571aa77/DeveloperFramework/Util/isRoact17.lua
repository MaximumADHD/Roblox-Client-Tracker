--[[
	This function is used to differentiate between legacy Roact and Roact17.

	Use of this function should be treated similarly to an FFlag. That is, it
	should be used to gate changes in component behavior between legacy Roact
	and Roact17, with the intent to remove the legacy codepath in favor of
	supporting Roact17 fully in the future.

	For example:

		if Util.isRoact17(Roact) then
			self:setState({
				foo = true,
			}, function()
				print(foo) -- true
			end)
		else
			self:setState({
				foo = true
			})

			print(foo) -- true)
		end

	As such, this function _should_ be temporary and removed once we migrate all
	consumers of DevFramework to Roact17. But we know how temporary changes go
]]

local function isRoact17(maybeRoact17: any): boolean
	if maybeRoact17.Ref == "ref" and maybeRoact17.Children == "children" then
		return true
	-- Legacy Roact is a strict table, and indexing it directly throws an error
	-- if a member doesn't exist. To get around this we use rawget to check if
	-- it's Roact17
	elseif rawget(maybeRoact17, "useState") ~= nil then
		return true
	else
		return false
	end
end

return isRoact17
