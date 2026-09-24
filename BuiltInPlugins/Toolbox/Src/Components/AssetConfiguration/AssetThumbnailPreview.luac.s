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
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+8]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["Failed to create character from HumanoidDescription:"]
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 RETURN                           R3 2
       16 LOADK                            R5 K5 ["Head"]
       17 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       19 CALL                             R3 2 1
       20 NAMECALL                         R4 R2 K7 ["GetChildren"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADK                            R11 K8 ["BasePart"]
       25 NAMECALL                         R9 R8 K9 ["IsA"]
       27 CALL                             R9 2 1
       28 JUMPIFNOT                        R9 ; [+7]
       29 GETTABLEKS                       R9 R8 K10 ["Name"]
       31 JUMPIFEQKS                       R9 K5 ["Head"] ; [+4]
       33 LOADN                            R9 1
       34 SETTABLEKS                       R9 R8 K11 ["Transparency"]
       36 FORGLOOP                         R4 2 ; [-13]
       38 GETUPVAL                         R4 1
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+9]
       41 LOADK                            R6 K12 ["Humanoid"]
       42 NAMECALL                         R4 R2 K13 ["FindFirstChildOfClass"]
       44 CALL                             R4 2 1
       45 JUMPIFNOT                        R4 ; [+4]
       46 GETIMPORT                        R5 K17 [Enum.HumanoidDisplayDistanceType.None]
       48 SETTABLEKS                       R5 R4 K18 ["DisplayDistanceType"]
       50 RETURN                           R2 2

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
        8 GETIMPORT                        R4 K2 [pcall]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          REF R2
       13 CAPTURE                          REF R3
       14 CALL                             R4 1 2
       15 JUMPIF                           R4 ; [+5]
       16 GETIMPORT                        R6 K4 [warn]
       18 LOADK                            R7 K5 ["Failed to load MakeupCameras.rbxm:"]
       19 MOVE                             R8 R5
       20 CALL                             R6 2 0
       21 MOVE                             R6 R3
       22 GETIMPORT                        R7 K8 [Instance.new]
       24 LOADK                            R8 K9 ["Camera"]
       25 CALL                             R7 1 1
       26 MOVE                             R3 R7
       27 LOADK                            R7 K9 ["Camera"]
       28 SETTABLEKS                       R7 R3 K10 ["Name"]
       30 GETIMPORT                        R7 K14 [Enum.CameraType.Scriptable]
       32 SETTABLEKS                       R7 R3 K12 ["CameraType"]
       34 JUMPIFNOT                        R6 ; [+9]
       35 GETTABLEKS                       R7 R6 K15 ["CFrame"]
       37 SETTABLEKS                       R7 R3 K15 ["CFrame"]
       39 GETTABLEKS                       R7 R6 K16 ["FieldOfView"]
       41 SETTABLEKS                       R7 R3 K16 ["FieldOfView"]
       43 JUMP                             ; [+4]
       44 GETIMPORT                        R7 K4 [warn]
       46 LOADK                            R8 K17 ["Using fallback camera for makeup preview"]
       47 CALL                             R7 1 0
       48 SETTABLEKS                       R0 R3 K18 ["Parent"]
       50 SETTABLEKS                       R3 R0 K19 ["CurrentCamera"]
       52 GETIMPORT                        R7 K2 [pcall]
       54 NEWCLOSURE                       R8 P1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R0
       57 CALL                             R7 1 2
       58 JUMPIF                           R7 ; [+5]
       59 GETIMPORT                        R9 K4 [warn]
       61 LOADK                            R10 K20 ["Failed to load MakeupLighting.rbxm:"]
       62 MOVE                             R11 R8
       63 CALL                             R9 2 0
       64 CLOSEUPVALS                      R2
       65 RETURN                           R3 1

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
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["AssetType"]
       10 GETIMPORT                        R2 K6 [Enum.AssetType.EmoteAnimation]
       12 JUMPIFNOTEQ                      R1 R2 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K7 ["isAnimationBundleType"]
       18 GETTABLEKS                       R2 R0 K2 ["props"]
       20 GETTABLEKS                       R2 R2 K3 ["AssetType"]
       22 CALL                             R1 1 1
       23 JUMPIFNOT                        R1 ; [+1]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R1 R0 K2 ["props"]
       27 GETTABLEKS                       R1 R1 K3 ["AssetType"]
       29 JUMPIFNOT                        R1 ; [+14]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K8 ["MAKEUP_ASSET_TYPES"]
       33 JUMPIFNOT                        R1 ; [+10]
       34 GETIMPORT                        R1 K11 [table.find]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K8 ["MAKEUP_ASSET_TYPES"]
       39 GETTABLEKS                       R3 R0 K2 ["props"]
       41 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       43 CALL                             R1 2 1
       44 GETTABLEKS                       R2 R0 K12 ["viewportRef"]
       46 GETTABLEKS                       R2 R2 K13 ["current"]
       48 JUMPIFNOT                        R2 ; [+6]
       49 NAMECALL                         R3 R2 K14 ["ClearAllChildren"]
       51 CALL                             R3 1 0
       52 LOADNIL                          R3
       53 SETTABLEKS                       R3 R0 K15 ["makeupHeadRef"]
       55 JUMPIFNOT                        R1 ; [+10]
       56 GETIMPORT                        R3 K18 [task.spawn]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CALL                             R3 1 0
       65 RETURN                           R0 0
       66 GETTABLEKS                       R3 R0 K2 ["props"]
       68 GETTABLEKS                       R3 R3 K19 ["instances"]
       70 JUMPIFNOT                        R3 ; [+127]
       71 NAMECALL                         R3 R2 K14 ["ClearAllChildren"]
       73 CALL                             R3 1 0
       74 GETIMPORT                        R3 K22 [Instance.new]
       76 LOADK                            R4 K23 ["Camera"]
       77 CALL                             R3 1 1
       78 LOADK                            R4 K23 ["Camera"]
       79 SETTABLEKS                       R4 R3 K24 ["Name"]
       81 SETTABLEKS                       R2 R3 K25 ["Parent"]
       83 SETTABLEKS                       R3 R2 K26 ["CurrentCamera"]
       85 GETIMPORT                        R4 K22 [Instance.new]
       87 LOADK                            R5 K27 ["Model"]
       88 CALL                             R4 1 1
       89 SETTABLEKS                       R2 R4 K25 ["Parent"]
       91 GETIMPORT                        R5 K29 [pairs]
       93 GETTABLEKS                       R6 R0 K2 ["props"]
       95 GETTABLEKS                       R6 R6 K19 ["instances"]
       97 CALL                             R5 1 3
       98 FORGPREP_NEXT                    R5
       99 LOADK                            R12 K30 ["LuaSourceContainer"]
      100 NAMECALL                         R10 R9 K31 ["IsA"]
      102 CALL                             R10 2 1
      103 JUMPIF                           R10 ; [+10]
      104 GETIMPORT                        R10 K33 [pcall]
      106 NEWCLOSURE                       R11 P1
      107 CAPTURE                          VAL R9
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          UPVAL U0
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          VAL R4
      113 CALL                             R10 1 0
      114 FORGLOOP                         R5 2 ; [-16]
      116 GETUPVAL                         R5 7
      117 MOVE                             R6 R4
      118 CALL                             R5 1 0
      119 GETTABLEKS                       R7 R0 K2 ["props"]
      121 GETTABLEKS                       R7 R7 K19 ["instances"]
      123 LENGTH                           R6 R7
      124 JUMPIFNOTEQKN                    R6 K34 [1] ; [+7]
      126 GETTABLEKS                       R6 R0 K2 ["props"]
      128 GETTABLEKS                       R6 R6 K19 ["instances"]
      130 GETTABLEN                        R5 R6 1
      131 JUMPIF                           R5 ; [+1]
      132 MOVE                             R5 R4
      133 LOADK                            R8 K35 ["ThumbnailConfiguration"]
      134 NAMECALL                         R6 R5 K36 ["FindFirstChild"]
      136 CALL                             R6 2 1
      137 LOADK                            R9 K37 ["ThumbnailCamera"]
      138 NAMECALL                         R7 R5 K36 ["FindFirstChild"]
      140 CALL                             R7 2 1
      141 JUMPIFNOT                        R6 ; [+43]
      142 LOADK                            R10 K38 ["Configuration"]
      143 NAMECALL                         R8 R6 K31 ["IsA"]
      145 CALL                             R8 2 1
      146 JUMPIFNOT                        R8 ; [+38]
      147 LOADK                            R10 K39 ["ThumbnailCameraTarget"]
      148 NAMECALL                         R8 R6 K36 ["FindFirstChild"]
      150 CALL                             R8 2 1
      151 LOADK                            R11 K40 ["ThumbnailCameraValue"]
      152 NAMECALL                         R9 R6 K36 ["FindFirstChild"]
      154 CALL                             R9 2 1
      155 JUMPIFNOT                        R8 ; [+42]
      156 LOADK                            R12 K41 ["ObjectValue"]
      157 NAMECALL                         R10 R8 K31 ["IsA"]
      159 CALL                             R10 2 1
      160 JUMPIFNOT                        R10 ; [+37]
      161 JUMPIFNOT                        R9 ; [+36]
      162 LOADK                            R12 K42 ["CFrameValue"]
      163 NAMECALL                         R10 R9 K31 ["IsA"]
      165 CALL                             R10 2 1
      166 JUMPIFNOT                        R10 ; [+31]
      167 GETTABLEKS                       R10 R8 K43 ["Value"]
      169 JUMPIFNOT                        R10 ; [+28]
      170 LOADK                            R13 K44 ["BasePart"]
      171 NAMECALL                         R11 R10 K31 ["IsA"]
      173 CALL                             R11 2 1
      174 JUMPIFNOT                        R11 ; [+23]
      175 GETTABLEKS                       R11 R10 K45 ["CFrame"]
      177 GETTABLEKS                       R13 R9 K43 ["Value"]
      179 NAMECALL                         R11 R11 K46 ["toWorldSpace"]
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R3 K45 ["CFrame"]
      184 RETURN                           R0 0
      185 JUMPIFNOT                        R7 ; [+8]
      186 LOADK                            R10 K23 ["Camera"]
      187 NAMECALL                         R8 R7 K31 ["IsA"]
      189 CALL                             R8 2 1
      190 JUMPIFNOT                        R8 ; [+3]
      191 SETTABLEKS                       R7 R2 K26 ["CurrentCamera"]
      193 RETURN                           R0 0
      194 GETUPVAL                         R8 4
      195 MOVE                             R9 R3
      196 MOVE                             R10 R4
      197 CALL                             R8 2 0
      198 RETURN                           R0 0

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
      168 GETTABLEKS                       R22 R0 K51 ["state"]
      170 GETTABLEKS                       R22 R22 K52 ["shouldShow"]
      172 JUMPIFNOT                        R22 ; [+29]
      173 DUPTABLE                         R21 K54 [{"Viewport"}]
      174 GETUPVAL                         R22 5
      175 GETTABLEKS                       R22 R22 K29 ["createElement"]
      177 LOADK                            R23 K55 ["ViewportFrame"]
      178 DUPTABLE                         R24 K57 [{["ref"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1}]
      179 GETTABLEKS                       R25 R0 K58 ["viewportRef"]
      181 SETTABLEKS                       R25 R24 K56 ["ref"]
      183 GETIMPORT                        R25 K10 [UDim2.new]
      185 LOADN                            R26 1
      186 LOADN                            R27 0
      187 LOADN                            R28 1
      188 LOADN                            R29 0
      189 CALL                             R25 4 1
      190 SETTABLEKS                       R25 R24 K28 ["Size"]
      192 GETTABLEKS                       R25 R3 K49 ["thumbnailPreview"]
      194 GETTABLEKS                       R25 R25 K50 ["background"]
      196 SETTABLEKS                       R25 R24 K46 ["BackgroundColor3"]
      198 CALL                             R22 2 1
      199 SETTABLEKS                       R22 R21 K53 ["Viewport"]
      201 JUMP                             ; [+64]
      202 DUPTABLE                         R21 K60 [{"Tooltip"}]
      203 GETUPVAL                         R22 5
      204 GETTABLEKS                       R22 R22 K29 ["createElement"]
      206 GETUPVAL                         R23 6
      207 GETTABLEKS                       R23 R23 K59 ["Tooltip"]
      209 DUPTABLE                         R24 K61 [{"title"}]
      210 LOADK                            R27 K62 ["AssetThumbnailPreview"]
      211 LOADK                            R28 K63 ["PreviewTooBig"]
      212 NAMECALL                         R25 R2 K64 ["getText"]
      214 CALL                             R25 3 1
      215 SETTABLEKS                       R25 R24 K3 ["title"]
      217 NEWTABLE                         R25 0 1
      219 GETUPVAL                         R26 5
      220 GETTABLEKS                       R26 R26 K29 ["createElement"]
      222 GETUPVAL                         R27 6
      223 GETTABLEKS                       R27 R27 K38 ["View"]
      225 DUPTABLE                         R28 K66 [{["tag"] = "align-x-center align-y-center size-full"}]
      226 DUPTABLE                         R29 K67 [{"Image"}]
      227 GETUPVAL                         R30 5
      228 GETTABLEKS                       R30 R30 K29 ["createElement"]
      230 GETUPVAL                         R31 6
      231 GETTABLEKS                       R31 R31 K31 ["Image"]
      233 DUPTABLE                         R32 K69 [{"Image", "ImageColor3", "Size"}]
      234 GETUPVAL                         R33 7
      235 GETTABLEKS                       R33 R33 K70 ["WARNING_ICON"]
      237 SETTABLEKS                       R33 R32 K31 ["Image"]
      239 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      241 GETTABLEKS                       R33 R33 K71 ["text"]
      243 SETTABLEKS                       R33 R32 K68 ["ImageColor3"]
      245 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      247 GETTABLEKS                       R33 R33 K72 ["warningIconSize"]
      249 JUMPIF                           R33 ; [+5]
      250 GETIMPORT                        R33 K74 [UDim2.fromOffset]
      252 LOADN                            R34 96
      253 LOADN                            R35 96
      254 CALL                             R33 2 1
      255 SETTABLEKS                       R33 R32 K28 ["Size"]
      257 CALL                             R30 2 1
      258 SETTABLEKS                       R30 R29 K31 ["Image"]
      260 CALL                             R26 3 -1
      261 SETLIST                          R25 R26 -1 [1]
      263 CALL                             R22 3 1
      264 SETTABLEKS                       R22 R21 K59 ["Tooltip"]
      266 CALL                             R18 3 1
      267 SETTABLEKS                       R18 R17 K42 ["ViewportWrapper"]
      269 MOVE                             R18 R5
      270 JUMPIFNOT                        R18 ; [+24]
      271 GETUPVAL                         R18 5
      272 GETTABLEKS                       R18 R18 K29 ["createElement"]
      274 GETUPVAL                         R19 6
      275 GETTABLEKS                       R19 R19 K75 ["Text"]
      277 DUPTABLE                         R20 K77 [{["tag"] = "padding-top-medium text-body-medium text-align-x-center text-align-y-top content-default", ["Text"], ["LayoutOrder"], ["Size"]}]
      278 SETTABLEKS                       R4 R20 K75 ["Text"]
      280 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      282 CALL                             R21 1 1
      283 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      285 GETIMPORT                        R21 K10 [UDim2.new]
      287 LOADN                            R22 1
      288 LOADN                            R23 0
      289 LOADN                            R24 0
      290 MOVE                             R25 R7
      291 CALL                             R21 4 1
      292 SETTABLEKS                       R21 R20 K28 ["Size"]
      294 CALL                             R18 2 1
      295 SETTABLEKS                       R18 R17 K43 ["Title"]
      297 CALL                             R14 3 -1
      298 RETURN                           R14 -1

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
      110 GETTABLEKS                       R22 R22 K31 ["getFFlagFixPreloadedDynamicHeadNametag"]
      112 CALL                             R21 1 1
      113 GETIMPORT                        R22 K5 [require]
      115 GETTABLEKS                       R23 R0 K11 ["Src"]
      117 GETTABLEKS                       R23 R23 K29 ["Flags"]
      119 GETTABLEKS                       R23 R23 K32 ["getFFlagFixMakeupHeadPreloadLeak"]
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
      145 LOADB                            R27 0
      146 LOADN                            R28 0
      147 DUPCLOSURE                       R29 K41 [PROTO_1]
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R21
      150 NEWCLOSURE                       R30 P1
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R14
      153 CAPTURE                          REF R27
      154 CAPTURE                          REF R28
      155 CAPTURE                          VAL R29
      156 CAPTURE                          VAL R22
      157 NEWCLOSURE                       R31 P2
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R14
      160 CAPTURE                          REF R28
      161 CAPTURE                          REF R27
      162 DUPCLOSURE                       R32 K42 [PROTO_5]
      163 DUPCLOSURE                       R33 K43 [PROTO_6]
      164 DUPCLOSURE                       R34 K44 [PROTO_7]
      165 NEWTABLE                         R35 8 0
      167 GETIMPORT                        R36 K48 [Enum.AssetType.EyebrowAccessory]
      169 LOADK                            R37 K49 ["Eyebrow"]
      170 SETTABLE                         R37 R35 R36
      171 GETIMPORT                        R36 K51 [Enum.AssetType.EyelashAccessory]
      173 LOADK                            R37 K52 ["Eyelash"]
      174 SETTABLE                         R37 R35 R36
      175 GETIMPORT                        R36 K54 [Enum.AssetType.EyeMakeup]
      177 LOADK                            R37 K55 ["Eyes"]
      178 SETTABLE                         R37 R35 R36
      179 GETIMPORT                        R36 K57 [Enum.AssetType.FaceMakeup]
      181 LOADK                            R37 K58 ["Face"]
      182 SETTABLE                         R37 R35 R36
      183 GETIMPORT                        R36 K60 [Enum.AssetType.LipMakeup]
      185 LOADK                            R37 K61 ["Lips"]
      186 SETTABLE                         R37 R35 R36
      187 DUPCLOSURE                       R36 K62 [PROTO_10]
      188 CAPTURE                          VAL R35
      189 CAPTURE                          VAL R12
      190 DUPCLOSURE                       R37 K63 [PROTO_11]
      191 CAPTURE                          VAL R36
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R24
      195 GETTABLEKS                       R38 R3 K64 ["PureComponent"]
      197 LOADK                            R40 K65 ["AssetThumbnailPreview"]
      198 NAMECALL                         R38 R38 K66 ["extend"]
      200 CALL                             R38 2 1
      201 DUPCLOSURE                       R39 K67 [PROTO_12]
      202 CAPTURE                          VAL R3
      203 SETTABLEKS                       R39 R38 K68 ["init"]
      205 DUPCLOSURE                       R39 K69 [PROTO_13]
      206 CAPTURE                          VAL R30
      207 SETTABLEKS                       R39 R38 K70 ["didMount"]
      209 DUPCLOSURE                       R39 K71 [PROTO_14]
      210 CAPTURE                          VAL R31
      211 SETTABLEKS                       R39 R38 K72 ["willUnmount"]
      213 DUPCLOSURE                       R39 K73 [PROTO_15]
      214 CAPTURE                          VAL R24
      215 SETTABLEKS                       R39 R38 K74 ["didUpdate"]
      217 DUPCLOSURE                       R39 K75 [PROTO_18]
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R37
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R34
      223 CAPTURE                          VAL R32
      224 CAPTURE                          VAL R25
      225 CAPTURE                          VAL R33
      226 SETTABLEKS                       R39 R38 K76 ["setView"]
      228 DUPCLOSURE                       R39 K77 [PROTO_19]
      229 SETTABLEKS                       R39 R38 K78 ["getName"]
      231 DUPCLOSURE                       R39 K79 [PROTO_20]
      232 CAPTURE                          VAL R19
      233 SETTABLEKS                       R39 R38 K80 ["shouldShowInstances"]
      235 DUPCLOSURE                       R39 K81 [PROTO_21]
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R8
      244 SETTABLEKS                       R39 R38 K82 ["render"]
      246 DUPCLOSURE                       R39 K83 [PROTO_22]
      247 MOVE                             R40 R16
      248 DUPTABLE                         R41 K86 [{"Localization", "Stylizer", "Plugin"}]
      249 GETTABLEKS                       R42 R15 K84 ["Localization"]
      251 SETTABLEKS                       R42 R41 K84 ["Localization"]
      253 GETTABLEKS                       R42 R15 K25 ["Stylizer"]
      255 SETTABLEKS                       R42 R41 K25 ["Stylizer"]
      257 GETTABLEKS                       R42 R15 K85 ["Plugin"]
      259 SETTABLEKS                       R42 R41 K85 ["Plugin"]
      261 CALL                             R40 1 1
      262 MOVE                             R41 R38
      263 CALL                             R40 1 1
      264 MOVE                             R38 R40
      265 GETTABLEKS                       R40 R4 K87 ["connect"]
      267 MOVE                             R41 R39
      268 CALL                             R40 1 1
      269 MOVE                             R41 R38
      270 CALL                             R40 1 -1
      271 CLOSEUPVALS                      R27
      272 RETURN                           R40 -1
