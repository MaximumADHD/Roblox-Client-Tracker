PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R2 2
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1
       12 GETIMPORT                        R1 K1 [game]
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K2 ["GetService"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["isCli"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["Test"]
       24 GETTABLEKS                       R3 R4 K10 ["MockInsertService"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K9 ["Test"]
       35 GETTABLEKS                       R4 R5 K11 ["MockPublishService"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Src"]
       42 GETTABLEKS                       R6 R7 K12 ["Flags"]
       44 GETTABLEKS                       R5 R6 K13 ["getFFlagEnableUploadingMakeup"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Src"]
       51 GETTABLEKS                       R7 R8 K12 ["Flags"]
       53 GETTABLEKS                       R6 R7 K14 ["getFFlagRemoveItemTags"]
       55 CALL                             R5 1 1
       56 NEWTABLE                         R6 1 0
       58 MOVE                             R8 R4
       59 CALL                             R8 0 1
       60 JUMPIFNOT                        R8 ; [+25]
       61 DUPTABLE                         R7 K17 [{"InsertService", "PublishService"}]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 JUMPIFNOT                        R9 ; [+4]
       65 GETTABLEKS                       R8 R2 K18 ["new"]
       67 CALL                             R8 0 1
       68 JUMPIF                           R8 ; [+1]
       69 LOADNIL                          R8
       70 SETTABLEKS                       R8 R7 K15 ["InsertService"]
       72 MOVE                             R9 R5
       73 CALL                             R9 0 1
       74 JUMPIFNOT                        R9 ; [+7]
       75 MOVE                             R9 R1
       76 CALL                             R9 0 1
       77 JUMPIFNOT                        R9 ; [+4]
       78 GETTABLEKS                       R8 R3 K18 ["new"]
       80 CALL                             R8 0 1
       81 JUMPIF                           R8 ; [+1]
       82 LOADNIL                          R8
       83 SETTABLEKS                       R8 R7 K16 ["PublishService"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R7
       87 DUPCLOSURE                       R8 K19 [PROTO_0]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 SETTABLEKS                       R8 R6 K20 ["GetService"]
       93 RETURN                           R6 1
