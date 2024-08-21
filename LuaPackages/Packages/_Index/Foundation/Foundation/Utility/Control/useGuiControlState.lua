local Control = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useForwardRef = ReactUtils.useForwardRef
local ControlState = require(Foundation.Enums.ControlState)
local ControlStateEvent = require(Foundation.Enums.ControlStateEvent)

local createGuiControlStateTable = require(Control.createGuiControlStateTable)

type ControlState = ControlState.ControlState
type ControlStateEvent = ControlStateEvent.ControlStateEvent
type StateChangedCallback = createGuiControlStateTable.onGuiControlStateChange

local function useGuiControlState(
	guiObjectRef: React.Ref<Instance>,
	onStateChanged: StateChangedCallback,
	userInteractionEnabled: boolean
)
	local interactionEnabled = React.useRef(userInteractionEnabled)

	local guiStateTable = React.useMemo(function()
		return createGuiControlStateTable(onStateChanged)
	end, {})

	React.useEffect(function()
		guiStateTable:onStateChange(onStateChanged)
	end, { onStateChanged })

	local onRefChange = React.useCallback(function(instance: GuiObject)
		local connections: { RBXScriptConnection } = {}
		if instance then
			-- Due to bugs with hover we will not listen to GuiState changes for now
			--[[
			table.insert(
				connections,
				instance:GetPropertyChangedSignal("GuiState"):Connect(function()
					if not interactionEnabled then
						return nil
					end
				end)
			)
			]]

			-- listen to InputBegan and InputEnded to handle Pressed and Released
			table.insert(
				connections,
				instance.InputBegan:Connect(function(inputObject: InputObject)
					if not interactionEnabled.current then
						return nil
					end
					if
						inputObject.UserInputType == Enum.UserInputType.MouseButton1
						or inputObject.UserInputType == Enum.UserInputType.Touch
						or inputObject.KeyCode == Enum.KeyCode.ButtonA
						or inputObject.KeyCode == Enum.KeyCode.Return
					then
						guiStateTable.events.PrimaryPressed()
					end
				end)
			)
			table.insert(
				connections,
				instance.InputEnded:Connect(function(inputObject: InputObject)
					if not interactionEnabled.current then
						return nil
					end
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						guiStateTable.events.PrimaryReleasedHover()
					elseif
						inputObject.UserInputType == Enum.UserInputType.Touch
						or inputObject.KeyCode == Enum.KeyCode.ButtonA
						or inputObject.KeyCode == Enum.KeyCode.Return
					then
						guiStateTable.events.PrimaryReleased()
					end
				end)
			)

			-- Selected state is not part of GuiState, so we need to handle it separately with SelectionGained and SelectionLost
			table.insert(
				connections,
				instance.SelectionGained:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					guiStateTable.events.SelectionGained()
				end)
			)
			table.insert(
				connections,
				instance.SelectionLost:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					guiStateTable.events.SelectionLost()
				end)
			)

			-- Due to UISYS-3043 and UISYS-3045 Hover will be handled using MouseEnter and MouseLeave instead of GuiState
			table.insert(
				connections,
				instance.MouseEnter:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					guiStateTable.events.PointerHover()
				end)
			)
			table.insert(
				connections,
				instance.MouseLeave:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					guiStateTable.events.PointerHoverEnd()
				end)
			)
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { guiStateTable })

	React.useEffect(function()
		interactionEnabled.current = userInteractionEnabled
	end, { userInteractionEnabled })

	return useForwardRef(guiObjectRef, onRefChange), guiStateTable
end

return useGuiControlState
