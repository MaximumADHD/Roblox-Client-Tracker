PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+2]
        6 LOADN                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R5 R0
       10 GETUPVAL                         R7 2
       11 JUMPIFNOT                        R7 ; [+5]
       12 LOADK                            R8 K2 ["TextSize"]
       13 NAMECALL                         R6 R1 K3 ["GetStyled"]
       15 CALL                             R6 2 1
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R1 K2 ["TextSize"]
       19 GETUPVAL                         R8 2
       20 JUMPIFNOT                        R8 ; [+5]
       21 LOADK                            R9 K4 ["Font"]
       22 NAMECALL                         R7 R1 K3 ["GetStyled"]
       24 CALL                             R7 2 1
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R7 R1 K4 ["Font"]
       28 GETIMPORT                        R8 K7 [Vector2.new]
       30 LOADK                            R9 K8 [∞]
       31 LOADK                            R10 K8 [∞]
       32 CALL                             R8 2 -1
       33 NAMECALL                         R3 R3 K9 ["GetTextSize"]
       35 CALL                             R3 -1 1
       36 GETTABLEKS                       R2 R3 K10 ["x"]
       38 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K2 ["Text"]
        5 ORK                              R1 R2 K1 [""]
        6 GETTABLEKS                       R3 R0 K4 ["SuffixLength"]
        8 ORK                              R2 R3 K3 [0]
        9 FASTCALL1                        STRING_LEN R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K7 [string.len]
       13 CALL                             R3 1 1
       14 JUMPIFNOTLT                      R3 R2 ; [+7]
       16 FASTCALL1                        STRING_LEN R1 ; [+3]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K7 [string.len]
       20 CALL                             R3 1 1
       21 MOVE                             R2 R3
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K8 ["textRef"]
       25 GETTABLEKS                       R3 R4 K9 ["current"]
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R5 R3 K10 ["AbsoluteSize"]
       31 GETTABLEKS                       R4 R5 K11 ["X"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K12 ["lastText"]
       36 JUMPIFNOTEQ                      R1 R5 ; [+6]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K13 ["lastTextWidth"]
       41 JUMPIFEQ                         R4 R5 ; [+17]
       43 GETUPVAL                         R5 1
       44 MOVE                             R6 R1
       45 MOVE                             R7 R4
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K14 ["getTextWidth"]
       49 MOVE                             R9 R2
       50 CALL                             R5 4 1
       51 SETTABLEKS                       R5 R3 K2 ["Text"]
       53 GETUPVAL                         R5 0
       54 SETTABLEKS                       R1 R5 K12 ["lastText"]
       56 GETUPVAL                         R5 0
       57 SETTABLEKS                       R4 R5 K13 ["lastTextWidth"]
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Change"]
        6 GETTABLEKS                       R2 R3 K2 ["AbsoluteSize"]
        8 GETTABLE                         R0 R1 R2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["props"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K1 ["Change"]
       16 GETTABLEKS                       R2 R3 K2 ["AbsoluteSize"]
       18 GETTABLE                         R0 R1 R2
       19 CALL                             R0 0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K3 ["updateText"]
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textRef"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["lastText"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K4 ["lastTextWidth"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R1 R0 K5 ["getTextWidth"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R1 R0 K6 ["updateText"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 SETTABLEKS                       R1 R0 K7 ["onAbsoluteSizeChange"]
       28 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["updateText"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["updateText"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 NEWTABLE                         R3 0 1
        5 LOADK                            R4 K1 ["SuffixLength"]
        6 SETLIST                          R3 R4 1 [1]
        8 CALL                             R1 2 1
        9 NEWTABLE                         R2 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K2 ["Ref"]
       14 GETTABLEKS                       R4 R0 K3 ["textRef"]
       16 SETTABLE                         R4 R2 R3
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K4 ["Change"]
       20 GETTABLEKS                       R3 R4 K5 ["AbsoluteSize"]
       22 GETTABLEKS                       R4 R0 K6 ["onAbsoluteSizeChange"]
       24 SETTABLE                         R4 R2 R3
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K7 ["createElement"]
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R1
       31 MOVE                             R7 R2
       32 CALL                             R5 2 -1
       33 CALL                             R3 -1 -1
       34 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K11 ["SharedFlags"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       22 CALL                             R3 0 1
       23 GETIMPORT                        R4 K10 [require]
       25 GETTABLEKS                       R7 R1 K6 ["UI"]
       27 GETTABLEKS                       R6 R7 K13 ["Components"]
       29 GETTABLEKS                       R5 R6 K14 ["TextLabel"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R7 R1 K8 ["Parent"]
       36 GETTABLEKS                       R6 R7 K15 ["Dash"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K10 [require]
       41 GETTABLEKS                       R8 R1 K8 ["Parent"]
       43 GETTABLEKS                       R7 R8 K16 ["Roact"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K10 [require]
       48 GETTABLEKS                       R8 R1 K17 ["Util"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R7 K18 ["ellipsizeMiddle"]
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R11 R1 K17 ["Util"]
       57 GETTABLEKS                       R10 R11 K19 ["Typecheck"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R5 K20 ["join"]
       62 GETTABLEKS                       R11 R5 K21 ["omit"]
       64 GETTABLEKS                       R12 R6 K22 ["PureComponent"]
       66 LOADK                            R14 K23 ["TruncatedTextLabel"]
       67 NAMECALL                         R12 R12 K24 ["extend"]
       69 CALL                             R12 2 1
       70 GETTABLEKS                       R13 R9 K25 ["wrap"]
       72 MOVE                             R14 R12
       73 GETIMPORT                        R15 K5 [script]
       75 CALL                             R13 2 0
       76 DUPCLOSURE                       R13 K26 [PROTO_3]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R13 R12 K27 ["init"]
       83 DUPCLOSURE                       R13 K28 [PROTO_4]
       84 SETTABLEKS                       R13 R12 K29 ["didMount"]
       86 DUPCLOSURE                       R13 K30 [PROTO_5]
       87 SETTABLEKS                       R13 R12 K31 ["didUpdate"]
       89 DUPCLOSURE                       R13 K32 [PROTO_6]
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R13 R12 K33 ["render"]
       96 RETURN                           R12 1
