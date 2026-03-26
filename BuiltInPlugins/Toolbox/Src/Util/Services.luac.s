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
       47 NEWTABLE                         R5 1 0
       49 MOVE                             R7 R4
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+22]
       52 DUPTABLE                         R6 K16 [{"InsertService", "PublishService"}]
       53 MOVE                             R8 R1
       54 CALL                             R8 0 1
       55 JUMPIFNOT                        R8 ; [+4]
       56 GETTABLEKS                       R7 R2 K17 ["new"]
       58 CALL                             R7 0 1
       59 JUMPIF                           R7 ; [+1]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R6 K14 ["InsertService"]
       63 MOVE                             R8 R1
       64 CALL                             R8 0 1
       65 JUMPIFNOT                        R8 ; [+4]
       66 GETTABLEKS                       R7 R3 K17 ["new"]
       68 CALL                             R7 0 1
       69 JUMPIF                           R7 ; [+1]
       70 LOADNIL                          R7
       71 SETTABLEKS                       R7 R6 K15 ["PublishService"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R6
       75 DUPCLOSURE                       R7 K18 [PROTO_0]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R7 R5 K19 ["GetService"]
       81 RETURN                           R5 1
