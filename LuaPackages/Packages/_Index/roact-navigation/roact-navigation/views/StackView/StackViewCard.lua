local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local validate = require(script.Parent.Parent.Parent.utils.validate)

--[[
	Render a scene as a card for use in a StackView. This component is
	responsible for correctly positioning the scene content in relation
	to the other scenes. The content will be rendered inside a completely
	transparent Frame whose position and size are controlled by the
	transition logic. Any additional visual effects must be supplied by
	the container or the child element created by renderScene().

	Props:
		renderScene(scene)	-- Render prop to draw the scene inside the card.
		initialPosition		-- Starting position for the card. (Animated by Otter from there).
		positionStep 		-- Stepper function from StackViewInterpolator.
		position			-- Otter motor for the position of the card.
		scene				-- Scene that the card is to render.
		forceHidden			-- Forcibly disable card rendering (e.g. animated off-screen).
		transparent			-- Card allows underlying content to show through (default: false).
		cardColor3			-- Color of the card background if it's not transparent (default: engine setting).
]]
local StackViewCard = Roact.Component:extend("StackViewCard")

StackViewCard.defaultProps = {
	transparent = false,
}

function StackViewCard:init()
	local currentNavIndex = self.props.navigation.state.index

	self._isMounted = false
	self._positionLastValue = currentNavIndex

	local selfRef = Roact.createRef()
	self._getRef = function()
		return self.props[Roact.Ref] or selfRef
	end
end

function StackViewCard:render()
	local forceHidden = self.props.forceHidden
	local cardColor3 = self.props.cardColor3
	local transparent = self.props.transparent
	local initialPosition = self.props.initialPosition
	local renderScene = self.props.renderScene
	local scene = self.props.scene

	validate(type(renderScene) == "function", "renderScene must be a function")

	return Roact.createElement("Frame", {
		Position = initialPosition,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = cardColor3 or nil,
		BackgroundTransparency = transparent and 1 or nil,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Visible = not forceHidden,
		[Roact.Ref] = self:_getRef(),
	}, {
		["$content"] = renderScene(scene),
	})
end

function StackViewCard:didMount()
	self._isMounted = true

	local position = self.props.position
	self._positionDisconnector = position:onStep(function(...)
		self:_onPositionStep(...)
	end)
end

function StackViewCard:willUnmount()
	self._isMounted = false

	if self._positionDisconnector then
		self._positionDisconnector()
		self._positionDisconnector = nil
	end
end

function StackViewCard:didUpdate(oldProps)
	local position = self.props.position
	local positionStep = self.props.positionStep

	if position ~= oldProps.position then
		self._positionDisconnector()
		self._positionDisconnector = position:onStep(function(...)
			self:_onPositionStep(...)
		end)
	end

	if positionStep ~= oldProps.positionStep then
		-- The motor won't fire just because stepper function has changed. We have to
		-- update the position to match new requirements based upon last motor value.
		self:_onPositionStep(self._positionLastValue)
	end
end

function StackViewCard:_onPositionStep(value)
	if not self._isMounted then
		return
	end

	local positionStep = self.props.positionStep

	if positionStep then
		positionStep(self:_getRef(), value)
	end

	self._positionLastValue = value
end

return StackViewCard
