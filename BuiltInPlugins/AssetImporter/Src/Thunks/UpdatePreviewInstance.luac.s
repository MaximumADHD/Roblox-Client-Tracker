PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADK                            R9 K1 ["KeyframeSequence"]
        8 NAMECALL                         R7 R6 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+3]
       12 NAMECALL                         R7 R6 K3 ["Destroy"]
       14 CALL                             R7 1 0
       15 FORGLOOP                         R2 2 ; [-9]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+41]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Clone"]
        5 CALL                             R1 1 1
        6 LOADK                            R4 K1 ["KeyframeSequence"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+25]
       11 NAMECALL                         R2 R0 K3 ["getState"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K4 ["Preview"]
       16 GETTABLEKS                       R3 R3 K5 ["assetImportSession"]
       18 NAMECALL                         R4 R3 K6 ["GetImportTree"]
       20 CALL                             R4 1 1
       21 NAMECALL                         R5 R4 K7 ["GetPreview"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 1
       25 MOVE                             R7 R5
       26 CALL                             R6 1 0
       27 GETIMPORT                        R6 K10 [Instance.new]
       29 LOADK                            R7 K11 ["WorldModel"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R5 R1 K12 ["Parent"]
       33 SETTABLEKS                       R6 R5 K12 ["Parent"]
       35 MOVE                             R1 R6
       36 GETUPVAL                         R4 2
       37 MOVE                             R5 R1
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R0 K13 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 2
       44 LOADNIL                          R4
       45 CALL                             R3 1 -1
       46 NAMECALL                         R1 R0 K13 ["dispatch"]
       48 CALL                             R1 -1 0
       49 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetPreviewInstance"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 DUPCLOSURE                       R3 K10 [PROTO_2]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 RETURN                           R3 1
