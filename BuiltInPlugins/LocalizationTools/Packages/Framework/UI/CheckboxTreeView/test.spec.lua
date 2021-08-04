return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Theme = ContextServices.Theme
	local provide = ContextServices.provide
	local FrameworkStyles = require(Framework.UI.FrameworkStyles)
	local CheckboxTreeView = require(script.Parent)

	local StudioTheme = require(Framework.Style.Themes.StudioTheme)

	local Util = require(Framework.Util)
	local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

	local items = {
		{
			name = "Workspace",
			children = {
				{
					name = "Ocean",
					children = {
						{
							name = "Billy The Fish"
						}
					}
				}
			}
		},
		{
			name = "ReplicatedStorage",
			children = {
				{
					name = "WeatherSystem"
				},
				{
					name = "CloudSystem",
					children = {
						{
							name = "Cheeky Cumulus"
						}
					}
				},
			}
		},
		{
			name = "ServerStorage",
			children = {
				{
					name = "Secret Base",
					children = {
						{
							name = "Obsidian Door"
						}
					}
				}
			 }
		}
	}

	local function createCheckboxTreeView()
		local theme
		if THEME_REFACTOR then
			theme = StudioTheme.mock()
		else
			theme = Theme.new(function()
				return {
					Framework = FrameworkStyles.new(),
				}
			end)
		end

		return provide({theme}, {
			CheckboxTreeView = Roact.createElement(CheckboxTreeView, {
				RootItems = items,
				Size = UDim2.new(0, 240, 0, 240),
				Checked = {},
				OnCheck = function(checked) end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createCheckboxTreeView()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end