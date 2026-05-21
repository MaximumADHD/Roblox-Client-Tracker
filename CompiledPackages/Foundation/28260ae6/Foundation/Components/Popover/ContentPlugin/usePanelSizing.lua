local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Constants = require(Foundation.Constants)
local PanelTypes = require(Foundation.Providers.StudioPanels.Types)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local React = require(Packages.React)
local positioning = require(script.Parent.Parent.positioning)

type PanelHandle = PanelTypes.PanelHandle
type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

type SideConfig = {
	position: PopoverSide,
	offset: number,
} | PopoverSide

type AlignConfig = {
	position: PopoverAlign,
	offset: number,
} | PopoverAlign

local SHADOW_SIZE = Constants.SHADOW_SIZE

-- Conditionally connects signals, which useEventConnection does not support
local function useConnectSignals(
	instance: Instance?,
	signalNames: { string },
	callbackRef: (() -> ()) | { current: () -> () }
)
	-- lute-lint-ignore(exhaustiveDeps)
	React.useLayoutEffect(function()
		local connections = {}
		if instance ~= nil then
			for _, signalName in signalNames do
				local signal = instance:GetPropertyChangedSignal(signalName)
				connections[signalName] = signal:Connect(if type(callbackRef) == "table"
					then function()
						callbackRef.current()
					end
					else callbackRef)
			end
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { instance, callbackRef } :: { unknown })
end

local function usePanelSizing(
	sideConfig: SideConfig,
	alignConfig: AlignConfig,
	content: GuiObject?,
	arrowSize: number?,
	panel: PanelHandle?
)
	local popoverSize, setPopoverSize = React.useBinding(UDim2.new())
	local contentSize, setContentSize = React.useBinding(UDim2.new())

	local setSizeTask = React.useRef(nil :: thread?)
	local recalculatePositionRef = React.useRef(function() end)

	local recalculatePosition = React.useCallback(function()
		if not content then
			return
		end

		local contentAbsSize = content.AbsoluteSize

		local side: PopoverSide = if type(sideConfig) == "table" then sideConfig.position else sideConfig
		local sideOffset = if type(sideConfig) == "table" then sideConfig.offset else 0
		local alignOffset: number = 0
		if type(alignConfig) == "table" then
			alignOffset = alignConfig.offset
		end

		local arrowOffset = arrowSize or 0

		-- Though this calculation includes side, it doesn't care about switching sides, so we can reuse it
		local popoverBounds =
			positioning.calculatePopoverBounds(side, sideOffset, alignOffset, arrowOffset, contentAbsSize)
		local widgetSize = popoverBounds + Vector2.new(SHADOW_SIZE * 2, SHADOW_SIZE * 2)

		setContentSize(UDim2.fromOffset(contentAbsSize.X, contentAbsSize.Y))
		setPopoverSize(UDim2.fromOffset(widgetSize.X, widgetSize.Y))

		-- Force update re-layout for quantum GUI to prevent jello effect
		-- https://roblox.atlassian.net/wiki/spaces/UIC/pages/1588593391/Quantum+Gui
		local _ = content.AbsolutePosition

		if panel then
			if setSizeTask.current then
				task.cancel(setSizeTask.current)
			end
			setSizeTask.current = task.spawn(function()
				panel.setSizeAsync(widgetSize)
			end)
		end
	end, { content, sideConfig, alignConfig, arrowSize, panel } :: { unknown })

	recalculatePositionRef.current = recalculatePosition
	useConnectSignals(content, { "AbsoluteSize" }, recalculatePositionRef)

	React.useLayoutEffect(function()
		recalculatePosition()
	end, { recalculatePosition })

	React.useEffect(function()
		return function()
			if setSizeTask.current then
				task.cancel(setSizeTask.current)
			end
		end
	end, {})

	return popoverSize, contentSize
end

return usePanelSizing
