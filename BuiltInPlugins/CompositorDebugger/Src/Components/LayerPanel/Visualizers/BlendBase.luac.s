PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["LayerData"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["Overrides"]
        7 JUMPIFNOT                        R1 ; [+10]
        8 GETTABLEKS                       R2 R0 K1 ["Overrides"]
       10 GETTABLEKS                       R1 R2 K2 ["targetPosition"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R2 R0 K1 ["Overrides"]
       15 GETTABLEKS                       R1 R2 K2 ["targetPosition"]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K0 ["LayerData"]
       20 JUMPIFNOT                        R1 ; [+12]
       21 GETTABLEKS                       R1 R0 K0 ["LayerData"]
       23 GETTABLEKS                       R1 R1 K3 ["props"]
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETTABLEKS                       R1 R0 K0 ["LayerData"]
       28 GETTABLEKS                       R1 R1 K3 ["props"]
       30 GETTABLEKS                       R1 R1 K2 ["targetPosition"]
       32 RETURN                           R1 1
       33 LOADNIL                          R1
       34 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["size"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["state"]
       11 GETTABLEKS                       R2 R2 K2 ["size"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 GETUPVAL                         R2 0
       16 DUPTABLE                         R4 K3 [{"size"}]
       17 SETTABLEKS                       R1 R4 K2 ["size"]
       19 NAMECALL                         R2 R2 K4 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["LayerData"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["SetOverride"]
       10 GETTABLEKS                       R3 R1 K3 ["id"]
       12 NEWTABLE                         R4 0 1
       14 LOADK                            R5 K4 ["targetPosition"]
       15 SETLIST                          R4 R5 1 [1]
       17 LOADNIL                          R5
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["DotSize"]
        2 NAMECALL                         R2 R2 K1 ["GetAttribute"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
        7 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseButton1]
        9 JUMPIFNOTEQ                      R3 R4 ; [+35]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K9 [{["dragging"] = True, ["delta"]}]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K10 ["cursor"]
       16 GETTABLEKS                       R8 R8 K11 ["current"]
       18 GETTABLEKS                       R8 R8 K12 ["AbsolutePosition"]
       20 LOADK                            R10 K13 [0.5]
       21 GETIMPORT                        R11 K16 [Vector2.new]
       23 MOVE                             R12 R2
       24 MOVE                             R13 R2
       25 CALL                             R11 2 1
       26 MUL                              R9 R10 R11
       27 ADD                              R7 R8 R9
       28 GETIMPORT                        R8 K16 [Vector2.new]
       30 GETTABLEKS                       R9 R1 K17 ["Position"]
       32 GETTABLEKS                       R9 R9 K18 ["X"]
       34 GETTABLEKS                       R10 R1 K17 ["Position"]
       36 GETTABLEKS                       R10 R10 K19 ["Y"]
       38 CALL                             R8 2 1
       39 SUB                              R6 R7 R8
       40 SETTABLEKS                       R6 R5 K8 ["delta"]
       42 NAMECALL                         R3 R3 K20 ["setState"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R3 R1 K2 ["LayerData"]
        8 GETIMPORT                        R5 K5 [Vector2.new]
       10 GETTABLEKS                       R6 R0 K6 ["Position"]
       12 GETTABLEKS                       R6 R6 K7 ["X"]
       14 GETTABLEKS                       R7 R0 K6 ["Position"]
       16 GETTABLEKS                       R7 R7 K8 ["Y"]
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K1 ["state"]
       22 GETTABLEKS                       R6 R6 K9 ["delta"]
       24 ADD                              R4 R5 R6
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K10 ["dragArea"]
       28 GETTABLEKS                       R5 R5 K11 ["current"]
       30 GETTABLEKS                       R6 R5 K12 ["AbsolutePosition"]
       32 GETTABLEKS                       R7 R5 K13 ["AbsoluteSize"]
       34 SUB                              R8 R4 R6
       35 DIV                              R9 R8 R7
       36 GETIMPORT                        R10 K5 [Vector2.new]
       38 GETTABLEKS                       R12 R9 K7 ["X"]
       40 LOADN                            R13 0
       41 LOADN                            R14 1
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R11 K16 [math.clamp]
       45 CALL                             R11 3 1
       46 GETUPVAL                         R13 0
       47 GETTABLEKS                       R13 R13 K0 ["props"]
       49 GETTABLEKS                       R13 R13 K17 ["Show2D"]
       51 JUMPIFNOT                        R13 ; [+9]
       52 GETTABLEKS                       R13 R9 K8 ["Y"]
       54 LOADN                            R14 0
       55 LOADN                            R15 1
       56 FASTCALL                         MATH_CLAMP ; [+2]
       57 GETIMPORT                        R12 K16 [math.clamp]
       59 CALL                             R12 3 1
       60 JUMP                             ; [+1]
       61 LOADK                            R12 K18 [0.5]
       62 CALL                             R10 2 1
       63 MOVE                             R9 R10
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K19 ["cursor"]
       67 GETTABLEKS                       R10 R10 K11 ["current"]
       69 GETIMPORT                        R11 K22 [UDim2.fromScale]
       71 GETTABLEKS                       R12 R9 K7 ["X"]
       73 GETTABLEKS                       R13 R9 K8 ["Y"]
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K6 ["Position"]
       78 GETIMPORT                        R10 K5 [Vector2.new]
       80 GETTABLEKS                       R11 R9 K7 ["X"]
       82 GETTABLEKS                       R13 R9 K8 ["Y"]
       84 SUBRK                            R12 K23 [1] R13
       85 CALL                             R10 2 1
       86 GETTABLEKS                       R12 R2 K24 ["min"]
       88 GETTABLEKS                       R15 R2 K25 ["max"]
       90 GETTABLEKS                       R16 R2 K24 ["min"]
       92 SUB                              R14 R15 R16
       93 MUL                              R13 R10 R14
       94 ADD                              R11 R12 R13
       95 GETTABLEKS                       R12 R1 K26 ["SetOverride"]
       97 GETTABLEKS                       R13 R3 K27 ["id"]
       99 NEWTABLE                         R14 0 1
      101 LOADK                            R15 K28 ["targetPosition"]
      102 SETLIST                          R14 R15 1 [1]
      104 GETUPVAL                         R16 0
      105 GETTABLEKS                       R16 R16 K0 ["props"]
      107 GETTABLEKS                       R16 R16 K17 ["Show2D"]
      109 JUMPIFNOT                        R16 ; [+2]
      110 MOVE                             R15 R11
      111 JUMP                             ; [+2]
      112 GETTABLEKS                       R15 R11 K7 ["X"]
      114 CALL                             R12 3 0
      115 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Show2D"]
        5 JUMPIFNOT                        R1 ; [+56]
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K3 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+7]
       13 GETIMPORT                        R1 K7 [Vector2.new]
       15 MOVE                             R2 R0
       16 LOADN                            R3 0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K3 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFNOTEQKS                    R1 K5 ["Vector2"] ; [+2]
       26 RETURN                           R0 1
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K3 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K8 ["Vector3"] ; [+15]
       34 FASTCALL1                        TYPE R0 ; [+3]
       35 MOVE                             R2 R0
       36 GETIMPORT                        R1 K10 [type]
       38 CALL                             R1 1 1
       39 JUMPIFEQKS                       R1 K11 ["userdata"] ; [+8]
       41 FASTCALL1                        TYPE R0 ; [+3]
       42 MOVE                             R2 R0
       43 GETIMPORT                        R1 K10 [type]
       45 CALL                             R1 1 1
       46 JUMPIFNOTEQKS                    R1 K12 ["table"] ; [+11]
       48 GETIMPORT                        R1 K7 [Vector2.new]
       50 GETTABLEKS                       R3 R0 K14 ["X"]
       52 ORK                              R2 R3 K13 [0]
       53 GETTABLEKS                       R4 R0 K15 ["Y"]
       55 ORK                              R3 R4 K13 [0]
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1
       58 GETIMPORT                        R1 K7 [Vector2.new]
       60 CALL                             R1 0 -1
       61 RETURN                           R1 -1
       62 FASTCALL1                        TYPEOF R0 ; [+3]
       63 MOVE                             R2 R0
       64 GETIMPORT                        R1 K3 [typeof]
       66 CALL                             R1 1 1
       67 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+7]
       69 GETIMPORT                        R1 K7 [Vector2.new]
       71 MOVE                             R2 R0
       72 LOADK                            R3 K16 [0.5]
       73 CALL                             R1 2 -1
       74 RETURN                           R1 -1
       75 FASTCALL1                        TYPEOF R0 ; [+3]
       76 MOVE                             R2 R0
       77 GETIMPORT                        R1 K3 [typeof]
       79 CALL                             R1 1 1
       80 JUMPIFEQKS                       R1 K5 ["Vector2"] ; [+22]
       82 FASTCALL1                        TYPEOF R0 ; [+3]
       83 MOVE                             R2 R0
       84 GETIMPORT                        R1 K3 [typeof]
       86 CALL                             R1 1 1
       87 JUMPIFEQKS                       R1 K8 ["Vector3"] ; [+15]
       89 FASTCALL1                        TYPE R0 ; [+3]
       90 MOVE                             R2 R0
       91 GETIMPORT                        R1 K10 [type]
       93 CALL                             R1 1 1
       94 JUMPIFEQKS                       R1 K11 ["userdata"] ; [+8]
       96 FASTCALL1                        TYPE R0 ; [+3]
       97 MOVE                             R2 R0
       98 GETIMPORT                        R1 K10 [type]
      100 CALL                             R1 1 1
      101 JUMPIFNOTEQKS                    R1 K12 ["table"] ; [+9]
      103 GETIMPORT                        R1 K7 [Vector2.new]
      105 GETTABLEKS                       R3 R0 K14 ["X"]
      107 ORK                              R2 R3 K13 [0]
      108 LOADK                            R3 K16 [0.5]
      109 CALL                             R1 2 -1
      110 RETURN                           R1 -1
      111 GETIMPORT                        R1 K7 [Vector2.new]
      113 LOADN                            R2 0
      114 LOADK                            R3 K16 [0.5]
      115 CALL                             R1 2 -1
      116 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["make2dPosition"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K3 [Vector2.new]
        7 GETTABLEKS                       R6 R3 K4 ["X"]
        9 GETTABLEKS                       R7 R1 K4 ["X"]
       11 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       13 GETIMPORT                        R5 K7 [math.min]
       15 CALL                             R5 2 1
       16 GETTABLEKS                       R7 R3 K8 ["Y"]
       18 GETTABLEKS                       R8 R1 K8 ["Y"]
       20 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       22 GETIMPORT                        R6 K7 [math.min]
       24 CALL                             R6 2 1
       25 CALL                             R4 2 1
       26 GETIMPORT                        R5 K3 [Vector2.new]
       28 GETTABLEKS                       R7 R3 K4 ["X"]
       30 GETTABLEKS                       R8 R2 K4 ["X"]
       32 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       34 GETIMPORT                        R6 K10 [math.max]
       36 CALL                             R6 2 1
       37 GETTABLEKS                       R8 R3 K8 ["Y"]
       39 GETTABLEKS                       R9 R2 K8 ["Y"]
       41 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       43 GETIMPORT                        R7 K10 [math.max]
       45 CALL                             R7 2 1
       46 CALL                             R5 2 -1
       47 RETURN                           R4 -1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+4]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["\n"]
        3 CONCAT                           R2 R3 R4
        4 JUMP                             ; [+1]
        5 LOADK                            R2 K1 [""]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["Show2D"]
       11 JUMPIFNOT                        R3 ; [+11]
       12 MOVE                             R3 R2
       13 GETIMPORT                        R4 K6 [string.format]
       15 LOADK                            R5 K7 ["(%.2f, %.2f)"]
       16 GETTABLEKS                       R6 R1 K8 ["X"]
       18 GETTABLEKS                       R7 R1 K9 ["Y"]
       20 CALL                             R4 3 1
       21 CONCAT                           R2 R3 R4
       22 RETURN                           R2 1
       23 MOVE                             R3 R2
       24 GETIMPORT                        R4 K6 [string.format]
       26 LOADK                            R5 K10 ["(%.2f)"]
       27 GETTABLEKS                       R6 R1 K8 ["X"]
       29 CALL                             R4 2 1
       30 CONCAT                           R2 R3 R4
       31 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R2 R0 K1 ["max"]
        5 GETTABLEKS                       R3 R0 K2 ["min"]
        7 SUB                              R1 R2 R3
        8 GETIMPORT                        R2 K5 [Vector2.new]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R4 R1 K6 ["X"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R5 R1 K7 ["Y"]
       17 CALL                             R4 1 -1
       18 CALL                             R2 -1 1
       19 GETIMPORT                        R3 K5 [Vector2.new]
       21 GETTABLEKS                       R7 R0 K2 ["min"]
       23 GETTABLEKS                       R7 R7 K6 ["X"]
       25 GETTABLEKS                       R8 R2 K6 ["X"]
       27 DIV                              R6 R7 R8
       28 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       29 GETIMPORT                        R5 K10 [math.floor]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R2 K6 ["X"]
       34 MUL                              R4 R5 R6
       35 GETTABLEKS                       R8 R0 K2 ["min"]
       37 GETTABLEKS                       R8 R8 K7 ["Y"]
       39 GETTABLEKS                       R9 R2 K7 ["Y"]
       41 DIV                              R7 R8 R9
       42 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       43 GETIMPORT                        R6 K10 [math.floor]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R2 K7 ["Y"]
       48 MUL                              R5 R6 R7
       49 CALL                             R3 2 1
       50 GETIMPORT                        R4 K5 [Vector2.new]
       52 GETTABLEKS                       R8 R0 K1 ["max"]
       54 GETTABLEKS                       R8 R8 K6 ["X"]
       56 GETTABLEKS                       R9 R2 K6 ["X"]
       58 DIV                              R7 R8 R9
       59 FASTCALL1                        MATH_CEIL R7 ; [+2]
       60 GETIMPORT                        R6 K12 [math.ceil]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R2 K6 ["X"]
       65 MUL                              R5 R6 R7
       66 GETTABLEKS                       R9 R0 K1 ["max"]
       68 GETTABLEKS                       R9 R9 K7 ["Y"]
       70 GETTABLEKS                       R10 R2 K7 ["Y"]
       72 DIV                              R8 R9 R10
       73 FASTCALL1                        MATH_CEIL R8 ; [+2]
       74 GETIMPORT                        R7 K12 [math.ceil]
       76 CALL                             R7 1 1
       77 GETTABLEKS                       R8 R2 K7 ["Y"]
       79 MUL                              R6 R7 R8
       80 CALL                             R4 2 1
       81 MOVE                             R5 R3
       82 MOVE                             R6 R4
       83 MOVE                             R7 R2
       84 RETURN                           R5 3

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["dragArea"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["cursor"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["state"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["onCanvasAbsoluteSizeChanged"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K5 ["resetOverride"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K6 ["onDragStarted"]
       29 NEWCLOSURE                       R1 P3
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K7 ["onDragMoved"]
       33 NEWCLOSURE                       R1 P4
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K8 ["onDragEnded"]
       37 NEWCLOSURE                       R1 P5
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K9 ["make2dPosition"]
       41 NEWCLOSURE                       R1 P6
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K10 ["updateMinMax"]
       45 NEWCLOSURE                       R1 P7
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K11 ["makeTooltipText"]
       49 NEWCLOSURE                       R1 P8
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R1 R0 K12 ["calculateGrid"]
       54 LOADB                            R3 1
       55 NAMECALL                         R1 R0 K13 ["calculateExtents"]
       57 CALL                             R1 2 0
       58 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["LayerData"]
        6 GETTABLEKS                       R4 R2 K3 ["dragging"]
        8 NEWTABLE                         R5 1 0
       10 JUMPIFNOT                        R3 ; [+213]
       11 GETTABLEKS                       R6 R3 K4 ["children"]
       13 JUMPIF                           R6 ; [+2]
       14 NEWTABLE                         R6 0 0
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 LOADK                            R12 K5 ["Dot_"]
       20 GETTABLEKS                       R13 R10 K6 ["name"]
       22 JUMPIF                           R13 ; [+5]
       23 FASTCALL1                        TOSTRING R9 ; [+3]
       24 MOVE                             R14 R9
       25 GETIMPORT                        R13 K8 [tostring]
       27 CALL                             R13 1 1
       28 CONCAT                           R11 R12 R13
       29 JUMPIFNOT                        R10 ; [+8]
       30 GETTABLEKS                       R13 R10 K9 ["linkData"]
       32 JUMPIFNOT                        R13 ; [+5]
       33 GETTABLEKS                       R12 R10 K9 ["linkData"]
       35 GETTABLEKS                       R12 R12 K10 ["position"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R12
       39 JUMPIFNOT                        R12 ; [+62]
       40 GETTABLEKS                       R13 R0 K11 ["make2dPosition"]
       42 MOVE                             R14 R12
       43 CALL                             R13 1 1
       44 GETTABLEKS                       R16 R2 K12 ["min"]
       46 SUB                              R15 R13 R16
       47 GETTABLEKS                       R17 R2 K13 ["max"]
       49 GETTABLEKS                       R18 R2 K12 ["min"]
       51 SUB                              R16 R17 R18
       52 DIV                              R14 R15 R16
       53 GETUPVAL                         R15 0
       54 GETTABLEKS                       R15 R15 K14 ["createElement"]
       56 LOADK                            R16 K15 ["ImageButton"]
       57 NEWTABLE                         R17 4 0
       59 LOADN                            R18 4
       60 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
       62 GETIMPORT                        R18 K19 [UDim2.fromScale]
       64 GETTABLEKS                       R19 R14 K20 ["X"]
       66 GETTABLEKS                       R21 R14 K22 ["Y"]
       68 SUBRK                            R20 K21 [1] R21
       69 CALL                             R18 2 1
       70 SETTABLEKS                       R18 R17 K23 ["Position"]
       72 LOADN                            R18 3
       73 SETTABLEKS                       R18 R17 K24 ["ZIndex"]
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R18 R18 K25 ["Tag"]
       78 LOADK                            R19 K26 ["Dot"]
       79 SETTABLE                         R19 R17 R18
       80 DUPTABLE                         R18 K28 [{"Tooltip"}]
       81 JUMPIF                           R4 ; [+15]
       82 GETUPVAL                         R19 0
       83 GETTABLEKS                       R19 R19 K14 ["createElement"]
       85 GETUPVAL                         R20 1
       86 DUPTABLE                         R21 K30 [{"Text"}]
       87 GETTABLEKS                       R22 R0 K31 ["makeTooltipText"]
       89 GETTABLEKS                       R23 R10 K6 ["name"]
       91 MOVE                             R24 R13
       92 CALL                             R22 2 1
       93 SETTABLEKS                       R22 R21 K29 ["Text"]
       95 CALL                             R19 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R19
       98 SETTABLEKS                       R19 R18 K27 ["Tooltip"]
      100 CALL                             R15 3 1
      101 SETTABLE                         R15 R5 R11
      102 FORGLOOP                         R6 2 ; [-84]
      104 GETTABLEKS                       R6 R3 K0 ["props"]
      106 JUMPIFNOT                        R6 ; [+117]
      107 GETTABLEKS                       R6 R3 K0 ["props"]
      109 GETTABLEKS                       R6 R6 K32 ["targetPosition"]
      111 JUMPIFNOT                        R6 ; [+112]
      112 GETTABLEKS                       R7 R1 K33 ["Overrides"]
      114 JUMPIFNOT                        R7 ; [+5]
      115 GETTABLEKS                       R7 R1 K33 ["Overrides"]
      117 GETTABLEKS                       R6 R7 K32 ["targetPosition"]
      119 JUMPIF                           R6 ; [+1]
      120 LOADNIL                          R6
      121 MOVE                             R7 R6
      122 JUMPIF                           R7 ; [+4]
      123 GETTABLEKS                       R7 R3 K0 ["props"]
      125 GETTABLEKS                       R7 R7 K32 ["targetPosition"]
      127 GETTABLEKS                       R8 R0 K11 ["make2dPosition"]
      129 MOVE                             R9 R7
      130 CALL                             R8 1 1
      131 GETTABLEKS                       R11 R2 K12 ["min"]
      133 SUB                              R10 R8 R11
      134 GETTABLEKS                       R12 R2 K13 ["max"]
      136 GETTABLEKS                       R13 R2 K12 ["min"]
      138 SUB                              R11 R12 R13
      139 DIV                              R9 R10 R11
      140 GETUPVAL                         R10 0
      141 GETTABLEKS                       R10 R10 K14 ["createElement"]
      143 LOADK                            R11 K15 ["ImageButton"]
      144 NEWTABLE                         R12 8 0
      146 LOADN                            R13 4
      147 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      149 GETIMPORT                        R13 K19 [UDim2.fromScale]
      151 GETTABLEKS                       R14 R9 K20 ["X"]
      153 GETTABLEKS                       R16 R9 K22 ["Y"]
      155 SUBRK                            R15 K21 [1] R16
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K23 ["Position"]
      159 LOADN                            R13 5
      160 SETTABLEKS                       R13 R12 K24 ["ZIndex"]
      162 GETTABLEKS                       R13 R0 K34 ["cursor"]
      164 SETTABLEKS                       R13 R12 K35 ["ref"]
      166 GETUPVAL                         R13 0
      167 GETTABLEKS                       R13 R13 K36 ["Event"]
      169 GETTABLEKS                       R13 R13 K37 ["InputBegan"]
      171 GETTABLEKS                       R14 R0 K38 ["onDragStarted"]
      173 SETTABLE                         R14 R12 R13
      174 GETUPVAL                         R13 0
      175 GETTABLEKS                       R13 R13 K25 ["Tag"]
      177 GETUPVAL                         R14 2
      178 LOADK                            R15 K26 ["Dot"]
      179 LOADK                            R16 K39 ["Cursor"]
      180 JUMPIFNOT                        R6 ; [+2]
      181 LOADK                            R17 K40 ["Override"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R17
      184 CALL                             R14 3 1
      185 SETTABLE                         R14 R12 R13
      186 JUMPIFNOT                        R4 ; [+33]
      187 DUPTABLE                         R13 K42 [{"DragListener", "Tooltip"}]
      188 GETUPVAL                         R14 0
      189 GETTABLEKS                       R14 R14 K14 ["createElement"]
      191 GETUPVAL                         R15 3
      192 DUPTABLE                         R16 K45 [{"OnDragMoved", "OnDragEnded"}]
      193 GETTABLEKS                       R17 R0 K46 ["onDragMoved"]
      195 SETTABLEKS                       R17 R16 K43 ["OnDragMoved"]
      197 GETTABLEKS                       R17 R0 K47 ["onDragEnded"]
      199 SETTABLEKS                       R17 R16 K44 ["OnDragEnded"]
      201 CALL                             R14 2 1
      202 SETTABLEKS                       R14 R13 K41 ["DragListener"]
      204 GETUPVAL                         R14 0
      205 GETTABLEKS                       R14 R14 K14 ["createElement"]
      207 GETUPVAL                         R15 1
      208 DUPTABLE                         R16 K30 [{"Text"}]
      209 GETTABLEKS                       R17 R0 K31 ["makeTooltipText"]
      211 LOADNIL                          R18
      212 MOVE                             R19 R8
      213 CALL                             R17 2 1
      214 SETTABLEKS                       R17 R16 K29 ["Text"]
      216 CALL                             R14 2 1
      217 SETTABLEKS                       R14 R13 K27 ["Tooltip"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R13
      221 CALL                             R10 3 1
      222 SETTABLEKS                       R10 R5 K34 ["cursor"]
      224 RETURN                           R5 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["FrameBuffer"]
        6 JUMPIFNOT                        R3 ; [+14]
        7 GETTABLEKS                       R3 R1 K3 ["ShowTrail"]
        9 JUMPIFNOT                        R3 ; [+11]
       10 GETTABLEKS                       R3 R2 K4 ["dragging"]
       12 JUMPIF                           R3 ; [+8]
       13 GETTABLEKS                       R3 R1 K5 ["Overrides"]
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETTABLEKS                       R4 R1 K5 ["Overrides"]
       18 GETTABLEKS                       R3 R4 K6 ["targetPosition"]
       20 JUMPIFNOT                        R3 ; [+3]
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1
       24 NEWTABLE                         R3 0 0
       26 LOADNIL                          R4
       27 LOADN                            R7 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K7 ["BLEND_TRAIL_LENGTH"]
       31 LOADN                            R6 1
       32 FORNPREP                         R5
       33 GETTABLEKS                       R9 R1 K2 ["FrameBuffer"]
       35 GETTABLEKS                       R12 R1 K9 ["HistoryFrame"]
       37 ORK                              R11 R12 K8 [1]
       38 ADD                              R10 R11 R7
       39 GETTABLE                         R8 R9 R10
       40 MOVE                             R9 R8
       41 JUMPIFNOT                        R9 ; [+10]
       42 GETTABLEKS                       R9 R8 K10 ["layerMap"]
       44 JUMPIFNOT                        R9 ; [+7]
       45 GETTABLEKS                       R10 R8 K10 ["layerMap"]
       47 GETTABLEKS                       R11 R1 K11 ["LayerData"]
       49 GETTABLEKS                       R11 R11 K12 ["id"]
       51 GETTABLE                         R9 R10 R11
       52 MOVE                             R10 R9
       53 JUMPIFNOT                        R10 ; [+4]
       54 GETTABLEKS                       R10 R9 K0 ["props"]
       56 GETTABLEKS                       R10 R10 K6 ["targetPosition"]
       58 JUMPIFNOT                        R10 ; [+109]
       59 JUMPIFNOT                        R4 ; [+108]
       60 GETTABLEKS                       R11 R2 K13 ["size"]
       62 JUMPIFNOT                        R11 ; [+105]
       63 GETTABLEKS                       R11 R0 K14 ["make2dPosition"]
       65 MOVE                             R12 R10
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R14 R2 K15 ["min"]
       69 SUB                              R13 R11 R14
       70 GETTABLEKS                       R15 R2 K16 ["max"]
       72 GETTABLEKS                       R16 R2 K15 ["min"]
       74 SUB                              R14 R15 R16
       75 DIV                              R12 R13 R14
       76 GETIMPORT                        R13 K19 [Vector2.new]
       78 GETTABLEKS                       R15 R2 K13 ["size"]
       80 GETTABLEKS                       R15 R15 K20 ["X"]
       82 GETTABLEKS                       R16 R12 K20 ["X"]
       84 MUL                              R14 R15 R16
       85 GETTABLEKS                       R16 R2 K13 ["size"]
       87 GETTABLEKS                       R16 R16 K21 ["Y"]
       89 GETTABLEKS                       R18 R12 K21 ["Y"]
       91 SUBRK                            R17 K8 [1] R18
       92 MUL                              R15 R16 R17
       93 CALL                             R13 2 1
       94 MOVE                             R11 R13
       95 GETTABLEKS                       R13 R0 K14 ["make2dPosition"]
       97 MOVE                             R14 R4
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R16 R2 K15 ["min"]
      101 SUB                              R15 R13 R16
      102 GETTABLEKS                       R17 R2 K16 ["max"]
      104 GETTABLEKS                       R18 R2 K15 ["min"]
      106 SUB                              R16 R17 R18
      107 DIV                              R14 R15 R16
      108 GETIMPORT                        R15 K19 [Vector2.new]
      110 GETTABLEKS                       R17 R2 K13 ["size"]
      112 GETTABLEKS                       R17 R17 K20 ["X"]
      114 GETTABLEKS                       R18 R14 K20 ["X"]
      116 MUL                              R16 R17 R18
      117 GETTABLEKS                       R18 R2 K13 ["size"]
      119 GETTABLEKS                       R18 R18 K21 ["Y"]
      121 GETTABLEKS                       R20 R14 K21 ["Y"]
      123 SUBRK                            R19 K8 [1] R20
      124 MUL                              R17 R18 R19
      125 CALL                             R15 2 1
      126 MOVE                             R13 R15
      127 LOADK                            R16 K22 ["Trail"]
      128 FASTCALL1                        TOSTRING R7 ; [+3]
      129 MOVE                             R18 R7
      130 GETIMPORT                        R17 K24 [tostring]
      132 CALL                             R17 1 1
      133 CONCAT                           R15 R16 R17
      134 GETUPVAL                         R16 1
      135 GETTABLEKS                       R16 R16 K25 ["createElement"]
      137 GETUPVAL                         R17 2
      138 NEWTABLE                         R18 8 0
      140 SETTABLEKS                       R13 R18 K26 ["From"]
      142 SETTABLEKS                       R11 R18 K27 ["To"]
      144 LOADN                            R19 4
      145 SETTABLEKS                       R19 R18 K28 ["ZIndex"]
      147 GETIMPORT                        R19 K30 [Color3.new]
      149 LOADN                            R20 1
      150 LOADN                            R21 0
      151 LOADN                            R22 0
      152 CALL                             R19 3 1
      153 SETTABLEKS                       R19 R18 K31 ["Color"]
      155 GETUPVAL                         R20 0
      156 GETTABLEKS                       R20 R20 K7 ["BLEND_TRAIL_LENGTH"]
      158 DIV                              R19 R7 R20
      159 SETTABLEKS                       R19 R18 K32 ["Transparency"]
      161 GETUPVAL                         R19 1
      162 GETTABLEKS                       R19 R19 K33 ["Tag"]
      164 LOADK                            R20 K22 ["Trail"]
      165 SETTABLE                         R20 R18 R19
      166 CALL                             R16 2 1
      167 SETTABLE                         R16 R3 R15
      168 MOVE                             R4 R10
      169 FORNLOOP                         R5
      170 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K2 ["calculateGrid"]
        8 CALL                             R4 0 3
        9 LOADN                            R7 1
       10 GETTABLEKS                       R8 R1 K3 ["Show2D"]
       12 JUMPIFNOT                        R8 ; [+76]
       13 GETTABLEKS                       R10 R4 K4 ["Y"]
       15 GETTABLEKS                       R8 R5 K4 ["Y"]
       17 GETTABLEKS                       R9 R6 K4 ["Y"]
       19 FORNPREP                         R8
       20 GETIMPORT                        R11 K7 [string.format]
       22 LOADK                            R12 K8 ["Y%d"]
       23 MOVE                             R13 R7
       24 CALL                             R11 2 1
       25 ADDK                             R7 R7 K9 [1]
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R12 R12 K10 ["createElement"]
       29 GETUPVAL                         R13 1
       30 NEWTABLE                         R14 8 0
       32 GETIMPORT                        R15 K13 [Vector2.new]
       34 LOADN                            R16 0
       35 LOADK                            R17 K14 [0.5]
       36 CALL                             R15 2 1
       37 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
       39 GETIMPORT                        R15 K17 [UDim2.new]
       41 LOADN                            R16 1
       42 LOADN                            R17 0
       43 LOADN                            R18 0
       44 LOADN                            R19 1
       45 CALL                             R15 4 1
       46 SETTABLEKS                       R15 R14 K18 ["Size"]
       48 GETIMPORT                        R15 K20 [UDim2.fromScale]
       50 LOADN                            R16 0
       51 GETTABLEKS                       R20 R2 K21 ["min"]
       53 GETTABLEKS                       R20 R20 K4 ["Y"]
       55 SUB                              R19 R10 R20
       56 GETTABLEKS                       R21 R2 K22 ["max"]
       58 GETTABLEKS                       R21 R21 K4 ["Y"]
       60 GETTABLEKS                       R22 R2 K21 ["min"]
       62 GETTABLEKS                       R22 R22 K4 ["Y"]
       64 SUB                              R20 R21 R22
       65 DIV                              R18 R19 R20
       66 SUBRK                            R17 K9 [1] R18
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K23 ["Position"]
       70 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
       72 LOADN                            R15 2
       73 JUMP                             ; [+1]
       74 LOADN                            R15 1
       75 SETTABLEKS                       R15 R14 K25 ["ZIndex"]
       77 GETUPVAL                         R15 0
       78 GETTABLEKS                       R15 R15 K26 ["Tag"]
       80 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
       82 LOADK                            R16 K27 ["Axis"]
       83 JUMP                             ; [+1]
       84 LOADK                            R16 K28 ["Grid"]
       85 SETTABLE                         R16 R14 R15
       86 CALL                             R12 2 1
       87 SETTABLE                         R12 R3 R11
       88 FORNLOOP                         R8
       89 LOADN                            R7 1
       90 GETTABLEKS                       R10 R4 K29 ["X"]
       92 GETTABLEKS                       R8 R5 K29 ["X"]
       94 GETTABLEKS                       R9 R6 K29 ["X"]
       96 FORNPREP                         R8
       97 GETIMPORT                        R11 K7 [string.format]
       99 LOADK                            R12 K30 ["X%d"]
      100 MOVE                             R13 R7
      101 CALL                             R11 2 1
      102 ADDK                             R7 R7 K9 [1]
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K10 ["createElement"]
      106 GETUPVAL                         R13 1
      107 NEWTABLE                         R14 8 0
      109 GETIMPORT                        R15 K13 [Vector2.new]
      111 LOADK                            R16 K14 [0.5]
      112 LOADN                            R17 0
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
      116 GETIMPORT                        R15 K17 [UDim2.new]
      118 LOADN                            R16 0
      119 LOADN                            R17 1
      120 LOADN                            R18 1
      121 LOADN                            R19 0
      122 CALL                             R15 4 1
      123 SETTABLEKS                       R15 R14 K18 ["Size"]
      125 GETIMPORT                        R15 K20 [UDim2.fromScale]
      127 GETTABLEKS                       R18 R2 K21 ["min"]
      129 GETTABLEKS                       R18 R18 K29 ["X"]
      131 SUB                              R17 R10 R18
      132 GETTABLEKS                       R19 R2 K22 ["max"]
      134 GETTABLEKS                       R19 R19 K29 ["X"]
      136 GETTABLEKS                       R20 R2 K21 ["min"]
      138 GETTABLEKS                       R20 R20 K29 ["X"]
      140 SUB                              R18 R19 R20
      141 DIV                              R16 R17 R18
      142 LOADN                            R17 0
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K23 ["Position"]
      146 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
      148 LOADN                            R15 2
      149 JUMP                             ; [+1]
      150 LOADN                            R15 1
      151 SETTABLEKS                       R15 R14 K25 ["ZIndex"]
      153 GETUPVAL                         R15 0
      154 GETTABLEKS                       R15 R15 K26 ["Tag"]
      156 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
      158 LOADK                            R16 K27 ["Axis"]
      159 JUMP                             ; [+1]
      160 LOADK                            R16 K28 ["Grid"]
      161 SETTABLE                         R16 R14 R15
      162 CALL                             R12 2 1
      163 SETTABLE                         R12 R3 R11
      164 FORNLOOP                         R8
      165 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["LayerData"]
        4 JUMPIF                           R1 ; [+5]
        5 GETTABLEKS                       R4 R0 K2 ["state"]
        7 GETTABLEKS                       R4 R4 K3 ["min"]
        9 JUMPIF                           R4 ; [+10]
       10 GETIMPORT                        R4 K6 [Vector2.new]
       12 LOADK                            R5 K7 [∞]
       13 GETTABLEKS                       R7 R2 K8 ["Show2D"]
       15 JUMPIFNOT                        R7 ; [+2]
       16 LOADK                            R6 K7 [∞]
       17 JUMP                             ; [+1]
       18 LOADN                            R6 0
       19 CALL                             R4 2 1
       20 JUMPIF                           R1 ; [+5]
       21 GETTABLEKS                       R5 R0 K2 ["state"]
       23 GETTABLEKS                       R5 R5 K9 ["max"]
       25 JUMPIF                           R5 ; [+10]
       26 GETIMPORT                        R5 K6 [Vector2.new]
       28 LOADK                            R6 K10 [-∞]
       29 GETTABLEKS                       R8 R2 K8 ["Show2D"]
       31 JUMPIFNOT                        R8 ; [+2]
       32 LOADK                            R7 K10 [-∞]
       33 JUMP                             ; [+1]
       34 LOADN                            R7 1
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R3 ; [+72]
       37 GETTABLEKS                       R7 R2 K1 ["LayerData"]
       39 JUMPIF                           R7 ; [+2]
       40 LOADNIL                          R6
       41 JUMP                             ; [+29]
       42 GETTABLEKS                       R7 R2 K11 ["Overrides"]
       44 JUMPIFNOT                        R7 ; [+10]
       45 GETTABLEKS                       R8 R2 K11 ["Overrides"]
       47 GETTABLEKS                       R7 R8 K12 ["targetPosition"]
       49 JUMPIFNOT                        R7 ; [+5]
       50 GETTABLEKS                       R7 R2 K11 ["Overrides"]
       52 GETTABLEKS                       R6 R7 K12 ["targetPosition"]
       54 JUMP                             ; [+16]
       55 GETTABLEKS                       R7 R2 K1 ["LayerData"]
       57 JUMPIFNOT                        R7 ; [+12]
       58 GETTABLEKS                       R7 R2 K1 ["LayerData"]
       60 GETTABLEKS                       R7 R7 K0 ["props"]
       62 JUMPIFNOT                        R7 ; [+7]
       63 GETTABLEKS                       R6 R2 K1 ["LayerData"]
       65 GETTABLEKS                       R6 R6 K0 ["props"]
       67 GETTABLEKS                       R6 R6 K12 ["targetPosition"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 JUMPIFNOT                        R6 ; [+8]
       72 GETTABLEKS                       R7 R0 K13 ["updateMinMax"]
       74 MOVE                             R8 R6
       75 MOVE                             R9 R4
       76 MOVE                             R10 R5
       77 CALL                             R7 3 2
       78 MOVE                             R4 R7
       79 MOVE                             R5 R8
       80 GETTABLEKS                       R7 R3 K14 ["children"]
       82 JUMPIF                           R7 ; [+2]
       83 NEWTABLE                         R7 0 0
       85 LOADNIL                          R8
       86 LOADNIL                          R9
       87 FORGPREP                         R7
       88 GETTABLEKS                       R12 R11 K15 ["linkData"]
       90 JUMPIFNOT                        R12 ; [+16]
       91 GETTABLEKS                       R12 R11 K15 ["linkData"]
       93 GETTABLEKS                       R12 R12 K16 ["position"]
       95 JUMPIFNOT                        R12 ; [+11]
       96 GETTABLEKS                       R12 R0 K13 ["updateMinMax"]
       98 GETTABLEKS                       R13 R11 K15 ["linkData"]
      100 GETTABLEKS                       R13 R13 K16 ["position"]
      102 MOVE                             R14 R4
      103 MOVE                             R15 R5
      104 CALL                             R12 3 2
      105 MOVE                             R4 R12
      106 MOVE                             R5 R13
      107 FORGLOOP                         R7 2 ; [-20]
      109 GETTABLEKS                       R6 R0 K2 ["state"]
      111 GETTABLEKS                       R6 R6 K3 ["min"]
      113 JUMPIFNOTEQ                      R4 R6 ; [+7]
      115 GETTABLEKS                       R6 R0 K2 ["state"]
      117 GETTABLEKS                       R6 R6 K9 ["max"]
      119 JUMPIFEQ                         R5 R6 ; [+9]
      121 DUPTABLE                         R8 K17 [{"min", "max"}]
      122 SETTABLEKS                       R4 R8 K3 ["min"]
      124 SETTABLEKS                       R5 R8 K9 ["max"]
      126 NAMECALL                         R6 R0 K18 ["setState"]
      128 CALL                             R6 2 0
      129 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["LayerData"]
        4 GETTABLEKS                       R4 R1 K1 ["LayerData"]
        6 JUMPIFEQ                         R3 R4 ; [+24]
        8 GETTABLEKS                       R4 R1 K1 ["LayerData"]
       10 NOT                              R3 R4
       11 JUMPIF                           R3 ; [+15]
       12 GETTABLEKS                       R3 R2 K1 ["LayerData"]
       14 JUMPIFNOT                        R3 ; [+12]
       15 GETTABLEKS                       R4 R2 K1 ["LayerData"]
       17 GETTABLEKS                       R4 R4 K2 ["id"]
       19 GETTABLEKS                       R5 R1 K1 ["LayerData"]
       21 GETTABLEKS                       R5 R5 K2 ["id"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 MOVE                             R6 R3
       28 NAMECALL                         R4 R0 K3 ["calculateExtents"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R3 1
        1 NAMECALL                         R1 R0 K0 ["calculateExtents"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R3 R0 K1 ["createDots"]
        5 CALL                             R3 1 1
        6 NAMECALL                         R4 R0 K2 ["createTrail"]
        8 CALL                             R4 1 -1
        9 CALL                             R2 -1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["createElement"]
       13 GETUPVAL                         R4 2
       14 DUPTABLE                         R5 K6 [{["ZIndex"] = 1}]
       15 NAMECALL                         R6 R0 K7 ["createAxes"]
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 1
       19 SETTABLEKS                       R3 R2 K8 ["Grid"]
       21 GETTABLEKS                       R3 R1 K9 ["Overrides"]
       23 JUMPIFNOT                        R3 ; [+22]
       24 GETTABLEKS                       R4 R1 K9 ["Overrides"]
       26 GETTABLEKS                       R3 R4 K10 ["targetPosition"]
       28 JUMPIFNOT                        R3 ; [+17]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K3 ["createElement"]
       32 LOADK                            R4 K11 ["ImageButton"]
       33 NEWTABLE                         R5 1 0
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K12 ["Event"]
       38 GETTABLEKS                       R6 R6 K13 ["Activated"]
       40 GETTABLEKS                       R7 R0 K14 ["resetOverride"]
       42 SETTABLE                         R7 R5 R6
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K15 ["Reset"]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K3 ["createElement"]
       49 GETUPVAL                         R4 2
       50 NEWTABLE                         R5 1 0
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K16 ["Tag"]
       55 LOADK                            R7 K17 ["BlendBase"]
       56 SETTABLE                         R7 R5 R6
       57 DUPTABLE                         R6 K19 [{"Canvas"}]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K3 ["createElement"]
       61 GETUPVAL                         R8 2
       62 NEWTABLE                         R9 4 0
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R10 R10 K20 ["Change"]
       67 GETTABLEKS                       R10 R10 K21 ["AbsoluteSize"]
       69 GETTABLEKS                       R11 R0 K22 ["onCanvasAbsoluteSizeChanged"]
       71 SETTABLE                         R11 R9 R10
       72 GETUPVAL                         R10 1
       73 GETTABLEKS                       R10 R10 K16 ["Tag"]
       75 GETTABLEKS                       R12 R1 K23 ["Show2D"]
       77 JUMPIFNOT                        R12 ; [+2]
       78 LOADK                            R11 K24 ["Blend2D"]
       79 JUMP                             ; [+1]
       80 LOADK                            R11 K25 ["Blend1D"]
       81 SETTABLE                         R11 R9 R10
       82 GETTABLEKS                       R10 R0 K26 ["dragArea"]
       84 SETTABLEKS                       R10 R9 K27 ["ref"]
       86 MOVE                             R10 R2
       87 CALL                             R7 3 1
       88 SETTABLEKS                       R7 R6 K18 ["Canvas"]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K1 [{"SetOverride"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetOverride"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["join"]
       37 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["withContext"]
       41 GETTABLEKS                       R8 R6 K14 ["Analytics"]
       43 GETTABLEKS                       R9 R6 K15 ["Localization"]
       45 GETTABLEKS                       R10 R2 K16 ["Styling"]
       47 GETTABLEKS                       R11 R10 K17 ["joinTags"]
       49 GETTABLEKS                       R12 R2 K18 ["UI"]
       51 GETTABLEKS                       R13 R12 K19 ["Pane"]
       53 GETTABLEKS                       R14 R12 K20 ["Tooltip"]
       55 GETTABLEKS                       R15 R12 K21 ["DragListener"]
       57 GETTABLEKS                       R16 R0 K22 ["Src"]
       59 GETTABLEKS                       R16 R16 K23 ["Components"]
       61 GETIMPORT                        R17 K5 [require]
       63 GETTABLEKS                       R18 R16 K24 ["Line"]
       65 CALL                             R17 1 1
       66 GETTABLEKS                       R18 R0 K22 ["Src"]
       68 GETTABLEKS                       R18 R18 K25 ["Thunks"]
       70 GETIMPORT                        R19 K5 [require]
       72 GETTABLEKS                       R20 R18 K26 ["SetOverride"]
       74 CALL                             R19 1 1
       75 GETTABLEKS                       R20 R0 K22 ["Src"]
       77 GETTABLEKS                       R20 R20 K27 ["Util"]
       79 GETIMPORT                        R21 K5 [require]
       81 GETTABLEKS                       R22 R20 K28 ["Constants"]
       83 CALL                             R21 1 1
       84 GETIMPORT                        R22 K5 [require]
       86 GETTABLEKS                       R23 R20 K29 ["findInterval"]
       88 CALL                             R22 1 1
       89 GETIMPORT                        R23 K5 [require]
       91 GETIMPORT                        R24 K1 [script]
       93 GETTABLEKS                       R24 R24 K30 ["Parent"]
       95 GETTABLEKS                       R24 R24 K31 ["styles"]
       97 CALL                             R23 1 1
       98 GETIMPORT                        R24 K5 [require]
      100 GETTABLEKS                       R25 R0 K22 ["Src"]
      102 GETTABLEKS                       R25 R25 K32 ["Types"]
      104 CALL                             R24 1 1
      105 DUPTABLE                         R25 K43 [{["Grid"] = 1, ["Axis"] = 2, ["Dot"] = 3, ["Trail"] = 4, ["Cursor"] = 5}]
      106 GETTABLEKS                       R26 R3 K44 ["PureComponent"]
      108 LOADK                            R28 K45 ["BlendBase"]
      109 NAMECALL                         R26 R26 K46 ["extend"]
      111 CALL                             R26 2 1
      112 DUPCLOSURE                       R27 K47 [PROTO_0]
      113 DUPCLOSURE                       R28 K48 [PROTO_10]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R23
      116 CAPTURE                          VAL R22
      117 SETTABLEKS                       R28 R26 K49 ["init"]
      119 DUPCLOSURE                       R28 K50 [PROTO_11]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R15
      124 SETTABLEKS                       R28 R26 K51 ["createDots"]
      126 DUPCLOSURE                       R28 K52 [PROTO_12]
      127 CAPTURE                          VAL R21
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R17
      130 SETTABLEKS                       R28 R26 K53 ["createTrail"]
      132 DUPCLOSURE                       R28 K54 [PROTO_13]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R13
      135 SETTABLEKS                       R28 R26 K55 ["createAxes"]
      137 DUPCLOSURE                       R28 K56 [PROTO_14]
      138 SETTABLEKS                       R28 R26 K57 ["calculateExtents"]
      140 DUPCLOSURE                       R28 K58 [PROTO_15]
      141 SETTABLEKS                       R28 R26 K59 ["didUpdate"]
      143 DUPCLOSURE                       R28 K60 [PROTO_16]
      144 SETTABLEKS                       R28 R26 K61 ["didMount"]
      146 DUPCLOSURE                       R28 K62 [PROTO_17]
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R13
      150 SETTABLEKS                       R28 R26 K63 ["render"]
      152 MOVE                             R28 R7
      153 DUPTABLE                         R29 K64 [{"Analytics", "Localization"}]
      154 SETTABLEKS                       R8 R29 K14 ["Analytics"]
      156 SETTABLEKS                       R9 R29 K15 ["Localization"]
      158 CALL                             R28 1 1
      159 MOVE                             R29 R26
      160 CALL                             R28 1 1
      161 MOVE                             R26 R28
      162 DUPCLOSURE                       R28 K65 [PROTO_19]
      163 CAPTURE                          VAL R19
      164 GETTABLEKS                       R29 R4 K66 ["connect"]
      166 LOADNIL                          R30
      167 MOVE                             R31 R28
      168 CALL                             R29 2 1
      169 MOVE                             R30 R26
      170 CALL                             R29 1 1
      171 MOVE                             R26 R29
      172 RETURN                           R26 1
