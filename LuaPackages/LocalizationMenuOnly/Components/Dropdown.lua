local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Modalifier = require(script.Parent.Modalifier)

local Dropdown = Roact.Component:extend("Dropdown")

function Dropdown:init()
	self.state = {
		Open = false,
		Hovered = false,
	}
end

function Dropdown:render()
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
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				TextColor3 = self.props.TextColor3,
				Text = "",
				BackgroundColor3 = self.props.BackgroundColor3,

				[Roact.Event.Activated] = function()
					listItem.OnActivated()
					self:setState({
						Open = false,
					})
				end,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 4),
				}),

				Text = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					TextColor3 = self.props.TextColor3,
					Size = UDim2.new(1, 0, 1, 0),
					Text = listItem.Text,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
		})
	end

	local visibleChildren

	if self.state.Open then
		visibleChildren = {
			Button = Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderColor3 = self.props.BorderColor3,
				AutoButtonColor = false,
				BackgroundTransparency = 0,
				Text = "",
				BackgroundColor3 = self.props.ButtonDownColor3,
				TextXAlignment = Enum.TextXAlignment.Left,

				[Roact.Event.Activated] = function()
					self:setState({
						Open = false,
					})
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
					TextColor3 = self.props.TextColor3,
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
					self:setState({
						Open = false,
					})
				end,
				Render = function(position)
					return Roact.createElement("Frame", {
						Position = UDim2.new(0, position.X, 0, position.Y + self.props.ListItemHeight),
						Size = UDim2.new(0, 160, 0, #(self.props.ListItems) * self.props.ListItemHeight),
						BackgroundTransparency = 0,
						BackgroundColor3 = self.props.BackgroundColor3,
						BorderColor3 = self.props.BorderColor3,
					}, listChildren)
				end,
			}),
		}
	else
		visibleChildren = {
			Button = Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderColor3 = self.props.BorderColor3,
				AutoButtonColor = false,
				BackgroundTransparency = 0,
				BackgroundColor3 = self.state.Hovered and self.props.ButtonHoverColor3 or self.props.BackgroundColor3,
				Text = "",
				TextXAlignment = Enum.TextXAlignment.Left,

				[Roact.Event.Activated] = function()
					self:setState({
						Open = true,
						Hovered = false,
					})
				end,

				[Roact.Event.InputBegan] = function(gui, input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						self:setState({
							Hovered = true,
						})
					end
				end,

				[Roact.Event.InputEnded] = function(gui, input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						self:setState({
							Hovered = false,
						})
					end
				end,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 4),
				}),

				TextLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					TextColor3 = self.props.TextColor3,
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
end

return Dropdown
