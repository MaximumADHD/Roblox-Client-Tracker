--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle
local Foundation = require(CorePackages.Packages.Foundation)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

local withSelectionCursorProvider = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.UNSTABLE.withCursorMigration
	else UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.Enums.CursorType
	else UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Image = Foundation.Image

local TEXT_BOX_OFFSET = 44
local TEXT_BOX_SELECTION_CURSOR_OFFSET = 5

local CLEAR_BUTTON_SIZE = 18
local CLEAR_BUTTON_PADDING_INTERNAL = 7
local CLEAR_BUTTON_PADDING_EXTERNAL = 7
local CLEAR_BUTTON_TOTAL_SIZE = CLEAR_BUTTON_SIZE + 2 * CLEAR_BUTTON_PADDING_INTERNAL

local SearchBox = Roact.PureComponent:extend("SearchBox")

SearchBox.validateProps = t.strictInterface({
	Size = t.UDim2,
	Position = t.UDim2,
	AnchorPoint = t.Vector2,
	searchUpdated = t.callback,
	searchCleared = t.callback,
	itemRef = t.optional(t.table),
})

function SearchBox:init()
	self.state = {
		searchText = "",
	}
end

function SearchBox:renderWithSelectionCursor(getSelectionCursor)
	return withLocalization({
		searchPlaceholder = "CoreScripts.InGameMenu.InviteFriends.Search",
	})(function(localized)
		return withFoundationOrUIBloxStyle(function(tokens)
			return {
				Theme = {
					TextEmphasis = { Color = tokens.Color.Content.Emphasis.Color3, Transparency = tokens.Color.Content.Emphasis.Transparency },
					IconEmphasis = { Color = tokens.Color.Content.Emphasis.Color3, Transparency = tokens.Color.Content.Emphasis.Transparency },
					BackgroundUIContrast = { Color = tokens.Color.OverMedia.OverMedia_0.Color3, Transparency = tokens.Color.OverMedia.OverMedia_0.Transparency },
					Divider = { Color = tokens.Color.Stroke.Emphasis.Color3, Transparency = tokens.Color.Stroke.Emphasis.Transparency },
				},
				Font = {
					BaseSize = 1,
					Body = { Font = tokens.Typography.BodyLarge.Font, RelativeSize = tokens.Typography.BodyLarge.FontSize },
				},
			}
		end, function(style)
			local textTheme = style.Theme.TextEmphasis
			local textFont = style.Font.Body

			local showClearButton = nil
			local textBoxSizeOffset = nil

			showClearButton = self.state.searchText ~= ""
			textBoxSizeOffset = TEXT_BOX_OFFSET + TEXT_BOX_SELECTION_CURSOR_OFFSET
			if showClearButton then
				textBoxSizeOffset += CLEAR_BUTTON_TOTAL_SIZE + 2 * CLEAR_BUTTON_PADDING_EXTERNAL
			end

			local clearButton = Roact.createElement("TextButton", {
				Size = UDim2.fromOffset(CLEAR_BUTTON_TOTAL_SIZE, CLEAR_BUTTON_TOTAL_SIZE),
				Position = UDim2.new(1, -CLEAR_BUTTON_PADDING_EXTERNAL, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Visible = showClearButton,
				SelectionImageObject = getSelectionCursor(CursorKind.SmallPill),
				Selectable = true,
				[Roact.Event.Activated] = function()
					self:setState({
						searchText = "",
					})
					self.props.searchCleared()
				end,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, CLEAR_BUTTON_PADDING_INTERNAL),
					PaddingRight = UDim.new(0, CLEAR_BUTTON_PADDING_INTERNAL),
					PaddingTop = UDim.new(0, CLEAR_BUTTON_PADDING_INTERNAL),
					PaddingBottom = UDim.new(0, CLEAR_BUTTON_PADDING_INTERNAL),
				}),
				ClearImage = if FFlagCoreUiMigrateUIBloxToFoundation
					then Roact.createElement(Image, {
						Size = UDim2.fromScale(1, 1),
						Image = Assets.Images.ClearIcon.Image,
						imageRect = { offset = Assets.Images.ClearIcon.ImageRectOffset, size = Assets.Images.ClearIcon.ImageRectSize },
						imageStyle = { Color3 = style.Theme.IconEmphasis.Color, Transparency = 0 },
					})
					else Roact.createElement(ImageSetLabel, {
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						Image = Assets.Images.ClearIcon,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						Selectable = false,
					}),
			})

			return Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Size = self.props.Size,
				Position = self.props.Position,
				AnchorPoint = self.props.AnchorPoint,

				Image = Assets.Images.RoundedRect.Image,
				ImageColor3 = style.Theme.BackgroundUIContrast.Color,
				ImageTransparency = style.Theme.BackgroundUIContrast.Transparency,
				ScaleType = Assets.Images.RoundedRect.ScaleType,
				SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			}, {
				Border = Roact.createElement(ImageSetLabel, {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = Assets.Images.RoundedRectBorder.Image,
					SliceCenter = Assets.Images.RoundedRectBorder.SliceCenter,
					ScaleType = Assets.Images.RoundedRectBorder.ScaleType,
					ImageColor3 = style.Theme.Divider.Color,
					ImageTransparency = style.Theme.Divider.Transparency,
				}),

				SearchIcon = if FFlagCoreUiMigrateUIBloxToFoundation
					then Roact.createElement(Image, {
						Size = UDim2.new(0, 16, 0, 16),
						Position = UDim2.new(0, 22, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = Assets.Images.SearchIcon.Image,
						imageRect = { offset = Assets.Images.SearchIcon.ImageRectOffset, size = Assets.Images.SearchIcon.ImageRectSize },
						imageStyle = { Color3 = style.Theme.IconEmphasis.Color, Transparency = 0 },
					})
					else Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 16, 0, 16),
						Position = UDim2.new(0, 22, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = Assets.Images.SearchIcon,
						ImageColor3 = style.Theme.IconEmphasis.Color,
					}),

				TextBox = Roact.createElement("TextBox", {
					Size = UDim2.new(1, -textBoxSizeOffset, 1, 0),
					Position = UDim2.new(0, TEXT_BOX_OFFSET, 0, 0),
					PlaceholderText = "",
					Text = self.state.searchText,
					ClearTextOnFocus = false,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

					TextColor3 = textTheme.Color,
					TextTransparency = textTheme.Transparency,
					Font = textFont.Font,
					TextSize = textFont.RelativeSize * style.Font.BaseSize,
					TextWrapped = false,

					SelectionImageObject = getSelectionCursor(CursorKind.InputFields),

					[Roact.Change.Text] = function(rbx)
						if self.state.searchText ~= rbx.Text then
							self:setState({
								searchText = rbx.Text,
							})
							self.props.searchUpdated(rbx.Text)
						end
					end,
					[Roact.Ref] = self.props.itemRef,
				}),

				--TextBox.PlaceholderText can't be used as it's text transparency can't be changed.
				PlaceholderText = Roact.createElement(ThemedTextLabel, {
					themeKey = "TextEmphasis",
					fontKey = "Body",
					Text = localized.searchPlaceholder,
					Size = UDim2.new(1, -TEXT_BOX_OFFSET, 1, 0),
					Position = UDim2.new(0, TEXT_BOX_OFFSET, 0, 0),
					TextTransparency = 0.5,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 2,
					Visible = self.state.searchText == "",
				}),

				ClearButton = clearButton,
			})
		end)
	end)
end

function SearchBox:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return SearchBox
