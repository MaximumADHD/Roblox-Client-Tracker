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

	local isRunning = false
	local instances: { Instance } = {}
	local instancesProcessedRecently = 0
	local connections: { RBXScriptConnection } = {}
	local stackThread: thread?
	local stack: { Instance } = {}
	local steppedCallbacks: { [SteppedCallback]: boolean } = {}

	local function getBatchCount()
		return math.min(#stack, internalOptions.instanceProcessingLimit)
	end

	local function onAncestryChanged(instance: Instance)
		if instance.Parent == nil then
			local index = table.find(instances, instance)
			if index then
				table.remove(instances, index)
			end
		end
	end

	local function processStack(): boolean
		local batchCount = getBatchCount()

		for _ = 1, batchCount do
			local popped = table.remove(stack, #stack)

			if popped then
				if not predicate or predicate(popped) then
					table.insert(instances, popped)
					table.insert(connections, popped.AncestryChanged:Connect(onAncestryChanged))
				end

				for _, child in popped:GetChildren() do
					table.insert(stack, child)
				end
			end
		end

		instancesProcessedRecently += batchCount

		for callback in steppedCallbacks do
			task.spawn(function()
				callback(instances)
			end)
		end

		if #stack == 0 then
			isRunning = false
			-- Stack is empty so no need to backoff
			return false
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

	local function startProcessingLoop()
		if isRunning or getBatchCount() == 0 then
			return
		end

		isRunning = true

		processStack()

		stackThread = task.spawn(function()
			task.wait()

			while isRunning do
				local shouldBackoff = processStack()

				if isRunning and shouldBackoff then
					task.wait()
				end
			end
		end)
	end

	local function onDescendantAdded(instance: Instance)
		table.insert(stack, instance)

		if not isRunning then
			startProcessingLoop()
		end
	end

	local function listen()
		for _, root in roots do
			table.insert(connections, root.DescendantAdded:Connect(onDescendantAdded))

			for _, child in root:GetChildren() do
				table.insert(stack, child)
			end
		end

		startProcessingLoop()
	end

	local function onStepped(callback: (instances: { Instance }) -> ())
		steppedCallbacks[callback] = true
		return function()
			steppedCallbacks[callback] = nil
		end
	end

	local function destroy()
		isRunning = false

		for _, connection in connections do
			connection:Disconnect()
		end

		steppedCallbacks = {}

		if stackThread then
			task.cancel(stackThread)
		end
	end

	local function setInstancesProcessedPerFrame(newValue: number)
		internalOptions.instanceProcessingLimit = math.clamp(newValue, 0, math.huge)
		startProcessingLoop()
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
