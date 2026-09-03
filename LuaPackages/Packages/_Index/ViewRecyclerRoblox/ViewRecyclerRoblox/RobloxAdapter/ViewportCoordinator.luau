local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local Axis = Core.Axis
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local axisMap = require(Root.RobloxAdapter.axisMap)

type AxisValue = Axis.Axis
type SetActive = (active: boolean) -> ()

type TargetRecord = {
	target: GuiObject,
	setActive: SetActive,
	active: boolean,
	contentStart: number?,
	contentEnd: number?,
	connections: { RBXScriptConnection },
}

export type Options = {
	axis: AxisValue,
	activationMargin: number?,
	retentionMargin: number?,
}

export type ViewportCoordinator = {
	setViewport: (viewport: ScrollingFrame?) -> (),
	register: (target: GuiObject, setActive: SetActive) -> () -> (),
	destroy: () -> (),
}

local ViewportCoordinator = {}

local function disconnectAll(connections: { RBXScriptConnection })
	for _, connection in connections do
		connection:Disconnect()
	end
	table.clear(connections)
end

function ViewportCoordinator.new(options: Options): ViewportCoordinator
	local axis = options.axis
	local activationMargin = options.activationMargin or 0
	local retentionMargin = options.retentionMargin or activationMargin
	assert(activationMargin >= 0, "activationMargin must be non-negative")
	assert(retentionMargin >= activationMargin, "retentionMargin must be at least activationMargin")

	local viewport: ScrollingFrame? = nil
	local viewportConnections: { RBXScriptConnection } = {}
	local targets: { [GuiObject]: TargetRecord } = {}
	local destroyed = false

	local function updateTargetGeometry(record: TargetRecord)
		local currentViewport = viewport
		if currentViewport == nil or not record.target:IsDescendantOf(currentViewport) then
			record.contentStart = nil
			record.contentEnd = nil
			return
		end
		local viewportStart = axisMap.mainOf(currentViewport.CanvasPosition, axis)
		local viewportAbsoluteStart = axisMap.mainOf(currentViewport.AbsolutePosition, axis)
		local contentStart = viewportStart
			+ axisMap.mainOf(record.target.AbsolutePosition, axis)
			- viewportAbsoluteStart
		record.contentStart = contentStart
		record.contentEnd = contentStart + axisMap.mainOf(record.target.AbsoluteSize, axis)
	end

	local function dispatch(exits: { TargetRecord }?, entries: { TargetRecord }?)
		if exits == nil and entries == nil then
			return
		end
		SignalsExperimental.batch(function()
			if exits ~= nil then
				for _, record in exits do
					record.setActive(false)
				end
			end
			if entries ~= nil then
				for _, record in entries do
					record.setActive(true)
				end
			end
		end)
	end

	local function deactivateAll()
		local exits: { TargetRecord }? = nil
		for _, record in targets do
			if record.active then
				record.active = false
				exits = exits or {}
				table.insert(exits, record)
			end
		end
		dispatch(exits, nil)
	end

	local function evaluate()
		if destroyed then
			return
		end

		local currentViewport = viewport
		if currentViewport == nil then
			deactivateAll()
			return
		end

		local viewportStart = axisMap.mainOf(currentViewport.CanvasPosition, axis)
		local viewportEnd = viewportStart + axisMap.mainOf(currentViewport.AbsoluteWindowSize, axis)
		local exits: { TargetRecord }? = nil
		local entries: { TargetRecord }? = nil

		for _, record in targets do
			local nextActive = false
			local targetStart = record.contentStart
			local targetEnd = record.contentEnd
			if targetStart ~= nil and targetEnd ~= nil then
				local margin = if record.active then retentionMargin else activationMargin
				nextActive = targetEnd > viewportStart - margin and targetStart < viewportEnd + margin
			end

			if nextActive ~= record.active then
				record.active = nextActive
				if nextActive then
					entries = entries or {}
					table.insert(entries, record)
				else
					exits = exits or {}
					table.insert(exits, record)
				end
			end
		end

		dispatch(exits, entries)
	end

	local setViewport: (ScrollingFrame?) -> ()
	setViewport = function(nextViewport)
		if destroyed or nextViewport == viewport then
			return
		end

		disconnectAll(viewportConnections)
		deactivateAll()
		viewport = nextViewport
		if nextViewport == nil then
			return
		end

		table.insert(viewportConnections, nextViewport:GetPropertyChangedSignal("CanvasPosition"):Connect(evaluate))
		table.insert(viewportConnections, nextViewport:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(evaluate))
		table.insert(
			viewportConnections,
			nextViewport.Destroying:Connect(function()
				setViewport(nil)
			end)
		)
		for _, record in targets do
			updateTargetGeometry(record)
		end
		evaluate()
	end

	local function register(target: GuiObject, setActive: SetActive): () -> ()
		if destroyed then
			return function() end
		end
		assert(targets[target] == nil, "target is already registered")

		local record: TargetRecord = {
			target = target,
			setActive = setActive,
			active = false,
			contentStart = nil,
			contentEnd = nil,
			connections = {},
		}
		targets[target] = record

		local unregistered = false
		local function unregister()
			if unregistered then
				return
			end
			unregistered = true
			if targets[target] ~= record then
				return
			end
			targets[target] = nil
			disconnectAll(record.connections)
			if record.active then
				record.active = false
				dispatch({ record }, nil)
			end
		end

		local function updateGeometry()
			updateTargetGeometry(record)
			evaluate()
		end
		table.insert(record.connections, target:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateGeometry))
		table.insert(record.connections, target:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateGeometry))
		table.insert(record.connections, target.Destroying:Connect(unregister))
		updateTargetGeometry(record)
		evaluate()
		return unregister
	end

	local function destroy()
		if destroyed then
			return
		end
		destroyed = true
		disconnectAll(viewportConnections)

		local exits: { TargetRecord }? = nil
		for target, record in targets do
			targets[target] = nil
			disconnectAll(record.connections)
			if record.active then
				record.active = false
				exits = exits or {}
				table.insert(exits, record)
			end
		end
		viewport = nil
		dispatch(exits, nil)
	end

	return {
		setViewport = setViewport,
		register = register,
		destroy = destroy,
	}
end

return ViewportCoordinator
