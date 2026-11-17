PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOT                        R6 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K2 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-9]
       16 GETIMPORT                        R2 K4 [next]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+7]
       21 GETUPVAL                         R4 1
       22 LENGTH                           R6 R1
       23 GETTABLE                         R5 R1 R6
       24 CALL                             R4 1 -1
       25 NAMECALL                         R2 R0 K5 ["dispatch"]
       27 CALL                             R2 -1 0
       28 NAMECALL                         R2 R0 K6 ["getState"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R2 R2 K7 ["Status"]
       33 GETTABLEKS                       R2 R2 K8 ["LayerSelectionEvent"]
       35 JUMPIFNOT                        R2 ; [+4]
       36 MOVE                             R5 R1
       37 NAMECALL                         R3 R2 K9 ["Fire"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["keys"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Actions"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K11 ["SetSelectedLayer"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K12 [PROTO_1]
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1
