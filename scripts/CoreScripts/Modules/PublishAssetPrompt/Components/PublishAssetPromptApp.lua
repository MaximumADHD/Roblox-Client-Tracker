--[[
	This component displays an on-screen prompt when AssetService:PromptPublishAssetAsync is called,
	so that a player can publish assets from within an experience. The appearance of this prompt varies depending
	on the AssetType. In addition to PromptPublishAssetSingleStep, eventually we may add multi-step prompts.
]]
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local InputType = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup = require(CorePackages.Workspace.Packages.InputType).getInputGroup

local Components = script.Parent
local PromptType = require(Components.Parent.PromptType)
local PublishAssetPromptSingleStep = require(Components.PublishAssetPromptSingleStep)
local PublishAvatarPrompt = require(Components.PublishAvatarPrompt.PublishAvatarPrompt)
local ResultModal = require(Components.ResultModal)

local UIBlox = require(CorePackages.Packages.UIBlox)
local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local focusNavigationService =
	ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local FocusNavigationRegistryProvider = FocusNavigableSurfaceRegistry.Provider
local FocusNavigationCoreScriptsWrapper = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

-- flagging roact gamepad for removal due to deprecation - focusNavigation will be used instead for engine navigation
local FFlagCSFocusWrapperRefactor = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FFlagPublishAssetPromptNoPromptNoRender = game:DefineFastFlag("PublishAssetPromptNoPromptNoRender", false)

--Displays behind the in-game menu so that developers can't block interaction with the InGameMenu by constantly prompting.
--The in-game menu displays at level 0, to render behind it we need to display at level -1.
local DISPLAY_ORDER = -1

local PublishAssetPromptApp = Roact.PureComponent:extend("PublishAssetPromptApp")

local SELECTION_GROUP_NAME = "PublishAssetPromptApp"

PublishAssetPromptApp.validateProps = t.strictInterface({
	--Dispatch
	assetType = t.optional(t.enum(Enum.AssetType)),
	assetInstance = t.optional(t.Instance), -- The individual publish prompts (like SingleStep) should support different asset types.
})

local function isGamepadInput(inputType)
	local inputGroup = getInputGroup(inputType)
	return inputGroup == InputType.InputTypeConstants.Gamepad
end

function PublishAssetPromptApp:init()
	self:setState({
		screenSize = Vector2.new(0, 0),
	})

	self.absoluteSizeChanged = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end

	self.selectedCoreGuiObject = nil
	self.selectedGuiObject = nil
end

function PublishAssetPromptApp:render()
	local promptElement

	-- If there is a result modal ("publish succeeded/failed"), we should show that.
	if self.props.resultModalType then
		promptElement = Roact.createElement(ResultModal, {
			screenSize = self.state.screenSize,
		})
	elseif self.props.assetInstance then
		if self.props.promptType == PromptType.PublishAssetSingleStep then
			promptElement = Roact.createElement(PublishAssetPromptSingleStep, {
				screenSize = self.state.screenSize,
			})
		end
	else
		if self.props.promptType == PromptType.PublishAvatar then
			promptElement = Roact.createElement(PublishAvatarPrompt, {
				screenSize = self.state.screenSize,
			})
		end
	end

	return if FFlagPublishAssetPromptNoPromptNoRender and promptElement == nil
		then nil
		else Roact.createElement("ScreenGui", {
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			AutoLocalize = false,
			DisplayOrder = DISPLAY_ORDER,

			[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
		}, {
			LastInputTypeConnection = Roact.createElement(ExternalEventConnection, {
				event = UserInputService.LastInputTypeChanged :: RBXScriptSignal,
				callback = function(lastInputType)
					self:setState({
						isGamepad = isGamepadInput(lastInputType),
					})
				end,
			}),

			PromptFrame = Roact.createElement(RoactGamepad.Focusable.Frame, {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				CursorProvider = Roact.createElement(SelectionCursorProvider, {}, {
					FocusNavigationProvider = Roact.createElement(
						ReactFocusNavigation.FocusNavigationContext.Provider,
						{
							value = focusNavigationService,
						},
						{
							FocusNavigationRegistryProvider = Roact.createElement(
								FocusNavigationRegistryProvider,
								nil,
								{
									FocusNavigationCoreScriptsWrapper = Roact.createElement(
										if FFlagCSFocusWrapperRefactor
											then FocusRoot
											else FocusNavigationCoreScriptsWrapper,
										if FFlagCSFocusWrapperRefactor
											then {
												surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
												isIsolated = true,
												isAutoFocusRoot = true,
											}
											else {
												selectionGroupName = SELECTION_GROUP_NAME,
												focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
											},
										{
											Prompt = promptElement,
										}
									),
								}
							),
						}
					),
				}),
			}),
		})
end

local function mapStateToProps(state)
	return {
		resultModalType = state.promptRequest.resultModalType,
		promptType = state.promptRequest.promptInfo.promptType,
		assetInstance = state.promptRequest.promptInfo.assetInstance,
		assetType = state.promptRequest.promptInfo.assetType,
	}
end

return RoactRodux.connect(mapStateToProps)(PublishAssetPromptApp)
