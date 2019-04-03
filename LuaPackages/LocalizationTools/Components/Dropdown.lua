local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local Modalifier = require(script.Parent.Modalifier)
local Dropdown = Roact.Component:extend("Dropdown")

function Dropdown:init()
	self.state = {
		Open = false,
		Hovered = false,
	}
end

function Dropdown:_setHovered(value)
	self:setState(function(previousState)
		if previousState.Hovered ~= value then
			return { Hovered = value }
		end
	end)
end

function Dropdown:_setOpen(value)
	self:setState(function(previousState)
		if previousState.Open ~= value then
			return { Open = value }
		end
	end)
end

function Dropdown:render()
	return Theming.withTheme(function(theme)
		local visibleChildren

		if self.state.Open then
			local listChildren = {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
			}

			for index, listItem in ipairs(self.props.ListItems) do
				listChildren["ListObject"..index] = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, self.props.ListItemHeight),
					LayoutOrder = index,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, 4),
					}),

					Button = Roact.createElement("TextButton", {
						Size = UDim2.new(1, 0, 1, 0),
						TextColor3 = theme.BrightText,
						BackgroundColor3 = theme.MainBackground,
						BorderSizePixel = 0,
						Text = "",

						[Roact.Event.Activated] = function()
							listItem.OnActivated()
							self:_setOpen(false)
						end,
					}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, 4),
						}),

						Text = Roact.createElement("TextLabel", {
							BackgroundTransparency = 1,
							TextColor3 = theme.BrightText,
							Size = UDim2.new(1, 0, 1, 0),
							Text = listItem.Text,
							TextXAlignment = Enum.TextXAlignment.Left,
						}),
					}),
				})
			end

			visibleChildren = {
				Button = Roact.createElement("TextButton", {
					Size = UDim2.new(1, 0, 1, 0),
					BorderColor3 = theme.Border,
					AutoButtonColor = false,
					BackgroundTransparency = 0,
					Text = "",
					BackgroundColor3 = theme.Pressed,
					TextXAlignment = Enum.TextXAlignment.Left,

					[Roact.Event.Activated] = function()
						self:_setOpen(false)
					end,

					-- Empty functions here work around bug-147 in Roact
					[Roact.Event.InputBegan] = function()
					end,

					[Roact.Event.InputEnded] = function()
					end,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 4),
					}),

					TextLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						TextColor3 = theme.BrightText,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = self.props.CurrentText,
					}),

					Arrow = Roact.createElement("ImageLabel", {
						Position = UDim2.new(1, -15, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 5, 0, 3),
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
						Image = "rbxasset://textures/menuDownArrow.png",
					}),
				}),

				Modalifier = Roact.createElement(Modalifier, {
					Window = self.props.Window,
					OnClosed = function()
						self:_setOpen(false)
					end,
					Render = function(position)
						return Roact.createElement("Frame", {
							Position = UDim2.new(0, position.X, 0, position.Y + self.props.ListItemHeight),
							Size = UDim2.new(0, 170, 0, #(self.props.ListItems) * self.props.ListItemHeight),
							BackgroundTransparency = 0,
							BackgroundColor3 = theme.MainBackground,
							BorderColor3 = theme.Border,
						}, listChildren)
					end,
				}),
			}
		else
			visibleChildren = {
				Button = Roact.createElement("TextButton", {
					Size = UDim2.new(1, 0, 1, 0),
					BorderColor3 = theme.Border,
					AutoButtonColor = false,
					BackgroundTransparency = 0,
					BackgroundColor3 = self.state.Hovered and theme.Hover or theme.MainBackground,
					Text = "",
					TextXAlignment = Enum.TextXAlignment.Left,

					[Roact.Event.Activated] = function()
						self:_setOpen(true)
						self:_setHovered(false)
					end,

					[Roact.Event.InputBegan] = function(gui, input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							self:_setHovered(true)
						end
					end,

					[Roact.Event.InputEnded] = function(gui, input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							self:_setHovered(false)
						end
					end,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 4),
					}),

					TextLabel = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						TextColor3 = theme.BrightText,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = self.props.CurrentText,
					}),

					Arrow = Roact.createElement("ImageLabel", {
						Position = UDim2.new(1, -15, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 5, 0, 3),
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
						Image = "rbxasset://textures/menuDownArrow.png",
					}),
				}),
			}
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
		}, visibleChildren)

	end)
end

return Dropdown
