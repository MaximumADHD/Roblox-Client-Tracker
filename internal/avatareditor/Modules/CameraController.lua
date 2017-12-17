local module = {}

local camera = game.Workspace.CurrentCamera
local percentCFrame = require(script.Parent:WaitForChild('PercentCFrame'))
local runService = game:GetService("RunService")


function swait(a)
	if a and a>.0333 then
		wait(a)
	else
		runService.RenderStepped:wait()
	end
end


local cameraTweenCount = 0
function tweenCamera(c0,c1,tweenTime,style,easeDirection,part)
	cameraTweenCount = cameraTweenCount + 1
	local thisCameraTween = cameraTweenCount
	local c0 = c0 or camera.CoordinateFrame
	local starttime = tick()
	local tweenTime = tweenTime or 2
	local style = style or function(t) return t end
	while cameraTweenCount == thisCameraTween do
		local percent = math.min(1,(tick()-starttime)/tweenTime)
		local t = easeDirection and easeDirection(percent,style) or style(percent)
		local c1 = part and part.CFrame*c1 or c1
		camera.CoordinateFrame = percentCFrame(c0,c1,t)
		if percent == 1 then
			return true
		end
		swait()
	end
	return false
end

module['tweenCamera'] = tweenCamera

return module
