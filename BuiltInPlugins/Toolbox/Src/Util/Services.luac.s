PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R2 1
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K1 [game]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["GetService"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["isCli"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Test"]
       24 GETTABLEKS                       R3 R3 K10 ["MockInsertService"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K9 ["Test"]
       35 GETTABLEKS                       R4 R4 K11 ["MockPublishService"]
       37 CALL                             R3 1 1
       38 NEWTABLE                         R4 1 0
       40 DUPTABLE                         R5 K14 [{"InsertService", "PublishService"}]
       41 MOVE                             R7 R1
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R7 ; [+4]
       44 GETTABLEKS                       R6 R2 K15 ["new"]
       46 CALL                             R6 0 1
       47 JUMPIF                           R6 ; [+1]
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R5 K12 ["InsertService"]
       51 MOVE                             R7 R1
       52 CALL                             R7 0 1
       53 JUMPIFNOT                        R7 ; [+4]
       54 GETTABLEKS                       R6 R3 K15 ["new"]
       56 CALL                             R6 0 1
       57 JUMPIF                           R6 ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K13 ["PublishService"]
       61 DUPCLOSURE                       R6 K16 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R6 R4 K17 ["GetService"]
       66 RETURN                           R4 1
