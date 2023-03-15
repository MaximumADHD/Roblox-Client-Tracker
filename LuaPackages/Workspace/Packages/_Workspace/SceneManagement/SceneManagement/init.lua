local SurfaceGuiWithAdornee = require(script.SurfaceGuiWithAdornee)
local calculateAdorneeProps = require(script.calculateAdorneeProps)

return {
	["jest.config"] = script["jest.config"],
	SurfaceGuiWithAdornee = SurfaceGuiWithAdornee,
	calculateAdorneeProps = calculateAdorneeProps,
}
