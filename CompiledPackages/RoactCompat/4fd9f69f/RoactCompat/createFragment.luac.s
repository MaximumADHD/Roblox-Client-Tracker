PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K1 [_G]
        7 GETTABLEKS                       R1 R2 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 LOADK                            R2 K4 ["createFragment"]
       12 LOADK                            R3 K5 ["Please instead use:\n\tReact.createElement(React.Fragment, ...)"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K6 ["createElement"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K7 ["Fragment"]
       20 LOADNIL                          R3
       21 MOVE                             R4 R0
       22 CALL                             R1 3 -1
       23 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["warnOnce"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K7 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
