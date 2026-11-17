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
       23 LOADK                            R8 K12 ["Row"]
       24 DUPTABLE                         R9 K16 [{["gap"] = 8, ["children"]}]
       25 NEWTABLE                         R10 0 0
       27 SETTABLEKS                       R10 R9 K15 ["children"]
       29 NEWTABLE                         R10 0 1
       31 MOVE                             R11 R5
       32 NEWTABLE                         R12 4 1
       34 LOADK                            R14 K12 ["Row"]
       35 SETTABLEKS                       R14 R12 K17 ["Name"]
       37 MOVE                             R14 R3
       38 LOADK                            R15 K18 ["`box row auto-xy gap-{gap}`"]
       39 CALL                             R14 1 1
       40 SETTABLEKS                       R14 R12 K19 ["Tags"]
       42 MOVE                             R14 R3
       43 LOADK                            R15 K20 ["api.childOrder"]
       44 CALL                             R14 1 1
       45 SETTABLEKS                       R14 R12 K21 ["LayoutOrder"]
       47 MOVE                             R13 R6
       48 DUPTABLE                         R14 K22 [{"children"}]
       49 MOVE                             R15 R3
       50 LOADK                            R16 K15 ["children"]
       51 CALL                             R15 1 1
       52 SETTABLEKS                       R15 R14 K15 ["children"]
       54 CALL                             R13 1 -1
       55 SETLIST                          R12 R13 -1 [1]
       57 CALL                             R11 1 -1
       58 SETLIST                          R10 R11 -1 [1]
       60 CALL                             R7 3 1
       61 RETURN                           R7 1
