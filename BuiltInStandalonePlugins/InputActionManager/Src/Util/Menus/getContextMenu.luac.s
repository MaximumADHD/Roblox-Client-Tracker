PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K4 [{[1] = "pencil", ["id"], ["text"]}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K5 ["RENAME"]
        6 SETTABLEKS                       R3 R2 K2 ["id"]
        8 LOADK                            R5 K6 ["Menu"]
        9 LOADK                            R6 K7 ["Rename"]
       10 NAMECALL                         R3 R0 K8 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K3 ["text"]
       15 SETLIST                          R1 R2 1 [1]
       17 GETUPVAL                         R2 1
       18 CALL                             R2 0 1
       19 JUMPIFNOT                        R2 ; [+19]
       20 DUPTABLE                         R4 K9 [{"id", "text"}]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K10 ["DUPLICATE"]
       24 SETTABLEKS                       R5 R4 K2 ["id"]
       26 LOADK                            R7 K6 ["Menu"]
       27 LOADK                            R8 K11 ["Duplicate"]
       28 NAMECALL                         R5 R0 K8 ["getText"]
       30 CALL                             R5 3 1
       31 SETTABLEKS                       R5 R4 K3 ["text"]
       33 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       35 MOVE                             R3 R1
       36 GETIMPORT                        R2 K14 [table.insert]
       38 CALL                             R2 2 0
       39 DUPTABLE                         R4 K16 [{[1] = "trash-can", ["id"], ["text"]}]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K17 ["DELETE"]
       43 SETTABLEKS                       R5 R4 K2 ["id"]
       45 LOADK                            R7 K6 ["Menu"]
       46 LOADK                            R8 K18 ["Delete"]
       47 NAMECALL                         R5 R0 K8 ["getText"]
       49 CALL                             R5 3 1
       50 SETTABLEKS                       R5 R4 K3 ["text"]
       52 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       54 MOVE                             R3 R1
       55 GETIMPORT                        R2 K14 [table.insert]
       57 CALL                             R2 2 0
       58 RETURN                           R1 1

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
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["MenuIdentifiers"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K8 ["Src"]
       34 GETTABLEKS                       R4 R4 K13 ["Flags"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R4 K14 ["getFFlagIAMDuplicate"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
