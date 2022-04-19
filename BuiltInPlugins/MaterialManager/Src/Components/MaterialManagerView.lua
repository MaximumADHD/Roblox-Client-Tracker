local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local Flags = Plugin.Src.Flags
local getFFlagDevFrameworkSplitPane = require(Flags.getFFlagDevFrameworkSplitPane)

local UI = Framework.UI
local Pane = UI.Pane
local SplitPane = getFFlagDevFrameworkSplitPane() and UI.SplitPane or nil

local Components = Plugin.Src.Components

local MaterialGrid = require(Components.MaterialGrid)
local SideBar = require(Components.SideBar)
local TopBar = require(Components.TopBar)
local MaterialDetails = require(Components.MaterialDetails)

export type Props = {
	OpenPrompt : (type : _Types.MaterialPromptType) -> ()
}

type _Props = Props & {
	Material : _Types.Material,
	Stylizer : any,
}

type _Style = {
	SideBarSize : UDim2,
	TopBarSize : UDim2,
	MainViewSize : UDim2,
	MaterialViewSize : UDim2,
	MaterialGridSize : UDim2,
	MaterialDetailsSize : UDim2,
}

local FFlagDevFrameworkSplitPane = getFFlagDevFrameworkSplitPane()

local MaterialManagerView = Roact.PureComponent:extend("MaterialManagerView")

function MaterialManagerView:init()
	self.state = {
		sizes = {UDim.new(0, 300), UDim.new(1, -300)},
	}
end

function MaterialManagerView:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialManagerView

	local material : _Types.Material = props.Material
	local content = {}

	if FFlagDevFrameworkSplitPane then
		content = {
			TopBar = Roact.createElement(TopBar, {
				OpenPrompt = props.OpenPrompt,
				Size = style.TopBarSize,
				BackgroundColor = Color3.new(255, 0, 0),
			}),
			Pane = Roact.createElement(SplitPane, {
				ClampSize = true,
				Sizes = self.state.sizes,
				Layout = Enum.FillDirection.Horizontal,
				MinSizes = {UDim.new(0, 0), UDim.new(0.5, 0)},
				OnSizesChange = function(sizes)
					self:setState({
						sizes = sizes,
					})
				end,
				Size = style.MainViewSize,
				UseScale = true,
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
					MaterialGrid = Roact.createElement(MaterialGrid, {
						LayoutOrder = 1,
						Size = if material then style.MaterialGridSize else UDim2.fromScale(1, 1),
					}),
					MaterialDetails = if material then
						Roact.createElement(MaterialDetails, {
							LayoutOrder = 2,
							OpenPrompt = props.OpenPrompt,
							Size = style.MaterialDetailsSize,
						})
						else nil,
				})
			})
		}
	else
		content = {
			TopBar = Roact.createElement(TopBar, {
				OpenPrompt = props.OpenPrompt,
				Size = style.TopBarSize,
				BackgroundColor = Color3.new(255, 0, 0),
			}),
			Pane = Roact.createElement(Pane, {
				Style = "Box",
				Layout = Enum.FillDirection.Horizontal,
				Size = style.MainViewSize,
			}, {
				SideBar = Roact.createElement(SideBar, {
					LayoutOrder = 1,
					Size = style.SideBarSize,
				}),
				MaterialView = Roact.createElement(Pane, {
					Size = style.MaterialViewSize,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = 2,
				}, {
					MaterialGrid = Roact.createElement(MaterialGrid, {
						LayoutOrder = if material then 1 else 2,
						Size = if material then style.MaterialGridSize else UDim2.fromScale(1, 1),
					}),
					MaterialDetails = if material then
						Roact.createElement(MaterialDetails, {
							LayoutOrder = 1,
							OpenPrompt = props.OpenPrompt,
							Size = style.MaterialDetailsSize,
						})
						else nil,
				})
			}),
		}
	end

	return Roact.createElement(Pane, {
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor = Color3.new(0, 255, 0),
	}, content)
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
)(MaterialManagerView)
