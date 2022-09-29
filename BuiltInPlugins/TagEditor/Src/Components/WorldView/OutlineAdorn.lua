local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Constants)

local function OutlineAdorn(props)
	if props.Adornee.ClassName == "Attachment" then
		return Roact.createElement("BoxHandleAdornment", {
			Adornee = props.Adornee.Parent,
			CFrame = props.Adornee.CFrame,
			Size = Constants.WorldView.OutlineAdorn.Size,
			Transparency = Constants.WorldView.OutlineAdorn.Transparency,
			Color3 = props.Color,
		})
	end
	return Roact.createElement("SelectionBox", {
		LineThickness = Constants.WorldView.OutlineAdorn.LineThickness,
		Adornee = props.Adornee,
		Color3 = props.Color,
	})
end

return OutlineAdorn
