local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")

local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Style = require(CorePackages.Workspace.Packages.Style)
local UIBlox = require(CorePackages.Packages.UIBlox)

local LayerCollectorProvider = UIBlox.Core.Layout.LayerCollector.LayerCollectorProvider
local StyleProviderWithDefaultTheme = Style.StyleProviderWithDefaultTheme

local Constants = require(root.Components.Constants)
local ChatModalSelectorDialog = require(root.Components.ChatModalSelectorDialog)
local Types = require(root.Components.Types)

local FFlagHideShortcutsOnReportDropdown = require(root.Flags.FFlagHideShortcutsOnReportDropdown)

local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local isSpatial
local UIManager
local PanelType
if isInExperienceUIVREnabled then
	isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	UIManager = VrSpatialUi.UIManager
	PanelType = VrSpatialUi.Constants.PanelType
end

local elements: any = {
	modalSelectorHandle = nil,
	modalSelectorFrame = nil,
	modalSelectorScreenGui = nil,
}

local function unmountModalSelector()
	if elements.modalSelectorHandle ~= nil then
		Roact.unmount(elements.modalSelectorHandle)
		elements.modalSelectorHandle = nil
	end

	if isInExperienceUIVREnabled then
		if elements.modalSelectorFrame ~= nil then
			elements.modalSelectorFrame.Parent = nil
			elements.modalSelectorFrame = nil
		end

		if elements.modalSelectorScreenGui ~= nil then
			elements.modalSelectorScreenGui = nil
		end
	else
		if elements.modalSelectorScreenGui ~= nil then
			elements.modalSelectorFrame.Parent = nil
			elements.modalSelectorFrame = nil
			elements.modalSelectorScreenGui = nil
		end
	end
end

--[[
	Mount a ScreenGui with providers and ChatModalSelectorDialog inside.
	TODO: Add focus navigation support for gamepad/keyboard
]]
local function mountModalSelector(
	onClose: () -> (),
	onOpen: () -> ()?,
	onSelect: (message: Types.Message, orderedMessages: { Types.Message }) -> ()
)
	if isInExperienceUIVREnabled and isSpatial() then
		local panelObject = UIManager.getInstance():getPanelObject(PanelType.MoreMenu)
		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.new(0, 0, 0, 0)
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.ZIndex = 10
		frame.Parent = panelObject
		elements.modalSelectorFrame = frame
	elseif not elements.modalSelectorScreenGui then
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "ModalSelectorDialogGui"
		screenGui.DisplayOrder = 7
		screenGui.Enabled = true
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = CoreGui:FindFirstChild(Constants.AbuseReportMenuPlaceholderFrame, true)
		screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

		elements.modalSelectorScreenGui = screenGui

		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.new(0, 0, 0, 0)
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.Parent = elements.modalSelectorScreenGui

		elements.modalSelectorFrame = frame
	end

	if FFlagHideShortcutsOnReportDropdown and onOpen ~= nil then
		onOpen()
	end

	local dialog = Roact.createElement(
		LayerCollectorProvider,
		{},
		Roact.createElement(LocalizationProvider, {
			localization = Localization.new(LocalizationService.RobloxLocaleId),
		}, {
			StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = ExpChatShared.context.store,
			}, {
				StyleProviderWithDefaultTheme = Roact.createElement(StyleProviderWithDefaultTheme, {
					withDarkTheme = true,
				}, {
					ChatModalSelectorDialog = Roact.createElement(ChatModalSelectorDialog, {
						isShown = true,
						onClose = onClose,
						onSelect = onSelect,
					}),
				}),
			}),
		})
	)

	elements.modalSelectorHandle = Roact.mount(dialog, elements.modalSelectorFrame, "ChatModalSelectorDialog")
end

return {
	mountModalSelector = mountModalSelector,
	unmountModalSelector = unmountModalSelector,
}
