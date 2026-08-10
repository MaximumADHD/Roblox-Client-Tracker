PROTO_0:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K2 [{"id", "text"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["RENAME"]
        6 SETTABLEKS                       R4 R3 K0 ["id"]
        8 LOADK                            R6 K4 ["Menu"]
        9 LOADK                            R7 K5 ["Rename"]
       10 NAMECALL                         R4 R0 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K1 ["text"]
       15 SETLIST                          R2 R3 1 [1]
       17 GETUPVAL                         R3 1
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+19]
       20 DUPTABLE                         R5 K2 [{"id", "text"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K7 ["DUPLICATE"]
       24 SETTABLEKS                       R6 R5 K0 ["id"]
       26 LOADK                            R8 K4 ["Menu"]
       27 LOADK                            R9 K8 ["Duplicate"]
       28 NAMECALL                         R6 R0 K6 ["getText"]
       30 CALL                             R6 3 1
       31 SETTABLEKS                       R6 R5 K1 ["text"]
       33 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       35 MOVE                             R4 R2
       36 GETIMPORT                        R3 K11 [table.insert]
       38 CALL                             R3 2 0
       39 DUPTABLE                         R5 K2 [{"id", "text"}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K12 ["DELETE"]
       43 SETTABLEKS                       R6 R5 K0 ["id"]
       45 LOADK                            R8 K4 ["Menu"]
       46 LOADK                            R9 K13 ["Delete"]
       47 NAMECALL                         R6 R0 K6 ["getText"]
       49 CALL                             R6 3 1
       50 SETTABLEKS                       R6 R5 K1 ["text"]
       52 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       54 MOVE                             R4 R2
       55 GETIMPORT                        R3 K11 [table.insert]
       57 CALL                             R3 2 0
       58 DUPTABLE                         R5 K15 [{"id", "text", "items"}]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K16 ["CHANGE_ACTION_TYPE"]
       62 SETTABLEKS                       R6 R5 K0 ["id"]
       64 LOADK                            R8 K4 ["Menu"]
       65 LOADK                            R9 K17 ["ChangeActionType"]
       66 NAMECALL                         R6 R0 K6 ["getText"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K1 ["text"]
       71 GETUPVAL                         R6 2
       72 MOVE                             R7 R1
       73 CALL                             R6 1 1
       74 SETTABLEKS                       R6 R5 K14 ["items"]
       76 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       78 MOVE                             R4 R2
       79 GETIMPORT                        R3 K11 [table.insert]
       81 CALL                             R3 2 0
       82 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Menus"]
       29 GETTABLEKS                       R4 R4 K12 ["getActionTypeMenu"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Constants"]
       40 GETTABLEKS                       R5 R5 K14 ["MenuIdentifiers"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R0 K8 ["Src"]
       45 GETTABLEKS                       R5 R5 K15 ["Flags"]
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R5 K16 ["getFFlagIAMDuplicate"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K17 [PROTO_0]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 RETURN                           R7 1
