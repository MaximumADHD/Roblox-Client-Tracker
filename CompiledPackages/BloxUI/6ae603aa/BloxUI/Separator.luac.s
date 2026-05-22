MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 MOVE                             R5 R3
       19 LOADK                            R6 K10 ["Separator"]
       20 DUPTABLE                         R7 K12 [{"direction"}]
       21 LOADK                            R8 K13 ["horizontal"]
       22 SETTABLEKS                       R8 R7 K11 ["direction"]
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R4
       27 DUPTABLE                         R10 K17 [{"Name", "Tags", "LayoutOrder"}]
       28 LOADK                            R11 K10 ["Separator"]
       29 SETTABLEKS                       R11 R10 K14 ["Name"]
       31 MOVE                             R11 R2
       32 LOADK                            R12 K18 ["if direction == \"vertical\" then \"separator-v\" else \"separator-h\""]
       33 CALL                             R11 1 1
       34 SETTABLEKS                       R11 R10 K15 ["Tags"]
       36 MOVE                             R11 R2
       37 LOADK                            R12 K19 ["api.childOrder"]
       38 CALL                             R11 1 1
       39 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       41 CALL                             R9 1 -1
       42 SETLIST                          R8 R9 -1 [1]
       44 CALL                             R5 3 1
       45 RETURN                           R5 1
