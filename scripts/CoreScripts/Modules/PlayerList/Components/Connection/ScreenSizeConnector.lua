local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetScreenSize = require(PlayerList.Actions.SetScreenSize)

local EventConnection = require(script.Parent.EventConnection)

local ScreenSizeConnector = Roact.PureComponent:extend("ScreenSizeConnector")

function ScreenSizeConnector:init()
	self.state = {
		layerCollector = nil,
	}

	self.folderRef = Roact.createRef()
end

function ScreenSizeConnector:render()
	if self.state.layerCollector then
		local absoluteSize = self.state.layerCollector.AbsoluteSize
		self.props.setScreenSize(absoluteSize.X, absoluteSize.Y)
		return Roact.createElement(EventConnection, {
			event = self.state.layerCollector:GetPropertyChangedSignal("AbsoluteSize"),
			callback = function()
				absoluteSize = self.state.layerCollector.AbsoluteSize
				self.props.setScreenSize(absoluteSize.X, absoluteSize.Y)
			end,
		})
	else
		return Roact.createElement("Folder", {
			[Roact.Ref] = self.folderRef,
		})
	end
end

function ScreenSizeConnector:watchFolderAncestery()
	if self.folderRef.current and self.ancesteryConnection == nil then
		local layerCollector = self.folderRef.current:FindFirstAncestorWhichIsA("LayerCollector")
		if layerCollector then
			self:setState({
				layerCollector = layerCollector,
			})
		else
			self.ancesteryConnection = self.folderRef.current.AncestryChanged:Connect(function()
				if self.folderRef.current then
					layerCollector = self.folderRef.current:FindFirstAncestorWhichIsA("LayerCollector")
					if layerCollector then
						self:setState({
							layerCollector = layerCollector,
						})
					end
				end
			end)
		end
	end
end

function ScreenSizeConnector:didMount()
	self:watchFolderAncestery()
end

function ScreenSizeConnector:didUpdate()
	if not self.state.layerCollector then
		self:watchFolderAncestery()
	elseif self.ancesteryConnection then
		self.ancesteryConnection:Disconnect()
		self.ancesteryConnection = nil
	end
end

function ScreenSizeConnector:willUnmount()
	if self.ancesteryConnection then
		self.ancesteryConnection:Disconnect()
		self.ancesteryConnection = nil
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setScreenSize = function(sizeX, sizeY)
			return dispatch(SetScreenSize(sizeX, sizeY))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(ScreenSizeConnector)