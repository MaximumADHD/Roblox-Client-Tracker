local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local SetAllowInventoryReadAccess = require(AvatarEditorPrompts.Thunks.SetAllowInventoryReadAccess)

local AllowInventoryReadAccessPrompt = Roact.PureComponent:extend("AllowInventoryReadAccessPrompt")

AllowInventoryReadAccessPrompt.validateProps = t.strictInterface({
	--State
	gameName = t.string,
	screenSize = t.Vector2,
	--Dispatch
	setAvatarReadAccessAllowed = t.callback,
	setAvatarReadAccessDenied = t.callback,
})

function AllowInventoryReadAccessPrompt:render()
	return Roact.createElement(InteractiveAlert, {
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptTitle"),
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptText", {
			RBX_NAME = self.props.gameName,
		}),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.setAvatarReadAccessDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptNo"),
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.props.setAvatarReadAccessAllowed,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptYes"),
					},
				},
			},
		},
		position = UDim2.fromScale(0.5, 0.5),
		screenSize = self.props.screenSize,
	})
end

local function mapStateToProps(state)
	return {
		gameName = state.gameName,
		screenSize = state.screenSize,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setAvatarReadAccessDenied = function()
			return dispatch(SetAllowInventoryReadAccess(false))
		end,

		setAvatarReadAccessAllowed = function()
			return dispatch(SetAllowInventoryReadAccess(true))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AllowInventoryReadAccessPrompt)