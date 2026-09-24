local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)
local computeFairWidths = require(Main.Components.Dialog.computeFairWidths)

--[[
	Hook that measures button widths and distributes available space fairly.

	## Problem
	The previous approach (useButtonGroupSizeAlignment) forced all buttons to the same width,
	causing a feedback loop with AutomaticSize: truncated text → smaller auto-size → smaller
	alignment target → more truncation → wasted space.

	## How it works
	The hook operates in two phases:

	### Phase 1: Measurement (unconstrained)
	When buttonWidths is nil, buttons render with auto-xy (no explicit Size). The hook captures
	each button's AbsoluteSize.X as its natural content width via AbsoluteSize change handlers.

	### Phase 2: Constraint (if overflow detected)
	Once all buttons and the container are measured, computeFairWidths determines per-button
	widths. If everything fits, buttonWidths stays nil and buttons remain unconstrained. If
	overflow occurs, each button gets an explicit width via UISizeConstraint MaxSize — the
	longest button shrinks first, then the next longest, etc.

	### Text changes
	When button text changes, resetAndRemeasure clears the button's natural width and sets
	buttonWidths back to nil, returning to Phase 1 for one frame to re-measure.

	## Returns
	- buttonWidths: { [string]: number }? — per-button widths, or nil if unconstrained
	- registerButton: (id, rbx) -> () — ref callback to register a button for measurement
	- onContainerSizeChanged: (rbx) -> () — attach to the container's onAbsoluteSizeChanged
]]
local function useButtonGroupFairWidth(gapSize: number, maxButtonWidth: number?)
	local containerWidthRef = React.useRef(0)
	local buttonsRef = React.useRef({} :: { [string]: { rbx: GuiObject, naturalWidth: number, textLabel: TextLabel? } })
	local connectionsRef = React.useRef({} :: { [string]: { RBXScriptConnection } })
	local buttonWidths: { [string]: number }?, setButtonWidths = React.useState(nil :: { [string]: number }?)

	-- When true, AbsoluteSize reflects the applied width override, not the natural content
	-- width. We skip measurement in this state to avoid a feedback loop.
	local constrainedRef = React.useRef(false)

	-- Recompute fair widths from all current measurements. Bails out early if the container
	-- or any button hasn't been measured yet (naturalWidth == 0).
	local recompute = React.useCallback(function()
		local containerWidth = containerWidthRef.current
		if containerWidth <= 0 then
			return
		end

		local naturalWidths = {}
		local numButtons = 0
		for id, b in buttonsRef.current do
			if b.naturalWidth <= 0 then
				return
			end
			-- Cap natural width at maxButtonWidth so the algorithm distributes based on
			-- capped widths and doesn't allocate space beyond the cap
			naturalWidths[id] = if maxButtonWidth then math.min(b.naturalWidth, maxButtonWidth) else b.naturalWidth
			numButtons += 1
		end

		local widths = computeFairWidths(naturalWidths, containerWidth, numButtons, gapSize)
		constrainedRef.current = widths ~= nil
		setButtonWidths(widths)
	end, { gapSize, maxButtonWidth } :: { unknown })

	-- Capture a button's natural width from AbsoluteSize. Only runs when unconstrained
	-- (constrainedRef is false), so we measure the true content width, not the override.
	local remeasure = React.useCallback(function(id: string)
		if constrainedRef.current then
			return
		end

		local b = buttonsRef.current[id]
		if not b then
			return
		end

		local width = b.rbx.AbsoluteSize.X
		if width > 0 then
			b.naturalWidth = width
			recompute()
		end
	end, { recompute })

	-- Reset a button to unconstrained so its natural width can be re-measured.
	-- Called when button text changes. Sets buttonWidths to nil, which causes the component
	-- to re-render without width overrides (auto-xy). On the next frame, AbsoluteSize updates
	-- and remeasure captures the new natural width.
	local resetAndRemeasure = React.useCallback(function(id: string)
		local b = buttonsRef.current[id]
		if not b then
			return
		end
		b.naturalWidth = 0
		constrainedRef.current = false
		setButtonWidths(nil :: { [string]: number }?)
	end, {})

	local onContainerSizeChanged = React.useCallback(function(rbx: GuiObject)
		containerWidthRef.current = rbx.AbsoluteSize.X
		recompute()
	end, { recompute })

	-- Register a button for measurement. Sets up listeners for AbsoluteSize changes
	-- (to capture natural width) and Text changes (to re-measure when content changes).
	local registerButton = React.useCallback(function(id: string, rbx: GuiObject?)
		if connectionsRef.current[id] then
			for _, conn in connectionsRef.current[id] do
				conn:Disconnect()
			end
			connectionsRef.current[id] = nil
		end

		if rbx == nil then
			buttonsRef.current[id] = nil
			recompute()
			return
		end

		local textLabel = rbx:FindFirstChildWhichIsA("TextLabel", true)

		buttonsRef.current[id] = {
			rbx = rbx,
			naturalWidth = 0,
			textLabel = textLabel,
		}

		local connections = {}

		table.insert(
			connections,
			rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				remeasure(id)
			end)
		)

		if textLabel then
			table.insert(
				connections,
				textLabel:GetPropertyChangedSignal("Text"):Connect(function()
					resetAndRemeasure(id)
				end)
			)
		end

		table.insert(
			connections,
			rbx.Destroying:Once(function()
				for _, connection in connections do
					connection:Disconnect()
				end
				connectionsRef.current[id] = nil
				buttonsRef.current[id] = nil
				recompute()
			end)
		)

		connectionsRef.current[id] = connections
		remeasure(id)
	end, { recompute, remeasure, resetAndRemeasure } :: { unknown })

	React.useEffect(function()
		return function()
			for _, connections in connectionsRef.current do
				for _, connection in connections do
					connection:Disconnect()
				end
			end
		end
	end, { connectionsRef })

	return buttonWidths, registerButton, onContainerSizeChanged
end

return useButtonGroupFairWidth
