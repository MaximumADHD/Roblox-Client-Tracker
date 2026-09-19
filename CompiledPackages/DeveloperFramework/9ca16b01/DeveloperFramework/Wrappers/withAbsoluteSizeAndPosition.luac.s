PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["reposition"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resize"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 DUPTABLE                         R1 K4 [{"absolutePosition", "absoluteSize"}]
        7 GETIMPORT                        R2 K7 [Vector2.new]
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K2 ["absolutePosition"]
       14 GETIMPORT                        R2 K7 [Vector2.new]
       16 LOADN                            R3 0
       17 LOADN                            R4 0
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K3 ["absoluteSize"]
       21 SETTABLEKS                       R1 R0 K8 ["state"]
       23 NEWCLOSURE                       R1 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K9 ["onPositionChanged"]
       27 NEWCLOSURE                       R1 P1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K10 ["onSizeChanged"]
       31 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 NAMECALL                         R2 R0 K3 ["setSizeAndPosition"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 NAMECALL                         R2 R0 K3 ["setSizeAndPosition"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ref"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETTABLEKS                       R2 R0 K2 ["absolutePosition"]
        7 GETTABLEKS                       R3 R1 K3 ["AbsolutePosition"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+7]
       11 GETTABLEKS                       R2 R0 K4 ["absoluteSize"]
       13 GETTABLEKS                       R3 R1 K5 ["AbsoluteSize"]
       15 JUMPIFEQ                         R2 R3 ; [+29]
       17 DUPTABLE                         R2 K6 [{"absolutePosition", "absoluteSize"}]
       18 GETIMPORT                        R3 K9 [Vector2.new]
       20 GETTABLEKS                       R4 R1 K3 ["AbsolutePosition"]
       22 GETTABLEKS                       R4 R4 K10 ["X"]
       24 GETTABLEKS                       R5 R1 K3 ["AbsolutePosition"]
       26 GETTABLEKS                       R5 R5 K11 ["Y"]
       28 CALL                             R3 2 1
       29 SETTABLEKS                       R3 R2 K2 ["absolutePosition"]
       31 GETIMPORT                        R3 K9 [Vector2.new]
       33 GETTABLEKS                       R4 R1 K5 ["AbsoluteSize"]
       35 GETTABLEKS                       R4 R4 K10 ["X"]
       37 GETTABLEKS                       R5 R1 K5 ["AbsoluteSize"]
       39 GETTABLEKS                       R5 R5 K11 ["Y"]
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K4 ["absoluteSize"]
       44 RETURN                           R2 1
       45 LOADNIL                          R2
       46 RETURN                           R2 1

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 NAMECALL                         R1 R0 K0 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["reposition"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["resize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Component"]
        6 GETTABLEKS                       R4 R1 K3 ["ComponentProps"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 MOVE                             R6 R3
       12 GETUPVAL                         R7 1
       13 DUPTABLE                         R8 K8 [{"AbsolutePosition", "AbsoluteSize", "WrapperProps"}]
       14 GETTABLEKS                       R9 R2 K9 ["absolutePosition"]
       16 SETTABLEKS                       R9 R8 K5 ["AbsolutePosition"]
       18 GETTABLEKS                       R9 R2 K10 ["absoluteSize"]
       20 SETTABLEKS                       R9 R8 K6 ["AbsoluteSize"]
       22 NEWTABLE                         R9 4 0
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K11 ["Change"]
       27 GETTABLEKS                       R10 R10 K5 ["AbsolutePosition"]
       29 GETTABLEKS                       R11 R0 K12 ["onPositionChanged"]
       31 SETTABLE                         R11 R9 R10
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K11 ["Change"]
       35 GETTABLEKS                       R10 R10 K6 ["AbsoluteSize"]
       37 GETTABLEKS                       R11 R0 K13 ["onSizeChanged"]
       39 SETTABLE                         R11 R9 R10
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K14 ["Ref"]
       43 GETTABLEKS                       R11 R0 K15 ["ref"]
       45 SETTABLE                         R11 R9 R10
       46 SETTABLEKS                       R9 R8 K7 ["WrapperProps"]
       48 MOVE                             R9 R4
       49 CALL                             R7 2 -1
       50 CALL                             R5 -1 -1
       51 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Component", "ComponentProps"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Component"]
        8 SETTABLEKS                       R0 R3 K2 ["ComponentProps"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K2 ["Parent"]
       25 GETTABLEKS                       R4 R4 K7 ["wrapperShouldUpdate"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K2 ["Parent"]
       32 GETTABLEKS                       R5 R5 K8 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K9 ["joinDeep"]
       37 GETTABLEKS                       R6 R1 K10 ["Component"]
       39 LOADK                            R8 K11 ["SizeAndPosition"]
       40 NAMECALL                         R6 R6 K12 ["extend"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R3 R6 K13 ["shouldUpdate"]
       45 DUPTABLE                         R7 K15 [{"WrapperProps"}]
       46 NEWTABLE                         R8 0 0
       48 SETTABLEKS                       R8 R7 K14 ["WrapperProps"]
       50 SETTABLEKS                       R7 R6 K16 ["defaultProps"]
       52 DUPCLOSURE                       R7 K17 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R7 R6 K18 ["init"]
       56 DUPCLOSURE                       R7 K19 [PROTO_3]
       57 SETTABLEKS                       R7 R6 K20 ["reposition"]
       59 DUPCLOSURE                       R7 K21 [PROTO_4]
       60 SETTABLEKS                       R7 R6 K22 ["resize"]
       62 DUPCLOSURE                       R7 K23 [PROTO_6]
       63 SETTABLEKS                       R7 R6 K24 ["setSizeAndPosition"]
       65 DUPCLOSURE                       R7 K25 [PROTO_7]
       66 SETTABLEKS                       R7 R6 K26 ["didMount"]
       68 DUPCLOSURE                       R7 K27 [PROTO_8]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R5
       71 SETTABLEKS                       R7 R6 K28 ["render"]
       73 DUPCLOSURE                       R7 K29 [PROTO_10]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R6
       76 RETURN                           R7 1
