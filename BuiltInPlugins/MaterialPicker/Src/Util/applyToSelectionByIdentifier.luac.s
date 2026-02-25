PROTO_0:
        0 GETIMPORT                        R2 K2 [string.split]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["__"]
        4 CALL                             R2 2 1
        5 NAMECALL                         R3 R1 K4 ["Get"]
        7 CALL                             R3 1 1
        8 LENGTH                           R4 R2
        9 JUMPIFNOTEQKN                    R4 K5 [2] ; [+7]
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R3
       13 GETTABLEN                        R6 R2 2
       14 GETTABLEN                        R7 R2 1
       15 CALL                             R4 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R3
       19 MOVE                             R6 R0
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["applyToInstances"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETGLOBAL                        R3 K11 ["applyToSelectionByIdentifier"]
       22 GETGLOBAL                        R3 K11 ["applyToSelectionByIdentifier"]
       24 RETURN                           R3 1
