PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["HumanoidDescription"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Head"]
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 GETIMPORT                        R4 K8 [Enum.HumanoidRigType.R15]
       11 GETIMPORT                        R5 K11 [Enum.AssetTypeVerification.Always]
       13 NAMECALL                         R1 R1 K12 ["CreateHumanoidModelFromDescription"]
       15 CALL                             R1 4 -1
       16 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 RETURN                           R1 2
        6 GETIMPORT                        R1 K1 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+8]
       14 GETIMPORT                        R3 K3 [warn]
       16 LOADK                            R4 K4 ["Failed to create character from HumanoidDescription:"]
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 RETURN                           R3 2
       22 LOADK                            R5 K5 ["Head"]
       23 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       25 CALL                             R3 2 1
       26 NAMECALL                         R4 R2 K7 ["GetChildren"]
       28 CALL                             R4 1 3
       29 FORGPREP                         R4
       30 LOADK                            R11 K8 ["BasePart"]
       31 NAMECALL                         R9 R8 K9 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+7]
       35 GETTABLEKS                       R9 R8 K10 ["Name"]
       37 JUMPIFEQKS                       R9 K5 ["Head"] ; [+4]
       39 LOADN                            R9 1
       40 SETTABLEKS                       R9 R8 K11 ["Transparency"]
       42 FORGLOOP                         R4 2 ; [-13]
       44 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 2
        5 SETTABLEKS                       R1 R0 K0 ["Name"]
        7 GETUPVAL                         R1 3
        8 SETTABLEKS                       R1 R0 K1 ["Parent"]
       10 LOADB                            R1 0
       11 SETUPVAL                         R1 4
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 -1
        6 FASTCALL                         TONUMBER ; [+2]
        7 GETIMPORT                        R0 K1 [tonumber]
        9 CALL                             R0 -1 1
       10 JUMPIFNOT                        R0 ; [+2]
       11 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R3 3
       16 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+2]
       20 GETUPVAL                         R2 4
       21 JUMPIFNOT                        R2 ; [+1]
       22 RETURN                           R0 0
       23 LOADB                            R2 1
       24 SETUPVAL                         R2 4
       25 GETIMPORT                        R2 K6 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U4
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K0 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+3]
       12 NAMECALL                         R1 R0 K1 ["Destroy"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R8 K3 ["LuaSourceContainer"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+3]
       12 NAMECALL                         R6 R5 K5 ["Destroy"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-9]
       17 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R8 K3 ["Sound"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+6]
       12 GETTABLEKS                       R6 R5 K5 ["Playing"]
       14 JUMPIFNOT                        R6 ; [+3]
       15 LOADB                            R6 0
       16 SETTABLEKS                       R6 R5 K5 ["Playing"]
       18 FORGLOOP                         R1 2 ; [-12]
       20 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R1 K0 ["GetModelCFrame"]
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K1 ["SetImageServerView"]
        6 CALL                             R3 2 0
        7 NAMECALL                         R5 R1 K3 ["GetExtentsSize"]
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R4 R5 K4 ["magnitude"]
       12 DIVK                             R3 R4 K2 [2]
       13 GETTABLEKS                       R6 R0 K5 ["FieldOfView"]
       15 FASTCALL1                        MATH_RAD R6 ; [+2]
       16 GETIMPORT                        R5 K8 [math.rad]
       18 CALL                             R5 1 1
       19 DIVK                             R4 R5 K2 [2]
       20 FASTCALL1                        MATH_TAN R4 ; [+3]
       21 MOVE                             R7 R4
       22 GETIMPORT                        R6 K10 [math.tan]
       24 CALL                             R6 1 1
       25 DIV                              R5 R3 R6
       26 GETTABLEKS                       R9 R0 K11 ["CFrame"]
       28 GETTABLEKS                       R11 R0 K11 ["CFrame"]
       30 GETTABLEKS                       R10 R11 K12 ["p"]
       32 SUB                              R8 R9 R10
       33 GETTABLEKS                       R9 R2 K12 ["p"]
       35 ADD                              R7 R8 R9
       36 GETTABLEKS                       R12 R0 K11 ["CFrame"]
       38 GETTABLEKS                       R11 R12 K12 ["p"]
       40 GETTABLEKS                       R12 R2 K12 ["p"]
       42 SUB                              R10 R11 R12
       43 GETTABLEKS                       R9 R10 K13 ["unit"]
       45 MUL                              R8 R9 R5
       46 ADD                              R6 R7 R8
       47 SETTABLEKS                       R6 R0 K11 ["CFrame"]
       49 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadLocalAsset"]
        4 CALL                             R0 2 1
        5 LOADK                            R3 K1 ["Folder"]
        6 NAMECALL                         R1 R0 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+25]
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+10]
       15 LOADK                            R4 K4 ["Camera"]
       16 NAMECALL                         R2 R1 K2 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+5]
       20 NAMECALL                         R2 R1 K5 ["Clone"]
       22 CALL                             R2 1 1
       23 SETUPVAL                         R2 3
       24 RETURN                           R0 0
       25 LOADK                            R4 K4 ["Camera"]
       26 LOADB                            R5 1
       27 NAMECALL                         R2 R0 K6 ["FindFirstChildWhichIsA"]
       29 CALL                             R2 3 1
       30 JUMPIFNOT                        R2 ; [+4]
       31 NAMECALL                         R3 R2 K5 ["Clone"]
       33 CALL                             R3 1 1
       34 SETUPVAL                         R3 3
       35 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadLocalAsset"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K1 ["Clone"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K2 ["Parent"]
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R4 2
       10 GETTABLE                         R3 R4 R1
       11 JUMPIF                           R3 ; [+1]
       12 GETUPVAL                         R3 1
       13 MOVE                             R2 R3
       14 LOADNIL                          R3
       15 GETIMPORT                        R4 K1 [pcall]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          REF R2
       21 CAPTURE                          REF R3
       22 CALL                             R4 1 2
       23 JUMPIF                           R4 ; [+5]
       24 GETIMPORT                        R6 K3 [warn]
       26 LOADK                            R7 K4 ["Failed to load MakeupCameras.rbxm:"]
       27 MOVE                             R8 R5
       28 CALL                             R6 2 0
       29 MOVE                             R6 R3
       30 GETIMPORT                        R7 K7 [Instance.new]
       32 LOADK                            R8 K8 ["Camera"]
       33 CALL                             R7 1 1
       34 MOVE                             R3 R7
       35 LOADK                            R7 K8 ["Camera"]
       36 SETTABLEKS                       R7 R3 K9 ["Name"]
       38 GETIMPORT                        R7 K13 [Enum.CameraType.Scriptable]
       40 SETTABLEKS                       R7 R3 K11 ["CameraType"]
       42 JUMPIFNOT                        R6 ; [+9]
       43 GETTABLEKS                       R7 R6 K14 ["CFrame"]
       45 SETTABLEKS                       R7 R3 K14 ["CFrame"]
       47 GETTABLEKS                       R7 R6 K15 ["FieldOfView"]
       49 SETTABLEKS                       R7 R3 K15 ["FieldOfView"]
       51 JUMP                             ; [+4]
       52 GETIMPORT                        R7 K3 [warn]
       54 LOADK                            R8 K16 ["Using fallback camera for makeup preview"]
       55 CALL                             R7 1 0
       56 SETTABLEKS                       R0 R3 K17 ["Parent"]
       58 SETTABLEKS                       R3 R0 K18 ["CurrentCamera"]
       60 GETIMPORT                        R7 K1 [pcall]
       62 NEWCLOSURE                       R8 P1
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R0
       66 CALL                             R7 1 2
       67 JUMPIF                           R7 ; [+5]
       68 GETIMPORT                        R9 K3 [warn]
       70 LOADK                            R10 K19 ["Failed to load MakeupLighting.rbxm:"]
       71 MOVE                             R11 R8
       72 CALL                             R9 2 0
       73 CLOSEUPVALS                      R2
       74 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 JUMPIFNOT                        R7 ; [+3]
        3 JUMPIFNOT                        R1 ; [+2]
        4 JUMPIFNOT                        R0 ; [+1]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 NAMECALL                         R7 R0 K0 ["ClearAllChildren"]
        9 CALL                             R7 1 0
       10 GETUPVAL                         R7 1
       11 MOVE                             R8 R0
       12 MOVE                             R9 R5
       13 CALL                             R7 2 1
       14 JUMPIF                           R7 ; [+5]
       15 GETIMPORT                        R8 K2 [warn]
       17 LOADK                            R9 K3 ["Failed to set up camera for makeup preview"]
       18 CALL                             R8 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R8 K6 [Instance.new]
       22 LOADK                            R9 K7 ["WorldModel"]
       23 CALL                             R8 1 1
       24 LOADK                            R9 K8 ["Thumbnail"]
       25 SETTABLEKS                       R9 R8 K9 ["Name"]
       27 SETTABLEKS                       R0 R8 K10 ["Parent"]
       29 GETUPVAL                         R9 2
       30 MOVE                             R10 R1
       31 CALL                             R9 1 2
       32 JUMPIFNOT                        R9 ; [+1]
       33 JUMPIF                           R10 ; [+5]
       34 GETIMPORT                        R11 K2 [warn]
       36 LOADK                            R12 K11 ["Failed to find head on character"]
       37 CALL                             R11 1 0
       38 RETURN                           R0 0
       39 LOADK                            R11 K12 ["RenderRig"]
       40 SETTABLEKS                       R11 R9 K9 ["Name"]
       42 SETTABLEKS                       R8 R9 K10 ["Parent"]
       44 GETTABLEKS                       R11 R10 K13 ["CFrame"]
       46 NAMECALL                         R12 R9 K14 ["GetPivot"]
       48 CALL                             R12 1 1
       49 MOVE                             R15 R11
       50 NAMECALL                         R13 R12 K15 ["ToObjectSpace"]
       52 CALL                             R13 2 1
       53 NAMECALL                         R16 R13 K16 ["Inverse"]
       55 CALL                             R16 1 -1
       56 NAMECALL                         R14 R9 K17 ["PivotTo"]
       58 CALL                             R14 -1 0
       59 GETTABLEKS                       R14 R10 K13 ["CFrame"]
       61 SETTABLEKS                       R14 R7 K18 ["Focus"]
       63 MOVE                             R14 R4
       64 JUMPIF                           R14 ; [+8]
       65 JUMPIFNOT                        R6 ; [+6]
       66 GETUPVAL                         R15 3
       67 GETTABLEKS                       R14 R15 K19 ["getThumbnailSkinColor"]
       69 MOVE                             R15 R6
       70 CALL                             R14 1 1
       71 JUMPIF                           R14 ; [+1]
       72 GETUPVAL                         R14 4
       73 JUMPIFNOT                        R14 ; [+2]
       74 SETTABLEKS                       R14 R10 K20 ["Color"]
       76 JUMPIFNOT                        R3 ; [+41]
       77 LENGTH                           R15 R3
       78 LOADN                            R16 0
       79 JUMPIFNOTLT                      R16 R15 ; [+38]
       81 LOADK                            R17 K21 ["Humanoid"]
       82 NAMECALL                         R15 R9 K22 ["FindFirstChildOfClass"]
       84 CALL                             R15 2 1
       85 GETIMPORT                        R16 K24 [pairs]
       87 MOVE                             R17 R3
       88 CALL                             R16 1 3
       89 FORGPREP_NEXT                    R16
       90 LOADK                            R23 K25 ["LuaSourceContainer"]
       91 NAMECALL                         R21 R20 K26 ["IsA"]
       93 CALL                             R21 2 1
       94 JUMPIF                           R21 ; [+21]
       95 NAMECALL                         R21 R20 K27 ["Clone"]
       97 CALL                             R21 1 1
       98 LOADK                            R24 K28 ["Decal"]
       99 NAMECALL                         R22 R21 K26 ["IsA"]
      101 CALL                             R22 2 1
      102 JUMPIFNOT                        R22 ; [+3]
      103 SETTABLEKS                       R10 R21 K10 ["Parent"]
      105 JUMP                             ; [+10]
      106 LOADK                            R24 K29 ["Accessory"]
      107 NAMECALL                         R22 R21 K26 ["IsA"]
      109 CALL                             R22 2 1
      110 JUMPIFNOT                        R22 ; [+5]
      111 JUMPIFNOT                        R15 ; [+4]
      112 MOVE                             R24 R21
      113 NAMECALL                         R22 R15 K30 ["AddAccessory"]
      115 CALL                             R22 2 0
      116 FORGLOOP                         R16 2 ; [-27]
      118 RETURN                           R10 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["viewportRef"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K2 ["makeupHeadRef"]
        9 DUPTABLE                         R2 K4 [{"shouldShow"}]
       10 NAMECALL                         R3 R0 K5 ["shouldShowInstances"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K3 ["shouldShow"]
       15 SETTABLEKS                       R2 R0 K6 ["state"]
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 NAMECALL                         R1 R0 K0 ["setView"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R1 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K1 ["Destroy"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+42]
        3 GETTABLEKS                       R5 R0 K0 ["props"]
        5 GETTABLEKS                       R4 R5 K1 ["AssetType"]
        7 GETTABLEKS                       R5 R1 K1 ["AssetType"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R6 R0 K0 ["props"]
       15 GETTABLEKS                       R5 R6 K2 ["selectedColor"]
       17 GETTABLEKS                       R6 R1 K2 ["selectedColor"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 JUMPIFNOT                        R4 ; [+15]
       24 JUMPIF                           R3 ; [+14]
       25 GETTABLEKS                       R5 R0 K3 ["makeupHeadRef"]
       27 JUMPIFNOT                        R5 ; [+11]
       28 GETTABLEKS                       R6 R0 K0 ["props"]
       30 GETTABLEKS                       R5 R6 K2 ["selectedColor"]
       32 JUMPIF                           R5 ; [+1]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R6 R0 K3 ["makeupHeadRef"]
       36 SETTABLEKS                       R5 R6 K4 ["Color"]
       38 RETURN                           R0 0
       39 JUMPIF                           R3 ; [+1]
       40 JUMPIFNOT                        R4 ; [+21]
       41 NAMECALL                         R5 R0 K5 ["setView"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R4 R0 K0 ["props"]
       47 GETTABLEKS                       R3 R4 K1 ["AssetType"]
       49 GETTABLEKS                       R4 R1 K1 ["AssetType"]
       51 JUMPIFEQ                         R3 R4 ; [+10]
       53 GETTABLEKS                       R4 R0 K0 ["props"]
       55 GETTABLEKS                       R3 R4 K1 ["AssetType"]
       57 JUMPIFEQKNIL                     R3 ; [+4]
       59 NAMECALL                         R3 R0 K5 ["setView"]
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Plugin"]
       11 NAMECALL                         R0 R0 K2 ["get"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 -1
       18 FASTCALL                         TONUMBER ; [+2]
       19 GETIMPORT                        R3 K4 [tonumber]
       21 CALL                             R3 -1 1
       22 GETUPVAL                         R4 4
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K0 ["props"]
       26 GETTABLEKS                       R5 R6 K5 ["instances"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K0 ["props"]
       31 GETTABLEKS                       R6 R7 K6 ["selectedColor"]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K0 ["props"]
       36 GETTABLEKS                       R7 R8 K7 ["AssetType"]
       38 MOVE                             R8 R0
       39 CALL                             R1 7 1
       40 GETUPVAL                         R2 0
       41 SETTABLEKS                       R1 R2 K8 ["makeupHeadRef"]
       43 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Clone"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["isUGCBundleType"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K2 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["AssetType"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+15]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R1 R2 K4 ["removeAllUGCBUndleUnknownMeshParts"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K2 ["props"]
       24 GETTABLEKS                       R3 R4 K3 ["AssetType"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K2 ["props"]
       29 GETTABLEKS                       R4 R5 K5 ["AllowedBundleTypeSettings"]
       31 CALL                             R1 3 0
       32 GETUPVAL                         R1 5
       33 SETTABLEKS                       R1 R0 K6 ["Parent"]
       35 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["shouldShow"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETTABLEKS                       R2 R0 K2 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["AssetType"]
       13 GETIMPORT                        R2 K6 [Enum.AssetType.EmoteAnimation]
       15 JUMPIFNOTEQ                      R1 R2 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+19]
       21 GETTABLEKS                       R2 R0 K2 ["props"]
       23 GETTABLEKS                       R1 R2 K3 ["AssetType"]
       25 JUMPIFNOT                        R1 ; [+14]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K7 ["MAKEUP_ASSET_TYPES"]
       29 JUMPIFNOT                        R1 ; [+10]
       30 GETIMPORT                        R1 K10 [table.find]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R2 R3 K7 ["MAKEUP_ASSET_TYPES"]
       35 GETTABLEKS                       R4 R0 K2 ["props"]
       37 GETTABLEKS                       R3 R4 K3 ["AssetType"]
       39 CALL                             R1 2 1
       40 GETTABLEKS                       R3 R0 K11 ["viewportRef"]
       42 GETTABLEKS                       R2 R3 K12 ["current"]
       44 GETUPVAL                         R3 1
       45 CALL                             R3 0 1
       46 JUMPIFNOT                        R3 ; [+7]
       47 JUMPIFNOT                        R2 ; [+6]
       48 NAMECALL                         R3 R2 K13 ["ClearAllChildren"]
       50 CALL                             R3 1 0
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R0 K14 ["makeupHeadRef"]
       54 JUMPIFNOT                        R1 ; [+10]
       55 GETIMPORT                        R3 K17 [task.spawn]
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CALL                             R3 1 0
       64 RETURN                           R0 0
       65 GETTABLEKS                       R4 R0 K2 ["props"]
       67 GETTABLEKS                       R3 R4 K18 ["instances"]
       69 JUMPIFNOT                        R3 ; [+127]
       70 NAMECALL                         R3 R2 K13 ["ClearAllChildren"]
       72 CALL                             R3 1 0
       73 GETIMPORT                        R3 K21 [Instance.new]
       75 LOADK                            R4 K22 ["Camera"]
       76 CALL                             R3 1 1
       77 LOADK                            R4 K22 ["Camera"]
       78 SETTABLEKS                       R4 R3 K23 ["Name"]
       80 SETTABLEKS                       R2 R3 K24 ["Parent"]
       82 SETTABLEKS                       R3 R2 K25 ["CurrentCamera"]
       84 GETIMPORT                        R4 K21 [Instance.new]
       86 LOADK                            R5 K26 ["Model"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R2 R4 K24 ["Parent"]
       90 GETIMPORT                        R5 K28 [pairs]
       92 GETTABLEKS                       R8 R0 K2 ["props"]
       94 GETTABLEKS                       R6 R8 K18 ["instances"]
       96 CALL                             R5 1 3
       97 FORGPREP_NEXT                    R5
       98 LOADK                            R12 K29 ["LuaSourceContainer"]
       99 NAMECALL                         R10 R9 K30 ["IsA"]
      101 CALL                             R10 2 1
      102 JUMPIF                           R10 ; [+10]
      103 GETIMPORT                        R10 K32 [pcall]
      105 NEWCLOSURE                       R11 P1
      106 CAPTURE                          VAL R9
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          VAL R4
      112 CALL                             R10 1 0
      113 FORGLOOP                         R5 2 ; [-16]
      115 GETUPVAL                         R5 9
      116 MOVE                             R6 R4
      117 CALL                             R5 1 0
      118 GETTABLEKS                       R8 R0 K2 ["props"]
      120 GETTABLEKS                       R7 R8 K18 ["instances"]
      122 LENGTH                           R6 R7
      123 JUMPIFNOTEQKN                    R6 K33 [1] ; [+7]
      125 GETTABLEKS                       R7 R0 K2 ["props"]
      127 GETTABLEKS                       R6 R7 K18 ["instances"]
      129 GETTABLEN                        R5 R6 1
      130 JUMPIF                           R5 ; [+1]
      131 MOVE                             R5 R4
      132 LOADK                            R8 K34 ["ThumbnailConfiguration"]
      133 NAMECALL                         R6 R5 K35 ["FindFirstChild"]
      135 CALL                             R6 2 1
      136 LOADK                            R9 K36 ["ThumbnailCamera"]
      137 NAMECALL                         R7 R5 K35 ["FindFirstChild"]
      139 CALL                             R7 2 1
      140 JUMPIFNOT                        R6 ; [+43]
      141 LOADK                            R10 K37 ["Configuration"]
      142 NAMECALL                         R8 R6 K30 ["IsA"]
      144 CALL                             R8 2 1
      145 JUMPIFNOT                        R8 ; [+38]
      146 LOADK                            R10 K38 ["ThumbnailCameraTarget"]
      147 NAMECALL                         R8 R6 K35 ["FindFirstChild"]
      149 CALL                             R8 2 1
      150 LOADK                            R11 K39 ["ThumbnailCameraValue"]
      151 NAMECALL                         R9 R6 K35 ["FindFirstChild"]
      153 CALL                             R9 2 1
      154 JUMPIFNOT                        R8 ; [+42]
      155 LOADK                            R12 K40 ["ObjectValue"]
      156 NAMECALL                         R10 R8 K30 ["IsA"]
      158 CALL                             R10 2 1
      159 JUMPIFNOT                        R10 ; [+37]
      160 JUMPIFNOT                        R9 ; [+36]
      161 LOADK                            R12 K41 ["CFrameValue"]
      162 NAMECALL                         R10 R9 K30 ["IsA"]
      164 CALL                             R10 2 1
      165 JUMPIFNOT                        R10 ; [+31]
      166 GETTABLEKS                       R10 R8 K42 ["Value"]
      168 JUMPIFNOT                        R10 ; [+28]
      169 LOADK                            R13 K43 ["BasePart"]
      170 NAMECALL                         R11 R10 K30 ["IsA"]
      172 CALL                             R11 2 1
      173 JUMPIFNOT                        R11 ; [+23]
      174 GETTABLEKS                       R11 R10 K44 ["CFrame"]
      176 GETTABLEKS                       R13 R9 K42 ["Value"]
      178 NAMECALL                         R11 R11 K45 ["toWorldSpace"]
      180 CALL                             R11 2 1
      181 SETTABLEKS                       R11 R3 K44 ["CFrame"]
      183 RETURN                           R0 0
      184 JUMPIFNOT                        R7 ; [+8]
      185 LOADK                            R10 K22 ["Camera"]
      186 NAMECALL                         R8 R7 K30 ["IsA"]
      188 CALL                             R8 2 1
      189 JUMPIFNOT                        R8 ; [+3]
      190 SETTABLEKS                       R7 R2 K25 ["CurrentCamera"]
      192 RETURN                           R0 0
      193 GETUPVAL                         R8 5
      194 MOVE                             R9 R3
      195 MOVE                             R10 R4
      196 CALL                             R8 2 0
      197 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["instances"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R3 K1 ["instances"]
        9 LENGTH                           R1 R2
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+9]
       13 GETTABLEKS                       R4 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R4 K1 ["instances"]
       17 GETTABLEN                        R2 R3 1
       18 GETTABLEKS                       R1 R2 K2 ["Name"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K3 [""]
       22 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["instances"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R2 R5 K1 ["instances"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 NAMECALL                         R8 R6 K2 ["GetDescendants"]
       18 CALL                             R8 1 1
       19 LENGTH                           R7 R8
       20 ADD                              R1 R1 R7
       21 GETUPVAL                         R7 0
       22 JUMPIFNOTLE                      R7 R1 ; [+3]
       24 LOADB                            R7 0
       25 RETURN                           R7 1
       26 FORGLOOP                         R2 2 ; [-11]
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["title"]
        8 JUMPIF                           R4 ; [+3]
        9 NAMECALL                         R4 R0 K4 ["getName"]
       11 CALL                             R4 1 1
       12 LOADB                            R5 1
       13 GETTABLEKS                       R6 R1 K5 ["ShowTitle"]
       15 JUMPIFEQKNIL                     R6 ; [+3]
       17 GETTABLEKS                       R5 R1 K6 ["showTitle"]
       19 GETTABLEKS                       R6 R1 K7 ["Position"]
       21 JUMPIF                           R6 ; [+7]
       22 GETIMPORT                        R6 K10 [UDim2.new]
       24 LOADN                            R7 1
       25 LOADN                            R8 0
       26 LOADN                            R9 1
       27 LOADN                            R10 0
       28 CALL                             R6 4 1
       29 GETTABLEKS                       R8 R1 K12 ["titleHeight"]
       31 ORK                              R7 R8 K11 [24]
       32 GETTABLEKS                       R9 R1 K14 ["titlePadding"]
       34 ORK                              R8 R9 K13 [12]
       35 GETTABLEKS                       R10 R1 K16 ["LayoutOrder"]
       37 ORK                              R9 R10 K15 [1]
       38 GETUPVAL                         R10 0
       39 CALL                             R10 0 1
       40 JUMPIFNOT                        R10 ; [+55]
       41 GETTABLEKS                       R10 R1 K17 ["AssetType"]
       43 GETIMPORT                        R11 K20 [Enum.AssetType.EmoteAnimation]
       45 JUMPIFNOTEQ                      R10 R11 ; [+50]
       47 LOADNIL                          R10
       48 LOADNIL                          R11
       49 GETTABLEKS                       R12 R1 K21 ["UploadSucceeded"]
       51 JUMPIFNOTEQKB                    R12 FALSE ; [+22]
       53 GETTABLEKS                       R12 R3 K22 ["dialog"]
       55 GETTABLEKS                       R10 R12 K23 ["alertIcon"]
       57 GETIMPORT                        R12 K10 [UDim2.new]
       59 LOADN                            R13 0
       60 LOADN                            R14 96
       61 LOADN                            R15 0
       62 LOADN                            R16 96
       63 CALL                             R12 4 1
       64 MOVE                             R11 R12
       65 GETIMPORT                        R12 K10 [UDim2.new]
       67 LOADK                            R13 K24 [0.5]
       68 LOADN                            R14 208
       69 LOADK                            R15 K24 [0.5]
       70 LOADN                            R16 248
       71 CALL                             R12 4 1
       72 MOVE                             R6 R12
       73 JUMP                             ; [+3]
       74 LOADK                            R10 K25 ["rbxasset://textures/StudioToolbox/DefaultEmoteAnimation.png"]
       75 GETTABLEKS                       R11 R1 K26 ["Size"]
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R12 R13 K27 ["createElement"]
       80 GETUPVAL                         R13 2
       81 DUPTABLE                         R14 K31 [{"Size", "Position", "BackgroundTransparency", "Image", "defaultImage"}]
       82 SETTABLEKS                       R11 R14 K26 ["Size"]
       84 SETTABLEKS                       R6 R14 K7 ["Position"]
       86 LOADN                            R15 1
       87 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
       89 SETTABLEKS                       R10 R14 K29 ["Image"]
       91 LOADK                            R15 K32 [""]
       92 SETTABLEKS                       R15 R14 K30 ["defaultImage"]
       94 CALL                             R12 2 -1
       95 RETURN                           R12 -1
       96 GETUPVAL                         R10 3
       97 CALL                             R10 0 1
       98 JUMPIFNOT                        R10 ; [+203]
       99 GETUPVAL                         R11 4
      100 GETTABLEKS                       R10 R11 K9 ["new"]
      102 CALL                             R10 0 1
      103 JUMPIFNOT                        R5 ; [+9]
      104 GETIMPORT                        R11 K10 [UDim2.new]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 LOADN                            R14 1
      109 ADD                              R16 R7 R8
      110 MINUS                            R15 R16
      111 CALL                             R11 4 1
      112 JUMPIF                           R11 ; [+7]
      113 GETIMPORT                        R11 K10 [UDim2.new]
      115 LOADN                            R12 1
      116 LOADN                            R13 0
      117 LOADN                            R14 1
      118 LOADN                            R15 0
      119 CALL                             R11 4 1
      120 GETUPVAL                         R13 5
      121 GETTABLEKS                       R12 R13 K27 ["createElement"]
      123 GETUPVAL                         R14 6
      124 GETTABLEKS                       R13 R14 K33 ["View"]
      126 DUPTABLE                         R14 K35 [{"tag", "Size", "Position", "LayoutOrder"}]
      127 LOADK                            R15 K36 ["col align-x-left align-y-top"]
      128 SETTABLEKS                       R15 R14 K34 ["tag"]
      130 GETTABLEKS                       R15 R1 K26 ["Size"]
      132 SETTABLEKS                       R15 R14 K26 ["Size"]
      134 SETTABLEKS                       R6 R14 K7 ["Position"]
      136 SETTABLEKS                       R9 R14 K16 ["LayoutOrder"]
      138 DUPTABLE                         R15 K39 [{"ViewportWrapper", "Title"}]
      139 GETUPVAL                         R17 5
      140 GETTABLEKS                       R16 R17 K27 ["createElement"]
      142 GETUPVAL                         R18 6
      143 GETTABLEKS                       R17 R18 K33 ["View"]
      145 DUPTABLE                         R18 K41 [{"tag", "LayoutOrder", "Size", "BackgroundColor3"}]
      146 LOADK                            R19 K42 ["shrink-0 radius-medium stroke-default"]
      147 SETTABLEKS                       R19 R18 K34 ["tag"]
      149 NAMECALL                         R19 R10 K43 ["getNextOrder"]
      151 CALL                             R19 1 1
      152 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      154 SETTABLEKS                       R11 R18 K26 ["Size"]
      156 GETTABLEKS                       R20 R3 K44 ["thumbnailPreview"]
      158 GETTABLEKS                       R19 R20 K45 ["background"]
      160 SETTABLEKS                       R19 R18 K40 ["BackgroundColor3"]
      162 GETTABLEKS                       R21 R0 K46 ["state"]
      164 GETTABLEKS                       R20 R21 K47 ["shouldShow"]
      166 JUMPIFNOT                        R20 ; [+32]
      167 DUPTABLE                         R19 K49 [{"Viewport"}]
      168 GETUPVAL                         R21 5
      169 GETTABLEKS                       R20 R21 K27 ["createElement"]
      171 LOADK                            R21 K50 ["ViewportFrame"]
      172 DUPTABLE                         R22 K52 [{"ref", "Size", "BackgroundColor3", "BackgroundTransparency"}]
      173 GETTABLEKS                       R23 R0 K53 ["viewportRef"]
      175 SETTABLEKS                       R23 R22 K51 ["ref"]
      177 GETIMPORT                        R23 K10 [UDim2.new]
      179 LOADN                            R24 1
      180 LOADN                            R25 0
      181 LOADN                            R26 1
      182 LOADN                            R27 0
      183 CALL                             R23 4 1
      184 SETTABLEKS                       R23 R22 K26 ["Size"]
      186 GETTABLEKS                       R24 R3 K44 ["thumbnailPreview"]
      188 GETTABLEKS                       R23 R24 K45 ["background"]
      190 SETTABLEKS                       R23 R22 K40 ["BackgroundColor3"]
      192 LOADN                            R23 1
      193 SETTABLEKS                       R23 R22 K28 ["BackgroundTransparency"]
      195 CALL                             R20 2 1
      196 SETTABLEKS                       R20 R19 K48 ["Viewport"]
      198 JUMP                             ; [+67]
      199 DUPTABLE                         R19 K55 [{"Tooltip"}]
      200 GETUPVAL                         R21 5
      201 GETTABLEKS                       R20 R21 K27 ["createElement"]
      203 GETUPVAL                         R22 6
      204 GETTABLEKS                       R21 R22 K54 ["Tooltip"]
      206 DUPTABLE                         R22 K56 [{"title"}]
      207 LOADK                            R25 K57 ["AssetThumbnailPreview"]
      208 LOADK                            R26 K58 ["PreviewTooBig"]
      209 NAMECALL                         R23 R2 K59 ["getText"]
      211 CALL                             R23 3 1
      212 SETTABLEKS                       R23 R22 K3 ["title"]
      214 NEWTABLE                         R23 0 1
      216 GETUPVAL                         R25 5
      217 GETTABLEKS                       R24 R25 K27 ["createElement"]
      219 GETUPVAL                         R26 6
      220 GETTABLEKS                       R25 R26 K33 ["View"]
      222 DUPTABLE                         R26 K60 [{"tag"}]
      223 LOADK                            R27 K61 ["size-full align-x-center align-y-center"]
      224 SETTABLEKS                       R27 R26 K34 ["tag"]
      226 DUPTABLE                         R27 K62 [{"Image"}]
      227 GETUPVAL                         R29 5
      228 GETTABLEKS                       R28 R29 K27 ["createElement"]
      230 GETUPVAL                         R30 6
      231 GETTABLEKS                       R29 R30 K29 ["Image"]
      233 DUPTABLE                         R30 K64 [{"Image", "ImageColor3", "Size"}]
      234 GETUPVAL                         R32 7
      235 GETTABLEKS                       R31 R32 K65 ["WARNING_ICON"]
      237 SETTABLEKS                       R31 R30 K29 ["Image"]
      239 GETTABLEKS                       R32 R3 K44 ["thumbnailPreview"]
      241 GETTABLEKS                       R31 R32 K66 ["text"]
      243 SETTABLEKS                       R31 R30 K63 ["ImageColor3"]
      245 GETTABLEKS                       R32 R3 K44 ["thumbnailPreview"]
      247 GETTABLEKS                       R31 R32 K67 ["warningIconSize"]
      249 JUMPIF                           R31 ; [+5]
      250 GETIMPORT                        R31 K69 [UDim2.fromOffset]
      252 LOADN                            R32 96
      253 LOADN                            R33 96
      254 CALL                             R31 2 1
      255 SETTABLEKS                       R31 R30 K26 ["Size"]
      257 CALL                             R28 2 1
      258 SETTABLEKS                       R28 R27 K29 ["Image"]
      260 CALL                             R24 3 -1
      261 SETLIST                          R23 R24 -1 [1]
      263 CALL                             R20 3 1
      264 SETTABLEKS                       R20 R19 K54 ["Tooltip"]
      266 CALL                             R16 3 1
      267 SETTABLEKS                       R16 R15 K37 ["ViewportWrapper"]
      269 MOVE                             R16 R5
      270 JUMPIFNOT                        R16 ; [+27]
      271 GETUPVAL                         R17 5
      272 GETTABLEKS                       R16 R17 K27 ["createElement"]
      274 GETUPVAL                         R18 6
      275 GETTABLEKS                       R17 R18 K70 ["Text"]
      277 DUPTABLE                         R18 K71 [{"tag", "Text", "LayoutOrder", "Size"}]
      278 LOADK                            R19 K72 ["text-body-medium text-align-y-top text-align-x-center content-default shrink-0 padding-top-medium"]
      279 SETTABLEKS                       R19 R18 K34 ["tag"]
      281 SETTABLEKS                       R4 R18 K70 ["Text"]
      283 NAMECALL                         R19 R10 K43 ["getNextOrder"]
      285 CALL                             R19 1 1
      286 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      288 GETIMPORT                        R19 K10 [UDim2.new]
      290 LOADN                            R20 1
      291 LOADN                            R21 0
      292 LOADN                            R22 0
      293 MOVE                             R23 R7
      294 CALL                             R19 4 1
      295 SETTABLEKS                       R19 R18 K26 ["Size"]
      297 CALL                             R16 2 1
      298 SETTABLEKS                       R16 R15 K38 ["Title"]
      300 CALL                             R12 3 -1
      301 RETURN                           R12 -1
      302 GETUPVAL                         R11 1
      303 GETTABLEKS                       R10 R11 K27 ["createElement"]
      305 LOADK                            R11 K73 ["Frame"]
      306 DUPTABLE                         R12 K74 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      307 LOADN                            R13 1
      308 SETTABLEKS                       R13 R12 K28 ["BackgroundTransparency"]
      310 GETTABLEKS                       R13 R1 K26 ["Size"]
      312 SETTABLEKS                       R13 R12 K26 ["Size"]
      314 SETTABLEKS                       R6 R12 K7 ["Position"]
      316 SETTABLEKS                       R9 R12 K16 ["LayoutOrder"]
      318 DUPTABLE                         R13 K76 [{"PreviewFrame", "Title"}]
      319 GETUPVAL                         R15 1
      320 GETTABLEKS                       R14 R15 K27 ["createElement"]
      322 GETUPVAL                         R15 8
      323 DUPTABLE                         R16 K78 [{"BackgroundColor3", "BorderColor3", "Size"}]
      324 GETTABLEKS                       R18 R3 K44 ["thumbnailPreview"]
      326 GETTABLEKS                       R17 R18 K45 ["background"]
      328 SETTABLEKS                       R17 R16 K40 ["BackgroundColor3"]
      330 GETTABLEKS                       R18 R3 K44 ["thumbnailPreview"]
      332 GETTABLEKS                       R17 R18 K79 ["border"]
      334 SETTABLEKS                       R17 R16 K77 ["BorderColor3"]
      336 JUMPIFNOT                        R5 ; [+9]
      337 GETIMPORT                        R17 K10 [UDim2.new]
      339 LOADN                            R18 1
      340 LOADN                            R19 0
      341 LOADN                            R20 1
      342 ADD                              R22 R7 R8
      343 MINUS                            R21 R22
      344 CALL                             R17 4 1
      345 JUMPIF                           R17 ; [+7]
      346 GETIMPORT                        R17 K10 [UDim2.new]
      348 LOADN                            R18 1
      349 LOADN                            R19 0
      350 LOADN                            R20 1
      351 LOADN                            R21 0
      352 CALL                             R17 4 1
      353 SETTABLEKS                       R17 R16 K26 ["Size"]
      355 DUPTABLE                         R17 K49 [{"Viewport"}]
      356 GETTABLEKS                       R20 R0 K46 ["state"]
      358 GETTABLEKS                       R19 R20 K47 ["shouldShow"]
      360 JUMPIFNOT                        R19 ; [+32]
      361 GETUPVAL                         R19 1
      362 GETTABLEKS                       R18 R19 K27 ["createElement"]
      364 LOADK                            R19 K50 ["ViewportFrame"]
      365 NEWTABLE                         R20 4 0
      367 GETUPVAL                         R22 1
      368 GETTABLEKS                       R21 R22 K80 ["Ref"]
      370 GETTABLEKS                       R22 R0 K53 ["viewportRef"]
      372 SETTABLE                         R22 R20 R21
      373 GETIMPORT                        R21 K10 [UDim2.new]
      375 LOADN                            R22 1
      376 LOADN                            R23 0
      377 LOADN                            R24 1
      378 LOADN                            R25 0
      379 CALL                             R21 4 1
      380 SETTABLEKS                       R21 R20 K26 ["Size"]
      382 GETTABLEKS                       R22 R3 K44 ["thumbnailPreview"]
      384 GETTABLEKS                       R21 R22 K45 ["background"]
      386 SETTABLEKS                       R21 R20 K40 ["BackgroundColor3"]
      388 LOADN                            R21 1
      389 SETTABLEKS                       R21 R20 K28 ["BackgroundTransparency"]
      391 CALL                             R18 2 1
      392 JUMP                             ; [+62]
      393 GETUPVAL                         R19 1
      394 GETTABLEKS                       R18 R19 K27 ["createElement"]
      396 GETUPVAL                         R19 9
      397 NEWTABLE                         R20 0 0
      399 DUPTABLE                         R21 K81 [{"Image", "Tooltip"}]
      400 GETUPVAL                         R23 1
      401 GETTABLEKS                       R22 R23 K27 ["createElement"]
      403 GETUPVAL                         R23 10
      404 DUPTABLE                         R24 K83 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      405 GETIMPORT                        R25 K85 [Vector2.new]
      407 LOADK                            R26 K24 [0.5]
      408 LOADK                            R27 K24 [0.5]
      409 CALL                             R25 2 1
      410 SETTABLEKS                       R25 R24 K82 ["AnchorPoint"]
      412 GETUPVAL                         R26 7
      413 GETTABLEKS                       R25 R26 K65 ["WARNING_ICON"]
      415 SETTABLEKS                       R25 R24 K29 ["Image"]
      417 GETTABLEKS                       R26 R3 K44 ["thumbnailPreview"]
      419 GETTABLEKS                       R25 R26 K66 ["text"]
      421 SETTABLEKS                       R25 R24 K63 ["ImageColor3"]
      423 GETIMPORT                        R25 K87 [UDim2.fromScale]
      425 LOADK                            R26 K24 [0.5]
      426 LOADK                            R27 K24 [0.5]
      427 CALL                             R25 2 1
      428 SETTABLEKS                       R25 R24 K7 ["Position"]
      430 GETTABLEKS                       R26 R3 K44 ["thumbnailPreview"]
      432 GETTABLEKS                       R25 R26 K67 ["warningIconSize"]
      434 SETTABLEKS                       R25 R24 K26 ["Size"]
      436 CALL                             R22 2 1
      437 SETTABLEKS                       R22 R21 K29 ["Image"]
      439 GETUPVAL                         R23 1
      440 GETTABLEKS                       R22 R23 K27 ["createElement"]
      442 GETUPVAL                         R23 11
      443 DUPTABLE                         R24 K88 [{"Text"}]
      444 LOADK                            R27 K57 ["AssetThumbnailPreview"]
      445 LOADK                            R28 K58 ["PreviewTooBig"]
      446 NAMECALL                         R25 R2 K59 ["getText"]
      448 CALL                             R25 3 1
      449 SETTABLEKS                       R25 R24 K70 ["Text"]
      451 CALL                             R22 2 1
      452 SETTABLEKS                       R22 R21 K54 ["Tooltip"]
      454 CALL                             R18 3 1
      455 SETTABLEKS                       R18 R17 K48 ["Viewport"]
      457 CALL                             R14 3 1
      458 SETTABLEKS                       R14 R13 K75 ["PreviewFrame"]
      460 MOVE                             R14 R5
      461 JUMPIFNOT                        R14 ; [+45]
      462 GETUPVAL                         R15 1
      463 GETTABLEKS                       R14 R15 K27 ["createElement"]
      465 LOADK                            R15 K89 ["TextLabel"]
      466 DUPTABLE                         R16 K93 [{"Text", "Font", "TextSize", "TextColor3", "Position", "Size", "BackgroundTransparency"}]
      467 SETTABLEKS                       R4 R16 K70 ["Text"]
      469 GETUPVAL                         R18 12
      470 GETTABLEKS                       R17 R18 K94 ["FONT"]
      472 SETTABLEKS                       R17 R16 K90 ["Font"]
      474 GETUPVAL                         R18 12
      475 GETTABLEKS                       R17 R18 K95 ["FONT_SIZE_MEDIUM"]
      477 SETTABLEKS                       R17 R16 K91 ["TextSize"]
      479 GETTABLEKS                       R18 R3 K44 ["thumbnailPreview"]
      481 GETTABLEKS                       R17 R18 K66 ["text"]
      483 SETTABLEKS                       R17 R16 K92 ["TextColor3"]
      485 GETIMPORT                        R17 K10 [UDim2.new]
      487 LOADN                            R18 0
      488 LOADN                            R19 0
      489 LOADN                            R20 1
      490 MINUS                            R21 R7
      491 CALL                             R17 4 1
      492 SETTABLEKS                       R17 R16 K7 ["Position"]
      494 GETIMPORT                        R17 K10 [UDim2.new]
      496 LOADN                            R18 1
      497 LOADN                            R19 0
      498 LOADN                            R20 0
      499 MOVE                             R21 R7
      500 CALL                             R17 4 1
      501 SETTABLEKS                       R17 R16 K26 ["Size"]
      503 LOADN                            R17 1
      504 SETTABLEKS                       R17 R16 K28 ["BackgroundTransparency"]
      506 CALL                             R14 2 1
      507 SETTABLEKS                       R14 R13 K38 ["Title"]
      509 CALL                             R10 3 -1
      510 RETURN                           R10 -1

PROTO_22:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"instances"}]
        6 GETTABLEKS                       R3 R0 K0 ["instances"]
        8 SETTABLEKS                       R3 R2 K0 ["instances"]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Framework"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R1 K10 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R10 R0 K11 ["Src"]
       42 GETTABLEKS                       R9 R10 K12 ["Flags"]
       44 GETTABLEKS                       R8 R9 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R9 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R9 K14 ["Util"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R8 K15 ["Constants"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R8 K16 ["Images"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R8 K17 ["AssetConfigUtil"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R8 K18 ["AssetConfigConstants"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R14 R8 K19 ["Services"]
       75 CALL                             R13 1 1
       76 GETTABLEKS                       R14 R13 K20 ["GetService"]
       78 LOADK                            R15 K21 ["InsertService"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K23 [game]
       82 LOADK                            R17 K24 ["Players"]
       83 NAMECALL                         R15 R15 K20 ["GetService"]
       85 CALL                             R15 2 1
       86 GETIMPORT                        R16 K23 [game]
       88 LOADK                            R18 K25 ["CoreGui"]
       89 NAMECALL                         R16 R16 K20 ["GetService"]
       91 CALL                             R16 2 1
       92 GETTABLEKS                       R17 R5 K26 ["ContextServices"]
       94 GETTABLEKS                       R18 R17 K27 ["withContext"]
       96 GETTABLEKS                       R19 R17 K28 ["Stylizer"]
       98 GETTABLEKS                       R21 R5 K14 ["Util"]
      100 GETTABLEKS                       R20 R21 K29 ["LayoutOrderIterator"]
      102 GETTABLEKS                       R21 R5 K30 ["UI"]
      104 GETTABLEKS                       R22 R21 K31 ["Image"]
      106 GETTABLEKS                       R23 R21 K32 ["Pane"]
      108 GETTABLEKS                       R24 R21 K33 ["Tooltip"]
      110 GETTABLEKS                       R26 R0 K11 ["Src"]
      112 GETTABLEKS                       R25 R26 K34 ["Components"]
      114 GETIMPORT                        R26 K5 [require]
      116 GETTABLEKS                       R27 R25 K35 ["RoundFrame"]
      118 CALL                             R26 1 1
      119 GETIMPORT                        R27 K23 [game]
      121 LOADK                            R29 K36 ["AssetConfigDescendantsPreviewLimit"]
      122 LOADN                            R30 16
      123 NAMECALL                         R27 R27 K37 ["DefineFastInt"]
      125 CALL                             R27 3 1
      126 GETIMPORT                        R28 K5 [require]
      128 GETTABLEKS                       R31 R0 K11 ["Src"]
      130 GETTABLEKS                       R30 R31 K12 ["Flags"]
      132 GETTABLEKS                       R29 R30 K38 ["getFFlagEnableUploadingEmote"]
      134 CALL                             R28 1 1
      135 GETIMPORT                        R29 K5 [require]
      137 GETTABLEKS                       R32 R0 K11 ["Src"]
      139 GETTABLEKS                       R31 R32 K12 ["Flags"]
      141 GETTABLEKS                       R30 R31 K39 ["getFFlagEnableUploadingMakeup"]
      143 CALL                             R29 1 1
      144 GETIMPORT                        R30 K5 [require]
      146 GETTABLEKS                       R33 R0 K11 ["Src"]
      148 GETTABLEKS                       R32 R33 K12 ["Flags"]
      150 GETTABLEKS                       R31 R32 K40 ["getFStringDefaultDynamicHeadAssetId"]
      152 CALL                             R30 1 1
      153 MOVE                             R32 R29
      154 CALL                             R32 0 1
      155 JUMPIFNOT                        R32 ; [+5]
      156 GETIMPORT                        R31 K43 [Color3.fromHex]
      158 LOADK                            R32 K44 ["#A3A2A5"]
      159 CALL                             R31 1 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R31
      162 GETIMPORT                        R32 K5 [require]
      164 GETTABLEKS                       R33 R8 K45 ["AssetThumbnailPreviewUtil"]
      166 CALL                             R32 1 1
      167 GETIMPORT                        R33 K5 [require]
      169 GETTABLEKS                       R36 R0 K11 ["Src"]
      171 GETTABLEKS                       R35 R36 K34 ["Components"]
      173 GETTABLEKS                       R34 R35 K46 ["ImageWithDefault"]
      175 CALL                             R33 1 1
      176 MOVE                             R35 R29
      177 CALL                             R35 0 1
      178 JUMPIFNOT                        R35 ; [+2]
      179 LOADK                            R34 K47 ["PreloadedDefaultDynamicMakeupHead"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R34
      182 MOVE                             R36 R29
      183 CALL                             R36 0 1
      184 JUMPIFNOT                        R36 ; [+2]
      185 LOADB                            R35 0
      186 JUMP                             ; [+1]
      187 LOADNIL                          R35
      188 DUPCLOSURE                       R36 K48 [PROTO_1]
      189 CAPTURE                          VAL R29
      190 CAPTURE                          VAL R15
      191 NEWCLOSURE                       R37 P1
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R30
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R34
      196 CAPTURE                          REF R35
      197 CAPTURE                          VAL R36
      198 DUPCLOSURE                       R38 K49 [PROTO_4]
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R34
      201 CAPTURE                          VAL R16
      202 DUPCLOSURE                       R39 K50 [PROTO_5]
      203 DUPCLOSURE                       R40 K51 [PROTO_6]
      204 DUPCLOSURE                       R41 K52 [PROTO_7]
      205 MOVE                             R43 R29
      206 CALL                             R43 0 1
      207 JUMPIFNOT                        R43 ; [+2]
      208 LOADK                            R42 K53 ["rbxasset://models/Thumbnails/MakeupCameras.rbxm"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R42
      211 MOVE                             R44 R29
      212 CALL                             R44 0 1
      213 JUMPIFNOT                        R44 ; [+2]
      214 LOADK                            R43 K54 ["rbxasset://models/Thumbnails/MakeupLighting.rbxm"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R43
      217 MOVE                             R45 R29
      218 CALL                             R45 0 1
      219 JUMPIFNOT                        R45 ; [+23]
      220 NEWTABLE                         R44 8 0
      222 GETIMPORT                        R45 K58 [Enum.AssetType.EyebrowAccessory]
      224 LOADK                            R46 K59 ["Eyebrow"]
      225 SETTABLE                         R46 R44 R45
      226 GETIMPORT                        R45 K61 [Enum.AssetType.EyelashAccessory]
      228 LOADK                            R46 K62 ["Eyelash"]
      229 SETTABLE                         R46 R44 R45
      230 GETIMPORT                        R45 K64 [Enum.AssetType.EyeMakeup]
      232 LOADK                            R46 K65 ["Eyes"]
      233 SETTABLE                         R46 R44 R45
      234 GETIMPORT                        R45 K67 [Enum.AssetType.FaceMakeup]
      236 LOADK                            R46 K68 ["Face"]
      237 SETTABLE                         R46 R44 R45
      238 GETIMPORT                        R45 K70 [Enum.AssetType.LipMakeup]
      240 LOADK                            R46 K71 ["Lips"]
      241 SETTABLE                         R46 R44 R45
      242 JUMP                             ; [+1]
      243 LOADNIL                          R44
      244 MOVE                             R46 R29
      245 CALL                             R46 0 1
      246 JUMPIFNOT                        R46 ; [+2]
      247 LOADK                            R45 K68 ["Face"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R45
      250 DUPCLOSURE                       R46 K72 [PROTO_10]
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R45
      253 CAPTURE                          VAL R44
      254 CAPTURE                          VAL R14
      255 CAPTURE                          VAL R42
      256 CAPTURE                          VAL R43
      257 DUPCLOSURE                       R47 K73 [PROTO_11]
      258 CAPTURE                          VAL R29
      259 CAPTURE                          VAL R46
      260 CAPTURE                          VAL R36
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R31
      263 GETTABLEKS                       R48 R3 K74 ["PureComponent"]
      265 LOADK                            R50 K75 ["AssetThumbnailPreview"]
      266 NAMECALL                         R48 R48 K76 ["extend"]
      268 CALL                             R48 2 1
      269 DUPCLOSURE                       R49 K77 [PROTO_12]
      270 CAPTURE                          VAL R3
      271 SETTABLEKS                       R49 R48 K78 ["init"]
      273 DUPCLOSURE                       R49 K79 [PROTO_13]
      274 CAPTURE                          VAL R29
      275 CAPTURE                          VAL R37
      276 SETTABLEKS                       R49 R48 K80 ["didMount"]
      278 DUPCLOSURE                       R49 K81 [PROTO_14]
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R16
      282 SETTABLEKS                       R49 R48 K82 ["willUnmount"]
      284 DUPCLOSURE                       R49 K83 [PROTO_15]
      285 CAPTURE                          VAL R29
      286 CAPTURE                          VAL R31
      287 SETTABLEKS                       R49 R48 K84 ["didUpdate"]
      289 DUPCLOSURE                       R49 K85 [PROTO_18]
      290 CAPTURE                          VAL R28
      291 CAPTURE                          VAL R29
      292 CAPTURE                          VAL R12
      293 CAPTURE                          VAL R47
      294 CAPTURE                          VAL R30
      295 CAPTURE                          VAL R41
      296 CAPTURE                          VAL R39
      297 CAPTURE                          VAL R11
      298 CAPTURE                          VAL R32
      299 CAPTURE                          VAL R40
      300 SETTABLEKS                       R49 R48 K86 ["setView"]
      302 DUPCLOSURE                       R49 K87 [PROTO_19]
      303 SETTABLEKS                       R49 R48 K88 ["getName"]
      305 DUPCLOSURE                       R49 K89 [PROTO_20]
      306 CAPTURE                          VAL R27
      307 SETTABLEKS                       R49 R48 K90 ["shouldShowInstances"]
      309 DUPCLOSURE                       R49 K91 [PROTO_21]
      310 CAPTURE                          VAL R28
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R33
      313 CAPTURE                          VAL R7
      314 CAPTURE                          VAL R20
      315 CAPTURE                          VAL R2
      316 CAPTURE                          VAL R6
      317 CAPTURE                          VAL R10
      318 CAPTURE                          VAL R26
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R22
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R9
      323 SETTABLEKS                       R49 R48 K92 ["render"]
      325 DUPCLOSURE                       R49 K93 [PROTO_22]
      326 MOVE                             R50 R18
      327 DUPTABLE                         R51 K96 [{"Localization", "Stylizer", "Plugin"}]
      328 GETTABLEKS                       R52 R17 K94 ["Localization"]
      330 SETTABLEKS                       R52 R51 K94 ["Localization"]
      332 GETTABLEKS                       R52 R17 K28 ["Stylizer"]
      334 SETTABLEKS                       R52 R51 K28 ["Stylizer"]
      336 MOVE                             R53 R29
      337 CALL                             R53 0 1
      338 JUMPIFNOT                        R53 ; [+3]
      339 GETTABLEKS                       R52 R17 K95 ["Plugin"]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R52
      343 SETTABLEKS                       R52 R51 K95 ["Plugin"]
      345 CALL                             R50 1 1
      346 MOVE                             R51 R48
      347 CALL                             R50 1 1
      348 MOVE                             R48 R50
      349 GETTABLEKS                       R50 R4 K97 ["connect"]
      351 MOVE                             R51 R49
      352 CALL                             R50 1 1
      353 MOVE                             R51 R48
      354 CALL                             R50 1 -1
      355 CLOSEUPVALS                      R35
      356 RETURN                           R50 -1
