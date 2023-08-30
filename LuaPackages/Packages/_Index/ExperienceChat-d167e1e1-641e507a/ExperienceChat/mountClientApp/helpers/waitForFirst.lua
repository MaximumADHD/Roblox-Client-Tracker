local function waitForFirst(...)
	local shunt = Instance.new("BindableEvent")
	local slots = { ... }

	local function fire(...)
		for i = 1, #slots do
			slots[i]:Disconnect()
		end

		return shunt:Fire(...)
	end

	for i = 1, #slots do
		slots[i] = slots[i]:Connect(fire)
	end

	return shunt.Event:Wait()
end

return waitForFirst
