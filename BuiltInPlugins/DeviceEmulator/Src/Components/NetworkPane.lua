--[[
	Network Settings Pane
]]

local main = script.Parent.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local SimpleExpandablePane = UI.SimpleExpandablePane
local TextInput2 = UI.TextInput2

local NetworkPane = Roact.PureComponent:extend("NetworkPane")

local NetworkSettings = settings().Network
local IncomingReplicationLagChanged = NetworkSettings:GetPropertyChangedSignal("IncomingReplicationLag")

export type Props = {
	OnClick: () -> (),
	Text: string,
}

type _Props = Props & {
	Localization: any,
	Stylizer: any,
}

function NetworkPane:init(_props)
  self.state = {
		incomingReplicationLag = NetworkSettings.IncomingReplicationLag
	}

	local onIncomingReplicationLagChanged = function()
		self:setState({
			incomingReplicationLag = NetworkSettings.IncomingReplicationLag
		})
	end
	self.incomingReplicationLagChangedConnection = IncomingReplicationLagChanged:Connect(onIncomingReplicationLagChanged)
end

function NetworkPane:willUnmount()
	self.incomingReplicationLagChangedConnection:Disconnect()
end


function NetworkPane:render()
  local props = self.props
	local state = self.state
  local localization = props.Localization

  return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Padding = 10,
		Spacing = 10,
	}, {
    networkPane = Roact.createElement(SimpleExpandablePane, {
      AlwaysExpanded = true,
			LayoutOrder = 2,
			Style = "Box",
			Text = localization:getText("NetworkSettings", "NetworkReplicationLagLabel"),
		}, {
			Roact.createElement(TextInput2, {
				PlaceholderText = localization:getText("NetworkSettings", "NetworkReplicationLagPlaceholder"),
				ShouldFocus = true,
				Width = 100,
				OnValidateText = function(text: string)
					local isValid = text == "" or tonumber(text) ~= nil
					local errorText
					if not isValid then
						errorText = localization:getText("NetworkSettings", "NetworkReplicationLagNotNumberError")
					end
					return isValid, errorText
				end,
				Text = state.networkReplicationLag or 0,
				OnTextChanged = function(text: string)
          NetworkSettings.IncomingReplicationLag = tonumber(text)
					self:setState({
						networkReplicationLag = text
					})
				end
			})
		})
  })
end

NetworkPane = withContext({
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(NetworkPane)

return NetworkPane