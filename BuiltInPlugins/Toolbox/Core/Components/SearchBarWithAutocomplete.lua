--[[
	This component uses the Developer Framework SearchBar to implement autocomplete.

	Optional Props:
		number Width: how wide the search bar is in pixels.
		number LayoutOrder: The layout order of this component in a list.
		callback OnSearchRequested: callback for when the user presses the enter key
			or clicks the search button. This will also be called with an empty string
			when the user clicks "Clear". - OnSearchRequested(searchTerm: string)
		callback OnTextChanged: callback for when the text was changed - OnTextChanged(text: string)
]]
local FIntToolboxAutocompleteDropdownSize = game:GetFastInt("ToolboxAutocompleteDropdownSize")
local FFlagToolboxAddVerifiedCreatorToAnalytics = game:GetFastFlag("ToolboxAddVerifiedCreatorToAnalytics")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local Category = require(Plugin.Core.Types.Category)

local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)

local getNetwork = ContextGetter.getNetwork

local GetAutocompleteResultsRequest = require(Plugin.Core.Networking.Requests.GetAutocompleteResultsRequest)
local LogMarketplaceSearchAnalytics = require(Plugin.Core.Thunks.LogMarketplaceSearchAnalytics)
local LogMarketplaceAutocompleteSearchAnalytics = require(Plugin.Core.Thunks.LogMarketplaceAutocompleteSearchAnalytics)

local DropdownMenu = require(Packages.Framework).UI.DropdownMenu
local DropdownMenuItem = require(Plugin.Core.Components.DropdownMenuItem)
local SearchBar = require(Packages.Framework).StudioUI.SearchBar
local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local DROPDOWN_ITEM_HEIGHT = 32
local AUTOCOMPLETE_WAIT_TIME = 0.12 -- waittime (in seconds) before firing autocomplete API request

local RunService = game:GetService("RunService")

local SearchBarWithAutocomplete = Roact.PureComponent:extend("SearchBarWithAutocomplete")

function SearchBarWithAutocomplete:init()
	self.state = {
		showAutocompleteResults = false,
		displayedSearchTerm = "",
		lastSearchTerm = "",
	}
	self.isUserInputting = false
	self.autocompleteTimer = 0
	self.keyCount = 0
	self.deleteCount = 0

	self.onInputBegan = function()
		self.isUserInputting = true
	end

	self.onInputEnded = function()
		self.isUserInputting = false
	end

	self.onSearchTextChanged = function(searchTerm)
		if string.len(searchTerm) > string.len(self.state.displayedSearchTerm) then
			self.keyCount += 1
		elseif string.len(searchTerm) < string.len(self.state.displayedSearchTerm) then
			self.deleteCount += 1
		end
		self:setState({
			showAutocompleteResults = string.len(searchTerm) > 0,
			displayedSearchTerm = searchTerm,
		})
	end

	self.onAutocompleteRenderItem = function(item, index, activated)
		return Roact.createElement(DropdownMenuItem, {
			FocusedText = self.state.displayedSearchTerm,
			HideSeparator = index == #self.props.autocompleteResults,
			LayoutOrder = index,
			OnClick = activated,
			Size = UDim2.new(1, 0, 0, DROPDOWN_ITEM_HEIGHT),
			Text = item,
		})
	end

	self.onItemActivated = function(item, index)
		self.props.OnSearchRequested(item)
		if FFlagToolboxAddVerifiedCreatorToAnalytics then
			self.props.logAutocompleteSearchAnalytics(
				item,
				Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName],
				self.state.displayedSearchTerm,
				self.keyCount,
				self.deleteCount,
				true
			)
		else
			self.props.logSearchAnalytics(
				item,
				Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName],
				self.state.displayedSearchTerm,
				self.keyCount,
				self.deleteCount,
				true
			)
		end

		self.keyCount = 0
		self.deleteCount = 0

		self:setState({ displayedSearchTerm = item })
	end

	self.onSearchRequested = function(searchTerm)
		self.props.OnSearchRequested(searchTerm)

		if FFlagToolboxAddVerifiedCreatorToAnalytics then
			self.props.logAutocompleteSearchAnalytics(
				searchTerm,
				Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName],
				nil,
				self.keyCount,
				self.deleteCount,
				true
			)
		else
			self.props.logSearchAnalytics(
				searchTerm,
				Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName],
				nil,
				self.keyCount,
				self.deleteCount,
				true
			)
		end

		self.keyCount = 0
		self.deleteCount = 0

		self:setState({ showAutocompleteResults = false })
	end

	self.closeAutocomplete = function()
		self:setState({
			showAutocompleteResults = false,
		})
	end
end

function SearchBarWithAutocomplete:didMount()
	if ToolboxUtilities.getShouldDisableAutocomplete() then
		-- Do not watch the search bar or fetch autocomplete results if the policy disables autocomplete
		return
	end

	local networkInterface = getNetwork(self)
	self.runServiceConnection = RunService.RenderStepped:Connect(function(step)
		local displayedSearchTerm = self.state.displayedSearchTerm

		-- wait before querying autocomplete endpoint after user input
		if self.state.showAutocompleteResults and self.state.lastSearchTerm ~= displayedSearchTerm then
			self.autocompleteTimer = self.autocompleteTimer + step
			if self.isUserInputting then
				self.autocompleteTimer = 0
			end
			if self.autocompleteTimer > AUTOCOMPLETE_WAIT_TIME and displayedSearchTerm ~= "" then
				local categoryName = Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName]
				self.props.getAutocompleteResults(
					networkInterface,
					categoryName,
					displayedSearchTerm,
					FIntToolboxAutocompleteDropdownSize
				)
				self.autocompleteTimer = 0
				self:setState({ lastSearchTerm = displayedSearchTerm })
			end
		end

		-- reset autocomplete items to empty when search is cleared
		if displayedSearchTerm == "" and self.state.lastSearchTerm ~= "" then
			local categoryName = Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName]
			self.props.getAutocompleteResults(
				networkInterface,
				categoryName,
				displayedSearchTerm,
				FIntToolboxAutocompleteDropdownSize
			)
			self.autocompleteTimer = 0
			self:setState({ lastSearchTerm = displayedSearchTerm })
		end
	end)
end

function SearchBarWithAutocomplete:willUnmount()
	if self.runServiceConnection then
		self.runServiceConnection:Disconnect()
		self.runServiceConnection = nil
	end
end

function SearchBarWithAutocomplete:didUpdate(prevProps, prevState)
	-- for search filtering functionality
	if prevProps.searchTerm ~= self.props.searchTerm then
		self:setState({
			displayedSearchTerm = self.props.searchTerm,
			lastSearchTerm = self.props.searchTerm,
		})
	end
end

function SearchBarWithAutocomplete:render()
	local props = self.props
	local displayedSearchTerm = self.state.displayedSearchTerm

	local searchBarProps = {
		LayoutOrder = props.LayoutOrder,
		OnInputBegan = self.onInputBegan,
		OnInputEnded = self.onInputEnded,
		OnSearchRequested = self.onSearchRequested,
		OnTextChanged = self.onSearchTextChanged,
		PlaceholderText = props.Localization:getText("General", "SearchBarDefaultText"),
		SearchTerm = displayedSearchTerm,
		Style = "ToolboxSearchBar",
		Width = props.Width,
	}

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		Size = UDim2.new(0, props.Width, 1, 0),
	}, {
		SearchBar = Roact.createElement(SearchBar, searchBarProps),

		AutocompleteDropdown = Roact.createElement(DropdownMenu, {
			Hide = not self.state.showAutocompleteResults or #props.autocompleteResults == 0,
			Items = props.autocompleteResults,
			OnFocusLost = self.closeAutocomplete,
			OnItemActivated = self.onItemActivated,
			OnRenderItem = self.onAutocompleteRenderItem,
			Priority = 2,
			Style = "ToolboxSearchBarDropdown",
			Width = props.Width,
		}),
	})
end

SearchBarWithAutocomplete = withContext({
	Localization = ContextServices.Localization,
})(SearchBarWithAutocomplete)

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		autocompleteResults = state.autocompleteResults and state.autocompleteResults["autocompleteResults"] or {},
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,
		searchTerm = pageInfo.searchTerm or "",
		searchId = pageInfo.searchId or "",
	}
end

local function mapDispatchToProps(dispatch)
	return {
		logAutocompleteSearchAnalytics = if FFlagToolboxAddVerifiedCreatorToAnalytics
			then function(keyword, assetType, prefix, keyCount, delCount, autocompleteShown)
				dispatch(
					LogMarketplaceAutocompleteSearchAnalytics(
						keyword,
						assetType,
						prefix,
						keyCount,
						delCount,
						autocompleteShown,
						false
					)
				)
			end
			else nil,

		logSearchAnalytics = if FFlagToolboxAddVerifiedCreatorToAnalytics
			then nil
			else function(keyword, assetType, prefix, keyCount, delCount, autocompleteShown)
				dispatch(
					LogMarketplaceSearchAnalytics(
						keyword,
						assetType,
						prefix,
						keyCount,
						delCount,
						autocompleteShown,
						false
					)
				)
			end,

		getAutocompleteResults = function(networkInterface, categoryName, searchTerm, numberOfResults)
			dispatch(GetAutocompleteResultsRequest(networkInterface, categoryName, searchTerm, numberOfResults))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SearchBarWithAutocomplete)
