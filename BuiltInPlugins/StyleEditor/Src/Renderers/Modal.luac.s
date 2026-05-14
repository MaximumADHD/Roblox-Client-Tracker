PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ObjectRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["ObjectRef"]
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIF                           R0 ; [+6]
       10 GETIMPORT                        R0 K4 [UDim2.fromOffset]
       12 LOADN                            R1 0
       13 LOADN                            R2 0
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K5 ["Focus"]
       19 NAMECALL                         R0 R0 K6 ["get"]
       21 CALL                             R0 1 1
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K7 ["MinSize"]
       25 JUMPIF                           R1 ; [+2]
       26 GETIMPORT                        R1 K10 [Vector2.zero]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K0 ["ObjectRef"]
       31 GETTABLEKS                       R2 R2 K1 ["current"]
       33 GETTABLEKS                       R3 R2 K11 ["AbsolutePosition"]
       35 GETTABLEKS                       R4 R2 K12 ["AbsoluteSize"]
       37 GETTABLEKS                       R5 R0 K12 ["AbsoluteSize"]
       39 GETTABLEKS                       R7 R3 K13 ["Y"]
       41 GETTABLEKS                       R8 R4 K13 ["Y"]
       43 ADD                              R6 R7 R8
       44 GETTABLEKS                       R8 R5 K13 ["Y"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K13 ["Y"]
       49 SUB                              R7 R8 R9
       50 FASTCALL2                        MATH_MIN R6 R7 ; [+5]
       52 MOVE                             R10 R6
       53 MOVE                             R11 R7
       54 GETIMPORT                        R9 K16 [math.min]
       56 CALL                             R9 2 1
       57 FASTCALL2K                       MATH_MAX R9 K17 ; [+4]
       59 LOADK                            R10 K17 [0]
       60 GETIMPORT                        R8 K19 [math.max]
       62 CALL                             R8 2 1
       63 GETTABLEKS                       R10 R1 K20 ["X"]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K20 ["X"]
       68 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       70 GETIMPORT                        R9 K19 [math.max]
       72 CALL                             R9 2 1
       73 GETTABLEKS                       R11 R5 K20 ["X"]
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K21 ["MaxSize"]
       78 GETTABLEKS                       R12 R12 K20 ["X"]
       80 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       82 GETIMPORT                        R10 K16 [math.min]
       84 CALL                             R10 2 1
       85 JUMPIFNOTLT                      R10 R9 ; [+4]
       87 MOVE                             R11 R10
       88 MOVE                             R10 R9
       89 MOVE                             R9 R11
       90 GETTABLEKS                       R13 R3 K20 ["X"]
       92 GETTABLEKS                       R15 R4 K20 ["X"]
       94 DIVK                             R14 R15 K22 [2]
       95 ADD                              R12 R13 R14
       96 DIVK                             R13 R10 K22 [2]
       97 SUB                              R11 R12 R13
       98 GETTABLEKS                       R13 R5 K20 ["X"]
      100 SUB                              R12 R13 R10
      101 FASTCALL2                        MATH_MIN R11 R12 ; [+5]
      103 MOVE                             R15 R11
      104 MOVE                             R16 R12
      105 GETIMPORT                        R14 K16 [math.min]
      107 CALL                             R14 2 1
      108 FASTCALL2K                       MATH_MAX R14 K17 ; [+4]
      110 LOADK                            R15 K17 [0]
      111 GETIMPORT                        R13 K19 [math.max]
      113 CALL                             R13 2 1
      114 GETIMPORT                        R14 K4 [UDim2.fromOffset]
      116 MOVE                             R15 R13
      117 MOVE                             R16 R8
      118 CALL                             R14 2 -1
      119 RETURN                           R14 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETIMPORT                        R3 K2 [Vector2.zero]
        5 CALL                             R2 1 2
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 GETUPVAL                         R5 2
       11 DUPCLOSURE                       R6 K3 [PROTO_1]
       12 NEWTABLE                         R7 0 0
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R6 R0 K4 ["Open"]
       17 JUMPIFNOT                        R6 ; [+60]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K5 ["createElement"]
       21 GETUPVAL                         R7 4
       22 DUPTABLE                         R8 K7 [{"OnFocusLost"}]
       23 GETTABLEKS                       R9 R0 K6 ["OnFocusLost"]
       25 SETTABLEKS                       R9 R8 K6 ["OnFocusLost"]
       27 DUPTABLE                         R9 K9 [{"Window"}]
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R10 R10 K5 ["createElement"]
       31 GETUPVAL                         R11 5
       32 NEWTABLE                         R12 4 0
       34 MOVE                             R13 R4
       35 CALL                             R13 0 1
       36 SETTABLEKS                       R13 R12 K10 ["Position"]
       38 SETTABLEKS                       R5 R12 K11 ["OnPress"]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R13 R13 K12 ["Tag"]
       43 LOADK                            R14 K13 ["Paper X-Center X-Column X-Fill X-Stroke"]
       44 SETTABLE                         R14 R12 R13
       45 GETUPVAL                         R13 3
       46 GETTABLEKS                       R13 R13 K14 ["Change"]
       48 GETTABLEKS                       R13 R13 K15 ["AbsoluteSize"]
       50 NEWCLOSURE                       R14 P2
       51 CAPTURE                          VAL R3
       52 SETTABLE                         R14 R12 R13
       53 GETUPVAL                         R13 6
       54 GETTABLEKS                       R14 R0 K16 ["children"]
       56 DUPTABLE                         R15 K18 [{"UISizeConstraint"}]
       57 GETUPVAL                         R16 3
       58 GETTABLEKS                       R16 R16 K5 ["createElement"]
       60 LOADK                            R17 K17 ["UISizeConstraint"]
       61 DUPTABLE                         R18 K21 [{"MinSize", "MaxSize"}]
       62 GETTABLEKS                       R19 R0 K19 ["MinSize"]
       64 SETTABLEKS                       R19 R18 K19 ["MinSize"]
       66 GETTABLEKS                       R19 R0 K20 ["MaxSize"]
       68 SETTABLEKS                       R19 R18 K20 ["MaxSize"]
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K17 ["UISizeConstraint"]
       73 CALL                             R13 2 -1
       74 CALL                             R10 -1 1
       75 SETTABLEKS                       R10 R9 K8 ["Window"]
       77 CALL                             R6 3 1
       78 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useCallback"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Packages"]
       24 GETTABLEKS                       R5 R5 K9 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K10 ["UI"]
       29 GETTABLEKS                       R5 R5 K11 ["CaptureFocus"]
       31 GETTABLEKS                       R6 R4 K10 ["UI"]
       33 GETTABLEKS                       R6 R6 K12 ["Pane"]
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R8 R0 K5 ["Packages"]
       39 GETTABLEKS                       R8 R8 K13 ["Dash"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K14 ["join"]
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R10 R0 K15 ["Src"]
       48 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       50 GETTABLEKS                       R10 R10 K17 ["useFrameworkContext"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R11 R0 K15 ["Src"]
       57 GETTABLEKS                       R11 R11 K18 ["Types"]
       59 CALL                             R10 1 1
       60 DUPCLOSURE                       R11 K19 [PROTO_3]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R8
       68 RETURN                           R11 1
