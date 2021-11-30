local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local CalloutController = require(Plugin.Src.Utility.CalloutController)

local TeachingCallout = Roact.PureComponent:extend("TeachingCallout")

function TeachingCallout:init()
	self.targetRef = Roact.createRef()
end

function TeachingCallout:didMount()
	self._isMounted = true

	-- Wrap in a spawn because:
	-- - The target isn't a descendant of the dock widget immediately
	-- - We want the latest position and size properties
	-- - Creation of the render widget inside the dock widget in C++ is delayed but we need it to position the callout
	spawn(function()
		if not self._isMounted or not self.targetRef or not self.targetRef.current then
			return
		end

		self._attachedDefinitionId = self.props.DefinitionId
		self.props.CalloutController:attachCallout(self._attachedDefinitionId , self.props.LocationId, self.targetRef.current)
	end)
end

function TeachingCallout:willUnmount()
	self._isMounted = false
	if self._attachedDefinitionId then
		self.props.CalloutController:detachCalloutsByDefinitionId(self._attachedDefinitionId)
	end
end

function TeachingCallout:render()
	local offset = self.props.Offset or Vector2.new(0, 0)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, offset.X, 0, offset.Y),
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Ref] = self.targetRef,
	})
end

TeachingCallout = withContext({
	CalloutController = CalloutController,
})(TeachingCallout)

return TeachingCallout
