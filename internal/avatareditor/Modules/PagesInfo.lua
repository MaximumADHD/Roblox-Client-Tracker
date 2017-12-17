local flagManager = require(script.Parent.FlagManager)
local platformInfo = require(script.Parent.PlatformInfo)

local legsZoomCFrame = CFrame.new(0, 0.75, -8)
local faceZoomCFrame = CFrame.new(0, 4.1, -10) * CFrame.Angles(math.rad(10), 0, 0)
local armsZoomCFrame = CFrame.new(0, 2.5, -8)
local headWideZoomCFrame = CFrame.new(0, 3.5, -6)

if platformInfo.Mode == 'tablet' then
	legsZoomCFrame = CFrame.new(-0.75, -2, -1.5)
	faceZoomCFrame = CFrame.new(-1.65, 1.1, -3)
	armsZoomCFrame = CFrame.new(-0.6, -0.5, -1)
	headWideZoomCFrame = CFrame.new(-0.35, 1, 0)
end

local legsFocus = {Parts={'RightUpperLeg', 'LeftUpperLeg'}}
local faceFocus = {Parts={'Head'}}
local armsFocus = {Parts={'UpperTorso'}}
local headWideFocus = {Parts={'Head'}}
local neckFocus = {Parts={'Head', 'UpperTorso'}}
local shoulderFocus = {Parts={'Head', 'RightUpperArm', 'LeftUpperArm'}}
local waistFocus = {Parts={'LowerTorso', 'RightUpperLeg', 'LeftUpperLeg'}}

local scalingOnlyWorksForR15Text = 'Scaling only works\nfor R15 avatars'
local animationsOnlyWorkForR15Text = 'Animations only work\nfor R15 avatars'

local recentPage = {name = 'Recent All',
	display = 'All',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-all.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-all-on.png',
	iconImageName =		'ic-all',
	iconImageSelectedName = 'ic-all-on',
	specialPageType = 'Recent All'
}

local recentClothingPage = {name = 'Recent Clothing',
	display = 'Clothing',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-clothing.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-clothing-on.png',
	iconImageName = 'ic-clothing',
	iconImageSelectedName = 'ic-clothing-on',
	specialPageType = 'Recent Clothing'
}
local recentBodyPage = {name = 'Recent Body',
	display = 'Body Parts',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-body-part.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-body-part-on.png',
	iconImageName = 'ic-body',
	iconImageSelectedName = 'ic-body-on',
	specialPageType = 'Recent Body'
}
local recentAnimationPage = {name = 'Recent Animation',
	display = 'Animations',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-avatar-animation.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-avatar-animation-on.png',
	iconImageName = 'ic-animations',
	iconImageSelectedName = 'ic-animations-on',
	specialPageType = 'Recent Animation'
}
local recentOutfitsPage = {name = 'Recent Costumes',
	display = 'Outfits',
	iconImageName = 'ic-costumes',
	iconImageSelectedName = 'ic-costumes-on',
	specialPageType = 'Recent Outfits'
}


local outfitsPage = {name = 'Outfits',			--outfits will include packages in some way
	display = 'Outfits',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-bundle.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-bundle-white.png',
	iconImageName = 'ic-costumes',
	iconImageSelectedName = 'ic-costumes-on',
	infiniteScrolling = true,
	specialPageType = 'Outfits'
}
local hatsPage = {name = 'Hats',
	display = 'Hat',
	typeName = 'Hat',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-hat.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-hat-white.png',
	iconImageName = 'ic-hat',
	iconImageSelectedName = 'ic-hat-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = headWideZoomCFrame,
	CameraFocus = headWideFocus
}
local hairPage = {name = 'Hair',
	display = 'Hair',
	typeName = 'Hair Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-hair.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-hair-on.png',
	iconImageName = 'ic-hair',
	iconImageSelectedName = 'ic-hair-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = headWideZoomCFrame,
	CameraFocus = headWideFocus
}
local faceAccessoryPage = {name = 'Face Accessories',
	display = 'Face',
	typeName = 'Face Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-face.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-face-on.png',
	iconImageName = 'ic-face-accessories',
	iconImageSelectedName = 'ic-face-accessories-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = faceZoomCFrame,
	CameraFocus = faceFocus
}
local neckAccessoryPage = {name = 'Neck Accessories',
	display = 'Neck',
	typeName = 'Neck Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-neck.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-neck-on.png',
	iconImageName = 'ic-neck',
	iconImageSelectedName = 'ic-neck-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = armsZoomCFrame:lerp(faceZoomCFrame, 0.5),
	CameraFocus = neckFocus
}
local shoulderAccessoryPage = {name = 'Shoulder Accessories',
	display = 'Shoulder',
	typeName = 'Shoulder Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-shoulder.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-shoulder-on.png',
	iconImageName = 'ic-shoulders',
	iconImageSelectedName = 'ic-shoulders-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = armsZoomCFrame:lerp(faceZoomCFrame, 0.5),
	CameraFocus = shoulderFocus
}
local frontAccessoryPage = {name = 'Front Accessories',
	display = 'Front',
	typeName = 'Front Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-front.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-front-on.png',
	iconImageName = 'ic-front',
	iconImageSelectedName = 'ic-front-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = armsZoomCFrame,
	CameraFocus = armsFocus
}
local backAccessoryPage = {name = 'Back Accessories',
	display = 'Back',
	typeName = 'Back Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-back.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-back-on.png',
	iconImageName = 'ic-back',
	iconImageSelectedName = 'ic-back-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = armsZoomCFrame,
	CameraFocus = armsFocus
}
local waistAccessoryPage = {name = 'Waist Accessories',
	display = 'Waist',
	typeName = 'Waist Accessory',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-waist.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Clothing/ic-waist-on.png',
	iconImageName = 'ic-waist',
	iconImageSelectedName = 'ic-waist-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = armsZoomCFrame:lerp(legsZoomCFrame, 0.5),
	CameraFocus = waistFocus
}
local shirtsPage = {name = 'Shirts',
	display = 'Shirt',
	typeName = 'Shirt',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-tshirt.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-tshirt-white.png',
	iconImageName = 'ic-shirts',
	iconImageSelectedName = 'ic-shirts-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = armsZoomCFrame,
	CameraFocus = armsFocus
}
local pantsPage = {name = 'Pants',
	display = 'Pants',
	typeName = 'Pants',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-pant.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-pant-white.png',
	iconImageName = 'ic-pants',
	iconImageSelectedName = 'ic-pants-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = legsZoomCFrame,
	CameraFocus = legsFocus
}
local facesPage = {name = 'Faces',
	display = 'Face',
	typeName = 'Face',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-face.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-face-white.png',
	iconImageName = 'ic-face',
	iconImageSelectedName = 'ic-face-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = faceZoomCFrame,
	CameraFocus = faceFocus
}
local headsPage = {name = 'Heads',
	display = 'Head',
	typeName = 'Head',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-head.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-head-white.png',
	iconImageName = 'ic-head',
	iconImageSelectedName = 'ic-head-on',
	infiniteScrolling = true,
	recommendedSort = true,
	CameraCFrameOffset = faceZoomCFrame,
	CameraFocus = faceFocus
}
local torsosPage = {name = 'Torsos',
	display = 'Torso',
	typeName = 'Torso',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-torso.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-torso-white.png',
	iconImageName = 'ic-torso',
	iconImageSelectedName = 'ic-torso-on',
	infiniteScrolling = true,
	CameraCFrameOffset = armsZoomCFrame,
	CameraFocus = armsFocus
}
local rightArmsPage = {name = 'Right Arms',
	display = 'Right Arm',
	typeName = 'RightArm',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-rightarm.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-rightarm-white.png',
	iconImageName = 'ic-right-arms',
	iconImageSelectedName = 'ic-right-arms-on',
	infiniteScrolling = true,
	CameraCFrameOffset = armsZoomCFrame,
	CameraFocus = armsFocus
}
local leftArmsPage = {name = 'Left Arms',
	display = 'Left Arm',
	typeName = 'LeftArm',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-leftarm.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-leftarm-white.png',
	iconImageName = 'ic-left-arms',
	iconImageSelectedName = 'ic-left-arms-on',
	infiniteScrolling = true,
	CameraCFrameOffset = armsZoomCFrame,
	CameraFocus = armsFocus
}
local rightLegsPage = {name = 'Right Legs',
	display = 'Right Leg',
	typeName = 'RightLeg',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-rightleg.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-rightleg-white.png',
	iconImageName = 'ic-right-legs',
	iconImageSelectedName = 'ic-right-legs-on',
	infiniteScrolling = true,
	CameraCFrameOffset = legsZoomCFrame,
	CameraFocus = legsFocus
}
local leftLegsPage = {name = 'Left Legs',
	display = 'Left Leg',
	typeName = 'LeftLeg',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-leftleg.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-leftleg-white.png',
	iconImageName = 'ic-left-legs',
	iconImageSelectedName = 'ic-left-legs-on',
	infiniteScrolling = true,
	CameraCFrameOffset = legsZoomCFrame,
	CameraFocus = legsFocus
}
local gearPage = {name = 'Gear',
	display = 'Gear',
	typeName = 'Gear',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-gear.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-gear-white.png',
	iconImageName = 'ic-gear',
	iconImageSelectedName = 'ic-gear-on',
	infiniteScrolling = true,
	recommendedSort = true,
}
local skinTonePage = {name = 'Skin Tone',
	display = 'Skin Tone',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-color.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-color-filled.png',
	iconImageName = 'ic-skintone',
	iconImageSelectedName = 'ic-skintone-on',
	special = true,
	specialPageType = 'Skin Tone'
}
local scalePage = {name = 'Scale',
	display = 'Scale',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/ic-scale.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/ic-scale-filled.png',
	iconImageName = 'ic-scale',
	iconImageSelectedName = 'ic-scale-on',
	special = true,
	r15only = true,
	r15onlyMessage = scalingOnlyWorksForR15Text,
	specialPageType = 'Scale'
}

local climbAnimPage = {name = 'Climb Animations',
	display = 'Climb',
	typeName = 'ClimbAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-climb.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-climb-on.png',
	iconImageName = 'ic-climb',
	iconImageSelectedName = 'ic-climb-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}
local jumpAnimPage = {name = 'Jump Animations',
	display = 'Jump',
	typeName = 'JumpAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-jump.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-jump-on.png',
	iconImageName = 'ic-jump',
	iconImageSelectedName = 'ic-jump-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}
local fallAnimPage = {name = 'Fall Animations',
	display = 'Fall',
	typeName = 'FallAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-fall.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-fall-on.png',
	iconImageName = 'ic-fall',
	iconImageSelectedName = 'ic-fall-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}
local idleAnimPage = {name = 'Idle Animations',
	display = 'Idle',
	typeName = 'IdleAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-idle.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-idle-on.png',
	iconImageName = 'ic-idle',
	iconImageSelectedName = 'ic-idle-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}
local walkAnimPage = {name = 'Walk Animations',
	display = 'Walk',
	typeName = 'WalkAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-walk.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-walk-on.png',
	iconImageName = 'ic-walk',
	iconImageSelectedName = 'ic-walk-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}
local runAnimPage = {name = 'Run Animations',
	display = 'Run',
	typeName = 'RunAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-run.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-run-on.png',
	iconImageName = 'ic-run',
	iconImageSelectedName = 'ic-run-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}
local swimAnimPage = {name = 'Swim Animations',
	display = 'Swim',
	typeName = 'SwimAnimation',
	iconImage =			'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-swim.png',
	iconImageSelected =	'rbxasset://textures/AvatarEditorIcons/PageIcons/Avatar-Animation/ic-swim-on.png',
	iconImageName = 'ic-swim',
	iconImageSelectedName = 'ic-swim-on',
	infiniteScrolling = true,
	r15only = true,
	r15onlyMessage = animationsOnlyWorkForR15Text
}


local allPages = {
	recentPage,
	outfitsPage,
	hatsPage,
	hairPage,
	faceAccessoryPage,
	neckAccessoryPage,
	shoulderAccessoryPage,
	frontAccessoryPage,
	backAccessoryPage,
	waistAccessoryPage,
	shirtsPage,
	pantsPage,
	facesPage,
	headsPage,
	torsosPage,
	rightArmsPage,
	leftArmsPage,
	rightLegsPage,
	leftLegsPage,
	gearPage,
	skinTonePage,
	climbAnimPage,
	jumpAnimPage,
	fallAnimPage,
	idleAnimPage,
	walkAnimPage,
	runAnimPage,
	swimAnimPage,
	scalePage
}

local recentCategory = {name = 'Recent',
	display = 'Recent',
	iconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-recent.png',
	selectedIconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-recent-on.png',
	iconImageName = 'ic-recent',
	selectedIconImageName = 'ic-recent-on',
	pages = {recentPage, recentClothingPage, recentBodyPage}
}
local clothingCategory = {name = 'Clothing',
	display = 'Clothing',
	iconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-clothing.png',
	selectedIconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-clothing-on.png',
	iconImageName = 'ic-clothing',
	selectedIconImageName = 'ic-clothing-on',
	pages = {hatsPage, shirtsPage, pantsPage, hairPage, faceAccessoryPage, neckAccessoryPage, shoulderAccessoryPage, frontAccessoryPage, backAccessoryPage, waistAccessoryPage, gearPage,},
}
local bodyCategory = {name = 'Body',
	display = 'Body',	--"Body Parts" would be ideal, but Skin Tone and Scale are not body parts :'(
	iconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-body-part.png',
	selectedIconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-body-part-on.png',
	iconImageName = 'ic-body',
	selectedIconImageName = 'ic-body-on',
	pages = {outfitsPage, facesPage, headsPage, torsosPage, rightArmsPage, leftArmsPage, rightLegsPage, leftLegsPage},
}
local animationCategory = {name = 'Animation',
	display = 'Animations',
	iconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-avatar-animation.png',
	selectedIconImage = 'rbxasset://textures/AvatarEditorIcons/PageIcons/Category/ic-avatar-animation-on.png',
	iconImageName = 'ic-animations',
	selectedIconImageName = 'ic-animations-on',
--	pages = {climbAnimPage, jumpAnimPage, fallAnimPage, idleAnimPage, walkAnimPage, runAnimPage, swimAnimPage}
	pages = {idleAnimPage, walkAnimPage, runAnimPage, jumpAnimPage, fallAnimPage, climbAnimPage, swimAnimPage}
}
local costumeCategory = {name = 'Costume',
	display = 'Outfits',
	iconImageName = 'ic-costumes',
	selectedIconImageName = 'ic-costumes-on',
	pages = {outfitsPage}
}

local categories = {
	recentCategory,
	clothingCategory,
	bodyCategory,
}

do
	local enabledAvatarAnimationCategory = false
	local enabledAvatarAnimationCategory = flagManager.EnabledAvatarAnimationCategory
	
	if enabledAvatarAnimationCategory then
		table.insert(categories, animationCategory)
		table.insert(recentCategory.pages, recentAnimationPage)
	end
end

if flagManager.MoveAvatarEditorPages then
	bodyCategory.pages = {facesPage, headsPage, torsosPage, rightArmsPage, leftArmsPage, rightLegsPage, leftLegsPage}
	
	table.insert(categories, costumeCategory)
	
	outfitsPage.iconImageName = 'ic-all'
	outfitsPage.iconImageSelectedName = 'ic-all-on'
	
end

table.insert(bodyCategory.pages, 1, skinTonePage)
table.insert(bodyCategory.pages, 2, scalePage)

if platformInfo.Mode == 'tablet' then
	animationCategory.iconImageName = 'ic-run'
	animationCategory.selectedIconImageName = 'ic-run-on'
	
	recentAnimationPage.iconImageName = 'ic-run'
	recentAnimationPage.iconImageSelectedName = 'ic-run-on'
	
	outfitsPage.display = 'All'
	
	table.insert(recentCategory.pages, recentOutfitsPage)
	
	clothingCategory.pages = {hatsPage, hairPage, faceAccessoryPage, neckAccessoryPage, shoulderAccessoryPage, frontAccessoryPage, backAccessoryPage, waistAccessoryPage, shirtsPage, pantsPage, gearPage}
	
	leftArmsPage.display = 'Left Arms'
	rightArmsPage.display = 'Right Arms'
	leftLegsPage.display = 'Left Legs'
	rightLegsPage.display = 'Right Legs'
end


return categories












