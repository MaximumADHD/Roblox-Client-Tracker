local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local GetFFlagShareGameSearchBoxFocusAnalytics =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagShareGameSearchBoxFocusAnalytics)
local SearchBox = require(ShareGame.Components.SearchBox)
local IconButton = require(ShareGame.Components.IconButton)
local Constants = require(ShareGame.Constants)
local Text = require(CorePackages.Workspace.Packages.AppCommonLib).Text
local Theme = require(RobloxGui.Modules.Settings.Theme)

local SetSearchAreaActive = require(ShareGame.Actions.SetSearchAreaActive)
local SetSearchText = require(ShareGame.Actions.SetSearchText)
local ShareGameIcons = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local SEARCH_ICON_SPRITE_PATH = ShareGameIcons:GetImagePath()
local SEARCH_ICON_SPRITE_FRAME = ShareGameIcons:GetFrame("search_large")
local SEARCH_ICON_SIZE = 44

local SEARCH_BOX_WIDTH = 177
local SEARCH_BOX_HEIGHT = 28

local CANCEL_TEXT_FONT = Theme.font(Enum.Font.SourceSans)
local CANCEL_TEXT_COLOR = Constants.Color.GRAY3
local CANCEL_TEXT_SIZE = Theme.textSize(20)

local SearchArea = Roact.PureComponent:extend("SearchArea")

function SearchArea:init()
	self.state = {
		cancelText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.CancelSearch"),
	}
	self.searchField = nil
end

function SearchArea:render()
	local fullWidthSearchBar = self.props.fullWidthSearchBar
	local searchBoxMargin = self.props.searchBoxMargin
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local zIndex = self.props.zIndex
	local searchAreaActive = self.props.searchAreaActive
	local size = self.props.size

	local cancelText = self.state.cancelText
	local cancelTextWidth = Text.GetTextWidth(cancelText, CANCEL_TEXT_FONT, CANCEL_TEXT_SIZE)
	local searchBoxSizeOffset = searchBoxMargin + cancelTextWidth

	local setSearchText = self.props.setSearchText

	if fullWidthSearchBar then
		-- When full-width is true, the search box spans the entire width of the
		-- parent frame, and it becomes hidden behind a search button.
		return Roact.createElement("Frame", {
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
			ZIndex = zIndex,
		}, {
			-- Render the search button if the search area hasn't been activated
			-- yet.
			SearchButton = Roact.createElement(IconButton, {
				visible = not searchAreaActive,
				anchorPoint = anchorPoint,
				position = position,
				size = UDim2.new(0, SEARCH_ICON_SIZE, 0, SEARCH_ICON_SIZE),
				zIndex = zIndex,

				iconHorizontalAlignment = Enum.HorizontalAlignment.Right,
				iconSpritePath = SEARCH_ICON_SPRITE_PATH,
				iconSpriteFrame = SEARCH_ICON_SPRITE_FRAME,
				onClick = function(rbx)
					self.props.setSearchAreaActive(true)
				end,
			}),

			-- Show search box with cancel button if the search area is active
			SearchBox = Roact.createElement(SearchBox, {
				anchorPoint = Vector2.new(0, 0.5),
				position = UDim2.new(0, 0, 0.5, 0),
				size = UDim2.new(1, -searchBoxSizeOffset, 0, SEARCH_BOX_HEIGHT),
				zIndex = zIndex,
				visible = searchAreaActive,
				modalFocused = searchAreaActive,
				onTextChanged = setSearchText,
				onTextBoxFocused = function()
					if GetFFlagShareGameSearchBoxFocusAnalytics() and self.props.analytics then
						self.props.analytics:onSearchFocused()
					end
				end,
				onTextBoxFocusLost = function(text)
					if text == "" then
						self.props.setSearchAreaActive(false)
					end
				end,
				searchFieldRef = function(rbx)
					self.searchField = rbx
				end,
			}),
			Cancel = Roact.createElement("TextButton", {
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				Size = UDim2.new(0, cancelTextWidth, 1, 0),
				TextSize = CANCEL_TEXT_SIZE,
				TextColor3 = CANCEL_TEXT_COLOR,
				Font = CANCEL_TEXT_FONT,
				ZIndex = zIndex,
				Visible = searchAreaActive,

				[Roact.Ref] = function(rbx)
					if rbx then
						-- Set initial text on this TextLabel
						rbx.Text = cancelText

						-- Listen to Text changed events in case of localization
						-- (this is so we can trigger a resize)
						if not self.textConnection then
							local textChangedSignal = rbx:GetPropertyChangedSignal("Text")

							self.textConnection = textChangedSignal:connect(function()
								self:setState({
									cancelText = rbx.Text,
								})
							end)
						end
					end
				end,
				[Roact.Event.Activated] = function(rbx)
					self.props.setSearchAreaActive(false)
				end,
			}),
		})
	else
		-- Show a search box of a fixed size without any added behavior.
		-- We don't bother setting SearchAreaActive here since we're not working
		-- with a modal-style search box (i.e. nothing has to be shown or
		-- hidden).
		return Roact.createElement(SearchBox, {
			anchorPoint = Vector2.new(1, 0.5),
			position = UDim2.new(1, 0, 0.5, 0),
			size = UDim2.new(0, SEARCH_BOX_WIDTH, 0, SEARCH_BOX_HEIGHT),
			zIndex = zIndex,
			onTextChanged = setSearchText,
			searchFieldRef = function(rbx)
				self.searchField = rbx
			end,
		})
	end
end

function SearchArea:didUpdate(prevProps)
	local fullWidthSearchBar = self.props.fullWidthSearchBar

	if self.searchField then
		-- Check if the page was closed so we can reset the search query
		if not self.props.isPageOpen and prevProps.isPageOpen then
			-- Spawn new thread so we don't trigger state updates from this
			-- function
			spawn(function()
				-- Reset the entire search area
				if fullWidthSearchBar then
					self.props.setSearchAreaActive(false)
				else
					self.searchField.Text = ""
				end
			end)
		end

		-- Check if the search area has become active/inactive
		if fullWidthSearchBar then
			local searchAreaActive = self.props.searchAreaActive
			local wasActive = prevProps.searchAreaActive

			if searchAreaActive and not wasActive then
				self.searchField:CaptureFocus()
			elseif not searchAreaActive and wasActive then
				self.searchField.Text = ""
			end
		end
	end
end

SearchArea = RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isPageOpen = state.Page.IsOpen,
		searchAreaActive = state.ConversationsSearch.SearchAreaActive,
	}
end, function(dispatch)
	return {
		setSearchAreaActive = function(isActive)
			dispatch(SetSearchAreaActive(isActive))
		end,
		setSearchText = function(text)
			dispatch(SetSearchText(text))
		end,
	}
end)(SearchArea)

return SearchArea
