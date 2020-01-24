local Root = script.Parent.Parent

local SetWindowState = require(Root.Actions.SetWindowState)
local WindowState = require(Root.Enums.WindowState)
local Thunk = require(Root.Thunk)

local function hideWindow(productInfo, accountInfo, alreadyOwned)
	return Thunk.new(script.Name, {}, function(store, services)
		return store:dispatch(SetWindowState(WindowState.Hidden))
	end)
end

return hideWindow