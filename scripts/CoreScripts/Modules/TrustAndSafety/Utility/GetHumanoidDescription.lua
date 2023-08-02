local Players = game:GetService("Players")

-- serializable humanoid description object
export type HumanoidDescriptionData = {
    BackAccessory: string,
    BodyTypeScale: number, 
    ClimbAnimation: number, 
    DepthScale: number, 
    Face: number, 
    FaceAccessory: string,
    FallAnimation: number, 
    FrontAccessory: string,
    GraphicTShirt: number, 
    HairAccessory: string, 
    HatAccessory: string, 
    Head: number, 
    HeadColor: { number },
    HeadScale: number, 
    HeightScale: number, 
    IdleAnimation: number, 
    JumpAnimation: number, 
    LeftArm: number, 
    LeftArmColor: { number }, 
    LeftLeg: number, 
    LeftLegColor: { number },
    MoodAnimation: number, 
    NeckAccessory: string, 
    Pants: number, 
    ProportionScale: number, 
    RightArm: number, 
    RightArmColor: { number }, 
    RightLeg: number, 
    RightLegColor: { number }, 
    RunAnimation: number, 
    Shirt: number, 
    ShouldersAccessory: string, 
    SwimAnimation: number, 
    Torso: number, 
    TorsoColor: { number }, 
    WaistAccessory: string, 
    WalkAnimation: number, 
    WidthScale: number
}

local status_codes = {
    ERR_RA_CHARACTER = "ERR_RA_CHARACTER",
	ERR_RA_HUMPLAYER = "ERR_RA_HUMPLAYER",
	ERR_RA_HUMOBJ = "ERR_RA_HUMOBJ",
	ERR_RA_HUMDESC = "ERR_RA_HUMDESC",
	OK = "OK"
}

local getHumanoidDescription = function(userId: number) : (HumanoidDescriptionData, string)
    local player = Players:GetPlayerByUserId(userId)    
    
    local humanoidDescriptionData : HumanoidDescriptionData = {
        BackAccessory = "",
        BodyTypeScale= 0, 
        ClimbAnimation= 0, 
        DepthScale= 0, 
        Face= 0, 
        FaceAccessory = "",
        FallAnimation = 0, 
        FrontAccessory = "",
        GraphicTShirt = 0, 
        HairAccessory = "", 
        HatAccessory = "", 
        Head = 0, 
        HeadColor = { 0, 0, 0},
        HeadScale = 0, 
        HeightScale = 0, 
        IdleAnimation = 0, 
        JumpAnimation = 0, 
        LeftArm = 0, 
        LeftArmColor = { 0, 0, 0 }, 
        LeftLeg = 0, 
        LeftLegColor = { 0, 0, 0 },
        MoodAnimation = 0, 
        NeckAccessory = "", 
        Pants = 0, 
        ProportionScale = 0, 
        RightArm = 0, 
        RightArmColor = { 0, 0, 0 }, 
        RightLeg = 0, 
        RightLegColor = { 0, 0, 0 }, 
        RunAnimation = 0, 
        Shirt = 0, 
        ShouldersAccessory = "", 
        SwimAnimation = 0, 
        Torso = 0, 
        TorsoColor = {0, 0, 0}, 
        WaistAccessory = "", 
        WalkAnimation = 0, 
        WidthScale = 0
    }
        
    if not player then 
        return humanoidDescriptionData, status_codes.ERR_RA_HUMPLAYER
    end
    
    local character = player.Character 

    if character then 
        local humanoid = character:WaitForChild("Humanoid", 1)
        
        if not humanoid then 
            return humanoidDescriptionData, status_codes.ERR_RA_HUMOBJ
        end
        
        local description = (humanoid :: Humanoid):GetAppliedDescription() :: any

        if not description then 
            return humanoidDescriptionData, status_codes.ERR_RA_HUMDESC
        end

        pcall(function()
                for descriptionField, v in pairs(humanoidDescriptionData) do 
                    if typeof(description[descriptionField]) == "Color3" then 
                        humanoidDescriptionData[descriptionField] = {
                            description[descriptionField].R,
                            description[descriptionField].G, 
                            description[descriptionField].B
                        }
                    else 
                        humanoidDescriptionData[descriptionField] = description[descriptionField]
                    end 
                end
            end
        )
    else 
        return humanoidDescriptionData, status_codes.ERR_RA_CHARACTER
    end

    return humanoidDescriptionData, status_codes.OK
end

return {
    getHumanoidDescription = getHumanoidDescription
}