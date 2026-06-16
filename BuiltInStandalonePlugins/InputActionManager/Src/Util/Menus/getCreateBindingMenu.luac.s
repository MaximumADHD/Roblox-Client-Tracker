PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["CREATE_BINDING_KEYCODE"]
        6 SETTABLEKS                       R2 R1 K0 ["id"]
        8 LOADK                            R2 K4 ["Keycode"]
        9 SETTABLEKS                       R2 R1 K1 ["text"]
       11 DUPTABLE                         R2 K2 [{"id", "text"}]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["CREATE_BINDING_COMPOSITE"]
       15 SETTABLEKS                       R3 R2 K0 ["id"]
       17 LOADK                            R3 K6 ["Composite"]
       18 SETTABLEKS                       R3 R2 K1 ["text"]
       20 SETLIST                          R0 R1 2 [1]
       22 RETURN                           R0 1

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
       25 DUPCLOSURE                       R3 K12 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
