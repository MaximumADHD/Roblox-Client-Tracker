PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKN                       R1 K0 [-1] ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 -1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQKN                    R1 K0 [-1] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["findKeypoint"]
       13 GETTABLEKS                       R2 R0 K2 ["newSortedKeypoints"]
       15 GETTABLEKS                       R4 R0 K3 ["previousUnorderedKeypoints"]
       17 GETUPVAL                         R5 2
       18 GETTABLE                         R3 R4 R5
       19 CALL                             R1 2 1
       20 JUMPIFEQKNIL                     R1 ; [+4]
       22 GETUPVAL                         R2 4
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["guestUpdateSignal"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+3]
        3 MOVE                             R3 R0
        4 JUMP                             ; [+1]
        5 LOADN                            R3 -1
        6 CALL                             R2 1 0
        7 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+4]
        9 GETUPVAL                         R2 1
       10 LOADN                            R3 -1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+12]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["beginEditingAsync"]
        8 CALL                             R2 0 0
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K2 ["finishEditing"]
       19 CALL                             R2 0 0
       20 GETUPVAL                         R2 2
       21 LOADN                            R3 -1
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 4
       24 LOADB                            R3 0
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateKeypoint"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R3 K0 ["Start"]
        4 JUMP                             ; [+1]
        5 LOADK                            R3 K1 ["Stop"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R3 K0 ["Start"]
        4 JUMP                             ; [+1]
        5 LOADK                            R3 K1 ["Stop"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADNIL                          R6
        7 GETUPVAL                         R7 1
        8 JUMPIFNOTEQ                      R4 R7 ; [+20]
       10 DUPTABLE                         R7 K8 [{[1], ["OutlineColor3"], ["OutlineThickness"] = 2, ["Size"] = 11, ["ZIndex"] = 15}]
       11 GETIMPORT                        R8 K10 [Color3.fromRGB]
       13 LOADN                            R9 51
       14 LOADN                            R10 95
       15 LOADN                            R11 255
       16 CALL                             R8 3 1
       17 SETTABLEKS                       R8 R7 K0 ["Color3"]
       19 GETIMPORT                        R8 K10 [Color3.fromRGB]
       21 LOADN                            R9 255
       22 LOADN                            R10 255
       23 LOADN                            R11 255
       24 CALL                             R8 3 1
       25 SETTABLEKS                       R8 R7 K1 ["OutlineColor3"]
       27 MOVE                             R6 R7
       28 JUMP                             ; [+18]
       29 DUPTABLE                         R7 K14 [{[1], ["OutlineColor3"], ["OutlineThickness"] = 3, ["Size"] = 7, ["ZIndex"] = 10}]
       30 GETIMPORT                        R8 K10 [Color3.fromRGB]
       32 LOADN                            R9 255
       33 LOADN                            R10 255
       34 LOADN                            R11 255
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K0 ["Color3"]
       38 GETIMPORT                        R8 K10 [Color3.fromRGB]
       40 LOADN                            R9 51
       41 LOADN                            R10 95
       42 LOADN                            R11 255
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K1 ["OutlineColor3"]
       46 MOVE                             R6 R7
       47 MOVE                             R7 R4
       48 GETUPVAL                         R8 2
       49 JUMPIFNOTEQ                      R4 R8 ; [+4]
       51 GETUPVAL                         R8 3
       52 JUMPIFNOT                        R8 ; [+1]
       53 LOADK                            R7 K15 ["Ghost"]
       54 LOADK                            R9 K16 ["Keypoint"]
       55 MOVE                             R10 R7
       56 CONCAT                           R8 R9 R10
       57 GETUPVAL                         R9 4
       58 GETUPVAL                         R10 5
       59 DUPTABLE                         R11 K24 [{"style", "Keypoint", "MinY", "MaxY", "XLocked", "OnKeypointChanged", "SetDragged", "SetHovered"}]
       60 SETTABLEKS                       R6 R11 K17 ["style"]
       62 SETTABLEKS                       R5 R11 K16 ["Keypoint"]
       64 GETUPVAL                         R12 6
       65 GETTABLEKS                       R12 R12 K25 ["GraphMinY"]
       67 SETTABLEKS                       R12 R11 K18 ["MinY"]
       69 GETUPVAL                         R12 6
       70 GETTABLEKS                       R12 R12 K26 ["GraphMaxY"]
       72 SETTABLEKS                       R12 R11 K19 ["MaxY"]
       74 LOADB                            R12 1
       75 JUMPIFEQKN                       R4 K27 [1] ; [+7]
       77 GETUPVAL                         R14 0
       78 LENGTH                           R13 R14
       79 JUMPIFEQ                         R4 R13 ; [+2]
       81 LOADB                            R12 0 +1
       82 LOADB                            R12 1
       83 SETTABLEKS                       R12 R11 K20 ["XLocked"]
       85 NEWCLOSURE                       R12 P0
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R12 R11 K21 ["OnKeypointChanged"]
       90 NEWCLOSURE                       R12 P1
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R12 R11 K22 ["SetDragged"]
       95 NEWCLOSURE                       R12 P2
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R12 R11 K23 ["SetHovered"]
      100 CALL                             R9 2 1
      101 SETTABLE                         R9 R0 R8
      102 FORGLOOP                         R1 2 ; [-97]
      104 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromUnorderedKeypoints"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K8 [{[1], ["ZIndex"] = -1, ["Keypoints"], ["OutlineThickness"] = 4, ["ScanLines"] = 300}]
        3 GETIMPORT                        R3 K10 [Color3.fromRGB]
        5 LOADN                            R4 85
        6 LOADN                            R5 85
        7 LOADN                            R6 85
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K0 ["Color3"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R3 R2 K3 ["Keypoints"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R6 K1 [{"Position"}]
        7 GETIMPORT                        R7 K4 [Vector2.new]
        9 GETTABLEKS                       R8 R5 K5 ["Time"]
       11 GETTABLEKS                       R9 R5 K6 ["Value"]
       13 CALL                             R7 2 1
       14 SETTABLEKS                       R7 R6 K0 ["Position"]
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-12]
       19 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 DUPTABLE                         R1 K4 [{"Grid", "Curve", "XScale", "YScale"}]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K8 [{"XAxis", "YAxis", "ZIndex"}]
        6 DUPTABLE                         R5 K12 [{["Type"] = "Uniform", ["Unit"]}]
        7 GETUPVAL                         R7 3
        8 GETTABLEKS                       R7 R7 K14 ["GraphMaxX"]
       10 DIVK                             R6 R7 K13 [4]
       11 SETTABLEKS                       R6 R5 K11 ["Unit"]
       13 SETTABLEKS                       R5 R4 K5 ["XAxis"]
       15 DUPTABLE                         R5 K12 [{["Type"] = "Uniform", ["Unit"]}]
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R8 R8 K15 ["GraphMaxY"]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K16 ["GraphMinY"]
       22 SUB                              R7 R8 R9
       23 DIVK                             R6 R7 K13 [4]
       24 SETTABLEKS                       R6 R5 K11 ["Unit"]
       26 SETTABLEKS                       R5 R4 K6 ["YAxis"]
       28 MOVE                             R5 R0
       29 CALL                             R5 0 1
       30 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R1 K0 ["Grid"]
       35 GETUPVAL                         R2 1
       36 GETUPVAL                         R3 4
       37 DUPTABLE                         R4 K21 [{["Points"], ["Color3"], ["Thickness"] = 1.25, ["ZIndex"]}]
       38 GETUPVAL                         R5 5
       39 SETTABLEKS                       R5 R4 K17 ["Points"]
       41 GETIMPORT                        R5 K23 [Color3.fromRGB]
       43 LOADN                            R6 255
       44 LOADN                            R7 255
       45 LOADN                            R8 255
       46 CALL                             R5 3 1
       47 SETTABLEKS                       R5 R4 K18 ["Color3"]
       49 MOVE                             R5 R0
       50 CALL                             R5 0 1
       51 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       53 CALL                             R2 2 1
       54 SETTABLEKS                       R2 R1 K1 ["Curve"]
       56 GETUPVAL                         R2 1
       57 GETUPVAL                         R3 6
       58 DUPTABLE                         R4 K33 [{["Side"] = "Bottom", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["BackgroundTransparency"] = 1, ["ZIndex"]}]
       59 DUPTABLE                         R5 K12 [{["Type"] = "Uniform", ["Unit"]}]
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R7 R7 K14 ["GraphMaxX"]
       63 DIVK                             R6 R7 K13 [4]
       64 SETTABLEKS                       R6 R5 K11 ["Unit"]
       66 SETTABLEKS                       R5 R4 K26 ["Schema"]
       68 MOVE                             R5 R0
       69 CALL                             R5 0 1
       70 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       72 CALL                             R2 2 1
       73 SETTABLEKS                       R2 R1 K2 ["XScale"]
       75 GETUPVAL                         R2 1
       76 GETUPVAL                         R3 6
       77 DUPTABLE                         R4 K36 [{["Side"] = "Left", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
       78 DUPTABLE                         R5 K12 [{["Type"] = "Uniform", ["Unit"]}]
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R8 R8 K15 ["GraphMaxY"]
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R9 R9 K16 ["GraphMinY"]
       85 SUB                              R7 R8 R9
       86 DIVK                             R6 R7 K13 [4]
       87 SETTABLEKS                       R6 R5 K11 ["Unit"]
       89 SETTABLEKS                       R5 R4 K26 ["Schema"]
       91 GETIMPORT                        R5 K39 [UDim.new]
       93 LOADN                            R6 0
       94 LOADN                            R7 30
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R4 K35 ["Size"]
       98 MOVE                             R5 R0
       99 CALL                             R5 0 1
      100 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
      102 CALL                             R2 2 1
      103 SETTABLEKS                       R2 R1 K3 ["YScale"]
      105 RETURN                           R1 1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+25]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 4
       11 LOADN                            R2 -1
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 5
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 6
       17 GETTABLEKS                       R1 R1 K0 ["addKeypointAsync"]
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 7
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 6
       23 GETTABLEKS                       R1 R1 K1 ["beginEditingAsync"]
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKN                       R0 K0 [-1] ; [+6]
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R2 1
        5 LENGTH                           R1 R2
        6 JUMPIFNOTLT                      R1 R0 ; [+3]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["calculateGhostKeypoint"]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R3 4
       19 DUPTABLE                         R4 K5 [{"style", "Keypoint", "SetDragged"}]
       20 DUPTABLE                         R5 K13 [{["Color3"], ["OutlineThickness"] = 0, ["Size"] = 9, ["ZIndex"] = 10}]
       21 GETIMPORT                        R6 K15 [Color3.fromRGB]
       23 LOADN                            R7 255
       24 LOADN                            R8 255
       25 LOADN                            R9 255
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K6 ["Color3"]
       29 SETTABLEKS                       R5 R4 K2 ["style"]
       31 SETTABLEKS                       R1 R4 K3 ["Keypoint"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R5 R4 K4 ["SetDragged"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K5 [{[1], ["Keypoints"], ["SetGhostKeypoint"], ["ZIndex"] = 8}]
        3 LOADB                            R3 0
        4 GETUPVAL                         R5 2
        5 LENGTH                           R4 R5
        6 GETUPVAL                         R5 3
        7 JUMPIFNOTLT                      R4 R5 ; [+10]
        9 LOADB                            R3 0
       10 GETUPVAL                         R4 4
       11 JUMPIFNOTEQKN                    R4 K6 [-1] ; [+6]
       13 GETUPVAL                         R4 5
       14 JUMPIFEQKN                       R4 K6 [-1] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K0 ["Enabled"]
       20 GETUPVAL                         R3 2
       21 SETTABLEKS                       R3 R2 K1 ["Keypoints"]
       23 GETUPVAL                         R3 6
       24 SETTABLEKS                       R3 R2 K2 ["SetGhostKeypoint"]
       26 CALL                             R0 2 -1
       27 RETURN                           R0 -1

PROTO_16:
        0 DUPTABLE                         R0 K3 [{"Envelope", "GhostKeypointTracker", "KeypointGhost"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Envelope"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["GhostKeypointTracker"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["KeypointGhost"]
       10 GETUPVAL                         R1 3
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 SETTABLE                         R5 R0 R4
       15 FORGLOOP                         R1 2 ; [-2]
       17 GETUPVAL                         R1 4
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 SETTABLE                         R5 R0 R4
       22 FORGLOOP                         R1 2 ; [-2]
       24 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["unorderedKeypoints"]
        2 GETTABLEKS                       R2 R0 K1 ["unorderedKeypointsBinding"]
        4 GETTABLEKS                       R3 R0 K2 ["controller"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["useState"]
        9 LOADN                            R5 -1
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["useState"]
       14 LOADN                            R7 -1
       15 CALL                             R6 1 2
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["useState"]
       19 LOADN                            R9 -1
       20 CALL                             R8 1 2
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K3 ["useState"]
       24 LOADN                            R11 -1
       25 CALL                             R10 1 2
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R12 R12 K3 ["useState"]
       29 LOADB                            R13 0
       30 CALL                             R12 1 2
       31 GETUPVAL                         R14 1
       32 GETTABLEKS                       R14 R14 K4 ["useEventCallback"]
       34 NEWCLOSURE                       R15 P0
       35 CAPTURE                          VAL R10
       36 CAPTURE                          VAL R11
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R5
       40 CALL                             R14 1 1
       41 GETUPVAL                         R15 0
       42 GETTABLEKS                       R15 R15 K5 ["useEffect"]
       44 NEWCLOSURE                       R16 P1
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R14
       48 NEWTABLE                         R17 0 2
       50 GETTABLEKS                       R18 R3 K6 ["guestUpdateSignal"]
       52 MOVE                             R19 R14
       53 SETLIST                          R17 R18 2 [1]
       55 CALL                             R15 2 0
       56 GETUPVAL                         R15 0
       57 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       59 NEWCLOSURE                       R16 P2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R11
       62 NEWTABLE                         R17 0 0
       64 CALL                             R15 2 1
       65 GETUPVAL                         R16 0
       66 GETTABLEKS                       R16 R16 K7 ["useCallback"]
       68 NEWCLOSURE                       R17 P3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R13
       74 NEWTABLE                         R18 0 2
       76 GETTABLEKS                       R19 R3 K8 ["beginEditingAsync"]
       78 GETTABLEKS                       R20 R3 K9 ["finishEditing"]
       80 SETLIST                          R18 R19 2 [1]
       82 CALL                             R16 2 1
       83 GETUPVAL                         R17 4
       84 CALL                             R17 0 1
       85 GETTABLEKS                       R18 R17 K10 ["NumberSequence"]
       87 GETUPVAL                         R19 0
       88 GETTABLEKS                       R19 R19 K11 ["useMemo"]
       90 NEWCLOSURE                       R20 P4
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R12
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R15
      101 NEWTABLE                         R21 0 8
      103 MOVE                             R22 R1
      104 MOVE                             R23 R4
      105 MOVE                             R24 R8
      106 MOVE                             R25 R12
      107 MOVE                             R26 R16
      108 MOVE                             R27 R15
      109 GETTABLEKS                       R28 R3 K12 ["updateKeypoint"]
      111 MOVE                             R29 R18
      112 SETLIST                          R21 R22 8 [1]
      114 CALL                             R19 2 1
      115 GETUPVAL                         R20 0
      116 GETTABLEKS                       R20 R20 K11 ["useMemo"]
      118 NEWCLOSURE                       R21 P5
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          VAL R1
      121 NEWTABLE                         R22 0 1
      123 MOVE                             R23 R1
      124 SETLIST                          R22 R23 1 [1]
      126 CALL                             R20 2 1
      127 GETUPVAL                         R21 0
      128 GETTABLEKS                       R21 R21 K11 ["useMemo"]
      130 NEWCLOSURE                       R22 P6
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          UPVAL U7
      133 CAPTURE                          VAL R20
      134 NEWTABLE                         R23 0 1
      136 MOVE                             R24 R20
      137 SETLIST                          R23 R24 1 [1]
      139 CALL                             R21 2 1
      140 GETUPVAL                         R22 0
      141 GETTABLEKS                       R22 R22 K11 ["useMemo"]
      143 NEWCLOSURE                       R23 P7
      144 CAPTURE                          VAL R20
      145 NEWTABLE                         R24 0 1
      147 MOVE                             R25 R20
      148 SETLIST                          R24 R25 1 [1]
      150 CALL                             R22 2 1
      151 GETUPVAL                         R23 0
      152 GETTABLEKS                       R23 R23 K11 ["useMemo"]
      154 NEWCLOSURE                       R24 P8
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          UPVAL U5
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R18
      159 CAPTURE                          UPVAL U10
      160 CAPTURE                          VAL R22
      161 CAPTURE                          UPVAL U11
      162 NEWTABLE                         R25 0 2
      164 MOVE                             R26 R22
      165 MOVE                             R27 R18
      166 SETLIST                          R25 R26 2 [1]
      168 CALL                             R23 2 1
      169 GETUPVAL                         R24 0
      170 GETTABLEKS                       R24 R24 K11 ["useMemo"]
      172 NEWCLOSURE                       R25 P9
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R20
      175 CAPTURE                          UPVAL U2
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R3
      184 NEWTABLE                         R26 0 4
      186 MOVE                             R27 R10
      187 MOVE                             R28 R20
      188 GETTABLEKS                       R29 R3 K13 ["addKeypointAsync"]
      190 GETTABLEKS                       R30 R3 K8 ["beginEditingAsync"]
      192 SETLIST                          R26 R27 4 [1]
      194 CALL                             R24 2 1
      195 GETUPVAL                         R25 0
      196 GETTABLEKS                       R25 R25 K11 ["useMemo"]
      198 NEWCLOSURE                       R26 P10
      199 CAPTURE                          UPVAL U5
      200 CAPTURE                          UPVAL U12
      201 CAPTURE                          VAL R20
      202 CAPTURE                          UPVAL U13
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R11
      206 NEWTABLE                         R27 0 4
      208 MOVE                             R28 R20
      209 MOVE                             R29 R8
      210 MOVE                             R30 R6
      211 MOVE                             R31 R11
      212 SETLIST                          R27 R28 4 [1]
      214 CALL                             R25 2 1
      215 GETUPVAL                         R26 0
      216 GETTABLEKS                       R26 R26 K11 ["useMemo"]
      218 NEWCLOSURE                       R27 P11
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R23
      224 NEWTABLE                         R28 0 5
      226 MOVE                             R29 R19
      227 MOVE                             R30 R23
      228 MOVE                             R31 R21
      229 MOVE                             R32 R25
      230 MOVE                             R33 R24
      231 SETLIST                          R28 R29 5 [1]
      233 CALL                             R26 2 1
      234 GETUPVAL                         R27 14
      235 CALL                             R27 0 1
      236 GETUPVAL                         R28 8
      237 CALL                             R28 0 1
      238 GETTABLEKS                       R29 R18 K14 ["EditorYPadding"]
      240 GETTABLEKS                       R30 R18 K15 ["EditorFillPadding"]
      242 GETUPVAL                         R31 5
      243 GETUPVAL                         R32 15
      244 DUPTABLE                         R33 K20 [{["tag"] = "flex-none size-full-0 auto-y", ["layout"], ["padding"]}]
      245 DUPTABLE                         R34 K23 [{"FillDirection", "Padding"}]
      246 GETIMPORT                        R35 K26 [Enum.FillDirection.Vertical]
      248 SETTABLEKS                       R35 R34 K21 ["FillDirection"]
      250 GETIMPORT                        R35 K29 [UDim.new]
      252 LOADN                            R36 0
      253 MOVE                             R37 R30
      254 CALL                             R35 2 1
      255 SETTABLEKS                       R35 R34 K22 ["Padding"]
      257 SETTABLEKS                       R34 R33 K18 ["layout"]
      259 DUPTABLE                         R34 K32 [{"top", "bottom"}]
      260 GETIMPORT                        R35 K29 [UDim.new]
      262 LOADN                            R36 0
      263 MOVE                             R37 R29
      264 CALL                             R35 2 1
      265 SETTABLEKS                       R35 R34 K30 ["top"]
      267 GETIMPORT                        R35 K29 [UDim.new]
      269 LOADN                            R36 0
      270 MOVE                             R37 R29
      271 CALL                             R35 2 1
      272 SETTABLEKS                       R35 R34 K31 ["bottom"]
      274 SETTABLEKS                       R34 R33 K19 ["padding"]
      276 DUPTABLE                         R34 K35 [{"Editor", "RowStopsContainer"}]
      277 GETUPVAL                         R35 5
      278 GETUPVAL                         R36 15
      279 DUPTABLE                         R37 K39 [{["tag"] = "flex-none size-full-0 bg-surface-100", ["Size"], ["padding"], ["LayoutOrder"]}]
      280 GETIMPORT                        R38 K41 [UDim2.new]
      282 LOADN                            R39 1
      283 LOADN                            R40 0
      284 LOADN                            R41 0
      285 GETTABLEKS                       R42 R0 K42 ["GraphHeight"]
      287 CALL                             R38 4 1
      288 SETTABLEKS                       R38 R37 K37 ["Size"]
      290 DUPTABLE                         R38 K45 [{"left", "right", "bottom"}]
      291 GETIMPORT                        R39 K29 [UDim.new]
      293 LOADN                            R40 0
      294 GETTABLEKS                       R42 R27 K22 ["Padding"]
      296 GETTABLEKS                       R42 R42 K47 ["Medium"]
      298 MULK                             R41 R42 K46 [3]
      299 CALL                             R39 2 1
      300 SETTABLEKS                       R39 R38 K43 ["left"]
      302 GETIMPORT                        R39 K29 [UDim.new]
      304 LOADN                            R40 0
      305 GETTABLEKS                       R41 R27 K22 ["Padding"]
      307 GETTABLEKS                       R41 R41 K47 ["Medium"]
      309 CALL                             R39 2 1
      310 SETTABLEKS                       R39 R38 K44 ["right"]
      312 GETIMPORT                        R39 K29 [UDim.new]
      314 LOADN                            R40 0
      315 GETTABLEKS                       R42 R27 K22 ["Padding"]
      317 GETTABLEKS                       R42 R42 K47 ["Medium"]
      319 MULK                             R41 R42 K46 [3]
      320 CALL                             R39 2 1
      321 SETTABLEKS                       R39 R38 K31 ["bottom"]
      323 SETTABLEKS                       R38 R37 K19 ["padding"]
      325 MOVE                             R38 R28
      326 CALL                             R38 0 1
      327 SETTABLEKS                       R38 R37 K38 ["LayoutOrder"]
      329 DUPTABLE                         R38 K49 [{"Canvas"}]
      330 GETUPVAL                         R39 5
      331 GETUPVAL                         R40 16
      332 DUPTABLE                         R41 K61 [{["GraphRect"], ["CanvasBackgroundColor3"], ["CanvasBackgroundTransparency"] = 0, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
      333 GETIMPORT                        R42 K63 [Rect.new]
      335 LOADN                            R43 0
      336 GETTABLEKS                       R44 R18 K64 ["GraphMinY"]
      338 GETTABLEKS                       R45 R18 K65 ["GraphMaxX"]
      340 GETTABLEKS                       R46 R18 K66 ["GraphMaxY"]
      342 CALL                             R42 4 1
      343 SETTABLEKS                       R42 R41 K50 ["GraphRect"]
      345 GETTABLEKS                       R42 R27 K67 ["Color"]
      347 GETTABLEKS                       R42 R42 K68 ["Surface"]
      349 GETTABLEKS                       R42 R42 K69 ["Surface_200"]
      351 GETTABLEKS                       R42 R42 K70 ["Color3"]
      353 SETTABLEKS                       R42 R41 K51 ["CanvasBackgroundColor3"]
      355 GETUPVAL                         R42 17
      356 SETTABLEKS                       R42 R41 K56 ["ViewportPaddingLeft"]
      358 GETUPVAL                         R42 17
      359 SETTABLEKS                       R42 R41 K57 ["ViewportPaddingRight"]
      361 GETUPVAL                         R42 17
      362 SETTABLEKS                       R42 R41 K58 ["ViewportPaddingTop"]
      364 GETUPVAL                         R42 17
      365 SETTABLEKS                       R42 R41 K59 ["ViewportPaddingBottom"]
      367 SETTABLEKS                       R26 R41 K60 ["childrenUnclipped"]
      369 CALL                             R39 2 1
      370 SETTABLEKS                       R39 R38 K48 ["Canvas"]
      372 CALL                             R35 3 1
      373 SETTABLEKS                       R35 R34 K33 ["Editor"]
      375 GETUPVAL                         R35 5
      376 GETUPVAL                         R36 15
      377 DUPTABLE                         R37 K72 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      378 MOVE                             R38 R28
      379 CALL                             R38 0 1
      380 SETTABLEKS                       R38 R37 K38 ["LayoutOrder"]
      382 DUPTABLE                         R38 K74 [{"RowStops"}]
      383 GETUPVAL                         R39 5
      384 GETUPVAL                         R40 18
      385 DUPTABLE                         R41 K79 [{"unorderedKeypoints", "unorderedKeypointsBinding", "selectedUnorderedKeypoint", "SetSelectedUnorderedKeypoint", "controller", "MinY", "MaxY"}]
      386 SETTABLEKS                       R1 R41 K0 ["unorderedKeypoints"]
      388 SETTABLEKS                       R2 R41 K1 ["unorderedKeypointsBinding"]
      390 SETTABLEKS                       R4 R41 K75 ["selectedUnorderedKeypoint"]
      392 SETTABLEKS                       R5 R41 K76 ["SetSelectedUnorderedKeypoint"]
      394 SETTABLEKS                       R3 R41 K2 ["controller"]
      396 GETTABLEKS                       R42 R18 K64 ["GraphMinY"]
      398 SETTABLEKS                       R42 R41 K77 ["MinY"]
      400 GETTABLEKS                       R42 R18 K66 ["GraphMaxY"]
      402 SETTABLEKS                       R42 R41 K78 ["MaxY"]
      404 CALL                             R39 2 1
      405 SETTABLEKS                       R39 R38 K73 ["RowStops"]
      407 CALL                             R35 3 1
      408 SETTABLEKS                       R35 R34 K34 ["RowStopsContainer"]
      410 CALL                             R31 3 -1
      411 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Components"]
       31 GETTABLEKS                       R5 R5 K8 ["PropertyEntries"]
       33 GETTABLEKS                       R5 R5 K9 ["PropertyView"]
       35 GETTABLEKS                       R5 R5 K10 ["NumberSequencePropertyView"]
       37 GETTABLEKS                       R5 R5 K13 ["GhostKeypointTracker"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R1 K14 ["Graphing"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Components"]
       49 GETTABLEKS                       R7 R7 K8 ["PropertyEntries"]
       51 GETTABLEKS                       R7 R7 K9 ["PropertyView"]
       53 GETTABLEKS                       R7 R7 K10 ["NumberSequencePropertyView"]
       55 GETTABLEKS                       R7 R7 K15 ["NumberSequenceEnvelope"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K6 [require]
       60 GETTABLEKS                       R8 R0 K7 ["Components"]
       62 GETTABLEKS                       R8 R8 K8 ["PropertyEntries"]
       64 GETTABLEKS                       R8 R8 K9 ["PropertyView"]
       66 GETTABLEKS                       R8 R8 K10 ["NumberSequencePropertyView"]
       68 GETTABLEKS                       R8 R8 K16 ["NumberSequencePoint"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K6 [require]
       73 GETTABLEKS                       R9 R0 K7 ["Components"]
       75 GETTABLEKS                       R9 R9 K8 ["PropertyEntries"]
       77 GETTABLEKS                       R9 R9 K9 ["PropertyView"]
       79 GETTABLEKS                       R9 R9 K10 ["NumberSequencePropertyView"]
       81 GETTABLEKS                       R9 R9 K17 ["NumberSequenceRowStops"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K6 [require]
       86 GETTABLEKS                       R10 R0 K7 ["Components"]
       88 GETTABLEKS                       R10 R10 K8 ["PropertyEntries"]
       90 GETTABLEKS                       R10 R10 K9 ["PropertyView"]
       92 GETTABLEKS                       R10 R10 K10 ["NumberSequencePropertyView"]
       94 GETTABLEKS                       R10 R10 K18 ["NumberSequenceUtil"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K6 [require]
       99 GETTABLEKS                       R11 R1 K19 ["React"]
      101 CALL                             R10 1 1
      102 GETIMPORT                        R11 K6 [require]
      104 GETTABLEKS                       R12 R1 K20 ["ReactUtils"]
      106 CALL                             R11 1 1
      107 GETIMPORT                        R12 K6 [require]
      109 GETTABLEKS                       R13 R1 K21 ["Signals"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K6 [require]
      114 GETTABLEKS                       R14 R0 K7 ["Components"]
      116 GETTABLEKS                       R14 R14 K8 ["PropertyEntries"]
      118 GETTABLEKS                       R14 R14 K9 ["PropertyView"]
      120 GETTABLEKS                       R14 R14 K10 ["NumberSequencePropertyView"]
      122 GETTABLEKS                       R14 R14 K22 ["Types"]
      124 CALL                             R13 1 1
      125 GETIMPORT                        R14 K6 [require]
      127 GETTABLEKS                       R15 R0 K7 ["Components"]
      129 GETTABLEKS                       R15 R15 K8 ["PropertyEntries"]
      131 GETTABLEKS                       R15 R15 K9 ["PropertyView"]
      133 GETTABLEKS                       R15 R15 K10 ["NumberSequencePropertyView"]
      135 GETTABLEKS                       R15 R15 K23 ["useNumberSequence"]
      137 CALL                             R14 1 1
      138 GETIMPORT                        R15 K6 [require]
      140 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      142 GETTABLEKS                       R16 R16 K25 ["useVisualValues"]
      144 CALL                             R15 1 1
      145 GETTABLEKS                       R16 R5 K26 ["Canvas"]
      147 GETTABLEKS                       R17 R5 K27 ["Curve"]
      149 GETTABLEKS                       R18 R5 K28 ["Grid"]
      151 GETTABLEKS                       R19 R5 K29 ["Scale"]
      153 GETTABLEKS                       R20 R3 K30 ["View"]
      155 GETTABLEKS                       R21 R11 K31 ["createNextOrder"]
      157 GETTABLEKS                       R22 R10 K32 ["createElement"]
      159 GETTABLEKS                       R23 R3 K24 ["Hooks"]
      161 GETTABLEKS                       R23 R23 K33 ["useTokens"]
      163 GETTABLEKS                       R24 R2 K34 ["MAX_POINTS"]
      165 GETIMPORT                        R25 K37 [UDim.new]
      167 LOADN                            R26 0
      168 LOADN                            R27 0
      169 CALL                             R25 2 1
      170 DUPCLOSURE                       R26 K38 [PROTO_17]
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R8
      190 RETURN                           R26 1
