local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local FriendStatusConnector = require(script.FriendStatusConnector)
local LastInputTypeConnector = require(script.LastInputTypeConnector)
local MouseOverrideManager = require(script.MouseOverrideManager)
local FocusHighlightManager = require(script.FocusHighlightManager)
local NativeCloseEventConnector = require(script.NativeCloseEventConnector)

local InGameMenu = script.Parent.Parent
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local validateProps = t.strictInterface({
	isEducationalPopupEnabled = t.optional(t.boolean),
})

local function Connection(props)
	assert(validateProps)
	return Roact.createFragment({
		FriendStatusConnector = Roact.createElement(FriendStatusConnector),
		LastInputTypeConnector = Roact.createElement(LastInputTypeConnector),
		MouseOverrideManager = Roact.createElement(MouseOverrideManager),
		FocusHighlightManager = Roact.createElement(FocusHighlightManager),
		NativeCloseEventConnector = props.isEducationalPopupEnabled and Roact.createElement(NativeCloseEventConnector)
			or nil,
	})
end

return InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
	}
end)(Connection)
