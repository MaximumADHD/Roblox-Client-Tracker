-- ProxyInstance.lua
-- Module script implementing the functionality of proxying properties from one instance to another.

local BlackListProperties = {
	BasePart = {
		CanCollide = true,
		CanQuery = true,
		CanTouch = true,
		CFrame = true,
		Massless = true,
		Position = true,
		Shape = true,
		Size = true,
	},
}

local ExludeClasses = {
	Attachment = true,
	WrapTarget = true,
	WrapLayer = true,
}

local JointRemappings = {
	RightShoulder = "Right Shoulder",
	LeftShoulder = "Left Shoulder",
	RightHip = "Right Hip",
	LeftHip = "Left Hip",
	Neck = "Neck",
}

local ProxiedInstances = {}

local function isPropertyBlacklisted(proxiedInstance, propName)
	for class, props in BlackListProperties do
		if proxiedInstance:IsA(class) then
			if props[propName] then
				return true
			end
		end
	end

	return false
end

local function ProxyInstance(proxied, proxy)
	if ProxiedInstances[proxied] then
		return
	end
	ProxiedInstances[proxied] = true

	local mirrorInstances = {}

	local changedConnection = proxy.Changed:Connect(function(prop)
		if isPropertyBlacklisted(proxied, prop) then
			return
		end

		pcall(function()
			proxied[prop] = proxy[prop]
		end)
	end)

	local function onChildAdded(child)
		if mirrorInstances[child] then
			return
		end

		if ExludeClasses[child.ClassName] then
			return
		end

		local name = child.Name
		local parent = proxy
		if JointRemappings[name] and child:IsA("Motor6D") then
			name = JointRemappings[name]
			parent = proxy.Parent:FindFirstChild("Torso") or parent
		end

		local mirror = child:Clone()
		mirrorInstances[child] = mirror
		mirror.Name = name
		mirror.Parent = parent
		ProxyInstance(child, mirror)
	end

	local childAddedConnection = proxied.ChildAdded:Connect(onChildAdded)
	for _, child in proxied:GetChildren() do
		onChildAdded(child)
	end

	local childRemovedConnection = proxied.ChildRemoved:Connect(function(child)
		if mirrorInstances[child] then
			mirrorInstances[child]:Destroy()
			mirrorInstances[child] = nil
		end
	end)

	local ancestryChangedConnection
	ancestryChangedConnection = proxied.AncestryChanged:Connect(function(_, parent)
		if parent then
			return
		end

		ProxiedInstances[proxied] = nil
		for _, child in proxied:GetChildren() do
			if mirrorInstances[child] then
				mirrorInstances[child] = nil
				mirrorInstances[child]:Destroy()
			end
		end

		changedConnection:Disconnect()
		childAddedConnection:Disconnect()
		childRemovedConnection:Disconnect()
		ancestryChangedConnection:Disconnect()
		changedConnection = nil
		childAddedConnection = nil
		childRemovedConnection = nil
		ancestryChangedConnection = nil
	end)
end

return ProxyInstance
