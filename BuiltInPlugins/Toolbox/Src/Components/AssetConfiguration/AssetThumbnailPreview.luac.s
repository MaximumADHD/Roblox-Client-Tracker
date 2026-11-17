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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+1]
        8 JUMPIF                           R2 ; [+8]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["Failed to create character from HumanoidDescription:"]
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 RETURN                           R3 2
       17 LOADK                            R5 K5 ["Head"]
       18 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 NAMECALL                         R4 R2 K7 ["GetChildren"]
       23 CALL                             R4 1 3
       24 FORGPREP                         R4
       25 LOADK                            R11 K8 ["BasePart"]
       26 NAMECALL                         R9 R8 K9 ["IsA"]
       28 CALL                             R9 2 1
       29 JUMPIFNOT                        R9 ; [+7]
       30 GETTABLEKS                       R9 R8 K10 ["Name"]
       32 JUMPIFEQKS                       R9 K5 ["Head"] ; [+4]
       34 LOADN                            R9 1
       35 SETTABLEKS                       R9 R8 K11 ["Transparency"]
       37 FORGLOOP                         R4 2 ; [-13]
       39 LOADK                            R6 K12 ["Humanoid"]
       40 NAMECALL                         R4 R2 K13 ["FindFirstChildOfClass"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+4]
       44 GETIMPORT                        R5 K17 [Enum.HumanoidDisplayDistanceType.None]
       46 SETTABLEKS                       R5 R4 K18 ["DisplayDistanceType"]
       48 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R2 4
        8 JUMPIFEQ                         R1 R2 ; [+6]
       10 JUMPIFNOT                        R0 ; [+3]
       11 NAMECALL                         R1 R0 K0 ["Destroy"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 JUMPIFNOT                        R0 ; [+6]
       16 LOADK                            R1 K1 ["PreloadedDefaultDynamicMakeupHead"]
       17 SETTABLEKS                       R1 R0 K2 ["Name"]
       19 GETUPVAL                         R1 5
       20 SETTABLEKS                       R1 R0 K3 ["Parent"]
       22 LOADB                            R1 0
       23 SETUPVAL                         R1 6
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 -1
        2 FASTCALL                         TONUMBER ; [+2]
        3 GETIMPORT                        R0 K1 [tonumber]
        5 CALL                             R0 -1 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 LOADK                            R3 K3 ["PreloadedDefaultDynamicMakeupHead"]
       12 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 GETUPVAL                         R2 2
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 LOADB                            R2 1
       20 SETUPVAL                         R2 2
       21 GETUPVAL                         R2 3
       22 ADDK                             R2 R2 K5 [1]
       23 SETUPVAL                         R2 3
       24 GETUPVAL                         R2 3
       25 GETIMPORT                        R3 K8 [task.spawn]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["PreloadedDefaultDynamicMakeupHead"]
        5 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 NAMECALL                         R1 R0 K2 ["Destroy"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 ADDK                             R0 R0 K3 [1]
       15 SETUPVAL                         R0 2
       16 LOADB                            R0 0
       17 SETUPVAL                         R0 3
       18 GETUPVAL                         R0 1
       19 NAMECALL                         R0 R0 K4 ["GetChildren"]
       21 CALL                             R0 1 3
       22 FORGPREP                         R0
       23 GETTABLEKS                       R5 R4 K5 ["Name"]
       25 JUMPIFNOTEQKS                    R5 K0 ["PreloadedDefaultDynamicMakeupHead"] ; [+4]
       27 NAMECALL                         R5 R4 K2 ["Destroy"]
       29 CALL                             R5 1 0
       30 FORGLOOP                         R0 2 ; [-8]
       32 RETURN                           R0 0

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
        7 NAMECALL                         R4 R1 K3 ["GetExtentsSize"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R4 R4 K4 ["magnitude"]
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
       28 GETTABLEKS                       R10 R0 K11 ["CFrame"]
       30 GETTABLEKS                       R10 R10 K12 ["p"]
       32 SUB                              R8 R9 R10
       33 GETTABLEKS                       R9 R2 K12 ["p"]
       35 ADD                              R7 R8 R9
       36 GETTABLEKS                       R10 R0 K11 ["CFrame"]
       38 GETTABLEKS                       R10 R10 K12 ["p"]
       40 GETTABLEKS                       R11 R2 K12 ["p"]
       42 SUB                              R9 R10 R11
       43 GETTABLEKS                       R9 R9 K13 ["unit"]
       45 MUL                              R8 R9 R5
       46 ADD                              R6 R7 R8
       47 SETTABLEKS                       R6 R0 K11 ["CFrame"]
       49 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["rbxasset://models/Thumbnails/MakeupCameras.rbxm"]
        2 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        4 CALL                             R0 2 1
        5 LOADK                            R3 K2 ["Folder"]
        6 NAMECALL                         R1 R0 K3 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+25]
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+10]
       15 LOADK                            R4 K5 ["Camera"]
       16 NAMECALL                         R2 R1 K3 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+5]
       20 NAMECALL                         R2 R1 K6 ["Clone"]
       22 CALL                             R2 1 1
       23 SETUPVAL                         R2 2
       24 RETURN                           R0 0
       25 LOADK                            R4 K5 ["Camera"]
       26 LOADB                            R5 1
       27 NAMECALL                         R2 R0 K7 ["FindFirstChildWhichIsA"]
       29 CALL                             R2 3 1
       30 JUMPIFNOT                        R2 ; [+4]
       31 NAMECALL                         R3 R2 K6 ["Clone"]
       33 CALL                             R3 1 1
       34 SETUPVAL                         R3 2
       35 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["rbxasset://models/Thumbnails/MakeupLighting.rbxm"]
        2 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K2 ["Clone"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["Parent"]
       11 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R2 K0 ["Face"]
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R1
        6 ORK                              R2 R3 K0 ["Face"]
        7 LOADNIL                          R3
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          REF R2
       11 CAPTURE                          REF R3
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R4 K2 [pcall]
       15 CALL                             R4 1 2
       16 JUMPIF                           R4 ; [+5]
       17 GETIMPORT                        R6 K4 [warn]
       19 LOADK                            R7 K5 ["Failed to load MakeupCameras.rbxm:"]
       20 MOVE                             R8 R5
       21 CALL                             R6 2 0
       22 MOVE                             R6 R3
       23 GETIMPORT                        R7 K8 [Instance.new]
       25 LOADK                            R8 K9 ["Camera"]
       26 CALL                             R7 1 1
       27 MOVE                             R3 R7
       28 LOADK                            R7 K9 ["Camera"]
       29 SETTABLEKS                       R7 R3 K10 ["Name"]
       31 GETIMPORT                        R7 K14 [Enum.CameraType.Scriptable]
       33 SETTABLEKS                       R7 R3 K12 ["CameraType"]
       35 JUMPIFNOT                        R6 ; [+9]
       36 GETTABLEKS                       R7 R6 K15 ["CFrame"]
       38 SETTABLEKS                       R7 R3 K15 ["CFrame"]
       40 GETTABLEKS                       R7 R6 K16 ["FieldOfView"]
       42 SETTABLEKS                       R7 R3 K16 ["FieldOfView"]
       44 JUMP                             ; [+4]
       45 GETIMPORT                        R7 K4 [warn]
       47 LOADK                            R8 K17 ["Using fallback camera for makeup preview"]
       48 CALL                             R7 1 0
       49 SETTABLEKS                       R0 R3 K18 ["Parent"]
       51 SETTABLEKS                       R3 R0 K19 ["CurrentCamera"]
       53 NEWCLOSURE                       R8 P1
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R0
       56 FASTPCALL                        pcall 1 ; [+2]
       57 GETIMPORT                        R7 K2 [pcall]
       59 CALL                             R7 1 2
       60 JUMPIF                           R7 ; [+5]
       61 GETIMPORT                        R9 K4 [warn]
       63 LOADK                            R10 K20 ["Failed to load MakeupLighting.rbxm:"]
       64 MOVE                             R11 R8
       65 CALL                             R9 2 0
       66 CLOSEUPVALS                      R2
       67 RETURN                           R3 1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOT                        R0 ; [+1]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R7 R0 K0 ["ClearAllChildren"]
        6 CALL                             R7 1 0
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R0
        9 MOVE                             R9 R5
       10 CALL                             R7 2 1
       11 JUMPIF                           R7 ; [+5]
       12 GETIMPORT                        R8 K2 [warn]
       14 LOADK                            R9 K3 ["Failed to set up camera for makeup preview"]
       15 CALL                             R8 1 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R8 K6 [Instance.new]
       19 LOADK                            R9 K7 ["WorldModel"]
       20 CALL                             R8 1 1
       21 LOADK                            R9 K8 ["Thumbnail"]
       22 SETTABLEKS                       R9 R8 K9 ["Name"]
       24 SETTABLEKS                       R0 R8 K10 ["Parent"]
       26 GETUPVAL                         R9 1
       27 MOVE                             R10 R1
       28 CALL                             R9 1 2
       29 JUMPIFNOT                        R9 ; [+1]
       30 JUMPIF                           R10 ; [+5]
       31 GETIMPORT                        R11 K2 [warn]
       33 LOADK                            R12 K11 ["Failed to find head on character"]
       34 CALL                             R11 1 0
       35 RETURN                           R0 0
       36 LOADK                            R11 K12 ["RenderRig"]
       37 SETTABLEKS                       R11 R9 K9 ["Name"]
       39 SETTABLEKS                       R8 R9 K10 ["Parent"]
       41 GETTABLEKS                       R11 R10 K13 ["CFrame"]
       43 NAMECALL                         R12 R9 K14 ["GetPivot"]
       45 CALL                             R12 1 1
       46 MOVE                             R15 R11
       47 NAMECALL                         R13 R12 K15 ["ToObjectSpace"]
       49 CALL                             R13 2 1
       50 NAMECALL                         R16 R13 K16 ["Inverse"]
       52 CALL                             R16 1 -1
       53 NAMECALL                         R14 R9 K17 ["PivotTo"]
       55 CALL                             R14 -1 0
       56 GETTABLEKS                       R14 R10 K13 ["CFrame"]
       58 SETTABLEKS                       R14 R7 K18 ["Focus"]
       60 MOVE                             R14 R4
       61 JUMPIF                           R14 ; [+8]
       62 JUMPIFNOT                        R6 ; [+6]
       63 GETUPVAL                         R14 2
       64 GETTABLEKS                       R14 R14 K19 ["getThumbnailSkinColor"]
       66 MOVE                             R15 R6
       67 CALL                             R14 1 1
       68 JUMPIF                           R14 ; [+1]
       69 GETUPVAL                         R14 3
       70 JUMPIFNOT                        R14 ; [+2]
       71 SETTABLEKS                       R14 R10 K20 ["Color"]
       73 JUMPIFNOT                        R3 ; [+41]
       74 LENGTH                           R15 R3
       75 LOADN                            R16 0
       76 JUMPIFNOTLT                      R16 R15 ; [+38]
       78 LOADK                            R17 K21 ["Humanoid"]
       79 NAMECALL                         R15 R9 K22 ["FindFirstChildOfClass"]
       81 CALL                             R15 2 1
       82 GETIMPORT                        R16 K24 [pairs]
       84 MOVE                             R17 R3
       85 CALL                             R16 1 3
       86 FORGPREP_NEXT                    R16
       87 LOADK                            R23 K25 ["LuaSourceContainer"]
       88 NAMECALL                         R21 R20 K26 ["IsA"]
       90 CALL                             R21 2 1
       91 JUMPIF                           R21 ; [+21]
       92 NAMECALL                         R21 R20 K27 ["Clone"]
       94 CALL                             R21 1 1
       95 LOADK                            R24 K28 ["Decal"]
       96 NAMECALL                         R22 R21 K26 ["IsA"]
       98 CALL                             R22 2 1
       99 JUMPIFNOT                        R22 ; [+3]
      100 SETTABLEKS                       R10 R21 K10 ["Parent"]
      102 JUMP                             ; [+10]
      103 LOADK                            R24 K29 ["Accessory"]
      104 NAMECALL                         R22 R21 K26 ["IsA"]
      106 CALL                             R22 2 1
      107 JUMPIFNOT                        R22 ; [+5]
      108 JUMPIFNOT                        R15 ; [+4]
      109 MOVE                             R24 R21
      110 NAMECALL                         R22 R15 K30 ["AddAccessory"]
      112 CALL                             R22 2 0
      113 FORGLOOP                         R16 2 ; [-27]
      115 RETURN                           R10 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
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
        1 CALL                             R1 0 0
        2 NAMECALL                         R1 R0 K0 ["setView"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["AssetType"]
        4 GETTABLEKS                       R5 R1 K1 ["AssetType"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R5 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R5 K2 ["selectedColor"]
       14 GETTABLEKS                       R6 R1 K2 ["selectedColor"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 JUMPIFNOT                        R4 ; [+15]
       21 JUMPIF                           R3 ; [+14]
       22 GETTABLEKS                       R5 R0 K3 ["makeupHeadRef"]
       24 JUMPIFNOT                        R5 ; [+11]
       25 GETTABLEKS                       R5 R0 K0 ["props"]
       27 GETTABLEKS                       R5 R5 K2 ["selectedColor"]
       29 JUMPIF                           R5 ; [+1]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R6 R0 K3 ["makeupHeadRef"]
       33 SETTABLEKS                       R5 R6 K4 ["Color"]
       35 RETURN                           R0 0
       36 JUMPIF                           R3 ; [+1]
       37 JUMPIFNOT                        R4 ; [+3]
       38 NAMECALL                         R5 R0 K5 ["setView"]
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Plugin"]
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
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["props"]
       26 GETTABLEKS                       R5 R5 K5 ["instances"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K0 ["props"]
       31 GETTABLEKS                       R6 R6 K6 ["selectedColor"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K0 ["props"]
       36 GETTABLEKS                       R7 R7 K7 ["AssetType"]
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
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["isUGCBundleType"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["AssetType"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+15]
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K4 ["removeAllUGCBUndleUnknownMeshParts"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K2 ["props"]
       24 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K2 ["props"]
       29 GETTABLEKS                       R4 R4 K5 ["AllowedBundleTypeSettings"]
       31 CALL                             R1 3 0
       32 GETUPVAL                         R1 5
       33 SETTABLEKS                       R1 R0 K6 ["Parent"]
       35 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["shouldShow"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["isTextDocumentAsset"]
       12 GETTABLEKS                       R2 R0 K3 ["props"]
       14 GETTABLEKS                       R2 R2 K4 ["AssetType"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R1 R0 K3 ["props"]
       21 GETTABLEKS                       R1 R1 K4 ["AssetType"]
       23 GETIMPORT                        R2 K7 [Enum.AssetType.EmoteAnimation]
       25 JUMPIFNOTEQ                      R1 R2 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K8 ["isAnimationBundleType"]
       31 GETTABLEKS                       R2 R0 K3 ["props"]
       33 GETTABLEKS                       R2 R2 K4 ["AssetType"]
       35 CALL                             R1 1 1
       36 JUMPIFNOT                        R1 ; [+1]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R1 R0 K3 ["props"]
       40 GETTABLEKS                       R1 R1 K4 ["AssetType"]
       42 JUMPIFNOT                        R1 ; [+14]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K9 ["MAKEUP_ASSET_TYPES"]
       46 JUMPIFNOT                        R1 ; [+10]
       47 GETIMPORT                        R1 K12 [table.find]
       49 GETUPVAL                         R2 2
       50 GETTABLEKS                       R2 R2 K9 ["MAKEUP_ASSET_TYPES"]
       52 GETTABLEKS                       R3 R0 K3 ["props"]
       54 GETTABLEKS                       R3 R3 K4 ["AssetType"]
       56 CALL                             R1 2 1
       57 GETTABLEKS                       R2 R0 K13 ["viewportRef"]
       59 GETTABLEKS                       R2 R2 K14 ["current"]
       61 JUMPIFNOT                        R2 ; [+6]
       62 NAMECALL                         R3 R2 K15 ["ClearAllChildren"]
       64 CALL                             R3 1 0
       65 LOADNIL                          R3
       66 SETTABLEKS                       R3 R0 K16 ["makeupHeadRef"]
       68 JUMPIFNOT                        R1 ; [+10]
       69 GETIMPORT                        R3 K19 [task.spawn]
       71 NEWCLOSURE                       R4 P0
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          UPVAL U5
       77 CALL                             R3 1 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R3 R0 K3 ["props"]
       81 GETTABLEKS                       R3 R3 K20 ["instances"]
       83 JUMPIFNOT                        R3 ; [+128]
       84 NAMECALL                         R3 R2 K15 ["ClearAllChildren"]
       86 CALL                             R3 1 0
       87 GETIMPORT                        R3 K23 [Instance.new]
       89 LOADK                            R4 K24 ["Camera"]
       90 CALL                             R3 1 1
       91 LOADK                            R4 K24 ["Camera"]
       92 SETTABLEKS                       R4 R3 K25 ["Name"]
       94 SETTABLEKS                       R2 R3 K26 ["Parent"]
       96 SETTABLEKS                       R3 R2 K27 ["CurrentCamera"]
       98 GETIMPORT                        R4 K23 [Instance.new]
      100 LOADK                            R5 K28 ["Model"]
      101 CALL                             R4 1 1
      102 SETTABLEKS                       R2 R4 K26 ["Parent"]
      104 GETIMPORT                        R5 K30 [pairs]
      106 GETTABLEKS                       R6 R0 K3 ["props"]
      108 GETTABLEKS                       R6 R6 K20 ["instances"]
      110 CALL                             R5 1 3
      111 FORGPREP_NEXT                    R5
      112 LOADK                            R12 K31 ["LuaSourceContainer"]
      113 NAMECALL                         R10 R9 K32 ["IsA"]
      115 CALL                             R10 2 1
      116 JUMPIF                           R10 ; [+11]
      117 NEWCLOSURE                       R11 P1
      118 CAPTURE                          VAL R9
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U1
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          VAL R4
      124 FASTPCALL                        pcall 1 ; [+2]
      125 GETIMPORT                        R10 K34 [pcall]
      127 CALL                             R10 1 0
      128 FORGLOOP                         R5 2 ; [-17]
      130 GETUPVAL                         R5 8
      131 MOVE                             R6 R4
      132 CALL                             R5 1 0
      133 GETTABLEKS                       R7 R0 K3 ["props"]
      135 GETTABLEKS                       R7 R7 K20 ["instances"]
      137 LENGTH                           R6 R7
      138 JUMPIFNOTEQKN                    R6 K35 [1] ; [+7]
      140 GETTABLEKS                       R6 R0 K3 ["props"]
      142 GETTABLEKS                       R6 R6 K20 ["instances"]
      144 GETTABLEN                        R5 R6 1
      145 JUMPIF                           R5 ; [+1]
      146 MOVE                             R5 R4
      147 LOADK                            R8 K36 ["ThumbnailConfiguration"]
      148 NAMECALL                         R6 R5 K37 ["FindFirstChild"]
      150 CALL                             R6 2 1
      151 LOADK                            R9 K38 ["ThumbnailCamera"]
      152 NAMECALL                         R7 R5 K37 ["FindFirstChild"]
      154 CALL                             R7 2 1
      155 JUMPIFNOT                        R6 ; [+43]
      156 LOADK                            R10 K39 ["Configuration"]
      157 NAMECALL                         R8 R6 K32 ["IsA"]
      159 CALL                             R8 2 1
      160 JUMPIFNOT                        R8 ; [+38]
      161 LOADK                            R10 K40 ["ThumbnailCameraTarget"]
      162 NAMECALL                         R8 R6 K37 ["FindFirstChild"]
      164 CALL                             R8 2 1
      165 LOADK                            R11 K41 ["ThumbnailCameraValue"]
      166 NAMECALL                         R9 R6 K37 ["FindFirstChild"]
      168 CALL                             R9 2 1
      169 JUMPIFNOT                        R8 ; [+42]
      170 LOADK                            R12 K42 ["ObjectValue"]
      171 NAMECALL                         R10 R8 K32 ["IsA"]
      173 CALL                             R10 2 1
      174 JUMPIFNOT                        R10 ; [+37]
      175 JUMPIFNOT                        R9 ; [+36]
      176 LOADK                            R12 K43 ["CFrameValue"]
      177 NAMECALL                         R10 R9 K32 ["IsA"]
      179 CALL                             R10 2 1
      180 JUMPIFNOT                        R10 ; [+31]
      181 GETTABLEKS                       R10 R8 K44 ["Value"]
      183 JUMPIFNOT                        R10 ; [+28]
      184 LOADK                            R13 K45 ["BasePart"]
      185 NAMECALL                         R11 R10 K32 ["IsA"]
      187 CALL                             R11 2 1
      188 JUMPIFNOT                        R11 ; [+23]
      189 GETTABLEKS                       R11 R10 K46 ["CFrame"]
      191 GETTABLEKS                       R13 R9 K44 ["Value"]
      193 NAMECALL                         R11 R11 K47 ["toWorldSpace"]
      195 CALL                             R11 2 1
      196 SETTABLEKS                       R11 R3 K46 ["CFrame"]
      198 RETURN                           R0 0
      199 JUMPIFNOT                        R7 ; [+8]
      200 LOADK                            R10 K24 ["Camera"]
      201 NAMECALL                         R8 R7 K32 ["IsA"]
      203 CALL                             R8 2 1
      204 JUMPIFNOT                        R8 ; [+3]
      205 SETTABLEKS                       R7 R2 K27 ["CurrentCamera"]
      207 RETURN                           R0 0
      208 GETUPVAL                         R8 5
      209 MOVE                             R9 R3
      210 MOVE                             R10 R4
      211 CALL                             R8 2 0
      212 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["instances"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["instances"]
        9 LENGTH                           R1 R2
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+9]
       13 GETTABLEKS                       R2 R0 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K1 ["instances"]
       17 GETTABLEN                        R1 R2 1
       18 GETTABLEKS                       R1 R1 K2 ["Name"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K3 [""]
       22 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["instances"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 GETTABLEKS                       R2 R0 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K1 ["instances"]
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
       38 GETTABLEKS                       R11 R1 K17 ["AssetType"]
       40 GETIMPORT                        R12 K20 [Enum.AssetType.EmoteAnimation]
       42 JUMPIFEQ                         R11 R12 ; [+2]
       44 LOADB                            R10 0 +1
       45 LOADB                            R10 1
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K21 ["isAnimationBundleType"]
       49 GETTABLEKS                       R12 R1 K17 ["AssetType"]
       51 CALL                             R11 1 1
       52 JUMPIF                           R10 ; [+1]
       53 JUMPIFNOT                        R11 ; [+57]
       54 LOADNIL                          R12
       55 LOADNIL                          R13
       56 GETTABLEKS                       R14 R1 K22 ["UploadSucceeded"]
       58 JUMPIFNOTEQKB                    R14 FALSE ; [+22]
       60 GETTABLEKS                       R14 R3 K23 ["dialog"]
       62 GETTABLEKS                       R12 R14 K24 ["alertIcon"]
       64 GETIMPORT                        R14 K10 [UDim2.new]
       66 LOADN                            R15 0
       67 LOADN                            R16 96
       68 LOADN                            R17 0
       69 LOADN                            R18 96
       70 CALL                             R14 4 1
       71 MOVE                             R13 R14
       72 GETIMPORT                        R14 K10 [UDim2.new]
       74 LOADK                            R15 K25 [0.5]
       75 LOADN                            R16 -48
       76 LOADK                            R17 K25 [0.5]
       77 LOADN                            R18 -264
       78 CALL                             R14 4 1
       79 MOVE                             R6 R14
       80 JUMP                             ; [+10]
       81 JUMPIFNOT                        R10 ; [+2]
       82 LOADK                            R12 K26 ["rbxasset://textures/StudioToolbox/DefaultEmoteAnimation.png"]
       83 JUMP                             ; [+5]
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R14 R14 K27 ["getAvatarAnimationsBundleThumbnailUri"]
       87 CALL                             R14 0 1
       88 MOVE                             R12 R14
       89 GETTABLEKS                       R13 R1 K28 ["Size"]
       91 GETUPVAL                         R14 2
       92 GETTABLEKS                       R14 R14 K29 ["createElement"]
       94 GETUPVAL                         R15 3
       95 DUPTABLE                         R16 K35 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Image"], ["ScaleType"], ["defaultImage"] = ""}]
       96 SETTABLEKS                       R13 R16 K28 ["Size"]
       98 SETTABLEKS                       R6 R16 K7 ["Position"]
      100 SETTABLEKS                       R12 R16 K31 ["Image"]
      102 JUMPIFNOT                        R11 ; [+3]
      103 GETIMPORT                        R17 K37 [Enum.ScaleType.Fit]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R17
      107 SETTABLEKS                       R17 R16 K32 ["ScaleType"]
      109 CALL                             R14 2 -1
      110 RETURN                           R14 -1
      111 GETUPVAL                         R12 4
      112 GETTABLEKS                       R12 R12 K9 ["new"]
      114 CALL                             R12 0 1
      115 JUMPIFNOT                        R5 ; [+9]
      116 GETIMPORT                        R13 K10 [UDim2.new]
      118 LOADN                            R14 1
      119 LOADN                            R15 0
      120 LOADN                            R16 1
      121 ADD                              R18 R7 R8
      122 MINUS                            R17 R18
      123 CALL                             R13 4 1
      124 JUMPIF                           R13 ; [+7]
      125 GETIMPORT                        R13 K10 [UDim2.new]
      127 LOADN                            R14 1
      128 LOADN                            R15 0
      129 LOADN                            R16 1
      130 LOADN                            R17 0
      131 CALL                             R13 4 1
      132 GETUPVAL                         R14 5
      133 GETTABLEKS                       R14 R14 K29 ["createElement"]
      135 GETUPVAL                         R15 6
      136 GETTABLEKS                       R15 R15 K38 ["View"]
      138 DUPTABLE                         R16 K41 [{["tag"] = "col align-x-left align-y-top", ["Size"], ["Position"], ["LayoutOrder"]}]
      139 GETTABLEKS                       R17 R1 K28 ["Size"]
      141 SETTABLEKS                       R17 R16 K28 ["Size"]
      143 SETTABLEKS                       R6 R16 K7 ["Position"]
      145 SETTABLEKS                       R9 R16 K16 ["LayoutOrder"]
      147 DUPTABLE                         R17 K44 [{"ViewportWrapper", "Title"}]
      148 GETUPVAL                         R18 5
      149 GETTABLEKS                       R18 R18 K29 ["createElement"]
      151 GETUPVAL                         R19 6
      152 GETTABLEKS                       R19 R19 K38 ["View"]
      154 DUPTABLE                         R20 K47 [{["tag"] = "stroke-default radius-medium", ["LayoutOrder"], ["Size"], ["BackgroundColor3"]}]
      155 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      160 SETTABLEKS                       R13 R20 K28 ["Size"]
      162 GETTABLEKS                       R21 R3 K49 ["thumbnailPreview"]
      164 GETTABLEKS                       R21 R21 K50 ["background"]
      166 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      168 GETUPVAL                         R22 7
      169 CALL                             R22 0 1
      170 JUMPIFNOT                        R22 ; [+16]
      171 GETUPVAL                         R22 0
      172 GETTABLEKS                       R22 R22 K51 ["isTextDocumentAsset"]
      174 GETTABLEKS                       R23 R1 K17 ["AssetType"]
      176 CALL                             R22 1 1
      177 JUMPIFNOT                        R22 ; [+9]
      178 DUPTABLE                         R21 K53 [{"TextDocumentIcon"}]
      179 GETUPVAL                         R22 5
      180 GETTABLEKS                       R22 R22 K29 ["createElement"]
      182 GETUPVAL                         R23 8
      183 CALL                             R22 1 1
      184 SETTABLEKS                       R22 R21 K52 ["TextDocumentIcon"]
      186 JUMP                             ; [+98]
      187 GETTABLEKS                       R22 R0 K54 ["state"]
      189 GETTABLEKS                       R22 R22 K55 ["shouldShow"]
      191 JUMPIFNOT                        R22 ; [+29]
      192 DUPTABLE                         R21 K57 [{"Viewport"}]
      193 GETUPVAL                         R22 5
      194 GETTABLEKS                       R22 R22 K29 ["createElement"]
      196 LOADK                            R23 K58 ["ViewportFrame"]
      197 DUPTABLE                         R24 K60 [{["ref"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1}]
      198 GETTABLEKS                       R25 R0 K61 ["viewportRef"]
      200 SETTABLEKS                       R25 R24 K59 ["ref"]
      202 GETIMPORT                        R25 K10 [UDim2.new]
      204 LOADN                            R26 1
      205 LOADN                            R27 0
      206 LOADN                            R28 1
      207 LOADN                            R29 0
      208 CALL                             R25 4 1
      209 SETTABLEKS                       R25 R24 K28 ["Size"]
      211 GETTABLEKS                       R25 R3 K49 ["thumbnailPreview"]
      213 GETTABLEKS                       R25 R25 K50 ["background"]
      215 SETTABLEKS                       R25 R24 K46 ["BackgroundColor3"]
      217 CALL                             R22 2 1
      218 SETTABLEKS                       R22 R21 K56 ["Viewport"]
      220 JUMP                             ; [+64]
      221 DUPTABLE                         R21 K63 [{"Tooltip"}]
      222 GETUPVAL                         R22 5
      223 GETTABLEKS                       R22 R22 K29 ["createElement"]
      225 GETUPVAL                         R23 6
      226 GETTABLEKS                       R23 R23 K62 ["Tooltip"]
      228 DUPTABLE                         R24 K64 [{"title"}]
      229 LOADK                            R27 K65 ["AssetThumbnailPreview"]
      230 LOADK                            R28 K66 ["PreviewTooBig"]
      231 NAMECALL                         R25 R2 K67 ["getText"]
      233 CALL                             R25 3 1
      234 SETTABLEKS                       R25 R24 K3 ["title"]
      236 NEWTABLE                         R25 0 1
      238 GETUPVAL                         R26 5
      239 GETTABLEKS                       R26 R26 K29 ["createElement"]
      241 GETUPVAL                         R27 6
      242 GETTABLEKS                       R27 R27 K38 ["View"]
      244 DUPTABLE                         R28 K69 [{["tag"] = "align-x-center align-y-center size-full"}]
      245 DUPTABLE                         R29 K70 [{"Image"}]
      246 GETUPVAL                         R30 5
      247 GETTABLEKS                       R30 R30 K29 ["createElement"]
      249 GETUPVAL                         R31 6
      250 GETTABLEKS                       R31 R31 K31 ["Image"]
      252 DUPTABLE                         R32 K72 [{"Image", "ImageColor3", "Size"}]
      253 GETUPVAL                         R33 9
      254 GETTABLEKS                       R33 R33 K73 ["WARNING_ICON"]
      256 SETTABLEKS                       R33 R32 K31 ["Image"]
      258 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      260 GETTABLEKS                       R33 R33 K74 ["text"]
      262 SETTABLEKS                       R33 R32 K71 ["ImageColor3"]
      264 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      266 GETTABLEKS                       R33 R33 K75 ["warningIconSize"]
      268 JUMPIF                           R33 ; [+5]
      269 GETIMPORT                        R33 K77 [UDim2.fromOffset]
      271 LOADN                            R34 96
      272 LOADN                            R35 96
      273 CALL                             R33 2 1
      274 SETTABLEKS                       R33 R32 K28 ["Size"]
      276 CALL                             R30 2 1
      277 SETTABLEKS                       R30 R29 K31 ["Image"]
      279 CALL                             R26 3 -1
      280 SETLIST                          R25 R26 -1 [1]
      282 CALL                             R22 3 1
      283 SETTABLEKS                       R22 R21 K62 ["Tooltip"]
      285 CALL                             R18 3 1
      286 SETTABLEKS                       R18 R17 K42 ["ViewportWrapper"]
      288 MOVE                             R18 R5
      289 JUMPIFNOT                        R18 ; [+24]
      290 GETUPVAL                         R18 5
      291 GETTABLEKS                       R18 R18 K29 ["createElement"]
      293 GETUPVAL                         R19 6
      294 GETTABLEKS                       R19 R19 K78 ["Text"]
      296 DUPTABLE                         R20 K80 [{["tag"] = "padding-top-medium text-body-medium text-align-x-center text-align-y-top content-default", ["Text"], ["LayoutOrder"], ["Size"]}]
      297 SETTABLEKS                       R4 R20 K78 ["Text"]
      299 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      301 CALL                             R21 1 1
      302 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      304 GETIMPORT                        R21 K10 [UDim2.new]
      306 LOADN                            R22 1
      307 LOADN                            R23 0
      308 LOADN                            R24 0
      309 MOVE                             R25 R7
      310 CALL                             R21 4 1
      311 SETTABLEKS                       R21 R20 K28 ["Size"]
      313 CALL                             R18 2 1
      314 SETTABLEKS                       R18 R17 K43 ["Title"]
      316 CALL                             R14 3 -1
      317 RETURN                           R14 -1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Util"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R7 K13 ["Images"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R7 K14 ["AssetConfigUtil"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R7 K15 ["AssetConfigConstants"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R7 K16 ["Services"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R12 R11 K17 ["GetService"]
       64 LOADK                            R13 K18 ["InsertService"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K20 [game]
       68 LOADK                            R15 K21 ["Players"]
       69 NAMECALL                         R13 R13 K17 ["GetService"]
       71 CALL                             R13 2 1
       72 GETIMPORT                        R14 K20 [game]
       74 LOADK                            R16 K22 ["CoreGui"]
       75 NAMECALL                         R14 R14 K17 ["GetService"]
       77 CALL                             R14 2 1
       78 GETTABLEKS                       R15 R5 K23 ["ContextServices"]
       80 GETTABLEKS                       R16 R15 K24 ["withContext"]
       82 GETTABLEKS                       R17 R15 K25 ["Stylizer"]
       84 GETTABLEKS                       R18 R5 K12 ["Util"]
       86 GETTABLEKS                       R18 R18 K26 ["LayoutOrderIterator"]
       88 GETIMPORT                        R19 K20 [game]
       90 LOADK                            R21 K27 ["AssetConfigDescendantsPreviewLimit"]
       91 LOADN                            R22 10000
       92 NAMECALL                         R19 R19 K28 ["DefineFastInt"]
       94 CALL                             R19 3 1
       95 GETIMPORT                        R20 K5 [require]
       97 GETTABLEKS                       R21 R0 K11 ["Src"]
       99 GETTABLEKS                       R21 R21 K29 ["Flags"]
      101 GETTABLEKS                       R21 R21 K30 ["getFStringDefaultDynamicHeadAssetId"]
      103 CALL                             R20 1 1
      104 GETIMPORT                        R21 K5 [require]
      106 GETTABLEKS                       R22 R0 K11 ["Src"]
      108 GETTABLEKS                       R22 R22 K29 ["Flags"]
      110 GETTABLEKS                       R22 R22 K31 ["getFFlagFixMakeupHeadPreloadLeak"]
      112 CALL                             R21 1 1
      113 GETIMPORT                        R22 K5 [require]
      115 GETTABLEKS                       R23 R0 K11 ["Src"]
      117 GETTABLEKS                       R23 R23 K29 ["Flags"]
      119 GETTABLEKS                       R23 R23 K32 ["getEngineFeatureStudioTextDocumentUploadAsset"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R7 K33 ["AvatarAnimationStudioToolboxTextures"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K36 [Color3.fromHex]
      129 LOADK                            R25 K37 ["#A3A2A5"]
      130 CALL                             R24 1 1
      131 GETIMPORT                        R25 K5 [require]
      133 GETTABLEKS                       R26 R7 K38 ["AssetThumbnailPreviewUtil"]
      135 CALL                             R25 1 1
      136 GETIMPORT                        R26 K5 [require]
      138 GETTABLEKS                       R27 R0 K11 ["Src"]
      140 GETTABLEKS                       R27 R27 K39 ["Components"]
      142 GETTABLEKS                       R27 R27 K40 ["ImageWithDefault"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K5 [require]
      147 GETTABLEKS                       R28 R0 K11 ["Src"]
      149 GETTABLEKS                       R28 R28 K39 ["Components"]
      151 GETTABLEKS                       R28 R28 K41 ["AssetConfiguration"]
      153 GETTABLEKS                       R28 R28 K42 ["TextDocumentIcon"]
      155 CALL                             R27 1 1
      156 LOADB                            R28 0
      157 LOADN                            R29 0
      158 DUPCLOSURE                       R30 K43 [PROTO_1]
      159 CAPTURE                          VAL R13
      160 NEWCLOSURE                       R31 P1
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R14
      163 CAPTURE                          REF R28
      164 CAPTURE                          REF R29
      165 CAPTURE                          VAL R30
      166 CAPTURE                          VAL R21
      167 NEWCLOSURE                       R32 P2
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R14
      170 CAPTURE                          REF R29
      171 CAPTURE                          REF R28
      172 DUPCLOSURE                       R33 K44 [PROTO_5]
      173 DUPCLOSURE                       R34 K45 [PROTO_6]
      174 DUPCLOSURE                       R35 K46 [PROTO_7]
      175 NEWTABLE                         R36 8 0
      177 GETIMPORT                        R37 K50 [Enum.AssetType.EyebrowAccessory]
      179 LOADK                            R38 K51 ["Eyebrow"]
      180 SETTABLE                         R38 R36 R37
      181 GETIMPORT                        R37 K53 [Enum.AssetType.EyelashAccessory]
      183 LOADK                            R38 K54 ["Eyelash"]
      184 SETTABLE                         R38 R36 R37
      185 GETIMPORT                        R37 K56 [Enum.AssetType.EyeMakeup]
      187 LOADK                            R38 K57 ["Eyes"]
      188 SETTABLE                         R38 R36 R37
      189 GETIMPORT                        R37 K59 [Enum.AssetType.FaceMakeup]
      191 LOADK                            R38 K60 ["Face"]
      192 SETTABLE                         R38 R36 R37
      193 GETIMPORT                        R37 K62 [Enum.AssetType.LipMakeup]
      195 LOADK                            R38 K63 ["Lips"]
      196 SETTABLE                         R38 R36 R37
      197 DUPCLOSURE                       R37 K64 [PROTO_10]
      198 CAPTURE                          VAL R36
      199 CAPTURE                          VAL R12
      200 DUPCLOSURE                       R38 K65 [PROTO_11]
      201 CAPTURE                          VAL R37
      202 CAPTURE                          VAL R30
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R24
      205 GETTABLEKS                       R39 R3 K66 ["PureComponent"]
      207 LOADK                            R41 K67 ["AssetThumbnailPreview"]
      208 NAMECALL                         R39 R39 K68 ["extend"]
      210 CALL                             R39 2 1
      211 DUPCLOSURE                       R40 K69 [PROTO_12]
      212 CAPTURE                          VAL R3
      213 SETTABLEKS                       R40 R39 K70 ["init"]
      215 DUPCLOSURE                       R40 K71 [PROTO_13]
      216 CAPTURE                          VAL R31
      217 SETTABLEKS                       R40 R39 K72 ["didMount"]
      219 DUPCLOSURE                       R40 K73 [PROTO_14]
      220 CAPTURE                          VAL R32
      221 SETTABLEKS                       R40 R39 K74 ["willUnmount"]
      223 DUPCLOSURE                       R40 K75 [PROTO_15]
      224 CAPTURE                          VAL R24
      225 SETTABLEKS                       R40 R39 K76 ["didUpdate"]
      227 DUPCLOSURE                       R40 K77 [PROTO_18]
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R38
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R35
      234 CAPTURE                          VAL R33
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R34
      237 SETTABLEKS                       R40 R39 K78 ["setView"]
      239 DUPCLOSURE                       R40 K79 [PROTO_19]
      240 SETTABLEKS                       R40 R39 K80 ["getName"]
      242 DUPCLOSURE                       R40 K81 [PROTO_20]
      243 CAPTURE                          VAL R19
      244 SETTABLEKS                       R40 R39 K82 ["shouldShowInstances"]
      246 DUPCLOSURE                       R40 K83 [PROTO_21]
      247 CAPTURE                          VAL R9
      248 CAPTURE                          VAL R23
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R22
      255 CAPTURE                          VAL R27
      256 CAPTURE                          VAL R8
      257 SETTABLEKS                       R40 R39 K84 ["render"]
      259 DUPCLOSURE                       R40 K85 [PROTO_22]
      260 MOVE                             R41 R16
      261 DUPTABLE                         R42 K88 [{"Localization", "Stylizer", "Plugin"}]
      262 GETTABLEKS                       R43 R15 K86 ["Localization"]
      264 SETTABLEKS                       R43 R42 K86 ["Localization"]
      266 GETTABLEKS                       R43 R15 K25 ["Stylizer"]
      268 SETTABLEKS                       R43 R42 K25 ["Stylizer"]
      270 GETTABLEKS                       R43 R15 K87 ["Plugin"]
      272 SETTABLEKS                       R43 R42 K87 ["Plugin"]
      274 CALL                             R41 1 1
      275 MOVE                             R42 R39
      276 CALL                             R41 1 1
      277 MOVE                             R39 R41
      278 GETTABLEKS                       R41 R4 K89 ["connect"]
      280 MOVE                             R42 R40
      281 CALL                             R41 1 1
      282 MOVE                             R42 R39
      283 CALL                             R41 1 -1
      284 CLOSEUPVALS                      R28
      285 RETURN                           R41 -1
