local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Constants)

local function BoxAdorn(props)
	if props.Adornee.ClassName == "Attachment" then
		return Roact.createElement("BoxHandleAdornment", {
			Adornee = props.Adornee.Parent,
			CFrame = props.Adornee.CFrame,
			Size = Constants.WorldView.BoxAdorn.Size,
			Transparency = Constants.WorldView.BoxAdorn.Transparency,
			Color3 = props.Color,
		})
	end
	return Roact.createElement("SelectionBox", {
		LineThickness = Constants.WorldView.BoxAdorn.LineThickness,
		SurfaceTransparency = Constants.WorldView.BoxAdorn.SurfaceTransparency,
		SurfaceColor3 = props.Color,
		Adornee = props.Adornee,
		Color3 = props.Color,
	})
end

return BoxAdorn
