PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K1 [_G]
        7 GETTABLEKS                       R1 R1 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 LOADK                            R2 K4 ["Roact.Portal"]
       12 LOADK                            R3 K5 ["Please use the createPortal API on ReactRoblox instead"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K6 ["createPortal"]
       17 GETTABLEKS                       R2 R0 K7 ["children"]
       19 GETTABLEKS                       R3 R0 K8 ["target"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactRoblox"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K2 ["Parent"]
       18 GETTABLEKS                       R3 R3 K6 ["warnOnce"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K7 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
