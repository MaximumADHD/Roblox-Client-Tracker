-- Deprecated see PlayerList.Common.CreateLayoutValues in PlayerList pacakge.

local CorePackages = game:GetService("CorePackages")

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local TopBarAppConstants = require(script.Parent.Parent.TopBar.Constants)

local CreateLayoutValues = PlayerListPackage.Common.CreateLayoutValues
return function(isTenFoot)
	return CreateLayoutValues(isTenFoot, TopBarAppConstants)
end
