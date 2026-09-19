export type ColorMode = "Dark" | "Light"

local ColorMode = {
	Dark = "Dark" :: "Dark",
	Light = "Light" :: "Light",
}

export type Theme = "CircuitRush" | "Classic" | "CosmicDust" | "Default" | "ElectricLime" | "HyperPlum" | "InfernoBlast" | "Kids" | "KidsClassic" | "KineticEnergy" | "LavaGlow" | "NebulaDrift" | "NitroFrost" | "PixelPop" | "PolarFreeze" | "QuantumPulse" | "StarBurst" | "SuperCharge"

local Theme = {
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

return {
	ColorMode = ColorMode,
	Theme = Theme,
}
