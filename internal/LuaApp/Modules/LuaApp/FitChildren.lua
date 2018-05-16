local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Immutable = require(Modules.Common.Immutable)
local Symbol = require(Modules.Common.Symbol)

local FitChildren = {}

FitChildren.FitAxis = {
	Width = Symbol.named("Width"),
	Height = Symbol.named("Height"),
	Both = Symbol.named("Both"),
}

function FitChildren.wrap(component)
	local connection = Roact.PureComponent:extend(("FitChildren(%s)"):format(tostring(component)))

	function connection:disconnectSignals()
		for _, signal in ipairs(self.signals) do
			signal:Disconnect()
		end
	end

	function connection:resize()
		local fitFields = self.props.fitFields
		if not fitFields then
			if self.props.fitAxis then
				fitFields = {
					Size = self.props.fitAxis,
				}
			else
				fitFields = {
					Size = FitChildren.FitAxis.Both,
				}
			end
		end

		self:disconnectSignals()
		self.signals = {}

		local uiLayout = self.frame:FindFirstChildWhichIsA("UIGridStyleLayout")
		if uiLayout then
			-- The UIListLayout.AbsoluteContentSize isn't yet populated when didMount is called, so we need to use
			-- a property changed signal to update the size as soon as it is populated. This is also important in
			-- case it an element moves and AbsoluteContentSize changes.
			local connection = uiLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				local size = uiLayout.AbsoluteContentSize
				self:applyFit(fitFields, size.x, size.y)
			end)
			table.insert(self.signals, connection)
		else
			self:resizeFromChildren(fitFields)

			-- Need to respond to the children changing size or position later, and redo the sizing.
			local children = self.frame:GetChildren()
			for _, child in ipairs(children) do
				if child:IsA("GuiBase2d") then
					local sizeConnection = child:GetPropertyChangedSignal("Size"):Connect(function()
						child:GetPropertyChangedSignal("AbsoluteSize"):Wait()
						self:resizeFromChildren(fitFields)
					end)
					table.insert(self.signals, sizeConnection)
					local posConnection = child:GetPropertyChangedSignal("Position"):Connect(function()
						child:GetPropertyChangedSignal("AbsolutePosition"):Wait()
						self:resizeFromChildren(fitFields)
					end)
					table.insert(self.signals, posConnection)
				end
			end
		end
	end

	function connection:resizeFromChildren(fitFields)
		local basePos = self.frame.AbsolutePosition
		local children = self.frame:GetChildren()
		local maxx = 0
		local maxy = 0
		for _, child in ipairs(children) do
			if child:IsA("GuiBase2d") then
				local childSize = child.AbsoluteSize
				local childPos = child.AbsolutePosition
				maxx = math.max(maxx, (childPos.x - basePos.x) + childSize.x)
				maxy = math.max(maxy, (childPos.y - basePos.y) + childSize.y)
			end
		end
		self:applyFit(fitFields, maxx, maxy)
	end

	function connection:applyFit(fitFields, x, y)
		local padding = self.frame:FindFirstChildOfClass("UIPadding")
		local baseSize = self.props.Size or UDim2.new(0, 0, 0, 0)
		local axisWidth = FitChildren.FitAxis.Width
		local axisHeight = FitChildren.FitAxis.Height

		local function calculateAxis(fitAxis, fitAxisAgainst, baseValue, baseDims, padding1, padding2)
			local doFit = fitAxis == fitAxisAgainst or fitAxis == FitChildren.FitAxis.Both
			local fitScale, fitOffset
			if doFit then
				fitScale = 0
				if padding then
					local paddingScale = padding[padding1].Scale + padding[padding2].Scale
					local paddingOffset = padding[padding1].Offset + padding[padding2].Offset
					if paddingScale == 1 then
						error("Can not apply FitChildren to a component with 100% padding width")
					else
						fitOffset = (baseValue + paddingOffset) / (1 - paddingScale)
					end
				else
					fitOffset = baseValue
				end
			else
				fitScale = baseDims.Scale
				fitOffset = baseDims.Offset
			end
			return fitScale, fitOffset
		end

		for field, axis in pairs(fitFields) do
			local xScale, xOffset = calculateAxis(axis, axisWidth, x, baseSize.X, "PaddingLeft", "PaddingRight")
			local yScale, yOffset = calculateAxis(axis, axisHeight, y, baseSize.Y, "PaddingTop", "PaddingBottom")

			self.frame[field] = UDim2.new(xScale, xOffset, yScale, yOffset)
		end
	end

	function connection:init()
		self.signals = {}

		self.ref = function(rbx)
			self.frame = rbx
			if self.props[Roact.Ref] then
				self.props[Roact.Ref](rbx)
			end
		end
	end

	function connection:render()
		local frameProps = Immutable.RemoveFromDictionary(self.props, "fitAxis", "fitFields")
		frameProps[Roact.Ref] = self.ref

		return Roact.createElement(component, frameProps)
	end

	function connection:didMount()
		self:resize()
	end

	function connection:didUpdate()
		self:resize()
	end

	function connection:willUnmount()
		self:disconnectSignals()
	end

	return connection
end

FitChildren.FitFrame = FitChildren.wrap("Frame")
FitChildren.FitScrollingFrame = FitChildren.wrap("ScrollingFrame")

return FitChildren