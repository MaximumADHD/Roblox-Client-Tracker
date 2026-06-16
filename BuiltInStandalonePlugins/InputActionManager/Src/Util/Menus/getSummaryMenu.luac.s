PROTO_0:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K2 [{"id", "text"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["RENAME"]
        6 SETTABLEKS                       R3 R2 K0 ["id"]
        8 LOADK                            R3 K4 ["Rename"]
        9 SETTABLEKS                       R3 R2 K1 ["text"]
       11 DUPTABLE                         R3 K2 [{"id", "text"}]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["DELETE"]
       15 SETTABLEKS                       R4 R3 K0 ["id"]
       17 LOADK                            R4 K6 ["Delete"]
       18 SETTABLEKS                       R4 R3 K1 ["text"]
       20 DUPTABLE                         R4 K8 [{"id", "text", "items"}]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K9 ["CHANGE_ACTION_TYPE"]
       24 SETTABLEKS                       R5 R4 K0 ["id"]
       26 LOADK                            R5 K10 ["Change Action Type"]
       27 SETTABLEKS                       R5 R4 K1 ["text"]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R0
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K7 ["items"]
       34 SETLIST                          R1 R2 3 [1]
       36 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Menus"]
       22 GETTABLEKS                       R3 R3 K11 ["getActionTypeMenu"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K12 ["Constants"]
       33 GETTABLEKS                       R4 R4 K13 ["MenuIdentifiers"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K14 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 RETURN                           R4 1
