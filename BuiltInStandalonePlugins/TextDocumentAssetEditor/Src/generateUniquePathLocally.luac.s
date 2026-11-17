PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["normalize"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["isValid"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R0 K2 ["Exists"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R2 1
       19 LOADN                            R5 2
       20 LOADN                            R3 1000
       21 LOADN                            R4 1
       22 FORNPREP                         R3
       23 LOADK                            R6 K3 ["%*_%*"]
       24 MOVE                             R8 R2
       25 MOVE                             R9 R5
       26 NAMECALL                         R6 R6 K4 ["format"]
       28 CALL                             R6 3 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K1 ["isValid"]
       32 MOVE                             R8 R6
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+6]
       35 MOVE                             R9 R6
       36 NAMECALL                         R7 R0 K2 ["Exists"]
       38 CALL                             R7 2 1
       39 JUMPIF                           R7 ; [+1]
       40 RETURN                           R6 1
       41 FORNLOOP                         R3
       42 LOADNIL                          R3
       43 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextDocumentAssetEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["paths"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
