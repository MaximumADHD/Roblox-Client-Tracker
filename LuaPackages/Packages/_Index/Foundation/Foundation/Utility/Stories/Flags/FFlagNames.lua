-- Re-versioning a flag appends a numeric suffix to the FFlag while its Flags.lua key stays put, so
-- a key is not always the name SafeFlags reads, and a channel override has to name the real flag.
-- A story cannot recover these at runtime: reading Flags.lua needs plugin identity and GetFastFlag
-- needs the LocalUser capability, neither of which a storybook script has. FFlagNames.test.lua
-- holds this list to Flags.lua instead, and prints the corrected table when a flag is re-versioned.
local FFlagNames: { [string]: string } = {
	FoundationBadgeBetaUpdate = "FoundationBadgeBetaUpdate3",
	FoundationDisableTokenScaling = "FoundationDisableTokenScaling2",
	FoundationInternalInputBeta = "FoundationInternalInputBeta2",
	FoundationNumberInputScrubCallbackProps = "FoundationNumberInputScrubCallbackProps2",
	FoundationPopoverPluginOverlayMeasurement = "FoundationPopoverPluginOverlayMeasurement2",
	FoundationSliderBeta = "FoundationSliderBeta3",
	FoundationSliderOffloadDraggingMath = "FoundationSliderOffloadDraggingMath2",
	FoundationStatusIndicatorVariantExperiment = "FoundationStatusIndicatorVariantExperiment2",
	FoundationTokenOverrides = "FoundationTokenOverrides2",
	FoundationTooltipBeta = "FoundationTooltipBeta3",
}

return FFlagNames
