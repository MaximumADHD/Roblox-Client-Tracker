local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

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

local MaterialManagerView = Roact.PureComponent:extend("MaterialManagerView")

function MaterialManagerView:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialManagerView

	local material : _Types.Material = props.Material

	return Roact.createElement(Pane, {
		Style = "Box",
		Layout = Enum.FillDirection.Horizontal,
		Size = UDim2.fromScale(1, 1),
	}, {
		SideBar = Roact.createElement(SideBar, {
			LayoutOrder = 1,
			Size = style.SideBarSize,
		}),
		MainView = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 2,
			Size = style.MainViewSize,
		}, {
			TopBar = Roact.createElement(TopBar, {
				LayoutOrder = 1,
				OpenPrompt = props.OpenPrompt,
				Size = style.TopBarSize,
			}),
			MaterialView = Roact.createElement(Pane, {
				Size = style.MaterialViewSize,
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
)(MaterialManagerView)

