local RenderStepped = game:GetService("RunService").RenderStepped

local function quickWait(waitTime)
	if not waitTime or waitTime == 0 then
		RenderStepped:wait()
	elseif waitTime < 0.033333 then
		local startTick = tick()
		RenderStepped:wait()
		local delta = tick() - startTick
		if delta <= waitTime * 0.5 then
			quickWait(waitTime - delta)
		end
	else
		wait(waitTime)
	end
end

return quickWait
