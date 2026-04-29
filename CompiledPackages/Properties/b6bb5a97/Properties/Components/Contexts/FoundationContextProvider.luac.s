PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K2 ["FoundationProvider"]
       11 DUPTABLE                         R4 K6 [{"device", "theme", "overlayGui"}]
       12 LOADK                            R5 K7 ["Desktop"]
       13 SETTABLEKS                       R5 R4 K3 ["device"]
       15 GETTABLEKS                       R5 R1 K4 ["theme"]
       17 SETTABLEKS                       R5 R4 K4 ["theme"]
       19 GETTABLEKS                       R5 R0 K5 ["overlayGui"]
       21 SETTABLEKS                       R5 R4 K5 ["overlayGui"]
       23 GETTABLEKS                       R5 R0 K8 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R7 R0 K9 ["Components"]
       23 GETTABLEKS                       R6 R7 K10 ["Contexts"]
       25 GETTABLEKS                       R5 R6 K11 ["ThemeContext"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K12 ["createElement"]
       30 DUPCLOSURE                       R6 K13 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 RETURN                           R6 1
