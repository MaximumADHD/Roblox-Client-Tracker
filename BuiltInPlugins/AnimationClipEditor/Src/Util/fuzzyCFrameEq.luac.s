PROTO_0:
        0 NEWTABLE                         R2 0 1
        2 NAMECALL                         R3 R0 K0 ["GetComponents"]
        4 CALL                             R3 1 -1
        5 SETLIST                          R2 R3 -1 [1]
        7 NEWTABLE                         R3 0 1
        9 NAMECALL                         R4 R1 K0 ["GetComponents"]
       11 CALL                             R4 1 -1
       12 SETLIST                          R3 R4 -1 [1]
       14 LOADN                            R6 1
       15 LOADN                            R4 12
       16 LOADN                            R5 1
       17 FORNPREP                         R4
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K1 ["fuzzyEq"]
       21 GETTABLE                         R8 R2 R6
       22 GETTABLE                         R9 R3 R6
       23 CALL                             R7 2 1
       24 JUMPIF                           R7 ; [+2]
       25 LOADB                            R7 0
       26 RETURN                           R7 1
       27 FORNLOOP                         R4
       28 LOADB                            R4 1
       29 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Math"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
