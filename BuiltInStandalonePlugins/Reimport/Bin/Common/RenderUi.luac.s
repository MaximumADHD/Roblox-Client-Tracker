PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["Packages"]
       13 GETTABLEKS                       R3 R3 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [Instance.new]
       18 LOADK                            R4 K8 ["Frame"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R2 K9 ["createRoot"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R1 K10 ["createElement"]
       26 GETUPVAL                         R6 1
       27 MOVE                             R7 R0
       28 CALL                             R5 2 1
       29 MOVE                             R8 R5
       30 NAMECALL                         R6 R4 K11 ["render"]
       32 CALL                             R6 2 0
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K12 ["Unloading"]
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          VAL R4
       38 NAMECALL                         R6 R6 K13 ["Connect"]
       40 CALL                             R6 2 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R3 R0 K8 ["Src"]
       17 GETTABLEKS                       R3 R3 K9 ["MainPlugin"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
