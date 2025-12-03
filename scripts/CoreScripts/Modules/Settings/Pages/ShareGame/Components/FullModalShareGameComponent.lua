local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Modules = CoreGui.RobloxGui.Modules
local ShareGameComponents = script.Parent

local GetFFlagExtraInviteModalStringValidation = require(Modules.Flags.GetFFlagExtraInviteModalStringValidation)

local ShareGameContainer = require(ShareGameComponents.ShareGameContainer)
local ModalShareGamePageFrame = require(ShareGameComponents.ModalShareGamePageFrame)
local LayoutProvider = require(ShareGameComponents.LayoutProvider)
local InviteSingleUserContainer = require(ShareGameComponents.InviteSingleUserContainer)
local LoadingModal = require(ShareGameComponents.LoadingModal)

local FullModalShareGameComponent = Roact.PureComponent:extend("FullModalShareGameComponent")

function FullModalShareGameComponent:render()
	local isVisible = self.props.isVisible
	local analytics = self.props.analytics
	local onAfterClosePage = self.props.onAfterClosePage
	local store = self.props.store
	local promptMessage = self.props.promptMessage
	local inviteUserId = self.props.inviteUserId
	local inviteMessageId = self.props.inviteMessageId
	local launchData = self.props.launchData
	local isLoading = self.props.isLoading

	if GetFFlagExtraInviteModalStringValidation() and promptMessage then
		if not inviteUserId then
			-- Mutli invite prompt only supports one line of text
			promptMessage = promptMessage:gsub("\n", " ")
		end
		if promptMessage:gsub("%s", "") == "" then
			promptMessage = nil
		end
	end

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		screenGui = Roact.createElement("ScreenGui", {
			AutoLocalize = false,
			Enabled = isVisible,
			DisplayOrder = -1,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			loadingIndicator = isLoading and Roact.createElement(LoadingModal),
			layoutProvider = not isLoading and Roact.createElement(LayoutProvider, nil, {
				ShareGameContainer = Roact.createElement(ShareGameContainer, {
					analytics = analytics,
					isVisible = isVisible,
					skeletonComponent = if inviteUserId then InviteSingleUserContainer else ModalShareGamePageFrame,
					promptMessage = promptMessage,
					inviteUserId = inviteUserId,
					inviteMessageId = inviteMessageId,
					launchData = launchData,
					onAfterClosePage = function()
						local sentToUserIds = {}
						for userId, _ in pairs(store:getState().Invites) do
							table.insert(sentToUserIds, userId)
						end
						onAfterClosePage(sentToUserIds)
					end,
				}),
			}),
		}),
	})
end

return FullModalShareGameComponent
