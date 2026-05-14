local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Wrappers = require(Foundation.Utility.Wrappers)
local Signal = Wrappers.Signal
local Connection = Wrappers.Connection

local function usePointerPosition(guiObject: GuiObject?): React.Binding<Vector2>
	local position, setPosition = React.useBinding(Vector2.zero)

	React.useEffect(function()
		if not guiObject then
			return
		end

		local function setPositionFromInput(input: InputObject)
			if input.Position.X > 0 or input.Position.Y > 0 then
				setPosition(Vector2.new(input.Position.X, input.Position.Y))
			end
		end

		local connections: { RBXScriptConnection } = {
			Signal.Connect(guiObject.InputBegan, setPositionFromInput),
			Signal.Connect(guiObject.InputChanged, setPositionFromInput),
			Signal.Connect(guiObject.InputEnded, setPositionFromInput),
		}

		return function()
			for _, connection in connections do
				Connection.Disconnect(connection)
			end
		end
	end, { guiObject })

	return position
end

return usePointerPosition
