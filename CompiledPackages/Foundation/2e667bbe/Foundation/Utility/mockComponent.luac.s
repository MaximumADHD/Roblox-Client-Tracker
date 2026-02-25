PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"theme", "preferences"}]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K4 ["Dark"]
        8 SETTABLEKS                       R5 R4 K1 ["theme"]
       10 SETTABLEKS                       R1 R4 K2 ["preferences"]
       12 DUPTABLE                         R5 K6 [{"Content"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K0 ["createElement"]
       16 GETUPVAL                         R7 3
       17 DUPTABLE                         R8 K8 [{"Size"}]
       18 GETIMPORT                        R9 K11 [UDim2.new]
       20 LOADN                            R10 1
       21 LOADN                            R11 0
       22 LOADN                            R12 1
       23 LOADN                            R13 0
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K7 ["Size"]
       27 MOVE                             R9 R0
       28 CALL                             R6 3 1
       29 SETTABLEKS                       R6 R5 K5 ["Content"]
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["Theme"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R5 K11 ["View"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R6 K2 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R8 K13 ["Preferences"]
       41 GETTABLEKS                       R6 R7 K14 ["PreferencesProvider"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 RETURN                           R6 1
