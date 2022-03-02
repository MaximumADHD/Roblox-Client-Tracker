local Status = newproxy(false)

type TaskStatus = number
type Task = { [Status]: TaskStatus }

local SCHEDULED = 1
local DONE = 2
local CANCELLED = 3

return function(delayImpl)
	local function setTimeout(callback, delayTime: number, ...): Task
		local args = { ... }
		local task = {
			[Status] = SCHEDULED,
		}

		-- delayTime is an optional parameter
		if delayTime == nil then
			delayTime = 0
		end

		-- To mimic the JS interface, we're expecting delayTime to be in ms
		local delayTimeMs = delayTime / 1000
		delayImpl(delayTimeMs, function()
			if task[Status] == SCHEDULED then
				callback(unpack(args))
				task[Status] = DONE
			end
		end)

		return task
	end

	local function clearTimeout(task: Task)
		if task[Status] == SCHEDULED then
			task[Status] = CANCELLED
		end
	end

	return {
		setTimeout = setTimeout,
		clearTimeout = clearTimeout,
	}
end
