local Layer = require(game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor.Base.Layer)
local Types = require(game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor.Base.types)
local Config = require(script.Parent.Config)
local CharacterController = game.ReplicatedStorage.RobloxCharacterPackages.CharacterController
local SmoothDamp = require(CharacterController.Utils.SmoothDamp)

type BankingLayer = Types.Layer<{ gt: number }>
local BankingLayer = Layer:extend("BankingLayer")

BankingLayer.defaultProps = {
    inputDir = Vector3.zero,
}
BankingLayer.defaultLinkData = {}

function BankingLayer:init()
    self.smoothInputX = SmoothDamp.new(Config.BankingSmoothing)
    self.smoothInputZ = SmoothDamp.new(Config.BankingSmoothing)
end

function BankingLayer:update(dt)
    self.inputX = self.smoothInputX:update(self.props.inputDir.X, dt)
    self.inputZ = self.smoothInputZ:update(self.props.inputDir.Z, dt)
    
    for _, layer in self.children do
        layer:update(dt)
    end
end

function addRotation(pose, partName, cframe)
    pose:SetRotation(partName, cframe * pose:GetRotation(partName))
end

function BankingLayer:evaluate(mask)   
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateEmptyPose()
    
    local bodyTarget: Vector3 = Vector3.new(
        self.inputZ * Config.BankingRx,     -- Rx Lean forward
        self.inputX * Config.BankingRy,     -- Ry Twist into turn
        self.inputX * Config.BankingRz      -- Rz Bank into turn
    )
    bodyTarget *= Config.BankingScale
    
    addRotation(pose, "UpperTorso", CFrame.fromEulerAngles(
        math.rad(bodyTarget.X),
        math.rad(bodyTarget.Y),
        math.rad(bodyTarget.Z)
    ))
    
    addRotation(pose, "Head", CFrame.fromEulerAngles(
        math.rad(bodyTarget.X) * -1,    -- Rx Counter to keep head level
        math.rad(bodyTarget.Y) * 1,     -- Ry Twist farther to look into turn
        math.rad(bodyTarget.Z) * -.5    -- Rz Partially counter toward vertical
    ))
    
    return pose
end

return BankingLayer