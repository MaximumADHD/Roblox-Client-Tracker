local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local DropdownReportMenuItem = require(root.Components.MenuItems.DropdownReportMenuItem)
local ButtonReportMenuItem = require(root.Components.MenuItems.ButtonReportMenuItem)
local FreeCommentsMenuItem = require(root.Components.MenuItems.FreeCommentsMenuItem)
local ModalBasedSelectorMenuItem = require(root.Components.MenuItems.ModalBasedSelectorMenuItem)
local Types = require(root.Components.Types)
local getMenuItemSizings = require(root.Utility.getMenuItemSizings)
local Constants = require(root.Components.Constants)

local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ButtonVariant = Foundation.Enums.ButtonVariant
local Images = UIBlox.App.ImageSet.Images

local GetFFlagAddAbuseReportMenuCoreScriptsProvider = require(root.Flags.GetFFlagAddAbuseReportMenuCoreScriptsProvider)

local function getMenuItemsFromConfigs(
	menuUIStates: Types.ReportPersonState | Types.ReportExperienceState,
	dispatchUIStates: any,
	utilityProps: Types.MenuUtilityProps,
	configList: { any },
	isSmallPortraitViewport: boolean
)
	local sizings = getMenuItemSizings()
	local menuItems = {}
	local localizedText = useLocalization(Constants.localizationKeys)

	for i, config in configList do
		if config.getIsVisible(menuUIStates) then
			local componentType = config.componentType
			local componentName = config.componentName
			if componentType == "generic" then
				-- generic components
			elseif componentType == "freeComments" then
				menuItems[componentName] = React.createElement(FreeCommentsMenuItem, {
					layoutOrder = i,
					comment = menuUIStates.comment,
					placeholderText = localizedText.ReportCommentPlaceholder,
					menuContainerWidth = utilityProps.menuWidth,
					isSmallPortraitViewport = isSmallPortraitViewport,
					onUpdate = function(newValue)
						config.onUpdate(newValue, menuUIStates, dispatchUIStates, utilityProps)
					end,
				})
			elseif componentType == "button" then
				local iconSrc = config.getIconSrc(utilityProps)
				if GetFFlagAddAbuseReportMenuCoreScriptsProvider() then
					menuItems[componentName] = React.createElement(ButtonReportMenuItem, {
						label = if config.fieldLabel == "" then config.fieldLabel else localizedText[config.fieldLabel],
						button = React.createElement(Foundation.Button, {
							variant = if config.variant == "primary"
								then ButtonVariant.SubEmphasis
								else ButtonVariant.Subtle,
							text = localizedText[config.getButtonLabel(utilityProps)],
							icon = if iconSrc ~= "" then iconSrc else nil,
							width = UDim.new(1, 0),
							isDisabled = if config.getIsDisabled ~= nil
								then config.getIsDisabled(menuUIStates, utilityProps)
								else false,
							onActivated = function()
								config.onClick(menuUIStates, dispatchUIStates, utilityProps)
							end,
						}),
						menuContainerWidth = utilityProps.menuWidth,
						layoutOrder = i,
						isSmallPortraitViewport = isSmallPortraitViewport,
					})
				else
					menuItems[componentName] = React.createElement(ButtonReportMenuItem, {
						label = if config.fieldLabel == "" then config.fieldLabel else localizedText[config.fieldLabel],
						button = React.createElement(Button, {
							buttonType = if config.variant == "primary"
								then ButtonType.PrimarySystem
								else ButtonType.Secondary,
							text = localizedText[config.getButtonLabel(utilityProps)],
							size = UDim2.new(1, 0, 0, sizings.ButtonSize),
							fontStyle = sizings.FontStyle,
							icon = if iconSrc ~= "" then Images[iconSrc] else nil,
							isDisabled = if config.getIsDisabled ~= nil
								then config.getIsDisabled(menuUIStates, utilityProps)
								else false,
							onActivated = function()
								config.onClick(menuUIStates, dispatchUIStates, utilityProps)
							end,
						}),
						menuContainerWidth = utilityProps.menuWidth,
						layoutOrder = i,
						isSmallPortraitViewport = isSmallPortraitViewport,
					})
				end
			elseif componentType == "dropdown" then
				menuItems[componentName] = React.createElement(DropdownReportMenuItem, {
					label = localizedText[config.fieldLabel],
					placeholderText = localizedText.ChooseOne,
					layoutOrder = i,
					onSelect = function(selectedItem)
						config.onUpdateSelectedOption(selectedItem, menuUIStates, dispatchUIStates, utilityProps)
					end,
					menuContainerWidth = utilityProps.menuWidth,
					readonlyValue = localizedText[config.readonlyValue],
					selections = config.getMenuItems(menuUIStates),
					isSmallPortraitViewport = isSmallPortraitViewport,
					minHeight = if isSmallPortraitViewport then 0 else Constants.MenuItemHeight,
				})
			elseif componentType == "modalSelector" then
				menuItems[componentName] = React.createElement(ModalBasedSelectorMenuItem, {
					label = localizedText[config.fieldLabel],
					layoutOrder = i,
					onSelect = function(selectedLabel, selectedSublabel, selectedIdentifier)
						local selectedItem = {
							label = selectedLabel,
							subLabel = selectedSublabel,
							identifier = selectedIdentifier,
						}
						config.onUpdateSelectedOption(selectedItem, menuUIStates, dispatchUIStates, utilityProps)
					end,
					menuContainerWidth = utilityProps.menuWidth,
					selectorHeight = Constants.MenuItemHeight,
					selectedValue = if config.getSelectedValue
						then localizedText[config.getSelectedValue(menuUIStates)] or config.getSelectedValue(
							menuUIStates
						) or nil
						else nil,
					selections = config.getMenuItems(menuUIStates, localizedText),
					viewportHeight = utilityProps.viewportDimension.height,
					viewportWidth = utilityProps.viewportDimension.width,
					isSmallPortraitViewport = isSmallPortraitViewport,
					placeholderText = localizedText.ChooseOne,
				})
			end
		end
	end
	return menuItems
end

return getMenuItemsFromConfigs
