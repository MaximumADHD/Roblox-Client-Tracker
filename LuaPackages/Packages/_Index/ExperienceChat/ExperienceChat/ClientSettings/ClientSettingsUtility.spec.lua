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
		it("should return default color lerping to Flint if the color is default", function()
			local chatSettings = {
				BackgroundColor3 = DEFAULT_BACKGROUND_COLOR,
			}
			local clientSettings = {
				preferredTransparency = 1,
			}

			local backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
			expect(fuzzyColorEquality(backgroundColor, DEFAULT_BACKGROUND_COLOR)).toEqual(true)

			clientSettings.preferredTransparency = 0.5
			backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
			expect(fuzzyColorEquality(backgroundColor, Colors.Flint:Lerp(DEFAULT_BACKGROUND_COLOR, 0.5))).toEqual(true)

			clientSettings.preferredTransparency = 0
			backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
			expect(fuzzyColorEquality(backgroundColor, Colors.Flint)).toEqual(true)
		end)

		it("should always return changed color if the color is changed", function()
			local chatSettings = {
				BackgroundColor3 = Color3.fromRGB(10, 40, 200),
			}
			local clientSettings = {
				preferredTransparency = 1,
			}

			local backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
			expect(fuzzyColorEquality(backgroundColor, chatSettings.BackgroundColor3)).toEqual(true)

			clientSettings.preferredTransparency = 0.5
			backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
			expect(fuzzyColorEquality(backgroundColor, chatSettings.BackgroundColor3)).toEqual(true)

			clientSettings.preferredTransparency = 0
			backgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings)
			expect(fuzzyColorEquality(backgroundColor, chatSettings.BackgroundColor3)).toEqual(true)
		end)
	end)

	describe("getBackgroundColor", function()
		it("should return adjusted transparency", function()
			local chatSettings = {
				BackgroundTransparency = 0.9,
			}
			local clientSettings = {
				preferredTransparency = 1,
			}

			local backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
			expect(backgroundTransparency).toEqual(0.9)

			clientSettings.preferredTransparency = 0.5
			backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
			expect(backgroundTransparency).toEqual(0.45)

			clientSettings.preferredTransparency = 0
			backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings)
			expect(backgroundTransparency).toEqual(0)
		end)
	end)
end
