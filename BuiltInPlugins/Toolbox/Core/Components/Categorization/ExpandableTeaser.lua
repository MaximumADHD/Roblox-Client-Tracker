--!strict
--[[
	A generic expandable component that has show more/less
	button, title, and can show part of the content.
]]
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local SectionHeader = require(Plugin.Core.Components.Categorization.SectionHeader)

local Dash = Framework.Dash
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Pane = Framework.UI.Pane

local ContextServices = Framework.ContextServices
local HoverArea = Framework.UI.HoverArea

local withContext = ContextServices.withContext

local TEXT_SIZE = 18
local SECTION_SPACING = 5

type _ExternalProps = {
	AlwaysExpanded: boolean?,
	AutomaticSize: Enum.AutomaticSize?,
	Layout: Enum.FillDirection?,
	LayoutOrder: number?,
	OnExpandChanged: ((isExpanded: boolean) -> ())?,
	Size: UDim?,
	TeaserSize: Vector2,
	Title: string,
}

type _InternalProps = {
	Localization: any,
	Stylizer: any,
}

type ExpandableTeaserState = {
	contentSize: Vector2,
	isExpanded: boolean,
}

export type ExpandableTeaserProps = _ExternalProps & _InternalProps

local ExpandableTeaser = Roact.PureComponent:extend("ExpandableTeaser")

ExpandableTeaser.defaultProps = {
	AlwaysExpanded = false,
	AutomaticSize = Enum.AutomaticSize.Y,
	Layout = Enum.FillDirection.Vertical,
	Size = UDim2.new(1, 0, 0, 0),
	TeaserSize = Vector2.new(0, 0),
}

function ExpandableTeaser:init()
	self.contentRef = Roact.createRef()

	self.state = {
		contentSize = Vector2.new(0, 0),
		isExpanded = false,
	}

	self.toggleContent = function()
		self:setState(function(prevState: ExpandableTeaserState)
			local onExpandChanged = self.props.OnExpandChanged
			local newValue = not prevState.isExpanded
			if onExpandChanged then
				onExpandChanged(newValue)
			end
			return {
				isExpanded = newValue,
			}
		end)
	end

	self.onContentSizeChange = function()
		self:setState(function(prevState: ExpandableTeaserState)
			local contentRefCurrent = self.contentRef.current
			if not contentRefCurrent then
				return
			end

			return {
				contentSize = contentRefCurrent.AbsoluteSize,
			}
		end)
	end
end

function ExpandableTeaser:render()
	local props: ExpandableTeaserProps = self.props
	local state: ExpandableTeaserState = self.state

	local automaticSize = props.AutomaticSize
	local layout = props.Layout
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local size = props.Size
	local theme = props.Stylizer
	local teaserSize = props.TeaserSize
	local title = props.Title

	local contentSize = state.contentSize

	local searchPillTheme = theme.searchPill

	local expandedText = localization:getText("General", "ShowLess")
	local notExpandedText = localization:getText("General", "ShowMore")

	local orderIterator = LayoutOrderIterator.new()

	local contentAutomaticSize
	local expandText
	local contentSizeToUse
	if state.isExpanded then
		contentAutomaticSize = automaticSize
		expandText = expandedText .. " -"
		contentSizeToUse = contentSize
	else
		expandText = notExpandedText .. " +"
		contentSizeToUse = teaserSize
	end

	local visibleContentSize
	if automaticSize == Enum.AutomaticSize.Y then
		visibleContentSize = UDim2.new(1, 0, 0, contentSizeToUse.Y)
	else
		visibleContentSize = UDim2.new(0, contentSizeToUse.X, 1, 0)
	end

	return Roact.createElement(Pane, {
		AutomaticSize = automaticSize,
		Layout = layout,
		LayoutOrder = layoutOrder,
		Size = size,
		Spacing = SECTION_SPACING,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		SectionHeader = Roact.createElement(SectionHeader, {
			OnClickSeeAll = self.toggleContent,
			LayoutOrder = orderIterator:getNextOrder(),
			SeeAllText = expandText,
			Title = title,
		}),

		Content = Roact.createElement(Pane, {
			AutomaticSize = contentAutomaticSize,
			ClipsDescendants = true,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = orderIterator:getNextOrder(),
			Size = visibleContentSize,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			[Roact.Change.AbsoluteSize] = self.onContentSizeChange,
			[Roact.Ref] = self.contentRef,
		}, self.props[Roact.Children]),
	})
end

ExpandableTeaser = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(ExpandableTeaser)

return ExpandableTeaser
