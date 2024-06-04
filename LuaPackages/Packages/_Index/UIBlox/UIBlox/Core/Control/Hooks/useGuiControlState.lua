local Hooks = script.Parent
local Control = Hooks.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useForwardRef = ReactUtils.useForwardRef
local ControlStateEnum = require(UIBlox.Core.Control.Enum.ControlState)
local ControlStateEventEnum = require(UIBlox.Core.Control.Enum.ControlStateEvent)

local createGuiControlStateTable = require(UIBlox.Core.Control.createGuiControlStateTable)

type Table = { [any]: any }
type ControlState = ControlStateEnum.ControlState
type ControlStateEvent = ControlStateEventEnum.ControlStateEvent
export type ControlStateChangedCallback = createGuiControlStateTable.onGuiControlStateChange

local function useGuiControlState(
	-- The ref to the GuiObject that will be connected to control the state. For now, this guiObject must be a TextButton or ImageButton
	guiObjectRef: React.Ref<Instance>,

	-- The callback that will be called when the control state changes
	onStateChanged: ControlStateChangedCallback,

	userInteractionEnabled: boolean
)
	local previousGuiState = React.useRef(ControlStateEnum.Initialize)
	local interactionEnabled = React.useRef(userInteractionEnabled)

	-- Due to UISYS-3043 and UISYS-3045 Hover will be handled using MouseEnter and MouseLeave instead of GuiState
	local hoverState = React.useRef(false)

	local onGuiControlStateChanged = React.useCallback(function(oldState: ControlState, newState: ControlState)
		previousGuiState.current = newState
		onStateChanged(oldState, newState)
	end, { onStateChanged } :: { any })

	local guiStateTable = React.useMemo(function()
		return createGuiControlStateTable(onGuiControlStateChanged)
	end, {})

	React.useEffect(function()
		guiStateTable:onStateChange(onGuiControlStateChanged)
	end, { onGuiControlStateChanged })

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
						guiStateTable.events[ControlStateEventEnum.PrimaryPressed]()
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
						guiStateTable.events[ControlStateEventEnum.PrimaryReleasedHover]()
					elseif
						inputObject.UserInputType == Enum.UserInputType.Touch
						or inputObject.KeyCode == Enum.KeyCode.ButtonA
						or inputObject.KeyCode == Enum.KeyCode.Return
					then
						guiStateTable.events[ControlStateEventEnum.PrimaryReleased]()
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
					guiStateTable.events[ControlStateEventEnum.SelectionGained]()
				end)
			)
			table.insert(
				connections,
				instance.SelectionLost:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					guiStateTable.events[ControlStateEventEnum.SelectionLost]()
				end)
			)

			-- Due to UISYS-3043 and UISYS-3045 Hover will be handled using MouseEnter and MouseLeave instead of GuiState
			table.insert(
				connections,
				instance.MouseEnter:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					hoverState.current = true
					guiStateTable.events[ControlStateEventEnum.PointerHover]()
				end)
			)
			table.insert(
				connections,
				instance.MouseLeave:Connect(function()
					if not interactionEnabled.current then
						return nil
					end
					hoverState.current = false
					guiStateTable.events[ControlStateEventEnum.PointerHoverEnd]()
				end)
			)
		end

		return function()
			for _, connection in ipairs(connections) do
				connection:Disconnect()
			end
		end
	end, { guiStateTable, hoverState } :: { any })

	React.useEffect(function()
		interactionEnabled.current = userInteractionEnabled
	end, { userInteractionEnabled })

	return useForwardRef(guiObjectRef, onRefChange), guiStateTable
end

return useGuiControlState
