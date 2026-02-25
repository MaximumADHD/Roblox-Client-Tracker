PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["oneChild"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["Children"]
        8 GETTABLE                         R2 R3 R4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["PureComponent"]
       18 LOADK                            R5 K8 ["CameraProvider"]
       19 NAMECALL                         R3 R3 K9 ["extend"]
       21 CALL                             R3 2 1
       22 DUPCLOSURE                       R4 K10 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K11 ["render"]
       26 RETURN                           R3 1
