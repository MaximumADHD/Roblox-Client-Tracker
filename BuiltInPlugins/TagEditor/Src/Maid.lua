-- A helper utility based on code by Quenty.
-- Encapsulates cleanup and destruction of objects and signals
-- Enables a code pattern of placing destruction logic adjacent to construction logic

local Maid = {}

function Maid.new()
	local self = {
		_tasks = {},
	}
	setmetatable(self, Maid)

	return self
end

function Maid:__index(key)
	return Maid[key] or self._tasks[key]
end

function Maid:__newindex(key, newTask)
	if rawget(self, key) then
		error(string.format("Cannot use %q as a Maid key", tostring(key)))
	end
	local tasks = self._tasks
	local oldTask = tasks[key]
	if oldTask == newTask then
		return
	end

	tasks[key] = newTask

	if oldTask then
		Maid.cleanupTask(oldTask)
	end
end

function Maid:give(task)
	local tasks = self._tasks
	tasks[#tasks + 1] = task
end

function Maid.cleanupTask(task)
	local taskTy = typeof(task)
	if taskTy == "function" then
		task()
	elseif taskTy == "RBXScriptConnection" then
		task:Disconnect()
	elseif task.Destroy then
		task:Destroy()
	elseif task.destroy then
		task:destroy()
	else
		error("Unable to cleanup unknown task")
	end
end

function Maid:clean()
	local tasks = self._tasks

	for key, task in pairs(tasks) do
		if typeof(task) == "RBXScriptConnection" then
			tasks[key] = nil
			task:Disconnect()
		end
	end

	local index, task = next(tasks)
	while task ~= nil do
		tasks[index] = nil
		Maid.cleanupTask(task)
		index, task = next(tasks)
	end
end

Maid.destroy = Maid.clean

return Maid
