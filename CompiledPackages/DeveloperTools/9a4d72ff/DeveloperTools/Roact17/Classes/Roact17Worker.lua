--[[
	The Roact17Worker class manages the serialization of a React tree across the bridge,
	notifies the inspector of any changes to the tree, and allows the inspector to make
	modifications to the tree.
]]
local Source = script.Parent.Parent.Parent
local Packages = Source.Parent

local getChildAtKey = require(Source.RoactInspector.Utils.getChildAtKey)

local ReactTypes = require(Source.Roact17.types)

local EventName = require(Source.EventName)
local InstancePicker = require(Source.RoactInspector.Classes.InstancePicker)
local Roact17Profiler = require(Source.Roact17.Classes.Roact17Profiler)
local FieldWatcher = require(Source.RoactInspector.Classes.FieldWatcher)
local TargetWorker = require(Source.Classes.TargetWorker)

local Dash = require(Packages.Dash)
local append = Dash.append
local map = Dash.map
local mapOne = Dash.mapOne
local forEach = Dash.forEach
local filter = Dash.filter
local last = Dash.last
local reduce = Dash.reduce
local reverse = Dash.reverse
local startsWith = Dash.startsWith

local DeveloperToolsTypes = require(Source.Types)

local concat = table.concat
local insert = table.insert

type Array<T> = { [number]: T }
type Path = Array<string | number>

local POLL_DELAY = 0.5

local Roact17Worker = TargetWorker:extend("Roact17Worker", function(debugInterface, targetId: string, toBridgeId: string, devtools: ReactTypes.Devtools, root: number)
	local worker = TargetWorker.new(debugInterface, targetId, toBridgeId)
	worker.devtools = devtools
	worker.root = root
	worker.pendingFields = {}
	return worker
end)

function Roact17Worker:_init()
	self.picker = InstancePicker.new(self.debugInterface, function(instance)
		return self:pickInstance(instance)
	end)
	self.fieldWatcher = FieldWatcher.new(function(changedPaths: Array<Path>)
		forEach(changedPaths, function(path: Path)
			self:reduceAndSendFields(self.fieldWatcher.root, path)
		end)
	end, "data")
	self.fieldWatcher.onPoll = function()
		if not self.fieldWatcher.polling then
			return
		end
		if not self.currentPath then
			return
		end
		local nodes = self:getNodes(last(self.currentPath))
		if not nodes then
			return
		end
		local node = nodes[self.currentNodeIndex]
		if not node then
			return
		end
		self.devtools.agent:inspectElement({
			id = node.id,
			rendererID = self.devtools.store:getRendererIDForElement(self.root),
			path = {}
		})
		delay(POLL_DELAY, self.fieldWatcher.onPoll)
	end
	self.profiler = Roact17Profiler.new(self)
	self:connectEvents()
	self:connectDevtools()
end

function Roact17Worker:connectEvents()
	TargetWorker.connectEvents(self)
	self:connect({
		eventName = EventName.RoactInspector.GetChildren,
		onEvent = function(message)
			self:showChildren(message.path)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.GetBranch,
		onEvent = function(message)
			self:showBranch(message.path)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.GetFields,
		onEvent = function(message)
			self.fieldWatcher:clear()
			self.currentPath = message.path
			self.currentNodeIndex = message.nodeIndex
			self:showFields(message.fieldPath or {})
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.Highlight,
		onEvent = function(message)
			if #message.path == 0 then
				return
			end
			local nodeId = tonumber(last(last(message.path):split(".")))
			local hostNode = self:getHostNode(nodeId)
			local hostInstance = self:getHostInstance(nodeId)
			if hostNode and hostInstance then
				self.picker:highlight(hostInstance)
			else
				self.picker:dehighlight()
			end
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.Dehighlight,
		onEvent = function()
			self.picker:dehighlight()
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.SetPicking,
		onEvent = function(message)
			self.picker:setActive(message.isPicking)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.OpenPath,
		onEvent = function(message)
			self:openPath(message.path)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.SetProfiling,
		onEvent = function(message)
			self.profiler:setActive(message.isProfiling)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.GetProfileData,
		onEvent = function(message)
			self.profiler:getData(message, function(data)
				self:showProfileData(data)
			end)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.ClearProfileData,
		onEvent = function()
			self.profiler:clearData()
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.SortProfileData,
		onEvent = function(message)
			self.profiler:sortData(message.tableName, message.index, message.order)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.SelectProfileInstance,
		onEvent = function(message)
			self.profiler:selectInstance(message.instanceId)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.SetProfileFilter,
		onEvent = function(message)
			self.profiler:setFilter(message.filter)
		end
	})
	self:connect({
		eventName = EventName.RoactInspector.SetProfileSearchTerm,
		onEvent = function(message)
			self.profiler:setSearchTerm(message.searchTerm)
		end
	})
end

function Roact17Worker:getNodeInfo(node)
	if node.type == ReactTypes.ElementType.Root then
		return {
			Name = "Root",
			-- TODO RIDE-
			Source = "",
			Link = "",
			Icon = "Branch"
		}
	else
		local icon = "Branch"
		if node.type == ReactTypes.ElementType.HostComponent then
			local instance = self:getHostInstance(node.id)
			if instance then
				icon = instance.ClassName
			end
		end
		local displayName = node.displayName
		if #node.key > 0 and node.displayName ~= node.key then
			displayName = node.key .. ": " .. node.displayName
		end
		return {
			Name = displayName,
			Source = "",
			Link = "",
			Icon = icon
		}
	end
end

function Roact17Worker:connectDevtools()
	self.devtools.bridge:addListener('inspectedElement', function(result)
		local isFullData = result.type == "full-data"
		if isFullData then
			self.fieldWatcher:setRoot(result.value)
			self.fieldWatcher:checkFields()
			-- Process the outstanding field requests from the inspector
			forEach(self.pendingFields, function(fieldPath: Path)
				self.fieldWatcher:addPath(fieldPath)
				self:reduceAndSendFields(result.value, fieldPath)
			end)
			self.pendingFields = {}
		elseif result.value ~= nil and #result.path > 0 then
			if #result.path > 0 then
				self.fieldWatcher:addPath(result.path)
			else
				self.fieldWatcher:setRoot(result.value.data)
				return
			end
			local pathString = concat(result.path, ",")
			self.pendingFields = filter(self.pendingFields, function(fieldPath: Path)
				local fieldPathString = concat(fieldPath, ",")
				return fieldPathString == pathString or startsWith(fieldPathString, pathString .. ",")
			end)
			self:send({
				eventName = EventName.RoactInspector.ShowFields,
				path = self.currentPath,
				nodeIndex = self.currentNodeIndex,
				fieldPath = result.path,
				fields = self.fieldWatcher:collect(result.value.data, 2, result.path)
			})
		end
	end)
	self.devtools.bridge:addListener('operations', function(result)
		-- TODO: Make tree responsive to operation changes
	end)
	self.devtools.bridge:addListener('shutdown', function(result)
		-- Stop debugging the Roact tree
		self:send({
			eventName = EventName.CloseTarget,
		})
		self.debugInterface:removeWorker(self.targetId)
		self:destroy()
	end)
end

function Roact17Worker:reduceAndSendFields(root, path: Path)
	local container = reduce(path, function(table, key: string, index: number)
		local ok, child = pcall(function()
			return getChildAtKey(table, key)
		end)
		if ok and child ~= nil then
			if index == 1 then
				return child.data
			end
			return child
		else
			return nil
		end
	end, root)
	if container == nil then
		return
	end
	local fields = self.fieldWatcher:collect(container, 2, path)
	self:send({
		eventName = EventName.RoactInspector.ShowFields,
		path = self.currentPath,
		nodeIndex = self.currentNodeIndex,
		fieldPath = path,
		fields = fields
	})
end

function Roact17Worker:pickInstance(instance: Instance)
	local path = self:getPath(instance)
	self.picker:setActive(false)
	self:openPath(path)
end

function Roact17Worker:getPath(instance: Instance)
	local renderer = self:getRenderer()
	local nodeId = renderer.getFiberIDForNative(instance)
	if not nodeId  then
		return nil
	end
	local path = {}
	local branch = {}
	-- Build up the path to the instance by traversing up node parents
	while nodeId ~= self.root do
		local node = self.devtools.store:getElementByID(nodeId)
		if node.type == ReactTypes.ElementType.HostComponent and #branch > 0 then
			insert(path, concat(reverse(branch), "."))
			branch = {}
		end
		insert(branch, nodeId)
		nodeId = node.parentID
	end
	if #branch > 0 then
		insert(branch, self.root)
		insert(path, concat(reverse(branch), "."))
	end
	return reverse(path)
end

function Roact17Worker:openPath(path: Path)
	local currentPath = {}

	-- Gather all the children for these instances and update
	forEach(path, function(key)
		insert(currentPath, key)
		self:showChildren(append({}, currentPath))
	end)
	
	-- Pick the instance based on the id path to reach it
	self:send({
		eventName = EventName.RoactInspector.PickInstance,
		path = path
	})

	self:showBranch(path)
end

function Roact17Worker:showChildren(path: Path, updatedIndexes: Array<number>?)
	if #path == 0 then
		local hostNode, key = self:getHostNode(self.root)
		local hostInstance = if hostNode then self:getHostInstance(hostNode.id) else nil
		local rootPath = {key}
		local children = self:getChildren(rootPath, self.root, 1)
		self:send({
			eventName = EventName.RoactInspector.ShowChildren,
			path = path,
			children = {
				[key or "None"] = {
					Name = if hostInstance then hostInstance.Name elseif hostNode then hostNode.displayName else "<None>",
					Icon = "Branch",
					Children = children,
					Path = rootPath,
				}
			},
			updatedIndexes = updatedIndexes
		})
	else
		local nodeId = tonumber(last(last(path):split(".")))
		-- Generate at depth two to get grandchildren, so tree rows with children
		-- display with a toggle arrow.
		local children = self:getChildren(path, nodeId, 2)
		self:send({
			eventName = EventName.RoactInspector.ShowChildren,
			path = path,
			children = children,
			updatedIndexes = updatedIndexes
		})
	end
end

function Roact17Worker:getChildren(path: Path, nodeId: number, depth: number)
	-- Return nil to indicate the tree has been truncated, rather that there are 0 children.
	if depth == 0 then
		return nil
	end
	-- The tree only displays host nodes to keep nesting small, so start with the host node
	-- for this id and collect all direct child host nodes.
	local hostNode = self:getHostNode(nodeId)
	if not hostNode then
		return nil
	end
	local children = {}
	forEach(hostNode.children, function(childId: number)
		self:_collectChildren(childId, path, "", depth, children)
	end)
	return children
end

--[[
	This method maps the children in the Roact tree to the children in the inspector.
	There are two recursive steps here: the first traverses down Roact children to reach host nodes,
	providing the direct children of each host node in the inspector tree.
	The second recurses through host nodes to "pre-cache" the children at deeper levels, allowing
	the expand "arrow" to always display correctly 
]]
function Roact17Worker:_collectChildren(nodeId: number, path: Path, pathKey: string, depth: number, mut_children)
	local key = tostring(nodeId)
	local nodePathKey = #pathKey == 0 and key or ("%s.%s"):format(pathKey, key)
	local node = self.devtools.store:getElementByID(nodeId)
	-- We have a reached a host component, so add it as a child
	if node.type == ReactTypes.ElementType.HostComponent then
		local hostInstance = self:getHostInstance(nodeId)
		local displayName = hostInstance and hostInstance.Name or node.displayName
		-- If the key and displayName don't match, display both
		if #node.key > 0 and displayName ~= node.key then
			displayName = ("%s: %s"):format(node.key, displayName)
		end
		local nodePath = append({}, path, {nodePathKey})
		mut_children[nodePathKey] = {
			Name = displayName,
			Icon = hostInstance and hostInstance.ClassName or "Branch",
			Children = self:getChildren(nodePath, nodeId, depth - 1),
			Path = nodePath,
		}
	else
		forEach(node.children, function(childId: number)
			self:_collectChildren(childId, path, nodePathKey, depth, mut_children)
		end)
	end
end

function Roact17Worker:getHostNode(nodeId: number, jumpBranch: boolean?, key: string?)
	local nodeName = tostring(nodeId)
	local nodeKey = if key then ("%s.%s"):format(key, nodeName) else nodeName
	if nodeId then
		local node = self.devtools.store:getElementByID(nodeId)
		if not node then
			return nil
		end
		if node.type == ReactTypes.ElementType.HostComponent then
			return node, nodeKey
		end
		for i = 1, #node.children do
			local resultNode, resultKey = self:getHostNode(node.children[i], jumpBranch, nodeKey)
			if resultNode then
				return resultNode, resultKey
			end
		end
	end
	return nil
end

function Roact17Worker:getRenderer()
	local id = self.devtools.store:getRendererIDForElement(self.root)
	return self.devtools.hook.rendererInterfaces[id]
end

function Roact17Worker:getHostInstance(nodeId: number): Instance?
	local renderer = self:getRenderer()
	-- React doesn't seem to provide the correct node for the root host node
	local hostNode = self:getHostNode(nodeId)
	if not hostNode then
		return
	end
	local instances = renderer.findNativeNodesForFiberID(hostNode.id)
	return instances and instances[1] or nil
end

function Roact17Worker:showBranch(path)
	local nodes = self:getNodes(last(path))
	if not nodes then
		return
	end
	local hostInstance
	local hostNode = last(nodes)
	if hostNode then
		hostInstance = self:getHostInstance(hostNode.id)
	end
	local branch = map(nodes, function(node)
		return self:getNodeInfo(node)
	end)
	self:send({
		eventName = EventName.RoactInspector.ShowBranch,
		path = path,
		branch = branch,
		instance = hostInstance
	})
end

function Roact17Worker:showFields(fieldPath: Path)
	local nodes = self:getNodes(last(self.currentPath))
	if not nodes then
		return
	end
	local node = nodes[self.currentNodeIndex]
	if not node then
		return
	end
	-- React 17 does not support deprecated Roact context
	if fieldPath[1] == "_context" then
		return
	end
	insert(self.pendingFields, fieldPath)
	self.devtools.agent:inspectElement({
		id = node.id,
		rendererID = self.devtools.store:getRendererIDForElement(self.root),
		path = fieldPath
	})
end

function Roact17Worker:getNodes(key: string)
	local ids = key:split(".")
	return map(ids, function(nodeIdAsString: string)
		local nodeId = tonumber(nodeIdAsString)
		return self.devtools.store:getElementByID(nodeId)
	end)
end

function Roact17Worker:showProfileData(data: DeveloperToolsTypes.ProfileData)
	self:send({
		eventName = EventName.RoactInspector.ShowProfileData,
		data = data,
	})
end

function Roact17Worker:destroy()
	TargetWorker.destroy(self)
	self.picker:destroy()
	self.profiler:destroy()
	self.fieldWatcher:destroy()
end

return Roact17Worker
