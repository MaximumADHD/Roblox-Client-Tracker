PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"LayoutOrder", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 LOADK                            R4 K4 ["row size-full-700 align-x-left align-y-center padding-left-xsmall gap-small"]
       10 SETTABLEKS                       R4 R3 K2 ["tag"]
       12 DUPTABLE                         R4 K7 [{"Thumbnail", "Name"}]
       13 GETTABLEKS                       R6 R0 K8 ["Uri"]
       15 JUMPIFEQKNIL                     R6 ; [+18]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K0 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K10 [{"LayoutOrder", "Image", "tag"}]
       22 LOADN                            R8 1
       23 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       25 GETTABLEKS                       R8 R0 K8 ["Uri"]
       27 SETTABLEKS                       R8 R7 K9 ["Image"]
       29 LOADK                            R8 K11 ["size-600 radius-small data-testid=entryrow-image"]
       30 SETTABLEKS                       R8 R7 K2 ["tag"]
       32 CALL                             R5 2 1
       33 JUMP                             ; [+34]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K0 ["createElement"]
       37 GETUPVAL                         R6 3
       38 DUPTABLE                         R7 K16 [{"LayoutOrder", "userId", "userPresence", "size", "testId"}]
       39 LOADN                            R8 1
       40 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       42 GETTABLEKS                       R8 R0 K17 ["Id"]
       44 SETTABLEKS                       R8 R7 K12 ["userId"]
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R10 R11 K18 ["Enums"]
       49 GETTABLEKS                       R9 R10 K19 ["UserPresence"]
       51 GETTABLEKS                       R8 R9 K20 ["None"]
       53 SETTABLEKS                       R8 R7 K13 ["userPresence"]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R10 R11 K18 ["Enums"]
       58 GETTABLEKS                       R9 R10 K21 ["InputSize"]
       60 GETTABLEKS                       R8 R9 K22 ["XSmall"]
       62 SETTABLEKS                       R8 R7 K14 ["size"]
       64 LOADK                            R8 K23 ["entryrow-avatar"]
       65 SETTABLEKS                       R8 R7 K15 ["testId"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K5 ["Thumbnail"]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R5 R6 K0 ["createElement"]
       73 GETUPVAL                         R6 5
       74 DUPTABLE                         R7 K25 [{"LayoutOrder", "tag", "Text"}]
       75 LOADN                            R8 2
       76 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       78 LOADK                            R8 K26 ["text-body-medium text-wrap auto-xy"]
       79 SETTABLEKS                       R8 R7 K2 ["tag"]
       81 GETTABLEKS                       R8 R0 K24 ["Text"]
       83 SETTABLEKS                       R8 R7 K24 ["Text"]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K6 ["Name"]
       88 CALL                             R1 3 -1
       89 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Avatar"]
       25 GETTABLEKS                       R5 R2 K11 ["Image"]
       27 GETTABLEKS                       R6 R2 K12 ["Text"]
       29 DUPCLOSURE                       R7 K13 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R6
       36 RETURN                           R7 1
