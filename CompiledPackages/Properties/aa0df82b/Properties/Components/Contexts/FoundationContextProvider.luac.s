PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K2 ["FoundationProvider"]
       11 DUPTABLE                         R4 K9 [{["device"] = "Desktop", ["theme"], ["plugin"], ["overlayGui"], ["responsiveConfig"]}]
       12 GETTABLEKS                       R5 R1 K5 ["theme"]
       14 SETTABLEKS                       R5 R4 K5 ["theme"]
       16 GETTABLEKS                       R5 R0 K6 ["plugin"]
       18 SETTABLEKS                       R5 R4 K6 ["plugin"]
       20 GETTABLEKS                       R5 R0 K7 ["overlayGui"]
       22 SETTABLEKS                       R5 R4 K7 ["overlayGui"]
       24 GETUPVAL                         R5 4
       25 SETTABLEKS                       R5 R4 K8 ["responsiveConfig"]
       27 GETTABLEKS                       R5 R0 K10 ["children"]
       29 CALL                             R2 3 -1
       30 RETURN                           R2 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       25 GETTABLEKS                       R5 R5 K11 ["ThemeContext"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K12 ["createElement"]
       30 NEWTABLE                         R6 0 0
       32 DUPCLOSURE                       R7 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R6
       38 RETURN                           R7 1
