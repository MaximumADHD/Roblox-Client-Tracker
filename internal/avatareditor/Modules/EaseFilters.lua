--Ease Filters
--Stickmasterluke


-- t is a 0-1 value, being the percent


local pi = math.pi
local tau = pi*2
local halfpi = pi/2

local sin = math.sin
local cos = math.cos
local sqrt = math.sqrt
local abs = math.abs
local asin  = math.asin


function easeIn(t,func)	--Lol. Don't use this if you can. It's just a runaround
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

function easeOutIn(t,func)
	t=t*2
	if t < 1 then
		return easeOut(t,func)*.5
	else
		return .5+easeIn(t-1,func)*.5
	end
end


local function linear(t)
	return t
end

local function quad(t)
	return t^2
end

local function cubic(t)
	return t^3
end

local function quart(t)
	return t^4
end

local function quint(t)
	return t^5
end

local function sine(t)
	return 1-cos(t*halfpi)
end

local function expo(t)
	if t == 0 then
		return 0
	else
		return 2^(10*(t-1)) - .001		--This doesn't look right, but I am also not sure what it is supposed to do.
	end
end

local function circ(t)
	return 1-sqrt(1-t^2)
end

local function elastic(t)
	if t <= 0 then
		return 0
	end
	if t >= 1 then
		return 1
	end
	t=t-1
	return -(2^(10*t)*sin(.30833*tau))
end


local function back(t)
	return t * t * (2.70158*t - 1.70158)
end

local function bounce(t)
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

return {
	easeIn = easeIn,
	easeOut = easeOut,
	easeInOut = easeInOut,
	easeOutIn = easeOutIn,

	linear = linear,
	quad = quad,
	cubic = cubic,
	quart = quart,
	quint = quint,
	sine = sine,
	expo = expo,
	circ = circ,
	elastic = elastic,
	back = back,
	bounce = bounce,
}




