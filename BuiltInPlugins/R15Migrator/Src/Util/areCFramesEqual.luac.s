PROTO_0:
        0 NEWTABLE                         R3 0 1
        2 NAMECALL                         R4 R0 K0 ["GetComponents"]
        4 CALL                             R4 1 -1
        5 SETLIST                          R3 R4 -1 [1]
        7 NEWTABLE                         R4 0 1
        9 NAMECALL                         R5 R1 K0 ["GetComponents"]
       11 CALL                             R5 1 -1
       12 SETLIST                          R4 R5 -1 [1]
       14 LOADN                            R7 1
       15 LOADN                            R5 12
       16 LOADN                            R6 1
       17 FORNPREP                         R5
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K1 ["fuzzyEq"]
       21 GETTABLE                         R9 R3 R7
       22 GETTABLE                         R10 R4 R7
       23 MOVE                             R11 R2
       24 CALL                             R8 3 1
       25 JUMPIF                           R8 ; [+2]
       26 LOADB                            R8 0
       27 RETURN                           R8 1
       28 FORNLOOP                         R5
       29 LOADB                            R5 1
       30 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Math"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
