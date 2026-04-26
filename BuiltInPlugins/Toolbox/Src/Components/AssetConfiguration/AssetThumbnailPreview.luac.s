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
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["AssetType"]
       10 GETIMPORT                        R2 K6 [Enum.AssetType.EmoteAnimation]
       12 JUMPIFNOTEQ                      R1 R2 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+19]
       18 GETTABLEKS                       R2 R0 K2 ["props"]
       20 GETTABLEKS                       R1 R2 K3 ["AssetType"]
       22 JUMPIFNOT                        R1 ; [+14]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K7 ["MAKEUP_ASSET_TYPES"]
       26 JUMPIFNOT                        R1 ; [+10]
       27 GETIMPORT                        R1 K10 [table.find]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K7 ["MAKEUP_ASSET_TYPES"]
       32 GETTABLEKS                       R4 R0 K2 ["props"]
       34 GETTABLEKS                       R3 R4 K3 ["AssetType"]
       36 CALL                             R1 2 1
       37 GETTABLEKS                       R3 R0 K11 ["viewportRef"]
       39 GETTABLEKS                       R2 R3 K12 ["current"]
       41 GETUPVAL                         R3 0
       42 CALL                             R3 0 1
       43 JUMPIFNOT                        R3 ; [+7]
       44 JUMPIFNOT                        R2 ; [+6]
       45 NAMECALL                         R3 R2 K13 ["ClearAllChildren"]
       47 CALL                             R3 1 0
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R0 K14 ["makeupHeadRef"]
       51 JUMPIFNOT                        R1 ; [+10]
       52 GETIMPORT                        R3 K17 [task.spawn]
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 CALL                             R3 1 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R4 R0 K2 ["props"]
       64 GETTABLEKS                       R3 R4 K18 ["instances"]
       66 JUMPIFNOT                        R3 ; [+127]
       67 NAMECALL                         R3 R2 K13 ["ClearAllChildren"]
       69 CALL                             R3 1 0
       70 GETIMPORT                        R3 K21 [Instance.new]
       72 LOADK                            R4 K22 ["Camera"]
       73 CALL                             R3 1 1
       74 LOADK                            R4 K22 ["Camera"]
       75 SETTABLEKS                       R4 R3 K23 ["Name"]
       77 SETTABLEKS                       R2 R3 K24 ["Parent"]
       79 SETTABLEKS                       R3 R2 K25 ["CurrentCamera"]
       81 GETIMPORT                        R4 K21 [Instance.new]
       83 LOADK                            R5 K26 ["Model"]
       84 CALL                             R4 1 1
       85 SETTABLEKS                       R2 R4 K24 ["Parent"]
       87 GETIMPORT                        R5 K28 [pairs]
       89 GETTABLEKS                       R8 R0 K2 ["props"]
       91 GETTABLEKS                       R6 R8 K18 ["instances"]
       93 CALL                             R5 1 3
       94 FORGPREP_NEXT                    R5
       95 LOADK                            R12 K29 ["LuaSourceContainer"]
       96 NAMECALL                         R10 R9 K30 ["IsA"]
       98 CALL                             R10 2 1
       99 JUMPIF                           R10 ; [+10]
      100 GETIMPORT                        R10 K32 [pcall]
      102 NEWCLOSURE                       R11 P1
      103 CAPTURE                          VAL R9
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          VAL R4
      109 CALL                             R10 1 0
      110 FORGLOOP                         R5 2 ; [-16]
      112 GETUPVAL                         R5 8
      113 MOVE                             R6 R4
      114 CALL                             R5 1 0
      115 GETTABLEKS                       R8 R0 K2 ["props"]
      117 GETTABLEKS                       R7 R8 K18 ["instances"]
      119 LENGTH                           R6 R7
      120 JUMPIFNOTEQKN                    R6 K33 [1] ; [+7]
      122 GETTABLEKS                       R7 R0 K2 ["props"]
      124 GETTABLEKS                       R6 R7 K18 ["instances"]
      126 GETTABLEN                        R5 R6 1
      127 JUMPIF                           R5 ; [+1]
      128 MOVE                             R5 R4
      129 LOADK                            R8 K34 ["ThumbnailConfiguration"]
      130 NAMECALL                         R6 R5 K35 ["FindFirstChild"]
      132 CALL                             R6 2 1
      133 LOADK                            R9 K36 ["ThumbnailCamera"]
      134 NAMECALL                         R7 R5 K35 ["FindFirstChild"]
      136 CALL                             R7 2 1
      137 JUMPIFNOT                        R6 ; [+43]
      138 LOADK                            R10 K37 ["Configuration"]
      139 NAMECALL                         R8 R6 K30 ["IsA"]
      141 CALL                             R8 2 1
      142 JUMPIFNOT                        R8 ; [+38]
      143 LOADK                            R10 K38 ["ThumbnailCameraTarget"]
      144 NAMECALL                         R8 R6 K35 ["FindFirstChild"]
      146 CALL                             R8 2 1
      147 LOADK                            R11 K39 ["ThumbnailCameraValue"]
      148 NAMECALL                         R9 R6 K35 ["FindFirstChild"]
      150 CALL                             R9 2 1
      151 JUMPIFNOT                        R8 ; [+42]
      152 LOADK                            R12 K40 ["ObjectValue"]
      153 NAMECALL                         R10 R8 K30 ["IsA"]
      155 CALL                             R10 2 1
      156 JUMPIFNOT                        R10 ; [+37]
      157 JUMPIFNOT                        R9 ; [+36]
      158 LOADK                            R12 K41 ["CFrameValue"]
      159 NAMECALL                         R10 R9 K30 ["IsA"]
      161 CALL                             R10 2 1
      162 JUMPIFNOT                        R10 ; [+31]
      163 GETTABLEKS                       R10 R8 K42 ["Value"]
      165 JUMPIFNOT                        R10 ; [+28]
      166 LOADK                            R13 K43 ["BasePart"]
      167 NAMECALL                         R11 R10 K30 ["IsA"]
      169 CALL                             R11 2 1
      170 JUMPIFNOT                        R11 ; [+23]
      171 GETTABLEKS                       R11 R10 K44 ["CFrame"]
      173 GETTABLEKS                       R13 R9 K42 ["Value"]
      175 NAMECALL                         R11 R11 K45 ["toWorldSpace"]
      177 CALL                             R11 2 1
      178 SETTABLEKS                       R11 R3 K44 ["CFrame"]
      180 RETURN                           R0 0
      181 JUMPIFNOT                        R7 ; [+8]
      182 LOADK                            R10 K22 ["Camera"]
      183 NAMECALL                         R8 R7 K30 ["IsA"]
      185 CALL                             R8 2 1
      186 JUMPIFNOT                        R8 ; [+3]
      187 SETTABLEKS                       R7 R2 K25 ["CurrentCamera"]
      189 RETURN                           R0 0
      190 GETUPVAL                         R8 4
      191 MOVE                             R9 R3
      192 MOVE                             R10 R4
      193 CALL                             R8 2 0
      194 RETURN                           R0 0

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
       38 GETTABLEKS                       R10 R1 K17 ["AssetType"]
       40 GETIMPORT                        R11 K20 [Enum.AssetType.EmoteAnimation]
       42 JUMPIFNOTEQ                      R10 R11 ; [+50]
       44 LOADNIL                          R10
       45 LOADNIL                          R11
       46 GETTABLEKS                       R12 R1 K21 ["UploadSucceeded"]
       48 JUMPIFNOTEQKB                    R12 FALSE ; [+22]
       50 GETTABLEKS                       R12 R3 K22 ["dialog"]
       52 GETTABLEKS                       R10 R12 K23 ["alertIcon"]
       54 GETIMPORT                        R12 K10 [UDim2.new]
       56 LOADN                            R13 0
       57 LOADN                            R14 96
       58 LOADN                            R15 0
       59 LOADN                            R16 96
       60 CALL                             R12 4 1
       61 MOVE                             R11 R12
       62 GETIMPORT                        R12 K10 [UDim2.new]
       64 LOADK                            R13 K24 [0.5]
       65 LOADN                            R14 208
       66 LOADK                            R15 K24 [0.5]
       67 LOADN                            R16 248
       68 CALL                             R12 4 1
       69 MOVE                             R6 R12
       70 JUMP                             ; [+3]
       71 LOADK                            R10 K25 ["rbxasset://textures/StudioToolbox/DefaultEmoteAnimation.png"]
       72 GETTABLEKS                       R11 R1 K26 ["Size"]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R12 R13 K27 ["createElement"]
       77 GETUPVAL                         R13 1
       78 DUPTABLE                         R14 K31 [{"Size", "Position", "BackgroundTransparency", "Image", "defaultImage"}]
       79 SETTABLEKS                       R11 R14 K26 ["Size"]
       81 SETTABLEKS                       R6 R14 K7 ["Position"]
       83 LOADN                            R15 1
       84 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
       86 SETTABLEKS                       R10 R14 K29 ["Image"]
       88 LOADK                            R15 K32 [""]
       89 SETTABLEKS                       R15 R14 K30 ["defaultImage"]
       91 CALL                             R12 2 -1
       92 RETURN                           R12 -1
       93 GETUPVAL                         R10 2
       94 CALL                             R10 0 1
       95 JUMPIFNOT                        R10 ; [+203]
       96 GETUPVAL                         R11 3
       97 GETTABLEKS                       R10 R11 K9 ["new"]
       99 CALL                             R10 0 1
      100 JUMPIFNOT                        R5 ; [+9]
      101 GETIMPORT                        R11 K10 [UDim2.new]
      103 LOADN                            R12 1
      104 LOADN                            R13 0
      105 LOADN                            R14 1
      106 ADD                              R16 R7 R8
      107 MINUS                            R15 R16
      108 CALL                             R11 4 1
      109 JUMPIF                           R11 ; [+7]
      110 GETIMPORT                        R11 K10 [UDim2.new]
      112 LOADN                            R12 1
      113 LOADN                            R13 0
      114 LOADN                            R14 1
      115 LOADN                            R15 0
      116 CALL                             R11 4 1
      117 GETUPVAL                         R13 4
      118 GETTABLEKS                       R12 R13 K27 ["createElement"]
      120 GETUPVAL                         R14 5
      121 GETTABLEKS                       R13 R14 K33 ["View"]
      123 DUPTABLE                         R14 K35 [{"tag", "Size", "Position", "LayoutOrder"}]
      124 LOADK                            R15 K36 ["col align-x-left align-y-top"]
      125 SETTABLEKS                       R15 R14 K34 ["tag"]
      127 GETTABLEKS                       R15 R1 K26 ["Size"]
      129 SETTABLEKS                       R15 R14 K26 ["Size"]
      131 SETTABLEKS                       R6 R14 K7 ["Position"]
      133 SETTABLEKS                       R9 R14 K16 ["LayoutOrder"]
      135 DUPTABLE                         R15 K39 [{"ViewportWrapper", "Title"}]
      136 GETUPVAL                         R17 4
      137 GETTABLEKS                       R16 R17 K27 ["createElement"]
      139 GETUPVAL                         R18 5
      140 GETTABLEKS                       R17 R18 K33 ["View"]
      142 DUPTABLE                         R18 K41 [{"tag", "LayoutOrder", "Size", "BackgroundColor3"}]
      143 LOADK                            R19 K42 ["shrink-0 radius-medium stroke-default"]
      144 SETTABLEKS                       R19 R18 K34 ["tag"]
      146 NAMECALL                         R19 R10 K43 ["getNextOrder"]
      148 CALL                             R19 1 1
      149 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      151 SETTABLEKS                       R11 R18 K26 ["Size"]
      153 GETTABLEKS                       R20 R3 K44 ["thumbnailPreview"]
      155 GETTABLEKS                       R19 R20 K45 ["background"]
      157 SETTABLEKS                       R19 R18 K40 ["BackgroundColor3"]
      159 GETTABLEKS                       R21 R0 K46 ["state"]
      161 GETTABLEKS                       R20 R21 K47 ["shouldShow"]
      163 JUMPIFNOT                        R20 ; [+32]
      164 DUPTABLE                         R19 K49 [{"Viewport"}]
      165 GETUPVAL                         R21 4
      166 GETTABLEKS                       R20 R21 K27 ["createElement"]
      168 LOADK                            R21 K50 ["ViewportFrame"]
      169 DUPTABLE                         R22 K52 [{"ref", "Size", "BackgroundColor3", "BackgroundTransparency"}]
      170 GETTABLEKS                       R23 R0 K53 ["viewportRef"]
      172 SETTABLEKS                       R23 R22 K51 ["ref"]
      174 GETIMPORT                        R23 K10 [UDim2.new]
      176 LOADN                            R24 1
      177 LOADN                            R25 0
      178 LOADN                            R26 1
      179 LOADN                            R27 0
      180 CALL                             R23 4 1
      181 SETTABLEKS                       R23 R22 K26 ["Size"]
      183 GETTABLEKS                       R24 R3 K44 ["thumbnailPreview"]
      185 GETTABLEKS                       R23 R24 K45 ["background"]
      187 SETTABLEKS                       R23 R22 K40 ["BackgroundColor3"]
      189 LOADN                            R23 1
      190 SETTABLEKS                       R23 R22 K28 ["BackgroundTransparency"]
      192 CALL                             R20 2 1
      193 SETTABLEKS                       R20 R19 K48 ["Viewport"]
      195 JUMP                             ; [+67]
      196 DUPTABLE                         R19 K55 [{"Tooltip"}]
      197 GETUPVAL                         R21 4
      198 GETTABLEKS                       R20 R21 K27 ["createElement"]
      200 GETUPVAL                         R22 5
      201 GETTABLEKS                       R21 R22 K54 ["Tooltip"]
      203 DUPTABLE                         R22 K56 [{"title"}]
      204 LOADK                            R25 K57 ["AssetThumbnailPreview"]
      205 LOADK                            R26 K58 ["PreviewTooBig"]
      206 NAMECALL                         R23 R2 K59 ["getText"]
      208 CALL                             R23 3 1
      209 SETTABLEKS                       R23 R22 K3 ["title"]
      211 NEWTABLE                         R23 0 1
      213 GETUPVAL                         R25 4
      214 GETTABLEKS                       R24 R25 K27 ["createElement"]
      216 GETUPVAL                         R26 5
      217 GETTABLEKS                       R25 R26 K33 ["View"]
      219 DUPTABLE                         R26 K60 [{"tag"}]
      220 LOADK                            R27 K61 ["size-full align-x-center align-y-center"]
      221 SETTABLEKS                       R27 R26 K34 ["tag"]
      223 DUPTABLE                         R27 K62 [{"Image"}]
      224 GETUPVAL                         R29 4
      225 GETTABLEKS                       R28 R29 K27 ["createElement"]
      227 GETUPVAL                         R30 5
      228 GETTABLEKS                       R29 R30 K29 ["Image"]
      230 DUPTABLE                         R30 K64 [{"Image", "ImageColor3", "Size"}]
      231 GETUPVAL                         R32 6
      232 GETTABLEKS                       R31 R32 K65 ["WARNING_ICON"]
      234 SETTABLEKS                       R31 R30 K29 ["Image"]
      236 GETTABLEKS                       R32 R3 K44 ["thumbnailPreview"]
      238 GETTABLEKS                       R31 R32 K66 ["text"]
      240 SETTABLEKS                       R31 R30 K63 ["ImageColor3"]
      242 GETTABLEKS                       R32 R3 K44 ["thumbnailPreview"]
      244 GETTABLEKS                       R31 R32 K67 ["warningIconSize"]
      246 JUMPIF                           R31 ; [+5]
      247 GETIMPORT                        R31 K69 [UDim2.fromOffset]
      249 LOADN                            R32 96
      250 LOADN                            R33 96
      251 CALL                             R31 2 1
      252 SETTABLEKS                       R31 R30 K26 ["Size"]
      254 CALL                             R28 2 1
      255 SETTABLEKS                       R28 R27 K29 ["Image"]
      257 CALL                             R24 3 -1
      258 SETLIST                          R23 R24 -1 [1]
      260 CALL                             R20 3 1
      261 SETTABLEKS                       R20 R19 K54 ["Tooltip"]
      263 CALL                             R16 3 1
      264 SETTABLEKS                       R16 R15 K37 ["ViewportWrapper"]
      266 MOVE                             R16 R5
      267 JUMPIFNOT                        R16 ; [+27]
      268 GETUPVAL                         R17 4
      269 GETTABLEKS                       R16 R17 K27 ["createElement"]
      271 GETUPVAL                         R18 5
      272 GETTABLEKS                       R17 R18 K70 ["Text"]
      274 DUPTABLE                         R18 K71 [{"tag", "Text", "LayoutOrder", "Size"}]
      275 LOADK                            R19 K72 ["text-body-medium text-align-y-top text-align-x-center content-default shrink-0 padding-top-medium"]
      276 SETTABLEKS                       R19 R18 K34 ["tag"]
      278 SETTABLEKS                       R4 R18 K70 ["Text"]
      280 NAMECALL                         R19 R10 K43 ["getNextOrder"]
      282 CALL                             R19 1 1
      283 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      285 GETIMPORT                        R19 K10 [UDim2.new]
      287 LOADN                            R20 1
      288 LOADN                            R21 0
      289 LOADN                            R22 0
      290 MOVE                             R23 R7
      291 CALL                             R19 4 1
      292 SETTABLEKS                       R19 R18 K26 ["Size"]
      294 CALL                             R16 2 1
      295 SETTABLEKS                       R16 R15 K38 ["Title"]
      297 CALL                             R12 3 -1
      298 RETURN                           R12 -1
      299 GETUPVAL                         R11 0
      300 GETTABLEKS                       R10 R11 K27 ["createElement"]
      302 LOADK                            R11 K73 ["Frame"]
      303 DUPTABLE                         R12 K74 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      304 LOADN                            R13 1
      305 SETTABLEKS                       R13 R12 K28 ["BackgroundTransparency"]
      307 GETTABLEKS                       R13 R1 K26 ["Size"]
      309 SETTABLEKS                       R13 R12 K26 ["Size"]
      311 SETTABLEKS                       R6 R12 K7 ["Position"]
      313 SETTABLEKS                       R9 R12 K16 ["LayoutOrder"]
      315 DUPTABLE                         R13 K76 [{"PreviewFrame", "Title"}]
      316 GETUPVAL                         R15 0
      317 GETTABLEKS                       R14 R15 K27 ["createElement"]
      319 GETUPVAL                         R15 7
      320 DUPTABLE                         R16 K78 [{"BackgroundColor3", "BorderColor3", "Size"}]
      321 GETTABLEKS                       R18 R3 K44 ["thumbnailPreview"]
      323 GETTABLEKS                       R17 R18 K45 ["background"]
      325 SETTABLEKS                       R17 R16 K40 ["BackgroundColor3"]
      327 GETTABLEKS                       R18 R3 K44 ["thumbnailPreview"]
      329 GETTABLEKS                       R17 R18 K79 ["border"]
      331 SETTABLEKS                       R17 R16 K77 ["BorderColor3"]
      333 JUMPIFNOT                        R5 ; [+9]
      334 GETIMPORT                        R17 K10 [UDim2.new]
      336 LOADN                            R18 1
      337 LOADN                            R19 0
      338 LOADN                            R20 1
      339 ADD                              R22 R7 R8
      340 MINUS                            R21 R22
      341 CALL                             R17 4 1
      342 JUMPIF                           R17 ; [+7]
      343 GETIMPORT                        R17 K10 [UDim2.new]
      345 LOADN                            R18 1
      346 LOADN                            R19 0
      347 LOADN                            R20 1
      348 LOADN                            R21 0
      349 CALL                             R17 4 1
      350 SETTABLEKS                       R17 R16 K26 ["Size"]
      352 DUPTABLE                         R17 K49 [{"Viewport"}]
      353 GETTABLEKS                       R20 R0 K46 ["state"]
      355 GETTABLEKS                       R19 R20 K47 ["shouldShow"]
      357 JUMPIFNOT                        R19 ; [+32]
      358 GETUPVAL                         R19 0
      359 GETTABLEKS                       R18 R19 K27 ["createElement"]
      361 LOADK                            R19 K50 ["ViewportFrame"]
      362 NEWTABLE                         R20 4 0
      364 GETUPVAL                         R22 0
      365 GETTABLEKS                       R21 R22 K80 ["Ref"]
      367 GETTABLEKS                       R22 R0 K53 ["viewportRef"]
      369 SETTABLE                         R22 R20 R21
      370 GETIMPORT                        R21 K10 [UDim2.new]
      372 LOADN                            R22 1
      373 LOADN                            R23 0
      374 LOADN                            R24 1
      375 LOADN                            R25 0
      376 CALL                             R21 4 1
      377 SETTABLEKS                       R21 R20 K26 ["Size"]
      379 GETTABLEKS                       R22 R3 K44 ["thumbnailPreview"]
      381 GETTABLEKS                       R21 R22 K45 ["background"]
      383 SETTABLEKS                       R21 R20 K40 ["BackgroundColor3"]
      385 LOADN                            R21 1
      386 SETTABLEKS                       R21 R20 K28 ["BackgroundTransparency"]
      388 CALL                             R18 2 1
      389 JUMP                             ; [+62]
      390 GETUPVAL                         R19 0
      391 GETTABLEKS                       R18 R19 K27 ["createElement"]
      393 GETUPVAL                         R19 8
      394 NEWTABLE                         R20 0 0
      396 DUPTABLE                         R21 K81 [{"Image", "Tooltip"}]
      397 GETUPVAL                         R23 0
      398 GETTABLEKS                       R22 R23 K27 ["createElement"]
      400 GETUPVAL                         R23 9
      401 DUPTABLE                         R24 K83 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      402 GETIMPORT                        R25 K85 [Vector2.new]
      404 LOADK                            R26 K24 [0.5]
      405 LOADK                            R27 K24 [0.5]
      406 CALL                             R25 2 1
      407 SETTABLEKS                       R25 R24 K82 ["AnchorPoint"]
      409 GETUPVAL                         R26 6
      410 GETTABLEKS                       R25 R26 K65 ["WARNING_ICON"]
      412 SETTABLEKS                       R25 R24 K29 ["Image"]
      414 GETTABLEKS                       R26 R3 K44 ["thumbnailPreview"]
      416 GETTABLEKS                       R25 R26 K66 ["text"]
      418 SETTABLEKS                       R25 R24 K63 ["ImageColor3"]
      420 GETIMPORT                        R25 K87 [UDim2.fromScale]
      422 LOADK                            R26 K24 [0.5]
      423 LOADK                            R27 K24 [0.5]
      424 CALL                             R25 2 1
      425 SETTABLEKS                       R25 R24 K7 ["Position"]
      427 GETTABLEKS                       R26 R3 K44 ["thumbnailPreview"]
      429 GETTABLEKS                       R25 R26 K67 ["warningIconSize"]
      431 SETTABLEKS                       R25 R24 K26 ["Size"]
      433 CALL                             R22 2 1
      434 SETTABLEKS                       R22 R21 K29 ["Image"]
      436 GETUPVAL                         R23 0
      437 GETTABLEKS                       R22 R23 K27 ["createElement"]
      439 GETUPVAL                         R23 10
      440 DUPTABLE                         R24 K88 [{"Text"}]
      441 LOADK                            R27 K57 ["AssetThumbnailPreview"]
      442 LOADK                            R28 K58 ["PreviewTooBig"]
      443 NAMECALL                         R25 R2 K59 ["getText"]
      445 CALL                             R25 3 1
      446 SETTABLEKS                       R25 R24 K70 ["Text"]
      448 CALL                             R22 2 1
      449 SETTABLEKS                       R22 R21 K54 ["Tooltip"]
      451 CALL                             R18 3 1
      452 SETTABLEKS                       R18 R17 K48 ["Viewport"]
      454 CALL                             R14 3 1
      455 SETTABLEKS                       R14 R13 K75 ["PreviewFrame"]
      457 MOVE                             R14 R5
      458 JUMPIFNOT                        R14 ; [+45]
      459 GETUPVAL                         R15 0
      460 GETTABLEKS                       R14 R15 K27 ["createElement"]
      462 LOADK                            R15 K89 ["TextLabel"]
      463 DUPTABLE                         R16 K93 [{"Text", "Font", "TextSize", "TextColor3", "Position", "Size", "BackgroundTransparency"}]
      464 SETTABLEKS                       R4 R16 K70 ["Text"]
      466 GETUPVAL                         R18 11
      467 GETTABLEKS                       R17 R18 K94 ["FONT"]
      469 SETTABLEKS                       R17 R16 K90 ["Font"]
      471 GETUPVAL                         R18 11
      472 GETTABLEKS                       R17 R18 K95 ["FONT_SIZE_MEDIUM"]
      474 SETTABLEKS                       R17 R16 K91 ["TextSize"]
      476 GETTABLEKS                       R18 R3 K44 ["thumbnailPreview"]
      478 GETTABLEKS                       R17 R18 K66 ["text"]
      480 SETTABLEKS                       R17 R16 K92 ["TextColor3"]
      482 GETIMPORT                        R17 K10 [UDim2.new]
      484 LOADN                            R18 0
      485 LOADN                            R19 0
      486 LOADN                            R20 1
      487 MINUS                            R21 R7
      488 CALL                             R17 4 1
      489 SETTABLEKS                       R17 R16 K7 ["Position"]
      491 GETIMPORT                        R17 K10 [UDim2.new]
      493 LOADN                            R18 1
      494 LOADN                            R19 0
      495 LOADN                            R20 0
      496 MOVE                             R21 R7
      497 CALL                             R17 4 1
      498 SETTABLEKS                       R17 R16 K26 ["Size"]
      500 LOADN                            R17 1
      501 SETTABLEKS                       R17 R16 K28 ["BackgroundTransparency"]
      503 CALL                             R14 2 1
      504 SETTABLEKS                       R14 R13 K38 ["Title"]
      506 CALL                             R10 3 -1
      507 RETURN                           R10 -1

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
      132 GETTABLEKS                       R29 R30 K38 ["getFFlagEnableUploadingMakeup"]
      134 CALL                             R28 1 1
      135 GETIMPORT                        R29 K5 [require]
      137 GETTABLEKS                       R32 R0 K11 ["Src"]
      139 GETTABLEKS                       R31 R32 K12 ["Flags"]
      141 GETTABLEKS                       R30 R31 K39 ["getFStringDefaultDynamicHeadAssetId"]
      143 CALL                             R29 1 1
      144 MOVE                             R31 R28
      145 CALL                             R31 0 1
      146 JUMPIFNOT                        R31 ; [+5]
      147 GETIMPORT                        R30 K42 [Color3.fromHex]
      149 LOADK                            R31 K43 ["#A3A2A5"]
      150 CALL                             R30 1 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R30
      153 GETIMPORT                        R31 K5 [require]
      155 GETTABLEKS                       R32 R8 K44 ["AssetThumbnailPreviewUtil"]
      157 CALL                             R31 1 1
      158 GETIMPORT                        R32 K5 [require]
      160 GETTABLEKS                       R35 R0 K11 ["Src"]
      162 GETTABLEKS                       R34 R35 K34 ["Components"]
      164 GETTABLEKS                       R33 R34 K45 ["ImageWithDefault"]
      166 CALL                             R32 1 1
      167 MOVE                             R34 R28
      168 CALL                             R34 0 1
      169 JUMPIFNOT                        R34 ; [+2]
      170 LOADK                            R33 K46 ["PreloadedDefaultDynamicMakeupHead"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R33
      173 MOVE                             R35 R28
      174 CALL                             R35 0 1
      175 JUMPIFNOT                        R35 ; [+2]
      176 LOADB                            R34 0
      177 JUMP                             ; [+1]
      178 LOADNIL                          R34
      179 DUPCLOSURE                       R35 K47 [PROTO_1]
      180 CAPTURE                          VAL R28
      181 CAPTURE                          VAL R15
      182 NEWCLOSURE                       R36 P1
      183 CAPTURE                          VAL R28
      184 CAPTURE                          VAL R29
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R33
      187 CAPTURE                          REF R34
      188 CAPTURE                          VAL R35
      189 DUPCLOSURE                       R37 K48 [PROTO_4]
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R33
      192 CAPTURE                          VAL R16
      193 DUPCLOSURE                       R38 K49 [PROTO_5]
      194 DUPCLOSURE                       R39 K50 [PROTO_6]
      195 DUPCLOSURE                       R40 K51 [PROTO_7]
      196 MOVE                             R42 R28
      197 CALL                             R42 0 1
      198 JUMPIFNOT                        R42 ; [+2]
      199 LOADK                            R41 K52 ["rbxasset://models/Thumbnails/MakeupCameras.rbxm"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R41
      202 MOVE                             R43 R28
      203 CALL                             R43 0 1
      204 JUMPIFNOT                        R43 ; [+2]
      205 LOADK                            R42 K53 ["rbxasset://models/Thumbnails/MakeupLighting.rbxm"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R42
      208 MOVE                             R44 R28
      209 CALL                             R44 0 1
      210 JUMPIFNOT                        R44 ; [+23]
      211 NEWTABLE                         R43 8 0
      213 GETIMPORT                        R44 K57 [Enum.AssetType.EyebrowAccessory]
      215 LOADK                            R45 K58 ["Eyebrow"]
      216 SETTABLE                         R45 R43 R44
      217 GETIMPORT                        R44 K60 [Enum.AssetType.EyelashAccessory]
      219 LOADK                            R45 K61 ["Eyelash"]
      220 SETTABLE                         R45 R43 R44
      221 GETIMPORT                        R44 K63 [Enum.AssetType.EyeMakeup]
      223 LOADK                            R45 K64 ["Eyes"]
      224 SETTABLE                         R45 R43 R44
      225 GETIMPORT                        R44 K66 [Enum.AssetType.FaceMakeup]
      227 LOADK                            R45 K67 ["Face"]
      228 SETTABLE                         R45 R43 R44
      229 GETIMPORT                        R44 K69 [Enum.AssetType.LipMakeup]
      231 LOADK                            R45 K70 ["Lips"]
      232 SETTABLE                         R45 R43 R44
      233 JUMP                             ; [+1]
      234 LOADNIL                          R43
      235 MOVE                             R45 R28
      236 CALL                             R45 0 1
      237 JUMPIFNOT                        R45 ; [+2]
      238 LOADK                            R44 K67 ["Face"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R44
      241 DUPCLOSURE                       R45 K71 [PROTO_10]
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R44
      244 CAPTURE                          VAL R43
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R41
      247 CAPTURE                          VAL R42
      248 DUPCLOSURE                       R46 K72 [PROTO_11]
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R45
      251 CAPTURE                          VAL R35
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R30
      254 GETTABLEKS                       R47 R3 K73 ["PureComponent"]
      256 LOADK                            R49 K74 ["AssetThumbnailPreview"]
      257 NAMECALL                         R47 R47 K75 ["extend"]
      259 CALL                             R47 2 1
      260 DUPCLOSURE                       R48 K76 [PROTO_12]
      261 CAPTURE                          VAL R3
      262 SETTABLEKS                       R48 R47 K77 ["init"]
      264 DUPCLOSURE                       R48 K78 [PROTO_13]
      265 CAPTURE                          VAL R28
      266 CAPTURE                          VAL R36
      267 SETTABLEKS                       R48 R47 K79 ["didMount"]
      269 DUPCLOSURE                       R48 K80 [PROTO_14]
      270 CAPTURE                          VAL R28
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R16
      273 SETTABLEKS                       R48 R47 K81 ["willUnmount"]
      275 DUPCLOSURE                       R48 K82 [PROTO_15]
      276 CAPTURE                          VAL R28
      277 CAPTURE                          VAL R30
      278 SETTABLEKS                       R48 R47 K83 ["didUpdate"]
      280 DUPCLOSURE                       R48 K84 [PROTO_18]
      281 CAPTURE                          VAL R28
      282 CAPTURE                          VAL R12
      283 CAPTURE                          VAL R46
      284 CAPTURE                          VAL R29
      285 CAPTURE                          VAL R40
      286 CAPTURE                          VAL R38
      287 CAPTURE                          VAL R11
      288 CAPTURE                          VAL R31
      289 CAPTURE                          VAL R39
      290 SETTABLEKS                       R48 R47 K85 ["setView"]
      292 DUPCLOSURE                       R48 K86 [PROTO_19]
      293 SETTABLEKS                       R48 R47 K87 ["getName"]
      295 DUPCLOSURE                       R48 K88 [PROTO_20]
      296 CAPTURE                          VAL R27
      297 SETTABLEKS                       R48 R47 K89 ["shouldShowInstances"]
      299 DUPCLOSURE                       R48 K90 [PROTO_21]
      300 CAPTURE                          VAL R3
      301 CAPTURE                          VAL R32
      302 CAPTURE                          VAL R7
      303 CAPTURE                          VAL R20
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R6
      306 CAPTURE                          VAL R10
      307 CAPTURE                          VAL R26
      308 CAPTURE                          VAL R23
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R24
      311 CAPTURE                          VAL R9
      312 SETTABLEKS                       R48 R47 K91 ["render"]
      314 DUPCLOSURE                       R48 K92 [PROTO_22]
      315 MOVE                             R49 R18
      316 DUPTABLE                         R50 K95 [{"Localization", "Stylizer", "Plugin"}]
      317 GETTABLEKS                       R51 R17 K93 ["Localization"]
      319 SETTABLEKS                       R51 R50 K93 ["Localization"]
      321 GETTABLEKS                       R51 R17 K28 ["Stylizer"]
      323 SETTABLEKS                       R51 R50 K28 ["Stylizer"]
      325 MOVE                             R52 R28
      326 CALL                             R52 0 1
      327 JUMPIFNOT                        R52 ; [+3]
      328 GETTABLEKS                       R51 R17 K94 ["Plugin"]
      330 JUMP                             ; [+1]
      331 LOADNIL                          R51
      332 SETTABLEKS                       R51 R50 K94 ["Plugin"]
      334 CALL                             R49 1 1
      335 MOVE                             R50 R47
      336 CALL                             R49 1 1
      337 MOVE                             R47 R49
      338 GETTABLEKS                       R49 R4 K96 ["connect"]
      340 MOVE                             R50 R48
      341 CALL                             R49 1 1
      342 MOVE                             R50 R47
      343 CALL                             R49 1 -1
      344 CLOSEUPVALS                      R34
      345 RETURN                           R49 -1
