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
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K7 ["isAnimationBundleType"]
       21 GETTABLEKS                       R2 R0 K2 ["props"]
       23 GETTABLEKS                       R2 R2 K3 ["AssetType"]
       25 CALL                             R1 1 1
       26 JUMPIFNOT                        R1 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R1 R0 K2 ["props"]
       30 GETTABLEKS                       R1 R1 K3 ["AssetType"]
       32 JUMPIFNOT                        R1 ; [+14]
       33 GETUPVAL                         R1 2
       34 GETTABLEKS                       R1 R1 K8 ["MAKEUP_ASSET_TYPES"]
       36 JUMPIFNOT                        R1 ; [+10]
       37 GETIMPORT                        R1 K11 [table.find]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K8 ["MAKEUP_ASSET_TYPES"]
       42 GETTABLEKS                       R3 R0 K2 ["props"]
       44 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       46 CALL                             R1 2 1
       47 GETTABLEKS                       R2 R0 K12 ["viewportRef"]
       49 GETTABLEKS                       R2 R2 K13 ["current"]
       51 JUMPIFNOT                        R2 ; [+6]
       52 NAMECALL                         R3 R2 K14 ["ClearAllChildren"]
       54 CALL                             R3 1 0
       55 LOADNIL                          R3
       56 SETTABLEKS                       R3 R0 K15 ["makeupHeadRef"]
       58 JUMPIFNOT                        R1 ; [+10]
       59 GETIMPORT                        R3 K18 [task.spawn]
       61 NEWCLOSURE                       R4 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 CALL                             R3 1 0
       68 RETURN                           R0 0
       69 GETTABLEKS                       R3 R0 K2 ["props"]
       71 GETTABLEKS                       R3 R3 K19 ["instances"]
       73 JUMPIFNOT                        R3 ; [+127]
       74 NAMECALL                         R3 R2 K14 ["ClearAllChildren"]
       76 CALL                             R3 1 0
       77 GETIMPORT                        R3 K22 [Instance.new]
       79 LOADK                            R4 K23 ["Camera"]
       80 CALL                             R3 1 1
       81 LOADK                            R4 K23 ["Camera"]
       82 SETTABLEKS                       R4 R3 K24 ["Name"]
       84 SETTABLEKS                       R2 R3 K25 ["Parent"]
       86 SETTABLEKS                       R3 R2 K26 ["CurrentCamera"]
       88 GETIMPORT                        R4 K22 [Instance.new]
       90 LOADK                            R5 K27 ["Model"]
       91 CALL                             R4 1 1
       92 SETTABLEKS                       R2 R4 K25 ["Parent"]
       94 GETIMPORT                        R5 K29 [pairs]
       96 GETTABLEKS                       R6 R0 K2 ["props"]
       98 GETTABLEKS                       R6 R6 K19 ["instances"]
      100 CALL                             R5 1 3
      101 FORGPREP_NEXT                    R5
      102 LOADK                            R12 K30 ["LuaSourceContainer"]
      103 NAMECALL                         R10 R9 K31 ["IsA"]
      105 CALL                             R10 2 1
      106 JUMPIF                           R10 ; [+10]
      107 GETIMPORT                        R10 K33 [pcall]
      109 NEWCLOSURE                       R11 P1
      110 CAPTURE                          VAL R9
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U7
      115 CAPTURE                          VAL R4
      116 CALL                             R10 1 0
      117 FORGLOOP                         R5 2 ; [-16]
      119 GETUPVAL                         R5 8
      120 MOVE                             R6 R4
      121 CALL                             R5 1 0
      122 GETTABLEKS                       R7 R0 K2 ["props"]
      124 GETTABLEKS                       R7 R7 K19 ["instances"]
      126 LENGTH                           R6 R7
      127 JUMPIFNOTEQKN                    R6 K34 [1] ; [+7]
      129 GETTABLEKS                       R6 R0 K2 ["props"]
      131 GETTABLEKS                       R6 R6 K19 ["instances"]
      133 GETTABLEN                        R5 R6 1
      134 JUMPIF                           R5 ; [+1]
      135 MOVE                             R5 R4
      136 LOADK                            R8 K35 ["ThumbnailConfiguration"]
      137 NAMECALL                         R6 R5 K36 ["FindFirstChild"]
      139 CALL                             R6 2 1
      140 LOADK                            R9 K37 ["ThumbnailCamera"]
      141 NAMECALL                         R7 R5 K36 ["FindFirstChild"]
      143 CALL                             R7 2 1
      144 JUMPIFNOT                        R6 ; [+43]
      145 LOADK                            R10 K38 ["Configuration"]
      146 NAMECALL                         R8 R6 K31 ["IsA"]
      148 CALL                             R8 2 1
      149 JUMPIFNOT                        R8 ; [+38]
      150 LOADK                            R10 K39 ["ThumbnailCameraTarget"]
      151 NAMECALL                         R8 R6 K36 ["FindFirstChild"]
      153 CALL                             R8 2 1
      154 LOADK                            R11 K40 ["ThumbnailCameraValue"]
      155 NAMECALL                         R9 R6 K36 ["FindFirstChild"]
      157 CALL                             R9 2 1
      158 JUMPIFNOT                        R8 ; [+42]
      159 LOADK                            R12 K41 ["ObjectValue"]
      160 NAMECALL                         R10 R8 K31 ["IsA"]
      162 CALL                             R10 2 1
      163 JUMPIFNOT                        R10 ; [+37]
      164 JUMPIFNOT                        R9 ; [+36]
      165 LOADK                            R12 K42 ["CFrameValue"]
      166 NAMECALL                         R10 R9 K31 ["IsA"]
      168 CALL                             R10 2 1
      169 JUMPIFNOT                        R10 ; [+31]
      170 GETTABLEKS                       R10 R8 K43 ["Value"]
      172 JUMPIFNOT                        R10 ; [+28]
      173 LOADK                            R13 K44 ["BasePart"]
      174 NAMECALL                         R11 R10 K31 ["IsA"]
      176 CALL                             R11 2 1
      177 JUMPIFNOT                        R11 ; [+23]
      178 GETTABLEKS                       R11 R10 K45 ["CFrame"]
      180 GETTABLEKS                       R13 R9 K43 ["Value"]
      182 NAMECALL                         R11 R11 K46 ["toWorldSpace"]
      184 CALL                             R11 2 1
      185 SETTABLEKS                       R11 R3 K45 ["CFrame"]
      187 RETURN                           R0 0
      188 JUMPIFNOT                        R7 ; [+8]
      189 LOADK                            R10 K23 ["Camera"]
      190 NAMECALL                         R8 R7 K31 ["IsA"]
      192 CALL                             R8 2 1
      193 JUMPIFNOT                        R8 ; [+3]
      194 SETTABLEKS                       R7 R2 K26 ["CurrentCamera"]
      196 RETURN                           R0 0
      197 GETUPVAL                         R8 5
      198 MOVE                             R9 R3
      199 MOVE                             R10 R4
      200 CALL                             R8 2 0
      201 RETURN                           R0 0

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
       47 CALL                             R11 0 1
       48 JUMPIFNOT                        R11 ; [+6]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K21 ["isAnimationBundleType"]
       52 GETTABLEKS                       R12 R1 K17 ["AssetType"]
       54 CALL                             R11 1 1
       55 JUMPIF                           R10 ; [+1]
       56 JUMPIFNOT                        R11 ; [+57]
       57 LOADNIL                          R12
       58 LOADNIL                          R13
       59 GETTABLEKS                       R14 R1 K22 ["UploadSucceeded"]
       61 JUMPIFNOTEQKB                    R14 FALSE ; [+22]
       63 GETTABLEKS                       R14 R3 K23 ["dialog"]
       65 GETTABLEKS                       R12 R14 K24 ["alertIcon"]
       67 GETIMPORT                        R14 K10 [UDim2.new]
       69 LOADN                            R15 0
       70 LOADN                            R16 96
       71 LOADN                            R17 0
       72 LOADN                            R18 96
       73 CALL                             R14 4 1
       74 MOVE                             R13 R14
       75 GETIMPORT                        R14 K10 [UDim2.new]
       77 LOADK                            R15 K25 [0.5]
       78 LOADN                            R16 -48
       79 LOADK                            R17 K25 [0.5]
       80 LOADN                            R18 -264
       81 CALL                             R14 4 1
       82 MOVE                             R6 R14
       83 JUMP                             ; [+10]
       84 JUMPIFNOT                        R10 ; [+2]
       85 LOADK                            R12 K26 ["rbxasset://textures/StudioToolbox/DefaultEmoteAnimation.png"]
       86 JUMP                             ; [+5]
       87 GETUPVAL                         R14 2
       88 GETTABLEKS                       R14 R14 K27 ["getAvatarAnimationsBundleThumbnailUri"]
       90 CALL                             R14 0 1
       91 MOVE                             R12 R14
       92 GETTABLEKS                       R13 R1 K28 ["Size"]
       94 GETUPVAL                         R14 3
       95 GETTABLEKS                       R14 R14 K29 ["createElement"]
       97 GETUPVAL                         R15 4
       98 DUPTABLE                         R16 K35 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Image"], ["ScaleType"], ["defaultImage"] = ""}]
       99 SETTABLEKS                       R13 R16 K28 ["Size"]
      101 SETTABLEKS                       R6 R16 K7 ["Position"]
      103 SETTABLEKS                       R12 R16 K31 ["Image"]
      105 JUMPIFNOT                        R11 ; [+3]
      106 GETIMPORT                        R17 K37 [Enum.ScaleType.Fit]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R17
      110 SETTABLEKS                       R17 R16 K32 ["ScaleType"]
      112 CALL                             R14 2 -1
      113 RETURN                           R14 -1
      114 GETUPVAL                         R12 5
      115 GETTABLEKS                       R12 R12 K9 ["new"]
      117 CALL                             R12 0 1
      118 JUMPIFNOT                        R5 ; [+9]
      119 GETIMPORT                        R13 K10 [UDim2.new]
      121 LOADN                            R14 1
      122 LOADN                            R15 0
      123 LOADN                            R16 1
      124 ADD                              R18 R7 R8
      125 MINUS                            R17 R18
      126 CALL                             R13 4 1
      127 JUMPIF                           R13 ; [+7]
      128 GETIMPORT                        R13 K10 [UDim2.new]
      130 LOADN                            R14 1
      131 LOADN                            R15 0
      132 LOADN                            R16 1
      133 LOADN                            R17 0
      134 CALL                             R13 4 1
      135 GETUPVAL                         R14 6
      136 GETTABLEKS                       R14 R14 K29 ["createElement"]
      138 GETUPVAL                         R15 7
      139 GETTABLEKS                       R15 R15 K38 ["View"]
      141 DUPTABLE                         R16 K41 [{["tag"] = "col align-x-left align-y-top", ["Size"], ["Position"], ["LayoutOrder"]}]
      142 GETTABLEKS                       R17 R1 K28 ["Size"]
      144 SETTABLEKS                       R17 R16 K28 ["Size"]
      146 SETTABLEKS                       R6 R16 K7 ["Position"]
      148 SETTABLEKS                       R9 R16 K16 ["LayoutOrder"]
      150 DUPTABLE                         R17 K44 [{"ViewportWrapper", "Title"}]
      151 GETUPVAL                         R18 6
      152 GETTABLEKS                       R18 R18 K29 ["createElement"]
      154 GETUPVAL                         R19 7
      155 GETTABLEKS                       R19 R19 K38 ["View"]
      157 DUPTABLE                         R20 K47 [{["tag"] = "stroke-default radius-medium", ["LayoutOrder"], ["Size"], ["BackgroundColor3"]}]
      158 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      160 CALL                             R21 1 1
      161 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      163 SETTABLEKS                       R13 R20 K28 ["Size"]
      165 GETTABLEKS                       R21 R3 K49 ["thumbnailPreview"]
      167 GETTABLEKS                       R21 R21 K50 ["background"]
      169 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      171 GETTABLEKS                       R22 R0 K51 ["state"]
      173 GETTABLEKS                       R22 R22 K52 ["shouldShow"]
      175 JUMPIFNOT                        R22 ; [+29]
      176 DUPTABLE                         R21 K54 [{"Viewport"}]
      177 GETUPVAL                         R22 6
      178 GETTABLEKS                       R22 R22 K29 ["createElement"]
      180 LOADK                            R23 K55 ["ViewportFrame"]
      181 DUPTABLE                         R24 K57 [{["ref"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1}]
      182 GETTABLEKS                       R25 R0 K58 ["viewportRef"]
      184 SETTABLEKS                       R25 R24 K56 ["ref"]
      186 GETIMPORT                        R25 K10 [UDim2.new]
      188 LOADN                            R26 1
      189 LOADN                            R27 0
      190 LOADN                            R28 1
      191 LOADN                            R29 0
      192 CALL                             R25 4 1
      193 SETTABLEKS                       R25 R24 K28 ["Size"]
      195 GETTABLEKS                       R25 R3 K49 ["thumbnailPreview"]
      197 GETTABLEKS                       R25 R25 K50 ["background"]
      199 SETTABLEKS                       R25 R24 K46 ["BackgroundColor3"]
      201 CALL                             R22 2 1
      202 SETTABLEKS                       R22 R21 K53 ["Viewport"]
      204 JUMP                             ; [+64]
      205 DUPTABLE                         R21 K60 [{"Tooltip"}]
      206 GETUPVAL                         R22 6
      207 GETTABLEKS                       R22 R22 K29 ["createElement"]
      209 GETUPVAL                         R23 7
      210 GETTABLEKS                       R23 R23 K59 ["Tooltip"]
      212 DUPTABLE                         R24 K61 [{"title"}]
      213 LOADK                            R27 K62 ["AssetThumbnailPreview"]
      214 LOADK                            R28 K63 ["PreviewTooBig"]
      215 NAMECALL                         R25 R2 K64 ["getText"]
      217 CALL                             R25 3 1
      218 SETTABLEKS                       R25 R24 K3 ["title"]
      220 NEWTABLE                         R25 0 1
      222 GETUPVAL                         R26 6
      223 GETTABLEKS                       R26 R26 K29 ["createElement"]
      225 GETUPVAL                         R27 7
      226 GETTABLEKS                       R27 R27 K38 ["View"]
      228 DUPTABLE                         R28 K66 [{["tag"] = "align-x-center align-y-center size-full"}]
      229 DUPTABLE                         R29 K67 [{"Image"}]
      230 GETUPVAL                         R30 6
      231 GETTABLEKS                       R30 R30 K29 ["createElement"]
      233 GETUPVAL                         R31 7
      234 GETTABLEKS                       R31 R31 K31 ["Image"]
      236 DUPTABLE                         R32 K69 [{"Image", "ImageColor3", "Size"}]
      237 GETUPVAL                         R33 8
      238 GETTABLEKS                       R33 R33 K70 ["WARNING_ICON"]
      240 SETTABLEKS                       R33 R32 K31 ["Image"]
      242 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      244 GETTABLEKS                       R33 R33 K71 ["text"]
      246 SETTABLEKS                       R33 R32 K68 ["ImageColor3"]
      248 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      250 GETTABLEKS                       R33 R33 K72 ["warningIconSize"]
      252 JUMPIF                           R33 ; [+5]
      253 GETIMPORT                        R33 K74 [UDim2.fromOffset]
      255 LOADN                            R34 96
      256 LOADN                            R35 96
      257 CALL                             R33 2 1
      258 SETTABLEKS                       R33 R32 K28 ["Size"]
      260 CALL                             R30 2 1
      261 SETTABLEKS                       R30 R29 K31 ["Image"]
      263 CALL                             R26 3 -1
      264 SETLIST                          R25 R26 -1 [1]
      266 CALL                             R22 3 1
      267 SETTABLEKS                       R22 R21 K59 ["Tooltip"]
      269 CALL                             R18 3 1
      270 SETTABLEKS                       R18 R17 K42 ["ViewportWrapper"]
      272 MOVE                             R18 R5
      273 JUMPIFNOT                        R18 ; [+24]
      274 GETUPVAL                         R18 6
      275 GETTABLEKS                       R18 R18 K29 ["createElement"]
      277 GETUPVAL                         R19 7
      278 GETTABLEKS                       R19 R19 K75 ["Text"]
      280 DUPTABLE                         R20 K77 [{["tag"] = "padding-top-medium text-body-medium text-align-x-center text-align-y-top content-default", ["Text"], ["LayoutOrder"], ["Size"]}]
      281 SETTABLEKS                       R4 R20 K75 ["Text"]
      283 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      285 CALL                             R21 1 1
      286 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      288 GETIMPORT                        R21 K10 [UDim2.new]
      290 LOADN                            R22 1
      291 LOADN                            R23 0
      292 LOADN                            R24 0
      293 MOVE                             R25 R7
      294 CALL                             R21 4 1
      295 SETTABLEKS                       R21 R20 K28 ["Size"]
      297 CALL                             R18 2 1
      298 SETTABLEKS                       R18 R17 K43 ["Title"]
      300 CALL                             R14 3 -1
      301 RETURN                           R14 -1

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
      101 GETTABLEKS                       R21 R21 K30 ["getFFlagEnableUploadingAvatarAnimations"]
      103 CALL                             R20 1 1
      104 GETIMPORT                        R21 K5 [require]
      106 GETTABLEKS                       R22 R0 K11 ["Src"]
      108 GETTABLEKS                       R22 R22 K29 ["Flags"]
      110 GETTABLEKS                       R22 R22 K31 ["getFStringDefaultDynamicHeadAssetId"]
      112 CALL                             R21 1 1
      113 GETIMPORT                        R22 K5 [require]
      115 GETTABLEKS                       R23 R0 K11 ["Src"]
      117 GETTABLEKS                       R23 R23 K29 ["Flags"]
      119 GETTABLEKS                       R23 R23 K32 ["getFFlagFixPreloadedDynamicHeadNametag"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R0 K11 ["Src"]
      126 GETTABLEKS                       R24 R24 K29 ["Flags"]
      128 GETTABLEKS                       R24 R24 K33 ["getFFlagFixMakeupHeadPreloadLeak"]
      130 CALL                             R23 1 1
      131 GETIMPORT                        R24 K5 [require]
      133 GETTABLEKS                       R25 R7 K34 ["AvatarAnimationStudioToolboxTextures"]
      135 CALL                             R24 1 1
      136 GETIMPORT                        R25 K37 [Color3.fromHex]
      138 LOADK                            R26 K38 ["#A3A2A5"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K5 [require]
      142 GETTABLEKS                       R27 R7 K39 ["AssetThumbnailPreviewUtil"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K5 [require]
      147 GETTABLEKS                       R28 R0 K11 ["Src"]
      149 GETTABLEKS                       R28 R28 K40 ["Components"]
      151 GETTABLEKS                       R28 R28 K41 ["ImageWithDefault"]
      153 CALL                             R27 1 1
      154 LOADB                            R28 0
      155 LOADN                            R29 0
      156 DUPCLOSURE                       R30 K42 [PROTO_1]
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R22
      159 NEWCLOSURE                       R31 P1
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R14
      162 CAPTURE                          REF R28
      163 CAPTURE                          REF R29
      164 CAPTURE                          VAL R30
      165 CAPTURE                          VAL R23
      166 NEWCLOSURE                       R32 P2
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R14
      169 CAPTURE                          REF R29
      170 CAPTURE                          REF R28
      171 DUPCLOSURE                       R33 K43 [PROTO_5]
      172 DUPCLOSURE                       R34 K44 [PROTO_6]
      173 DUPCLOSURE                       R35 K45 [PROTO_7]
      174 NEWTABLE                         R36 8 0
      176 GETIMPORT                        R37 K49 [Enum.AssetType.EyebrowAccessory]
      178 LOADK                            R38 K50 ["Eyebrow"]
      179 SETTABLE                         R38 R36 R37
      180 GETIMPORT                        R37 K52 [Enum.AssetType.EyelashAccessory]
      182 LOADK                            R38 K53 ["Eyelash"]
      183 SETTABLE                         R38 R36 R37
      184 GETIMPORT                        R37 K55 [Enum.AssetType.EyeMakeup]
      186 LOADK                            R38 K56 ["Eyes"]
      187 SETTABLE                         R38 R36 R37
      188 GETIMPORT                        R37 K58 [Enum.AssetType.FaceMakeup]
      190 LOADK                            R38 K59 ["Face"]
      191 SETTABLE                         R38 R36 R37
      192 GETIMPORT                        R37 K61 [Enum.AssetType.LipMakeup]
      194 LOADK                            R38 K62 ["Lips"]
      195 SETTABLE                         R38 R36 R37
      196 DUPCLOSURE                       R37 K63 [PROTO_10]
      197 CAPTURE                          VAL R36
      198 CAPTURE                          VAL R12
      199 DUPCLOSURE                       R38 K64 [PROTO_11]
      200 CAPTURE                          VAL R37
      201 CAPTURE                          VAL R30
      202 CAPTURE                          VAL R9
      203 CAPTURE                          VAL R25
      204 GETTABLEKS                       R39 R3 K65 ["PureComponent"]
      206 LOADK                            R41 K66 ["AssetThumbnailPreview"]
      207 NAMECALL                         R39 R39 K67 ["extend"]
      209 CALL                             R39 2 1
      210 DUPCLOSURE                       R40 K68 [PROTO_12]
      211 CAPTURE                          VAL R3
      212 SETTABLEKS                       R40 R39 K69 ["init"]
      214 DUPCLOSURE                       R40 K70 [PROTO_13]
      215 CAPTURE                          VAL R31
      216 SETTABLEKS                       R40 R39 K71 ["didMount"]
      218 DUPCLOSURE                       R40 K72 [PROTO_14]
      219 CAPTURE                          VAL R32
      220 SETTABLEKS                       R40 R39 K73 ["willUnmount"]
      222 DUPCLOSURE                       R40 K74 [PROTO_15]
      223 CAPTURE                          VAL R25
      224 SETTABLEKS                       R40 R39 K75 ["didUpdate"]
      226 DUPCLOSURE                       R40 K76 [PROTO_18]
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R38
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R35
      233 CAPTURE                          VAL R33
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R34
      236 SETTABLEKS                       R40 R39 K77 ["setView"]
      238 DUPCLOSURE                       R40 K78 [PROTO_19]
      239 SETTABLEKS                       R40 R39 K79 ["getName"]
      241 DUPCLOSURE                       R40 K80 [PROTO_20]
      242 CAPTURE                          VAL R19
      243 SETTABLEKS                       R40 R39 K81 ["shouldShowInstances"]
      245 DUPCLOSURE                       R40 K82 [PROTO_21]
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R9
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R8
      255 SETTABLEKS                       R40 R39 K83 ["render"]
      257 DUPCLOSURE                       R40 K84 [PROTO_22]
      258 MOVE                             R41 R16
      259 DUPTABLE                         R42 K87 [{"Localization", "Stylizer", "Plugin"}]
      260 GETTABLEKS                       R43 R15 K85 ["Localization"]
      262 SETTABLEKS                       R43 R42 K85 ["Localization"]
      264 GETTABLEKS                       R43 R15 K25 ["Stylizer"]
      266 SETTABLEKS                       R43 R42 K25 ["Stylizer"]
      268 GETTABLEKS                       R43 R15 K86 ["Plugin"]
      270 SETTABLEKS                       R43 R42 K86 ["Plugin"]
      272 CALL                             R41 1 1
      273 MOVE                             R42 R39
      274 CALL                             R41 1 1
      275 MOVE                             R39 R41
      276 GETTABLEKS                       R41 R4 K88 ["connect"]
      278 MOVE                             R42 R40
      279 CALL                             R41 1 1
      280 MOVE                             R42 R39
      281 CALL                             R41 1 -1
      282 CLOSEUPVALS                      R28
      283 RETURN                           R41 -1
