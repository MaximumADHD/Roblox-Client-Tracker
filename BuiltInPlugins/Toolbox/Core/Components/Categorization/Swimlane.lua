--!strict
local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Layouter = require(Plugin.Core.Util.Layouter)
local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LoadingIndicator = Framework.UI.LoadingIndicator
local CategorizationFolder = Plugin.Core.Components.Categorization
local SectionHeader = require(CategorizationFolder.SectionHeader)
local HorizontalList = require(CategorizationFolder.HorizontalList)

type HoverState = {
	hoveredAssetId: number,
	onAssetHovered: ((assetId: number) -> any),
	onAssetHoverEnded: (() -> any),
}

type _InternalProps = {
	Localization: any,
}

export type SwimlaneProps = HorizontalList.HorizontalListProps & _InternalProps & {
	AutomaticSize: Enum.AutomaticSize?,
	IsLoading: boolean,
	LayoutOrder: number?,
	OnClickSeeAll: (() -> ()),
	SwimlaneWidth: number,
	ShowTotal: boolean?,
	Size: UDim2?,
	Title: string,
	Total: number?,
	Localization: any,
	ZIndex: number?,
}

local SPACING = 10
local DEFAULT_DISPLAY_COUNT = 20

local Swimlane = Roact.PureComponent:extend("Swimlane")

Swimlane.defaultProps = {
	AutomaticSize = Enum.AutomaticSize.Y,
	Size = UDim2.new(1, 0, 0, 0),
	ShowTotal = false,
}

function Swimlane:init()
	self.ref = Roact.createRef()
	self.state = {
		DisplayCount = DEFAULT_DISPLAY_COUNT,
	}

	self.onAbsoluteSizeChange = function(rbx)
		self:setState({
			DisplayCount = Layouter.getAssetsPerRow(rbx.AbsoluteSize.X),
		})
	end
end

function Swimlane:didMount()
	if self.ref.current then
		self.onAbsoluteSizeChange(self.ref.current)
	end
end

function Swimlane:render()
	local props: SwimlaneProps = self.props
	local data = props.Data

	local automaticSize = props.AutomaticSize
	local showTotal = props.ShowTotal
	local layoutOrder = props.LayoutOrder
	local size = props.Size
	local title = props.Title
	local total = props.Total
	local onClickSeeAll = props.OnClickSeeAll
	local onRenderItem = props.OnRenderItem
	local localization = props.Localization
	local zIndex = props.ZIndex
	local isLoading = props.IsLoading

	local displayCount = self.state.DisplayCount

	local content
	if isLoading then
		content = Roact.createElement("Frame", {
			BackgroundColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 0.8,
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, 100),
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			Loading = Roact.createElement(LoadingIndicator, {
				Size = UDim2.new(0, 90, 0, 30),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})
	else
		content = Roact.createElement(
			"Frame",
			{
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 0),
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 0),
			},
			Roact.createElement(HorizontalList, {
				Data = data,
				DisplayCount = displayCount,
				OnRenderItem = onRenderItem,
			})
		)
	end

	return Roact.createElement("Frame", {
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = size,
		ZIndex = zIndex,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
		[Roact.Ref] = self.ref,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, SPACING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Header = Roact.createElement(SectionHeader, {
			LayoutOrder = 1,
			OnClickSeeAll = onClickSeeAll,
			SeeAllText = if total and showTotal
				then localization:getText("HomeView", "Results", { total = tostring(total) })
				else nil,
			Title = title,
			Total = total,
		}),

		SectionContents = content,
	})
end

Swimlane = withContext({
	Localization = ContextServices.Localization,
})(Swimlane)

return Swimlane
