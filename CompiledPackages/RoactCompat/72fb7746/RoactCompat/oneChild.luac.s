PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["__COMPAT_WARNINGS__"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K2 ["oneChild"]
       10 LOADK                            R3 K3 ["You likely don't need this at all! If you were assigning children via `React.oneChild(someChildren)`, you can simply use `someChildren` directly."]
       11 CALL                             R1 2 0
       12 JUMPIF                           R0 ; [+2]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K5 [next]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 2
       19 JUMPIF                           R2 ; [+2]
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 GETIMPORT                        R3 K5 [next]
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+5]
       28 GETIMPORT                        R4 K7 [error]
       30 LOADK                            R5 K8 ["Expected at most one child, had more than one child."]
       31 LOADN                            R6 2
       32 CALL                             R4 2 0
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K9 ["Children"]
       36 GETTABLEKS                       R4 R4 K10 ["only"]
       38 MOVE                             R5 R2
       39 CALL                             R4 1 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["ReactGlobals"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R4 R4 K2 ["Parent"]
       23 GETTABLEKS                       R4 R4 K7 ["warnOnce"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K8 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
