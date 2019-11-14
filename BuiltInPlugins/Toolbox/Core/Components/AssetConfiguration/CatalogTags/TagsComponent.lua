--[[
	TagsComponent - used inside PublishAsset as a field for entering catalog tags

	Tag {
		string name
		string localizedDisplayName
		string tagId
		string status
	}

	Necessary Props:
		Tag[] tags
		number maximumItemTagsPerItem
		callback onTagsChange
		string Title
		numberLayoutOrder
		callback setDropdownHeight(number height)
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Cryo = require(Libs.Cryo)

local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local trimString = require(Util.trimString)
local TagsUtil = require(Util.TagsUtil)

local RoundFrame = require(Libs.UILibrary.Components.RoundFrame)

local Components = Plugin.Core.Components
local DropdownItemsList = require(Components.DropdownItemsList)
local CatalogTag = require(Components.AssetConfiguration.CatalogTags.CatalogTag)

local GetTagSuggestionsRequest = require(Plugin.Core.Networking.Requests.GetTagSuggestionsRequest)
local SetTagSuggestions = require(Plugin.Core.Actions.SetTagSuggestions)

local getNetwork = ContextGetter.getNetwork

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

-- constants
local PADDING = 10
local TAG_PADDING = 3
local CLOSE_BUTTON_SIZE = 16

local TEXT_FIELD_BUFFER = " "
local MINIMUM_CURSOR_POS = #TEXT_FIELD_BUFFER + 1
local HUGE_NUMBER = 9999 -- we can't use math.huge due to short overflow
local MINIMUM_TEXTBOX_LENGTH = 100

local DESCRIPTION_PADDING = 5
local DESCRIPTION_HEIGHT = DESCRIPTION_PADDING + Constants.FONT_SIZE_MEDIUM + DESCRIPTION_PADDING

-- component implementation
local TagsComponent = Roact.PureComponent:extend("TagsComponent")

function TagsComponent:init()
	self.state = {
		active = false,
		textFieldPosition = Vector2.new(),
		textFieldSize = Vector2.new(),
	}

	self.textBoxRef = Roact.createRef()
	self.textFieldRef = Roact.createRef()

	self.lastText = TEXT_FIELD_BUFFER

	local networkInterface = getNetwork(self)

	self.onTextFieldAbsoluteSizeChanged = function(rbx)
		self:setState({ textFieldSize = rbx.AbsoluteSize })
	end

	self.onTextFieldAbsolutePositionChanged = function(rbx)
		self:setState({ textFieldPosition = rbx.AbsolutePosition })
	end

	self.onTextBoxFocused = function()
		if not self.state.active and self.textBoxRef and self.textBoxRef.current then
			self.textBoxRef.current.CursorPosition = HUGE_NUMBER
			self:setState({ active = true })
		end
	end

	self.onTextBoxFocusLost = function(rbx, enterPressed)
		if enterPressed then
			if #trimString(rbx.Text) > 0 then
				if #self.props.suggestions > 0 then
					self:addTag(self.props.suggestions[1])
					self.props.clearSuggestions()
					rbx.Text = TEXT_FIELD_BUFFER
				end
			end
			rbx:CaptureFocus()
		elseif not self.state.active or #self.props.suggestions == 0 then
			self:setState({ active = false })
		else
			rbx:CaptureFocus()
		end
	end

	self.onTextBoxTextChanged = function(rbx)
		local text = rbx.Text

		if text ~= self.lastText then
			local refresh = false

			if string.sub(text, 1, #TEXT_FIELD_BUFFER) ~= TEXT_FIELD_BUFFER then
				text = TEXT_FIELD_BUFFER .. text
				local tags = self.props.tags
				if #self.lastText == 1 and #tags > 0 then
					self:removeTag(tags[#tags].tagId)
				end
				refresh = true
			end

			if string.sub(text, #text, #text) == "\r" then
				text = string.sub(text, 1, #text - 1)
				refresh = true
			end

			if not self:canAddTags() then
				text = TEXT_FIELD_BUFFER
				refresh = true
			end

			-- refresh if we've made edits
			if refresh then
				rbx.Text = text
				rbx:ReleaseFocus()
				rbx:CaptureFocus()
			end

			self.lastText = text
		end

		local prefix = trimString(text)
		if #prefix > 0 then
			self.props.getSuggestions(networkInterface, self.props.tags, prefix)
		else
			self.props.clearSuggestions()
		end
	end

	self.onTextBoxCursorPositionChanged = function(rbx)
		if rbx.CursorPosition < MINIMUM_CURSOR_POS then
			rbx.CursorPosition = MINIMUM_CURSOR_POS
		end
	end
end

function TagsComponent:canAddTags()
	return #self.props.tags < self.props.maximumItemTagsPerItem
end

function TagsComponent:addTag(suggestion)
	if self:canAddTags() and not TagsUtil.hasTag(self.props.tags, suggestion.tagId) then
		self.props.onTagsChange(Cryo.List.join(self.props.tags, { suggestion }))
	end
end

function TagsComponent:removeTag(tagId)
	local newTags = {}
	for i = 1, #self.props.tags do
		local tag = self.props.tags[i]
		if tag.tagId ~= tagId then
			table.insert(newTags, tag)
		end
	end
	self.props.onTagsChange(newTags)
end

function TagsComponent:getDropdownItems()
	local result = {}
	for _, suggestion in pairs(self.props.suggestions) do
		table.insert(result, {
			name = suggestion.localizedDisplayName,
			selectable = true
		})
	end
	return result
end

function TagsComponent:clearSuggestions()
	self.props.clearSuggestions()
end


function TagsComponent:didMount()
	if self.textFieldRef.current then
		self:setState({
			textFieldPosition = self.textFieldRef.current.AbsolutePosition,
			textFieldSize = self.textFieldRef.current.AbsoluteSize,
		})
	end
end

function TagsComponent:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props
			local state = self.state

			local title = props.Title
			local layoutOrder = props.LayoutOrder

			local publishAssetTheme = theme.publishAsset

			local tagElements = {}

			local LINE_HEIGHT = TAG_PADDING + Constants.FONT_SIZE_TITLE + TAG_PADDING

			local line = 0
			local lineLength = PADDING
			local function getNextPosition(length)
				local nextLength = lineLength
				if lineLength + length > state.textFieldSize.X - PADDING then
					line = line + 1
					lineLength = PADDING
					nextLength = lineLength
				end
				lineLength = lineLength + length + TAG_PADDING
				return nextLength, PADDING + line * (PADDING + LINE_HEIGHT)
			end

			for i = 1, #props.tags do
				local tag = props.tags[i]

				local textSize = Constants.getTextSize(
					tag.localizedDisplayName,
					Constants.FONT_SIZE_TITLE,
					Constants.FONT
				)

				local sizeX = TAG_PADDING + textSize.X + TAG_PADDING + CLOSE_BUTTON_SIZE + TAG_PADDING
				local sizeY = TAG_PADDING + textSize.Y + TAG_PADDING
				local posX, posY = getNextPosition(sizeX)

				tagElements["Tag" .. i] = Roact.createElement(CatalogTag, {
					Text = tag.localizedDisplayName,
					Position = UDim2.new(0, posX, 0, posY),
					Size = UDim2.new(0, sizeX, 0, sizeY),
					textSize = textSize,
					onClose = function()
						self:removeTag(tag.tagId)
					end,
				})
			end

			local textBoxPosX, textBoxPosY = getNextPosition(MINIMUM_TEXTBOX_LENGTH)
			tagElements.TextBox = Roact.createElement("TextBox", {
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,
				ClipsDescendants = true,
				Font = Constants.FONT,
				Position = UDim2.new(0, textBoxPosX, 0, textBoxPosY),
				Size = UDim2.new(0, state.textFieldSize.X - textBoxPosX, 0, LINE_HEIGHT),
				TextColor3 = theme.tags.textColor,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,

				Text = self.lastText,

				[Roact.Event.Focused] = self.onTextBoxFocused,
				[Roact.Event.FocusLost] = self.onTextBoxFocusLost,
				[Roact.Change.Text] = self.onTextBoxTextChanged,
				[Roact.Change.CursorPosition] = self.onTextBoxCursorPositionChanged,

				[Roact.Ref] = self.textBoxRef,
			})

			local prefix = trimString(self.lastText)
			local noTagFound = #prefix > 0
				and #props.suggestions == 0
				and prefix == props.latestTagSearchQuery

			local descriptionColor
			local descriptionText
			if noTagFound then
				descriptionColor = theme.inputFields.error
				descriptionText = localizedContent.AssetConfig.NoTagFound
			else
				descriptionColor = theme.inputFields.toolTip
				descriptionText = localization:getMaxTags(props.maximumItemTagsPerItem)
			end

			local textFieldBorderColor3
			if noTagFound then
				textFieldBorderColor3 = theme.inputFields.error
			elseif state.active then
				textFieldBorderColor3 = theme.inputFields.borderColorActive
			else
				textFieldBorderColor3 = theme.inputFields.borderColor
			end

			local contentHeight = PADDING + LINE_HEIGHT + line*(PADDING + LINE_HEIGHT) + PADDING + DESCRIPTION_HEIGHT

			return Roact.createElement("Frame", {
				Active = true,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, 0, 0, contentHeight + PADDING),
				[Roact.Ref] = props[Roact.Ref],
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Padding = UDim.new(0, 0),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),

				Title = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = Constants.FONT,
					Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 1, 0),
					Text = title,
					TextColor3 = publishAssetTheme.titleTextColor,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,

					LayoutOrder = 1,
				}),

				Content = Roact.createElement("Frame", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, contentHeight),
				}, {
					TextField = Roact.createElement(RoundFrame, {
						BackgroundColor3 = not self:canAddTags() and theme.inputFields.backgroundColorDisabled or theme.inputFields.backgroundColor,
						BorderColor3 = textFieldBorderColor3,

						Size = UDim2.new(1, 0, 1, -DESCRIPTION_HEIGHT),

						LayoutOrder = 1,

						[Roact.Ref] = self.textFieldRef,

						[Roact.Change.AbsoluteSize] = self.onTextFieldAbsoluteSizeChanged,
						[Roact.Change.AbsolutePosition] = self.onTextFieldAbsolutePositionChanged,


						OnActivated = function()
							if not state.active and self.textBoxRef and self.textBoxRef.current then
								self.textBoxRef.current:CaptureFocus()
							end
						end,
					}, tagElements),

					Description = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, DESCRIPTION_HEIGHT),
						Position = UDim2.new(0, 0, 1, -DESCRIPTION_HEIGHT),
						LayoutOrder = 2,
						Text = descriptionText,
						TextColor3 = descriptionColor,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Suggestions = state.active and self:canAddTags() and #props.suggestions > 0 and Roact.createElement(DropdownItemsList, {
					items = self:getDropdownItems(),

					onItemClicked = function(index)
						self.lastText = TEXT_FIELD_BUFFER
						self:addTag(props.suggestions[index])
						self.props.clearSuggestions()
						if self.textBoxRef and self.textBoxRef.current then
							self.textBoxRef.current:CaptureFocus()
						end
					end,

					closeDropdown = function()
						self:setState({ active = false })
						if self.textBoxRef and self.textBoxRef.current then
							self.textBoxRef.current:ReleaseFocus()
						end
					end,

					dropDownWidth = state.textFieldSize.X,
					top = state.textFieldPosition.Y + state.textFieldSize.Y,
					left = state.textFieldPosition.X,

					windowPosition = state.textFieldPosition,
					windowSize = state.textFieldSize,

					setDropdownHeight = props.setDropdownHeight,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}
	return {
		suggestions = state.tagSuggestions or {},
		latestTagSuggestionTime = state.latestTagSuggestionTime or 0,
		latestTagSearchQuery = state.latestTagSearchQuery,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getSuggestions = function(networkInterface, prefix, tags)
			dispatch(GetTagSuggestionsRequest(networkInterface, prefix, tags))
		end,

		clearSuggestions = function()
			dispatch(SetTagSuggestions({}, tick(), ""))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagsComponent)