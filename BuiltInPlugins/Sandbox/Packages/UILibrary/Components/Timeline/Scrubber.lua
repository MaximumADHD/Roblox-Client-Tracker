--[[
	Generic implementation of a Scrubber for a Timeline

	Properties:
		UDim2 Position = position of the scrubber head
		UDim2 HeadSize = size of the scrubber head
		float Height = length of the scrubber line
		bool ShowHead = whether or not the scrubber head is visible
		Vector2 AnchorPoint = anchor point for the Scrubber component
		int ZIndex = display order of the scrubber component
		int thickness = pixel width of the scrubber line

		function onDragBegan = listener for when user begins dragging scrubber head
		function onDragMoved = listener for when user is actively dragging scrubber head
		function onDragEnded = listener for when user has let go of the scrubber head
]]

local Library = script.Parent.Parent.Parent
local Roact = require(Library.Parent.Roact)
local Theming = require(Library.Theming)
local DragTarget = require(Library.Components.DragTarget)
local withTheme = Theming.withTheme

local Scrubber = Roact.PureComponent:extend("Scrubber")

function Scrubber:init()
	self.state = {
		Dragging = false,
	}

	self.onDragBegan = function(rbx, input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType then
			self:setState({
				Dragging = true,
			})
			if self.props.onDragBegan then
				self.props.onDragBegan(rbx, input)
			end
		end
	end

	self.onDragMoved = function(input)
		if self.state.Dragging and self.props.onDragMoved then
			self.props.onDragMoved(input)
		end
	end

	self.onDragEnded = function()
		self:setState({
			Dragging = false,
		})
		if self.props.onDragEnded then
			self.props.onDragEnded()
		end
	end
end

function Scrubber:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local position = props.Position
		local headSize = props.HeadSize
		local height = props.Height
		local showHead = props.ShowHead
		local anchorPoint = props.AnchorPoint
		local zIndex = props.ZIndex
		local thickness = props.Thickness

		local children = props[Roact.Children]
		if not children then
			children = {}
		end
		if showHead then
			table.insert(children, Roact.createElement("ImageLabel", {
				Image = theme.scrubber.image,
				ImageColor3 = theme.scrubber.backgroundColor,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = zIndex,
			}))
		end

		table.insert(children, Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0, 0),
			Size = UDim2.new(0, thickness, 0, height),
			AnchorPoint = Vector2.new(0.5, 0),
			ZIndex = zIndex,
			BorderSizePixel = 0,
		}))

		if state.Dragging then
			table.insert(children, Roact.createElement(DragTarget, {
				OnDragMoved = self.onDragMoved,
				OnDragEnded = self.onDragEnded,
			}))
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = position,
			Size = headSize,
			AnchorPoint = anchorPoint,
			[Roact.Event.InputBegan] = self.onDragBegan,
		}, children)
	end)
end

return Scrubber