PROTO_0:
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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Logger"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["createContext"]
       30 DUPTABLE                         R6 K20 [{["anchor"] = , ["setAnchor"], ["isOpen"] = False, ["testId"] = ""}]
       31 DUPCLOSURE                       R7 K21 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R7 R6 K15 ["setAnchor"]
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1
