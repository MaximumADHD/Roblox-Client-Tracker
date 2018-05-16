local TextService = game:GetService("TextService")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Immutable = require(Modules.Common.Immutable)

local FitChildren = require(Modules.LuaApp.FitChildren)

local FitTextLabel = Roact.PureComponent:extend("FitTextLabel")

local MAXINT = 2^30 -- Any larger that 2^30 and TextService:GetTextSize stops giving valid results

function FitTextLabel:init()
	self.signals = {}
end

function FitTextLabel:render()
	local frameProps = Immutable.RemoveFromDictionary(self.props, "fitAxis")

	return Roact.createElement("TextLabel",
		Immutable.JoinDictionaries(frameProps, {
			[Roact.Ref] = function(rbx)
				self.frame = rbx
			end,
		})
	)
end

function FitTextLabel:didMount()
	local fitAxis = self.props.fitAxis or FitChildren.FitAxis.Height

	local function resize()
		-- Unlike the other fit components, FitTextLabel defaults to expanding only height, instead of
		-- expanding on both axis. This is because expanding on both is functionally the same as expanding
		-- on width only, because if a width isn't specified there's no way to know where to break the
		-- lines, so it'll end up entirely on one line anyway. And the common case of a resizable text field
		-- is to have a set width with an unknown number of lines depending on the length of the text.
		if fitAxis == FitChildren.FitAxis.Width or fitAxis == FitChildren.FitAxis.Both then
			local maxDimensions = Vector2.new(MAXINT, self.frame.TextSize)
			local width = UDim.new(0, TextService:GetTextSize(self.frame.Text,
				self.frame.TextSize, self.frame.Font, maxDimensions).x)
			local height = fitAxis == FitChildren.FitAxis.Both
				and UDim.new(0, self.frame.TextSize) or self.frame.Size.Height
			self.frame.Size = UDim2.new(width,  height)
		else
			local maxDimensions = Vector2.new(self.frame.AbsoluteSize.X, MAXINT)
			local height = UDim.new(0,
				TextService:GetTextSize(self.frame.Text, self.frame.TextSize,
					self.frame.Font, maxDimensions).y)
			self.frame.Size = UDim2.new(self.frame.Size.Width, height)
		end
	end
	resize()
	table.insert(self.signals, self.frame:GetPropertyChangedSignal("Text"):Connect(resize))
	table.insert(self.signals, self.frame:GetPropertyChangedSignal("TextSize"):Connect(resize))
	if fitAxis == FitChildren.FitAxis.Height then
		table.insert(self.signals, self.frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(resize))
	end
end

function FitTextLabel:didUnmount()
	for _, signal in ipairs(self.signals) do
		signal:Disconnect()
	end
	self.signals = {}
end

return FitTextLabel