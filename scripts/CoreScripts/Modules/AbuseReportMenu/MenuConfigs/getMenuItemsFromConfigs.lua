local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local DropdownReportMenuItem = require(root.Components.MenuItems.DropdownReportMenuItem)
local ButtonReportMenuItem = require(root.Components.MenuItems.ButtonReportMenuItem)
local FreeCommentsMenuItem = require(root.Components.MenuItems.FreeCommentsMenuItem)
local ModalBasedSelectorMenuItem = require(root.Components.MenuItems.ModalBasedSelectorMenuItem)
local ChatModalSelectorMenuItem = require(root.Components.MenuItems.ChatModalSelectorMenuItem)
local Types = require(root.Components.Types)
local Constants = require(root.Components.Constants)

local ButtonVariant = Foundation.Enums.ButtonVariant

local FFlagHideShortcutsOnReportDropdown = require(root.Flags.FFlagHideShortcutsOnReportDropdown)
local FFlagInGameMenuAddChatLineReporting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagInGameMenuAddChatLineReporting

local function getMenuItemsFromConfigs(
	menuUIStates: Types.ReportPersonState | Types.ReportExperienceState,
	dispatchUIStates: any,
	utilityProps: Types.MenuUtilityProps,
	configList: { any },
	isSmallPortraitViewport: boolean
)
	local menuItems = {}
	local localizedText = useLocalization(Constants.localizationKeys)

	local onMenuOpenChange
	if FFlagHideShortcutsOnReportDropdown then
		onMenuOpenChange = React.useCallback(function(isOpen)
			if utilityProps.onDropdownMenuOpenChange then
				utilityProps.onDropdownMenuOpenChange(isOpen)
			end
		end, { utilityProps.onDropdownMenuOpenChange })
	end

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
			elseif componentType == "dropdown" then
				menuItems[componentName] = React.createElement(DropdownReportMenuItem, {
					label = localizedText[config.fieldLabel],
					placeholderText = localizedText.ChooseOne,
					layoutOrder = i,
					onSelect = function(selectedItem)
						config.onUpdateSelectedOption(selectedItem, menuUIStates, dispatchUIStates, utilityProps)
					end,
					onMenuOpenChange = onMenuOpenChange,
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
					onMenuOpenChange = onMenuOpenChange,
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
			elseif FFlagInGameMenuAddChatLineReporting and componentType == "chatModalSelector" then
				menuItems[componentName] = React.createElement(ChatModalSelectorMenuItem, {
					label = localizedText[config.fieldLabel],
					layoutOrder = i,
					onSelect = function(message: Types.Message, orderedMessages: { Types.Message })
						config.onUpdateSelectedOption(
							message,
							orderedMessages,
							menuUIStates,
							dispatchUIStates,
							utilityProps
						)
					end,
					onMenuOpenChange = onMenuOpenChange,
					menuContainerWidth = utilityProps.menuWidth,
					selectorHeight = Constants.MenuItemHeight,
					selectedValue = if config.getSelectedValue
						then config.getSelectedValue(menuUIStates) or nil
						else nil,
					isSmallPortraitViewport = isSmallPortraitViewport,
					placeholderText = localizedText.ChooseOne,
				}) :: React.ReactElement
			end
		end
	end
	return menuItems
end

return getMenuItemsFromConfigs
