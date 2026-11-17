-- Disables buttons and scrolling for the duration of a dismiss drag.
-- Records each button's Active so a control the consumer enables or disables during the drag is restored to that state.
local function lock(panel: GuiObject?, backdrop: GuiObject?, scrollingFrame: ScrollingFrame?): () -> ()
	local originals: { [GuiButton]: boolean } = {}
	local connections: { RBXScriptConnection } = {}
	local released = false
	-- The Active value this lock just wrote. A deferred change signal still reports that write, so it must not replace the consumer state.
	local ignoring: { [GuiButton]: boolean? } = {}

	local function writeLocked(button: GuiButton)
		if not button.Active then
			return
		end
		ignoring[button] = false
		button.Active = false
	end

	local function suppress(button: GuiButton)
		if originals[button] ~= nil then
			return
		end
		originals[button] = button.Active
		table.insert(
			connections,
			button:GetPropertyChangedSignal("Active"):Connect(function()
				if ignoring[button] == button.Active then
					ignoring[button] = nil
					return
				end
				originals[button] = button.Active
				if not released and button.Active then
					writeLocked(button)
				end
			end)
		)
		-- isDisabled updates Interactable even when Active is already false.
		table.insert(
			connections,
			button:GetPropertyChangedSignal("Interactable"):Connect(function()
				originals[button] = button.Interactable
			end)
		)
		writeLocked(button)
	end

	-- ScrollView keeps this host's GuiState in React state, so clearing Active commits. ScrollingEnabled already blocks the scroll.
	local scrollHost = if scrollingFrame ~= nil and scrollingFrame.Parent ~= panel then scrollingFrame.Parent else nil

	if panel ~= nil then
		if panel:IsA("GuiButton") then
			suppress(panel)
		end
		for _, descendant in panel:GetDescendants() do
			if descendant:IsA("GuiButton") and descendant ~= scrollHost then
				suppress(descendant)
			end
		end
		table.insert(
			connections,
			panel.DescendantAdded:Connect(function(descendant: Instance)
				if descendant:IsA("GuiButton") and descendant ~= scrollHost then
					suppress(descendant)
				end
			end)
		)
	end

	if backdrop ~= nil and backdrop:IsA("GuiButton") then
		suppress(backdrop)
	end

	local scrollingWasEnabled = if scrollingFrame ~= nil then scrollingFrame.ScrollingEnabled else nil
	if scrollingFrame ~= nil then
		scrollingFrame.ScrollingEnabled = false
	end

	return function()
		released = true
		for _, connection in connections do
			connection:Disconnect()
		end
		for button, wasActive in originals do
			if button.Parent ~= nil then
				button.Active = wasActive
			end
		end
		table.clear(originals)
		if scrollingFrame ~= nil and scrollingFrame.Parent ~= nil and scrollingWasEnabled ~= nil then
			scrollingFrame.ScrollingEnabled = scrollingWasEnabled
		end
	end
end

return {
	lock = lock,
}
