PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["render"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["wrap"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K3 ["FoundationProvider"]
       12 DUPTABLE                         R5 K5 [{"theme"}]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K6 ["Enums"]
       16 GETTABLEKS                       R6 R6 K7 ["Theme"]
       18 GETTABLEKS                       R6 R6 K8 ["Dark"]
       20 SETTABLEKS                       R6 R5 K4 ["theme"]
       22 MOVE                             R6 R0
       23 CALL                             R3 3 -1
       24 CALL                             R2 -1 -1
       25 CALL                             R1 -1 -1
       26 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dev"]
       27 GETTABLEKS                       R4 R4 K10 ["ReactTestingLibrary"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["TestHelpers"]
       36 GETTABLEKS                       R5 R5 K13 ["TestLocalization"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 RETURN                           R5 1
