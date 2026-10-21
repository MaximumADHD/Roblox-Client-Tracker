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

PROTO_2:
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
       15 JUMPIFNOT                        R7 ; [+50]
       16 GETTABLEKS                       R7 R6 K5 ["Name"]
       18 JUMPIFEQKS                       R7 K6 ["HumanoidRootPart"] ; [+47]
       20 GETIMPORT                        R7 K9 [table.find]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K10 ["LIMBS"]
       25 GETTABLEKS                       R9 R6 K5 ["Name"]
       27 CALL                             R7 2 1
       28 JUMPIFNOTEQKNIL                  R7 ; [+37]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R8 R6 K5 ["Name"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K13 [string.lower]
       36 MOVE                             R9 R7
       37 CALL                             R8 1 1
       38 GETUPVAL                         R10 2
       39 GETTABLE                         R9 R10 R8
       40 JUMPIFEQKNIL                     R9 ; [+25]
       42 GETUPVAL                         R10 3
       43 MOVE                             R11 R0
       44 MOVE                             R12 R9
       45 CALL                             R10 2 1
       46 JUMPIFEQKNIL                     R10 ; [+19]
       48 GETUPVAL                         R12 4
       49 GETIMPORT                        R13 K15 [string.gsub]
       51 MOVE                             R14 R8
       52 LOADK                            R15 K16 ["_"]
       53 LOADK                            R16 K17 [""]
       54 CALL                             R13 3 1
       55 GETTABLE                         R11 R12 R13
       56 JUMPIF                           R11 ; [+2]
       57 GETIMPORT                        R11 K21 [Enum.AccessoryType.Unknown]
       59 GETUPVAL                         R12 5
       60 MOVE                             R13 R1
       61 MOVE                             R14 R6
       62 MOVE                             R15 R7
       63 MOVE                             R16 R11
       64 MOVE                             R17 R10
       65 CALL                             R12 5 0
       66 FORGLOOP                         R2 2 ; [-56]
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["findAssociatedAttachment"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K43 [{["hat"] = "HatAttachment", ["hair"] = "HairAttachment", ["face"] = "FaceFrontAttachment", ["neck"] = "NeckAttachment", ["shoulder"] = "NeckAttachment", ["front"] = "BodyFrontAttachment", ["back"] = "BodyBackAttachment", ["waist"] = "WaistFrontAttachment", ["tshirt"] = "BodyFrontAttachment", ["shirt"] = "BodyFrontAttachment", ["pants"] = "WaistCenterAttachment", ["jacket"] = "BodyFrontAttachment", ["sweater"] = "BodyFrontAttachment", ["shorts"] = "WaistCenterAttachment", ["left_shoe"] = "LeftFootAttachment", ["right_shoe"] = "RightFootAttachment", ["dress_skirt"] = "WaistCenterAttachment", ["eyebrow"] = "FaceFrontAttachment", ["eyelash"] = "FaceFrontAttachment", ["left_grip"] = "LeftGripAttachment", ["right_grip"] = "RightGripAttachment"}]
       26 NEWTABLE                         R4 0 2
       28 LOADK                            R5 K44 ["RBX_LC_"]
       29 LOADK                            R6 K45 ["RBX_RIGID_"]
       30 SETLIST                          R4 R5 2 [1]
       32 NEWTABLE                         R5 0 0
       34 GETIMPORT                        R6 K48 [Enum.AccessoryType]
       36 NAMECALL                         R6 R6 K49 ["GetEnumItems"]
       38 CALL                             R6 1 3
       39 FORGPREP                         R6
       40 GETIMPORT                        R11 K52 [string.lower]
       42 GETTABLEKS                       R12 R10 K53 ["Name"]
       44 CALL                             R11 1 1
       45 SETTABLE                         R10 R5 R11
       46 FORGLOOP                         R6 2 ; [-7]
       48 DUPCLOSURE                       R6 K54 [PROTO_0]
       49 CAPTURE                          VAL R4
       50 DUPCLOSURE                       R7 K55 [PROTO_1]
       51 DUPCLOSURE                       R8 K56 [PROTO_2]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R7
       58 RETURN                           R8 1
