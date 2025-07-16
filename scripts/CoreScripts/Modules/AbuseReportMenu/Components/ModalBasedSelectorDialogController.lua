local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local Constants = require(root.Components.Constants)
local ModalBaseSelectorDialog = require(root.Components.ModalBaseSelectorDialog)

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

local function mountModalSelector(viewportHeight, viewportWidth, selections, onSelect, onClose, onOpen)
	local topCornerInset, _ = GuiService:GetGuiInset()
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

		elements.modalSelectorScreenGui = screenGui

		local frame = Instance.new("Frame")
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.new(0, 0, 0, -topCornerInset.Y)
		frame.Size = UDim2.new(1, 0, 1, topCornerInset.Y)
		frame.Parent = elements.modalSelectorScreenGui

		elements.modalSelectorFrame = frame
	end

	if FFlagHideShortcutsOnReportDropdown and onOpen ~= nil then
		onOpen()
	end

	local dialog = Roact.createElement(ModalBaseSelectorDialog, {
		isShown = true,
		cellData = selections,
		viewportHeight = viewportHeight,
		viewportWidth = viewportWidth,
		onSelect = onSelect,
		onClose = onClose,
	})

	elements.modalSelectorHandle = Roact.mount(dialog, elements.modalSelectorFrame, "ModalSelectorDialog")
end

return {
	mountModalSelector = mountModalSelector,
	unmountModalSelector = unmountModalSelector,
}
