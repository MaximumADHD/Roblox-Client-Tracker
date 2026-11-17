PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+20]
        3 DUPTABLE                         R5 K2 [{"id", "text"}]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K3 ["CANCEL"]
        7 SETTABLEKS                       R6 R5 K0 ["id"]
        9 LOADK                            R8 K4 ["Menu"]
       10 LOADK                            R9 K5 ["Cancel"]
       11 NAMECALL                         R6 R0 K6 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K1 ["text"]
       16 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K9 [table.insert]
       21 CALL                             R3 2 0
       22 RETURN                           R2 1
       23 DUPTABLE                         R5 K11 [{"icon", "id", "text"}]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K12 ["TrashCan"]
       27 SETTABLEKS                       R6 R5 K10 ["icon"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K13 ["DELETE"]
       32 SETTABLEKS                       R6 R5 K0 ["id"]
       34 LOADK                            R8 K4 ["Menu"]
       35 LOADK                            R9 K14 ["Delete"]
       36 NAMECALL                         R6 R0 K6 ["getText"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K1 ["text"]
       41 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R3 K9 [table.insert]
       46 CALL                             R3 2 0
       47 RETURN                           R2 1

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
       32 GETTABLEKS                       R4 R1 K13 ["Enums"]
       34 GETTABLEKS                       R4 R4 K14 ["IconName"]
       36 DUPCLOSURE                       R5 K15 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
