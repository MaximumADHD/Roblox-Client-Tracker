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
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 GETTABLEKS                       R3 R3 K11 ["MenuIdentifiers"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 0 2
       27 DUPTABLE                         R4 K14 [{"id", "text"}]
       28 GETTABLEKS                       R5 R2 K15 ["CREATE_BINDING_KEY_CODE"]
       30 SETTABLEKS                       R5 R4 K12 ["id"]
       32 LOADK                            R5 K16 ["Keycode"]
       33 SETTABLEKS                       R5 R4 K13 ["text"]
       35 DUPTABLE                         R5 K14 [{"id", "text"}]
       36 GETTABLEKS                       R6 R2 K17 ["CREATE_BINDING_COMPOUND_DIRECTION"]
       38 SETTABLEKS                       R6 R5 K12 ["id"]
       40 LOADK                            R6 K18 ["Compound Direction"]
       41 SETTABLEKS                       R6 R5 K13 ["text"]
       43 SETLIST                          R3 R4 2 [1]
       45 RETURN                           R3 1
