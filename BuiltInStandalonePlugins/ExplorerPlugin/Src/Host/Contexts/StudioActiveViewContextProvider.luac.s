PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["Components"]
        6 GETTABLEKS                       R4 R5 K1 ["Contexts"]
        8 GETTABLEKS                       R3 R4 K2 ["ActiveViewContextProvider"]
       10 DUPTABLE                         R4 K4 [{"activeViewIdentifier"}]
       11 MOVE                             R5 R1
       12 JUMPIFNOT                        R5 ; [+2]
       13 GETTABLEKS                       R5 R1 K5 ["Name"]
       15 SETTABLEKS                       R5 R4 K3 ["activeViewIdentifier"]
       17 GETTABLEKS                       R5 R0 K6 ["children"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["useFocusedDataModelType"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["createElement"]
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 RETURN                           R5 1
