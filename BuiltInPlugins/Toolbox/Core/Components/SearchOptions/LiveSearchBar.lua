--[[
	Live Search Bar Component

	Implements a search bar component that live searches items.
	As the user types, this search bar can send out network requests, and update
	when the result of the request is passed into props.results.

	Props:
		int width = how wide the search bar is
		int LayoutOrder = 0
		table results = The results of the live search.
			{{Name = "myName", Thumbnail = "rbxassetid://####", Id = "####"}, ...}
		string defaultTextKey = The localization key to use for the default text in the search bar.
		string searchTerm = The previous search term that was used to initialize the last live search.

		function updateSearch(searchTerm) = A callback requesting an update to the live search.
			This will only happen if a new search is needed, but does not throttle. Throttling
			logic should be handled outside of this component.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization

local SearchBar = require(Plugin.Core.Components.SearchBar.SearchBar)
local LiveSearchDropdown = require(Plugin.Core.Components.SearchOptions.LiveSearchDropdown)

local FFlagToolboxFixCreatorSearchResults = game:GetFastFlag("ToolboxFixCreatorSearchResults")

local LiveSearchBar = Roact.PureComponent:extend("LiveSearchBar")

local DROPDOWN_OFFSET = 26

function LiveSearchBar:init(initialProps)
	self.state = {
		currentText = initialProps.searchTerm or "",
		showDropdown = false,
		extraDetails = FFlagToolboxFixCreatorSearchResults and {} or nil,
	}

	self.frameRef = Roact.createRef()

	self.onTextChanged = function(text, extraDetails)
		if text ~= self.state.currentText then
			if FFlagToolboxFixCreatorSearchResults then
				self:setState({
					currentText = text,
					showDropdown = true,
					extraDetails = extraDetails or Roact.None,
				})

				self.props.updateSearch(text, self.state.extraDetails)
			else
				self.props.updateSearch(text)
				self:setState({
					currentText = text,
					showDropdown = true,
				})
			end
		end
	end

	self.onDropdownClicked = function(item)
		local text = item.Name
		self.onTextChanged(text, item)
		self:setState({
			extraDetails = item,
		})
	end

	self.onDeleteTag = function()
		self:setState({
			currentText = "",
		})
	end

	self.closeDropdown = function()
		self:setState({
			showDropdown = false,
		})
	end
end

--[[
	Update is called here because search may not be completed before another search
	should begin. This component is guaranteed to update when a search completes,
	which is when we should immediately check if another search is required to
	keep this component in sync with the results.
]]
function LiveSearchBar:didUpdate()
	local currentText = self.state.currentText

	if self.props.searchTerm ~= currentText then
		if FFlagToolboxFixCreatorSearchResults then
			self.props.updateSearch(currentText, self.state.extraDetails)
		else
			self.props.updateSearch(currentText)
		end
	end
end

function LiveSearchBar:render()
	return withLocalization(function(localization, localizedContent)
		local width = self.props.width
		local searchTerm = self.props.searchTerm
		local layoutOrder = self.props.LayoutOrder
		local currentText = self.state.currentText
		local showDropdown = self.state.showDropdown
		local results = self.props.results
		local defaultTextKey = self.props.defaultTextKey

		local frame = self.frameRef and self.frameRef.current
		local position
		if frame then
			position = UDim2.new(0, frame.AbsolutePosition.X, 0, frame.AbsolutePosition.Y + DROPDOWN_OFFSET)
		else
			position = UDim2.new()
		end

		local shouldShowDropdown = showDropdown and searchTerm == currentText and #currentText >= 3

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, 25),

			[Roact.Ref] = self.frameRef,
		}, {
			SearchBar = Roact.createElement(SearchBar, {
				width = width,
				onTextChanged = self.onTextChanged,
				onSearchRequested = self.onTextChanged,
				defaultTextKey = defaultTextKey,
				searchTerm = currentText,
				onDeleteTag = self.onDeleteTag,
				IsLive = true,
			}),

			Dropdown = shouldShowDropdown and Roact.createElement(LiveSearchDropdown, {
				Size = UDim2.new(0, width, 0, 0),
				Position = position,
				Items = results,
				SearchTerm = currentText,
				onItemClicked = FFlagToolboxFixCreatorSearchResults and self.onDropdownClicked or self.onTextChanged,
				closeDropdown = self.closeDropdown,
			}),
		})
	end)
end

return LiveSearchBar
