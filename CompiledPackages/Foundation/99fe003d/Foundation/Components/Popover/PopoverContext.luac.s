PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["No PopoverProvider found for Popover"]
        2 NAMECALL                         R1 R1 K1 ["warning"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["No PopoverProvider found for Popover"]
        2 NAMECALL                         R1 R1 K1 ["warning"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Logger"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Utility"]
       25 GETTABLEKS                       R5 R5 K10 ["Plugin"]
       27 GETTABLEKS                       R5 R5 K11 ["StudioUri"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["Types"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K14 ["createContext"]
       39 DUPTABLE                         R7 K24 [{["anchor"] = , ["setAnchor"], ["anchorUri"] = , ["setAnchorUri"], ["isOpen"] = False, ["testId"] = ""}]
       40 DUPCLOSURE                       R8 K25 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R8 R7 K17 ["setAnchor"]
       44 DUPCLOSURE                       R8 K26 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R8 R7 K19 ["setAnchorUri"]
       48 CALL                             R6 1 -1
       49 RETURN                           R6 -1
