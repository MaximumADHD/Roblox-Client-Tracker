local Tween = {}
Tween.__index = Tween

local function disconnectCallback(self)
	if nil ~= self.IsPlaying then
		self.IsPlaying:disconnect()
		self.IsPlaying = nil
	end
end

function Tween:new(Paths, from, to, tweenTimeSeconds, tickFunc, onCompleteFunc, tweenFunc)
	local self = setmetatable({}, Tween)
	
	local function internalEndTween()
		disconnectCallback(self)
		if nil ~= onCompleteFunc then	
			onCompleteFunc()
		end
	end
	
	local function internalTickTween(interpolationFactor)
		local tweenedValue = nil ~= tweenFunc and tweenFunc(interpolationFactor) or Paths.HelperFunctionsMath:lerp(from, to, interpolationFactor)
		tickFunc(tweenedValue)
	end
	
	if 0 == tweenTimeSeconds then
		local InterpolationFactorComplete = 1	
		internalTickTween(InterpolationFactorComplete)
		internalEndTween()	
	else	
		local startTime = tick()
		local endTime = startTime+tweenTimeSeconds
		self.IsPlaying = game:GetService("RunService").Heartbeat:connect(function(step)
			local interpolationFactor = math.clamp((tick()-startTime)/tweenTimeSeconds, 0, 1)			
			internalTickTween(interpolationFactor)
						
			if tick() >= endTime then
				internalEndTween()	
			end
		end)
	end
	return self
end

function Tween:terminate()
	disconnectCallback(self)
end

return Tween
