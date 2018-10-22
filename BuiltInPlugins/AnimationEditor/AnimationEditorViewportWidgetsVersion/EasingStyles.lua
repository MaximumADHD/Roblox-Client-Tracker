local module = {}

--Ignore semicolons. Converted from C++

module.GetEasing = function(style, direction, percent)
	if style == "Bounce" then
		if direction == "Out" then
			return 1 - easeOut(percent, bounce)
		elseif direction == "In" then
			return 1 - bounce(percent)
		else
			return 1 - easeInOut(percent, bounce)
		end
	elseif style == "Elastic" then
		if direction == "Out" then
			local totalTime = 1
			local p = totalTime*.3;
			local t = 1 - percent;
			local s = p/4;
			return (1 +2^(-10*t) * math.sin( (t*totalTime-s)*(math.pi*2)/p ));
		elseif direction == "In" then
			local totalTime = 1
			local p = totalTime*.3;
			local t = percent;
			local s = p/4;
			return 1 - (1 + 2^(-10*t) * math.sin( (t*totalTime-s)*(math.pi*2)/p ));
		elseif direction == "InOut" then
			local t = percent *2;
			local p = (.3*1.5);
			local s = p/4;
			if (t < 1) then
				t = t - 1;
				return 1 - (-.5 * 2^(10*t) * math.sin((t-s)*(math.pi*2)/p ));
			else
				t  = t - 1;
				return 1 - (1 + 0.5 * 2^(-10*t) * math.sin((t-s)*(math.pi*2)/p ));
			end
		end
	elseif style == "Cubic" then
		if direction == "Out" then
			return 1 - easeOut(percent, cubic)
		elseif direction == "In" then
			return 1 - cubic(percent)
		elseif direction == "InOut" then
			return 1 - easeInOut(percent, cubic)
		end
	elseif style == "Linear" then
		return 1 - percent
	elseif style == "Constant" then
		if style == "Out" then
			return 1
		elseif style == "In" then
			return 0
		elseif style == "InOut" then
			return 0.5
		end
	end
end

function easeIn(t,func)
	return func(t)
end

function easeOut(t,func)
	return 1-func(1-t)
end

function easeInOut(t,func)
	t=t*2
	if t < 1 then
		return easeIn(t,func)*.5
	else
		return .5+easeOut(t-1,func)*.5
	end
end

function bounce(t)
	if t<.36363636 then
		return 7.5625*t*t
	elseif t<.72727272 then
		t=t-.54545454
		return 7.5625*t*t+.75
	elseif t<.90909090 then
		t=t-.81818181
		return 7.5625*t*t+.9375
	else
		t=t-.95454545
		return 7.5625*t*t+.984375
	end
end

function cubic(t)
	return t^3
end

return module
