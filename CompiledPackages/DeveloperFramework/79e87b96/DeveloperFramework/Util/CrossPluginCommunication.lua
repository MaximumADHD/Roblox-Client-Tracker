--[[
	Wrapper for cross-plugin communication between BuiltIn plugins.

	This wrapper assumes that the plugins share a data model, so is not suitable for the Standalone <-> Built-In case.
]]

-- Use a Roblox-script security service to communicate by default,
-- so that the commands cannot be invoked by a non Roblox-script security script
local function getDefaultService()
	local StudioSdkService = "StudioSdkService"
	return game:GetService(StudioSdkService)
end

local t = require(script.Parent.Typecheck.t)

local function findFirstChildOfNameAndType(parent, name, type)
	for _, child in ipairs(parent:GetChildren()) do
		if child:IsA(type) and child.Name == name then
			return child
		end
	end
	return nil
end

local CrossPluginCommunication = {}
CrossPluginCommunication.__index = CrossPluginCommunication

CrossPluginCommunication.BASE_FOLDER_NAME = "CrossPluginCommunication"

function CrossPluginCommunication.new(pluginNamespace, hostService: Instance?)
	assert(t.string(pluginNamespace), "pluginNamespace must be a string")
	assert(t.optional(t.instance(pluginNamespace)), "hostService must be an instance if defined")

	local self = {
		hostService = hostService or getDefaultService(),
		pluginNamespace = pluginNamespace,
	}

	return setmetatable(self, CrossPluginCommunication)
end

function CrossPluginCommunication:cleanup()
	self:getNamespaceFolder():Destroy()
end

function CrossPluginCommunication:ensureFolderExists(parent, name)
	local folder = findFirstChildOfNameAndType(parent, name, "Folder")

	if not folder then
		folder = Instance.new("Folder")
		folder.Name = name
		folder.Parent = parent
	end

	return folder
end

function CrossPluginCommunication:getNamespaceFolder()
	local base = self:ensureFolderExists(self.hostService, self.BASE_FOLDER_NAME)

	return self:ensureFolderExists(base, self.pluginNamespace)
end

function CrossPluginCommunication:getFunction(name)
	assert(t.string(name), "name must be a string")

	local folder = self:getNamespaceFolder()

	local func = findFirstChildOfNameAndType(folder, name, "BindableFunction")

	if not func then
		error("No function named " .. name .. " exists")
	end

	return func
end

function CrossPluginCommunication:ensureFunctionExists(name)
	assert(t.string(name), "name must be a string")

	local folder = self:getNamespaceFolder()

	local func = folder:FindFirstChild(name)

	if func then
		assert(
			func:IsA("BindableFunction"),
			("CrossPluginCommunication expected %s to be a BindableFunction but it was a %s"):format(
				name,
				func.ClassName
			)
		)
		return func
	end

	func = Instance.new("BindableFunction")
	func.Name = name
	func.Parent = folder

	return func
end

function CrossPluginCommunication:ensureEventExists(name)
	assert(t.string(name), "name must be a string")

	local folder = self:getNamespaceFolder()
	local event = folder:FindFirstChild(name)

	if event then
		assert(
			event:IsA("BindableEvent"),
			("CrossPluginCommunication expected %s to be a BindableEvent but it was a %s"):format(name, event.ClassName)
		)
		return event
	end

	event = Instance.new("BindableEvent")
	event.Name = name
	event.Parent = folder
	return event
end

function CrossPluginCommunication:Fire(name, ...)
	assert(t.string(name), "name must be a string")

	local event = self:ensureEventExists(name)
	return event:Fire(...)
end

function CrossPluginCommunication:Connect(name, callback)
	assert(t.string(name), "name must be a string")
	assert(t.callback(callback), "callback must be a function")

	local event = self:ensureEventExists(name)
	return event.Event:Connect(callback)
end

function CrossPluginCommunication:Invoke(name, ...)
	assert(t.string(name), "name must be a string")

	local func = self:getFunction(name)

	return func:Invoke(...)
end

function CrossPluginCommunication:OnInvoke(name, callback)
	assert(t.string(name), "name must be a string")
	assert(t.callback(callback), "callback must be a function")

	local func = self:ensureFunctionExists(name)
	func.OnInvoke = callback
end

return CrossPluginCommunication
