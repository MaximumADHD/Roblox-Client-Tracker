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
       18 GETTABLEKS                       R5 R2 K10 ["TextLabel"]
       20 MOVE                             R6 R4
       21 LOADK                            R7 K11 ["Text"]
       22 DUPTABLE                         R8 K14 [{"text", "style"}]
       23 LOADK                            R9 K15 [""]
       24 SETTABLEKS                       R9 R8 K12 ["text"]
       26 LOADK                            R9 K16 ["body"]
       27 SETTABLEKS                       R9 R8 K13 ["style"]
       29 NEWTABLE                         R9 0 1
       31 MOVE                             R10 R5
       32 DUPTABLE                         R11 K20 [{"Name", "Tags", "Text", "LayoutOrder"}]
       33 LOADK                            R12 K11 ["Text"]
       34 SETTABLEKS                       R12 R11 K17 ["Name"]
       36 MOVE                             R12 R3
       37 LOADK                            R13 K21 ["`text-{style}`"]
       38 CALL                             R12 1 1
       39 SETTABLEKS                       R12 R11 K18 ["Tags"]
       41 MOVE                             R12 R3
       42 LOADK                            R13 K12 ["text"]
       43 CALL                             R12 1 1
       44 SETTABLEKS                       R12 R11 K11 ["Text"]
       46 MOVE                             R12 R3
       47 LOADK                            R13 K22 ["api.childOrder"]
       48 CALL                             R12 1 1
       49 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       51 CALL                             R10 1 -1
       52 SETLIST                          R9 R10 -1 [1]
       54 CALL                             R6 3 1
       55 RETURN                           R6 1
