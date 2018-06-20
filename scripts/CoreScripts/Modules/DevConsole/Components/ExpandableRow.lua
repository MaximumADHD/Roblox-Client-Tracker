local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local ArrowWidth = Constants.GeneralFormatting.ArrowWidth
local Arrow = Constants.Image.Arrow

local ExpandableRow = Roact.Component:extend("ExpandableRow")

function ExpandableRow:init()
	self.state = {
		isExpanded = false
	}
end

function ExpandableRow:render()
	local size = self.props.size
	local pos = self.props.pos
	local isExpanded = self.state.isExpanded or self.props.isExpanded
	local expandParent = self.props.expandParent
	local rotation = 0

	if isExpanded then
		rotation = 90
	end

	return Roact.createElement("ImageButton", {
			Size = size,
			Position = pos,
			BackgroundTransparency = 1,

			[Roact.Event.Activated] = function(rbx)
				local isNowExpanded = not isExpanded
				self:setState({
						isExpanded = isNowExpanded
					})
				if expandParent then
					expandParent(isNowExpanded)
				end
			end,
		},{
			arrow = Roact.createElement("ImageLabel", {
				Image = Arrow,
				BackgroundTransparency = 1,
				Rotation = rotation,
				Size = UDim2.new(0, ArrowWidth, 0, ArrowWidth),
				Position = UDim2.new(0, 0, .5, -ArrowWidth / 2),
			})
		})
end

return ExpandableRow