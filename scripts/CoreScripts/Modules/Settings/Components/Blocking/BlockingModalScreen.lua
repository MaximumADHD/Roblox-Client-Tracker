--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)

local BlockingModalContainer = require(script.Parent.BlockingModalContainer)

local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

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
})

function BlockingModalScreen:render()
	local blockingModalContainer = Roact.createElement(
		FocusRoot,
		{
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
			isIsolated = true,
			isAutoFocusRoot = true,
		},
		{
			BlockingModalContainerWrapper = Roact.createElement(BlockingModalContainer, self.props),
		}
	)
	local children = {
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
	return renderWithCoreScriptsStyleProvider(children)
end

return BlockingModalScreen
