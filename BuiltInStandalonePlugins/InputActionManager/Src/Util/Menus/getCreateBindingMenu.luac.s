PROTO_0:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K2 [{"id", "text"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["CREATE_BINDING_KEYCODE"]
        6 SETTABLEKS                       R3 R2 K0 ["id"]
        8 LOADK                            R5 K4 ["Binding"]
        9 LOADK                            R6 K5 ["Keycode"]
       10 NAMECALL                         R3 R0 K6 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K1 ["text"]
       15 DUPTABLE                         R3 K2 [{"id", "text"}]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K7 ["CREATE_BINDING_COMPOSITE"]
       19 SETTABLEKS                       R4 R3 K0 ["id"]
       21 LOADK                            R6 K4 ["Binding"]
       22 LOADK                            R7 K8 ["Composite"]
       23 NAMECALL                         R4 R0 K6 ["getText"]
       25 CALL                             R4 3 1
       26 SETTABLEKS                       R4 R3 K1 ["text"]
       28 SETLIST                          R1 R2 2 [1]
       30 RETURN                           R1 1

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
