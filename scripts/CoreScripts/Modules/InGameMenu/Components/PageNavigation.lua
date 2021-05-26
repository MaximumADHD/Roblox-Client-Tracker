local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Otter = InGameMenuDependencies.Otter
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local InGameMenu = script.Parent.Parent

local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Pages = require(script.Parent.Pages)
local ThemedTextLabel = require(script.Parent.ThemedTextLabel)
local Divider = require(script.Parent.Divider)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local FFlagFixInGameNavTreeCrash = require(InGameMenu.Flags.FFlagFixInGameNavTreeCrash)

local NAV_BUTTON_HEIGHT = 70
-- The left indent on divider lines
local DIVIDER_INDENT = 24
-- The size of a navigation button icon
local NAV_ICON_SIZE = 36
-- The left padding of a navigation button icon
local NAV_ICON_LEFT_PADDING = 28
-- The padding between navigation button icon and text
local NAV_ICON_TEXT_PADDING = 16
-- The right padding of navigation button text
local NAV_TEXT_RIGHT_PADDING = 24
local TEXT_SIZE_INSET = NAV_ICON_LEFT_PADDING + NAV_ICON_SIZE + NAV_ICON_TEXT_PADDING + NAV_TEXT_RIGHT_PADDING

local NavigationButton = Roact.PureComponent:extend("NavigationButton")

function NavigationButton:init(props)
	local startingFillProgress = props.selected and 1 or 0
	local fillProgress, setFillProgress = Roact.createBinding(startingFillProgress)

	self.fillSize = fillProgress:map(function(value)
		return UDim2.new(value, 0, 1, 0)
	end)

	local startingHoverTransparency = 0
	self.hoverTransparency, self.setHoverTransparency = Roact.createBinding(startingHoverTransparency)

	self.motor = Otter.createGroupMotor({
		fillProgress = startingFillProgress,
		hoverTransparency = startingHoverTransparency
	})

	self.motor:onStep(function(values)
		setFillProgress(values.fillProgress)
		self.setHoverTransparency(values.hoverTransparency)
	end)

	self:setState({
		hovering = false,
		pressing = false,
	})
end

function NavigationButton:render()
	local props = self.props

	return withLocalization({
		text = props.text,
	})(function(localized)
		return withStyle(function(style)
			local showPressEffect = self.state.pressing and not props.selected
			local buttonFill = {
				Transparency = 1,
				Color = Color3.new(1, 1, 1),
			}

			if self.state.pressing then
				buttonFill = style.Theme.BackgroundOnPress
			elseif self.state.hovering then
				buttonFill = style.Theme.BackgroundOnHover
			end

			return Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundTransparency = buttonFill.Transparency,
				BackgroundColor3 = buttonFill.Color,
				BorderSizePixel = 0,
				LayoutOrder = props.LayoutOrder,
				Size = UDim2.new(1, 0, 0, NAV_BUTTON_HEIGHT),
				Text = "",
				[Roact.Event.Activated] = props.onActivated,
				[Roact.Event.MouseEnter] = function()
					self:setState({
						hovering = true,
					})
				end,
				[Roact.Event.MouseLeave] = function()
					self:setState({
						hovering = false,
						pressing = false,
					})
				end,
				[Roact.Event.InputBegan] = function(_, input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						self:setState({
							pressing = true,
						})
					end
				end,
				[Roact.Event.InputEnded] = function(_, input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						self:setState({
							pressing = false,
						})
					end
				end,
			}, {
				ContentContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ZIndex = 3,
					BackgroundTransparency = 1,
				}, {
					Icon = Roact.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
						Image = props.image,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						ImageTransparency = divideTransparency(style.Theme.IconEmphasis.Transparency, showPressEffect and 2 or 1),
						Position = UDim2.new(0, NAV_ICON_LEFT_PADDING, 0.5, 0),
						Size = UDim2.new(0, NAV_ICON_SIZE, 0, NAV_ICON_SIZE),
						ZIndex = 3,
					}),
					Text = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",

						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, NAV_ICON_LEFT_PADDING + NAV_ICON_SIZE + NAV_ICON_TEXT_PADDING, 0.5, 0),
						Size = UDim2.new(1, -TEXT_SIZE_INSET, 1, 0),
						Text = localized.text,
						TextTransparency = divideTransparency(style.Theme.TextEmphasis.Transparency, showPressEffect and 2 or 1),
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 3,
					}),
				}),
				SelectedFill = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = self.fillSize,
					BackgroundColor3 = style.Theme.BackgroundMuted.Color,
					ZIndex = 2,
				}),
			})
		end)
	end)
end

function NavigationButton:didUpdate()
	self.motor:setGoal({
		fillProgress = Otter.spring(self.props.selected and 1 or 0, {
			frequency = 2.5,
		}),
		hoverTransparency = Otter.spring(self.state.hovering and 1 or 0, {
			frequency = 5,
		}),
	})
end

local function PageNavigation(props)
	local frameChildren = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		})
	}

	local pageCount = #Pages.pagesByIndex

	local layoutOrder = 1
	for index, page in ipairs(Pages.pagesByIndex) do
		if FFlagFixInGameNavTreeCrash then
			-- We want to add nav buttons for subpages of the main menu only
			if page.parentPage == Constants.MainPagePageKey then
				frameChildren["Page" .. page.key] = Roact.createElement(NavigationButton, {
					image = page.icon,
					LayoutOrder = layoutOrder,
					selected = props.currentPage == page.key,
					text = page.title,
					onActivated = function()
						props.setCurrentPage(page.key)
					end,
				})

				layoutOrder = layoutOrder + 1

				if index < pageCount then
					frameChildren["Divider" .. layoutOrder] = Roact.createElement(Divider, {
						LayoutOrder = layoutOrder,
						Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1)
					})

					layoutOrder = layoutOrder + 1
				end
			end
		else
			if page.navigationDepth == 2 then
				frameChildren["Page" .. page.key] = Roact.createElement(NavigationButton, {
					image = page.icon,
					LayoutOrder = layoutOrder,
					selected = props.currentPage == page.key,
					text = page.title,
					onActivated = function()
						props.setCurrentPage(page.key)
					end,
				})

				layoutOrder = layoutOrder + 1

				if index < pageCount then
					frameChildren["Divider" .. layoutOrder] = Roact.createElement(Divider, {
						LayoutOrder = layoutOrder,
						Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1)
					})

					layoutOrder = layoutOrder + 1
				end
			end
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = props.Position,
		-- pageCount nav buttons, plus pageCount - 1 dividers (which are 1px tall)
		Size = UDim2.new(1, 0, 0, pageCount * NAV_BUTTON_HEIGHT + (pageCount - 1)),
	}, frameChildren)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		currentPage = state.menuPage,
	}
end, function(dispatch)
	return {
		setCurrentPage = function(pageKey)
			dispatch(SetCurrentPage(pageKey))
			SendAnalytics( "open_" .. pageKey .. "_tab", Constants.AnalyticsMenuActionName, {})
		end,
	}
end)(PageNavigation)
