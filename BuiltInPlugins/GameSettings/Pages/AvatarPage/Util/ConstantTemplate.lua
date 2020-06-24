local Page = script.Parent.Parent

local ConstantAvatar = require(Page.Util.ConstantAvatar)

local Template = {}

Template.PlayerChoice = "PlayerChoice"
Template.AnimationStandard = "Standard"

Template.OuterCollision = "OuterBox"
Template.InnerCollision = "InnerBox"

Template.R6 = ConstantAvatar.AvatarType.R6
Template.R15 = ConstantAvatar.AvatarType.R15

return Template
