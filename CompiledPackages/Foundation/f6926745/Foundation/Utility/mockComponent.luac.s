PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"theme", "preferences"}]
        5 MOVE                             R6 R2
        6 JUMPIF                           R6 ; [+3]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K4 ["Dark"]
       10 SETTABLEKS                       R6 R5 K1 ["theme"]
       12 SETTABLEKS                       R1 R5 K2 ["preferences"]
       14 DUPTABLE                         R6 K6 [{"Content"}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["createElement"]
       18 GETUPVAL                         R8 3
       19 DUPTABLE                         R9 K8 [{"Size"}]
       20 GETIMPORT                        R10 K11 [UDim2.fromScale]
       22 LOADN                            R11 1
       23 LOADN                            R12 1
       24 CALL                             R10 2 1
       25 SETTABLEKS                       R10 R9 K7 ["Size"]
       27 MOVE                             R10 R0
       28 CALL                             R7 3 1
       29 SETTABLEKS                       R7 R6 K5 ["Content"]
       31 CALL                             R3 3 -1
       32 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["Theme"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K2 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Providers"]
       32 GETTABLEKS                       R5 R5 K11 ["Preferences"]
       34 GETTABLEKS                       R5 R5 K12 ["PreferencesProvider"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Components"]
       41 GETTABLEKS                       R6 R6 K14 ["View"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 RETURN                           R6 1
