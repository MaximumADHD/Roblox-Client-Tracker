local GetFFlagSelfieViewEnabled = require(script.Parent.Parent.SelfieView.Flags.GetFFlagSelfieViewEnabled)

return game:GetEngineFeature("FacialAnimationStreaming2") and not GetFFlagSelfieViewEnabled()
