PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [-1] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["findKeypoint"]
        7 GETTABLEKS                       R2 R0 K2 ["newSortedKeypoints"]
        9 GETTABLEKS                       R4 R0 K3 ["previousUnorderedKeypoints"]
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R3 R4 R5
       13 CALL                             R1 2 1
       14 JUMPIFEQKNIL                     R1 ; [+4]
       16 GETUPVAL                         R2 2
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

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
       22 GETUPVAL                         R1 8
       23 GETTABLEKS                       R1 R1 K1 ["beginEditingAsync"]
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKS                    R0 K2 ["number"] ; [+4]
        7 GETUPVAL                         R0 0
        8 JUMPIFNOTEQKN                    R0 K3 [-1] ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["calculateGhostKeypoint"]
       16 GETUPVAL                         R2 2
       17 MOVE                             R3 R0
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R3 4
       21 DUPTABLE                         R4 K8 [{"style", "Keypoint", "SetDragged"}]
       22 DUPTABLE                         R5 K16 [{["Color3"], ["OutlineThickness"] = 0, ["Size"] = 9, ["ZIndex"] = 10}]
       23 GETIMPORT                        R6 K18 [Color3.fromRGB]
       25 LOADN                            R7 255
       26 LOADN                            R8 255
       27 LOADN                            R9 255
       28 CALL                             R6 3 1
       29 SETTABLEKS                       R6 R5 K9 ["Color3"]
       31 SETTABLEKS                       R5 R4 K5 ["style"]
       33 SETTABLEKS                       R1 R4 K6 ["Keypoint"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U11
       45 SETTABLEKS                       R5 R4 K7 ["SetDragged"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["useState"]
        6 LOADN                            R5 -1
        7 CALL                             R4 1 2
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K0 ["useState"]
       11 LOADN                            R7 -1
       12 CALL                             R6 1 2
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K0 ["useState"]
       16 LOADN                            R9 -1
       17 CALL                             R8 1 2
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K0 ["useState"]
       21 LOADN                            R11 -1
       22 CALL                             R10 1 2
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R12 R12 K0 ["useState"]
       26 LOADB                            R13 0
       27 CALL                             R12 1 2
       28 GETUPVAL                         R14 2
       29 GETTABLEKS                       R14 R14 K1 ["useEventCallback"]
       31 NEWCLOSURE                       R15 P0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R5
       35 CALL                             R14 1 1
       36 GETUPVAL                         R15 1
       37 GETTABLEKS                       R15 R15 K2 ["useEffect"]
       39 NEWCLOSURE                       R16 P1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R14
       43 NEWTABLE                         R17 0 2
       45 GETTABLEKS                       R18 R3 K3 ["guestUpdateSignal"]
       47 MOVE                             R19 R14
       48 SETLIST                          R17 R18 2 [1]
       50 CALL                             R15 2 0
       51 GETUPVAL                         R15 1
       52 GETTABLEKS                       R15 R15 K4 ["useCallback"]
       54 NEWCLOSURE                       R16 P2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R11
       57 NEWTABLE                         R17 0 0
       59 CALL                             R15 2 1
       60 GETUPVAL                         R16 1
       61 GETTABLEKS                       R16 R16 K4 ["useCallback"]
       63 NEWCLOSURE                       R17 P3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R13
       69 NEWTABLE                         R18 0 3
       71 GETTABLEKS                       R19 R0 K5 ["beginEditingAsync"]
       73 GETTABLEKS                       R20 R0 K6 ["finishEditing"]
       75 MOVE                             R21 R1
       76 SETLIST                          R18 R19 3 [1]
       78 CALL                             R16 2 1
       79 GETUPVAL                         R17 5
       80 CALL                             R17 0 1
       81 GETTABLEKS                       R18 R17 K7 ["NumberSequence"]
       83 GETUPVAL                         R19 1
       84 GETTABLEKS                       R19 R19 K8 ["useMemo"]
       86 NEWCLOSURE                       R20 P4
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R12
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R15
       97 NEWTABLE                         R21 0 8
       99 MOVE                             R22 R1
      100 MOVE                             R23 R4
      101 MOVE                             R24 R8
      102 MOVE                             R25 R12
      103 MOVE                             R26 R16
      104 MOVE                             R27 R15
      105 GETTABLEKS                       R28 R3 K9 ["updateKeypoint"]
      107 MOVE                             R29 R18
      108 SETLIST                          R21 R22 8 [1]
      110 CALL                             R19 2 1
      111 GETUPVAL                         R20 1
      112 GETTABLEKS                       R20 R20 K8 ["useMemo"]
      114 NEWCLOSURE                       R21 P5
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          VAL R1
      117 NEWTABLE                         R22 0 1
      119 MOVE                             R23 R1
      120 SETLIST                          R22 R23 1 [1]
      122 CALL                             R20 2 1
      123 GETUPVAL                         R21 1
      124 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      126 NEWCLOSURE                       R22 P6
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          VAL R20
      130 NEWTABLE                         R23 0 1
      132 MOVE                             R24 R20
      133 SETLIST                          R23 R24 1 [1]
      135 CALL                             R21 2 1
      136 GETUPVAL                         R22 1
      137 GETTABLEKS                       R22 R22 K8 ["useMemo"]
      139 NEWCLOSURE                       R23 P7
      140 CAPTURE                          VAL R20
      141 NEWTABLE                         R24 0 1
      143 MOVE                             R25 R20
      144 SETLIST                          R24 R25 1 [1]
      146 CALL                             R22 2 1
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R23 R23 K8 ["useMemo"]
      150 NEWCLOSURE                       R24 P8
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          VAL R18
      155 CAPTURE                          UPVAL U11
      156 CAPTURE                          VAL R22
      157 CAPTURE                          UPVAL U12
      158 NEWTABLE                         R25 0 2
      160 MOVE                             R26 R22
      161 MOVE                             R27 R18
      162 SETLIST                          R25 R26 2 [1]
      164 CALL                             R23 2 1
      165 GETUPVAL                         R24 1
      166 GETTABLEKS                       R24 R24 K8 ["useMemo"]
      168 NEWCLOSURE                       R25 P9
      169 CAPTURE                          VAL R10
      170 CAPTURE                          UPVAL U3
      171 CAPTURE                          VAL R20
      172 CAPTURE                          UPVAL U6
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R0
      181 NEWTABLE                         R26 0 4
      183 MOVE                             R27 R10
      184 MOVE                             R28 R20
      185 GETTABLEKS                       R29 R3 K10 ["addKeypointAsync"]
      187 GETTABLEKS                       R30 R0 K5 ["beginEditingAsync"]
      189 SETLIST                          R26 R27 4 [1]
      191 CALL                             R24 2 1
      192 GETUPVAL                         R25 1
      193 GETTABLEKS                       R25 R25 K8 ["useMemo"]
      195 NEWCLOSURE                       R26 P10
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U13
      198 CAPTURE                          VAL R20
      199 CAPTURE                          UPVAL U14
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R11
      203 NEWTABLE                         R27 0 4
      205 MOVE                             R28 R20
      206 MOVE                             R29 R8
      207 MOVE                             R30 R6
      208 MOVE                             R31 R11
      209 SETLIST                          R27 R28 4 [1]
      211 CALL                             R25 2 1
      212 GETUPVAL                         R26 1
      213 GETTABLEKS                       R26 R26 K8 ["useMemo"]
      215 NEWCLOSURE                       R27 P11
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R24
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R23
      221 NEWTABLE                         R28 0 5
      223 MOVE                             R29 R19
      224 MOVE                             R30 R23
      225 MOVE                             R31 R21
      226 MOVE                             R32 R25
      227 MOVE                             R33 R24
      228 SETLIST                          R28 R29 5 [1]
      230 CALL                             R26 2 1
      231 GETUPVAL                         R27 15
      232 CALL                             R27 0 1
      233 GETUPVAL                         R28 9
      234 CALL                             R28 0 1
      235 GETUPVAL                         R29 6
      236 GETUPVAL                         R30 16
      237 DUPTABLE                         R31 K13 [{["tag"] = "size-full padding-y-large"}]
      238 DUPTABLE                         R32 K15 [{"Editor"}]
      239 GETUPVAL                         R33 6
      240 GETUPVAL                         R34 16
      241 DUPTABLE                         R35 K19 [{["tag"] = "size-full bg-surface-100", ["padding"], ["LayoutOrder"]}]
      242 DUPTABLE                         R36 K23 [{"left", "right", "bottom"}]
      243 GETIMPORT                        R37 K26 [UDim.new]
      245 LOADN                            R38 0
      246 GETTABLEKS                       R40 R27 K28 ["Padding"]
      248 GETTABLEKS                       R40 R40 K29 ["Medium"]
      250 MULK                             R39 R40 K27 [3]
      251 CALL                             R37 2 1
      252 SETTABLEKS                       R37 R36 K20 ["left"]
      254 GETIMPORT                        R37 K26 [UDim.new]
      256 LOADN                            R38 0
      257 GETTABLEKS                       R39 R27 K28 ["Padding"]
      259 GETTABLEKS                       R39 R39 K29 ["Medium"]
      261 CALL                             R37 2 1
      262 SETTABLEKS                       R37 R36 K21 ["right"]
      264 GETIMPORT                        R37 K26 [UDim.new]
      266 LOADN                            R38 0
      267 GETTABLEKS                       R40 R27 K28 ["Padding"]
      269 GETTABLEKS                       R40 R40 K29 ["Medium"]
      271 MULK                             R39 R40 K27 [3]
      272 CALL                             R37 2 1
      273 SETTABLEKS                       R37 R36 K22 ["bottom"]
      275 SETTABLEKS                       R36 R35 K17 ["padding"]
      277 MOVE                             R36 R28
      278 CALL                             R36 0 1
      279 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      281 DUPTABLE                         R36 K31 [{"Canvas"}]
      282 GETUPVAL                         R37 6
      283 GETUPVAL                         R38 17
      284 DUPTABLE                         R39 K43 [{["GraphRect"], ["CanvasBackgroundColor3"], ["CanvasBackgroundTransparency"] = 0, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
      285 GETIMPORT                        R40 K45 [Rect.new]
      287 LOADN                            R41 0
      288 GETTABLEKS                       R42 R18 K46 ["GraphMinY"]
      290 GETTABLEKS                       R43 R18 K47 ["GraphMaxX"]
      292 GETTABLEKS                       R44 R18 K48 ["GraphMaxY"]
      294 CALL                             R40 4 1
      295 SETTABLEKS                       R40 R39 K32 ["GraphRect"]
      297 GETTABLEKS                       R40 R27 K49 ["Color"]
      299 GETTABLEKS                       R40 R40 K50 ["Surface"]
      301 GETTABLEKS                       R40 R40 K51 ["Surface_200"]
      303 GETTABLEKS                       R40 R40 K52 ["Color3"]
      305 SETTABLEKS                       R40 R39 K33 ["CanvasBackgroundColor3"]
      307 GETUPVAL                         R40 18
      308 SETTABLEKS                       R40 R39 K38 ["ViewportPaddingLeft"]
      310 GETUPVAL                         R40 18
      311 SETTABLEKS                       R40 R39 K39 ["ViewportPaddingRight"]
      313 GETUPVAL                         R40 18
      314 SETTABLEKS                       R40 R39 K40 ["ViewportPaddingTop"]
      316 GETUPVAL                         R40 18
      317 SETTABLEKS                       R40 R39 K41 ["ViewportPaddingBottom"]
      319 SETTABLEKS                       R26 R39 K42 ["childrenUnclipped"]
      321 CALL                             R37 2 1
      322 SETTABLEKS                       R37 R36 K30 ["Canvas"]
      324 CALL                             R33 3 1
      325 SETTABLEKS                       R33 R32 K14 ["Editor"]
      327 CALL                             R29 3 -1
      328 RETURN                           R29 -1

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
       81 GETTABLEKS                       R9 R9 K17 ["NumberSequenceUtil"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K6 [require]
       86 GETTABLEKS                       R10 R1 K18 ["React"]
       88 CALL                             R9 1 1
       89 GETIMPORT                        R10 K6 [require]
       91 GETTABLEKS                       R11 R1 K19 ["ReactUtils"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K6 [require]
       96 GETTABLEKS                       R12 R1 K20 ["Signals"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K6 [require]
      101 GETTABLEKS                       R13 R0 K7 ["Components"]
      103 GETTABLEKS                       R13 R13 K8 ["PropertyEntries"]
      105 GETTABLEKS                       R13 R13 K9 ["PropertyView"]
      107 GETTABLEKS                       R13 R13 K10 ["NumberSequencePropertyView"]
      109 GETTABLEKS                       R13 R13 K21 ["Types"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K6 [require]
      114 GETTABLEKS                       R14 R0 K7 ["Components"]
      116 GETTABLEKS                       R14 R14 K8 ["PropertyEntries"]
      118 GETTABLEKS                       R14 R14 K9 ["PropertyView"]
      120 GETTABLEKS                       R14 R14 K10 ["NumberSequencePropertyView"]
      122 GETTABLEKS                       R14 R14 K22 ["useNumberSequence"]
      124 CALL                             R13 1 1
      125 GETIMPORT                        R14 K6 [require]
      127 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      129 GETTABLEKS                       R15 R15 K24 ["useVisualValues"]
      131 CALL                             R14 1 1
      132 GETTABLEKS                       R15 R5 K25 ["Canvas"]
      134 GETTABLEKS                       R16 R5 K26 ["Curve"]
      136 GETTABLEKS                       R17 R5 K27 ["Grid"]
      138 GETTABLEKS                       R18 R5 K28 ["Scale"]
      140 GETTABLEKS                       R19 R3 K29 ["View"]
      142 GETTABLEKS                       R20 R10 K30 ["createNextOrder"]
      144 GETTABLEKS                       R21 R9 K31 ["createElement"]
      146 GETTABLEKS                       R22 R3 K23 ["Hooks"]
      148 GETTABLEKS                       R22 R22 K32 ["useTokens"]
      150 GETTABLEKS                       R23 R2 K33 ["MAX_POINTS"]
      152 GETIMPORT                        R24 K36 [UDim.new]
      154 LOADN                            R25 0
      155 LOADN                            R26 0
      156 CALL                             R24 2 1
      157 DUPCLOSURE                       R25 K37 [PROTO_17]
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R24
      177 RETURN                           R25 1
