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
       44 GETUPVAL                         R4 2
       45 CALL                             R4 0 1
       46 JUMPIFNOT                        R4 ; [+9]
       47 LOADK                            R6 K12 ["Humanoid"]
       48 NAMECALL                         R4 R2 K13 ["FindFirstChildOfClass"]
       50 CALL                             R4 2 1
       51 JUMPIFNOT                        R4 ; [+4]
       52 GETIMPORT                        R5 K17 [Enum.HumanoidDisplayDistanceType.None]
       54 SETTABLEKS                       R5 R4 K18 ["DisplayDistanceType"]
       56 RETURN                           R2 2

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
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R14 R14 K19 ["getThumbnailSkinColor"]
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
        3 GETTABLEKS                       R4 R0 K0 ["props"]
        5 GETTABLEKS                       R4 R4 K1 ["AssetType"]
        7 GETTABLEKS                       R5 R1 K1 ["AssetType"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R5 R0 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K2 ["selectedColor"]
       17 GETTABLEKS                       R6 R1 K2 ["selectedColor"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 JUMPIFNOT                        R4 ; [+15]
       24 JUMPIF                           R3 ; [+14]
       25 GETTABLEKS                       R5 R0 K3 ["makeupHeadRef"]
       27 JUMPIFNOT                        R5 ; [+11]
       28 GETTABLEKS                       R5 R0 K0 ["props"]
       30 GETTABLEKS                       R5 R5 K2 ["selectedColor"]
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
       45 GETTABLEKS                       R3 R0 K0 ["props"]
       47 GETTABLEKS                       R3 R3 K1 ["AssetType"]
       49 GETTABLEKS                       R4 R1 K1 ["AssetType"]
       51 JUMPIFEQ                         R3 R4 ; [+10]
       53 GETTABLEKS                       R3 R0 K0 ["props"]
       55 GETTABLEKS                       R3 R3 K1 ["AssetType"]
       57 JUMPIFEQKNIL                     R3 ; [+4]
       59 NAMECALL                         R3 R0 K5 ["setView"]
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

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
       28 GETUPVAL                         R1 2
       29 CALL                             R1 0 1
       30 JUMPIFNOT                        R1 ; [+19]
       31 GETTABLEKS                       R1 R0 K2 ["props"]
       33 GETTABLEKS                       R1 R1 K3 ["AssetType"]
       35 JUMPIFNOT                        R1 ; [+14]
       36 GETUPVAL                         R1 3
       37 GETTABLEKS                       R1 R1 K8 ["MAKEUP_ASSET_TYPES"]
       39 JUMPIFNOT                        R1 ; [+10]
       40 GETIMPORT                        R1 K11 [table.find]
       42 GETUPVAL                         R2 3
       43 GETTABLEKS                       R2 R2 K8 ["MAKEUP_ASSET_TYPES"]
       45 GETTABLEKS                       R3 R0 K2 ["props"]
       47 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       49 CALL                             R1 2 1
       50 GETTABLEKS                       R2 R0 K12 ["viewportRef"]
       52 GETTABLEKS                       R2 R2 K13 ["current"]
       54 GETUPVAL                         R3 2
       55 CALL                             R3 0 1
       56 JUMPIFNOT                        R3 ; [+7]
       57 JUMPIFNOT                        R2 ; [+6]
       58 NAMECALL                         R3 R2 K14 ["ClearAllChildren"]
       60 CALL                             R3 1 0
       61 LOADNIL                          R3
       62 SETTABLEKS                       R3 R0 K15 ["makeupHeadRef"]
       64 JUMPIFNOT                        R1 ; [+10]
       65 GETIMPORT                        R3 K18 [task.spawn]
       67 NEWCLOSURE                       R4 P0
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R2
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 CALL                             R3 1 0
       74 RETURN                           R0 0
       75 GETTABLEKS                       R3 R0 K2 ["props"]
       77 GETTABLEKS                       R3 R3 K19 ["instances"]
       79 JUMPIFNOT                        R3 ; [+127]
       80 NAMECALL                         R3 R2 K14 ["ClearAllChildren"]
       82 CALL                             R3 1 0
       83 GETIMPORT                        R3 K22 [Instance.new]
       85 LOADK                            R4 K23 ["Camera"]
       86 CALL                             R3 1 1
       87 LOADK                            R4 K23 ["Camera"]
       88 SETTABLEKS                       R4 R3 K24 ["Name"]
       90 SETTABLEKS                       R2 R3 K25 ["Parent"]
       92 SETTABLEKS                       R3 R2 K26 ["CurrentCamera"]
       94 GETIMPORT                        R4 K22 [Instance.new]
       96 LOADK                            R5 K27 ["Model"]
       97 CALL                             R4 1 1
       98 SETTABLEKS                       R2 R4 K25 ["Parent"]
      100 GETIMPORT                        R5 K29 [pairs]
      102 GETTABLEKS                       R6 R0 K2 ["props"]
      104 GETTABLEKS                       R6 R6 K19 ["instances"]
      106 CALL                             R5 1 3
      107 FORGPREP_NEXT                    R5
      108 LOADK                            R12 K30 ["LuaSourceContainer"]
      109 NAMECALL                         R10 R9 K31 ["IsA"]
      111 CALL                             R10 2 1
      112 JUMPIF                           R10 ; [+10]
      113 GETIMPORT                        R10 K33 [pcall]
      115 NEWCLOSURE                       R11 P1
      116 CAPTURE                          VAL R9
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          VAL R4
      122 CALL                             R10 1 0
      123 FORGLOOP                         R5 2 ; [-16]
      125 GETUPVAL                         R5 9
      126 MOVE                             R6 R4
      127 CALL                             R5 1 0
      128 GETTABLEKS                       R7 R0 K2 ["props"]
      130 GETTABLEKS                       R7 R7 K19 ["instances"]
      132 LENGTH                           R6 R7
      133 JUMPIFNOTEQKN                    R6 K34 [1] ; [+7]
      135 GETTABLEKS                       R6 R0 K2 ["props"]
      137 GETTABLEKS                       R6 R6 K19 ["instances"]
      139 GETTABLEN                        R5 R6 1
      140 JUMPIF                           R5 ; [+1]
      141 MOVE                             R5 R4
      142 LOADK                            R8 K35 ["ThumbnailConfiguration"]
      143 NAMECALL                         R6 R5 K36 ["FindFirstChild"]
      145 CALL                             R6 2 1
      146 LOADK                            R9 K37 ["ThumbnailCamera"]
      147 NAMECALL                         R7 R5 K36 ["FindFirstChild"]
      149 CALL                             R7 2 1
      150 JUMPIFNOT                        R6 ; [+43]
      151 LOADK                            R10 K38 ["Configuration"]
      152 NAMECALL                         R8 R6 K31 ["IsA"]
      154 CALL                             R8 2 1
      155 JUMPIFNOT                        R8 ; [+38]
      156 LOADK                            R10 K39 ["ThumbnailCameraTarget"]
      157 NAMECALL                         R8 R6 K36 ["FindFirstChild"]
      159 CALL                             R8 2 1
      160 LOADK                            R11 K40 ["ThumbnailCameraValue"]
      161 NAMECALL                         R9 R6 K36 ["FindFirstChild"]
      163 CALL                             R9 2 1
      164 JUMPIFNOT                        R8 ; [+42]
      165 LOADK                            R12 K41 ["ObjectValue"]
      166 NAMECALL                         R10 R8 K31 ["IsA"]
      168 CALL                             R10 2 1
      169 JUMPIFNOT                        R10 ; [+37]
      170 JUMPIFNOT                        R9 ; [+36]
      171 LOADK                            R12 K42 ["CFrameValue"]
      172 NAMECALL                         R10 R9 K31 ["IsA"]
      174 CALL                             R10 2 1
      175 JUMPIFNOT                        R10 ; [+31]
      176 GETTABLEKS                       R10 R8 K43 ["Value"]
      178 JUMPIFNOT                        R10 ; [+28]
      179 LOADK                            R13 K44 ["BasePart"]
      180 NAMECALL                         R11 R10 K31 ["IsA"]
      182 CALL                             R11 2 1
      183 JUMPIFNOT                        R11 ; [+23]
      184 GETTABLEKS                       R11 R10 K45 ["CFrame"]
      186 GETTABLEKS                       R13 R9 K43 ["Value"]
      188 NAMECALL                         R11 R11 K46 ["toWorldSpace"]
      190 CALL                             R11 2 1
      191 SETTABLEKS                       R11 R3 K45 ["CFrame"]
      193 RETURN                           R0 0
      194 JUMPIFNOT                        R7 ; [+8]
      195 LOADK                            R10 K23 ["Camera"]
      196 NAMECALL                         R8 R7 K31 ["IsA"]
      198 CALL                             R8 2 1
      199 JUMPIFNOT                        R8 ; [+3]
      200 SETTABLEKS                       R7 R2 K26 ["CurrentCamera"]
      202 RETURN                           R0 0
      203 GETUPVAL                         R8 6
      204 MOVE                             R9 R3
      205 MOVE                             R10 R4
      206 CALL                             R8 2 0
      207 RETURN                           R0 0

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
      115 CALL                             R12 0 1
      116 JUMPIFNOT                        R12 ; [+188]
      117 GETUPVAL                         R12 6
      118 GETTABLEKS                       R12 R12 K9 ["new"]
      120 CALL                             R12 0 1
      121 JUMPIFNOT                        R5 ; [+9]
      122 GETIMPORT                        R13 K10 [UDim2.new]
      124 LOADN                            R14 1
      125 LOADN                            R15 0
      126 LOADN                            R16 1
      127 ADD                              R18 R7 R8
      128 MINUS                            R17 R18
      129 CALL                             R13 4 1
      130 JUMPIF                           R13 ; [+7]
      131 GETIMPORT                        R13 K10 [UDim2.new]
      133 LOADN                            R14 1
      134 LOADN                            R15 0
      135 LOADN                            R16 1
      136 LOADN                            R17 0
      137 CALL                             R13 4 1
      138 GETUPVAL                         R14 7
      139 GETTABLEKS                       R14 R14 K29 ["createElement"]
      141 GETUPVAL                         R15 8
      142 GETTABLEKS                       R15 R15 K38 ["View"]
      144 DUPTABLE                         R16 K41 [{["tag"] = "col align-x-left align-y-top", ["Size"], ["Position"], ["LayoutOrder"]}]
      145 GETTABLEKS                       R17 R1 K28 ["Size"]
      147 SETTABLEKS                       R17 R16 K28 ["Size"]
      149 SETTABLEKS                       R6 R16 K7 ["Position"]
      151 SETTABLEKS                       R9 R16 K16 ["LayoutOrder"]
      153 DUPTABLE                         R17 K44 [{"ViewportWrapper", "Title"}]
      154 GETUPVAL                         R18 7
      155 GETTABLEKS                       R18 R18 K29 ["createElement"]
      157 GETUPVAL                         R19 8
      158 GETTABLEKS                       R19 R19 K38 ["View"]
      160 DUPTABLE                         R20 K47 [{["tag"] = "stroke-default radius-medium", ["LayoutOrder"], ["Size"], ["BackgroundColor3"]}]
      161 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      163 CALL                             R21 1 1
      164 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      166 SETTABLEKS                       R13 R20 K28 ["Size"]
      168 GETTABLEKS                       R21 R3 K49 ["thumbnailPreview"]
      170 GETTABLEKS                       R21 R21 K50 ["background"]
      172 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      174 GETTABLEKS                       R22 R0 K51 ["state"]
      176 GETTABLEKS                       R22 R22 K52 ["shouldShow"]
      178 JUMPIFNOT                        R22 ; [+29]
      179 DUPTABLE                         R21 K54 [{"Viewport"}]
      180 GETUPVAL                         R22 7
      181 GETTABLEKS                       R22 R22 K29 ["createElement"]
      183 LOADK                            R23 K55 ["ViewportFrame"]
      184 DUPTABLE                         R24 K57 [{["ref"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1}]
      185 GETTABLEKS                       R25 R0 K58 ["viewportRef"]
      187 SETTABLEKS                       R25 R24 K56 ["ref"]
      189 GETIMPORT                        R25 K10 [UDim2.new]
      191 LOADN                            R26 1
      192 LOADN                            R27 0
      193 LOADN                            R28 1
      194 LOADN                            R29 0
      195 CALL                             R25 4 1
      196 SETTABLEKS                       R25 R24 K28 ["Size"]
      198 GETTABLEKS                       R25 R3 K49 ["thumbnailPreview"]
      200 GETTABLEKS                       R25 R25 K50 ["background"]
      202 SETTABLEKS                       R25 R24 K46 ["BackgroundColor3"]
      204 CALL                             R22 2 1
      205 SETTABLEKS                       R22 R21 K53 ["Viewport"]
      207 JUMP                             ; [+64]
      208 DUPTABLE                         R21 K60 [{"Tooltip"}]
      209 GETUPVAL                         R22 7
      210 GETTABLEKS                       R22 R22 K29 ["createElement"]
      212 GETUPVAL                         R23 8
      213 GETTABLEKS                       R23 R23 K59 ["Tooltip"]
      215 DUPTABLE                         R24 K61 [{"title"}]
      216 LOADK                            R27 K62 ["AssetThumbnailPreview"]
      217 LOADK                            R28 K63 ["PreviewTooBig"]
      218 NAMECALL                         R25 R2 K64 ["getText"]
      220 CALL                             R25 3 1
      221 SETTABLEKS                       R25 R24 K3 ["title"]
      223 NEWTABLE                         R25 0 1
      225 GETUPVAL                         R26 7
      226 GETTABLEKS                       R26 R26 K29 ["createElement"]
      228 GETUPVAL                         R27 8
      229 GETTABLEKS                       R27 R27 K38 ["View"]
      231 DUPTABLE                         R28 K66 [{["tag"] = "align-x-center align-y-center size-full"}]
      232 DUPTABLE                         R29 K67 [{"Image"}]
      233 GETUPVAL                         R30 7
      234 GETTABLEKS                       R30 R30 K29 ["createElement"]
      236 GETUPVAL                         R31 8
      237 GETTABLEKS                       R31 R31 K31 ["Image"]
      239 DUPTABLE                         R32 K69 [{"Image", "ImageColor3", "Size"}]
      240 GETUPVAL                         R33 9
      241 GETTABLEKS                       R33 R33 K70 ["WARNING_ICON"]
      243 SETTABLEKS                       R33 R32 K31 ["Image"]
      245 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      247 GETTABLEKS                       R33 R33 K71 ["text"]
      249 SETTABLEKS                       R33 R32 K68 ["ImageColor3"]
      251 GETTABLEKS                       R33 R3 K49 ["thumbnailPreview"]
      253 GETTABLEKS                       R33 R33 K72 ["warningIconSize"]
      255 JUMPIF                           R33 ; [+5]
      256 GETIMPORT                        R33 K74 [UDim2.fromOffset]
      258 LOADN                            R34 96
      259 LOADN                            R35 96
      260 CALL                             R33 2 1
      261 SETTABLEKS                       R33 R32 K28 ["Size"]
      263 CALL                             R30 2 1
      264 SETTABLEKS                       R30 R29 K31 ["Image"]
      266 CALL                             R26 3 -1
      267 SETLIST                          R25 R26 -1 [1]
      269 CALL                             R22 3 1
      270 SETTABLEKS                       R22 R21 K59 ["Tooltip"]
      272 CALL                             R18 3 1
      273 SETTABLEKS                       R18 R17 K42 ["ViewportWrapper"]
      275 MOVE                             R18 R5
      276 JUMPIFNOT                        R18 ; [+24]
      277 GETUPVAL                         R18 7
      278 GETTABLEKS                       R18 R18 K29 ["createElement"]
      280 GETUPVAL                         R19 8
      281 GETTABLEKS                       R19 R19 K75 ["Text"]
      283 DUPTABLE                         R20 K77 [{["tag"] = "padding-top-medium text-body-medium text-align-x-center text-align-y-top content-default", ["Text"], ["LayoutOrder"], ["Size"]}]
      284 SETTABLEKS                       R4 R20 K75 ["Text"]
      286 NAMECALL                         R21 R12 K48 ["getNextOrder"]
      288 CALL                             R21 1 1
      289 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      291 GETIMPORT                        R21 K10 [UDim2.new]
      293 LOADN                            R22 1
      294 LOADN                            R23 0
      295 LOADN                            R24 0
      296 MOVE                             R25 R7
      297 CALL                             R21 4 1
      298 SETTABLEKS                       R21 R20 K28 ["Size"]
      300 CALL                             R18 2 1
      301 SETTABLEKS                       R18 R17 K43 ["Title"]
      303 CALL                             R14 3 -1
      304 RETURN                           R14 -1
      305 GETUPVAL                         R12 3
      306 GETTABLEKS                       R12 R12 K29 ["createElement"]
      308 LOADK                            R13 K78 ["Frame"]
      309 DUPTABLE                         R14 K79 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["LayoutOrder"]}]
      310 GETTABLEKS                       R15 R1 K28 ["Size"]
      312 SETTABLEKS                       R15 R14 K28 ["Size"]
      314 SETTABLEKS                       R6 R14 K7 ["Position"]
      316 SETTABLEKS                       R9 R14 K16 ["LayoutOrder"]
      318 DUPTABLE                         R15 K81 [{"PreviewFrame", "Title"}]
      319 GETUPVAL                         R16 3
      320 GETTABLEKS                       R16 R16 K29 ["createElement"]
      322 GETUPVAL                         R17 10
      323 DUPTABLE                         R18 K83 [{"BackgroundColor3", "BorderColor3", "Size"}]
      324 GETTABLEKS                       R19 R3 K49 ["thumbnailPreview"]
      326 GETTABLEKS                       R19 R19 K50 ["background"]
      328 SETTABLEKS                       R19 R18 K46 ["BackgroundColor3"]
      330 GETTABLEKS                       R19 R3 K49 ["thumbnailPreview"]
      332 GETTABLEKS                       R19 R19 K84 ["border"]
      334 SETTABLEKS                       R19 R18 K82 ["BorderColor3"]
      336 JUMPIFNOT                        R5 ; [+9]
      337 GETIMPORT                        R19 K10 [UDim2.new]
      339 LOADN                            R20 1
      340 LOADN                            R21 0
      341 LOADN                            R22 1
      342 ADD                              R24 R7 R8
      343 MINUS                            R23 R24
      344 CALL                             R19 4 1
      345 JUMPIF                           R19 ; [+7]
      346 GETIMPORT                        R19 K10 [UDim2.new]
      348 LOADN                            R20 1
      349 LOADN                            R21 0
      350 LOADN                            R22 1
      351 LOADN                            R23 0
      352 CALL                             R19 4 1
      353 SETTABLEKS                       R19 R18 K28 ["Size"]
      355 DUPTABLE                         R19 K54 [{"Viewport"}]
      356 GETTABLEKS                       R21 R0 K51 ["state"]
      358 GETTABLEKS                       R21 R21 K52 ["shouldShow"]
      360 JUMPIFNOT                        R21 ; [+32]
      361 GETUPVAL                         R20 3
      362 GETTABLEKS                       R20 R20 K29 ["createElement"]
      364 LOADK                            R21 K55 ["ViewportFrame"]
      365 NEWTABLE                         R22 4 0
      367 GETUPVAL                         R23 3
      368 GETTABLEKS                       R23 R23 K85 ["Ref"]
      370 GETTABLEKS                       R24 R0 K58 ["viewportRef"]
      372 SETTABLE                         R24 R22 R23
      373 GETIMPORT                        R23 K10 [UDim2.new]
      375 LOADN                            R24 1
      376 LOADN                            R25 0
      377 LOADN                            R26 1
      378 LOADN                            R27 0
      379 CALL                             R23 4 1
      380 SETTABLEKS                       R23 R22 K28 ["Size"]
      382 GETTABLEKS                       R23 R3 K49 ["thumbnailPreview"]
      384 GETTABLEKS                       R23 R23 K50 ["background"]
      386 SETTABLEKS                       R23 R22 K46 ["BackgroundColor3"]
      388 LOADN                            R23 1
      389 SETTABLEKS                       R23 R22 K30 ["BackgroundTransparency"]
      391 CALL                             R20 2 1
      392 JUMP                             ; [+62]
      393 GETUPVAL                         R20 3
      394 GETTABLEKS                       R20 R20 K29 ["createElement"]
      396 GETUPVAL                         R21 11
      397 NEWTABLE                         R22 0 0
      399 DUPTABLE                         R23 K86 [{"Image", "Tooltip"}]
      400 GETUPVAL                         R24 3
      401 GETTABLEKS                       R24 R24 K29 ["createElement"]
      403 GETUPVAL                         R25 12
      404 DUPTABLE                         R26 K88 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      405 GETIMPORT                        R27 K90 [Vector2.new]
      407 LOADK                            R28 K25 [0.5]
      408 LOADK                            R29 K25 [0.5]
      409 CALL                             R27 2 1
      410 SETTABLEKS                       R27 R26 K87 ["AnchorPoint"]
      412 GETUPVAL                         R27 9
      413 GETTABLEKS                       R27 R27 K70 ["WARNING_ICON"]
      415 SETTABLEKS                       R27 R26 K31 ["Image"]
      417 GETTABLEKS                       R27 R3 K49 ["thumbnailPreview"]
      419 GETTABLEKS                       R27 R27 K71 ["text"]
      421 SETTABLEKS                       R27 R26 K68 ["ImageColor3"]
      423 GETIMPORT                        R27 K92 [UDim2.fromScale]
      425 LOADK                            R28 K25 [0.5]
      426 LOADK                            R29 K25 [0.5]
      427 CALL                             R27 2 1
      428 SETTABLEKS                       R27 R26 K7 ["Position"]
      430 GETTABLEKS                       R27 R3 K49 ["thumbnailPreview"]
      432 GETTABLEKS                       R27 R27 K72 ["warningIconSize"]
      434 SETTABLEKS                       R27 R26 K28 ["Size"]
      436 CALL                             R24 2 1
      437 SETTABLEKS                       R24 R23 K31 ["Image"]
      439 GETUPVAL                         R24 3
      440 GETTABLEKS                       R24 R24 K29 ["createElement"]
      442 GETUPVAL                         R25 13
      443 DUPTABLE                         R26 K93 [{"Text"}]
      444 LOADK                            R29 K62 ["AssetThumbnailPreview"]
      445 LOADK                            R30 K63 ["PreviewTooBig"]
      446 NAMECALL                         R27 R2 K64 ["getText"]
      448 CALL                             R27 3 1
      449 SETTABLEKS                       R27 R26 K75 ["Text"]
      451 CALL                             R24 2 1
      452 SETTABLEKS                       R24 R23 K59 ["Tooltip"]
      454 CALL                             R20 3 1
      455 SETTABLEKS                       R20 R19 K53 ["Viewport"]
      457 CALL                             R16 3 1
      458 SETTABLEKS                       R16 R15 K80 ["PreviewFrame"]
      460 MOVE                             R16 R5
      461 JUMPIFNOT                        R16 ; [+42]
      462 GETUPVAL                         R16 3
      463 GETTABLEKS                       R16 R16 K29 ["createElement"]
      465 LOADK                            R17 K94 ["TextLabel"]
      466 DUPTABLE                         R18 K98 [{["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      467 SETTABLEKS                       R4 R18 K75 ["Text"]
      469 GETUPVAL                         R19 14
      470 GETTABLEKS                       R19 R19 K99 ["FONT"]
      472 SETTABLEKS                       R19 R18 K95 ["Font"]
      474 GETUPVAL                         R19 14
      475 GETTABLEKS                       R19 R19 K100 ["FONT_SIZE_MEDIUM"]
      477 SETTABLEKS                       R19 R18 K96 ["TextSize"]
      479 GETTABLEKS                       R19 R3 K49 ["thumbnailPreview"]
      481 GETTABLEKS                       R19 R19 K71 ["text"]
      483 SETTABLEKS                       R19 R18 K97 ["TextColor3"]
      485 GETIMPORT                        R19 K10 [UDim2.new]
      487 LOADN                            R20 0
      488 LOADN                            R21 0
      489 LOADN                            R22 1
      490 MINUS                            R23 R7
      491 CALL                             R19 4 1
      492 SETTABLEKS                       R19 R18 K7 ["Position"]
      494 GETIMPORT                        R19 K10 [UDim2.new]
      496 LOADN                            R20 1
      497 LOADN                            R21 0
      498 LOADN                            R22 0
      499 MOVE                             R23 R7
      500 CALL                             R19 4 1
      501 SETTABLEKS                       R19 R18 K28 ["Size"]
      503 CALL                             R16 2 1
      504 SETTABLEKS                       R16 R15 K43 ["Title"]
      506 CALL                             R12 3 -1
      507 RETURN                           R12 -1

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
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Src"]
       42 GETTABLEKS                       R8 R8 K12 ["Flags"]
       44 GETTABLEKS                       R8 R8 K13 ["getFFlagToolboxAssetConfigFoundationMigration"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Util"]
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
       98 GETTABLEKS                       R20 R5 K14 ["Util"]
      100 GETTABLEKS                       R20 R20 K29 ["LayoutOrderIterator"]
      102 GETTABLEKS                       R21 R5 K30 ["UI"]
      104 GETTABLEKS                       R22 R21 K31 ["Image"]
      106 GETTABLEKS                       R23 R21 K32 ["Pane"]
      108 GETTABLEKS                       R24 R21 K33 ["Tooltip"]
      110 GETTABLEKS                       R25 R0 K11 ["Src"]
      112 GETTABLEKS                       R25 R25 K34 ["Components"]
      114 GETIMPORT                        R26 K5 [require]
      116 GETTABLEKS                       R27 R25 K35 ["RoundFrame"]
      118 CALL                             R26 1 1
      119 GETIMPORT                        R27 K23 [game]
      121 LOADK                            R29 K36 ["AssetConfigDescendantsPreviewLimit"]
      122 LOADN                            R30 10000
      123 NAMECALL                         R27 R27 K37 ["DefineFastInt"]
      125 CALL                             R27 3 1
      126 GETIMPORT                        R28 K5 [require]
      128 GETTABLEKS                       R29 R0 K11 ["Src"]
      130 GETTABLEKS                       R29 R29 K12 ["Flags"]
      132 GETTABLEKS                       R29 R29 K38 ["getFFlagEnableUploadingMakeup"]
      134 CALL                             R28 1 1
      135 GETIMPORT                        R29 K5 [require]
      137 GETTABLEKS                       R30 R0 K11 ["Src"]
      139 GETTABLEKS                       R30 R30 K12 ["Flags"]
      141 GETTABLEKS                       R30 R30 K39 ["getFFlagEnableUploadingAvatarAnimations"]
      143 CALL                             R29 1 1
      144 GETIMPORT                        R30 K5 [require]
      146 GETTABLEKS                       R31 R0 K11 ["Src"]
      148 GETTABLEKS                       R31 R31 K12 ["Flags"]
      150 GETTABLEKS                       R31 R31 K40 ["getFStringDefaultDynamicHeadAssetId"]
      152 CALL                             R30 1 1
      153 GETIMPORT                        R31 K5 [require]
      155 GETTABLEKS                       R32 R0 K11 ["Src"]
      157 GETTABLEKS                       R32 R32 K12 ["Flags"]
      159 GETTABLEKS                       R32 R32 K41 ["getFFlagFixPreloadedDynamicHeadNametag"]
      161 CALL                             R31 1 1
      162 GETIMPORT                        R32 K5 [require]
      164 GETTABLEKS                       R33 R8 K42 ["AvatarAnimationStudioToolboxTextures"]
      166 CALL                             R32 1 1
      167 MOVE                             R34 R28
      168 CALL                             R34 0 1
      169 JUMPIFNOT                        R34 ; [+5]
      170 GETIMPORT                        R33 K45 [Color3.fromHex]
      172 LOADK                            R34 K46 ["#A3A2A5"]
      173 CALL                             R33 1 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R33
      176 GETIMPORT                        R34 K5 [require]
      178 GETTABLEKS                       R35 R8 K47 ["AssetThumbnailPreviewUtil"]
      180 CALL                             R34 1 1
      181 GETIMPORT                        R35 K5 [require]
      183 GETTABLEKS                       R36 R0 K11 ["Src"]
      185 GETTABLEKS                       R36 R36 K34 ["Components"]
      187 GETTABLEKS                       R36 R36 K48 ["ImageWithDefault"]
      189 CALL                             R35 1 1
      190 MOVE                             R37 R28
      191 CALL                             R37 0 1
      192 JUMPIFNOT                        R37 ; [+2]
      193 LOADK                            R36 K49 ["PreloadedDefaultDynamicMakeupHead"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R36
      196 MOVE                             R38 R28
      197 CALL                             R38 0 1
      198 JUMPIFNOT                        R38 ; [+2]
      199 LOADB                            R37 0
      200 JUMP                             ; [+1]
      201 LOADNIL                          R37
      202 DUPCLOSURE                       R38 K50 [PROTO_1]
      203 CAPTURE                          VAL R28
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R31
      206 NEWCLOSURE                       R39 P1
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R30
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R36
      211 CAPTURE                          REF R37
      212 CAPTURE                          VAL R38
      213 DUPCLOSURE                       R40 K51 [PROTO_4]
      214 CAPTURE                          VAL R28
      215 CAPTURE                          VAL R36
      216 CAPTURE                          VAL R16
      217 DUPCLOSURE                       R41 K52 [PROTO_5]
      218 DUPCLOSURE                       R42 K53 [PROTO_6]
      219 DUPCLOSURE                       R43 K54 [PROTO_7]
      220 MOVE                             R45 R28
      221 CALL                             R45 0 1
      222 JUMPIFNOT                        R45 ; [+2]
      223 LOADK                            R44 K55 ["rbxasset://models/Thumbnails/MakeupCameras.rbxm"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R44
      226 MOVE                             R46 R28
      227 CALL                             R46 0 1
      228 JUMPIFNOT                        R46 ; [+2]
      229 LOADK                            R45 K56 ["rbxasset://models/Thumbnails/MakeupLighting.rbxm"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R45
      232 MOVE                             R47 R28
      233 CALL                             R47 0 1
      234 JUMPIFNOT                        R47 ; [+23]
      235 NEWTABLE                         R46 8 0
      237 GETIMPORT                        R47 K60 [Enum.AssetType.EyebrowAccessory]
      239 LOADK                            R48 K61 ["Eyebrow"]
      240 SETTABLE                         R48 R46 R47
      241 GETIMPORT                        R47 K63 [Enum.AssetType.EyelashAccessory]
      243 LOADK                            R48 K64 ["Eyelash"]
      244 SETTABLE                         R48 R46 R47
      245 GETIMPORT                        R47 K66 [Enum.AssetType.EyeMakeup]
      247 LOADK                            R48 K67 ["Eyes"]
      248 SETTABLE                         R48 R46 R47
      249 GETIMPORT                        R47 K69 [Enum.AssetType.FaceMakeup]
      251 LOADK                            R48 K70 ["Face"]
      252 SETTABLE                         R48 R46 R47
      253 GETIMPORT                        R47 K72 [Enum.AssetType.LipMakeup]
      255 LOADK                            R48 K73 ["Lips"]
      256 SETTABLE                         R48 R46 R47
      257 JUMP                             ; [+1]
      258 LOADNIL                          R46
      259 MOVE                             R48 R28
      260 CALL                             R48 0 1
      261 JUMPIFNOT                        R48 ; [+2]
      262 LOADK                            R47 K70 ["Face"]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R47
      265 DUPCLOSURE                       R48 K74 [PROTO_10]
      266 CAPTURE                          VAL R28
      267 CAPTURE                          VAL R47
      268 CAPTURE                          VAL R46
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R44
      271 CAPTURE                          VAL R45
      272 DUPCLOSURE                       R49 K75 [PROTO_11]
      273 CAPTURE                          VAL R28
      274 CAPTURE                          VAL R48
      275 CAPTURE                          VAL R38
      276 CAPTURE                          VAL R11
      277 CAPTURE                          VAL R33
      278 GETTABLEKS                       R50 R3 K76 ["PureComponent"]
      280 LOADK                            R52 K77 ["AssetThumbnailPreview"]
      281 NAMECALL                         R50 R50 K78 ["extend"]
      283 CALL                             R50 2 1
      284 DUPCLOSURE                       R51 K79 [PROTO_12]
      285 CAPTURE                          VAL R3
      286 SETTABLEKS                       R51 R50 K80 ["init"]
      288 DUPCLOSURE                       R51 K81 [PROTO_13]
      289 CAPTURE                          VAL R28
      290 CAPTURE                          VAL R39
      291 SETTABLEKS                       R51 R50 K82 ["didMount"]
      293 DUPCLOSURE                       R51 K83 [PROTO_14]
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R36
      296 CAPTURE                          VAL R16
      297 SETTABLEKS                       R51 R50 K84 ["willUnmount"]
      299 DUPCLOSURE                       R51 K85 [PROTO_15]
      300 CAPTURE                          VAL R28
      301 CAPTURE                          VAL R33
      302 SETTABLEKS                       R51 R50 K86 ["didUpdate"]
      304 DUPCLOSURE                       R51 K87 [PROTO_18]
      305 CAPTURE                          VAL R29
      306 CAPTURE                          VAL R11
      307 CAPTURE                          VAL R28
      308 CAPTURE                          VAL R12
      309 CAPTURE                          VAL R49
      310 CAPTURE                          VAL R30
      311 CAPTURE                          VAL R43
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R34
      314 CAPTURE                          VAL R42
      315 SETTABLEKS                       R51 R50 K88 ["setView"]
      317 DUPCLOSURE                       R51 K89 [PROTO_19]
      318 SETTABLEKS                       R51 R50 K90 ["getName"]
      320 DUPCLOSURE                       R51 K91 [PROTO_20]
      321 CAPTURE                          VAL R27
      322 SETTABLEKS                       R51 R50 K92 ["shouldShowInstances"]
      324 DUPCLOSURE                       R51 K93 [PROTO_21]
      325 CAPTURE                          VAL R29
      326 CAPTURE                          VAL R11
      327 CAPTURE                          VAL R32
      328 CAPTURE                          VAL R3
      329 CAPTURE                          VAL R35
      330 CAPTURE                          VAL R7
      331 CAPTURE                          VAL R20
      332 CAPTURE                          VAL R2
      333 CAPTURE                          VAL R6
      334 CAPTURE                          VAL R10
      335 CAPTURE                          VAL R26
      336 CAPTURE                          VAL R23
      337 CAPTURE                          VAL R22
      338 CAPTURE                          VAL R24
      339 CAPTURE                          VAL R9
      340 SETTABLEKS                       R51 R50 K94 ["render"]
      342 DUPCLOSURE                       R51 K95 [PROTO_22]
      343 MOVE                             R52 R18
      344 DUPTABLE                         R53 K98 [{"Localization", "Stylizer", "Plugin"}]
      345 GETTABLEKS                       R54 R17 K96 ["Localization"]
      347 SETTABLEKS                       R54 R53 K96 ["Localization"]
      349 GETTABLEKS                       R54 R17 K28 ["Stylizer"]
      351 SETTABLEKS                       R54 R53 K28 ["Stylizer"]
      353 MOVE                             R55 R28
      354 CALL                             R55 0 1
      355 JUMPIFNOT                        R55 ; [+3]
      356 GETTABLEKS                       R54 R17 K97 ["Plugin"]
      358 JUMP                             ; [+1]
      359 LOADNIL                          R54
      360 SETTABLEKS                       R54 R53 K97 ["Plugin"]
      362 CALL                             R52 1 1
      363 MOVE                             R53 R50
      364 CALL                             R52 1 1
      365 MOVE                             R50 R52
      366 GETTABLEKS                       R52 R4 K99 ["connect"]
      368 MOVE                             R53 R51
      369 CALL                             R52 1 1
      370 MOVE                             R53 R50
      371 CALL                             R52 1 -1
      372 CLOSEUPVALS                      R37
      373 RETURN                           R52 -1
