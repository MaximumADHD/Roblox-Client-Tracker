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
       18 GETTABLEKS                       R5 R1 K10 ["Put"]
       20 MOVE                             R6 R3
       21 LOADK                            R7 K11 ["Row"]
       22 DUPTABLE                         R8 K14 [{"gap", "children"}]
       23 LOADN                            R9 8
       24 SETTABLEKS                       R9 R8 K12 ["gap"]
       26 NEWTABLE                         R9 0 0
       28 SETTABLEKS                       R9 R8 K13 ["children"]
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R4
       33 NEWTABLE                         R11 4 1
       35 LOADK                            R13 K11 ["Row"]
       36 SETTABLEKS                       R13 R11 K15 ["Name"]
       38 MOVE                             R13 R2
       39 LOADK                            R14 K16 ["`box row auto-xy gap-{gap}`"]
       40 CALL                             R13 1 1
       41 SETTABLEKS                       R13 R11 K17 ["Tags"]
       43 MOVE                             R13 R2
       44 LOADK                            R14 K18 ["api.childOrder"]
       45 CALL                             R13 1 1
       46 SETTABLEKS                       R13 R11 K19 ["LayoutOrder"]
       48 MOVE                             R12 R5
       49 DUPTABLE                         R13 K20 [{"children"}]
       50 MOVE                             R14 R2
       51 LOADK                            R15 K13 ["children"]
       52 CALL                             R14 1 1
       53 SETTABLEKS                       R14 R13 K13 ["children"]
       55 CALL                             R12 1 -1
       56 SETLIST                          R11 R12 -1 [1]
       58 CALL                             R10 1 -1
       59 SETLIST                          R9 R10 -1 [1]
       61 CALL                             R6 3 1
       62 RETURN                           R6 1
