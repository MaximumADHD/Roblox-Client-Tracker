local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local FriendStatusConnector = require(script.FriendStatusConnector)
local LastInputTypeConnector = require(script.LastInputTypeConnector)
local MouseOverrideManager = require(script.MouseOverrideManager)
local VideoRecordConnector = require(script.VideoRecordConnector)
local NativeCloseEventConnector = require(script.NativeCloseEventConnector)

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenuPolicy = require(RobloxGui.Modules.InGameMenu.InGameMenuPolicy)
local GetFFlagUseRoactPolicyProvider = require(RobloxGui.Modules.Flags.GetFFlagUseRoactPolicyProvider)

local validateProps = t.strictInterface({
	isEducationalPopupEnabled = t.optional(t.boolean),
})

local function Connection(props)
	assert(validateProps)
	return Roact.createFragment({
		FriendStatusConnector = Roact.createElement(FriendStatusConnector),
		LastInputTypeConnector = Roact.createElement(LastInputTypeConnector),
		MouseOverrideManager = Roact.createElement(MouseOverrideManager),
		VideoRecordConnector = Roact.createElement(VideoRecordConnector),
		NativeCloseEventConnector = props.isEducationalPopupEnabled and Roact.createElement(NativeCloseEventConnector)
			or nil,
	})
end

if GetFFlagUseRoactPolicyProvider() then
	Connection = InGameMenuPolicy.connect(function(appPolicy, props)
		return {
			isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
		}
	end)(Connection)
end

return Connection
