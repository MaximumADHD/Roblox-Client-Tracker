-- This is an internal tool used for configuring imported Roblox packages

local Configurer = {}
Configurer.__index = Configurer

local RigFunctions = require(script.Parent.RigFunctions)
local CharacterTester = require(script.Parent.CharacterTester)
local Constants = require(script.Parent.Constants)

function Configurer.new(screenGui)
    local self = setmetatable({}, Configurer)

	-- private members
    self._enabled = false
    self._configureFrame = nil
    self._r15Avatar = nil
    self._r15Fixed = nil
    self._r6Avatar = nil

    -- configure state
    self._r15TexturesMap = {}
    self._r6TexturesMap = {}
    self._r6MeshesMap = {}
    self._faceTextureId = nil

    -- internal events
    self._onConfigureStarted = Instance.new("BindableEvent")

	-- construction logic
    self:_constructUI(screenGui)
    self:_setupExistingRigs()

    return self
end

function Configurer:ConfigureImportedAvatar(avatar)
    local importedFbxModel = RigFunctions.CreateImportedFbxModel(avatar)

    self._r15Avatar = importedFbxModel:FindFirstChild(Constants.R15_ARTIST_INTENT_FOLDER_NAME)
    self._r15Fixed = importedFbxModel:FindFirstChild(Constants.R15_FIXED_FOLDER_NAME)
    self._r6Avatar = importedFbxModel:FindFirstChild(Constants.R6_FOLDER_NAME)

    RigFunctions.MakeExportVersion(importedFbxModel)
    self._onConfigureStarted:Fire(self._r15Avatar, self._r6Avatar)
    self:setEnabled(true)
end

function Configurer:ConfigureExistingAvatar(importedFbxModel)
    self._r15Avatar = importedFbxModel:FindFirstChild(Constants.R15_ARTIST_INTENT_FOLDER_NAME)
    self._r15Fixed = importedFbxModel:FindFirstChild(Constants.R15_FIXED_FOLDER_NAME)
    self._r6Avatar = importedFbxModel:FindFirstChild(Constants.R6_FOLDER_NAME)

    RigFunctions.MakeExportVersion(importedFbxModel)
    self._onConfigureStarted:Fire(self._r15Avatar, self._r6Avatar)
    self:setEnabled(true)
end

function Configurer:_setupExistingRigs()
    local importedFbxModel = RigFunctions.FindExistingImportedFbx()

    if importedFbxModel then
        self._r15Avatar = importedFbxModel:FindFirstChild(Constants.R15_ARTIST_INTENT_FOLDER_NAME)
        self._r6Avatar  = importedFbxModel:FindFirstChild(Constants.R6_FOLDER_NAME)
        self._onConfigureStarted:Fire(self._r15Avatar, self._r6Avatar)
    end
end

function Configurer:setEnabled(value)
	self._enabled = value
	self._configureFrame.Visible = self._enabled
end

function Configurer:_onFinished()
    -- R15 Artist Instent
    RigFunctions.CopyTexturesToRig(self._r15TexturesMap, self._r15Avatar)
    RigFunctions.AddFaceToRig(self._faceTextureId, self._r15Avatar)

    -- R15 Fixed
    RigFunctions.CopyTexturesToRig(self._r15TexturesMap, self._r15Fixed)
    RigFunctions.AddFaceToRig(self._faceTextureId, self._r15Fixed)

    -- R6
    RigFunctions.CopyCharacterMeshesToRig(self._r6MeshesMap, self._r6Avatar)
    RigFunctions.CopyTexturesToRig(self._r6TexturesMap, self._r6Avatar)
    RigFunctions.AddFaceToRig(self._faceTextureId, self._r6Avatar)

    self:setEnabled(false)
end

function Configurer:_onCancel()
    self:setEnabled(false)
end

local function updateMapWhenEntryChanged(map, entryBoxes, field)
    local function onFieldUpdated(entryBox, textBox, newText)
        if newText ~= "" and string.find(newText, "<") == nil then
            textBox.Text = RigFunctions.RemoveAssetUrlFromText(newText)
            map[entryBox.Name] = textBox.Text
        end
    end

    for _, entryBox in pairs(entryBoxes) do
        local textBox = entryBox:FindFirstChild(field)
        if not textBox then
            warn("Broken entry box for field " ..field.. "\n" ..
                 "Traceback: " ..debug.traceback())
        else
            textBox:GetPropertyChangedSignal("Text"):Connect(function()
                onFieldUpdated(entryBox, textBox, textBox.Text)
            end)
            onFieldUpdated(entryBox, textBox, textBox.Text)
        end
    end
end

local function setupTextClearOnFocus(entryBox)
    local function clearTemplateTextOnFocus(textbox)
        textbox.Focused:Connect(function()
            if string.find(textbox.Text, "<") ~= nil then
               textbox.Text = ""
            end
        end)
    end

    for _, obj in pairs(entryBox:GetChildren()) do
        if obj:IsA("TextBox") then
            clearTemplateTextOnFocus(obj)
        end
    end
end

function Configurer:_entryBoxListSetup(frame, template, nameList)
    local entryBoxes = {}

	table.sort(nameList)
    for index, name in pairs(nameList) do
        local newEntryBox = template:Clone()
        local newYOffset = (index - 1) * newEntryBox.Size.Y.Offset

		newEntryBox.Name = name
		newEntryBox.Position = template.Position + UDim2.new(0, 0, 0, newYOffset)
        newEntryBox.Description.Text = name
        setupTextClearOnFocus(newEntryBox)

        entryBoxes[#entryBoxes + 1] = newEntryBox
        newEntryBox.Parent = frame
    end

    return entryBoxes
end

local function createEntryFrame(position)
    local frame = Instance.new("Frame")
    frame.Name = "EntryBox"
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, -10, 0, 25)
    frame.Position = position
    return frame
end

local function createEntryField(frame, fieldName, position)
    local field = Instance.new("TextBox")
    field.Name = fieldName
    field.Text = "<" ..fieldName.. ">"
    field.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    field.BorderColor3 = Color3.fromRGB(49, 49, 49)
    field.Position = position
    field.Size = UDim2.new(0.5, 0, 0, 25)
    field.Font = Enum.Font.SourceSans
    field.TextColor3 = Color3.fromRGB(255, 255, 255)
    field.TextSize = 14
    field.TextStrokeTransparency = 1
    field.Parent = frame

    return field
end

local function createEntryBoxTemplate(fieldName)
    local frame = createEntryFrame(UDim2.new(0, 5, 0, 0))

    local description = Instance.new("TextLabel")
    description.Name = "Description"
    description.BackgroundTransparency = 1
    description.BorderSizePixel = 0
    description.Position = UDim2.new(0, 0, 0, 0)
    description.Size = UDim2.new(0.5, -5, 0, 25)
    description.Font = Enum.Font.SourceSansBold
    description.TextSize = 14
    description.TextColor3 = Color3.fromRGB(255, 255, 255)
    description.TextStrokeTransparency = 1
    description.Parent = frame

    createEntryField(frame, fieldName, UDim2.new(0.5, 0, 0, 0))

    return frame
end

local function addSubTitle(frame, text)
    local subTitle = Instance.new("TextLabel")
    subTitle.Name = "SubTitle"
    subTitle.BackgroundTransparency = 1
    subTitle.Position = UDim2.new(0, 0, 0, 0)
    subTitle.Size = UDim2.new(1, 0, 0, 20)
    subTitle.Font = Enum.Font.SourceSansBold
    subTitle.TextColor3 = Color3.fromRGB(255, 165, 10)
    subTitle.TextSize = 18
    subTitle.TextStrokeTransparency = 1
    subTitle.Text = text
    subTitle.BorderSizePixel = 0
    subTitle.Parent = frame
end

local function addInstructionsLabel(frame, instructionsText, position)
    local instructionsLabel = Instance.new("TextLabel")
    instructionsLabel.Name = "Instructions"
    instructionsLabel.BackgroundTransparency = 1
    instructionsLabel.BorderSizePixel = 0
    instructionsLabel.Position = position
    instructionsLabel.Size = UDim2.new(1, 0, 0, 20)
    instructionsLabel.Font = Enum.Font.SourceSansBold
    instructionsLabel.Text = instructionsText
    instructionsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    instructionsLabel.TextStrokeTransparency = 1
    instructionsLabel.TextSize = 14
    instructionsLabel.Parent = frame

end

function Configurer:_constructR6TextureBoxes(r6Frame)
    local entryBox = createEntryFrame(UDim2.new(0, 5, 0, 45))
    local baseTextureIdTextbox = createEntryField(entryBox, "BaseTextureId", UDim2.new(0, 0, 0, 0))
    local overlayTextureIdTextbox = createEntryField(entryBox, "OverlayTextureId", UDim2.new(0.5, 0, 0, 0))
    setupTextClearOnFocus(entryBox)

    local function r6TextureChanged(textBox)
        local newText = textBox.Text
        if newText ~= "" and string.find(newText, "<") == nil then
            textBox.Text = RigFunctions.RemoveAssetUrlFromText(newText)
            self._r6TexturesMap[textBox.Name] = textBox.Text
        end
    end

    baseTextureIdTextbox:GetPropertyChangedSignal("Text"):Connect(function() r6TextureChanged(baseTextureIdTextbox) end)
    overlayTextureIdTextbox:GetPropertyChangedSignal("Text"):Connect(function() r6TextureChanged(overlayTextureIdTextbox) end)
    self._onConfigureStarted.Event:Connect(function(_, r6Avatar)
        self._r6TexturesMap = {}

        local baseTextureId = RigFunctions.GetCharacterMeshPropertyFromRig(r6Avatar, baseTextureIdTextbox.Name)
        if baseTextureId then
            baseTextureIdTextbox.Text = RigFunctions.RemoveAssetUrlFromText(baseTextureId)
        end

        local overlayTextureId = RigFunctions.GetCharacterMeshPropertyFromRig(r6Avatar, overlayTextureIdTextbox.Name)
        if overlayTextureId then
            overlayTextureIdTextbox.Text = RigFunctions.RemoveAssetUrlFromText(overlayTextureId)
        end

        r6TextureChanged(baseTextureIdTextbox)
        r6TextureChanged(overlayTextureIdTextbox)
    end)


    entryBox.Parent = r6Frame
end

function Configurer:_constructR6MeshBoxes(r6Frame)
    local frame = Instance.new("Frame")
    frame.Name = "CharacterMeshIDs"
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, 0, 0, 175)
    frame.Position = UDim2.new(0, 0, 0, 125)

    local meshIdEntryTemplate = createEntryBoxTemplate("MeshId")

    self._onConfigureStarted.Event:Connect(function(_, r6Avatar)
        frame:ClearAllChildren()

        local bodyPartNames = RigFunctions.GetBodyPartNames()
        local entryBoxes = self:_entryBoxListSetup(frame, meshIdEntryTemplate, bodyPartNames)

        -- Show current Character mesh Ids from the imported rig
        for _, entryBox in pairs(entryBoxes) do
            local meshId = RigFunctions.GetCurrentCharacterMeshIdFromRig(r6Avatar, entryBox.Name)
            if meshId then
                entryBox.MeshId.Text = meshId
            end
        end

        -- Connect entryBoxes to change _r6MeshesMap when changed
        self._r6MeshesMap = {}
        updateMapWhenEntryChanged(self._r6MeshesMap, entryBoxes, "MeshId")
    end)

    frame.Parent = r6Frame
end

function Configurer:_constructFaceTextureEntry(r6Frame)
    local faceTextureEntryBox = createEntryBoxTemplate("TextureId")
    faceTextureEntryBox.Position = UDim2.new(0, 5, 0, 315)

    local function textboxChanged(newText)
        if newText ~= "" and string.find(newText, "<") == nil then
            faceTextureEntryBox.TextureId.Text = RigFunctions.RemoveAssetUrlFromText(newText)
            self._faceTextureId = faceTextureEntryBox.TextureId.Text
        end
    end

    faceTextureEntryBox.Description.Text = "Texture ID:"
    faceTextureEntryBox.TextureId:GetPropertyChangedSignal("Text"):Connect(function()
        local newText = faceTextureEntryBox.TextureId.Text
        textboxChanged(newText)
    end)

    self._onConfigureStarted.Event:Connect(function(r15Avatar, r6Avatar)
        local currentFaceTexture = RigFunctions.FindFaceTexture(r15Avatar, r6Avatar)
        if currentFaceTexture then
            textboxChanged(currentFaceTexture)
        end
    end)

    faceTextureEntryBox.Parent = r6Frame
end

function Configurer:_constructConfigureR6(configureFrame)
    local r6Frame = Instance.new("Frame")
    r6Frame.Name = "R6"
    r6Frame.BackgroundTransparency = 1
    r6Frame.BorderSizePixel = 0
    r6Frame.Position = UDim2.new(0, 0, 0, 40)
    r6Frame.Size = UDim2.new(0.5, 0, 1, -25)
    r6Frame.ZIndex = 2

    addSubTitle(r6Frame, "R6")

    addInstructionsLabel(r6Frame, "Enter Texture IDs", UDim2.new(0, 5, 0, 20))
    self:_constructR6TextureBoxes(r6Frame)

    addInstructionsLabel(r6Frame, "Enter Character Mesh IDs", UDim2.new(0, 5, 0, 100))
    self:_constructR6MeshBoxes(r6Frame)

    addInstructionsLabel(r6Frame, "Face Texture ID", UDim2.new(0, 5, 0, 290))
    self:_constructFaceTextureEntry(r6Frame)

    r6Frame.Parent = configureFrame
end

function Configurer:_constructConfigureTextures(r15Frame)
    local textureIDsFrame = Instance.new("Frame")
    textureIDsFrame.Name = "TextureIDs"
    textureIDsFrame.BackgroundTransparency = 1
    textureIDsFrame.BorderSizePixel = 0
    textureIDsFrame.Size = UDim2.new(1, 0, 1, -20)
    textureIDsFrame.Position = UDim2.new(0, 0, 0, 45)

    local textureIdEntryTemplate = createEntryBoxTemplate("TextureID")

    self._onConfigureStarted.Event:Connect(function(r15Avatar)
        textureIDsFrame:ClearAllChildren()

        local limbNames = RigFunctions.GetLimbNames()
        local entryBoxes = self:_entryBoxListSetup(textureIDsFrame, textureIdEntryTemplate, limbNames)

        -- Show current textureIds from the imported rig
        for _, entryBox in pairs(entryBoxes) do
            local textureId = RigFunctions.GetCurrentTextureIdFromRig(r15Avatar, entryBox.Name)
            if textureId then
                entryBox.TextureID.Text = textureId
            end
        end

        -- Connect entryBoxes to change _r15TexturesMap when changed
        self._r15TexturesMap = {}
        updateMapWhenEntryChanged(self._r15TexturesMap, entryBoxes, "TextureID")
    end)

    textureIDsFrame.Parent = r15Frame
end

function Configurer:_constructConfigureR15(configureFrame)
    local r15Frame = Instance.new("Frame")
    r15Frame.Name = "R15"
    r15Frame.BackgroundTransparency = 1
    r15Frame.BorderSizePixel = 0
    r15Frame.Position = UDim2.new(0.5, 5, 0, 40)
    r15Frame.Size = UDim2.new(0.5, -5, 1, -100)
    r15Frame.ZIndex = 2

    addSubTitle(r15Frame, "R15")
    addInstructionsLabel(r15Frame, "Enter Texture IDs", UDim2.new(0, 5, 0, 20))

    self:_constructConfigureTextures(r15Frame)

    r15Frame.Parent = configureFrame
end

function Configurer:_constructUI(screenGui)
    local configureFrame = Instance.new("Frame")
    configureFrame.Name = "RigConfiguration"
    configureFrame.Visible = false
    configureFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    configureFrame.BackgroundTransparency = 0.5
    configureFrame.BorderSizePixel = 0
    configureFrame.Position = UDim2.new(0.5, -300, 0.5, -250)
    configureFrame.Size = UDim2.new(0, 600, 0, 400)

    local divider = Instance.new("Frame")
    divider.Name = "Divide"
    divider.BackgroundColor3 = Color3.fromRGB(255, 165, 10)
    divider.BackgroundTransparency = 0
    divider.BorderColor3 = Color3.fromRGB(27, 42, 53)
    divider.Position = UDim2.new(0.5, 2, 0, 60)
    divider.Size = UDim2.new(0, 2, 1, -66)
    divider.Parent = configureFrame

    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Text = "Configure Imported Rig"
    title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    title.BackgroundTransparency = 1
    title.BorderSizePixel = 0
    title.Position = UDim2.new(0, 15, 0, 5)
    title.Size = UDim2.new(1, 0, 0, 40)
    title.TextSize = 18
    title.Font = Enum.Font.SourceSansBold
    title.TextStrokeTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Parent = configureFrame

    local topbar = Instance.new("TextLabel")
    topbar.Name = "Topbar"
    topbar.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    topbar.BackgroundTransparency = 0
    topbar.BorderColor3 = Color3.fromRGB(27, 42, 53)
    topbar.Position = UDim2.new(0, 0, 0, 0)
    topbar.Size = UDim2.new(1, 0, 0, 5)
    topbar.Text = ""
    topbar.Parent = configureFrame

    local cancelButton = Instance.new("TextButton")
    cancelButton.Name = "Cancel"
    cancelButton.BackgroundColor3 = Color3.fromRGB(132, 132, 132)
    cancelButton.BackgroundTransparency = 0
    cancelButton.BorderColor3 = Color3.fromRGB(49, 49, 49)
    cancelButton.Position = UDim2.new(1, -270, 1, -40)
    cancelButton.Size = UDim2.new(0, 120, 0, 30)
    cancelButton.Text = "Cancel"
    cancelButton.Font = Enum.Font.SourceSansBold
    cancelButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    cancelButton.TextSize = 14
    cancelButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    cancelButton.TextStrokeTransparency = 0.75
    cancelButton.MouseButton1Down:Connect(function()
        self:_onCancel()
    end)
    cancelButton.Parent = configureFrame

    local doneButton = Instance.new("TextButton")
    doneButton.Name = "Done"
    doneButton.BackgroundColor3 = Color3.fromRGB(255, 165, 10)
    doneButton.BackgroundTransparency = 0
    doneButton.BorderColor3 = Color3.fromRGB(49, 49, 49)
    doneButton.Position = UDim2.new(1, -140, 1, -40)
    doneButton.Size = UDim2.new(0, 120, 0, 30)
    doneButton.Text = "Done"
    doneButton.Font = Enum.Font.SourceSansBold
    doneButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    doneButton.TextSize = 14
    doneButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    doneButton.TextStrokeTransparency = 0.75
    doneButton.MouseButton1Down:Connect(function()
        self:_onFinished()
    end)
    doneButton.Parent = configureFrame

    self:_constructConfigureR6(configureFrame)
    self:_constructConfigureR15(configureFrame)

    configureFrame.Parent = screenGui
    self._configureFrame = configureFrame
end

function Configurer:_setupExistingRig()
    local importedFbxModel = RigFunctions.FindExistimgImportedFbx()
    if importedFbxModel then
        self._r15Avatar = importedFbxModel:FindFirstChild(Constants.R15_ARTIST_INTENT_FOLDER_NAME)
        self._r6Avatar = importedFbxModel:FindFirstChild(Constants.R6_FOLDER_NAME)

        if self._r15Avatar and self._r6Avatar then
            self._onConfigureStarted:Fire(self._r15Avatar, self._r6Avatar)
            RigFunctions.MakeExportVersion(importedFbxModel)
        end
    end
end

function Configurer:createButtons(plugin, toolbar)
    local configureButton = toolbar:CreateButton(
        "Configure Avatar",
        "Configure FBX imported avatar",
        "rbxassetid://467691760"
    )

    configureButton.Click:Connect(function()
        local importedFbxModel = RigFunctions.FindExistingImportedFbx()

        if importedFbxModel then
            self:ConfigureExistingAvatar(importedFbxModel)
        end
    end)

    local saveButton = toolbar:CreateButton(
        "Export Avatar",
        "Export .rbxm files for imported avatar",
        "rbxassetid://467691760"
    )

    saveButton.Click:Connect(function()
        RigFunctions.Export(plugin)
    end)

    local testCharacterButton = toolbar:CreateButton(
        "Test Avatar",
	    "Click to make imported FBX avatar into StarterCharacter",
        "" -- TODO: Icon
    )

    testCharacterButton.Click:Connect(function()
        -- TODO: Add GUI to select what rig to test
        CharacterTester.SetupCharacterForTesting(self._r15Avatar)
    end)
end

return Configurer