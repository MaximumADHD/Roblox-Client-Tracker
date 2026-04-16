PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["View"]
        6 DUPTABLE                         R3 K3 [{"tag"}]
        7 LOADK                            R4 K4 ["size-full-0 auto-y row align-y-center align-x-left gap-large margin-medium"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 DUPTABLE                         R4 K7 [{"loadingIcon", "MainText"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K0 ["createElement"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K1 ["View"]
       17 DUPTABLE                         R7 K9 [{"tag", "LayoutOrder"}]
       18 LOADK                            R8 K10 ["size-0-0 auto-xy"]
       19 SETTABLEKS                       R8 R7 K2 ["tag"]
       21 LOADN                            R8 1
       22 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       24 NEWTABLE                         R8 0 1
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K0 ["createElement"]
       29 GETUPVAL                         R10 2
       30 DUPTABLE                         R11 K13 [{"size", "testId"}]
       31 GETUPVAL                         R13 3
       32 GETTABLEKS                       R12 R13 K14 ["Large"]
       34 SETTABLEKS                       R12 R11 K11 ["size"]
       36 LOADK                            R12 K15 ["loadingSymbol"]
       37 SETTABLEKS                       R12 R11 K12 ["testId"]
       39 CALL                             R9 2 -1
       40 SETLIST                          R8 R9 -1 [1]
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K5 ["loadingIcon"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K0 ["createElement"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K16 ["Text"]
       51 DUPTABLE                         R7 K17 [{"tag", "Text", "LayoutOrder", "testId"}]
       52 LOADK                            R8 K18 ["text-align-x-left text-wrap text-body-medium size-0-0 auto-xy shrink"]
       53 SETTABLEKS                       R8 R7 K2 ["tag"]
       55 GETTABLEKS                       R8 R0 K19 ["text"]
       57 SETTABLEKS                       R8 R7 K16 ["Text"]
       59 LOADN                            R8 2
       60 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       62 LOADK                            R8 K20 ["loadingText"]
       63 SETTABLEKS                       R8 R7 K12 ["testId"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K6 ["MainText"]
       68 CALL                             R1 3 -1
       69 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Loading"]
       23 GETTABLEKS                       R5 R2 K10 ["Enums"]
       25 GETTABLEKS                       R4 R5 K11 ["IconSize"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
