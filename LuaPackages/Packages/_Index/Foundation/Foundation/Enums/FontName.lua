-- Allowlist of typography font variants Foundation ships. Values must match
-- `Enum.Font.Name` for the body font used when baking
-- `Generated/StyleRules/Typography/<FontName>/`.
export type FontName = "BuilderSans" | "Cartoon"

local FontName = {
	BuilderSans = "BuilderSans" :: "BuilderSans",
	Cartoon = "Cartoon" :: "Cartoon",
}

return FontName
