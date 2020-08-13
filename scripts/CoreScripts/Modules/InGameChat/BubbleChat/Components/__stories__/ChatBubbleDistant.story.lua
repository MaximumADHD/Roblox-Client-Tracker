local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local ChatBubbleDistant = require(script.Parent.Parent.ChatBubbleDistant)

return function(target)
	local root = Roact.createElement(ChatBubbleDistant)
	local handle = Roact.mount(root, target, "ChatBubbleDistant")

	return function()
		Roact.unmount(handle)
	end
end
