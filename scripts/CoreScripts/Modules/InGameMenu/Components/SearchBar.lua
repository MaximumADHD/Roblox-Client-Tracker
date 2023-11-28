--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo

local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)

local SEARCH_CONTAINER_PADDING = 9
local SEARCH_TEXTBOX_HEIGHT = 20
local SEARCH_CANCEL_WIDTH = 57
local SEARCH_CANCEL_HEIGHT = 20

local SEARCH_ICON_SIZE = 18
local SEARCH_CONTAINER_TEXT_BOX_PADDING = 10

local SearchBar = Roact.PureComponent:extend("SearchBar")

SearchBar.validateProps = t.interface({
	size = t.UDim2,
	text = t.optional(t.string),
	onTextChanged = t.optional(t.callback),
	onFocused = t.optional(t.callback),
	onCancelled = t.optional(t.callback),
	onFocusLost = t.optional(t.callback),
	autoCaptureFocus = t.optional(t.boolean),
	zIndex = t.optional(t.number),
	visible = t.optional(t.boolean),
})

SearchBar.defaultProps = {
	size = UDim2.fromScale(1, 1),
	autoCaptureFocus = false,
	visible = true,
}

function SearchBar:init()
	self.textboxRef = Roact.createRef()

	self.onAbsoluteSizeChanged = function(rbx)
		local hasChanges = false
		if self.width ~= rbx.AbsoluteSize.X then
			self.width = rbx.AbsoluteSize.X
			hasChanges = true
		end

		if self.height ~= rbx.AbsoluteSize.Y then
			self.height = rbx.AbsoluteSize.Y
			hasChanges = true
		end

		if hasChanges then
			-- we want to offset by 2 pixels to account for the border pixel width (top and bottom)
			self:setState({
				width = self.width - 2,
				height = self.height - 2,
			})
		end
	end

	self.searchTextChanged = function(rbx)
		if self.props.onTextChanged then
			self.props.onTextChanged(rbx.Text)
		end
	end

	self.searchBoxFocused = function(rbx)
		if self.props.onFocused then
			self.props.onFocused()
		end
	end

	self.searchCancel = function()
		if self.props.onCancelled then
			self.props.onCancelled()
		end
	end

	self.onFocusLost = function()
		if self.props.onFocusLost then
			self.props.onFocusLost()
		end
	end

	self.onTextboxTouchTap = function()
		if self.props.onTextboxTouchTap then
			self.props.onTextboxTouchTap()
		end
	end
end

function SearchBar:willUpdate(nextProps)
	if self.props.autoCaptureFocus and self.props.visible == false and nextProps.visible then
		self:focus()
	end
end

function SearchBar:didMount()
	if self.props.autoCaptureFocus and self.props.visible then
		self:focus()
	end
end

function SearchBar:focus()
	if self.textboxRef then
		self.textboxRef.current:CaptureFocus()
	end
end

function SearchBar:render()
	return withStyle(function(style)
		return withLocalization({
			search = "CoreScripts.InGameMenu.InviteFriends.Search",
			cancel = "CoreScripts.InGameMenu.Cancel",
		})(function(localized)
			local cancelFontStyle = style.Font.Body
			local cancelTextSize = style.Font.BaseSize * cancelFontStyle.RelativeSize
			local inputFontStyle = style.Font.Body
			local inputTextSize = style.Font.BaseSize * inputFontStyle.RelativeSize

			local rootElementName = "CanvasGroup"
			local rootElementProps = {
				BackgroundTransparency = 1,
				GroupTransparency = 0.5,
				Size = self.props.size,
				ZIndex = self.props.zIndex,
				Visible = self.props.visible,
				[Roact.Ref] = self.props.forwardRef or Roact.createRef(),
			}

			local Platform = UserInputService:GetPlatform()
			-- Android keyboard does not offer good NoSuggestions, which could make the keyboard smaller. PasswordShown type is closest to most useful native keyboard configuration for SearchBar.
			local textInputType = if Platform == Enum.Platform.Android
				then Enum.TextInputType.PasswordShown
				else Enum.TextInputType.NoSuggestions

			return Roact.createElement(rootElementName, rootElementProps, {
				SearchPanelLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, SEARCH_CONTAINER_PADDING),
				}),
				SearchBorder = Roact.createElement("Frame", {
					Size = UDim2.new(
						1,
						-SEARCH_CONTAINER_PADDING - SEARCH_CANCEL_WIDTH,
						0,
						SEARCH_TEXTBOX_HEIGHT + 2 * SEARCH_CONTAINER_PADDING
					),
					BackgroundColor3 = Color3.new(136, 136, 136),
					BackgroundTransparency = 0.8,
					[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
				}, {
					BorderRadius = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					SearchContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 0,
						Size = UDim2.fromOffset(self.state.width, self.state.height),
						BackgroundColor3 = Color3.new(0, 0, 0),
						Position = UDim2.fromOffset(1, 1),
					}, {
						SearchContainerLayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							Padding = UDim.new(0, SEARCH_CONTAINER_TEXT_BOX_PADDING),
						}),
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12),
						}),
						BorderRadius = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, 4),
						}),
						SearchImage = Roact.createElement(ImageSetLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Image = Images["icons/common/search_small"],
							Size = UDim2.fromOffset(SEARCH_ICON_SIZE, SEARCH_ICON_SIZE),
						}),
						SearchInput = Roact.createElement("TextBox", {
							LayoutOrder = 2,
							BackgroundTransparency = 1,
							Size = UDim2.new(
								1,
								-SEARCH_ICON_SIZE - SEARCH_CONTAINER_TEXT_BOX_PADDING,
								0,
								SEARCH_TEXTBOX_HEIGHT
							),
							Font = inputFontStyle.Font,
							Text = self.props.text or "",
							TextInputType = textInputType,
							TextSize = inputTextSize,
							TextColor3 = style.Theme.TextEmphasis.Color,
							TextXAlignment = Enum.TextXAlignment.Left,
							PlaceholderText = localized.search,
							PlaceholderColor3 = style.Theme.TextDefault.Color,
							ClearTextOnFocus = false,
							ClipsDescendants = true,
							[Roact.Change.Text] = self.searchTextChanged,
							[Roact.Event.Focused] = self.searchBoxFocused,
							[Roact.Event.FocusLost] = self.onFocusLost,
							[Roact.Ref] = self.textboxRef,
							[Roact.Event.TouchTap] = self.onTextboxTouchTap,
						}),
					}),
				}),
				CancelButton = Roact.createElement("TextButton", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(SEARCH_CANCEL_WIDTH, SEARCH_CANCEL_HEIGHT),
					Font = cancelFontStyle.Font,
					TextSize = cancelTextSize,
					Text = localized.cancel,
					TextColor3 = style.Theme.TextEmphasis.Color,
					[Roact.Event.Activated] = self.searchCancel,
				}),
			})
		end)
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		SearchBar,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
