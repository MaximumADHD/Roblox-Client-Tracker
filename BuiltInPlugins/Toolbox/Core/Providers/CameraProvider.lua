-- This script is used to manage camera instance for Marketplace
-- We should have only one camera in the entire Marketplace
-- And it will be created and destroyed by this script.

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Keys = require(Plugin.Core.Util.Keys)

local CameraProvider = Roact.PureComponent:extend("CameraProvider")

function CameraProvider:init(props)
	local camera = Instance.new("Camera")
	camera.Name = "MarketplaceCamera"

	self._context[Keys.camera] = camera
end

function CameraProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function CameraProvider:willUnmount()
	local camera = self._context[Keys.camera]
	if camera then
		camera:destroy()
	end
end

return CameraProvider