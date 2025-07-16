local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local Connection = require(script.Parent.Connection)

local Prompts = script.Parent.Prompts
local AllowInventoryReadAccessPrompt = require(Prompts.AllowInventoryReadAccessPrompt)
local SaveAvatarPrompt = require(Prompts.SaveAvatarPrompt)
local CreateOutfitPrompt = require(Prompts.CreateOutfitPrompt)
local EnterOutfitNamePrompt = require(Prompts.EnterOutfitNamePrompt)
local SetFavoritePrompt = require(Prompts.SetFavoritePrompt)
local DeleteOutfitPrompt = require(Prompts.DeleteOutfitPrompt)
local RenameOutfitPrompt = require(Prompts.RenameOutfitPrompt)
local UpdateOutfitPrompt = require(Prompts.UpdateOutfitPrompt)

local FFlagAvatarEditorPromptsNoPromptNoRender = game:DefineFastFlag("AvatarEditorPromptsNoPromptNoRender", false)

local LocalPlayer = Players.LocalPlayer

local AvatarEditorPrompts = script.Parent.Parent

local PromptType = require(AvatarEditorPrompts.PromptType)

local ScreenSizeUpdated = require(AvatarEditorPrompts.Actions.ScreenSizeUpdated)

--Displays behind the InGameMenu so that developers can't block interaction with the InGameMenu by constantly prompting.
local AVATAR_PROMPTS_DISPLAY_ORDER = -1

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

local PROMPT_COMPONENTS_MAP = {
	[PromptType.AllowInventoryReadAccess] = AllowInventoryReadAccessPrompt,
	[PromptType.SaveAvatar] = SaveAvatarPrompt,
	[PromptType.CreateOutfit] = CreateOutfitPrompt,
	[PromptType.EnterOutfitName] = EnterOutfitNamePrompt,
	[PromptType.SetFavorite] = SetFavoritePrompt,
	[PromptType.DeleteOutfit] = DeleteOutfitPrompt,
	[PromptType.RenameOutfit] = RenameOutfitPrompt,
	[PromptType.UpdateOutfit] = UpdateOutfitPrompt,
}

local AvatarEditorPromptsApp = Roact.PureComponent:extend("AvatarEditorPromptsApp")

AvatarEditorPromptsApp.validateProps = t.strictInterface({
	--From State
	promptType = t.optional(t.userdata),

	--Dispatch
	screenSizeUpdated = t.callback,
})

function AvatarEditorPromptsApp:init()
	self:setState({
		isGamepad = GAMEPAD_INPUT_TYPES[UserInputService:GetLastInputType()] or false,
	})

	self.absoluteSizeChanged = function(rbx)
		self.props.screenSizeUpdated(rbx.AbsoluteSize)
	end

	self.focusController = RoactGamepad.createFocusController()

	self.selectedCoreGuiObject = nil
	self.selectedGuiObject = nil
end

function AvatarEditorPromptsApp:render()
	local promptElement
	if self.props.promptType then
		local promptComponent = PROMPT_COMPONENTS_MAP[self.props.promptType]
		if promptComponent then
			promptElement = Roact.createElement(promptComponent)
		else
			error("Unexpected prompt type!")
		end
	end

	return if FFlagAvatarEditorPromptsNoPromptNoRender and promptElement == nil
		then nil
		else Roact.createElement("ScreenGui", {
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			AutoLocalize = false,
			DisplayOrder = AVATAR_PROMPTS_DISPLAY_ORDER,

			[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
		}, {
			Connection = Roact.createElement(Connection),

			LastInputTypeConnection = Roact.createElement(ExternalEventConnection, {
				event = UserInputService.LastInputTypeChanged :: RBXScriptSignal,
				callback = function(lastInputType)
					self:setState({
						isGamepad = GAMEPAD_INPUT_TYPES[lastInputType] or false,
					})
				end,
			}) or nil,

			PromptFrame = Roact.createElement(RoactGamepad.Focusable.Frame, {
				focusController = self.focusController,

				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Prompt = promptElement,
			}) or nil,
		})
end

function AvatarEditorPromptsApp:revertSelectedGuiObject()
	local PlayerGui = LocalPlayer and LocalPlayer:FindFirstChildWhichIsA("PlayerGui")

	if self.selectedCoreGuiObject and self.selectedCoreGuiObject:IsDescendantOf(CoreGui) then
		GuiService.SelectedCoreObject = self.selectedCoreGuiObject
	elseif self.selectedGuiObject and self.selectedGuiObject:IsDescendantOf(PlayerGui) then
		GuiService.SelectedObject = self.selectedGuiObject
		GuiService.SelectedCoreObject = nil
	else
		GuiService.SelectedCoreObject = nil
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

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AvatarEditorPromptsApp)
