PROTO_0:
        0 JUMPIFNOTLT                      R2 R1 ; [+4]
        2 MOVE                             R4 R1
        3 MOVE                             R1 R2
        4 MOVE                             R2 R4
        5 GETTABLEKS                       R4 R0 K0 ["Unit"]
        7 GETTABLEKS                       R6 R0 K2 ["Offset"]
        9 ORK                              R5 R6 K1 [0]
       10 SUB                              R9 R1 R5
       11 DIV                              R8 R9 R4
       12 MULK                             R9 R4 K3 [1E-09]
       13 SUB                              R7 R8 R9
       14 FASTCALL1                        MATH_CEIL R7 ; [+2]
       15 GETIMPORT                        R6 K6 [math.ceil]
       17 CALL                             R6 1 1
       18 SUB                              R10 R2 R5
       19 DIV                              R9 R10 R4
       20 MULK                             R10 R4 K3 [1E-09]
       21 ADD                              R8 R9 R10
       22 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       23 GETIMPORT                        R7 K8 [math.floor]
       25 CALL                             R7 1 1
       26 NEWTABLE                         R8 0 0
       28 MOVE                             R11 R6
       29 MOVE                             R9 R7
       30 LOADN                            R10 1
       31 FORNPREP                         R9
       32 MUL                              R13 R11 R4
       33 ADD                              R12 R5 R13
       34 GETTABLE                         R13 R3 R12
       35 JUMPIF                           R13 ; [+7]
       36 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
       38 MOVE                             R14 R8
       39 MOVE                             R15 R12
       40 GETIMPORT                        R13 K11 [table.insert]
       42 CALL                             R13 2 0
       43 FORNLOOP                         R9
       44 RETURN                           R8 1

PROTO_1:
        0 JUMPIFNOTLT                      R2 R1 ; [+4]
        2 MOVE                             R4 R1
        3 MOVE                             R1 R2
        4 MOVE                             R2 R4
        5 GETTABLEKS                       R4 R0 K0 ["Base"]
        7 GETTABLEKS                       R6 R0 K2 ["Subdivision"]
        9 ORK                              R5 R6 K1 [0]
       10 GETTABLEKS                       R7 R0 K4 ["MinExponent"]
       12 ORK                              R6 R7 K3 [-10]
       13 MOVE                             R8 R6
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K5 ["log"]
       17 MOVE                             R10 R4
       18 MOVE                             R11 R1
       19 CALL                             R9 2 -1
       20 FASTCALL                         MATH_MAX ; [+2]
       21 GETIMPORT                        R7 K8 [math.max]
       23 CALL                             R7 -1 1
       24 MOVE                             R6 R7
       25 MOVE                             R8 R6
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K5 ["log"]
       29 MOVE                             R10 R4
       30 MOVE                             R11 R2
       31 CALL                             R9 2 -1
       32 FASTCALL                         MATH_MAX ; [+2]
       33 GETIMPORT                        R7 K8 [math.max]
       35 CALL                             R7 -1 1
       36 NEWTABLE                         R8 0 0
       38 LOADN                            R9 0
       39 FASTCALL1                        MATH_FLOOR R6 ; [+3]
       40 MOVE                             R13 R6
       41 GETIMPORT                        R12 K10 [math.floor]
       43 CALL                             R12 1 1
       44 FASTCALL1                        MATH_CEIL R7 ; [+3]
       45 MOVE                             R14 R7
       46 GETIMPORT                        R13 K12 [math.ceil]
       48 CALL                             R13 1 1
       49 MOVE                             R10 R13
       50 LOADN                            R11 1
       51 FORNPREP                         R10
       52 ADDK                             R16 R12 K13 [1]
       53 SUB                              R15 R16 R5
       54 FASTCALL2                        MATH_POW R4 R15 ; [+4]
       56 MOVE                             R14 R4
       57 GETIMPORT                        R13 K15 [math.pow]
       59 CALL                             R13 2 1
       60 FASTCALL2                        MATH_POW R4 R12 ; [+5]
       62 MOVE                             R17 R4
       63 MOVE                             R18 R12
       64 GETIMPORT                        R16 K15 [math.pow]
       66 CALL                             R16 2 1
       67 ADDK                             R19 R12 K13 [1]
       68 FASTCALL2                        MATH_POW R4 R19 ; [+4]
       70 MOVE                             R18 R4
       71 GETIMPORT                        R17 K15 [math.pow]
       73 CALL                             R17 2 1
       74 MOVE                             R14 R17
       75 MOVE                             R15 R13
       76 FORNPREP                         R14
       77 JUMPIFLT                         R2 R16 ; [+16]
       79 JUMPIFLT                         R16 R1 ; [+13]
       81 JUMPIFEQ                         R16 R9 ; [+11]
       83 MOVE                             R9 R16
       84 GETTABLE                         R17 R3 R16
       85 JUMPIF                           R17 ; [+7]
       86 FASTCALL2                        TABLE_INSERT R8 R16 ; [+5]
       88 MOVE                             R18 R8
       89 MOVE                             R19 R16
       90 GETIMPORT                        R17 K18 [table.insert]
       92 CALL                             R17 2 0
       93 FORNLOOP                         R14
       94 FORNLOOP                         R10
       95 RETURN                           R8 1

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 GETTABLEKS                       R5 R0 K0 ["Values"]
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 JUMPIFNOTLE                      R1 R9 ; [+12]
        9 JUMPIFNOTLE                      R9 R2 ; [+10]
       11 GETTABLE                         R10 R3 R9
       12 JUMPIF                           R10 ; [+7]
       13 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       15 MOVE                             R11 R4
       16 MOVE                             R12 R9
       17 GETIMPORT                        R10 K3 [table.insert]
       19 CALL                             R10 2 0
       20 FORGLOOP                         R5 2 ; [-14]
       22 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 JUMPIFNOT                        R3 ; [+8]
        5 MOVE                             R6 R3
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 LOADB                            R11 1
       10 SETTABLE                         R11 R5 R10
       11 FORGLOOP                         R6 2 ; [-3]
       13 GETTABLEKS                       R6 R2 K0 ["getViewportRect"]
       15 CALL                             R6 0 1
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K1 ["AXIS_X"]
       19 JUMPIFNOTEQ                      R0 R8 ; [+6]
       21 GETTABLEKS                       R7 R6 K2 ["Min"]
       23 GETTABLEKS                       R7 R7 K3 ["X"]
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R7 R6 K2 ["Min"]
       28 GETTABLEKS                       R7 R7 K4 ["Y"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K1 ["AXIS_X"]
       33 JUMPIFNOTEQ                      R0 R9 ; [+6]
       35 GETTABLEKS                       R8 R6 K5 ["Max"]
       37 GETTABLEKS                       R8 R8 K3 ["X"]
       39 JUMP                             ; [+4]
       40 GETTABLEKS                       R8 R6 K5 ["Max"]
       42 GETTABLEKS                       R8 R8 K4 ["Y"]
       44 GETTABLEKS                       R9 R1 K6 ["Type"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K7 ["SCALE_UNIFORM"]
       49 JUMPIFNOTEQ                      R9 R10 ; [+11]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K8 ["getUniformValues"]
       54 MOVE                             R10 R1
       55 MOVE                             R11 R7
       56 MOVE                             R12 R8
       57 MOVE                             R13 R5
       58 CALL                             R9 4 1
       59 MOVE                             R4 R9
       60 RETURN                           R4 1
       61 GETTABLEKS                       R9 R1 K6 ["Type"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K9 ["SCALE_LOGARITHMIC"]
       66 JUMPIFNOTEQ                      R9 R10 ; [+11]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K10 ["getLogarithmicValues"]
       71 MOVE                             R10 R1
       72 MOVE                             R11 R7
       73 MOVE                             R12 R8
       74 MOVE                             R13 R5
       75 CALL                             R9 4 1
       76 MOVE                             R4 R9
       77 RETURN                           R4 1
       78 GETTABLEKS                       R9 R1 K6 ["Type"]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K11 ["SCALE_VALUES"]
       83 JUMPIFNOTEQ                      R9 R10 ; [+11]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K12 ["getValuesValues"]
       88 MOVE                             R10 R1
       89 MOVE                             R11 R7
       90 MOVE                             R12 R8
       91 MOVE                             R13 R5
       92 CALL                             R9 4 1
       93 MOVE                             R4 R9
       94 RETURN                           R4 1
       95 LOADB                            R10 0
       96 LOADK                            R12 K13 ["Axis schema %* not supported"]
       97 GETTABLEKS                       R14 R1 K6 ["Type"]
       99 NAMECALL                         R12 R12 K14 ["format"]
      101 CALL                             R12 2 1
      102 MOVE                             R11 R12
      103 FASTCALL2                        ASSERT R10 R11 ; [+3]
      105 GETIMPORT                        R9 K16 [assert]
      107 CALL                             R9 2 0
      108 RETURN                           R4 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.10f"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 LOADK                            R4 K4 ["^0*(.-)%.?0*$"]
        6 LOADK                            R5 K5 ["%1"]
        7 NAMECALL                         R2 R1 K6 ["gsub"]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 JUMPIFEQKS                       R1 K7 [""] ; [+8]
       13 LOADN                            R4 1
       14 LOADN                            R5 1
       15 NAMECALL                         R2 R1 K8 ["sub"]
       17 CALL                             R2 3 1
       18 JUMPIFNOTEQKS                    R2 K9 ["."] ; [+4]
       20 LOADK                            R2 K10 ["0"]
       21 MOVE                             R3 R1
       22 CONCAT                           R1 R2 R3
       23 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SIDE_LEFT"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+7]
        5 GETIMPORT                        R1 K3 [Vector2.new]
        7 LOADN                            R2 1
        8 LOADK                            R3 K4 [0.5]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["SIDE_RIGHT"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+7]
       16 GETIMPORT                        R1 K3 [Vector2.new]
       18 LOADN                            R2 0
       19 LOADK                            R3 K4 [0.5]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K6 ["SIDE_TOP"]
       25 JUMPIFNOTEQ                      R0 R1 ; [+7]
       27 GETIMPORT                        R1 K3 [Vector2.new]
       29 LOADK                            R2 K4 [0.5]
       30 LOADN                            R3 1
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K7 ["SIDE_BOTTOM"]
       36 JUMPIFNOTEQ                      R0 R1 ; [+7]
       38 GETIMPORT                        R1 K3 [Vector2.new]
       40 LOADK                            R2 K4 [0.5]
       41 LOADN                            R3 0
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1
       44 LOADB                            R2 0
       45 LOADK                            R4 K8 ["Side %* not supported"]
       46 MOVE                             R6 R0
       47 NAMECALL                         R4 R4 K9 ["format"]
       49 CALL                             R4 2 1
       50 MOVE                             R3 R4
       51 FASTCALL2                        ASSERT R2 R3 ; [+3]
       53 GETIMPORT                        R1 K11 [assert]
       55 CALL                             R1 2 0
       56 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["X"]
        4 JUMPIFNOTEQKN                    R3 K1 [0] ; [+4]
        6 GETIMPORT                        R1 K5 [Enum.TextXAlignment.Left]
        8 JUMP                             ; [+9]
        9 GETTABLEKS                       R3 R0 K0 ["X"]
       11 JUMPIFNOTEQKN                    R3 K6 [1] ; [+4]
       13 GETIMPORT                        R1 K8 [Enum.TextXAlignment.Right]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R1 K10 [Enum.TextXAlignment.Center]
       18 GETTABLEKS                       R3 R0 K11 ["Y"]
       20 JUMPIFNOTEQKN                    R3 K1 [0] ; [+4]
       22 GETIMPORT                        R2 K14 [Enum.TextYAlignment.Top]
       24 RETURN                           R1 2
       25 GETTABLEKS                       R3 R0 K11 ["Y"]
       27 JUMPIFNOTEQKN                    R3 K6 [1] ; [+4]
       29 GETIMPORT                        R2 K16 [Enum.TextYAlignment.Bottom]
       31 RETURN                           R1 2
       32 GETIMPORT                        R2 K17 [Enum.TextYAlignment.Center]
       34 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["MathUtil"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 8 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 SETTABLEKS                       R4 R3 K10 ["getUniformValues"]
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R3 K12 ["getLogarithmicValues"]
       28 DUPCLOSURE                       R4 K13 [PROTO_2]
       29 SETTABLEKS                       R4 R3 K14 ["getValuesValues"]
       31 DUPCLOSURE                       R4 K15 [PROTO_3]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R3 K16 ["getValues"]
       36 DUPCLOSURE                       R4 K17 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K18 ["trimRoundingError"]
       39 DUPCLOSURE                       R4 K19 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K20 ["getAnchorPointForSide"]
       43 DUPCLOSURE                       R4 K21 [PROTO_6]
       44 SETTABLEKS                       R4 R3 K22 ["getTextAlignmentsFromAnchorPoint"]
       46 RETURN                           R3 1
