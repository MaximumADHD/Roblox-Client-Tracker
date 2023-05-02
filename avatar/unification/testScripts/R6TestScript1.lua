-- This script is not intended to be run, only to be parsed by Script Analysis Tests

r = game:service("RunService")


local damage = 5


local slash_damage = 15
local lunge_damage = 20

sword = script.Parent.Handle
Tool = script.Parent


local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = sword
SlashSound.Volume = .7

local LungeSound = Instance.new("Sound")
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Parent = sword
LungeSound.Volume = .6

local UnsheathSound = Instance.new("Sound")
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Parent = sword
UnsheathSound.Volume = 1

function damage22(humanoid4)
x = game.Players:GetPlayerFromCharacter(humanoid4.Parent)
xzc = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
damage2 = damage
	if xzc.Damage1.Value == 1 then
	damage2 = damage*1.1
	end
	if x ~= nil then 
		if x.Play1.Value ~= 0 then
			if xzc.Play1.Value ~= 0 then
				if game.ServerStorage.Team1.Value == "" then
				humanoid4:TakeDamage(damage2)
				elseif game.ServerStorage.Team1.Value ~= "" then
					if xzc.Team1.Value ~= x.Team1.Value then
					humanoid4:TakeDamage(damage2)
					end
				end
			end
		end
	end
end

function blow(hit)
	local humanoid = hit.Parent:findFirstChild("Humanoid")
	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)
	local hum = vCharacter:findFirstChild("Humanoid") -- non-nil if tool held by a character
	if humanoid~=nil and humanoid ~= hum and hum ~= nil then
		-- final check, make sure sword is in-hand

		local right_arm = vCharacter:FindFirstChild("Right Arm")
		if (right_arm ~= nil) then
			local joint = right_arm:FindFirstChild("RightGrip")
			if (joint ~= nil and (joint.Part0 == sword or joint.Part1 == sword)) then
				tagHumanoid(humanoid, vPlayer)
				damage22(humanoid)
				wait(1)
				untagHumanoid(humanoid)
			end
		end
	end
end


function tagHumanoid(humanoid, player)
	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = player
	creator_tag.Name = "creator"
	creator_tag.Parent = humanoid
end

function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end


function attack()
	if Tool.Parent.Name ~= "Backpack" then
		if Tool.Parent.Torso:FindFirstChild("Right Shoulder") then
		Tool.Parent.Torso["Right Shoulder"].MaxVelocity = 0.7
		Tool.Parent.Torso["Right Shoulder"].DesiredAngle = 3.6
		wait(.1)
		if Tool.Parent.Name ~= "Backpack" then
			if Tool.Parent.Torso:FindFirstChild("Right Shoulder") then
				Tool.Parent.Torso["Right Shoulder"].MaxVelocity = 1
			
				damage = slash_damage
				SlashSound:play()
				local anim = Instance.new("StringValue")
				anim.Name = "toolanim"
				anim.Value = "Slash"
				anim.Parent = Tool
				end
			end
		end
	end
end

function lunge()
	if Tool.Parent.Name ~= "Backpack" then
	damage = lunge_damage

	LungeSound:play()

	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Lunge"
	anim.Parent = Tool
	
	
	force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(0,10,0) --Tool.Parent.Torso.CFrame.lookVector * 80
	force.maxForce = Vector3.new(0,1000,0)
	force.Parent = Tool.Parent.Torso
	wait(.25)
	--swordOut()
	wait(.25)
	force.Parent = nil
	wait(.5)
	--swordUp()

	damage = slash_damage
	end
end

function clawOut()
	Tool.GripForward = Vector3.new(0,0,1)
	Tool.GripRight = Vector3.new(0,1,0)
	Tool.GripUp = Vector3.new(1,0,0)
end

function clawUp()
	Tool.GripForward = Vector3.new(-1,0,0)
	Tool.GripRight = Vector3.new(0,1,0)
	Tool.GripUp = Vector3.new(0,0,1)
end

function swordAcross()
	-- parry
end


Tool.Enabled = true
local last_attack = 0
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end

	t = r.Stepped:wait()

	if (t - last_attack < .2) then
		lunge()
	else
		attack()
	end

	last_attack = t

	--wait(.5)

	Tool.Enabled = true
end


function onEquipped()
	UnsheathSound:play()
end


script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(onEquipped)


connection = sword.Touched:connect(blow)


