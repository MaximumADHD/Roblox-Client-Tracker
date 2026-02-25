PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["__COMPAT_WARNINGS__"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K2 ["Roact.Portal"]
       10 LOADK                            R3 K3 ["Please use the createPortal API on ReactRoblox instead"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K4 ["createPortal"]
       15 GETTABLEKS                       R2 R0 K5 ["children"]
       17 GETTABLEKS                       R3 R0 K6 ["target"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactRoblox"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["ReactGlobals"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K2 ["Parent"]
       23 GETTABLEKS                       R4 R5 K7 ["warnOnce"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K8 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
