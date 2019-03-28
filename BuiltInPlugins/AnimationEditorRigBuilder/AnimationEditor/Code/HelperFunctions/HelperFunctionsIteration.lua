-- singleton

local Iteration = {}

function Iteration:spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

function Iteration:forEach(seq, func)
	for key,val in pairs(seq) do
		func(key, val)
	end
end

function Iteration:fold(initialValue, list, func)
	local runningTotal = initialValue
	for key, val in pairs(list) do		
		runningTotal = func(runningTotal, key, val)
	end
	return runningTotal
end

function Iteration:ifAny(tab, func)
	for k,v in pairs(tab) do
		if func(k,v) then
			return true
		end
	end
	return false
end

function Iteration:ifAll(tab, func)
	return not Iteration:ifAny(tab, function(k, v) return not func(k, v) end)
end

function Iteration:ifNone(tab, func)
	return not Iteration:ifAny(tab, func)
end

function Iteration:tick(func)
	local flag = true
	spawn(function()
		while flag do
			func()
			wait()
		end	
	end)

	return (function()	flag = false end)
end

function Iteration:timer(time)
	local handle = {ticking = true}
	spawn(function()
		wait(time)
		handle.ticking = false
	end)
	return handle
end

function Iteration:isTicking(timer)
	return timer and timer.ticking
end

return Iteration