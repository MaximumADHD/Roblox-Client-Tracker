PROTO_0:
        0 GETTABLEN                        R4 R3 1
        1 DUPTABLE                         R5 K3 [{"materialVariants", "promptText", "filteredPromptText"}]
        2 SETTABLEKS                       R0 R5 K0 ["materialVariants"]
        4 SETTABLEKS                       R1 R5 K1 ["promptText"]
        6 SETTABLEKS                       R2 R5 K2 ["filteredPromptText"]
        8 JUMPIFNOT                        R4 ; [+28]
        9 GETTABLEKS                       R6 R4 K1 ["promptText"]
       11 JUMPIFNOTEQ                      R6 R1 ; [+25]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["append"]
       16 GETTABLEKS                       R7 R5 K0 ["materialVariants"]
       18 GETTABLEKS                       R8 R4 K0 ["materialVariants"]
       20 CALL                             R6 2 0
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K4 ["append"]
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R5
       27 SETLIST                          R7 R8 1 [1]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K5 ["slice"]
       32 MOVE                             R9 R3
       33 LOADN                            R10 2
       34 CALL                             R8 2 -1
       35 CALL                             R6 -1 -1
       36 RETURN                           R6 -1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K4 ["append"]
       40 NEWTABLE                         R7 0 1
       42 MOVE                             R8 R5
       43 SETLIST                          R7 R8 1 [1]
       45 MOVE                             R8 R3
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
