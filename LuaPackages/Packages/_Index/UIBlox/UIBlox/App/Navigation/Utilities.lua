local Navigation = script.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local InputType = require(UIBlox.Enums.InputType)
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local Types = require(Navigation.ShortcutBar.Types)

local Utils = {}
local createFilterMapInputFunction = function(inputType: InputType.InputType)
	return function(value: Types.ShortcutPublicProps, _)
		-- to get around type check error that Image does not exist
		local icon: any = value.icon
		if typeof(icon) == "string" or typeof(icon) == "table" and icon.Image then
			return
		end

		if
			typeof(icon) == "EnumItem"
			or #icon > 0 and typeof(icon[1]) == "EnumItem" and inputType == InputType.MouseAndKeyboard
		then
			-- This allows for the icon to be generated as KeyLabel from a KeyCode or array of KeyCodes.
			-- Currently only expected for mouse and keyboard, but no technical limitation of KeyLabel.
			return value
		end

		if icon[inputType] then
			return Cryo.Dictionary.join(value, {
				icon = icon[inputType],
			})
		end
	end
end

Utils.filterItems = function(items, inputType: InputType.InputType?): { [number]: Types.ShortcutInternalProps }
	-- first take all the items that will show by default
	local filteredItems = Cryo.List.filter(items, function(value: Types.ShortcutPublicProps, _)
		-- to get around type check error that Image does not exist
		local icon: any = value.icon
		-- to check if Icon type and not InputIcon type
		return typeof(icon) == "string" or typeof(icon) == "table" and icon.Image
	end)
	-- if inputType is nil, return early
	if not inputType then
		return filteredItems
	end
	-- now grab the ones meant for the input type
	assert(inputType, "Assert inputType not nil at this point to silence type checker")
	filteredItems = Cryo.List.join(filteredItems, Cryo.List.filterMap(items, createFilterMapInputFunction(inputType)))

	return filteredItems
end

return Utils
