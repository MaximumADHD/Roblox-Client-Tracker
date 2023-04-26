local SurfaceGuiWithAdornee = require(script.SurfaceGuiWithAdornee)
local calculateAdorneeProps = require(script.calculateAdorneeProps)
local Lighting = require(script.Lighting)
local BackgroundScene = require(script.BackgroundScene)

return {
	["jest.config"] = script["jest.config"],
	SurfaceGuiWithAdornee = SurfaceGuiWithAdornee,
	calculateAdorneeProps = calculateAdorneeProps,
	Lighting = Lighting,
	BackgroundScene = BackgroundScene,
}
