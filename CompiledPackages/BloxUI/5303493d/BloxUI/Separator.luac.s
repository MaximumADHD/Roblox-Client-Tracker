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
       22 DUPTABLE                         R8 K13 [{"direction"}]
       23 LOADK                            R9 K14 ["horizontal"]
       24 SETTABLEKS                       R9 R8 K12 ["direction"]
       26 NEWTABLE                         R9 0 1
       28 MOVE                             R10 R5
       29 DUPTABLE                         R11 K18 [{"Name", "Tags", "LayoutOrder"}]
       30 LOADK                            R12 K11 ["Separator"]
       31 SETTABLEKS                       R12 R11 K15 ["Name"]
       33 MOVE                             R12 R3
       34 LOADK                            R13 K19 ["if direction == \"vertical\" then \"separator-v\" else \"separator-h\""]
       35 CALL                             R12 1 1
       36 SETTABLEKS                       R12 R11 K16 ["Tags"]
       38 MOVE                             R12 R3
       39 LOADK                            R13 K20 ["api.childOrder"]
       40 CALL                             R12 1 1
       41 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       43 CALL                             R10 1 -1
       44 SETLIST                          R9 R10 -1 [1]
       46 CALL                             R6 3 1
       47 RETURN                           R6 1
