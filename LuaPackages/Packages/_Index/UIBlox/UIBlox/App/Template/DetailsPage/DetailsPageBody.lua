local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local withStyle = require(UIBlox.Core.Style.withStyle)

local Constants = require(DetailsPage.Constants)
local ContentPositionEnum = require(DetailsPage.Enum.ContentPosition)
local validateDetailsPageComponentList = require(DetailsPage.validateDetailsPageComponentList)

local DetailsPageTitleContent = require(DetailsPage.DetailsPageTitleContent)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local DetailsPageBody = Roact.PureComponent:extend("DetailsPageBody")

local WIDTH_BREAKPOINT = 1280

local ITEM_PADDING = 24

local PADDING_BREAKPOINT = 1920
local PADDING_NARROW = 48
local PADDING_WIDE = 96

DetailsPageBody.defaultProps = {
	mobileMode = false,
}

DetailsPageBody.validateProps = t.strictInterface({
	-- Header for the mobile mode
	titleText = t.optional(t.string),
	subTitleText = t.optional(t.string),
	infoContentComponent = t.optional(t.table),

	componentList = t.optional(validateDetailsPageComponentList),
	mobileMode = t.optional(t.boolean),
})

function DetailsPageBody:init()
	self.onContainerSizeChange = function(rbx)
		self:setState(function(prevState, props)
			if prevState.containerWidth ~= rbx.AbsoluteSize.x then
				return {
					containerWidth = rbx.AbsoluteSize.x,
				}
			end
			return nil
		end)
	end
end

function DetailsPageBody:renderSinglePanel()
	local itemList = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, ITEM_PADDING),
		}),
	}

	for k, v in pairs(self.props.componentList) do
		itemList[k .. "Container"] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = v.portraitLayoutOrder,
		}, {
			[k] = v.component,
		})
	end

	return {
		Panel = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			ClipsDescendants = true,
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, itemList),
	}
end

function DetailsPageBody:renderDualPanel()
	local padding = self.state.containerWidth < PADDING_BREAKPOINT and PADDING_NARROW or PADDING_WIDE

	local leftItemList = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, ITEM_PADDING),
		}),
	}

	local rightItemList = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, ITEM_PADDING),
		}),
	}

	for k, v in pairs(self.props.componentList) do
		local positionList = leftItemList
		if v.landscapeLayoutOrder.position == ContentPositionEnum.Right then
			positionList = rightItemList
		end
		positionList[k .. "Container"] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = v.landscapeLayoutOrder.layoutOrder,
		}, {
			[k] = v.component,
		})
	end

	local leftPanel = Roact.createElement("Frame", {
		Size = UDim2.new(0.5, -padding / 2, 0, 0),
		ClipsDescendants = true,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = 1,
	}, leftItemList)

	local rightPanel = Roact.createElement("Frame", {
		Size = UDim2.new(0.5, -padding / 2, 0, 0),
		ClipsDescendants = true,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = 2,
	}, rightItemList)

	return {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, padding),
		}),
		LeftPanel = leftPanel,
		RightPanel = rightPanel,
	}
end

function DetailsPageBody:renderBodyContent(style)
	if self.state.containerWidth then
		if self.state.containerWidth < WIDTH_BREAKPOINT or self.mobileMode then
			return self:renderSinglePanel(style)
		else
			return self:renderDualPanel(style)
		end
	end
	return {}
end

function DetailsPageBody:render()
	local padding = self.props.mobileMode and Constants.SideMargin.Mobile or Constants.SideMargin.Desktop

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			AutomaticSize = Enum.AutomaticSize.Y,
			[Roact.Change.AbsoluteSize] = self.onContainerSizeChange,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, padding),
				PaddingRight = UDim.new(0, padding),
			}),
			TitleInfo = self.props.mobileMode and Roact.createElement(DetailsPageTitleContent, {
				titleText = self.props.titleText,
				subTitleText = self.props.subTitleText,
				infoContentComponent = self.props.infoContentComponent,
				verticalAlignment = Enum.VerticalAlignment.Top,
				layoutOrder = 1,
			} or nil),
			Padding = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, padding),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
			ContentFrame = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 3,
			}, self:renderBodyContent()),
		})
	end)
end

return DetailsPageBody
