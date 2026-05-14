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
        9 JUMPIFNOTEQ                      R3 R4 ; [+38]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K8 [{"dragging", "delta"}]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K6 ["dragging"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K9 ["cursor"]
       19 GETTABLEKS                       R8 R8 K10 ["current"]
       21 GETTABLEKS                       R8 R8 K11 ["AbsolutePosition"]
       23 LOADK                            R10 K12 [0.5]
       24 GETIMPORT                        R11 K15 [Vector2.new]
       26 MOVE                             R12 R2
       27 MOVE                             R13 R2
       28 CALL                             R11 2 1
       29 MUL                              R9 R10 R11
       30 ADD                              R7 R8 R9
       31 GETIMPORT                        R8 K15 [Vector2.new]
       33 GETTABLEKS                       R9 R1 K16 ["Position"]
       35 GETTABLEKS                       R9 R9 K17 ["X"]
       37 GETTABLEKS                       R10 R1 K16 ["Position"]
       39 GETTABLEKS                       R10 R10 K18 ["Y"]
       41 CALL                             R8 2 1
       42 SUB                              R6 R7 R8
       43 SETTABLEKS                       R6 R5 K7 ["delta"]
       45 NAMECALL                         R3 R3 K19 ["setState"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

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
       84 SUBRK                            R12 R23 K13 ["AbsoluteSize"]
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
        1 DUPTABLE                         R2 K1 [{"dragging"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       10 JUMPIFNOT                        R3 ; [+217]
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
       39 JUMPIFNOT                        R12 ; [+64]
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
       68 SUBRK                            R20 R21 K21 [1]
       69 CALL                             R18 2 1
       70 SETTABLEKS                       R18 R17 K23 ["Position"]
       72 GETUPVAL                         R18 1
       73 GETTABLEKS                       R18 R18 K24 ["Dot"]
       75 SETTABLEKS                       R18 R17 K25 ["ZIndex"]
       77 GETUPVAL                         R18 0
       78 GETTABLEKS                       R18 R18 K26 ["Tag"]
       80 LOADK                            R19 K24 ["Dot"]
       81 SETTABLE                         R19 R17 R18
       82 DUPTABLE                         R18 K28 [{"Tooltip"}]
       83 JUMPIF                           R4 ; [+15]
       84 GETUPVAL                         R19 0
       85 GETTABLEKS                       R19 R19 K14 ["createElement"]
       87 GETUPVAL                         R20 2
       88 DUPTABLE                         R21 K30 [{"Text"}]
       89 GETTABLEKS                       R22 R0 K31 ["makeTooltipText"]
       91 GETTABLEKS                       R23 R10 K6 ["name"]
       93 MOVE                             R24 R13
       94 CALL                             R22 2 1
       95 SETTABLEKS                       R22 R21 K29 ["Text"]
       97 CALL                             R19 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R19
      100 SETTABLEKS                       R19 R18 K27 ["Tooltip"]
      102 CALL                             R15 3 1
      103 SETTABLE                         R15 R5 R11
      104 FORGLOOP                         R6 2 ; [-86]
      106 GETTABLEKS                       R6 R3 K0 ["props"]
      108 JUMPIFNOT                        R6 ; [+119]
      109 GETTABLEKS                       R6 R3 K0 ["props"]
      111 GETTABLEKS                       R6 R6 K32 ["targetPosition"]
      113 JUMPIFNOT                        R6 ; [+114]
      114 GETTABLEKS                       R7 R1 K33 ["Overrides"]
      116 JUMPIFNOT                        R7 ; [+5]
      117 GETTABLEKS                       R7 R1 K33 ["Overrides"]
      119 GETTABLEKS                       R6 R7 K32 ["targetPosition"]
      121 JUMPIF                           R6 ; [+1]
      122 LOADNIL                          R6
      123 MOVE                             R7 R6
      124 JUMPIF                           R7 ; [+4]
      125 GETTABLEKS                       R7 R3 K0 ["props"]
      127 GETTABLEKS                       R7 R7 K32 ["targetPosition"]
      129 GETTABLEKS                       R8 R0 K11 ["make2dPosition"]
      131 MOVE                             R9 R7
      132 CALL                             R8 1 1
      133 GETTABLEKS                       R11 R2 K12 ["min"]
      135 SUB                              R10 R8 R11
      136 GETTABLEKS                       R12 R2 K13 ["max"]
      138 GETTABLEKS                       R13 R2 K12 ["min"]
      140 SUB                              R11 R12 R13
      141 DIV                              R9 R10 R11
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K14 ["createElement"]
      145 LOADK                            R11 K15 ["ImageButton"]
      146 NEWTABLE                         R12 8 0
      148 LOADN                            R13 4
      149 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      151 GETIMPORT                        R13 K19 [UDim2.fromScale]
      153 GETTABLEKS                       R14 R9 K20 ["X"]
      155 GETTABLEKS                       R16 R9 K22 ["Y"]
      157 SUBRK                            R15 R21 K16 ["LayoutOrder"]
      158 CALL                             R13 2 1
      159 SETTABLEKS                       R13 R12 K23 ["Position"]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R13 R13 K34 ["Cursor"]
      164 SETTABLEKS                       R13 R12 K25 ["ZIndex"]
      166 GETTABLEKS                       R13 R0 K35 ["cursor"]
      168 SETTABLEKS                       R13 R12 K36 ["ref"]
      170 GETUPVAL                         R13 0
      171 GETTABLEKS                       R13 R13 K37 ["Event"]
      173 GETTABLEKS                       R13 R13 K38 ["InputBegan"]
      175 GETTABLEKS                       R14 R0 K39 ["onDragStarted"]
      177 SETTABLE                         R14 R12 R13
      178 GETUPVAL                         R13 0
      179 GETTABLEKS                       R13 R13 K26 ["Tag"]
      181 GETUPVAL                         R14 3
      182 LOADK                            R15 K24 ["Dot"]
      183 LOADK                            R16 K34 ["Cursor"]
      184 JUMPIFNOT                        R6 ; [+2]
      185 LOADK                            R17 K40 ["Override"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R17
      188 CALL                             R14 3 1
      189 SETTABLE                         R14 R12 R13
      190 JUMPIFNOT                        R4 ; [+33]
      191 DUPTABLE                         R13 K42 [{"DragListener", "Tooltip"}]
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R14 R14 K14 ["createElement"]
      195 GETUPVAL                         R15 4
      196 DUPTABLE                         R16 K45 [{"OnDragMoved", "OnDragEnded"}]
      197 GETTABLEKS                       R17 R0 K46 ["onDragMoved"]
      199 SETTABLEKS                       R17 R16 K43 ["OnDragMoved"]
      201 GETTABLEKS                       R17 R0 K47 ["onDragEnded"]
      203 SETTABLEKS                       R17 R16 K44 ["OnDragEnded"]
      205 CALL                             R14 2 1
      206 SETTABLEKS                       R14 R13 K41 ["DragListener"]
      208 GETUPVAL                         R14 0
      209 GETTABLEKS                       R14 R14 K14 ["createElement"]
      211 GETUPVAL                         R15 2
      212 DUPTABLE                         R16 K30 [{"Text"}]
      213 GETTABLEKS                       R17 R0 K31 ["makeTooltipText"]
      215 LOADNIL                          R18
      216 MOVE                             R19 R8
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K29 ["Text"]
      220 CALL                             R14 2 1
      221 SETTABLEKS                       R14 R13 K27 ["Tooltip"]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R13
      225 CALL                             R10 3 1
      226 SETTABLEKS                       R10 R5 K35 ["cursor"]
      228 RETURN                           R5 1

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
       58 JUMPIFNOT                        R10 ; [+111]
       59 JUMPIFNOT                        R4 ; [+110]
       60 GETTABLEKS                       R11 R2 K13 ["size"]
       62 JUMPIFNOT                        R11 ; [+107]
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
       91 SUBRK                            R17 R8 K18 ["new"]
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
      123 SUBRK                            R19 R8 K20 ["X"]
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
      144 GETUPVAL                         R19 3
      145 GETTABLEKS                       R19 R19 K22 ["Trail"]
      147 SETTABLEKS                       R19 R18 K28 ["ZIndex"]
      149 GETIMPORT                        R19 K30 [Color3.new]
      151 LOADN                            R20 1
      152 LOADN                            R21 0
      153 LOADN                            R22 0
      154 CALL                             R19 3 1
      155 SETTABLEKS                       R19 R18 K31 ["Color"]
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K7 ["BLEND_TRAIL_LENGTH"]
      160 DIV                              R19 R7 R20
      161 SETTABLEKS                       R19 R18 K32 ["Transparency"]
      163 GETUPVAL                         R19 1
      164 GETTABLEKS                       R19 R19 K33 ["Tag"]
      166 LOADK                            R20 K22 ["Trail"]
      167 SETTABLE                         R20 R18 R19
      168 CALL                             R16 2 1
      169 SETTABLE                         R16 R3 R15
      170 MOVE                             R4 R10
      171 FORNLOOP                         R5
      172 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K2 ["calculateGrid"]
        8 CALL                             R4 0 3
        9 LOADN                            R7 1
       10 GETTABLEKS                       R8 R1 K3 ["Show2D"]
       12 JUMPIFNOT                        R8 ; [+80]
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
       66 SUBRK                            R17 R9 K18 ["Size"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K23 ["Position"]
       70 JUMPIFNOTEQKN                    R10 K24 [0] ; [+5]
       72 GETUPVAL                         R15 2
       73 GETTABLEKS                       R15 R15 K25 ["Axis"]
       75 JUMP                             ; [+3]
       76 GETUPVAL                         R15 2
       77 GETTABLEKS                       R15 R15 K26 ["Grid"]
       79 SETTABLEKS                       R15 R14 K27 ["ZIndex"]
       81 GETUPVAL                         R15 0
       82 GETTABLEKS                       R15 R15 K28 ["Tag"]
       84 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
       86 LOADK                            R16 K25 ["Axis"]
       87 JUMP                             ; [+1]
       88 LOADK                            R16 K26 ["Grid"]
       89 SETTABLE                         R16 R14 R15
       90 CALL                             R12 2 1
       91 SETTABLE                         R12 R3 R11
       92 FORNLOOP                         R8
       93 LOADN                            R7 1
       94 GETTABLEKS                       R10 R4 K29 ["X"]
       96 GETTABLEKS                       R8 R5 K29 ["X"]
       98 GETTABLEKS                       R9 R6 K29 ["X"]
      100 FORNPREP                         R8
      101 GETIMPORT                        R11 K7 [string.format]
      103 LOADK                            R12 K30 ["X%d"]
      104 MOVE                             R13 R7
      105 CALL                             R11 2 1
      106 ADDK                             R7 R7 K9 [1]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K10 ["createElement"]
      110 GETUPVAL                         R13 1
      111 NEWTABLE                         R14 8 0
      113 GETIMPORT                        R15 K13 [Vector2.new]
      115 LOADK                            R16 K14 [0.5]
      116 LOADN                            R17 0
      117 CALL                             R15 2 1
      118 SETTABLEKS                       R15 R14 K15 ["AnchorPoint"]
      120 GETIMPORT                        R15 K17 [UDim2.new]
      122 LOADN                            R16 0
      123 LOADN                            R17 1
      124 LOADN                            R18 1
      125 LOADN                            R19 0
      126 CALL                             R15 4 1
      127 SETTABLEKS                       R15 R14 K18 ["Size"]
      129 GETIMPORT                        R15 K20 [UDim2.fromScale]
      131 GETTABLEKS                       R18 R2 K21 ["min"]
      133 GETTABLEKS                       R18 R18 K29 ["X"]
      135 SUB                              R17 R10 R18
      136 GETTABLEKS                       R19 R2 K22 ["max"]
      138 GETTABLEKS                       R19 R19 K29 ["X"]
      140 GETTABLEKS                       R20 R2 K21 ["min"]
      142 GETTABLEKS                       R20 R20 K29 ["X"]
      144 SUB                              R18 R19 R20
      145 DIV                              R16 R17 R18
      146 LOADN                            R17 0
      147 CALL                             R15 2 1
      148 SETTABLEKS                       R15 R14 K23 ["Position"]
      150 JUMPIFNOTEQKN                    R10 K24 [0] ; [+5]
      152 GETUPVAL                         R15 2
      153 GETTABLEKS                       R15 R15 K25 ["Axis"]
      155 JUMP                             ; [+3]
      156 GETUPVAL                         R15 2
      157 GETTABLEKS                       R15 R15 K26 ["Grid"]
      159 SETTABLEKS                       R15 R14 K27 ["ZIndex"]
      161 GETUPVAL                         R15 0
      162 GETTABLEKS                       R15 R15 K28 ["Tag"]
      164 JUMPIFNOTEQKN                    R10 K24 [0] ; [+3]
      166 LOADK                            R16 K25 ["Axis"]
      167 JUMP                             ; [+1]
      168 LOADK                            R16 K26 ["Grid"]
      169 SETTABLE                         R16 R14 R15
      170 CALL                             R12 2 1
      171 SETTABLE                         R12 R3 R11
      172 FORNLOOP                         R8
      173 RETURN                           R3 1

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
       14 DUPTABLE                         R5 K5 [{"ZIndex"}]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K6 ["Grid"]
       18 SETTABLEKS                       R6 R5 K4 ["ZIndex"]
       20 NAMECALL                         R6 R0 K7 ["createAxes"]
       22 CALL                             R6 1 -1
       23 CALL                             R3 -1 1
       24 SETTABLEKS                       R3 R2 K6 ["Grid"]
       26 GETTABLEKS                       R3 R1 K8 ["Overrides"]
       28 JUMPIFNOT                        R3 ; [+22]
       29 GETTABLEKS                       R4 R1 K8 ["Overrides"]
       31 GETTABLEKS                       R3 R4 K9 ["targetPosition"]
       33 JUMPIFNOT                        R3 ; [+17]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K3 ["createElement"]
       37 LOADK                            R4 K10 ["ImageButton"]
       38 NEWTABLE                         R5 1 0
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K11 ["Event"]
       43 GETTABLEKS                       R6 R6 K12 ["Activated"]
       45 GETTABLEKS                       R7 R0 K13 ["resetOverride"]
       47 SETTABLE                         R7 R5 R6
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K14 ["Reset"]
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K3 ["createElement"]
       54 GETUPVAL                         R4 2
       55 NEWTABLE                         R5 1 0
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K15 ["Tag"]
       60 LOADK                            R7 K16 ["BlendBase"]
       61 SETTABLE                         R7 R5 R6
       62 DUPTABLE                         R6 K18 [{"Canvas"}]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K3 ["createElement"]
       66 GETUPVAL                         R8 2
       67 NEWTABLE                         R9 4 0
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K19 ["Change"]
       72 GETTABLEKS                       R10 R10 K20 ["AbsoluteSize"]
       74 GETTABLEKS                       R11 R0 K21 ["onCanvasAbsoluteSizeChanged"]
       76 SETTABLE                         R11 R9 R10
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K15 ["Tag"]
       80 GETTABLEKS                       R12 R1 K22 ["Show2D"]
       82 JUMPIFNOT                        R12 ; [+2]
       83 LOADK                            R11 K23 ["Blend2D"]
       84 JUMP                             ; [+1]
       85 LOADK                            R11 K24 ["Blend1D"]
       86 SETTABLE                         R11 R9 R10
       87 GETTABLEKS                       R10 R0 K25 ["dragArea"]
       89 SETTABLEKS                       R10 R9 K26 ["ref"]
       91 MOVE                             R10 R2
       92 CALL                             R7 3 1
       93 SETTABLEKS                       R7 R6 K17 ["Canvas"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

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
      105 DUPTABLE                         R25 K38 [{"Grid", "Axis", "Dot", "Trail", "Cursor"}]
      106 LOADN                            R26 1
      107 SETTABLEKS                       R26 R25 K33 ["Grid"]
      109 LOADN                            R26 2
      110 SETTABLEKS                       R26 R25 K34 ["Axis"]
      112 LOADN                            R26 3
      113 SETTABLEKS                       R26 R25 K35 ["Dot"]
      115 LOADN                            R26 4
      116 SETTABLEKS                       R26 R25 K36 ["Trail"]
      118 LOADN                            R26 5
      119 SETTABLEKS                       R26 R25 K37 ["Cursor"]
      121 GETTABLEKS                       R26 R3 K39 ["PureComponent"]
      123 LOADK                            R28 K40 ["BlendBase"]
      124 NAMECALL                         R26 R26 K41 ["extend"]
      126 CALL                             R26 2 1
      127 DUPCLOSURE                       R27 K42 [PROTO_0]
      128 DUPCLOSURE                       R28 K43 [PROTO_10]
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R23
      131 CAPTURE                          VAL R22
      132 SETTABLEKS                       R28 R26 K44 ["init"]
      134 DUPCLOSURE                       R28 K45 [PROTO_11]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R15
      140 SETTABLEKS                       R28 R26 K46 ["createDots"]
      142 DUPCLOSURE                       R28 K47 [PROTO_12]
      143 CAPTURE                          VAL R21
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R25
      147 SETTABLEKS                       R28 R26 K48 ["createTrail"]
      149 DUPCLOSURE                       R28 K49 [PROTO_13]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R25
      153 SETTABLEKS                       R28 R26 K50 ["createAxes"]
      155 DUPCLOSURE                       R28 K51 [PROTO_14]
      156 SETTABLEKS                       R28 R26 K52 ["calculateExtents"]
      158 DUPCLOSURE                       R28 K53 [PROTO_15]
      159 SETTABLEKS                       R28 R26 K54 ["didUpdate"]
      161 DUPCLOSURE                       R28 K55 [PROTO_16]
      162 SETTABLEKS                       R28 R26 K56 ["didMount"]
      164 DUPCLOSURE                       R28 K57 [PROTO_17]
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R25
      169 SETTABLEKS                       R28 R26 K58 ["render"]
      171 MOVE                             R28 R7
      172 DUPTABLE                         R29 K59 [{"Analytics", "Localization"}]
      173 SETTABLEKS                       R8 R29 K14 ["Analytics"]
      175 SETTABLEKS                       R9 R29 K15 ["Localization"]
      177 CALL                             R28 1 1
      178 MOVE                             R29 R26
      179 CALL                             R28 1 1
      180 MOVE                             R26 R28
      181 DUPCLOSURE                       R28 K60 [PROTO_19]
      182 CAPTURE                          VAL R19
      183 GETTABLEKS                       R29 R4 K61 ["connect"]
      185 LOADNIL                          R30
      186 MOVE                             R31 R28
      187 CALL                             R29 2 1
      188 MOVE                             R30 R26
      189 CALL                             R29 1 1
      190 MOVE                             R26 R29
      191 RETURN                           R26 1
