PROTO_0:
        0 NEWTABLE                         R2 0 3
        2 DUPTABLE                         R3 K2 [{"id", "text"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["RENAME"]
        6 SETTABLEKS                       R4 R3 K0 ["id"]
        8 LOADK                            R6 K4 ["Menu"]
        9 LOADK                            R7 K5 ["Rename"]
       10 NAMECALL                         R4 R0 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K1 ["text"]
       15 DUPTABLE                         R4 K2 [{"id", "text"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K7 ["DELETE"]
       19 SETTABLEKS                       R5 R4 K0 ["id"]
       21 LOADK                            R7 K4 ["Menu"]
       22 LOADK                            R8 K8 ["Delete"]
       23 NAMECALL                         R5 R0 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K1 ["text"]
       28 DUPTABLE                         R5 K10 [{"id", "text", "items"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K11 ["CHANGE_ACTION_TYPE"]
       32 SETTABLEKS                       R6 R5 K0 ["id"]
       34 LOADK                            R8 K4 ["Menu"]
       35 LOADK                            R9 K12 ["ChangeActionType"]
       36 NAMECALL                         R6 R0 K6 ["getText"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K1 ["text"]
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R1
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K9 ["items"]
       46 SETLIST                          R2 R3 3 [1]
       48 RETURN                           R2 1

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
       43 DUPCLOSURE                       R5 K15 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 RETURN                           R5 1
