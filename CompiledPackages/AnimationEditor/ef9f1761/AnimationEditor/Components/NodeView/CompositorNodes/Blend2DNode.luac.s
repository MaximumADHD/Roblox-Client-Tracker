PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["Value"]
        4 GETTABLEKS                       R2 R2 K4 ["X"]
        6 GETTABLEKS                       R3 R0 K3 ["Value"]
        8 GETTABLEKS                       R3 R3 K5 ["Y"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_2]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["inputs"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["onInputChanged"]
        9 MOVE                             R7 R4
       10 GETTABLEKS                       R8 R5 K2 ["Value"]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 DUPTABLE                         R4 K5 [{"X", "Y"}]
        6 GETTABLEKS                       R6 R0 K1 ["Value"]
        8 GETTABLEKS                       R6 R6 K3 ["X"]
       10 FASTCALL1                        MATH_RAD R6 ; [+2]
       11 GETIMPORT                        R5 K8 [math.rad]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["X"]
       16 GETTABLEKS                       R5 R0 K1 ["Value"]
       18 GETTABLEKS                       R5 R5 K4 ["Y"]
       20 SETTABLEKS                       R5 R4 K4 ["Y"]
       22 SETTABLEKS                       R4 R3 K1 ["Value"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 DUPTABLE                         R4 K5 [{"X", "Y"}]
        6 GETTABLEKS                       R6 R0 K1 ["Value"]
        8 GETTABLEKS                       R6 R6 K3 ["X"]
       10 FASTCALL1                        MATH_DEG R6 ; [+2]
       11 GETIMPORT                        R5 K8 [math.deg]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["X"]
       16 GETTABLEKS                       R5 R0 K1 ["Value"]
       18 GETTABLEKS                       R5 R5 K4 ["Y"]
       20 SETTABLEKS                       R5 R4 K4 ["Y"]
       22 SETTABLEKS                       R4 R3 K1 ["Value"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_8]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R1 R2 ; [+75]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        6 JUMPIFEQKNIL                     R2 ; [+70]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["PropertyLookup"]
       11 GETTABLEKS                       R3 R4 K2 ["X"]
       13 ORK                              R2 R3 K1 [0]
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R6 R2
       16 GETIMPORT                        R5 K5 [typeof]
       18 CALL                             R5 1 1
       19 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["X is not a number"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 LOADNIL                          R3
       30 GETIMPORT                        R4 K13 [Enum.AnimationNodeBlend2DInputMode.Polar]
       32 JUMPIFNOTEQ                      R1 R4 ; [+12]
       34 FASTCALL1                        MATH_RAD R2 ; [+3]
       35 MOVE                             R5 R2
       36 GETIMPORT                        R4 K16 [math.rad]
       38 CALL                             R4 1 1
       39 MOVE                             R3 R4
       40 GETUPVAL                         R4 2
       41 DUPCLOSURE                       R5 K17 [PROTO_7]
       42 CAPTURE                          UPVAL U3
       43 CALL                             R4 1 0
       44 JUMP                             ; [+10]
       45 FASTCALL1                        MATH_DEG R2 ; [+3]
       46 MOVE                             R5 R2
       47 GETIMPORT                        R4 K19 [math.deg]
       49 CALL                             R4 1 1
       50 MOVE                             R3 R4
       51 GETUPVAL                         R4 2
       52 DUPCLOSURE                       R5 K20 [PROTO_9]
       53 CAPTURE                          UPVAL U3
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 4
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+7]
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R4 R4 K21 ["isPropertyParameterized"]
       61 GETUPVAL                         R5 6
       62 LOADK                            R6 K2 ["X"]
       63 CALL                             R4 2 1
       64 JUMPIF                           R4 ; [+6]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K0 ["OnPropertyChanged"]
       68 LOADK                            R5 K2 ["X"]
       69 MOVE                             R6 R3
       70 CALL                             R4 2 0
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R4 R4 K0 ["OnPropertyChanged"]
       74 LOADK                            R5 K22 ["InputMode"]
       75 MOVE                             R6 R1
       76 CALL                             R4 2 0
       77 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 JUMPIFNOTEQ                      R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["getNodeOverride"]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["nodeOverrides"]
       20 GETUPVAL                         R3 5
       21 GETTABLEKS                       R3 R3 K3 ["GraphPayload"]
       23 GETTABLEKS                       R3 R3 K4 ["id"]
       25 LOADK                            R4 K5 ["X"]
       26 LOADK                            R5 K6 [""]
       27 CALL                             R1 4 1
       28 JUMPIFEQKNIL                     R1 ; [+9]
       30 GETTABLEKS                       R3 R1 K7 ["value"]
       32 FASTCALL1                        TYPEOF R3 ; [+2]
       33 GETIMPORT                        R2 K9 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFEQKS                       R2 K10 ["number"] ; [+2]
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 1
       40 GETIMPORT                        R4 K14 [Enum.AnimationNodeBlend2DInputMode.Polar]
       42 JUMPIFNOTEQ                      R3 R4 ; [+8]
       44 GETTABLEKS                       R3 R1 K7 ["value"]
       46 FASTCALL1                        MATH_RAD R3 ; [+2]
       47 GETIMPORT                        R2 K17 [math.rad]
       49 CALL                             R2 1 1
       50 JUMP                             ; [+6]
       51 GETTABLEKS                       R3 R1 K7 ["value"]
       53 FASTCALL1                        MATH_DEG R3 ; [+2]
       54 GETIMPORT                        R2 K19 [math.deg]
       56 CALL                             R2 1 1
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K20 ["setNodeOverride"]
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R4 R4 K3 ["GraphPayload"]
       63 GETTABLEKS                       R4 R4 K4 ["id"]
       65 LOADK                            R5 K5 ["X"]
       66 LOADK                            R6 K6 [""]
       67 MOVE                             R7 R2
       68 GETTABLEKS                       R8 R1 K21 ["parameterName"]
       70 CALL                             R3 5 0
       71 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+91]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["X"]
        7 CALL                             R2 2 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["isPropertyParameterized"]
       11 GETUPVAL                         R5 1
       12 LOADK                            R6 K3 ["Y"]
       13 CALL                             R4 2 2
       14 JUMPIFNOT                        R2 ; [+26]
       15 JUMPIFNOT                        R3 ; [+25]
       16 GETUPVAL                         R6 2
       17 JUMPIFNOT                        R6 ; [+15]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K4 ["setNodeOverride"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K5 ["GraphPayload"]
       24 GETTABLEKS                       R7 R7 K6 ["id"]
       26 LOADK                            R8 K2 ["X"]
       27 LOADK                            R9 K7 [""]
       28 GETTABLEKS                       R10 R1 K2 ["X"]
       30 MOVE                             R11 R3
       31 CALL                             R6 5 0
       32 JUMP                             ; [+20]
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R6 R6 K8 ["setParameterOverrideValue"]
       36 MOVE                             R7 R3
       37 GETTABLEKS                       R8 R1 K2 ["X"]
       39 CALL                             R6 2 0
       40 JUMP                             ; [+12]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K9 ["OnPropertyChanged"]
       44 JUMPIFEQKNIL                     R6 ; [+8]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K9 ["OnPropertyChanged"]
       49 LOADK                            R7 K2 ["X"]
       50 GETTABLEKS                       R8 R1 K2 ["X"]
       52 CALL                             R6 2 0
       53 JUMPIFNOT                        R4 ; [+26]
       54 JUMPIFNOT                        R5 ; [+25]
       55 GETUPVAL                         R6 2
       56 JUMPIFNOT                        R6 ; [+15]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K4 ["setNodeOverride"]
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R7 R7 K5 ["GraphPayload"]
       63 GETTABLEKS                       R7 R7 K6 ["id"]
       65 LOADK                            R8 K3 ["Y"]
       66 LOADK                            R9 K7 [""]
       67 GETTABLEKS                       R10 R1 K3 ["Y"]
       69 MOVE                             R11 R5
       70 CALL                             R6 5 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R6 5
       73 GETTABLEKS                       R6 R6 K8 ["setParameterOverrideValue"]
       75 MOVE                             R7 R5
       76 GETTABLEKS                       R8 R1 K3 ["Y"]
       78 CALL                             R6 2 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R6 4
       81 GETTABLEKS                       R6 R6 K9 ["OnPropertyChanged"]
       83 JUMPIFEQKNIL                     R6 ; [+8]
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K9 ["OnPropertyChanged"]
       88 LOADK                            R7 K3 ["Y"]
       89 GETTABLEKS                       R8 R1 K3 ["Y"]
       91 CALL                             R6 2 0
       92 LOADN                            R2 0
       93 JUMPIFNOTLT                      R2 R0 ; [+15]
       95 GETUPVAL                         R2 6
       96 GETTABLEKS                       R2 R2 K10 ["onInputChanged"]
       98 MOVE                             R3 R0
       99 DUPTABLE                         R4 K11 [{"X", "Y"}]
      100 GETTABLEKS                       R5 R1 K2 ["X"]
      102 SETTABLEKS                       R5 R4 K2 ["X"]
      104 GETTABLEKS                       R5 R1 K3 ["Y"]
      106 SETTABLEKS                       R5 R4 K3 ["Y"]
      108 CALL                             R2 2 0
      109 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R1 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 JUMPIFNOT                        R2 ; [+20]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["getNodeOverride"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["nodeOverrides"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["GraphPayload"]
       14 GETTABLEKS                       R4 R4 K3 ["id"]
       16 MOVE                             R5 R0
       17 LOADK                            R6 K4 [""]
       18 CALL                             R2 4 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R3 R2 K5 ["value"]
       22 RETURN                           R3 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K6 ["parameterOverrides"]
       28 GETTABLE                         R2 R3 R1
       29 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETIMPORT                        R0 K3 [Vector2.new]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K6 ["PropertyLookup"]
       10 GETTABLEKS                       R2 R3 K5 ["X"]
       12 ORK                              R1 R2 K4 [0]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K6 ["PropertyLookup"]
       16 GETTABLEKS                       R3 R4 K7 ["Y"]
       18 ORK                              R2 R3 K4 [0]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K8 ["isPropertyParameterized"]
       24 GETUPVAL                         R1 3
       25 LOADK                            R2 K5 ["X"]
       26 CALL                             R0 2 2
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K8 ["isPropertyParameterized"]
       30 GETUPVAL                         R3 3
       31 LOADK                            R4 K7 ["Y"]
       32 CALL                             R2 2 2
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U7
       39 JUMPIF                           R1 ; [+2]
       40 LOADNIL                          R5
       41 JUMP                             ; [+26]
       42 GETUPVAL                         R6 4
       43 JUMPIFNOT                        R6 ; [+20]
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K9 ["getNodeOverride"]
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K10 ["nodeOverrides"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K11 ["GraphPayload"]
       53 GETTABLEKS                       R8 R8 K12 ["id"]
       55 LOADK                            R9 K5 ["X"]
       56 LOADK                            R10 K13 [""]
       57 CALL                             R6 4 1
       58 JUMPIFNOT                        R6 ; [+3]
       59 GETTABLEKS                       R5 R6 K14 ["value"]
       61 JUMP                             ; [+6]
       62 LOADNIL                          R5
       63 JUMP                             ; [+4]
       64 GETUPVAL                         R6 7
       65 GETTABLEKS                       R6 R6 K15 ["parameterOverrides"]
       67 GETTABLE                         R5 R6 R1
       68 JUMPIF                           R5 ; [+7]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K6 ["PropertyLookup"]
       72 GETTABLEKS                       R5 R6 K5 ["X"]
       74 JUMPIF                           R5 ; [+1]
       75 LOADN                            R5 0
       76 JUMPIF                           R3 ; [+2]
       77 LOADNIL                          R6
       78 JUMP                             ; [+26]
       79 GETUPVAL                         R7 4
       80 JUMPIFNOT                        R7 ; [+20]
       81 GETUPVAL                         R7 5
       82 GETTABLEKS                       R7 R7 K9 ["getNodeOverride"]
       84 GETUPVAL                         R8 6
       85 GETTABLEKS                       R8 R8 K10 ["nodeOverrides"]
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K11 ["GraphPayload"]
       90 GETTABLEKS                       R9 R9 K12 ["id"]
       92 LOADK                            R10 K7 ["Y"]
       93 LOADK                            R11 K13 [""]
       94 CALL                             R7 4 1
       95 JUMPIFNOT                        R7 ; [+3]
       96 GETTABLEKS                       R6 R7 K14 ["value"]
       98 JUMP                             ; [+6]
       99 LOADNIL                          R6
      100 JUMP                             ; [+4]
      101 GETUPVAL                         R7 7
      102 GETTABLEKS                       R7 R7 K15 ["parameterOverrides"]
      104 GETTABLE                         R6 R7 R3
      105 JUMPIF                           R6 ; [+7]
      106 GETUPVAL                         R7 1
      107 GETTABLEKS                       R7 R7 K6 ["PropertyLookup"]
      109 GETTABLEKS                       R6 R7 K7 ["Y"]
      111 JUMPIF                           R6 ; [+1]
      112 LOADN                            R6 0
      113 GETIMPORT                        R7 K3 [Vector2.new]
      115 MOVE                             R8 R5
      116 MOVE                             R9 R6
      117 CALL                             R7 2 -1
      118 RETURN                           R7 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["ParameterOverrideContext"]
       15 GETTABLEKS                       R3 R3 K2 ["Context"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useContext"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K2 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 3
       26 CALL                             R4 0 1
       27 GETUPVAL                         R5 4
       28 DUPTABLE                         R6 K6 [{"GraphPayload", "Default"}]
       29 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       31 SETTABLEKS                       R7 R6 K4 ["GraphPayload"]
       33 DUPTABLE                         R7 K10 [{["X"] = 0, ["Y"] = 0}]
       34 SETTABLEKS                       R7 R6 K5 ["Default"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 1
       45 GETTABLEKS                       R9 R5 K12 ["inputs"]
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K11 ["useMemo"]
       53 NEWCLOSURE                       R8 P1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R9 0 1
       58 GETTABLEKS                       R10 R5 K12 ["inputs"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       66 NEWCLOSURE                       R9 P2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R10 0 2
       71 GETTABLEKS                       R11 R1 K13 ["observeNodePropsById"]
       73 GETTABLEKS                       R12 R0 K4 ["GraphPayload"]
       75 GETTABLEKS                       R12 R12 K14 ["id"]
       77 SETLIST                          R10 R11 2 [1]
       79 CALL                             R8 2 1
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R9 R9 K15 ["useSignalState"]
       83 MOVE                             R10 R8
       84 CALL                             R9 1 1
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R10 R10 K16 ["CompositorNodeUtils"]
       88 GETTABLEKS                       R10 R10 K17 ["createPropertyHelpers"]
       90 MOVE                             R11 R0
       91 CALL                             R10 1 1
       92 GETTABLEKS                       R12 R0 K19 ["PropertyLookup"]
       94 GETTABLEKS                       R11 R12 K18 ["InputMode"]
       96 JUMPIF                           R11 ; [+2]
       97 GETIMPORT                        R11 K23 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       99 GETIMPORT                        R13 K25 [Enum.AnimationNodeBlend2DInputMode.Polar]
      101 JUMPIFEQ                         R11 R13 ; [+2]
      103 LOADB                            R12 0 +1
      104 LOADB                            R12 1
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K26 ["useCallback"]
      108 NEWCLOSURE                       R14 P3
      109 CAPTURE                          VAL R5
      110 NEWTABLE                         R15 0 2
      112 GETTABLEKS                       R16 R5 K12 ["inputs"]
      114 GETTABLEKS                       R17 R5 K27 ["onInputChanged"]
      116 SETLIST                          R15 R16 2 [1]
      118 CALL                             R13 2 1
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K26 ["useCallback"]
      122 NEWCLOSURE                       R15 P4
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R13
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          VAL R9
      130 NEWTABLE                         R16 0 7
      132 MOVE                             R17 R11
      133 GETTABLEKS                       R18 R5 K12 ["inputs"]
      135 MOVE                             R19 R9
      136 GETTABLEKS                       R20 R0 K28 ["OnPropertyChanged"]
      138 GETTABLEKS                       R21 R0 K19 ["PropertyLookup"]
      140 MOVE                             R22 R13
      141 GETTABLEKS                       R24 R0 K19 ["PropertyLookup"]
      143 GETTABLEKS                       R23 R24 K7 ["X"]
      145 SETLIST                          R16 R17 7 [1]
      147 CALL                             R14 2 1
      148 GETUPVAL                         R15 0
      149 GETTABLEKS                       R15 R15 K29 ["useRef"]
      151 MOVE                             R16 R11
      152 CALL                             R15 1 1
      153 GETUPVAL                         R16 0
      154 GETTABLEKS                       R16 R16 K30 ["useEffect"]
      156 NEWCLOSURE                       R17 P5
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R11
      159 CAPTURE                          UPVAL U7
      160 CAPTURE                          UPVAL U2
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R0
      163 NEWTABLE                         R18 0 4
      165 MOVE                             R19 R11
      166 GETTABLEKS                       R20 R0 K4 ["GraphPayload"]
      168 GETTABLEKS                       R20 R20 K14 ["id"]
      170 GETTABLEKS                       R21 R3 K31 ["nodeOverrides"]
      172 GETTABLEKS                       R22 R3 K32 ["setNodeOverride"]
      174 SETLIST                          R18 R19 4 [1]
      176 CALL                             R16 2 0
      177 GETUPVAL                         R16 0
      178 GETTABLEKS                       R16 R16 K26 ["useCallback"]
      180 NEWCLOSURE                       R17 P6
      181 CAPTURE                          UPVAL U8
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R5
      188 NEWTABLE                         R18 0 8
      190 MOVE                             R19 R9
      191 MOVE                             R20 R12
      192 MOVE                             R21 R4
      193 GETTABLEKS                       R22 R0 K4 ["GraphPayload"]
      195 GETTABLEKS                       R22 R22 K14 ["id"]
      197 GETTABLEKS                       R23 R0 K28 ["OnPropertyChanged"]
      199 GETTABLEKS                       R24 R0 K19 ["PropertyLookup"]
      201 GETTABLEKS                       R25 R2 K33 ["setParameterOverrideValue"]
      203 GETTABLEKS                       R26 R3 K32 ["setNodeOverride"]
      205 SETLIST                          R18 R19 8 [1]
      207 CALL                             R16 2 1
      208 GETUPVAL                         R17 0
      209 GETTABLEKS                       R17 R17 K11 ["useMemo"]
      211 NEWCLOSURE                       R18 P7
      212 CAPTURE                          UPVAL U1
      213 CAPTURE                          VAL R0
      214 CAPTURE                          UPVAL U8
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R4
      217 CAPTURE                          UPVAL U2
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R2
      220 NEWTABLE                         R19 0 7
      222 MOVE                             R20 R9
      223 MOVE                             R21 R4
      224 GETTABLEKS                       R22 R0 K4 ["GraphPayload"]
      226 GETTABLEKS                       R22 R22 K14 ["id"]
      228 GETTABLEKS                       R23 R2 K34 ["parameterOverrides"]
      230 GETTABLEKS                       R24 R3 K31 ["nodeOverrides"]
      232 GETTABLEKS                       R26 R0 K19 ["PropertyLookup"]
      234 GETTABLEKS                       R25 R26 K7 ["X"]
      236 GETTABLEKS                       R27 R0 K19 ["PropertyLookup"]
      238 GETTABLEKS                       R26 R27 K9 ["Y"]
      240 SETLIST                          R19 R20 7 [1]
      242 CALL                             R17 2 1
      243 DUPTABLE                         R18 K41 [{"Property_PhaseSync", "Property_InputMode", "Property_X_Angle", "Property_Y_Magnitude", "Blend2DMap", "InputPanel"}]
      244 GETTABLEKS                       R19 R10 K42 ["nextProperty"]
      246 DUPTABLE                         R20 K51 [{["Name"] = "PhaseSync", ["Label"] = "Phase Sync", ["Type"] = "Enum.AnimationNodePhaseSync", ["Value"], ["DefaultValue"]}]
      247 GETTABLEKS                       R22 R0 K19 ["PropertyLookup"]
      249 GETTABLEKS                       R21 R22 K44 ["PhaseSync"]
      251 SETTABLEKS                       R21 R20 K49 ["Value"]
      253 GETIMPORT                        R21 K54 [Enum.AnimationNodePhaseSync.Synced]
      255 SETTABLEKS                       R21 R20 K50 ["DefaultValue"]
      257 CALL                             R19 1 1
      258 SETTABLEKS                       R19 R18 K35 ["Property_PhaseSync"]
      260 GETTABLEKS                       R19 R10 K42 ["nextProperty"]
      262 DUPTABLE                         R20 K58 [{["Name"] = "InputMode", ["Label"] = "Input Mode", ["Type"] = "Enum.AnimationNodeBlend2DInputMode", ["Value"], ["OnChanged"]}]
      263 SETTABLEKS                       R11 R20 K49 ["Value"]
      265 SETTABLEKS                       R14 R20 K57 ["OnChanged"]
      267 CALL                             R19 1 1
      268 SETTABLEKS                       R19 R18 K36 ["Property_InputMode"]
      270 GETTABLEKS                       R19 R10 K42 ["nextProperty"]
      272 DUPTABLE                         R20 K59 [{["Name"] = "X", ["Label"], ["Type"], ["Value"], ["Default"] = 0}]
      273 JUMPIFNOT                        R12 ; [+2]
      274 LOADK                            R21 K60 ["Angle"]
      275 JUMP                             ; [+1]
      276 LOADK                            R21 K7 ["X"]
      277 SETTABLEKS                       R21 R20 K45 ["Label"]
      279 JUMPIFNOT                        R12 ; [+2]
      280 LOADK                            R21 K60 ["Angle"]
      281 JUMP                             ; [+1]
      282 LOADK                            R21 K61 ["Number"]
      283 SETTABLEKS                       R21 R20 K47 ["Type"]
      285 GETTABLEKS                       R22 R0 K19 ["PropertyLookup"]
      287 GETTABLEKS                       R21 R22 K7 ["X"]
      289 SETTABLEKS                       R21 R20 K49 ["Value"]
      291 CALL                             R19 1 1
      292 SETTABLEKS                       R19 R18 K37 ["Property_X_Angle"]
      294 GETTABLEKS                       R19 R10 K42 ["nextProperty"]
      296 DUPTABLE                         R20 K63 [{["Name"] = "Y", ["Label"], ["Type"] = "Number", ["Value"], ["Default"] = 0, ["ExtraProps"]}]
      297 JUMPIFNOT                        R12 ; [+2]
      298 LOADK                            R21 K64 ["Magnitude"]
      299 JUMP                             ; [+1]
      300 LOADK                            R21 K9 ["Y"]
      301 SETTABLEKS                       R21 R20 K45 ["Label"]
      303 GETTABLEKS                       R22 R0 K19 ["PropertyLookup"]
      305 GETTABLEKS                       R21 R22 K9 ["Y"]
      307 SETTABLEKS                       R21 R20 K49 ["Value"]
      309 JUMPIFNOT                        R12 ; [+2]
      310 DUPTABLE                         R21 K66 [{["Minimum"] = 0}]
      311 JUMP                             ; [+1]
      312 LOADNIL                          R21
      313 SETTABLEKS                       R21 R20 K62 ["ExtraProps"]
      315 CALL                             R19 1 1
      316 SETTABLEKS                       R19 R18 K38 ["Property_Y_Magnitude"]
      318 GETUPVAL                         R19 0
      319 GETTABLEKS                       R19 R19 K67 ["createElement"]
      321 GETUPVAL                         R20 9
      322 DUPTABLE                         R21 K73 [{"LayoutOrder", "InputMode", "OnPinDragged", "PinLabels", "Position", "Pins"}]
      323 GETTABLEKS                       R22 R10 K74 ["nextOrder"]
      325 CALL                             R22 0 1
      326 SETTABLEKS                       R22 R21 K68 ["LayoutOrder"]
      328 SETTABLEKS                       R11 R21 K18 ["InputMode"]
      330 SETTABLEKS                       R16 R21 K69 ["OnPinDragged"]
      332 SETTABLEKS                       R7 R21 K70 ["PinLabels"]
      334 SETTABLEKS                       R17 R21 K71 ["Position"]
      336 SETTABLEKS                       R6 R21 K72 ["Pins"]
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K39 ["Blend2DMap"]
      341 GETTABLEKS                       R19 R5 K75 ["makePropertyChild"]
      343 MOVE                             R20 R0
      344 MOVE                             R21 R10
      345 DUPTABLE                         R22 K78 [{"inputBuilder", "inputBuilderProps"}]
      346 GETUPVAL                         R23 10
      347 SETTABLEKS                       R23 R22 K76 ["inputBuilder"]
      349 DUPTABLE                         R23 K79 [{"InputMode"}]
      350 GETUPVAL                         R24 11
      351 GETTABLEKS                       R24 R24 K80 ["enum"]
      353 GETTABLEKS                       R25 R0 K19 ["PropertyLookup"]
      355 GETTABLEKS                       R25 R25 K18 ["InputMode"]
      357 GETIMPORT                        R26 K23 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
      359 CALL                             R24 2 1
      360 SETTABLEKS                       R24 R23 K18 ["InputMode"]
      362 SETTABLEKS                       R23 R22 K77 ["inputBuilderProps"]
      364 CALL                             R19 3 1
      365 SETTABLEKS                       R19 R18 K40 ["InputPanel"]
      367 GETUPVAL                         R19 0
      368 GETTABLEKS                       R19 R19 K67 ["createElement"]
      370 GETUPVAL                         R20 1
      371 GETTABLEKS                       R20 R20 K81 ["CompositorNode"]
      373 GETTABLEKS                       R21 R10 K82 ["nodeProps"]
      375 DUPTABLE                         R22 K86 [{"ContextToolbar", "OutputPin", "MinimumWidth"}]
      376 GETTABLEKS                       R23 R10 K87 ["spotlightButton"]
      378 CALL                             R23 0 1
      379 SETTABLEKS                       R23 R22 K83 ["ContextToolbar"]
      381 GETTABLEKS                       R23 R10 K88 ["outputPin"]
      383 CALL                             R23 0 1
      384 SETTABLEKS                       R23 R22 K84 ["OutputPin"]
      386 GETUPVAL                         R24 12
      387 CALL                             R24 0 1
      388 JUMPIFNOT                        R24 ; [+2]
      389 LOADN                            R23 260
      390 JUMP                             ; [+1]
      391 LOADNIL                          R23
      392 SETTABLEKS                       R23 R22 K85 ["MinimumWidth"]
      394 CALL                             R21 1 1
      395 MOVE                             R22 R18
      396 CALL                             R19 3 -1
      397 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["Blend2DInput"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["NodeView"]
       24 GETTABLEKS                       R3 R3 K10 ["CompositorNodeProperty"]
       26 GETTABLEKS                       R3 R3 K11 ["Blend2DMap"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K12 ["Parent"]
       33 GETTABLEKS                       R4 R4 K13 ["Dash"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K14 ["Util"]
       40 GETTABLEKS                       R5 R5 K15 ["ExpectType"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Components"]
       47 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       49 GETTABLEKS                       R6 R6 K8 ["CompositorNodeInput"]
       51 GETTABLEKS                       R6 R6 K16 ["InputPanelTypes"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K12 ["Parent"]
       58 GETTABLEKS                       R7 R7 K17 ["NodeGraphing"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Components"]
       65 GETTABLEKS                       R8 R8 K7 ["NodeView"]
       67 GETTABLEKS                       R8 R8 K10 ["CompositorNodeProperty"]
       69 GETTABLEKS                       R8 R8 K18 ["PropertyUtils"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K12 ["Parent"]
       76 GETTABLEKS                       R9 R9 K19 ["React"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K12 ["Parent"]
       83 GETTABLEKS                       R10 R10 K20 ["SignalsReact"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Components"]
       90 GETTABLEKS                       R11 R11 K7 ["NodeView"]
       92 GETTABLEKS                       R11 R11 K21 ["CompositorNodes"]
       94 GETTABLEKS                       R11 R11 K22 ["useInputPanelHelper"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K23 ["Flags"]
      101 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K23 ["Flags"]
      108 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUI_EditParameterizedAngle"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R6 K26 ["getFFlagAnimGraphUINodeFieldLayout"]
      113 GETTABLEKS                       R14 R6 K27 ["NodePropertyOverrideContext"]
      115 DUPCLOSURE                       R15 K28 [PROTO_15]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R13
      129 RETURN                           R15 1
