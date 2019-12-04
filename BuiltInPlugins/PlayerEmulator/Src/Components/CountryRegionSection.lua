--[[
	Country Region Selector
	Contains a text label and a dropdown selector

	Props:
		int LayoutOrder
			layout order of UIListLayout in Mainview
		table countryRegionTable
			{
				"country code": {
					code = "country code",
					name = "localized country name",
					displayText = "for display in dropdown"
				}
			}
		table countryRegionList
			{
				code = "country code",
				name = "localized country name",
				displayText = "for display in dropdown"
			}
		function loadCountryRegion
			send HTTP request for all country region information
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)

local DropdownModule = require(Plugin.Src.Components.DropdownModule)
local GetCountryRegion = require(Plugin.Src.Networking.Requests.GetCountryRegion)

local CountryRegionSection = Roact.PureComponent:extend("CountryRegionSection")

function CountryRegionSection:getCurrentCountryRegionText()
	local countryRegionTable = self.props.countryRegionTable
	local countryRegionCode = self.state.countryRegionCode

	if countryRegionTable and countryRegionTable[countryRegionCode] then
		return countryRegionTable[countryRegionCode].displayText
	end

	return ""
end

function CountryRegionSection:init()
	self.state = {
		countryRegionCode = "US"
	}

	self.onItemClicked = function(item)
		self:setState({
			countryRegionCode = item.code
		})
	end
end

function CountryRegionSection:didMount()
	local networkingImpl = self.props.Networking:get()
	self.props.loadCountryRegion(networkingImpl)
end

function CountryRegionSection:render()
	local props = self.props
	local countryRegionList = props.countryRegionList

	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder

	return Roact.createElement("Frame", {
		Size = theme.SELECTOR_SIZE,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = theme.HORIZONTAL_LISTLAYOUT_PADDING,
		}),

		Label = Roact.createElement("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = theme.TextColor,
			Size = theme.SECTION_LABEL_SIZE,
			Text = localization:getText("CountryRegionSection", "LabelText"),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),

		Dropdown = Roact.createElement(DropdownModule, {
			LayoutOrder = 2,
			CurrentSelected = self:getCurrentCountryRegionText(),
			Items = countryRegionList,
			OnItemClicked = self.onItemClicked,
		})
	})
end

ContextServices.mapToProps(CountryRegionSection, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Networking = NetworkingContext,
})


local function mapStateToProps(state, _)
	return {
		countryRegionTable = state.CountryRegion.countryRegionTable,
		countryRegionList = state.CountryRegion.countryRegionList,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		loadCountryRegion = function(networkingImpl)
			dispatch(GetCountryRegion(networkingImpl))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CountryRegionSection)