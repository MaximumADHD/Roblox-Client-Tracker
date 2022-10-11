--[[
	Packs common dings page features into a higher-order component.
		-Roact-Rodux connection
		-List layout

	Usage:
		local Page = createMenuPage(name, loadValuesToProps, dispatchForProps)
		name: The name of the settings page to create.
		loadValuesToProps: returns a table with prop names as keys. Loads settings values.
			A getValue(propName) function is passed, which can be used
			to easily get the value if no special logic is required.
		dispatchForProps: returns a table mapping prop names to dispatch functions.
			A setValue(propName) function is passed and can be used to
			easily set the value if no special logic is required.
			setValue returns function(value) that dispatches {propName = value}
			to the Settings store.

		Once the Page instance is created, use Roact.createElement(Page)
		Props:
			ContentHeightChanged = props.ContentHeightChanged, (Required, passed through)
			SetScrollbarEnabled = props.SetScrollbarEnabled, (Required, passed through)
			LayoutOrder = props.LayoutOrder, (Required, passed through)

			function Content = A function which accepts this component as a parameter and returns
				a table of Roact elements, created using this component's props.
			bool AddLayout = Whether or not to add a default UIListLayout to the page contents.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local AddChange = require(Plugin.Src.Actions.AddChange)

local ELEMENT_PADDING = 15

return function(loadValuesToProps, dispatchForProps)
	local Page = Roact.PureComponent:extend("Page")

	function Page:init()
		self.state = {
			StyleModifier = nil,
			showDialog = false,
		}

		self.onMouseEnter = function()
			if self.state.StyleModifier == nil then
				self:setState({
					StyleModifier = StyleModifier.Hover,
				})
			end
		end

		self.onMouseLeave = function()
			if self.state.StyleModifier == StyleModifier.Hover then
				self:setState({
					StyleModifier = Roact.None,
				})
			end
		end
	end

	function Page:didMount()
		if self.props.GetPlayerAcceptances then
			local apiImpl = self.props.API:get()
			self.props.GetPlayerAcceptances(apiImpl)
		end
	end

	function Page:render()
		local props = self.props

		local children = props.Content and props.Content(self) or {}

		local layoutOrder = props.LayoutOrder
		local addLayout = props.AddLayout
		local contentHeightChanged = props.ContentHeightChanged

		return Roact.createElement(
			"Frame",
			{
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				LayoutOrder = layoutOrder,
			},
			Cryo.Dictionary.join(children, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 20),
					PaddingRight = UDim.new(0, 20),
				}),
				Layout = addLayout and Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, ELEMENT_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Change.AbsoluteContentSize] = function(rbx)
						if contentHeightChanged then
							contentHeightChanged(rbx.AbsoluteContentSize.y)
						end
					end,
				}),
			})
		)
	end

	Page = withContext({
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
		API = ContextServices.API,
	})(Page)

	local function mapStateToProps(state, props)
		if not loadValuesToProps then
			return
		end
		local getValue = function(propName)
			if state.NewGameSettings.changed[propName] ~= nil then
				return state.NewGameSettings.changed[propName]
			else
				return state.NewGameSettings.current[propName]
			end
		end
		return loadValuesToProps(getValue, state)
	end

	local function useDispatchForProps(dispatch)
		if not dispatchForProps then
			return
		end
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end
		return dispatchForProps(setValue, dispatch)
	end

	return RoactRodux.connect(mapStateToProps, useDispatchForProps)(Page)
end
