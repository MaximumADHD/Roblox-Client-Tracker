--!strict
local FFlagSelfieViewEnabled: boolean = game:DefineFastFlag("SelfieViewEnabled", false)
local ChromeEnabled = require(script.Parent.Parent.Parent.Chrome.Enabled)

local GetFFlagSelfieViewEnabled = function(): boolean
	-- TODO: ChromeEnabled is only for dogfooding and makes
	-- selfieview and chrome inseparatable. This was done to quickly
	-- setup dogfooding, and should be removed before IXP.
	return FFlagSelfieViewEnabled or ChromeEnabled()
end

return GetFFlagSelfieViewEnabled
