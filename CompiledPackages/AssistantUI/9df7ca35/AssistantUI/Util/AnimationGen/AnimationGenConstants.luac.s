PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R2 K0 ["rthroFemale"]
        2 JUMP                             ; [+1]
        3 LOADK                            R2 K1 ["mannequin"]
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R1 R3 R2
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 4
        3 LOADK                            R1 K0 ["Spine"]
        4 LOADK                            R2 K1 ["Chest"]
        5 LOADK                            R3 K2 ["LeftClavicle"]
        6 LOADK                            R4 K3 ["RightClavicle"]
        7 SETLIST                          R0 R1 4 [1]
        9 DUPTABLE                         R1 K10 [{["mannequin"] = "rbxasset://models/AnimationGen/MannequinRigData.rbxm", ["block"] = "rbxasset://models/AnimationGen/BlockyRigData.rbxm", ["rthroFemale"] = "rbxasset://models/AnimationGen/RthroFemaleRigData.rbxm"}]
       10 DUPCLOSURE                       R2 K11 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 DUPCLOSURE                       R3 K12 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 DUPTABLE                         R4 K34 [{["EDIT_POSE_HOLD_FRAMES"] = 1, ["EDIT_POSE_FADE_FRAMES"] = 5, ["DEFAULT_GENERATION_FPS"] = 30, ["RBX_ANIMSAVES_FOLDER_NAME"] = "RBX_ANIMSAVES", ["ANIM_SAVES_INSTANCE_NAME"] = "AnimSaves", ["R15_PLUS_JOINT_NAMES"], ["ASSISTANT_ANIMATION_GENERATION_FOLDER_NAME"] = "RBX_ASSISTANT_ANIMGEN", ["DEFAULT_RIG_ATTRIBUTE"] = "AnimationGenDefaultRig", ["EDIT_POSE_SOURCE_TIME_ATTRIBUTE"] = "AnimationGenEditPoseSourceTime", ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"] = "AnimationGenClipToUpscalePreview", ["getAnimationRigDataContentUrl"], ["getDefaultAnimationRigDataContentUrl"]}]
       15 SETTABLEKS                       R0 R4 K23 ["R15_PLUS_JOINT_NAMES"]
       17 SETTABLEKS                       R2 R4 K32 ["getAnimationRigDataContentUrl"]
       19 SETTABLEKS                       R3 R4 K33 ["getDefaultAnimationRigDataContentUrl"]
       21 RETURN                           R4 1
