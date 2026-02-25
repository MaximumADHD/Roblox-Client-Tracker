PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["Dev"]
        7 GETTABLEKS                       R2 R3 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K8 [{"generateTempUrlInContentProvider", "ImageImportedSignal"}]
       15 GETTABLEKS                       R6 R2 K9 ["fn"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["generateTempUrlInContentProvider"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K10 ["new"]
       23 CALL                             R6 0 1
       24 SETTABLEKS                       R6 R5 K7 ["ImageImportedSignal"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["StartPageManager"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["TestLoader"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["assign"]
       30 GETTABLEKS                       R6 R2 K11 ["Util"]
       32 GETTABLEKS                       R5 R6 K12 ["Signal"]
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 LOADNIL                          R7
       39 DUPTABLE                         R8 K16 [{"StartPageManager", "mock"}]
       40 GETTABLEKS                       R10 R3 K17 ["isCli"]
       42 CALL                             R10 0 1
       43 JUMPIFNOT                        R10 ; [+3]
       44 NEWTABLE                         R9 0 0
       46 JUMP                             ; [+6]
       47 GETIMPORT                        R9 K19 [game]
       49 LOADK                            R11 K20 ["StartPageService"]
       50 NAMECALL                         R9 R9 K21 ["GetService"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K14 ["StartPageManager"]
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          REF R7
       58 SETTABLEKS                       R9 R8 K15 ["mock"]
       60 MOVE                             R7 R8
       61 CLOSEUPVALS                      R7
       62 RETURN                           R7 1
