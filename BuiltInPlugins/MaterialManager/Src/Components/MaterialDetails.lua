local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame
local Separator = UI.Separator

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)

local MaterialDetailsComponents = Plugin.Src.Components.MaterialDetails
local MaterialHeader = require(MaterialDetailsComponents.MaterialHeader)
local MaterialInformation = require(MaterialDetailsComponents.MaterialInformation)
local MaterialOptions = require(MaterialDetailsComponents.MaterialOptions)

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)

local MaterialDetails = Roact.PureComponent:extend("MaterialDetails")

export type Props = {
	LayoutOrder : number?,
	MaterialMock : _Types.Material?,
	OpenPrompt : (type : _Types.MaterialPromptType) -> (),
	Size : UDim2?,
}

type _Props = Props & {
	Analytics : any,
	dispatchClearMaterial : () -> (),
	Localization : any,
	Material : _Types.Material?,
	MaterialController : any,
	Stylizer : any,
}

function MaterialDetails:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end
end

function MaterialDetails:didMount()
	local props : _Props = self.props

	if props.Material then
		self.connection = props.Material.MaterialVariant.Destroying:Connect(function(_, materialVariant)
			if materialVariant == self.props.Material.MaterialVariant then
				props.dispatchClearMaterial()
			end
		end)
	end
end

function MaterialDetails:render()
	local props : _Props = self.props

	local layoutOrder = props.LayoutOrder
	local size = props.Size

	if not props.Material then
		return Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
			Size = size,
		})
	end

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(ScrollingFrame, {
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = layoutOrder,
		Size = size,
	}, {
		Pane = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			MaterialHeader = Roact.createElement(MaterialHeader, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),
			MaterialOptions = Roact.createElement(MaterialOptions, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				OpenPrompt = props.OpenPrompt,
			}),
			MaterialOptionsSeparator = Roact.createElement(Separator, {
				DominantAxis = Enum.DominantAxis.Width,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),
			MaterialInformation = Roact.createElement(MaterialInformation, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),
		})
	})
end

MaterialDetails = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialDetails)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterial = function()
				dispatch(ClearMaterial())
			end,
		}
	end
)(MaterialDetails)
