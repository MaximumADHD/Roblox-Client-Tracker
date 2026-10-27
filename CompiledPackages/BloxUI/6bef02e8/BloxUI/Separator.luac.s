MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 MOVE                             R6 R4
       21 LOADK                            R7 K11 ["Separator"]
       22 DUPTABLE                         R8 K14 [{["direction"] = "horizontal"}]
       23 NEWTABLE                         R9 0 1
       25 MOVE                             R10 R5
       26 DUPTABLE                         R11 K18 [{["Name"] = "Separator", ["Tags"], ["LayoutOrder"]}]
       27 MOVE                             R12 R3
       28 LOADK                            R13 K19 ["if direction == \"vertical\" then \"separator-v\" else \"separator-h\""]
       29 CALL                             R12 1 1
       30 SETTABLEKS                       R12 R11 K16 ["Tags"]
       32 MOVE                             R12 R3
       33 LOADK                            R13 K20 ["api.childOrder"]
       34 CALL                             R12 1 1
       35 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       37 CALL                             R10 1 -1
       38 SETLIST                          R9 R10 -1 [1]
       40 CALL                             R6 3 1
       41 RETURN                           R6 1
