local paths = require(script.Parent.Parent.Paths)

local Template = {}

Template.PlayerChoice = "PlayerChoice"
Template.AnimationStandard = "Standard"

Template.OuterCollision = "OuterBox"
Template.InnerCollision = "InnerBox"

Template.R6 = paths.ConstantAvatar.AvatarType.R6
Template.R15 = paths.ConstantAvatar.AvatarType.R15

return Template
