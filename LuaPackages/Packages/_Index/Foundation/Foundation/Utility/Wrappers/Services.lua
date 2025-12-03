export type MockServices = {
	CoreGui: { [any]: any }?,
	GuiService: { [any]: any }?,
	LocalizationService: { [any]: any }?,
	Players: { [any]: any }?,
	RunService: { [any]: any }?,
	TextService: { [any]: any }?,
	UserInputService: { [any]: any }?,
}

local Services = {
	CoreGui = game:GetService("CoreGui"),
	GuiService = game:GetService("GuiService"),
	LocalizationService = game:GetService("LocalizationService"),
	Players = game:GetService("Players"),
	RunService = game:GetService("RunService"),
	TextService = game:GetService("TextService"),
	UserInputService = game:GetService("UserInputService"),
}

return Services
