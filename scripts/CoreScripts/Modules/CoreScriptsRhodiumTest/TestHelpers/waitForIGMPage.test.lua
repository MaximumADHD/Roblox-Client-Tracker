--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local waitUntil = require(CorePackages.Workspace.Packages.TestUtils).waitUntil

local Element = Rhodium.Element
local XPath = Rhodium.XPath

local SETTLED_POSITION = UDim2.new(0, 0, 0, 0)
local TIMEOUT = 5

-- PageContainer slides a page in with an Otter spring, and the spring rests exactly on its goal.
return function(path: string, pageKey: string)
	local pageElement = Element.new(XPath.new(path):cat(XPath.new("PageContainer." .. pageKey)))
	waitUntil(function()
		local page = pageElement:getRbxInstance()
		return page ~= nil and page.Position == SETTLED_POSITION
	end, TIMEOUT)
end
