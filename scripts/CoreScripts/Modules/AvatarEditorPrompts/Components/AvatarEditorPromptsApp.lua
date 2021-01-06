local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local ExternalEventConnection = require(CorePackages.RoactUtilities.ExternalEventConnection)

local Connection = require(script.Parent.Connection)

local Prompts = script.Parent.Prompts
local AllowInventoryReadAccessPrompt = require(Prompts.AllowInventoryReadAccessPrompt)
local SaveAvatarPrompt = require(Prompts.SaveAvatarPrompt)
local CreateOutfitPrompt = require(Prompts.CreateOutfitPrompt)
local EnterOutfitNamePrompt = require(Prompts.EnterOutfitNamePrompt)
local SetFavoritePrompt = require(Prompts.SetFavoritePrompt)

local AvatarEditorPrompts = script.Parent.Parent

local PromptType = require(AvatarEditorPrompts.PromptType)

local ScreenSizeUpdated = require(AvatarEditorPrompts.Actions.ScreenSizeUpdated)

local Modules = AvatarEditorPrompts.Parent
local FFlagAESPromptsSupportGamepad = require(Modules.Flags.FFlagAESPromptsSupportGamepad)

--Displays behind the InGameMenu so that developers can't block interaction with the InGameMenu by constantly prompting.
local AVATAR_PROMPTS_DISPLAY_ORDER = 0

local GAMEPAD_INPUT_TYPES = {
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
	[Enum.UserInputType.Gamepad5] = true,
	[Enum.UserInputType.Gamepad6] = true,
	[Enum.UserInputType.Gamepad7] = true,
	[Enum.UserInputType.Gamepad8] = true,
}

local AvatarEditorPromptsApp = Roact.PureComponent:extend("AvatarEditorPromptsApp")

AvatarEditorPromptsApp.validateProps = t.strictInterface({
	--From State
	promptType = t.optional(t.userdata),

	--Dispatch
	screenSizeUpdated = t.callback,
})

function AvatarEditorPromptsApp:init()
	if FFlagAESPromptsSupportGamepad then
		self:setState({
			isGamepad = GAMEPAD_INPUT_TYPES[UserInputService:GetLastInputType()] or false
		})
	end

	self.absoluteSizeChanged = function(rbx)
		self.props.screenSizeUpdated(rbx.AbsoluteSize)
	end

	if FFlagAESPromptsSupportGamepad then
		self.focusController = RoactGamepad.createFocusController()

		self.selectedCoreGuiObject = nil
		self.selectedGuiObject = nil
	end
end

function AvatarEditorPromptsApp:render()
	local promptComponent
	if self.props.promptType == PromptType.AllowInventoryReadAccess then
		promptComponent = Roact.createElement(AllowInventoryReadAccessPrompt)
	elseif self.props.promptType == PromptType.SaveAvatar then
		promptComponent = Roact.createElement(SaveAvatarPrompt)
	elseif self.props.promptType == PromptType.CreateOutfit then
		promptComponent = Roact.createElement(CreateOutfitPrompt)
	elseif self.props.promptType == PromptType.EnterOutfitName then
		promptComponent = Roact.createElement(EnterOutfitNamePrompt)
	elseif self.props.promptType == PromptType.SetFavorite then
		promptComponent = Roact.createElement(SetFavoritePrompt)
	end

	return Roact.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		DisplayOrder = AVATAR_PROMPTS_DISPLAY_ORDER,

		[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
	}, {
		Connection = Roact.createElement(Connection),

		LastInputTypeConnection = FFlagAESPromptsSupportGamepad and Roact.createElement(ExternalEventConnection, {
			event = UserInputService.LastInputTypeChanged,
			callback = function(lastInputType)
				self:setState({
					isGamepad = GAMEPAD_INPUT_TYPES[lastInputType] or false
				})
			end,
		}) or nil,

		PromptFrame = FFlagAESPromptsSupportGamepad and Roact.createElement(RoactGamepad.Focusable.Frame, {
			focusController = self.focusController,

			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		}, {
			Prompt = promptComponent,
		}) or nil,

		Prompt = not FFlagAESPromptsSupportGamepad and promptComponent or nil,
	})
end

if FFlagAESPromptsSupportGamepad then
	function AvatarEditorPromptsApp:revertSelectedGuiObject()
		if self.selectedCoreGuiObject then
			GuiService.SelectedCoreObject = self.selectedCoreGuiObject
		elseif self.selectedGuiObject then
			GuiService.SelectedObject = self.selectedGuiObject
		end

		self.selectedCoreGuiObject = nil
		self.selectedGuiObject = nil
	end

	function AvatarEditorPromptsApp:didUpdate(prevProps, prevState)
		local shouldCaptureFocus = self.state.isGamepad and self.props.promptType ~= nil
		local lastShouldCaptureFocus = prevState.isGamepad and prevProps.promptType ~= nil

		if shouldCaptureFocus ~= lastShouldCaptureFocus then
			if shouldCaptureFocus then
				self.selectedCoreGuiObject = GuiService.SelectedCoreObject
				self.selectedGuiObject = GuiService.SelectedObject
				GuiService.SelectedObject = nil
				self.focusController.captureFocus()
			else
				self.focusController.releaseFocus()
				if self.state.isGamepad then
					self:revertSelectedGuiObject()
				end
			end
		end
	end

	function AvatarEditorPromptsApp:willUnmount()
		if self.state.isGamepad then
			self:revertSelectedGuiObject()
		end
	end
end

local function mapStateToProps(state)
	return {
		promptType = state.promptInfo.promptType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		screenSizeUpdated = function(screenSize)
			return dispatch(ScreenSizeUpdated(screenSize))
		end,
	}
end


return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AvatarEditorPromptsApp)