local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local WatermarkComponent = Roact.PureComponent:extend("WatermarkComponent")
local PolicyService = game:GetService("PolicyService")

local angle = 14.5
local watermarkText = "仅用于测试，\n非正式发表。"

function WatermarkComponent:init()
	local function UpdateWatermarkVisibility()
		self:setState({
			watermarkVisible = not RunService:IsStudio() and
				PolicyService.IsLuobuServer == Enum.TriStateBoolean.True and
				PolicyService.LuobuWhitelisted == Enum.TriStateBoolean.False
		})
	end

	PolicyService:GetPropertyChangedSignal("IsLuobuServer"):connect(function()
		UpdateWatermarkVisibility()
	end)

	PolicyService:GetPropertyChangedSignal("LuobuWhitelisted"):connect(function()
		UpdateWatermarkVisibility()
	end)

	self:setState({
		absoluteSize = Vector2.new(0, 0),
		watermarkVisible = false
	})
	
	self.onAbsoluteSizeChange = function(frame)
		self:setState({
			absoluteSize = frame.AbsoluteSize,
		})
	end

	UpdateWatermarkVisibility()
end

function WatermarkComponent:render()
	local function CalculateRotatedFrameWidth()
		return self.state.absoluteSize.X * math.cos(math.rad(angle)) + self.state.absoluteSize.Y * math.sin(math.rad(angle))
	end

	local function CalculateRotatedFrameHeight()
		return self.state.absoluteSize.Y * math.cos(math.rad(angle)) + self.state.absoluteSize.X * math.sin(math.rad(angle))
	end

	local function CreateGridItems()
		local gridItemsX = math.ceil(CalculateRotatedFrameWidth() / 450)
		local gridItemsY = math.ceil(CalculateRotatedFrameHeight() / 450)
		local items = {}
		for y = 0, gridItemsY - 1 do
			for x = 0, gridItemsX - 1 do
				table.insert(items,
					Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						TextTransparency = 0.75,
						Text = watermarkText,
						TextSize = 30,
						TextColor3 = Color3.new(1, 1, 1),
						Size = UDim2.new(0, 225, 0, 225),
						Position = UDim2.new(0, x*450, 0, y*450),
					}))
				table.insert(items,
					Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						TextTransparency = 0.91,
						Text = watermarkText,
						TextSize = 30,
						TextColor3 = Color3.new(0, 0,0 ),
						Size = UDim2.new(0, 225, 0, 225),
						Position = UDim2.new(0, x*450 + 1, 0, y*450 + 1),
					}))
				table.insert(items,
					Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						TextTransparency = 0.75,
						Text = watermarkText,
						TextSize = 30,
						TextColor3 = Color3.new(1, 1, 1),
						Size = UDim2.new(0, 225, 0, 225),
						Position = UDim2.new(0, x*450 + 225, 0, y*450 + 225),
					}))
				table.insert(items,
					Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						TextTransparency = 0.91,
						Text = watermarkText,
						TextSize = 30,
						TextColor3 = Color3.new(0, 0, 0),
						Size = UDim2.new(0, 225, 0, 225),
						Position = UDim2.new(0, x*450 + 226, 0, y*450 + 226),
					}))
			end
		end
		return items
	end

	return self.state.watermarkVisible and Roact.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,

		DisplayOrder = 10,

		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
	}, {
		FullScreenFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, CalculateRotatedFrameWidth(), 0, CalculateRotatedFrameHeight()),
			Position = UDim2.new(0, (self.state.absoluteSize.X - CalculateRotatedFrameWidth()) * 0.5, 0, (self.state.absoluteSize.Y - CalculateRotatedFrameHeight()) * 0.5),
			Rotation = angle,
		}, CreateGridItems()),
	}) or nil
end

return WatermarkComponent