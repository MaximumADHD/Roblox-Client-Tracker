--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local Roact = require(CorePackages.Packages.Roact)
local Foundation = require(CorePackages.Packages.Foundation)

local BlockingModalContainer = require(script.Parent.BlockingModalContainer)
local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local useOverlay = Foundation.Hooks.useOverlay

local BlockingModalScreen = Roact.PureComponent:extend("BlockingModalScreen")

BlockingModalScreen.validateProps = t.interface({
	closeModal = t.callback,
	player = t.interface({
		DisplayName = t.string,
		Name = t.string,
		UserId = t.number,
	}),
	translator = t.optional(t.table),
	source = t.optional(t.string),
	onBlockingSuccess = t.optional(t.callback) ,
	overlay = t.optional(t.instanceIsA("GuiBase2d")),
})

function BlockingModalScreen:render()
	local overlay = self.props.overlay

	local blockingModalContainer = Roact.createElement(FocusRoot, {
		surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
		isIsolated = true,
		isAutoFocusRoot = true,
	}, {
		BlockingModalContainerWrapper = Roact.createElement(BlockingModalContainer, self.props),
	})

	local children = nil;

	if overlay ~= nil then
		children = {
			Roact.createElement(Roact.Portal, {
				target = overlay,
			}, {
				BlockingModalScreen = blockingModalContainer,
			})
		}
	else
		children = {
			Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				BlockingModalScreen = Roact.createElement("ScreenGui", {
					IgnoreGuiInset = true,
					AutoLocalize = false,
					DisplayOrder = 6,
				}, {
					BlockingModalContainer = blockingModalContainer,
				}),
			}),
		}
	end
	return renderWithCoreScriptsStyleProvider(children)
end

local function BlockingModalScreenWithFoundationOverlay(props)
	local overlay = useOverlay()
	local forwardedProps = table.clone(props)
	forwardedProps.overlay = overlay

	return Roact.createElement(BlockingModalScreen, forwardedProps)
end

return BlockingModalScreenWithFoundationOverlay
