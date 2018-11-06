local Grid = {}

Grid.Cleanup = {}

function Grid:init(Paths)
	Grid.Paths = Paths	
end

function Grid:terminate()
	for i, v in pairs(Grid.Cleanup) do
		v:Destroy()
	end
	Grid.Cleanup = {}
	Grid.Paths = nil
end

function Grid:create(obj)
		spawn(function()
		local USE_FADE_EFFECT = false
		local USE_GROW_EFFET = true
		--local center = obj.Parent:GetModelCFrame().p
		local center = CFrame.new(0,0,0).p
		local extents = obj.Parent:GetExtentsSize()
		local width = math.max(extents.X, extents.Z)
		width = width + 3
		local lineSpacing = width / 10
		local dstToFloor = (extents.Y * 0.5) + (obj.Position.Y - obj.Parent:GetModelCFrame().p.Y)
		local floorCenter = center - Vector3.new(0, dstToFloor, 0)
		local lineModel = Instance.new("Folder", game.CoreGui)
		lineModel.Name = "AnimEdit_Lines"
		table.insert(Grid.Cleanup, lineModel)
		--floorCenter = floorCenter - obj.Position
		--Build the grid
		
		local fade = function(line)
			spawn(function()
				for i = 1, 10 do
					if line then
						line.Transparency = 1 - i/10
						wait(0.07)
					end
				end
			end)		
		end
		
		local grow = function(line, finish)
			spawn(function()
				for i = 1, 60 do
					if line then
						line.Length = finish * (i/60)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
			end)			
		end
		
		for z = -5, 5 do
			local line = Instance.new("LineHandleAdornment")
			line.Thickness = 2
			line.Color = Grid.Paths.UtilityScriptColors.BrickColorInstitutionalWhite
			line.Length = width
			line.Adornee = obj
			line.CFrame = CFrame.new(floorCenter) + Vector3.new(z * lineSpacing, 0, width / 2)
			if USE_FADE_EFFECT then
				--Beta fade
				line.Transparency = 1
				fade(line)
				wait(0.05)
				--End of beta fade
			end
			if USE_GROW_EFFET then
				grow(line, width)
				wait(0.05)				
			end
			
			line.Parent = lineModel
			table.insert(Grid.Cleanup, line)
		end
		for x = -5, 5 do
			local line = Instance.new("LineHandleAdornment")
			line.Thickness = 2
			line.Color = Grid.Paths.UtilityScriptColors.BrickColorInstitutionalWhite
			line.Length = width
			line.Adornee = obj
			line.CFrame = (CFrame.new(floorCenter) + Vector3.new(width / 2, 0, x * lineSpacing)) * CFrame.Angles(0, math.pi/2, 0)
			if USE_FADE_EFFECT then
				--Beta fade
				line.Transparency = 1
				fade(line)
				wait(0.05)
				--End of beta fade
			end	
			if USE_GROW_EFFET then
				grow(line, width)
				wait(0.05)				
			end		
			
			line.Parent = lineModel
			table.insert(Grid.Cleanup, line)
		end
	end)
end

return Grid