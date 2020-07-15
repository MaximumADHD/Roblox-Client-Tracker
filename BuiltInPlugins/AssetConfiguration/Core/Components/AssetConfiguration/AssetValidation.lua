--[[
	AssetValidation validates the given asset inside the "instance" prop.
	If pass:
		dispatches SetCurrentScreen to the appropriate next screen
	If fail:
		displays an error message screen

	Necessary Props:
		Size UDim2, the size of the window
		onClose callback, called when the user presses the "cancel" button
]]

game:DefineFastFlag("CMSUseSharedUGCValidation", false)

local ContentProvider = game:GetService("ContentProvider")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local convertArrayToTable = require(Util.convertArrayToTable)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local validateWithSchema = require(Util.validateWithSchema)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local UGCValidation
if game:GetFastFlag("CMSUseSharedUGCValidation") then
	local CorePackages = game:GetService("CorePackages")
	UGCValidation = require(CorePackages.UGCValidation)
end

local getNetwork = ContextGetter.getNetwork

local withTheme = ContextHelper.withTheme

local Actions = Plugin.Core.Actions
local SetCurrentScreen = require(Actions.SetCurrentScreen)

local Components = Plugin.Core.Components
local LoadingBar = require(Components.AssetConfiguration.LoadingBar)
local AssetThumbnailPreview = require(Components.AssetConfiguration.AssetThumbnailPreview)
local NavButton = require(Components.NavButton)

local FFlagStudioUseNewAnimationImportExportFlow = settings():GetFFlag("StudioUseNewAnimationImportExportFlow")

local TITLE_WIDTH = 400
local TITLE_HEIGHT = 36

local REASON_WIDTH = 400
local REASON_HEIGHT = 72
local REASON_PADDING = 13

local PREVIEW_PADDING = 48
local PREVIEW_SIZE = 150
local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local LOADING_BAR_WIDTH = 400
local LOADING_BAR_HEIGHT = 6
local LOADING_BAR_Y_POS = 314

local LOADING_RESULT_Y_POS = 279

local FOOTER_HEIGHT = 62

local BUTTON_WIDTH = 120
local BUTTON_HEIGHT = 32

local LOADING_TEXT = "Validating"
local LOADING_TIME = 0.5
local LOADING_PERCENT = 0.92

local MAX_HAT_TRIANGLES = 4000

local MATERIAL_WHITELIST = convertArrayToTable({
	Enum.Material.Plastic,
})

local BANNED_CLASS_NAMES = {
	"Script",
	"LocalScript",
	"ModuleScript",
	"ParticleEmitter",
	"Fire",
	"Smoke",
	"Sparkles",
}

local R6_BODY_PARTS = {
	"Torso",
	"Left Leg",
	"Right Leg",
	"Left Arm",
	"Right Arm",
}

local R15_BODY_PARTS = {
	"UpperTorso",
	"LowerTorso",

	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",

	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",

	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",

	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
}

local EXTRA_BANNED_NAMES = {
	"Head",
	"HumanoidRootPart",
	"Humanoid",
}

local BANNED_NAMES = convertArrayToTable(Cryo.List.join(R6_BODY_PARTS, R15_BODY_PARTS, EXTRA_BANNED_NAMES))

local function createAccessorySchema(attachmentNames)
	return {
		ClassName = "Accessory",
		_children = {
			{
				Name = "Handle",
				ClassName = "Part",
				_children = {
					{
						Name = attachmentNames,
						ClassName = "Attachment",
					},
					{
						ClassName = "SpecialMesh",
					},
					{
						ClassName = "Vector3Value",
						Name = "OriginalSize",
						_optional = true,
					},
					{
						ClassName = "StringValue",
						Name = "AvatarPartScaleType",
						_optional = true,
					},
					{
						ClassName = "TouchTransmitter",
						_optional = true,
					},
				}
			},
		},
	}
end

local SCHEMA_MAP = {}
SCHEMA_MAP[Enum.AssetType.Hat] = createAccessorySchema({ "HatAttachment" })
SCHEMA_MAP[Enum.AssetType.HairAccessory] = createAccessorySchema({ "HairAttachment" })
SCHEMA_MAP[Enum.AssetType.FaceAccessory] = createAccessorySchema({ "FaceFrontAttachment" })
SCHEMA_MAP[Enum.AssetType.NeckAccessory] = createAccessorySchema({ "NeckAttachment" })
SCHEMA_MAP[Enum.AssetType.ShoulderAccessory] = createAccessorySchema({
	"NeckAttachment",
	"LeftCollarAttachment",
	"RightCollarAttachment",
})
SCHEMA_MAP[Enum.AssetType.FrontAccessory] = createAccessorySchema({ "BodyFrontAttachment" })
SCHEMA_MAP[Enum.AssetType.BackAccessory] = createAccessorySchema({ "BodyBackAttachment" })
SCHEMA_MAP[Enum.AssetType.WaistAccessory] = createAccessorySchema({ "WaistBackAttachment" })

local AssetValidation = Roact.PureComponent:extend("AssetValidation")

function AssetValidation:init(props)
	self.state = {
		failed = false,
		isLoading = true,
	}

	if AssetConfigUtil.isMarketplaceAsset(self.props.assetTypeEnum) or
		self.props.assetTypeEnum == Enum.AssetType.Model or
		(FFlagStudioUseNewAnimationImportExportFlow and self.props.assetTypeEnum == Enum.AssetType.Animation) then
		self.props.nextScreen()
	else
		if game:GetFastFlag("CMSUseSharedUGCValidation") then
			UGCValidation.validateAsync(self.props.instances, self.props.assetTypeEnum, function(success, reasons)
				if success then
					self:setState({ onFinish = self.props.nextScreen })
				else
					self:setState({
						onFinish = function()
							self:setState({
								isLoading = false,
								reasons = reasons
							})
						end
					})
				end
			end)
		else
			self:validateAsync()
		end
	end
end

function AssetValidation:fail(reasons)
	self:setState({
		failed = true,
		onFinish = function()
			self:setState({
				isLoading = false,
				reasons = reasons
			})
		end
	})

	-- force end of validation
	coroutine.resume(self.validateThread)
	coroutine.yield()
end

function AssetValidation:validateInstanceTree(instance)
	local schema = SCHEMA_MAP[self.props.assetTypeEnum]
	if not schema then
		self:fail({ "Could not validate" })
	end

	-- validate using hat schema
	local validationResult = validateWithSchema(schema, instance)
	if validationResult.success == false then
		self:fail({ validationResult.message })
	end

	-- fallback case for if validateWithSchema breaks
	local invalidDescendantsReasons = {}
	if BANNED_NAMES[instance.Name] then
		local reason = string.format("%s has an invalid name", instance:GetFullName())
		invalidDescendantsReasons[#invalidDescendantsReasons + 1] = reason
	end
	for _, descendant in pairs(instance:GetDescendants()) do
		for _, className in pairs(BANNED_CLASS_NAMES) do
			if descendant:IsA(className) then
				local reason = string.format(
					"%s is of type %s which is not allowed",
					descendant:GetFullName(),
					className
				)
				invalidDescendantsReasons[#invalidDescendantsReasons + 1] = reason
			end
		end
		if BANNED_NAMES[descendant.Name] then
			local reason = string.format("%s has an invalid name", descendant:GetFullName())
			invalidDescendantsReasons[#invalidDescendantsReasons + 1] = reason
		end
	end
	if #invalidDescendantsReasons > 0 then
		self:fail(invalidDescendantsReasons)
	end
end

function AssetValidation:validateMaterials(instance)
	local materialFailures = {}
	for _, descendant in pairs(instance:GetDescendants()) do
		if descendant:IsA("BasePart") and not MATERIAL_WHITELIST[descendant.Material] then
			materialFailures[#materialFailures + 1] = descendant:GetFullName()
		end
	end
	if #materialFailures > 0 then
		local reasons = {}
		local acceptedMaterialNames = {}
		for material in pairs(MATERIAL_WHITELIST) do
			acceptedMaterialNames[#acceptedMaterialNames + 1] = material.Name
		end
		reasons[#reasons + 1] = "Invalid materials for"
		for _, name in pairs(materialFailures) do
			reasons[#reasons + 1] = name
		end
		reasons[#reasons + 1] = "Accepted materials are " .. table.concat(acceptedMaterialNames, ", ")
		self:fail(reasons)
	end
end

function AssetValidation:validateMeshTriangles(instance)
	-- check mesh triangles
	-- this is guaranteed to exist thanks to validateWithSchema
	local mesh = instance.Handle:FindFirstChildOfClass("SpecialMesh")
	if not mesh then
		self:fail({ "Could not find mesh" })
	end

	if mesh.MeshId == "" then
		self:fail({ "Mesh must contain valid MeshId" })
	end

	if mesh.TextureId == "" then
		self:fail({ "Mesh must contain valid TextureId" })
	end

	local success, triangles = pcall(function()
		return ContentProvider:CalculateNumTrianglesInMesh(mesh.MeshId)
	end)
	if not success then
		self:fail({ "Failed to load mesh data" })
	elseif triangles > MAX_HAT_TRIANGLES then
		self:fail({
			"Mesh exceeded triangle limit!",
			string.format(
				"Mesh has %d triangles, but the limit is %d",
				triangles,
				MAX_HAT_TRIANGLES
			)
		})
	end
end

function AssetValidation:validateModeration(instance)
	local contentIdMap = {}
	local contentIds = {}

	local function parseContentId(instance, fieldName)
		local contentId = instance[fieldName]

		-- map to ending digits
		-- rbxassetid://1234 -> 1234
		-- http://www.roblox.com/asset/?id=1234 -> 1234
		local id = tonumber(string.match(contentId, "%d+$"))
		if id == nil then
			self:fail({
				"Could not parse ContentId",
				contentId,
			})
		end
		contentIdMap[id] = {
			fieldName = fieldName,
			instance = instance,
		}
		table.insert(contentIds, id)
	end

	local function parseDescendantContentIds(instance)
		for _, descendant in pairs(instance:GetDescendants()) do
			if descendant:IsA("SpecialMesh") then
				parseContentId(descendant, "MeshId")
				parseContentId(descendant, "TextureId")
			end
		end
	end

	parseDescendantContentIds(instance)

	local moderatedIds = {}

	local result = getNetwork(self):getAssetCreationDetails(contentIds):await()

	if #result.responseBody ~= #contentIds then
		self:fail({ "Could not fetch details for assets" })
	end

	for _, details in pairs(result.responseBody) do
		if details.status == AssetConfigConstants.ASSET_STATUS.Unknown
		or details.status == AssetConfigConstants.ASSET_STATUS.ReviewPending
		or details.status == AssetConfigConstants.ASSET_STATUS.Moderated
		then
			table.insert(moderatedIds, details.assetId)
		end
	end

	if #moderatedIds > 0 then
		local moderationMessages = {}
		for idx, id in pairs(moderatedIds) do
			local mapped = contentIdMap[id]
			if mapped then
				moderationMessages[idx] = string.format(
					"%s.%s ( %s )",
					mapped.instance:GetFullName(),
					mapped.fieldName,
					id
				)
			else
				moderationMessages[idx] = id
			end
		end
		self:fail({
			"The following asset IDs have not passed moderation:",
			unpack(moderationMessages),
		})
	end
end

function AssetValidation:validateAsync()
	spawn(function()
		self.validateThread = coroutine.running()

		spawn(function()
			-- validate that only one instance was selected
			if #self.props.instances == 0 then
				self:fail({ "No instances selected" })
				return
			elseif #self.props.instances > 1 then
				self:fail({ "More than one instance selected" })
				return
			end

			local instance = self.props.instances[1]

			self:validateInstanceTree(instance)
			self:validateMaterials(instance)
			self:validateMeshTriangles(instance)
			self:validateModeration(instance)

			coroutine.resume(self.validateThread)
		end)

		coroutine.yield()

		if not self.state.failed then
			self:setState({ onFinish = self.props.nextScreen })
		end
	end)
end

function AssetValidation:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local reasonText = "Reason:\n" .. table.concat(self.state.reasons or {}, "\n")

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.typeValidation.background,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = props.Size,
		}, {
			Preview = Roact.createElement(AssetThumbnailPreview, {
				titleHeight = PREVIEW_TITLE_HEIGHT,
				titlePadding = PREVIEW_TITLE_PADDING,
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
				),
			}),

			LoadingBar = self.state.isLoading and Roact.createElement(LoadingBar, {
				loadingText = LOADING_TEXT,
				loadingTime = LOADING_TIME,
				holdPercent = LOADING_PERCENT,
				Size = UDim2.new(0, LOADING_BAR_WIDTH, 0, LOADING_BAR_HEIGHT),
				Position = UDim2.new(0.5, -LOADING_BAR_WIDTH/2, 0, LOADING_BAR_Y_POS),
				onFinish = state.onFinish,
			}),

			LoadingResult = not self.state.isLoading and  Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, LOADING_RESULT_Y_POS),
				Size = UDim2.new(1, 0, 1, -LOADING_RESULT_Y_POS),
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Position = UDim2.new(0.5, -TITLE_WIDTH/2, 0, 0),
					Size = UDim2.new(0, TITLE_WIDTH, 0, TITLE_HEIGHT),
					Text = "Validation Failed",
					TextColor3 = theme.loading.text,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),

				Reason = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
					Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
					Text = reasonText,
					TextWrapped = true,
					TextColor3 = theme.loading.text,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Top,
				}),
			}),

			Footer = not self.state.isLoading and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 1, -FOOTER_HEIGHT),
				Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
			}, {
				CloseButton = Roact.createElement(NavButton, {
					onClick = props.onClose,
					titleText = "Close",
					LayoutOrder = 0,
					Position = UDim2.new(0.5, -BUTTON_WIDTH/2, 0.5, -BUTTON_HEIGHT/2),
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				}),
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		instances = state.instances,
		assetTypeEnum = state.assetTypeEnum,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextScreen = function()
			dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.CONFIGURE_ASSET))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetValidation)