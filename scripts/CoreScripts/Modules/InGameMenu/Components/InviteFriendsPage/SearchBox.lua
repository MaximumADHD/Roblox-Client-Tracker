local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local TEXT_BOX_OFFSET = 44

local Assets = require(InGameMenu.Resources.Assets)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button

local SearchBox = Roact.PureComponent:extend("SearchBox")

SearchBox.validateProps = t.strictInterface({
	Size = t.UDim2,
	Position = t.UDim2,
	AnchorPoint = t.Vector2,
	searchUpdated = t.callback,
})

function SearchBox:init()
	self.state = {
		searchText = "",
	}
end

function SearchBox:render()
	return withLocalization({
		searchPlaceholder = "CoreScripts.InGameMenu.InviteFriends.Search",
	})(function(localized)
		return withStyle(function(style)
			local textTheme = style.Theme.TextEmphasis
			local textFont = style.Font.Body

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

				SearchIcon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 16, 0, 16),
					Position = UDim2.new(0, 22, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = Assets.Images.SearchIcon,
					ImageColor3 = style.Theme.IconEmphasis.Color,
				}),

				TextBox = Roact.createElement("TextBox", {
					Size = UDim2.new(1, -TEXT_BOX_OFFSET, 1, 0),
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

					[Roact.Change.Text] = function(rbx)
						if self.state.searchText ~= rbx.Text then
							self:setState({
								searchText = rbx.Text,
							})
							self.props.searchUpdated(self.state.searchText)
						end
					end,
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

				ClearButton = Roact.createElement(ImageSetButton, {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(1, -14, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundTransparency = 1,
					Image = Assets.Images.ClearIcon,
					ImageColor3 = style.Theme.IconEmphasis.Color,
					Visible = self.state.searchText ~= "",
					[Roact.Event.Activated] = function()
						self:setState({
							searchText = "",
						})
						self.props.searchUpdated("")
					end,
				}),
			})
		end)
	end)
end

return SearchBox