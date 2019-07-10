local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)

local function createImageSetComponent(innerComponent)
	return function(props)
		local fullProps = {}

		for key, value in pairs(props) do
			if key == "Image" and typeof(value) == "table" then
				for imageKey, imageValue in pairs(value) do
					fullProps[imageKey] = imageValue
				end
			else
				fullProps[key] = value
			end
		end

		return Roact.createElement(innerComponent, fullProps)
	end
end

return {
	Button = createImageSetComponent("ImageButton"),
	Label = createImageSetComponent("ImageLabel"),
}
