return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local function spawnTooltipPart()
		local part = Instance.new("Part")
		part.Name = "TooltipPart"

		local BillboardGui = Instance.new("BillboardGui")
		BillboardGui.Parent = part

		return part
	end

	describe("FTUX Tooltips", function()
		it("should create and destroy without errors for one tooltip", function()
			local ToolTip = require(script.Parent.ToolTip)
			local tooltipPart = spawnTooltipPart()

			local tooltipTest = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				Roact.createElement(ToolTip, {
					controllerPart = tooltipPart :: BasePart,
					tooltipText = "Tooltip Text",
				}),
			})

			local tooltip = Roact.mount(tooltipTest, CoreGui, "tooltipTest")
			Roact.unmount(tooltip)
		end)
	end)
end
