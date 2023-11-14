local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local UIBlox = require(Packages.UIBlox)
-- Don't error if already initialized
local ok, err = pcall(function()
	local UIBloxConfig = require(Packages:FindFirstChild("ExperienceChat"):FindFirstChild("UIBloxConfig"))
	UIBlox.init(UIBloxConfig)
end)
if not ok then
	warn("Error initializing UIBlox", err)
end

local Colors = UIBlox.App.Style.Colors

local Config = require(ExperienceChat.Config)
local DEFAULT_BACKGROUND_COLOR = Config.ChatWindowBackgroundColor3

local ClientSettingsUtility = require(ExperienceChat.ClientSettings.ClientSettingsUtility)

local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)

local function fuzzyColorEquality(color1, color2)
	local function fuzzyNumEquality(num1: number, num2: number)
		return math.abs(num1 - num2) < 0.0001
	end
	return fuzzyNumEquality(color1.R, color2.R)
		and fuzzyNumEquality(color1.G, color2.G)
		and fuzzyNumEquality(color1.B, color2.B)
end

return function()
	describe("getBackgroundColor", function()
		it(
			"should return default color lerping to Flint if the color is default and EnableAccessibilitySettingsEffectsInExperienceChat is true",
			function()
				local chatSettings = {
					BackgroundColor3 = DEFAULT_BACKGROUND_COLOR,
				}
				local clientSettings = {
					preferredTransparency = 1,
				}

				game:SetFastFlagForTesting("EnableAccessibilitySettingsEffectsInExperienceChat", true)
				if not GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat then
					return
				end
				local backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, DEFAULT_BACKGROUND_COLOR)).toEqual(true)

				clientSettings.preferredTransparency = 0.5
				backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, Colors.Flint:Lerp(DEFAULT_BACKGROUND_COLOR, 0.5))).toEqual(
					true
				)

				clientSettings.preferredTransparency = 0
				backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, Colors.Flint)).toEqual(true)
			end
		)

		it(
			"should always return default color if the color is default and EnableAccessibilitySettingsEffectsInExperienceChat is false",
			function()
				local chatSettings = {
					BackgroundColor3 = DEFAULT_BACKGROUND_COLOR,
				}
				local clientSettings = {
					preferredTransparency = 1,
				}

				game:SetFastFlagForTesting("EnableAccessibilitySettingsEffectsInExperienceChat", false)
				local backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, DEFAULT_BACKGROUND_COLOR)).toEqual(true)

				clientSettings.preferredTransparency = 0.5
				backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, DEFAULT_BACKGROUND_COLOR)).toEqual(true)

				clientSettings.preferredTransparency = 0
				backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, DEFAULT_BACKGROUND_COLOR)).toEqual(true)
			end
		)

		it(
			"should always return changed color if the color is changed and EnableAccessibilitySettingsEffectsInExperienceChat is true",
			function()
				local chatSettings = {
					BackgroundColor3 = Color3.fromRGB(10, 40, 200),
				}
				local clientSettings = {
					preferredTransparency = 1,
				}

				game:SetFastFlagForTesting("EnableAccessibilitySettingsEffectsInExperienceChat", true)
				if not GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat then
					return
				end

				local backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, chatSettings.BackgroundColor3)).toEqual(true)

				clientSettings.preferredTransparency = 0.5
				backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, chatSettings.BackgroundColor3)).toEqual(true)

				clientSettings.preferredTransparency = 0
				backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
				expect(fuzzyColorEquality(backgroundColor, chatSettings.BackgroundColor3)).toEqual(true)
			end
		)
	end)

	describe("getBackgroundColor", function()
		it(
			"should return adjusted transparency if EnableAccessibilitySettingsEffectsInExperienceChat is true",
			function()
				local chatSettings = {
					BackgroundTransparency = 0.9,
				}
				local clientSettings = {
					preferredTransparency = 1,
				}

				game:SetFastFlagForTesting("EnableAccessibilitySettingsEffectsInExperienceChat", true)
				if not GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat then
					return
				end

				local backgroundTransparency =
					ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
				expect(backgroundTransparency).toEqual(0.9)

				clientSettings.preferredTransparency = 0.5
				backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
				expect(backgroundTransparency).toEqual(0.45)

				clientSettings.preferredTransparency = 0
				backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
				expect(backgroundTransparency).toEqual(0)
			end
		)

		it(
			"should always return default transparency if EnableAccessibilitySettingsEffectsInExperienceChat is false",
			function()
				local chatSettings = {
					BackgroundTransparency = 0.9,
				}
				local clientSettings = {
					preferredTransparency = 1,
				}

				game:SetFastFlagForTesting("EnableAccessibilitySettingsEffectsInExperienceChat", false)
				local backgroundTransparency =
					ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
				expect(backgroundTransparency).toEqual(0.9)

				clientSettings.preferredTransparency = 0.5
				backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
				expect(backgroundTransparency).toEqual(0.9)

				clientSettings.preferredTransparency = 0
				backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
				expect(backgroundTransparency).toEqual(0.9)
			end
		)
	end)
end
