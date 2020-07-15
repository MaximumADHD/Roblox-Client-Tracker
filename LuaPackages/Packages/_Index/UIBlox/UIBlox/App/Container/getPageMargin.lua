local Container = script.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

return function(containerWidth)
	assert(t.number(containerWidth))
	if containerWidth <= 320 then
		return 12
	elseif containerWidth > 320 and containerWidth <= 414 then
		return 24
	else
		return 48
	end
end
