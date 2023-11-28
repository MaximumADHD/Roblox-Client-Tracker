local Compositor = game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor
local Layer = require(Compositor.Base.Layer)
local Types = require(Compositor.Base.types)
local CharacterController = game.ReplicatedStorage.RobloxCharacterPackages.CharacterController
local SmoothDamp = require(CharacterController.Utils.SmoothDamp)

type BankingLayer = Types.Layer<{ gt: number }>
local BankingLayer = Layer:extend("BankingLayer")

BankingLayer.defaultProps = {
    inputDir = Vector3.zero,
}
BankingLayer.defaultLinkData = {}

function BankingLayer:init()
    self.config = require(self.context.character.ConfigData).Locomotion
    self.smoothInputX = SmoothDamp.new(self.config.BankingSmoothing)
    self.smoothInputZ = SmoothDamp.new(self.config.BankingSmoothing)
end

function BankingLayer:update(dt)
    self.inputX = self.smoothInputX:update(self.props.inputDir.X, dt)
    self.inputZ = self.smoothInputZ:update(self.props.inputDir.Z, dt)

    for _, layer in self.children do
        layer:update(dt)
    end
end

function preRotate(pose, mask, partName, rot)
    local joint = pose:GetArticulatedJoint(partName, mask)
    if joint then
        joint.CFrameInLocalSpace = rot * joint.CFrameInLocalSpace.Rotation + joint.CFrameInLocalSpace.Position
    end
end

function BankingLayer:evaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateEmptyPose()

    local bodyTarget: Vector3 = Vector3.new(
        self.inputZ * self.config.BankingRx,     -- Rx Lean forward
        self.inputX * self.config.BankingRy,     -- Ry Twist into turn
        self.inputX * self.config.BankingRz      -- Rz Bank into turn
    )
    bodyTarget *= self.config.BankingScale

    preRotate(pose, mask, "UpperTorso", CFrame.fromEulerAngles(
        math.rad(bodyTarget.X),
        math.rad(bodyTarget.Y),
        math.rad(bodyTarget.Z)
    ))

    preRotate(pose, mask, "Head", CFrame.fromEulerAngles(
        math.rad(bodyTarget.X) * -1,    -- Rx Counter to keep head level
        math.rad(bodyTarget.Y) * 1,     -- Ry Twist farther to look into turn
        math.rad(bodyTarget.Z) * -.5    -- Rz Partially counter toward vertical
    ))

    return pose
end

return BankingLayer
