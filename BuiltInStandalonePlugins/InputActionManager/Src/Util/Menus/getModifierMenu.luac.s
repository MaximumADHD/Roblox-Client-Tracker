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
       23 DUPTABLE                         R5 K12 [{["icon"] = "trash-can", [2], ["text"]}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K13 ["DELETE"]
       27 SETTABLEKS                       R6 R5 K0 ["id"]
       29 LOADK                            R8 K4 ["Menu"]
       30 LOADK                            R9 K14 ["Delete"]
       31 NAMECALL                         R6 R0 K6 ["getText"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K1 ["text"]
       36 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R3 K9 [table.insert]
       41 CALL                             R3 2 0
       42 RETURN                           R2 1

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
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
