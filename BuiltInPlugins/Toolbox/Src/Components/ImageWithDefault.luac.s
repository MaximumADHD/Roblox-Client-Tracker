PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["imageRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Texture"]
        4 GETUPVAL                         R0 2
        5 NEWTABLE                         R2 0 1
        7 GETUPVAL                         R3 0
        8 SETLIST                          R2 R3 1 [1]
       10 NAMECALL                         R0 R0 K1 ["PreloadAsync"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 1
       16 SETTABLE                         R2 R0 R1
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K2 ["imageRef"]
       20 JUMPIFNOT                        R0 ; [+22]
       21 GETUPVAL                         R0 4
       22 GETTABLEKS                       R0 R0 K2 ["imageRef"]
       24 GETTABLEKS                       R0 R0 K3 ["current"]
       26 JUMPIFNOT                        R0 ; [+16]
       27 GETUPVAL                         R0 4
       28 GETTABLEKS                       R0 R0 K4 ["props"]
       30 GETTABLEKS                       R0 R0 K5 ["Image"]
       32 GETUPVAL                         R1 1
       33 JUMPIFNOTEQ                      R0 R1 ; [+9]
       35 GETUPVAL                         R0 4
       36 GETTABLEKS                       R0 R0 K2 ["imageRef"]
       38 GETTABLEKS                       R0 R0 K3 ["current"]
       40 GETUPVAL                         R1 1
       41 SETTABLEKS                       R1 R0 K5 ["Image"]
       43 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Image"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["defaultImage"]
        8 JUMPIFNOT                        R1 ; [+18]
        9 JUMPIFEQKS                       R1 K3 [""] ; [+17]
       11 GETTABLEKS                       R3 R0 K4 ["imageRef"]
       13 JUMPIFNOT                        R3 ; [+13]
       14 GETTABLEKS                       R3 R0 K4 ["imageRef"]
       16 GETTABLEKS                       R3 R3 K5 ["current"]
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETTABLEKS                       R3 R0 K4 ["imageRef"]
       21 GETTABLEKS                       R3 R3 K5 ["current"]
       23 GETTABLEKS                       R3 R3 K1 ["Image"]
       25 JUMPIFNOTEQ                      R3 R1 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 0
       29 GETTABLE                         R3 R4 R1
       30 JUMPIFNOT                        R3 ; [+7]
       31 GETTABLEKS                       R3 R0 K4 ["imageRef"]
       33 GETTABLEKS                       R3 R3 K5 ["current"]
       35 SETTABLEKS                       R1 R3 K1 ["Image"]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R3 R0 K4 ["imageRef"]
       40 GETTABLEKS                       R3 R3 K5 ["current"]
       42 SETTABLEKS                       R2 R3 K1 ["Image"]
       44 GETIMPORT                        R3 K7 [spawn]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R0
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["_loadAndSetImage"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Image"]
        4 GETTABLEKS                       R3 R1 K1 ["Image"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+9]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K2 ["defaultImage"]
       12 GETTABLEKS                       R3 R1 K2 ["defaultImage"]
       14 JUMPIFEQ                         R2 R3 ; [+4]
       16 NAMECALL                         R2 R0 K3 ["_loadAndSetImage"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETTABLEKS                       R3 R0 K2 ["props"]
        8 NEWTABLE                         R4 4 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Ref"]
       13 GETTABLEKS                       R6 R0 K4 ["imageRef"]
       15 SETTABLE                         R6 R4 R5
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["None"]
       19 SETTABLEKS                       R5 R4 K6 ["Image"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["None"]
       24 SETTABLEKS                       R5 R4 K7 ["defaultImage"]
       26 CALL                             R2 2 1
       27 MOVE                             R1 R2
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K8 ["createElement"]
       31 LOADK                            R3 K9 ["ImageLabel"]
       32 MOVE                             R4 R1
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K9 [game]
       23 LOADK                            R6 K10 ["ContentProvider"]
       24 NAMECALL                         R4 R4 K11 ["GetService"]
       26 CALL                             R4 2 1
       27 NEWTABLE                         R5 0 0
       29 GETIMPORT                        R6 K14 [Instance.new]
       31 LOADK                            R7 K15 ["Decal"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R2 K16 ["PureComponent"]
       35 LOADK                            R9 K17 ["ImageWithDefault"]
       36 NAMECALL                         R7 R7 K18 ["extend"]
       38 CALL                             R7 2 1
       39 DUPCLOSURE                       R8 K19 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R8 R7 K20 ["init"]
       43 DUPCLOSURE                       R8 K21 [PROTO_2]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R8 R7 K22 ["_loadAndSetImage"]
       49 DUPCLOSURE                       R8 K23 [PROTO_3]
       50 SETTABLEKS                       R8 R7 K24 ["didMount"]
       52 DUPCLOSURE                       R8 K25 [PROTO_4]
       53 SETTABLEKS                       R8 R7 K26 ["didUpdate"]
       55 DUPCLOSURE                       R8 K27 [PROTO_5]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R8 R7 K28 ["render"]
       60 DUPCLOSURE                       R8 K29 [PROTO_6]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R8 R7 K30 ["mockImage"]
       64 RETURN                           R7 1
