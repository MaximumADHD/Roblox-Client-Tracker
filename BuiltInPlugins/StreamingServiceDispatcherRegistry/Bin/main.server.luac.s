PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K3 ["new"]
       10 CALL                             R0 0 1
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K4 ["init"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["StreamingServiceDispatcherRegistry"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R4 R0 K8 ["Src"]
       15 GETTABLEKS                       R3 R4 K9 ["Utils"]
       17 GETTABLEKS                       R2 R3 K10 ["CliAdapter"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K7 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R3 R4 K12 ["TestLoader"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K13 ["RunningEval"]
       29 JUMPIF                           R3 ; [+6]
       30 GETTABLEKS                       R3 R2 K14 ["launch"]
       32 LOADK                            R4 K4 ["StreamingServiceDispatcherRegistry"]
       33 GETTABLEKS                       R5 R0 K8 ["Src"]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R3 R2 K15 ["isCli"]
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+4]
       40 GETTABLEKS                       R3 R1 K13 ["RunningEval"]
       42 JUMPIF                           R3 ; [+1]
       43 RETURN                           R0 0
       44 GETIMPORT                        R3 K7 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Src"]
       48 GETTABLEKS                       R6 R7 K16 ["Flags"]
       50 GETTABLEKS                       R5 R6 K17 ["Resources"]
       52 GETTABLEKS                       R4 R5 K18 ["FFlagDeprecateOldAssistant"]
       54 CALL                             R3 1 1
       55 GETTABLEKS                       R4 R3 K19 ["Get"]
       57 CALL                             R4 0 1
       58 JUMPIFNOT                        R4 ; [+1]
       59 RETURN                           R0 0
       60 GETIMPORT                        R4 K7 [require]
       62 GETTABLEKS                       R6 R0 K8 ["Src"]
       64 GETTABLEKS                       R5 R6 K20 ["MainPlugin"]
       66 CALL                             R4 1 1
       67 LOADNIL                          R5
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          REF R5
       71 CAPTURE                          VAL R4
       72 GETIMPORT                        R8 K1 [plugin]
       74 GETTABLEKS                       R7 R8 K21 ["Unloading"]
       76 NEWCLOSURE                       R9 P1
       77 CAPTURE                          REF R5
       78 NAMECALL                         R7 R7 K22 ["Connect"]
       80 CALL                             R7 2 0
       81 GETIMPORT                        R7 K1 [plugin]
       83 GETTABLEKS                       R8 R0 K23 ["Name"]
       85 SETTABLEKS                       R8 R7 K23 ["Name"]
       87 GETTABLEKS                       R7 R4 K24 ["new"]
       89 CALL                             R7 0 1
       90 MOVE                             R5 R7
       91 NAMECALL                         R7 R5 K25 ["init"]
       93 CALL                             R7 1 0
       94 CLOSEUPVALS                      R5
       95 RETURN                           R0 0
