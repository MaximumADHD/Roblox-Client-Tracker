local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local selfViewCloseButtonSignal = require(RobloxGui.Modules.SelfView.selfViewCloseButtonSignal)

return function(callback)
	local conn1 : any
	local conn2 : any
	conn1 = toggleSelfViewSignal:connect(callback)
	conn2 = selfViewCloseButtonSignal:connect(callback)

	return function()
		if conn1 then
			conn1:disconnect()
			conn1 = nil
		end
		if conn2 then
			conn2:disconnect()
			conn2 = nil
		end
	end
end