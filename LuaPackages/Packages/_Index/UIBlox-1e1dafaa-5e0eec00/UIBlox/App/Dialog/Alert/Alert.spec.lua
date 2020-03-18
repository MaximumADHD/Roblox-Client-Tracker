local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local Alert = require(script.Parent.Alert)
local AlertType = require(AlertRoot.Enum.AlertType)

local DEFAULT_REQUIRED_PROPS = {
	alertType = AlertType.Informative,
	title = "Hello World",
	screenSize = Vector2.new(100, 100),
}

local function mountAlert(props)
	local combinedProps = DEFAULT_REQUIRED_PROPS
	if props then
		combinedProps = Cryo.Dictionary.join(DEFAULT_REQUIRED_PROPS, props)
	end
    local tree = mockStyleComponent(
		Roact.createElement(Alert, combinedProps)
	)
    local handle = Roact.mount(tree)
    return tree, function()
        Roact.unmount(handle)
    end
end

return function()
    describe("lifecycle", function()
		it("should mount and unmount informative alerts without issue", function()
			local _, cleanup = mountAlert({
				alertType = AlertType.Informative,
			})
			cleanup()
		end)

        it("should mount and unmount interactive alerts without issue", function()
			local _, cleanup = mountAlert({
				alertType = AlertType.Interactive,
				buttonStackInfo = {
					buttons = {
						{
							props = {
								text = "test",
								onActivated = function() end,
							}
						},
					},
				},
			})
			cleanup()
        end)
    end)
end