PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K1 [_G]
        7 GETTABLEKS                       R1 R1 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 LOADK                            R2 K4 ["oneChild"]
       12 LOADK                            R3 K5 ["You likely don't need this at all! If you were assigning children via `React.oneChild(someChildren)`, you can simply use `someChildren` directly."]
       13 CALL                             R1 2 0
       14 JUMPIF                           R0 ; [+2]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETIMPORT                        R1 K7 [next]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 2
       21 JUMPIF                           R2 ; [+2]
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 GETIMPORT                        R3 K7 [next]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+5]
       30 GETIMPORT                        R4 K9 [error]
       32 LOADK                            R5 K10 ["Expected at most one child, had more than one child."]
       33 LOADN                            R6 2
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K11 ["Children"]
       38 GETTABLEKS                       R4 R4 K12 ["only"]
       40 MOVE                             R5 R2
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["React"]
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
