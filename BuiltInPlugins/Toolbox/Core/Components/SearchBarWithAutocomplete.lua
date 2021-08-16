--[[
    This component uses the Developer Framework SearchBar to implement autocomplete.

    Optional Props:
        number Width: how wide the search bar is in pixels.
        number LayoutOrder: The layout order of this component in a list.
        callback OnSearchRequested: callback for when the user presses the enter key
            or clicks the search button. This will also be called with an empty string
            when the user clicks "Clear". - OnSearchRequested(searchTerm: string)
        callback OnTextChanged: callback for when the text was changed - OnTextChanged(text: string)
        string PlaceholderText: Placeholder text to show when there is no search term entered.
]]
local FIntToolboxAutocompleteDropdownSize = game:GetFastInt("ToolboxAutocompleteDropdownSize")
local FFlagToolboxUseDeveloperFrameworkSearchBar = game:GetFastFlag("ToolboxUseDeveloperFrameworkSearchBar")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

local GetAutocompleteResultsRequest = require(Plugin.Core.Networking.Requests.GetAutocompleteResultsRequest)

local DropdownMenu = require(Libs.Framework).UI.DropdownMenu
local DropdownMenuItem = require(Plugin.Core.Components.DropdownMenuItem)
local SearchBar
if FFlagToolboxUseDeveloperFrameworkSearchBar then
    SearchBar = require(Libs.Framework).StudioUI.SearchBar
else
    SearchBar = require(Plugin.Core.Components.SearchBar.SearchBar)
end

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

    self.onInputBegan = function()
        self.isUserInputting = true
    end

    self.onInputEnded = function()
        self.isUserInputting = false
    end

    self.onSearchTextChanged = function(searchTerm)
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
        self:setState({displayedSearchTerm = item})
    end

    self.onSearchRequested = function(searchTerm)
        self.props.OnSearchRequested(searchTerm)
        self:setState({showAutocompleteResults = false})
    end

    self.closeAutocomplete = function()
        self:setState({
            showAutocompleteResults = false,
        })
    end
end

function SearchBarWithAutocomplete:didMount()
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
                self.props.getAutocompleteResults(networkInterface, categoryName, displayedSearchTerm, FIntToolboxAutocompleteDropdownSize)
                self.autocompleteTimer = 0
                self:setState({lastSearchTerm = displayedSearchTerm})
            end
        end

        -- reset autocomplete items to empty when search is cleared
        if displayedSearchTerm == "" and self.state.lastSearchTerm ~= "" then
            local categoryName = Category.AUTOCOMPLETE_API_NAMES[self.props.categoryName]
            self.props.getAutocompleteResults(networkInterface, categoryName, displayedSearchTerm, FIntToolboxAutocompleteDropdownSize)
            self.autocompleteTimer = 0
            self:setState({lastSearchTerm = displayedSearchTerm})
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
        self:setState({displayedSearchTerm = self.props.searchTerm})
    end
end

function SearchBarWithAutocomplete:render()
    local props = self.props
    local displayedSearchTerm = self.state.displayedSearchTerm

    local searchBarProps
    if FFlagToolboxUseDeveloperFrameworkSearchBar then
        searchBarProps = {
            LayoutOrder = props.LayoutOrder,
            OnInputBegan = self.onInputBegan,
            OnInputEnded = self.onInputEnded,
            OnSearchRequested = self.onSearchRequested,
            OnTextChanged = self.onSearchTextChanged,
            SearchTerm = displayedSearchTerm,
            Style = "ToolboxSearchBar",
            Width = props.Width,
        }
    else
        searchBarProps = {
            LayoutOrder = props.LayoutOrder,
            onSearchRequested = self.onSearchRequested,
            showSearchButton = props.showSearchButton,
            searchTerm = displayedSearchTerm,
            width = props.width,
        }
    end

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
            Style = "ToolboxSearchBarDropdown",
            Width = props.Width,
        }),
    })
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		autocompleteResults = state.autocompleteResults and state.autocompleteResults["autocompleteResults"] or {},
        categoryName = pageInfo.categoryName or Category.DEFAULT.name,
        searchTerm = pageInfo.searchTerm or "",
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getAutocompleteResults = function(networkInterface, categoryName, searchTerm, numberOfResults)
			dispatch(GetAutocompleteResultsRequest(networkInterface, categoryName, searchTerm, numberOfResults))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SearchBarWithAutocomplete)
