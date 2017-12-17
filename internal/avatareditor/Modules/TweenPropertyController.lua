local module = {}
local runService = game:GetService("RunService")
local SAFE_MODE = false -- debug

local interpolators = {
	Number = function(a, b, t)
		return (b-a)*t + a
	end,
	Vector3 = Vector3.new().lerp,
	Vector2 = Vector2.new().lerp,
	Color3 = Color3.new().lerp,
	UDim2 = UDim2.new().lerp,
	CFrame = CFrame.new().lerp,
	BrickColor = function(a, b, t)
		return BrickColor.new(a.Color:lerp(b.Color, t))
	end,
	NumberRange = function(a, b, t)
		return NumberRange.new(
			(b.Min - a.Min)*t + a.Min,
			(b.Max - a.Max)*t + a.Max
		)
	end,
	Ray = function(a, b, t)
		return Ray.new(
			a.Origin:lerp(b, t),
			a.Direction:lerp(b, t)
		)
	end,
	UDim = function(a, b, t)
		return UDim.new(
			(b.Scale - a.Scale)*t + a.Scale,
			(b.Offset - a.Offset)*t + a.Offset
		)
	end,
	Vector3int16 = function(a, b, t)
		return (b-a)*t + a
	end,
	Vector2int16 = function(a, b, t)
		return (b-a)*t + a
	end
}

local active = {}

local stepAll
if SAFE_MODE then
	stepAll = function()
		for object, props in next, active do
			for prop, job in next, props do
				if type(job) == 'table' then
					if job.step then
						local success, err = pcall(job.step)
						
						if not success then
							warn('FAILED TO STEP',err,'\n///',job.traceback)
						end
					else
						warn('JOB MISSING .STEP',job,job.traceback)
					end
				else
					warn('BAD JOB',type(job),job)
				end
			end
		end
	end
else
	stepAll = function()
		for object, props in next, active do
			for prop, job in next, props do
				job.step()
			end
		end
	end
end

local tween = function(obj, prop, vtype, start, finish, length, style, direction)
	-- vtype should start with an uppercase letter
	-- If you don't supply 'finish': Cancels existing tween on the property, doesn't start a new one
	-- If you don't supply 'finish' or 'prop': Cancels all existing tweens on the object
	-- If you supply a function instead of an object as 'obj': It is called in the following pattern:
		-- Getting the start value:		obj('Get', prop)
		-- Setting the value:			obj('Set', prop, value, alpha)
	-- Returns: RBXScriptSignal(Bool completed)
	-- This function is async
	
	if prop == nil then
		-- cancel existing tweens on the obj
		if active[obj] then
			for prop, job in next, active[obj] do
				job.interrupt()
			end
			active[obj] = nil
		end
	elseif finish == nil then
		-- cancel existing tween on the prop
		if active[obj] and active[obj][prop] then
			active[obj][prop].interrupt()
		end
	else
		-- start a new job
		local job = {}
		if SAFE_MODE then
			job.traceback = debug.traceback()
		end
		
		local fmode = type(obj) == 'function'
		local event = Instance.new'BindableEvent'
		local signal = event.Event
		local started = tick()
		local interpolator = interpolators[vtype]
		local running = true
		if start == nil then
			if fmode then
				start = obj('Get', prop)
			else
				start = obj[prop]
			end
		end
		
		assert(interpolator ~= nil, 'No interpolator for type "'..tostring(vtype)..'"')
		
		local activeObj = active[obj]
		if activeObj ~= nil then
			local activeProp = activeObj[prop]
			if activeProp ~= nil then
				activeProp.interrupt()
			end
		end
		if active[obj] == nil then -- activeObj may have been dereferenced during the interrupt
			activeObj = {}
			active[obj] = activeObj
		end
		
		activeObj[prop] = job
		
		job.step = function()
			local alphaRaw = (tick() - started)/length
			if alphaRaw > 1 then alphaRaw = 1 end
			local alpha = direction and direction(alphaRaw, style) or style and style(alphaRaw) or alphaRaw
			local value = interpolator(start, finish, alpha)
			
			if fmode then
				obj('Set', prop, value, alpha)
			else
				obj[prop] = value
			end
			
			if alphaRaw == 1 then
				running = false
				event:Fire(true, obj)
				
				activeObj[prop] = nil
				if next(activeObj) == nil then
					active[obj] = nil
				end
			end
		end
		job.interrupt = function()
			running = false
			event:Fire(false, obj)
			
			activeObj[prop] = nil
			if next(activeObj) == nil then
				active[obj] = nil
			end
		end
		
		coroutine.wrap(function()
			coroutine.yield()
			if running then
				job.step()
			end
		end)()
		
		return signal
	end
end

runService:BindToRenderStep('TweenPropertyStep', 0, stepAll)

module.tween = tween

return module