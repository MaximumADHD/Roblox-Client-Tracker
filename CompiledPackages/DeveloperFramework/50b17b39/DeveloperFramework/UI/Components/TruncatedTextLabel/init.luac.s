PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+2]
        6 LOADN                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R5 R0
       10 LOADK                            R8 K2 ["TextSize"]
       11 NAMECALL                         R6 R1 K3 ["GetStyled"]
       13 CALL                             R6 2 1
       14 LOADK                            R9 K4 ["Font"]
       15 NAMECALL                         R7 R1 K3 ["GetStyled"]
       17 CALL                             R7 2 1
       18 GETIMPORT                        R8 K7 [Vector2.new]
       20 LOADK                            R9 K8 [∞]
       21 LOADK                            R10 K8 [∞]
       22 CALL                             R8 2 -1
       23 NAMECALL                         R3 R3 K9 ["GetTextSize"]
       25 CALL                             R3 -1 1
       26 GETTABLEKS                       R2 R3 K10 ["x"]
       28 RETURN                           R2 1

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
       15 SETTABLEKS                       R1 R0 K5 ["getTextWidth"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R1 R0 K6 ["updateText"]
       22 NEWCLOSURE                       R1 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R1 R0 K7 ["onAbsoluteSizeChange"]
       27 RETURN                           R0 0

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
       17 GETTABLEKS                       R5 R1 K6 ["UI"]
       19 GETTABLEKS                       R4 R5 K11 ["Components"]
       21 GETTABLEKS                       R3 R4 K12 ["TextLabel"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K10 [require]
       26 GETTABLEKS                       R5 R1 K8 ["Parent"]
       28 GETTABLEKS                       R4 R5 K13 ["Dash"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K10 [require]
       33 GETTABLEKS                       R6 R1 K8 ["Parent"]
       35 GETTABLEKS                       R5 R6 K14 ["Roact"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K10 [require]
       40 GETTABLEKS                       R6 R1 K15 ["Util"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K16 ["ellipsizeMiddle"]
       45 GETIMPORT                        R7 K10 [require]
       47 GETTABLEKS                       R9 R1 K15 ["Util"]
       49 GETTABLEKS                       R8 R9 K17 ["Typecheck"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R3 K18 ["join"]
       54 GETTABLEKS                       R9 R3 K19 ["omit"]
       56 GETTABLEKS                       R10 R4 K20 ["PureComponent"]
       58 LOADK                            R12 K21 ["TruncatedTextLabel"]
       59 NAMECALL                         R10 R10 K22 ["extend"]
       61 CALL                             R10 2 1
       62 GETTABLEKS                       R11 R7 K23 ["wrap"]
       64 MOVE                             R12 R10
       65 GETIMPORT                        R13 K5 [script]
       67 CALL                             R11 2 0
       68 DUPCLOSURE                       R11 K24 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R11 R10 K25 ["init"]
       74 DUPCLOSURE                       R11 K26 [PROTO_4]
       75 SETTABLEKS                       R11 R10 K27 ["didMount"]
       77 DUPCLOSURE                       R11 K28 [PROTO_5]
       78 SETTABLEKS                       R11 R10 K29 ["didUpdate"]
       80 DUPCLOSURE                       R11 K30 [PROTO_6]
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R11 R10 K31 ["render"]
       87 RETURN                           R10 1
