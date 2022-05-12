local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize

local join = Framework.Dash.join

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer
local UI = Framework.UI
local Pane = UI.Pane
local SplitPane = UI.SplitPane

local Components = Plugin.Src.Components

local MaterialGrid = require(Components.MaterialGrid)
local SideBar = require(Components.SideBar)
local TopBar = require(Components.TopBar)
local MaterialDetails = require(Components.MaterialDetails)

export type Props = {
	OpenPrompt : (type : _Types.MaterialPromptType) -> ()
}

type _Props = Props & {
	AbsoluteSize : Vector2,
	Material : _Types.Material,
	Stylizer : any,
	WrapperProps : any,
}

type _Style = {
	SideBarSize : UDim2,
	TopBarSize : UDim2,
	MainViewSize : UDim2,
	MaterialViewSize : UDim2,
	MaterialGridSize : UDim2,
	MaterialDetailsSize : UDim2,
}

local MaterialManagerView = Roact.PureComponent:extend("MaterialManagerView")

function MaterialManagerView:init()
	self.state = {
		sideBarSize = UDim.new(0, 300),
	}
end

function MaterialManagerView:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialManagerView

	local material : _Types.Material = props.Material

	local sideBarSize = self.state.sideBarSize
	local canHideGrid = false
	if props.AbsoluteSize.X - self.state.sideBarSize.Offset < 300 then
		sideBarSize = UDim.new(0, props.AbsoluteSize.X - 300)
		canHideGrid = true
	end
	local sizes = {sideBarSize,UDim.new(0, props.AbsoluteSize.X - sideBarSize.Offset)}

	local showMaterialGrid = not material or not canHideGrid
	local showMaterialDetails = material

	return Roact.createElement(Pane, join({
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor = Color3.new(0, 255, 0),
	}, props.WrapperProps), {
		TopBar = Roact.createElement(TopBar, {
			OpenPrompt = props.OpenPrompt,
			Size = style.TopBarSize,
			BackgroundColor = Color3.new(255, 0, 0),
		}),
		Pane = Roact.createElement(SplitPane, {
			ClampSize = true,
			Sizes = sizes,
			Layout = Enum.FillDirection.Horizontal,
			MinSizes = {UDim.new(0, 100), UDim.new(0, 300)},
			OnSizesChange = function(sizes)
				self:setState({
					sideBarSize = sizes[1],
				})
			end,
			Size = style.MainViewSize,
			BackgroundColor3 = Color3.new(0, 0, 255),		
		}, {
			Roact.createElement(SideBar, {
				LayoutOrder = 1,
				Size = UDim2.fromScale(1, 1),
			}),
			Roact.createElement(Pane, {
				Size = UDim2.fromScale(1, 1),
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = 2,
			}, {
				MaterialGrid = if showMaterialGrid then
					Roact.createElement(MaterialGrid, {
						LayoutOrder = 1,
						Size = if showMaterialDetails then style.MaterialGridSize else UDim2.fromScale(1, 1),
					})
					else nil,
				MaterialDetails = if showMaterialDetails then
					Roact.createElement(MaterialDetails, {
						LayoutOrder = 2,
						OpenPrompt = props.OpenPrompt,
						Size = if showMaterialGrid then style.MaterialDetailsSize else UDim2.fromScale(1, 1),
					})
					else nil,
			})
		})
	})
end

MaterialManagerView = withContext({
	Stylizer = Stylizer,
})(MaterialManagerView)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = state.MaterialBrowserReducer.Material,
		}
	end
)(withAbsoluteSize(MaterialManagerView))