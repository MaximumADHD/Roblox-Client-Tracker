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
       16 GETTABLEKS                       R4 R1 K9 ["TextLabel"]
       18 MOVE                             R5 R3
       19 LOADK                            R6 K10 ["Text"]
       20 DUPTABLE                         R7 K13 [{"text", "style"}]
       21 LOADK                            R8 K14 [""]
       22 SETTABLEKS                       R8 R7 K11 ["text"]
       24 LOADK                            R8 K15 ["body"]
       25 SETTABLEKS                       R8 R7 K12 ["style"]
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R4
       30 DUPTABLE                         R10 K19 [{"Name", "Tags", "Text", "LayoutOrder"}]
       31 LOADK                            R11 K10 ["Text"]
       32 SETTABLEKS                       R11 R10 K16 ["Name"]
       34 MOVE                             R11 R2
       35 LOADK                            R12 K20 ["`text-{style}`"]
       36 CALL                             R11 1 1
       37 SETTABLEKS                       R11 R10 K17 ["Tags"]
       39 MOVE                             R11 R2
       40 LOADK                            R12 K11 ["text"]
       41 CALL                             R11 1 1
       42 SETTABLEKS                       R11 R10 K10 ["Text"]
       44 MOVE                             R11 R2
       45 LOADK                            R12 K21 ["api.childOrder"]
       46 CALL                             R11 1 1
       47 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       49 CALL                             R9 1 -1
       50 SETLIST                          R8 R9 -1 [1]
       52 CALL                             R5 3 1
       53 RETURN                           R5 1
