--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ButtonType = UIBlox.App.Button.Enum.ButtonType

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local PromptWithTextField = require(Components.Prompts.PromptWithTextField)

local SignalCreateOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalCreateOutfitPermissionDenied)
local PerformCreateOutfit = require(AvatarEditorPrompts.Thunks.PerformCreateOutfit)

local EnterOutfitNamePrompt = Roact.PureComponent:extend("EnterOutfitNamePrompt")

EnterOutfitNamePrompt.validateProps = t.strictInterface({
	--State
	screenSize = t.Vector2,
	--Dispatch
	signalCreateOutfitPermissionDenied = t.callback,
	performCreateOutfit = t.callback,
})

function EnterOutfitNamePrompt:init()
	self:setState({
		outfitName = "",
		alertPosition = UDim2.fromScale(0.5, 0.5),
	})

	self.textBoxRef = Roact.createRef()

	self.confirmCreateOutfit = function()
		self.props.performCreateOutfit(self.state.outfitName)
	end

	self.textUpdated = function(text)
		self:setState({
			outfitName = text,
		})
	end
end

function EnterOutfitNamePrompt:render()
	return Roact.createElement(PromptWithTextField, {
		fieldText = self.state.outfitName,
		onFieldTextUpdated = self.textUpdated,

		-- Props passed to Alert
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptTitle"),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalCreateOutfitPermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptNo"),
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						isDisabled = self.state.outfitName == "",
						onActivated = self.confirmCreateOutfit,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptYes"),
					},
					isDefaultChild = false,
				},
			},
		},
	})
end

local function mapStateToProps(state)
	return {
		screenSize = state.screenSize,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalCreateOutfitPermissionDenied = function()
			return dispatch(SignalCreateOutfitPermissionDenied)
		end,

		performCreateOutfit = function(outfitName)
			return dispatch(PerformCreateOutfit(outfitName))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EnterOutfitNamePrompt)
