--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local PlayerSearchEvent = require(FriendsLanding.FriendsLandingAnalytics.PlayerSearchEvent)

local SocialLibraries = dependencies.SocialLibraries

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Text = dependencies.Text
local memoize = dependencies.memoize

local TextButton = UIBlox.App.Button.TextButton
local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.Constant.IconSize
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local CallbackInputBox = SocialLibraries.Components.CallbackInputBox

local ICON_PADDING = 12
local ICON_PADDING_INNER = 4
local SEARCH_BOX_PADDING_END = 6
local TEXT_BUTTON_PADDING = 12
local SEARCH_ICON_SIZE

local SEARCH_BAR_ICON = Images["icons/common/search"]
local CLEAR_BUTTON_IMAGE = Images["icons/actions/edit/clear_small"]

local SEARCH_FRAME_IMAGE = {
	Image = Images["squircles/fill"],
	SliceCenter = Rect.new(8, 8, 9, 9),
} :: any

local SearchHeaderBar = Roact.PureComponent:extend("SearchHeaderBar")
SearchHeaderBar.defaultProps = {
	cancelText = "Cancel",
	searchPlaceholderText = "Text",
	initialInputText = nil,

	captureFocusOnMount = false,
	resetOnMount = function() end,
	cancelCallback = nil,
	textChangedCallback = nil,
	LayoutOrder = 1,
	onSelectCallback = function() end,
	focusChangedCallback = function() end,

	isDisabled = false,
}

function SearchHeaderBar:init()
	self.inputBoxRef = Roact.createRef()
	self.props.onSelectCallback()

	self.getTextWidth = memoize(function(text, font, size)
		return Text.GetTextWidth(text, font, size)
	end)
end

function SearchHeaderBar:didMount()
	self.props.resetOnMount()
end

function SearchHeaderBar:render()
	return UIBlox.Style.withStyle(function(style)
		if self.props.addFriendsPageSearchbarEnabled then
			-- Update these values at top of file when cleaning addFriendsPageSearchbarEnabled
			ICON_PADDING = 10
			SEARCH_BOX_PADDING_END = 10
			SEARCH_ICON_SIZE = 23
			SEARCH_FRAME_IMAGE = nil
		end

		local cancelText = self.props.cancelText

		local cancelFontStyle = style.Font.Header2
		local cancelTextSize = style.Font.BaseSize * cancelFontStyle.RelativeSize
		local cancelTextWidth = self.getTextWidth(cancelText, cancelFontStyle.Font, cancelTextSize)
		local cancelButtonPadding = TEXT_BUTTON_PADDING
		local horizontalAlignment = Enum.HorizontalAlignment.Left
		-- There should be 12 px of padding between the search bar and the cancel button
		-- The UIBlox TextButton already has 8px of padding so the other 4px come from here
		local inBetweenPadding = UDim.new(0, 4)

		local filterBoxSize = if self.props.isDisabled
			then UDim2.new(1, 0, 1, 0)
			else UDim2.new(1, -cancelTextWidth - cancelButtonPadding, 1, 0)
		local filterBoxPadding = 0

		local searchFontStyle = style.Font.Body
		local searchTextSize = style.Font.BaseSize * searchFontStyle.RelativeSize

		local focusChangedCallback = if self.props.addFriendsPageSearchbarEnabled
			then function(focus, enter)
				self.props.focusChangedCallback(focus, enter)
				if focus then
					self:setState({
						borderColor = style.Theme.SecondaryOnHover.Color,
						borderTransparency = style.Theme.SecondaryOnHover.Transparency,
					})
				else
					self:setState({
						borderColor = style.Theme.Divider.Color,
						borderTransparency = style.Theme.Divider.Transparency,
					})
				end
			end
			else nil

		return Roact.createElement("Frame", {
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = self.props.LayoutOrder,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = horizontalAlignment,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = inBetweenPadding,
			}),

			padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, SEARCH_BOX_PADDING_END),
				PaddingBottom = UDim.new(0, SEARCH_BOX_PADDING_END),
				PaddingLeft = UDim.new(0, filterBoxPadding),
				PaddingRight = UDim.new(0, filterBoxPadding),
			}),

			cancel = if self.props.addFriendsPageSearchbarEnabled and self.props.isDisabled
				then nil
				else self.props.cancelCallback and Roact.createElement(TextButton, {
					text = cancelText,
					layoutOrder = 2,
					onActivated = function()
						self.props.cancelCallback()
						PlayerSearchEvent(self.props.analytics, "cancel")
					end,
				}),

			filterBoxBackground = Roact.createElement(
				ImageSetLabel,
				if self.props.addFriendsPageSearchbarEnabled
					then {
						Size = filterBoxSize,
						BackgroundColor3 = style.Theme.UIMuted.Color,
						BackgroundTransparency = style.Theme.UIMuted.Transparency,
						BorderSizePixel = 0,
						LayoutOrder = 1,
					}
					else {
						Size = filterBoxSize,
						Image = SEARCH_FRAME_IMAGE.Image,
						ImageColor3 = style.Theme.BackgroundMuted.Color,
						ImageTransparency = style.Theme.BackgroundMuted.Transparency,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = SEARCH_FRAME_IMAGE.SliceCenter,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						LayoutOrder = 1,
					},
				{
					corner = if self.props.addFriendsPageSearchbarEnabled
						then Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, 4),
						})
						else nil,

					border = if self.props.addFriendsPageSearchbarEnabled
						then Roact.createElement("UIStroke", {
							Color = self.state.borderColor or style.Theme.Divider.Color,
							Transparency = self.state.borderTransparency or style.Theme.Divider.Transparency,
							Thickness = 1,
						})
						else nil,

					layout = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, ICON_PADDING_INNER),
					}),

					padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, ICON_PADDING),
						PaddingRight = UDim.new(0, ICON_PADDING),
					}),

					filterBoxIcon = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Size = if self.props.addFriendsPageSearchbarEnabled
							then UDim2.new(0, SEARCH_ICON_SIZE, 0, SEARCH_ICON_SIZE)
							else UDim2.new(0, IconSize.Small, 0, IconSize.Small),
						Image = SEARCH_BAR_ICON,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						ImageTransparency = style.Theme.IconEmphasis.Transparency,
						LayoutOrder = 1,
					}),

					filterBoxContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = if self.props.addFriendsPageSearchbarEnabled
							then UDim2.new(1, -(SEARCH_ICON_SIZE + ICON_PADDING_INNER), 1, 0)
							else UDim2.new(1, -(IconSize.Small + ICON_PADDING_INNER), 1, 0),
						LayoutOrder = 2,
					}, {
						filterBox = if self.props.addFriendsPageSearchbarEnabled and self.props.isDisabled
							then Roact.createElement("TextLabel", {
								Text = self.props.searchPlaceholderText,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextYAlignment = Enum.TextYAlignment.Center,
								BackgroundTransparency = 1,
								Size = UDim2.fromScale(1, 1),
								TextSize = searchTextSize,
								Font = searchFontStyle.Font,
								TextColor3 = style.Theme.TextDefault.Color,
								TextTransparency = style.Theme.TextMuted.Transparency,
							})
							else Roact.createElement(CallbackInputBox, {
								initialInputText = self.props.initialInputText,
								inputTextColor3 = style.Theme.TextEmphasis.Color,
								inputTextFont = searchFontStyle.Font,
								inputTextSize = searchTextSize,
								inputTextTransparency = style.Theme.TextEmphasis.Transparency,
								inputTextXAlignment = Enum.TextXAlignment.Left,

								placeholderText = self.props.searchPlaceholderText,
								placeholderTextColor3 = if self.props.addFriendsPageSearchbarEnabled
									then style.Theme.TextDefault.Color
									else style.Theme.TextMuted.Color,
								placeholderTextTransparency = if self.props.addFriendsPageSearchbarEnabled
									then style.Theme.TextMuted.Transparency
									else style.Theme.PlaceHolder.Transparency,

								captureFocusOnMount = self.props.captureFocusOnMount,

								clearIcon = CLEAR_BUTTON_IMAGE,
								clearIconColor3 = style.Theme.IconEmphasis.Color,
								clearIconTransparency = style.Theme.IconEmphasis.Transparency,
								clearButtonSize = IconSize.Small,

								clearButtonDisabled = false,
								textChangedCallback = self.props.textChangedCallback,
								onSelectCallback = self.props.onSelectCallback,
								focusChangedCallback = if self.props.addFriendsPageSearchbarEnabled
									then focusChangedCallback
									else self.props.focusChangedCallback,

								inputBoxRef = self.inputBoxRef,
							}),
					}),
				}
			),
		})
	end)
end

SearchHeaderBar = FriendsLandingContext.connect(function(context)
	return {
		addFriendsPageSearchbarEnabled = context.addFriendsPageSearchbarEnabled,
	}
end)(SearchHeaderBar)

return SearchHeaderBar
