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
local Constants = require(Plugin.Src.Resources.Constants)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local AddChange = require(Plugin.Src.Actions.AddChange)

local ELEMENT_PADDING = 15

return function(loadValuesToProps, dispatchForProps)

	local function Page(props)
		return Localizing.withLocalization(function(localization)
			local children = props.Content and props.Content(props, localization) or {}
			local layoutOrder = props.LayoutOrder
			local addLayout = props.AddLayout
			local contentHeightChanged = props.ContentHeightChanged

			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0, 0),
				Size = UDim2.new(1, -Constants.MENU_BAR_WIDTH, 1, -Constants.FOOTER_HEIGHT),
				LayoutOrder = layoutOrder,
			}, Cryo.Dictionary.join(children, {
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
				})
			}))
		end)
	end

	local function mapStateToProps(state, props)
		if not state or not loadValuesToProps then
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
