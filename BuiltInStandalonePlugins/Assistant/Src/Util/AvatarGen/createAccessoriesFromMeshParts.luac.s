PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 LENGTH                           R9 R5
        6 FASTCALL3                        STRING_SUB R0 R8 R9
        8 MOVE                             R7 R0
        9 GETIMPORT                        R6 K2 [string.sub]
       11 CALL                             R6 3 1
       12 JUMPIFNOTEQ                      R6 R5 ; [+10]
       14 LENGTH                           R9 R5
       15 ADDK                             R8 R9 K3 [1]
       16 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K2 [string.sub]
       21 CALL                             R6 2 1
       22 RETURN                           R6 1
       23 FORGLOOP                         R1 2 ; [-20]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R9 R6
        5 NAMECALL                         R7 R0 K0 ["FindFirstChild"]
        7 CALL                             R7 2 1
        8 JUMPIFEQKNIL                     R7 ; [+14]
       10 MOVE                             R10 R1
       11 LOADB                            R11 1
       12 NAMECALL                         R8 R7 K0 ["FindFirstChild"]
       14 CALL                             R8 3 1
       15 JUMPIFEQKNIL                     R8 ; [+7]
       17 LOADK                            R11 K1 ["Attachment"]
       18 NAMECALL                         R9 R8 K2 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+1]
       22 RETURN                           R8 1
       23 FORGLOOP                         R2 2 ; [-20]
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["CFrame"]
        2 GETTABLEKS                       R7 R4 K1 ["WorldCFrame"]
        4 NAMECALL                         R5 R5 K2 ["ToObjectSpace"]
        6 CALL                             R5 2 1
        7 GETIMPORT                        R6 K5 [Instance.new]
        9 LOADK                            R7 K6 ["Accessory"]
       10 CALL                             R6 1 1
       11 SETTABLEKS                       R2 R6 K7 ["Name"]
       13 SETTABLEKS                       R3 R6 K8 ["AccessoryType"]
       15 LOADK                            R7 K9 ["Handle"]
       16 SETTABLEKS                       R7 R1 K7 ["Name"]
       18 SETTABLEKS                       R6 R1 K10 ["Parent"]
       20 GETTABLEKS                       R9 R4 K7 ["Name"]
       22 NAMECALL                         R7 R1 K11 ["FindFirstChild"]
       24 CALL                             R7 2 1
       25 JUMPIFEQKNIL                     R7 ; [+8]
       27 LOADK                            R11 K12 ["Attachment"]
       28 NAMECALL                         R9 R7 K13 ["IsA"]
       30 CALL                             R9 2 1
       31 JUMPIFNOT                        R9 ; [+2]
       32 MOVE                             R8 R7
       33 JUMP                             ; [+4]
       34 GETIMPORT                        R8 K5 [Instance.new]
       36 LOADK                            R9 K12 ["Attachment"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R4 K7 ["Name"]
       40 SETTABLEKS                       R9 R8 K7 ["Name"]
       42 SETTABLEKS                       R5 R8 K0 ["CFrame"]
       44 SETTABLEKS                       R1 R8 K10 ["Parent"]
       46 MOVE                             R11 R6
       47 NAMECALL                         R9 R0 K14 ["AddAccessory"]
       49 CALL                             R9 2 0
       50 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 NAMECALL                         R2 R0 K2 ["GetChildren"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K3 ["MeshPart"]
       12 NAMECALL                         R7 R6 K4 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+48]
       16 GETTABLEKS                       R7 R6 K5 ["Name"]
       18 JUMPIFEQKS                       R7 K6 ["HumanoidRootPart"] ; [+45]
       20 GETIMPORT                        R7 K9 [table.find]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R9 R6 K5 ["Name"]
       25 CALL                             R7 2 1
       26 JUMPIFNOTEQKNIL                  R7 ; [+37]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R8 R6 K5 ["Name"]
       31 CALL                             R7 1 1
       32 GETIMPORT                        R8 K12 [string.lower]
       34 MOVE                             R9 R7
       35 CALL                             R8 1 1
       36 GETUPVAL                         R10 2
       37 GETTABLE                         R9 R10 R8
       38 JUMPIFEQKNIL                     R9 ; [+25]
       40 GETUPVAL                         R10 3
       41 MOVE                             R11 R0
       42 MOVE                             R12 R9
       43 CALL                             R10 2 1
       44 JUMPIFEQKNIL                     R10 ; [+19]
       46 GETUPVAL                         R12 4
       47 GETIMPORT                        R13 K14 [string.gsub]
       49 MOVE                             R14 R8
       50 LOADK                            R15 K15 ["_"]
       51 LOADK                            R16 K16 [""]
       52 CALL                             R13 3 1
       53 GETTABLE                         R11 R12 R13
       54 JUMPIF                           R11 ; [+2]
       55 GETIMPORT                        R11 K20 [Enum.AccessoryType.Unknown]
       57 GETUPVAL                         R12 5
       58 MOVE                             R13 R1
       59 MOVE                             R14 R6
       60 MOVE                             R15 R7
       61 MOVE                             R16 R11
       62 MOVE                             R17 R10
       63 CALL                             R12 5 0
       64 FORGLOOP                         R2 2 ; [-54]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 15
        3 LOADK                            R1 K0 ["Head"]
        4 LOADK                            R2 K1 ["UpperTorso"]
        5 LOADK                            R3 K2 ["LowerTorso"]
        6 LOADK                            R4 K3 ["LeftUpperLeg"]
        7 LOADK                            R5 K4 ["LeftLowerLeg"]
        8 LOADK                            R6 K5 ["LeftFoot"]
        9 LOADK                            R7 K6 ["RightUpperLeg"]
       10 LOADK                            R8 K7 ["RightLowerLeg"]
       11 LOADK                            R9 K8 ["RightFoot"]
       12 LOADK                            R10 K9 ["LeftUpperArm"]
       13 LOADK                            R11 K10 ["LeftLowerArm"]
       14 LOADK                            R12 K11 ["LeftHand"]
       15 LOADK                            R13 K12 ["RightUpperArm"]
       16 LOADK                            R14 K13 ["RightLowerArm"]
       17 LOADK                            R15 K14 ["RightHand"]
       18 SETLIST                          R0 R1 15 [1]
       20 DUPTABLE                         R1 K48 [{["hat"] = "HatAttachment", ["hair"] = "HairAttachment", ["face"] = "FaceFrontAttachment", ["neck"] = "NeckAttachment", ["shoulder"] = "NeckAttachment", ["front"] = "BodyFrontAttachment", ["back"] = "BodyBackAttachment", ["waist"] = "WaistFrontAttachment", ["tshirt"] = "BodyFrontAttachment", ["shirt"] = "BodyFrontAttachment", ["pants"] = "WaistCenterAttachment", ["jacket"] = "BodyFrontAttachment", ["sweater"] = "BodyFrontAttachment", ["shorts"] = "WaistCenterAttachment", ["left_shoe"] = "LeftFootAttachment", ["right_shoe"] = "RightFootAttachment", ["dress_skirt"] = "WaistCenterAttachment", ["eyebrow"] = "FaceFrontAttachment", ["eyelash"] = "FaceFrontAttachment", ["left_grip"] = "LeftGripAttachment", ["right_grip"] = "RightGripAttachment"}]
       21 NEWTABLE                         R2 0 2
       23 LOADK                            R3 K49 ["RBX_LC_"]
       24 LOADK                            R4 K50 ["RBX_RIGID_"]
       25 SETLIST                          R2 R3 2 [1]
       27 NEWTABLE                         R3 0 0
       29 GETIMPORT                        R4 K53 [Enum.AccessoryType]
       31 NAMECALL                         R4 R4 K54 ["GetEnumItems"]
       33 CALL                             R4 1 3
       34 FORGPREP                         R4
       35 GETIMPORT                        R9 K57 [string.lower]
       37 GETTABLEKS                       R10 R8 K58 ["Name"]
       39 CALL                             R9 1 1
       40 SETTABLE                         R8 R3 R9
       41 FORGLOOP                         R4 2 ; [-7]
       43 DUPCLOSURE                       R4 K59 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R5 K60 [PROTO_1]
       46 CAPTURE                          VAL R0
       47 DUPCLOSURE                       R6 K61 [PROTO_2]
       48 DUPCLOSURE                       R7 K62 [PROTO_3]
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
