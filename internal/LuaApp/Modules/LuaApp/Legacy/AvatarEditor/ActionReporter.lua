local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local Analytics = require(Modules.Common.Analytics)

local analytics = nil
local function getAnalytics()
	analytics = analytics or Analytics.new()
	return analytics
end


local function ValuesAsCommaSeparatedString(myTable)
	local result = ""
	for _,v in pairs(myTable) do
		result = result .. (result ~= "" and ", " or "")
		result = result .. tostring(v)
	end
	return result
end


return function(store)
	local this = store

	local function sendEvent(context, propertyName, value)
		local state = this:GetState()

		local currentCategory = state.Category or {}
		local currentCategoryIndex = currentCategory.CategoryIndex or 1
		local tabInfo = state.Category.TabsInfo[currentCategoryIndex]
		local tabIndex = tabInfo and tabInfo.TabIndex or 1

		getAnalytics().EventStream:SetRBXEventStream(
			context,
			"avatarEditorPropertyChanged",
			{
				prop = tostring(propertyName),
				val = tostring(value),
				ci = tostring(currentCategoryIndex),
				ti = tostring(tabIndex)
			}
		)
	end

	local handler = {}

	function handler.EquipAsset(action)
		sendEvent( action.type, action.assetType,
			ValuesAsCommaSeparatedString(this:GetState().Character.Assets[action.assetType]) )
	end

	function handler.UnequipAsset(action)
		sendEvent( action.type, action.assetType,
			ValuesAsCommaSeparatedString(this:GetState().Character.Assets[action.assetType]) )
	end

	function handler.SetAvatarHeadSize(action)
		sendEvent( action.type, "HeadSize", action.head )
	end

	function handler.SetAvatarHeight(action)
		sendEvent( action.type, "Height", action.height )
	end

	function handler.SetAvatarType(action)
		sendEvent( action.type, "Type", action.avatarType )
	end

	function handler.ToggleAvatarType(action)
		sendEvent( action.type, "Type", this:GetState().Character.AvatarType )
	end

	function handler.SetAvatarWidth(action)
		sendEvent( action.type, "Width", action.width )
	end

	function handler.SetBodyColors(action)
		local bodyColors = action.bodyColors or {}
		local commonColor = bodyColors[next(bodyColors)] or "empty"

		for _,color in pairs(action.bodyColors) do
			commonColor = (color == commonColor) and commonColor or "mixed"
		end

		sendEvent( action.type, "BodyColors", commonColor )
	end

	local baseDispatch = this.Dispatch
	function this:Dispatch(action)
		local result = baseDispatch(self, action)

		local handlerFunction = handler[action.type] or function() end
		handlerFunction(action)

		return result
	end

	return this
end

