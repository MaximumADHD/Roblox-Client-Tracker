local Plugin = script.Parent.Parent.Parent

local Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = ContextServices.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame
local ExpandablePane = UI.ExpandablePane
local TruncatedTextLabel = UI.TruncatedTextLabel

local PropertyView = require(script.Parent.PropertyView)
local PropertyStatus = require(Plugin.Src.Components.PropertyStatus)

local PropertyListView = Roact.PureComponent:extend("PropertyListView")

local getPropertiesForInstance = require(Plugin.Src.Utility.getPropertiesForInstance)
local StatusLevel = require(Plugin.Src.Utility.StatusLevel)
local StatusPropertyMap = require(Plugin.Src.Utility.StatusPropertyMap)

local getFFlagDevFrameworkRefactorExpandablePaneHeader = require(Plugin.Src.Flags.getFFlagDevFrameworkRefactorExpandablePaneHeader)

local statusBucketToType = {
	["Errors"] = StatusLevel.Error,
	["Warnings"] = StatusLevel.Warning,
}

local function statusIsRelevant(statusType, propertyName)
	if StatusPropertyMap[propertyName] then
		return StatusPropertyMap[propertyName][statusType] or false
	end
	return false
end

local function getRelevantStatuses(statusTable, propertyName)
	local relevantStatuses = {}
	for statusType, subStatusTable in pairs(statusTable) do
		relevantStatuses[statusType] = {}
		for _, status in pairs(subStatusTable) do
			if statusIsRelevant(status.StatusType, propertyName) then
				table.insert(relevantStatuses[statusType], status)
			end
		end
	end
	return relevantStatuses
end

local function getHighestSeverityStatus(instance, propertyName)
	local level = nil
	local message = ""
	local statuses = getRelevantStatuses(instance:GetStatuses(), propertyName)

	if #statuses.Errors > 0 then
		level = StatusLevel.Error
		message = statuses.Errors[1].StatusType
	elseif #statuses.Warnings > 0 then
		level = StatusLevel.Warning
		message = statuses.Warnings[1].StatusType
	end

	return level, message
end

local function getLocalizedStatusMessage(localization, statusType, level)
    local message = localization:getText("Statuses", statusType)
    if message:sub(-#statusType) == statusType then
        return localization:getText("Statuses", string.format("Default%s", level), {type = statusType});
    end
    return message
end

function PropertyListView:init()
	self:setState({
		expanded = {
			FileGeneral = true,
			ObjectGeneral = true,
		},
	})
end

function PropertyListView:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	if not props.Instance then
		return nil
	end

	local sections = {}
	for sectionIndex, sectionMetadata: Types.Section in pairs(getPropertiesForInstance(props.Instance)) do
		local sectionProperties = {}
		local sectionStatuses = {}

		local statusObject : Types.SectionStatus = {
			StatusLevel = nil,
			StatusMessage = nil,
			GlobalStatus = false,
		}

		-- Create statuses associated with this section
		local statuses = getRelevantStatuses(props.Instance:GetStatuses(), sectionMetadata.Section)
		for statusBucketType, subStatusTable in pairs(statuses) do
			for _, status in pairs(subStatusTable) do
				if statusObject.StatusLevel ~= StatusLevel.Error then
					statusObject.StatusLevel = statusBucketToType[statusBucketType]
					statusObject.StatusMessage = status.StatusType
					statusObject.GlobalStatus = true
				end
				local statusStyle = statusBucketToType[statusBucketType] == StatusLevel.Error and style.ErrorStatus or style.WarningStatus
				table.insert(sectionStatuses, Roact.createElement(TruncatedTextLabel, {
					LayoutOrder = #sectionStatuses,
					Size = UDim2.new(1, 0, 0, 28),
					Style = statusStyle,
					Text = getLocalizedStatusMessage(localization, status.StatusType, statusBucketType),
					TextSize = 10,
				}))
			end
		end

		-- Create property components
		for propertyIndex, propertyMetadata: Types.PropDescriptor in pairs(sectionMetadata.Properties) do
			if not propertyMetadata.ShouldHide or not propertyMetadata.ShouldHide() then
				local level, message = getHighestSeverityStatus(props.Instance, propertyMetadata.Name)

				if level and not statusObject.GlobalStatus and statusObject.StatusLevel ~= StatusLevel.Error then
					statusObject.StatusLevel = level
					statusObject.StatusMessage = message
				end

				sectionProperties[propertyIndex] = Roact.createElement(PropertyView, {
					Dependencies = propertyMetadata.Dependencies,
					Editable = propertyMetadata.Editable,
					Instance = props.Instance,
					LayoutOrder = propertyIndex + #sectionStatuses,
					Localization = localization,
					PropertyName = propertyMetadata.Name,
					SetProperty = props.SetProperty,
					StatusLevel = level,
					StatusMessage = message,
				})
			end
		end

		-- Only create the section if it has a visible property
		if #sectionProperties > 0 or #sectionStatuses > 0 then
			local expanded = self.state.expanded[sectionMetadata.Section]

			local headerComponent
			local headerComponentProps

			if getFFlagDevFrameworkRefactorExpandablePaneHeader() and
				statusObject.StatusLevel and (not expanded or statusObject.GlobalStatus) then
				headerComponent = PropertyStatus
				headerComponentProps = {
					StatusLevel = statusObject.StatusLevel,
					StatusMessage = statusObject.StatusMessage,
					Position = UDim2.new(1, 0, 0, 0),
				}
			end

			sections[sectionIndex] = Roact.createElement(ExpandablePane, {
				Expanded = expanded,
				OnExpandedChanged = function()
					self:setState({
						expanded = Cryo.Dictionary.join(self.state.expanded, {
							[sectionMetadata.Section] = not self.state.expanded[sectionMetadata.Section],
						})
					})
				end,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = sectionIndex,
				Style = "AssetSettings",
				Text = localization:getText("Sections", sectionMetadata.Section),
				HeaderComponent = headerComponent,
				HeaderComponentProps = headerComponentProps,
			}, Cryo.List.join(sectionProperties, sectionStatuses))
		end
	end


	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Layout = Enum.FillDirection.Vertical,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0, 0),
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Vertical,
		}, {
			Pane = Roact.createElement(Pane, {
				Size = UDim2.new(1, -10, 1, 0),
				Layout = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = props.LayoutOrder,
			}, sections)
		})
	})
end

PropertyListView = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(PropertyListView)

return PropertyListView
