local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local BlockingUtility = require(RobloxGui.Modules.BlockingUtility)
local ActionModal = require(script.Parent.ActionModal)

local BlockingModalContainer = Roact.PureComponent:extend("BlockingModalContainer")

BlockingModalContainer.defaultProps = {
	screenSize = Vector2.new(1000, 1000),
	blockingUtility = BlockingUtility,
	cancelTextKey = "Feature.SettingsHub.Action.Cancel",
	blockTextKey = "Feature.SettingsHub.Action.Block",
	titleKey = "Feature.SettingsHub.Heading.BlockUser",
	bodyKey = "Feature.SettingsHub.Message.BlockConfirmation",
}

BlockingModalContainer.validateProps = t.interface({
	analytics = t.optional(t.table),
	blockTextKey = t.optional(t.string),
	blockingUtility = t.optional(t.table),
	bodyKey = t.optional(t.string),
	cancelTextKey = t.optional(t.string),
	closeModal = t.callback,
	player = t.interface({
		DisplayName = t.string,
		Name = t.string,
		UserId = t.number,
	}),
	translator = t.optional(t.table),
	titleKey = t.optional(t.string),
	source = t.optional(t.string),
})

function BlockingModalContainer:init()
	self.state = {
		screenSize = Vector2.new(1000, 1000),
	}

	self.action = function()
		local success = self.props.blockingUtility:BlockPlayerAsync(self.props.player)

		if success then
			self.props.analytics:action("SettingsHub", "blockUser", {
				blockeeUserId = self.props.player.UserId,
				source = self.props.source,
			})
		end

		self.props.closeModal()
	end

	self.setScreenSize = function(absoluteSize)
		self:setState({
			screenSize = Vector2.new(absoluteSize.X, absoluteSize.Y),
		})
	end
end

function BlockingModalContainer:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = 2,
		[Roact.Change.AbsoluteSize] = function(rbx)
			self.setScreenSize(rbx.AbsoluteSize)
		end,
	}, {
		BlockingModal = Roact.createElement(ActionModal, {
			title = self.props.translator:FormatByKey(self.props.titleKey, {
				DisplayName = self.props.player.DisplayName,
			}),
			body = self.props.translator:FormatByKey(self.props.bodyKey, {
				["DISPLAY_NAME"] = self.props.player.DisplayName,
				["RBX_NAME"] = self.props.player.Name,
			}),
			cancelText = self.props.translator:FormatByKey(self.props.cancelTextKey),
			actionText = self.props.translator:FormatByKey(self.props.blockTextKey),
			cancel = self.props.closeModal,
			action = self.action,
			screenSize = self.state.screenSize,
		}),
	})
end

return BlockingModalContainer
