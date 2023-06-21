local CorePackages = game:GetService("CorePackages")
local ReactOtter = require(CorePackages.Packages.ReactOtter)
type SpringOptions = ReactOtter.SpringOptions

return {
	ICON_CELL_WIDTH = 44,
	DIVIDER_CELL_WIDTH = 5,
	ICON_SIZE = 28,
	MENU_ANIMATION_SPRING = {
		dampingRatio = 1,
		frequency = 1 / 0.15, -- @150ms size anim
	} :: SpringOptions,
}
