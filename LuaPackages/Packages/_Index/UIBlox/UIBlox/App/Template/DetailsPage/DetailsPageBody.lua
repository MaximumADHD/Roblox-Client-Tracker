--!nonstrict
-- moving this file to LuaApps, please replicate any changes in the LuaApps file as well
local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local ContentPositionEnum = require(DetailsPage.Enum.ContentPosition)
local validateDetailsPageComponentList = require(DetailsPage.validateDetailsPageComponentList)

local DeviceType = require(App.Style.Constants).DeviceType
local getPlatformConfig = require(DetailsPage.getPlatformConfig)
local DetailsPageTitleContent = require(DetailsPage.DetailsPageTitleContent)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local DetailsPageBody = Roact.PureComponent:extend("DetailsPageBody")

local DUAL_PANEL_BREAKPOINT = 1280

local ITEM_PADDING = 24

local PADDING_BREAKPOINT = 1920
local PADDING_NARROW = 48
local PADDING_WIDE = 96

DetailsPageBody.validateProps = t.strictInterface({
	-- Header for the mobile mode
	titleText = t.optional(t.string),
	subTitleText = t.optional(t.string),
	renderInfoContent = t.optional(t.callback),

	componentList = t.optional(
		if UIBloxConfig.moveDetailsPageToLuaApps then t.table else validateDetailsPageComponentList
	),
	dualPanelBreakpoint = t.optional(t.number),
	sideMargin = t.optional(t.number),
	bodyClipsDescendants = t.optional(t.boolean),

	deviceType = t.optional(t.string),
})

DetailsPageBody.defaultProps = {
	bodyClipsDescendants = true,
}

function DetailsPageBody:init()
	self.state = { containerWidth = nil }
	self.containerFrameRef = Roact.createRef()

	self.mounted = false

	self.onContainerSizeChange = function(rbx)
		if not self.mounted then
			return
		end

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
			Visible = if UIBloxConfig.addEdpComponentVisibility then v.visible else nil,
		}, {
			[k] = v.renderComponent(),
		})
	end

	return {
		Panel = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			ClipsDescendants = false,
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
		if v.landscapePosition == ContentPositionEnum.Right then
			positionList = rightItemList
		end
		positionList[k .. "Container"] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = v.landscapeLayoutOrder,
			Visible = if UIBloxConfig.addEdpComponentVisibility then v.visible else nil,
		}, {
			[k] = v.renderComponent(),
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

function DetailsPageBody:renderBodyContent()
	local dualPanelBreakpoint = self.props.dualPanelBreakpoint or DUAL_PANEL_BREAKPOINT

	if self.state.containerWidth and self.props.componentList then
		if self.state.containerWidth < dualPanelBreakpoint then
			return self:renderSinglePanel()
		else
			return self:renderDualPanel()
		end
	end
	return {}
end

function DetailsPageBody:render()
	local isPhone = self.props.deviceType == DeviceType.Phone

	local deviceConfig = getPlatformConfig(self.props.deviceType)

	local padding = if self.props.sideMargin then self.props.sideMargin else deviceConfig.sideMargin

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = self.props.bodyClipsDescendants,
		AutomaticSize = Enum.AutomaticSize.Y,
		[Roact.Ref] = self.containerFrameRef,
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
		TitleInfo = isPhone and Roact.createElement(DetailsPageTitleContent, {
			titleText = self.props.titleText,
			subTitleText = self.props.subTitleText,
			renderInfoContent = self.props.renderInfoContent,
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
		BottomPadding = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 3 * padding),
			BackgroundTransparency = 1,
			LayoutOrder = 4,
		}),
	})
end

function DetailsPageBody:didMount()
	self.mounted = true

	if self.containerFrameRef.current then
		self.onContainerSizeChange(self.containerFrameRef.current)
	end
end

function DetailsPageBody:willUnmount()
	self.mounted = false
end

return if UIBloxConfig.moveDetailsPageToLuaApps then nil else DetailsPageBody
