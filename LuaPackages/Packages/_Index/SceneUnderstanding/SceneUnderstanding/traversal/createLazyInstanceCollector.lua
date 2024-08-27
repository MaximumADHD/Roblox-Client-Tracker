local Root = script:FindFirstAncestor("SceneUnderstanding")

local DataModelTraversalOptions = require(Root.options.DataModelTraversalOptions)

type DataModelTraversalOptions = DataModelTraversalOptions.DataModelTraversalOptions

type SteppedCallback = (instances: { Instance }) -> ()

local function createLazyInstanceCollector(
	roots: { Instance },
	predicate: ((instance: Instance) -> boolean)?,
	options: DataModelTraversalOptions?
)
	local internalOptions = DataModelTraversalOptions.new(options)

	local instances: { Instance } = {}
	local instancesProcessedRecently = 0
	local connections: { RBXScriptConnection } = {}
	local stackThread: thread
	local stack: { Instance } = {}
	local steppedCallbacks: { [SteppedCallback]: boolean } = {}

	local function processStack(): boolean
		local batchCount = math.min(#stack, internalOptions.instanceProcessingLimit)

		for _ = 1, batchCount do
			local popped = table.remove(stack, #stack)

			if not predicate or predicate(popped) then
				table.insert(instances, popped)
			end

			for _, child in popped:GetChildren() do
				table.insert(stack, child)
			end
		end

		instancesProcessedRecently += batchCount

		for callback in steppedCallbacks do
			task.spawn(function()
				callback(instances)
			end)
		end

		-- If the max number of instances was processed, backoff to give some
		-- breathing room between runs. Otherwise we're processing few enough
		-- instances that yielding won't make a difference
		if instancesProcessedRecently >= internalOptions.instanceProcessingLimit then
			instancesProcessedRecently = 0
			return true
		else
			return false
		end
	end

	local function onDescendantAdded(instance: Instance)
		table.insert(stack, instance)

		if coroutine.status(stackThread) == "dead" then
			processStack()
		end
	end

	local function listen()
		for _, root in roots do
			table.insert(connections, root.DescendantAdded:Connect(onDescendantAdded))

			for _, child in root:GetChildren() do
				table.insert(stack, child)
			end
		end

		processStack()

		stackThread = task.spawn(function()
			task.wait()

			while #stack > 0 do
				local shouldBackoff = processStack()

				if shouldBackoff then
					task.wait()
				end
			end
		end)
	end

	local function onStepped(callback: (instances: { Instance }) -> ())
		steppedCallbacks[callback] = true
		return function()
			steppedCallbacks[callback] = nil
		end
	end

	local function destroy()
		for _, connection in connections do
			connection:Disconnect()
		end
		steppedCallbacks = {}
		task.cancel(stackThread)
	end

	local function setInstancesProcessedPerFrame(newValue: number)
		internalOptions.instanceProcessingLimit = math.clamp(newValue, 0, math.huge)
	end

	local function get()
		return instances
	end

	return {
		setInstancesProcessedPerFrame = setInstancesProcessedPerFrame,
		listen = listen,
		get = get,
		destroy = destroy,
		onStepped = onStepped,
	}
end

return createLazyInstanceCollector
