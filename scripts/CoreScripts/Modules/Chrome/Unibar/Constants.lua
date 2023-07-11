local CorePackages = game:GetService("CorePackages")
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local UIBlox = require(CorePackages.UIBlox)

type SpringOptions = ReactOtter.SpringOptions
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

return {
	ICON_CELL_WIDTH = 44,
	DIVIDER_CELL_WIDTH = 5,
	ICON_SIZE = 28,
	MENU_ANIMATION_SPRING = {
		dampingRatio = 1,
		frequency = 1 / 0.15, -- @150ms size anim
	} :: SpringOptions,

	-- WindowHost constants
	WINDOW_HOST_GUI_NAME = "WindowHost",
	CLOSE_ICON_SIZE = IconSize.Small,
	CORNER_RADIUS = UDim.new(0, 8),
	-- TODO these should be based on screensize and rules per device, etc
	DEFAULT_HEIGHT = 324,
	DEFAULT_WIDTH = 150,
	DEFAULT_HEIGHT_SMALL = 185,
	DEFAULT_WIDTH_SMALL = 86,
}
