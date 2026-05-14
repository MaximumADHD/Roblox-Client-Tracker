PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["windhose"]
        3 JUMPIFNOT                        R0 ; [+30]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["windhose"]
        7 GETTABLEKS                       R0 R0 K1 ["selectStick"]
        9 JUMPIFNOT                        R0 ; [+24]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K4 [{"windspeed", "windDirection"}]
       12 GETIMPORT                        R3 K6 [workspace]
       14 GETTABLEKS                       R3 R3 K7 ["GlobalWind"]
       16 GETTABLEKS                       R3 R3 K8 ["Magnitude"]
       18 SETTABLEKS                       R3 R2 K2 ["windspeed"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["windhose"]
       23 GETTABLEKS                       R3 R3 K1 ["selectStick"]
       25 GETTABLEKS                       R3 R3 K9 ["CFrame"]
       27 GETTABLEKS                       R3 R3 K10 ["LookVector"]
       29 SETTABLEKS                       R3 R2 K3 ["windDirection"]
       31 NAMECALL                         R0 R0 K11 ["setState"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isChangingPitch"}]
        2 SETTABLEKS                       R0 R3 K0 ["isChangingPitch"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isChangingYaw"}]
        2 SETTABLEKS                       R0 R3 K0 ["isChangingYaw"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isChangingYaw", "isChangingPitch"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isChangingYaw"]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["isChangingPitch"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isChangingYaw", "isChangingPitch"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isChangingYaw"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["isChangingPitch"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isChangingYaw", "isChangingPitch"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isChangingYaw"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["isChangingPitch"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["cameraRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["viewportRef"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K3 ["textLabelRef"]
       18 GETUPVAL                         R1 1
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K4 ["windhose"]
       22 DUPTABLE                         R3 K9 [{"windspeed", "windDirection", "isChangingPitch", "isChangingYaw"}]
       23 GETIMPORT                        R4 K11 [workspace]
       25 GETTABLEKS                       R4 R4 K12 ["GlobalWind"]
       27 GETTABLEKS                       R4 R4 K13 ["Magnitude"]
       29 SETTABLEKS                       R4 R3 K5 ["windspeed"]
       31 GETIMPORT                        R4 K11 [workspace]
       33 GETTABLEKS                       R4 R4 K12 ["GlobalWind"]
       35 GETTABLEKS                       R4 R4 K14 ["Unit"]
       37 SETTABLEKS                       R4 R3 K6 ["windDirection"]
       39 LOADB                            R4 0
       40 SETTABLEKS                       R4 R3 K7 ["isChangingPitch"]
       42 LOADB                            R4 0
       43 SETTABLEKS                       R4 R3 K8 ["isChangingYaw"]
       45 NAMECALL                         R1 R0 K15 ["setState"]
       47 CALL                             R1 2 0
       48 NEWCLOSURE                       R1 P0
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K16 ["onWindChanged"]
       52 NEWCLOSURE                       R1 P1
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K17 ["onisChangingPitchChanged"]
       56 NEWCLOSURE                       R1 P2
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K18 ["onisChangingYawChanged"]
       60 NEWCLOSURE                       R1 P3
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K19 ["onYawStateRequested"]
       64 NEWCLOSURE                       R1 P4
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K20 ["onPitchStateRequested"]
       68 NEWCLOSURE                       R1 P5
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K21 ["onSpeedStateRequested"]
       72 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["ViewportSize"]
        8 GETTABLE                         R2 R3 R0
        9 LOADK                            R3 K5 [0.5]
       10 LOADK                            R4 K5 [0.5]
       11 GETUPVAL                         R5 0
       12 JUMPIFNOTLT                      R5 R2 ; [+16]
       14 GETUPVAL                         R5 1
       15 LOADK                            R8 K6 ["WindControl_Position"]
       16 MOVE                             R9 R0
       17 CONCAT                           R7 R8 R9
       18 NAMECALL                         R5 R5 K7 ["GetSetting"]
       20 CALL                             R5 2 1
       21 OR                               R3 R5 R1
       22 GETUPVAL                         R7 0
       23 SUB                              R6 R2 R7
       24 MUL                              R5 R3 R6
       25 GETUPVAL                         R8 0
       26 MUL                              R7 R3 R8
       27 ADD                              R6 R5 R7
       28 DIV                              R4 R6 R2
       29 RETURN                           R3 2

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K3 ["viewportRef"]
        9 NAMECALL                         R2 R2 K4 ["getValue"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R1 ; [+74]
       13 JUMPIFNOT                        R2 ; [+73]
       14 GETTABLEKS                       R3 R2 K5 ["AbsoluteSize"]
       16 GETTABLEKS                       R3 R3 K6 ["X"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 GETIMPORT                        R8 K8 [game]
       23 GETTABLEKS                       R8 R8 K9 ["Workspace"]
       25 GETTABLEKS                       R8 R8 K10 ["CurrentCamera"]
       27 GETTABLEKS                       R8 R8 K11 ["ViewportSize"]
       29 GETTABLEKS                       R7 R8 K6 ["X"]
       31 LOADK                            R8 K12 [0.5]
       32 LOADK                            R9 K12 [0.5]
       33 JUMPIFNOTLT                      R3 R7 ; [+11]
       35 LOADK                            R12 K14 ["WindControl_PositionX"]
       36 NAMECALL                         R10 R1 K15 ["GetSetting"]
       38 CALL                             R10 2 1
       39 ORK                              R8 R10 K13 [1]
       40 SUB                              R11 R7 R3
       41 MUL                              R10 R8 R11
       42 MUL                              R12 R8 R3
       43 ADD                              R11 R10 R12
       44 DIV                              R9 R11 R7
       45 MOVE                             R5 R8
       46 MOVE                             R6 R9
       47 GETIMPORT                        R10 K8 [game]
       49 GETTABLEKS                       R10 R10 K9 ["Workspace"]
       51 GETTABLEKS                       R10 R10 K10 ["CurrentCamera"]
       53 GETTABLEKS                       R10 R10 K11 ["ViewportSize"]
       55 GETTABLEKS                       R9 R10 K16 ["Y"]
       57 LOADK                            R10 K12 [0.5]
       58 LOADK                            R11 K12 [0.5]
       59 JUMPIFNOTLT                      R3 R9 ; [+11]
       61 LOADK                            R14 K18 ["WindControl_PositionY"]
       62 NAMECALL                         R12 R1 K15 ["GetSetting"]
       64 CALL                             R12 2 1
       65 ORK                              R10 R12 K17 [0]
       66 SUB                              R13 R9 R3
       67 MUL                              R12 R10 R13
       68 MUL                              R14 R10 R3
       69 ADD                              R13 R12 R14
       70 DIV                              R11 R13 R9
       71 MOVE                             R7 R10
       72 MOVE                             R8 R11
       73 GETIMPORT                        R9 K21 [Vector2.new]
       75 MOVE                             R10 R5
       76 MOVE                             R11 R7
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R2 K22 ["AnchorPoint"]
       80 GETIMPORT                        R9 K25 [UDim2.fromScale]
       82 MOVE                             R10 R6
       83 MOVE                             R11 R8
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R2 K26 ["Position"]
       87 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["Workspace"]
        4 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R2 K4 ["ViewportSize"]
        8 GETTABLE                         R1 R2 R0
        9 LOADK                            R2 K5 [0.5]
       10 LOADK                            R3 K5 [0.5]
       11 GETUPVAL                         R4 0
       12 JUMPIFNOTLT                      R4 R1 ; [+19]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K6 ["AbsolutePosition"]
       17 GETTABLE                         R5 R6 R0
       18 LOADN                            R6 0
       19 GETUPVAL                         R8 0
       20 SUB                              R7 R1 R8
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K9 [math.clamp]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R6 0
       26 SUB                              R5 R1 R6
       27 DIV                              R2 R4 R5
       28 GETUPVAL                         R7 0
       29 MUL                              R6 R2 R7
       30 ADD                              R5 R4 R6
       31 DIV                              R3 R5 R1
       32 GETUPVAL                         R4 2
       33 LOADK                            R7 K10 ["WindControl_Position"]
       34 MOVE                             R8 R0
       35 CONCAT                           R6 R7 R8
       36 MOVE                             R7 R2
       37 NAMECALL                         R4 R4 K11 ["SetSetting"]
       39 CALL                             R4 3 0
       40 RETURN                           R2 2

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K3 ["viewportRef"]
        9 NAMECALL                         R2 R2 K4 ["getValue"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R1 ; [+95]
       13 JUMPIFNOT                        R2 ; [+94]
       14 GETTABLEKS                       R3 R2 K5 ["AbsoluteSize"]
       16 GETTABLEKS                       R3 R3 K6 ["X"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 GETIMPORT                        R8 K8 [game]
       24 GETTABLEKS                       R8 R8 K9 ["Workspace"]
       26 GETTABLEKS                       R8 R8 K10 ["CurrentCamera"]
       28 GETTABLEKS                       R8 R8 K11 ["ViewportSize"]
       30 GETTABLEKS                       R7 R8 K6 ["X"]
       32 LOADK                            R8 K12 [0.5]
       33 LOADK                            R9 K12 [0.5]
       34 JUMPIFNOTLT                      R3 R7 ; [+16]
       36 GETTABLEKS                       R12 R2 K13 ["AbsolutePosition"]
       38 GETTABLEKS                       R11 R12 K6 ["X"]
       40 LOADN                            R12 0
       41 SUB                              R13 R7 R3
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R10 K16 [math.clamp]
       45 CALL                             R10 3 1
       46 SUB                              R11 R7 R3
       47 DIV                              R8 R10 R11
       48 MUL                              R12 R8 R3
       49 ADD                              R11 R10 R12
       50 DIV                              R9 R11 R7
       51 LOADK                            R12 K17 ["WindControl_PositionX"]
       52 MOVE                             R13 R8
       53 NAMECALL                         R10 R1 K18 ["SetSetting"]
       55 CALL                             R10 3 0
       56 MOVE                             R5 R8
       57 MOVE                             R6 R9
       58 GETIMPORT                        R10 K8 [game]
       60 GETTABLEKS                       R10 R10 K9 ["Workspace"]
       62 GETTABLEKS                       R10 R10 K10 ["CurrentCamera"]
       64 GETTABLEKS                       R10 R10 K11 ["ViewportSize"]
       66 GETTABLEKS                       R9 R10 K19 ["Y"]
       68 LOADK                            R10 K12 [0.5]
       69 LOADK                            R11 K12 [0.5]
       70 JUMPIFNOTLT                      R3 R9 ; [+16]
       72 GETTABLEKS                       R14 R2 K13 ["AbsolutePosition"]
       74 GETTABLEKS                       R13 R14 K19 ["Y"]
       76 LOADN                            R14 0
       77 SUB                              R15 R9 R3
       78 FASTCALL                         MATH_CLAMP ; [+2]
       79 GETIMPORT                        R12 K16 [math.clamp]
       81 CALL                             R12 3 1
       82 SUB                              R13 R9 R3
       83 DIV                              R10 R12 R13
       84 MUL                              R14 R10 R3
       85 ADD                              R13 R12 R14
       86 DIV                              R11 R13 R9
       87 LOADK                            R14 K20 ["WindControl_PositionY"]
       88 MOVE                             R15 R10
       89 NAMECALL                         R12 R1 K18 ["SetSetting"]
       91 CALL                             R12 3 0
       92 MOVE                             R7 R10
       93 MOVE                             R8 R11
       94 GETIMPORT                        R9 K23 [Vector2.new]
       96 MOVE                             R10 R5
       97 MOVE                             R11 R7
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R2 K24 ["AnchorPoint"]
      101 GETIMPORT                        R9 K27 [UDim2.fromScale]
      103 MOVE                             R10 R6
      104 MOVE                             R11 R8
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R2 K28 ["Position"]
      108 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["rbxasset://models/WindControl/windhose.rbxm"]
        2 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["mounted"]
        4 JUMPIF                           R1 ; [+2]
        5 CLOSEUPVALS                      R0
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K2 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R1 1 0
       13 JUMPIFNOTEQKNIL                  R0 ; [+3]
       15 CLOSEUPVALS                      R0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 SETTABLEKS                       R0 R1 K3 ["windControlModel"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K4 ["viewportRef"]
       23 NAMECALL                         R1 R1 K5 ["getValue"]
       25 CALL                             R1 1 1
       26 JUMPIFNOT                        R1 ; [+49]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K3 ["windControlModel"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K4 ["viewportRef"]
       33 NAMECALL                         R2 R2 K5 ["getValue"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K6 ["Parent"]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K7 ["windhose"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K3 ["windControlModel"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K8 ["cameraRef"]
       47 NAMECALL                         R4 R4 K5 ["getValue"]
       49 CALL                             R4 1 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K4 ["viewportRef"]
       53 NAMECALL                         R5 R5 K5 ["getValue"]
       55 CALL                             R5 1 1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K9 ["onWindChanged"]
       59 LOADNIL                          R7
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K10 ["onYawStateRequested"]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K11 ["onPitchStateRequested"]
       66 NAMECALL                         R1 R1 K12 ["init"]
       68 CALL                             R1 8 0
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R1 R1 K7 ["windhose"]
       72 LOADB                            R3 1
       73 NAMECALL                         R1 R1 K13 ["setEnabled"]
       75 CALL                             R1 2 0
       76 GETUPVAL                         R1 0
       77 LOADB                            R2 1
       78 SETTABLEKS                       R2 R1 K14 ["loaded"]
       80 CLOSEUPVALS                      R0
       81 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [coroutine.wrap]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["mounted"]
        2 JUMPIFNOT                        R1 ; [+18]
        3 GETTABLEKS                       R1 R0 K1 ["windhose"]
        5 LOADB                            R3 0
        6 NAMECALL                         R1 R1 K2 ["setEnabled"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["windControlModel"]
       11 JUMPIFEQKNIL                     R1 ; [+9]
       13 GETTABLEKS                       R1 R0 K3 ["windControlModel"]
       15 NAMECALL                         R1 R1 K4 ["Destroy"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K3 ["windControlModel"]
       21 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["windhose"]
        3 NAMECALL                         R0 R0 K1 ["onMouseEnter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["windhose"]
        3 NAMECALL                         R0 R0 K1 ["onMouseLeave"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["windhose"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 NAMECALL                         R3 R3 K1 ["onMouseButton1Down"]
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["windhose"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 NAMECALL                         R3 R3 K1 ["onMouseMove"]
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MainGui"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["createPortal"]
        9 DUPTABLE                         R4 K5 [{"WindControl"}]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K6 ["createElement"]
       13 LOADK                            R6 K7 ["Folder"]
       14 NEWTABLE                         R7 0 0
       16 DUPTABLE                         R8 K9 [{"Screengui"}]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K6 ["createElement"]
       20 LOADK                            R10 K10 ["ScreenGui"]
       21 NEWTABLE                         R11 0 0
       23 DUPTABLE                         R12 K12 [{"ViewportFrame"}]
       24 GETUPVAL                         R13 1
       25 GETTABLEKS                       R13 R13 K6 ["createElement"]
       27 LOADK                            R14 K11 ["ViewportFrame"]
       28 DUPTABLE                         R15 K19 [{"ZIndex", "Size", "Position", "CurrentCamera", "BackgroundTransparency", "ref"}]
       29 LOADN                            R16 1
       30 SETTABLEKS                       R16 R15 K13 ["ZIndex"]
       32 GETTABLEKS                       R16 R2 K11 ["ViewportFrame"]
       34 GETTABLEKS                       R16 R16 K14 ["Size"]
       36 SETTABLEKS                       R16 R15 K14 ["Size"]
       38 GETTABLEKS                       R16 R2 K11 ["ViewportFrame"]
       40 GETTABLEKS                       R16 R16 K15 ["Position"]
       42 SETTABLEKS                       R16 R15 K15 ["Position"]
       44 GETTABLEKS                       R16 R0 K20 ["cameraRef"]
       46 SETTABLEKS                       R16 R15 K16 ["CurrentCamera"]
       48 LOADN                            R16 1
       49 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
       51 GETTABLEKS                       R16 R0 K21 ["viewportRef"]
       53 SETTABLEKS                       R16 R15 K18 ["ref"]
       55 DUPTABLE                         R16 K26 [{"Background", "Camera", "ImageButton", "WindspeedDisplay"}]
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K6 ["createElement"]
       59 GETUPVAL                         R18 2
       60 GETTABLEKS                       R19 R2 K27 ["BackgroundPane"]
       62 CALL                             R17 2 1
       63 SETTABLEKS                       R17 R16 K22 ["Background"]
       65 GETUPVAL                         R17 1
       66 GETTABLEKS                       R17 R17 K6 ["createElement"]
       68 LOADK                            R18 K23 ["Camera"]
       69 DUPTABLE                         R19 K31 [{"CameraType", "CFrame", "FieldOfView", "ref"}]
       70 GETIMPORT                        R20 K34 [Enum.CameraType.Scriptable]
       72 SETTABLEKS                       R20 R19 K28 ["CameraType"]
       74 GETIMPORT                        R20 K36 [CFrame.new]
       76 LOADK                            R21 K37 [{0, 0, 0}]
       77 LOADK                            R22 K37 [{0, 0, 0}]
       78 CALL                             R20 2 1
       79 SETTABLEKS                       R20 R19 K29 ["CFrame"]
       81 GETTABLEKS                       R20 R2 K38 ["CameraFOV"]
       83 SETTABLEKS                       R20 R19 K30 ["FieldOfView"]
       85 GETTABLEKS                       R20 R0 K20 ["cameraRef"]
       87 SETTABLEKS                       R20 R19 K18 ["ref"]
       89 CALL                             R17 2 1
       90 SETTABLEKS                       R17 R16 K23 ["Camera"]
       92 GETUPVAL                         R17 1
       93 GETTABLEKS                       R17 R17 K6 ["createElement"]
       95 LOADK                            R18 K24 ["ImageButton"]
       96 NEWTABLE                         R19 8 0
       98 GETIMPORT                        R20 K41 [UDim2.fromScale]
      100 LOADN                            R21 1
      101 LOADN                            R22 1
      102 CALL                             R20 2 1
      103 SETTABLEKS                       R20 R19 K14 ["Size"]
      105 LOADN                            R20 1
      106 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      108 GETUPVAL                         R20 1
      109 GETTABLEKS                       R20 R20 K42 ["Event"]
      111 GETTABLEKS                       R20 R20 K43 ["MouseEnter"]
      113 NEWCLOSURE                       R21 P0
      114 CAPTURE                          VAL R0
      115 SETTABLE                         R21 R19 R20
      116 GETUPVAL                         R20 1
      117 GETTABLEKS                       R20 R20 K42 ["Event"]
      119 GETTABLEKS                       R20 R20 K44 ["MouseLeave"]
      121 NEWCLOSURE                       R21 P1
      122 CAPTURE                          VAL R0
      123 SETTABLE                         R21 R19 R20
      124 GETUPVAL                         R20 1
      125 GETTABLEKS                       R20 R20 K42 ["Event"]
      127 GETTABLEKS                       R20 R20 K45 ["MouseButton1Down"]
      129 NEWCLOSURE                       R21 P2
      130 CAPTURE                          VAL R0
      131 SETTABLE                         R21 R19 R20
      132 GETUPVAL                         R20 1
      133 GETTABLEKS                       R20 R20 K42 ["Event"]
      135 GETTABLEKS                       R20 R20 K46 ["MouseMoved"]
      137 NEWCLOSURE                       R21 P3
      138 CAPTURE                          VAL R0
      139 SETTABLE                         R21 R19 R20
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K24 ["ImageButton"]
      143 GETUPVAL                         R17 1
      144 GETTABLEKS                       R17 R17 K6 ["createElement"]
      146 GETUPVAL                         R18 3
      147 DUPTABLE                         R19 K54 [{"Windspeed", "WindDirection", "isChangingPitch", "isChangingYaw", "yawStateRequested", "pitchStateRequested", "speedStateRequested"}]
      148 GETTABLEKS                       R20 R0 K55 ["state"]
      150 GETTABLEKS                       R20 R20 K56 ["windspeed"]
      152 SETTABLEKS                       R20 R19 K47 ["Windspeed"]
      154 GETTABLEKS                       R20 R0 K55 ["state"]
      156 GETTABLEKS                       R20 R20 K57 ["windDirection"]
      158 SETTABLEKS                       R20 R19 K48 ["WindDirection"]
      160 GETTABLEKS                       R20 R0 K55 ["state"]
      162 GETTABLEKS                       R20 R20 K49 ["isChangingPitch"]
      164 SETTABLEKS                       R20 R19 K49 ["isChangingPitch"]
      166 GETTABLEKS                       R20 R0 K55 ["state"]
      168 GETTABLEKS                       R20 R20 K50 ["isChangingYaw"]
      170 SETTABLEKS                       R20 R19 K50 ["isChangingYaw"]
      172 GETTABLEKS                       R20 R0 K58 ["onYawStateRequested"]
      174 SETTABLEKS                       R20 R19 K51 ["yawStateRequested"]
      176 GETTABLEKS                       R20 R0 K59 ["onPitchStateRequested"]
      178 SETTABLEKS                       R20 R19 K52 ["pitchStateRequested"]
      180 GETTABLEKS                       R20 R0 K60 ["onSpeedStateRequested"]
      182 SETTABLEKS                       R20 R19 K53 ["speedStateRequested"]
      184 CALL                             R17 2 1
      185 SETTABLEKS                       R17 R16 K25 ["WindspeedDisplay"]
      187 CALL                             R13 3 1
      188 SETTABLEKS                       R13 R12 K11 ["ViewportFrame"]
      190 CALL                             R9 3 1
      191 SETTABLEKS                       R9 R8 K8 ["Screengui"]
      193 CALL                             R5 3 1
      194 SETTABLEKS                       R5 R4 K4 ["WindControl"]
      196 GETUPVAL                         R5 4
      197 CALL                             R3 2 -1
      198 RETURN                           R3 -1

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["mounted"]
        3 NAMECALL                         R1 R0 K1 ["loadWindControl"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K2 ["loadPosition"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["unloadWindControl"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["clampAndSavePosition"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["InsertService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K14 ["Style"]
       44 GETTABLEKS                       R6 R6 K15 ["Stylizer"]
       46 GETTABLEKS                       R7 R5 K16 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K17 ["withContext"]
       50 GETTABLEKS                       R9 R5 K18 ["UI"]
       52 GETTABLEKS                       R10 R9 K19 ["Pane"]
       54 GETIMPORT                        R11 K9 [require]
       56 GETIMPORT                        R12 K6 [script]
       58 GETTABLEKS                       R12 R12 K7 ["Parent"]
       60 GETTABLEKS                       R12 R12 K20 ["Windhose"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K9 [require]
       65 GETIMPORT                        R13 K6 [script]
       67 GETTABLEKS                       R13 R13 K7 ["Parent"]
       69 GETTABLEKS                       R13 R13 K21 ["WindspeedDisplay"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R3 K22 ["PureComponent"]
       74 LOADK                            R15 K23 ["MainGui"]
       75 NAMECALL                         R13 R13 K24 ["extend"]
       77 CALL                             R13 2 1
       78 DUPCLOSURE                       R14 K25 [PROTO_6]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R14 R13 K26 ["init"]
       83 DUPCLOSURE                       R14 K27 [PROTO_8]
       84 SETTABLEKS                       R14 R13 K28 ["loadPosition"]
       86 DUPCLOSURE                       R14 K29 [PROTO_10]
       87 SETTABLEKS                       R14 R13 K30 ["clampAndSavePosition"]
       89 DUPCLOSURE                       R14 K31 [PROTO_13]
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R14 R13 K32 ["loadWindControl"]
       93 DUPCLOSURE                       R14 K33 [PROTO_14]
       94 SETTABLEKS                       R14 R13 K34 ["unloadWindControl"]
       96 DUPCLOSURE                       R14 K35 [PROTO_19]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R14 R13 K36 ["render"]
      104 DUPCLOSURE                       R14 K37 [PROTO_20]
      105 SETTABLEKS                       R14 R13 K38 ["didMount"]
      107 DUPCLOSURE                       R14 K39 [PROTO_21]
      108 SETTABLEKS                       R14 R13 K40 ["willUnmount"]
      110 MOVE                             R14 R8
      111 DUPTABLE                         R15 K42 [{"Plugin", "Stylizer"}]
      112 GETTABLEKS                       R16 R7 K41 ["Plugin"]
      114 SETTABLEKS                       R16 R15 K41 ["Plugin"]
      116 SETTABLEKS                       R6 R15 K15 ["Stylizer"]
      118 CALL                             R14 1 1
      119 MOVE                             R15 R13
      120 CALL                             R14 1 1
      121 MOVE                             R13 R14
      122 RETURN                           R13 1
