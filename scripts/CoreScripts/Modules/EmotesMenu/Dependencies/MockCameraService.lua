local MockCameraService = {}
MockCameraService.__index = MockCameraService

local VIEWPORT_SIZE = Vector2.new(1024, 758)
local SCREEN_POS = Vector3.new(512, 375, 0)
local ON_SCREEN = true

function MockCameraService.new(): Camera
	local self = {
		ViewportSize = VIEWPORT_SIZE,
		WorldToScreenPoint = function(_)
			return SCREEN_POS, ON_SCREEN
		end,
	}

	setmetatable(self, {
		__index = MockCameraService,
	})
	return (self :: any) :: Camera
end

return MockCameraService
