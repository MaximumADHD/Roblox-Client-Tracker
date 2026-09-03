-- Foundation-owned mirror of RbxDesignFoundations' `Theme` enum (see the
-- package's `enums.lua`). Kept as a standalone enum, like `ColorMode`, so the
-- public `Foundation.Enums.ThemeName` surface stays independent of the vendored
-- package and acts as the explicit allowlist of themes Foundation ships. The
-- values must stay assignable to `RbxDesignFoundations.Theme`.
export type ThemeName =
	"CircuitRush"
	| "Classic"
	| "CosmicDust"
	| "Default"
	| "ElectricLime"
	| "HyperPlum"
	| "InfernoBlast"
	| "Kids"
	| "KidsClassic"
	| "KineticEnergy"
	| "LavaGlow"
	| "NebulaDrift"
	| "NitroFrost"
	| "PixelPop"
	| "PolarFreeze"
	| "QuantumPulse"
	| "StarBurst"
	| "SuperCharge"

local ThemeName = {
	CircuitRush = "CircuitRush" :: "CircuitRush",
	Classic = "Classic" :: "Classic",
	CosmicDust = "CosmicDust" :: "CosmicDust",
	Default = "Default" :: "Default",
	ElectricLime = "ElectricLime" :: "ElectricLime",
	HyperPlum = "HyperPlum" :: "HyperPlum",
	InfernoBlast = "InfernoBlast" :: "InfernoBlast",
	Kids = "Kids" :: "Kids",
	KidsClassic = "KidsClassic" :: "KidsClassic",
	KineticEnergy = "KineticEnergy" :: "KineticEnergy",
	LavaGlow = "LavaGlow" :: "LavaGlow",
	NebulaDrift = "NebulaDrift" :: "NebulaDrift",
	NitroFrost = "NitroFrost" :: "NitroFrost",
	PixelPop = "PixelPop" :: "PixelPop",
	PolarFreeze = "PolarFreeze" :: "PolarFreeze",
	QuantumPulse = "QuantumPulse" :: "QuantumPulse",
	StarBurst = "StarBurst" :: "StarBurst",
	SuperCharge = "SuperCharge" :: "SuperCharge",
}

return ThemeName
