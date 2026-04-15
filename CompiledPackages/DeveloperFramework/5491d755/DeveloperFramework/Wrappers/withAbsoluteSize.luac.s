PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resize"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 DUPTABLE                         R1 K3 [{"absoluteSize"}]
        7 GETIMPORT                        R2 K6 [Vector2.new]
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K2 ["absoluteSize"]
       14 SETTABLEKS                       R1 R0 K7 ["state"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K8 ["onSizeChanged"]
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R4 R1 K2 ["AbsoluteSize"]
       10 NAMECALL                         R2 R0 K3 ["setSize"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["absoluteSize"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+14]
        5 DUPTABLE                         R1 K1 [{"absoluteSize"}]
        6 GETIMPORT                        R2 K4 [Vector2.new]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K5 ["X"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K6 ["Y"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K0 ["absoluteSize"]
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_4:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["setState"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["resize"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Component"]
        6 GETTABLEKS                       R4 R1 K3 ["ComponentProps"]
        8 NEWTABLE                         R5 2 0
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K4 ["Change"]
       13 GETTABLEKS                       R6 R7 K5 ["AbsoluteSize"]
       15 GETTABLEKS                       R7 R0 K6 ["onSizeChanged"]
       17 SETTABLE                         R7 R5 R6
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K7 ["Ref"]
       21 GETTABLEKS                       R7 R0 K8 ["ref"]
       23 SETTABLE                         R7 R5 R6
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K9 ["createElement"]
       27 MOVE                             R7 R3
       28 GETUPVAL                         R8 1
       29 DUPTABLE                         R9 K11 [{"AbsoluteSize", "WrapperProps"}]
       30 GETTABLEKS                       R10 R2 K12 ["absoluteSize"]
       32 SETTABLEKS                       R10 R9 K5 ["AbsoluteSize"]
       34 SETTABLEKS                       R5 R9 K10 ["WrapperProps"]
       36 MOVE                             R10 R4
       37 CALL                             R8 2 -1
       38 CALL                             R6 -1 -1
       39 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Component", "ComponentProps"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Component"]
        8 SETTABLEKS                       R0 R3 K2 ["ComponentProps"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R6 K1 [script]
       23 GETTABLEKS                       R5 R6 K2 ["Parent"]
       25 GETTABLEKS                       R4 R5 K7 ["wrapperShouldUpdate"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K2 ["Parent"]
       32 GETTABLEKS                       R5 R6 K8 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K9 ["joinDeep"]
       37 GETTABLEKS                       R6 R1 K10 ["Component"]
       39 LOADK                            R8 K11 ["Resizer"]
       40 NAMECALL                         R6 R6 K12 ["extend"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R3 R6 K13 ["shouldUpdate"]
       45 DUPCLOSURE                       R7 K14 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R7 R6 K15 ["init"]
       49 DUPCLOSURE                       R7 K16 [PROTO_2]
       50 SETTABLEKS                       R7 R6 K17 ["resize"]
       52 DUPCLOSURE                       R7 K18 [PROTO_4]
       53 SETTABLEKS                       R7 R6 K19 ["setSize"]
       55 DUPCLOSURE                       R7 K20 [PROTO_5]
       56 SETTABLEKS                       R7 R6 K21 ["didMount"]
       58 DUPCLOSURE                       R7 K22 [PROTO_6]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R7 R6 K23 ["render"]
       63 DUPCLOSURE                       R7 K24 [PROTO_8]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 RETURN                           R7 1
