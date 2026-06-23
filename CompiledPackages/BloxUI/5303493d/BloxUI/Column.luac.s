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
       20 GETTABLEKS                       R6 R2 K11 ["Put"]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K12 ["Column"]
       24 DUPTABLE                         R9 K15 [{"gap", "children"}]
       25 LOADN                            R10 8
       26 SETTABLEKS                       R10 R9 K13 ["gap"]
       28 NEWTABLE                         R10 0 0
       30 SETTABLEKS                       R10 R9 K14 ["children"]
       32 NEWTABLE                         R10 0 1
       34 MOVE                             R11 R5
       35 NEWTABLE                         R12 4 1
       37 LOADK                            R14 K12 ["Column"]
       38 SETTABLEKS                       R14 R12 K16 ["Name"]
       40 MOVE                             R14 R3
       41 LOADK                            R15 K17 ["`box col auto-xy gap-{gap}`"]
       42 CALL                             R14 1 1
       43 SETTABLEKS                       R14 R12 K18 ["Tags"]
       45 MOVE                             R14 R3
       46 LOADK                            R15 K19 ["api.childOrder"]
       47 CALL                             R14 1 1
       48 SETTABLEKS                       R14 R12 K20 ["LayoutOrder"]
       50 MOVE                             R13 R6
       51 DUPTABLE                         R14 K21 [{"children"}]
       52 MOVE                             R15 R3
       53 LOADK                            R16 K14 ["children"]
       54 CALL                             R15 1 1
       55 SETTABLEKS                       R15 R14 K14 ["children"]
       57 CALL                             R13 1 -1
       58 SETLIST                          R12 R13 -1 [1]
       60 CALL                             R11 1 -1
       61 SETLIST                          R10 R11 -1 [1]
       63 CALL                             R7 3 1
       64 RETURN                           R7 1
