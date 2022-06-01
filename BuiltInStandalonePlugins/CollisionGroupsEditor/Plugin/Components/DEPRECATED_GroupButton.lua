local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

local choose = require(script.Parent.Parent.DEPRECATED_choose)

local Padding = require(script.Parent.DEPRECATED_Padding)
local ImageButton = require(script.Parent.DEPRECATED_ImageButton)
local Tooltip = require(script.Parent.DEPRECATED_Tooltip)

local GroupButton = Roact.Component:extend("GroupButton")

local newHover do
	local hoverId = 0

	newHover = function()
		hoverId = hoverId + 1
		return hoverId
	end
end

function GroupButton:init()
	self.state = {
		Hovered = false,
	}
end

function GroupButton:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
		Visible = self.props.Visible,
	}, {
		Padding = Roact.createElement(Padding, {Padding = self.props.Padding or UDim.new(0, 4)}),

		Button = Roact.createElement(ImageButton, {
			Image = choose(self.props.HoveredImage, self.props.Image, self.state.Hovered),
			OnActivated = function()
				self.props.OnActivated()
				self:setState{Tooltip = false, Hovered = false}
			end,

			AutoButtonColor = false,
			Modal = true,

			[Roact.Event.MouseEnter] = function(gui, x, y)
				local hover = newHover()

				self:setState{
					Hovered = true,
					Hover = hover,
				}

				-- if we're still hovering here without having moved
				-- after 1 second, we show the tooltip
				delay(1, function()
					if	self.state.Hover == hover and
						self.state.Hovered
					then
						self:setState{
							Tooltip = true,
							TooltipPosition = UDim2.new(0, x, 0, y),
						}
					end
				end)
			end,

			[Roact.Event.MouseLeave] = function(gui)
				self:setState{
					Hovered = false,
					Tooltip = false,
				}
			end,
		}),

		Tooltip = choose(
			Roact.createElement(Tooltip, {
				Message = self.props.TooltipMessage,
				Position = self.state.TooltipPosition,
				Window = self.props.Window,
			}),
			nil,
			self.state.Tooltip
		),
	})
end

return GroupButton