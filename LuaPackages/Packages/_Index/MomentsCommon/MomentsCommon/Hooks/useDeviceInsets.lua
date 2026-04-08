local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

local HardwareSafeAreaInsets = require(MomentsCommon.Utils.HardwareSafeAreaInsets)

return function()
	local deviceInsets, setDeviceInsets = React.useState(HardwareSafeAreaInsets.deviceInsets())
	React.useLayoutEffect(function()
		local conn = HardwareSafeAreaInsets:connect(setDeviceInsets)
		if HardwareSafeAreaInsets.diffInsets(deviceInsets, HardwareSafeAreaInsets.deviceInsets()) then
			setDeviceInsets(HardwareSafeAreaInsets.deviceInsets)
		end
		return function()
			conn.disconnect()
		end
	end, {})
	return deviceInsets
end
