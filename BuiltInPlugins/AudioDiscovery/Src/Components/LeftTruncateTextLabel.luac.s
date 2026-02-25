PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+2]
        6 LOADN                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R5 R0
       10 GETTABLEKS                       R6 R1 K2 ["TextSize"]
       12 GETTABLEKS                       R7 R1 K3 ["Font"]
       14 GETIMPORT                        R8 K6 [Vector2.new]
       16 LOADK                            R9 K7 [∞]
       17 LOADK                            R10 K7 [∞]
       18 CALL                             R8 2 -1
       19 NAMECALL                         R3 R3 K8 ["GetTextSize"]
       21 CALL                             R3 -1 1
       22 GETTABLEKS                       R2 R3 K9 ["x"]
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Text"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["textRef"]
        8 GETTABLEKS                       R2 R3 K3 ["current"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R4 R2 K4 ["AbsoluteSize"]
       14 GETTABLEKS                       R3 R4 K5 ["X"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K6 ["getTextWidth"]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 JUMPIFNOTLE                      R4 R3 ; [+8]
       23 SETTABLEKS                       R1 R2 K1 ["Text"]
       25 GETIMPORT                        R4 K10 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R4 R2 K8 ["TextXAlignment"]
       29 RETURN                           R0 0
       30 GETIMPORT                        R4 K12 [Enum.TextXAlignment.Right]
       32 SETTABLEKS                       R4 R2 K8 ["TextXAlignment"]
       34 LOADN                            R4 0
       35 LOADN                            R7 255
       36 LENGTH                           R8 R1
       37 MINUS                            R5 R8
       38 LOADN                            R6 255
       39 FORNPREP                         R5
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K6 ["getTextWidth"]
       43 MOVE                             R11 R7
       44 NAMECALL                         R9 R1 K13 ["sub"]
       46 CALL                             R9 2 -1
       47 CALL                             R8 -1 1
       48 JUMPIFNOTLT                      R3 R8 ; [+2]
       50 JUMP                             ; [+2]
       51 MOVE                             R4 R7
       52 FORNLOOP                         R5
       53 LOADN                            R5 254
       54 JUMPIFNOTLE                      R5 R4 ; [+5]
       56 GETUPVAL                         R5 1
       57 SETTABLEKS                       R5 R2 K1 ["Text"]
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 1
       61 ADDK                             R9 R4 K14 [2]
       62 NAMECALL                         R7 R1 K13 ["sub"]
       64 CALL                             R7 2 1
       65 CONCAT                           R5 R6 R7
       66 SETTABLEKS                       R5 R2 K1 ["Text"]
       68 RETURN                           R0 0

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
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K2 ["getTextWidth"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R1 R0 K3 ["updateText"]
       16 NEWCLOSURE                       R1 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R1 R0 K4 ["onAbsoluteSizeChange"]
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["updateText"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["Text"]
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K0 ["Text"]
        6 JUMPIFEQ                         R3 R4 ; [+4]
        8 GETTABLEKS                       R3 R0 K2 ["updateText"]
       10 CALL                             R3 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 2 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["Ref"]
        7 GETTABLEKS                       R4 R0 K2 ["textRef"]
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["Change"]
       13 GETTABLEKS                       R3 R4 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R4 R0 K5 ["onAbsoluteSizeChange"]
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K6 ["createElement"]
       21 GETUPVAL                         R4 1
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 CALL                             R5 2 -1
       26 CALL                             R3 -1 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["TextLabel"]
       27 GETTABLEKS                       R5 R2 K10 ["Dash"]
       29 GETTABLEKS                       R6 R5 K11 ["join"]
       31 GETIMPORT                        R7 K13 [game]
       33 LOADK                            R9 K14 ["TextService"]
       34 NAMECALL                         R7 R7 K15 ["GetService"]
       36 CALL                             R7 2 1
       37 GETIMPORT                        R8 K18 [utf8.char]
       39 LOADN                            R9 38
       40 CALL                             R8 1 1
       41 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       43 LOADK                            R11 K20 ["FooLabel"]
       44 NAMECALL                         R9 R9 K21 ["extend"]
       46 CALL                             R9 2 1
       47 DUPCLOSURE                       R10 K22 [PROTO_3]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 SETTABLEKS                       R10 R9 K23 ["init"]
       53 DUPCLOSURE                       R10 K24 [PROTO_4]
       54 SETTABLEKS                       R10 R9 K25 ["didMount"]
       56 DUPCLOSURE                       R10 K26 [PROTO_5]
       57 SETTABLEKS                       R10 R9 K27 ["didUpdate"]
       59 DUPCLOSURE                       R10 K28 [PROTO_6]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R10 R9 K29 ["render"]
       65 RETURN                           R9 1
