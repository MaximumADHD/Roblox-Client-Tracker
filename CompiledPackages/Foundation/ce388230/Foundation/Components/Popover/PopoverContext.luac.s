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
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Logger"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K12 ["createContext"]
       30 DUPTABLE                         R6 K17 [{"anchor", "setAnchor", "isOpen", "testId"}]
       31 LOADNIL                          R7
       32 SETTABLEKS                       R7 R6 K13 ["anchor"]
       34 DUPCLOSURE                       R7 K18 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R7 R6 K14 ["setAnchor"]
       38 LOADB                            R7 0
       39 SETTABLEKS                       R7 R6 K15 ["isOpen"]
       41 LOADK                            R7 K19 [""]
       42 SETTABLEKS                       R7 R6 K16 ["testId"]
       44 CALL                             R5 1 -1
       45 RETURN                           R5 -1
