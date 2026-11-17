PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["fflagEarlyTestersRoleAssigners"]
        9 JUMPIFNOT                        R1 ; [+13]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K1 ["EarlyTesters"]
       13 JUMPIFEQKNIL                     R2 ; [+9]
       15 GETTABLEKS                       R2 R0 K1 ["EarlyTesters"]
       17 GETTABLEKS                       R2 R2 K2 ["CanAssignRole"]
       19 JUMPIFEQKB                       R2 TRUE ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Selectors"]
       22 GETTABLEKS                       R3 R3 K9 ["IsViewerGroupOwner"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
