--!strict
local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Layouter = require(Plugin.Core.Util.Layouter)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local CategorizationFolder = Plugin.Core.Components.Categorization
local SectionHeader = require(CategorizationFolder.SectionHeader)
local HorizontalList = require(CategorizationFolder.HorizontalList)

type HoverState = {
	hoveredAssetId: number,
	onAssetHovered: ((assetId: number) -> any),
	onAssetHoverEnded: (() -> any),
}

export type SwimlaneProps = HorizontalList.HorizontalListProps & {
	AutomaticSize: Enum.AutomaticSize?,
	ShowTotal: boolean?,
	LayoutOrder: number?,
	OnClickSeeAll: (() -> ()),
	Size: UDim2?,
	Title: string,
	Total: number?,
	Localization: any,
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

	local displayCount = self.state.DisplayCount

	return Roact.createElement("Frame", {
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = size,
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

		SectionContents = Roact.createElement(
			"Frame",
			{
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 0),
			},
			Roact.createElement(HorizontalList, {
				Data = data,
				DisplayCount = displayCount,
				OnRenderItem = onRenderItem,
			})
		),
	})
end

Swimlane = withContext({
	Localization = ContextServices.Localization,
})(Swimlane)

return Swimlane
