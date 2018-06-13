local ROOT_FOCUS_OFFSET = CFrame.new(0, 2, 0)

local Maid = require(script:WaitForChild("Maid"))
local AngleSpring = require(script:WaitForChild("AngleSpring"))

local camera = game.Workspace.CurrentCamera

---------------------------------------------------------------------------------------

local subjectModel = nil
local subjectRootPart = nil
local subjectIsVehicle = false

---------------------------------------------------------------------------------------

do
	local maid = Maid.new()

	local function SubjectChanged()
		maid:sweep()
		local subj = camera.CameraSubject
		
		local function handleHumanoid(humanoid, isVehicle)
			subjectModel = humanoid.Parent
			subjectRootPart = humanoid.RootPart
			subjectIsVehicle = isVehicle
			maid:mark(humanoid:GetPropertyChangedSignal('RootPart'):Connect(SubjectChanged))
			maid:mark(humanoid:GetPropertyChangedSignal('Parent'):Connect(SubjectChanged))
		end
		
		if subj and subj:IsA('Humanoid') then
			handleHumanoid(subj, false)
		elseif subj and subj:IsA('VehicleSeat') then
			handleHumanoid(subj.Occupant, true)
		else
			subjectModel = nil
			subjectRootPart = nil
			subjectIsVehicle = false
		end
	end

	SubjectChanged()
	camera:GetPropertyChangedSignal'CameraSubject':Connect(SubjectChanged)
end

---------------------------------------------------------------------------------------

local yawSpring = AngleSpring.new(2, 0)

return function(dt)
	if subjectModel and subjectRootPart then
		
		local subjectTransform = subjectRootPart.CFrame*ROOT_FOCUS_OFFSET
		if not subjectIsVehicle then
			subjectTransform = CFrame.new(subjectTransform.p)
		else
			local _, yaw = subjectTransform:toEulerAnglesYXZ()
			yawSpring:setGoal(yaw)
			yawSpring:step(dt)
			subjectTransform = CFrame.new(subjectTransform.p)*CFrame.fromEulerAnglesYXZ(0, yawSpring:getState(), 0)
		end
		
		return subjectModel, subjectTransform, subjectRootPart
	else
		return nil, CFrame.new(), Vector3.new()
	end
end








