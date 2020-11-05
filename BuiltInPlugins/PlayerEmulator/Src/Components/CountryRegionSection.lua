--[[
	Country Region Selector
	Contains a text label and a dropdown selector

	Props:
		int LayoutOrder
			layout order of UIListLayout in Mainview
		boolean mainSwitchEnabled
			if emulation is enabled
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
			send HTTP request for all country region information,
			then init country region setting
		function onEmulatedCountryRegionChanged
			on changing selected country region
]]
local FFlagPlayerEmulatorSerializeIntoDM = game:GetFastFlag("PlayerEmulatorSerializeIntoDM")

local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)

local DropdownModule = require(Plugin.Src.Components.DropdownModule)
local GetCountryRegion = require(Plugin.Src.Networking.Requests.GetCountryRegion)
local Constants = require(Plugin.Src.Util.Constants)
local OnEmulatedCountryRegionChanged = require(Plugin.Src.Actions.OnEmulatedCountryRegionChanged)

local CountryRegionSection = Roact.PureComponent:extend("CountryRegionSection")


local function GetEmulatedCountryRegionCode()
	if FFlagPlayerEmulatorSerializeIntoDM then
		return PlayerEmulatorService.EmulatedCountryCode
	else
		return PlayerEmulatorService.StudioEmulatedCountryRegionCode
	end
end

local function SetEmulatedCountryRegionCode(code)
	if FFlagPlayerEmulatorSerializeIntoDM then
		PlayerEmulatorService.EmulatedCountryCode = code
	else
		PlayerEmulatorService.StudioEmulatedCountryRegionCode = code
	end
end

function CountryRegionSection:getCurrentCountryRegionText(userCountryRegionCode)
	local countryRegionTable = self.props.countryRegionTable

	if countryRegionTable and countryRegionTable[userCountryRegionCode] then
		return countryRegionTable[userCountryRegionCode].displayText
	end

	return ""
end

function CountryRegionSection:updateCountryRegionSetting(code)
	if not FFlagPlayerEmulatorSerializeIntoDM then
		local plugin = self.props.Plugin:get()
		if plugin:GetSetting(Constants.COUNTRY_REGION_SETTING_KEY) ~= code then
			plugin:SetSetting(Constants.COUNTRY_REGION_SETTING_KEY, code)
		end
	end

	local onEmulatedCountryRegionChanged = self.props.onEmulatedCountryRegionChanged
	onEmulatedCountryRegionChanged(code)
end

function CountryRegionSection:init()
	self.signalTokens = {}
end

function CountryRegionSection:didMount()
	local plugin = self.props.Plugin:get()
	local networkingImpl = self.props.Networking:get()

	local countryRegionChangedSignal
	if FFlagPlayerEmulatorSerializeIntoDM then
		countryRegionChangedSignal = PlayerEmulatorService:GetPropertyChangedSignal(
			"EmulatedCountryCode"):Connect(function()
				self:updateCountryRegionSetting(GetEmulatedCountryRegionCode())
			end)
	else
		countryRegionChangedSignal = PlayerEmulatorService:GetPropertyChangedSignal(
			"StudioEmulatedCountryRegionCode"):Connect(function()
				self:updateCountryRegionSetting(GetEmulatedCountryRegionCode())
			end)
	end
	table.insert(self.signalTokens, countryRegionChangedSignal)

	if FFlagPlayerEmulatorSerializeIntoDM then
		self.props.loadCountryRegion(networkingImpl)
	else
		self.props.loadCountryRegion(networkingImpl, plugin)
	end
end

function CountryRegionSection:willUnmount()
	for _, signal in pairs(self.signalTokens) do
		signal:Disconnect()
	end
	self.signalTokens = nil
end

function CountryRegionSection:render()
	local props = self.props
	local mainSwitchEnabled = props.mainSwitchEnabled
	local countryRegionList = props.countryRegionList
	local userCountryRegionCode = props.userCountryRegionCode

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
			TextColor3 = mainSwitchEnabled and theme.TextColor or theme.DisabledColor,
			Size = theme.SECTION_LABEL_SIZE,
			Text = localization:getText("CountryRegionSection", "LabelText"),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),

		Dropdown = Roact.createElement(DropdownModule, {
			LayoutOrder = 2,
			Enabled = mainSwitchEnabled,
			CurrentSelected = self:getCurrentCountryRegionText(userCountryRegionCode),
			Items = countryRegionList,
			OnItemClicked = function(item)
				SetEmulatedCountryRegionCode(item.code)
			end,
		})
	})
end

ContextServices.mapToProps(CountryRegionSection, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Networking = NetworkingContext,
	Plugin = ContextServices.Plugin,
})

local function mapStateToProps(state, _)
	return {
		mainSwitchEnabled = state.MainSwitch.mainSwitchEnabled,
		countryRegionTable = state.CountryRegion.countryRegionTable,
		countryRegionList = state.CountryRegion.countryRegionList,
		userCountryRegionCode = state.CountryRegion.userCountryRegionCode
	}
end

local function mapDispatchToProps(dispatch)
	return {
		loadCountryRegion = function(networkingImpl, plugin)
			if FFlagPlayerEmulatorSerializeIntoDM then
				dispatch(GetCountryRegion(networkingImpl))
			else
				dispatch(GetCountryRegion(networkingImpl, plugin))
			end
		end,

		onEmulatedCountryRegionChanged = function(code)
			dispatch(OnEmulatedCountryRegionChanged(code))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CountryRegionSection)