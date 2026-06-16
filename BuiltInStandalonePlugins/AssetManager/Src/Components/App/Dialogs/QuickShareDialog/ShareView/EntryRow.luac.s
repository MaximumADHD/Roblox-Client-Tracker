PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"LayoutOrder", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K5 ["row size-full-700 align-x-left align-y-center padding-left-xsmall gap-small"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 DUPTABLE                         R4 K8 [{"Thumbnail", "Name"}]
       15 GETTABLEKS                       R6 R0 K9 ["Uri"]
       17 JUMPIFEQKNIL                     R6 ; [+23]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K10 ["Image"]
       25 DUPTABLE                         R7 K12 [{"LayoutOrder", "Image", "tag", "testId"}]
       26 LOADN                            R8 1
       27 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       29 GETTABLEKS                       R8 R0 K9 ["Uri"]
       31 SETTABLEKS                       R8 R7 K10 ["Image"]
       33 LOADK                            R8 K13 ["size-600 radius-small"]
       34 SETTABLEKS                       R8 R7 K3 ["tag"]
       36 LOADK                            R8 K14 ["entryrow-image"]
       37 SETTABLEKS                       R8 R7 K11 ["testId"]
       39 CALL                             R5 2 1
       40 JUMP                             ; [+36]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K0 ["createElement"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K15 ["Avatar"]
       47 DUPTABLE                         R7 K19 [{"LayoutOrder", "userId", "userPresence", "size", "testId"}]
       48 LOADN                            R8 1
       49 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       51 GETTABLEKS                       R8 R0 K20 ["Id"]
       53 SETTABLEKS                       R8 R7 K16 ["userId"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K21 ["Enums"]
       58 GETTABLEKS                       R8 R8 K22 ["UserPresence"]
       60 GETTABLEKS                       R8 R8 K23 ["None"]
       62 SETTABLEKS                       R8 R7 K17 ["userPresence"]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K21 ["Enums"]
       67 GETTABLEKS                       R8 R8 K24 ["InputSize"]
       69 GETTABLEKS                       R8 R8 K25 ["XSmall"]
       71 SETTABLEKS                       R8 R7 K18 ["size"]
       73 LOADK                            R8 K26 ["entryrow-avatar"]
       74 SETTABLEKS                       R8 R7 K11 ["testId"]
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K6 ["Thumbnail"]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K0 ["createElement"]
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K27 ["Text"]
       85 DUPTABLE                         R7 K28 [{"LayoutOrder", "tag", "Text"}]
       86 LOADN                            R8 2
       87 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       89 LOADK                            R8 K29 ["text-body-medium text-wrap auto-xy"]
       90 SETTABLEKS                       R8 R7 K3 ["tag"]
       92 GETTABLEKS                       R8 R0 K27 ["Text"]
       94 SETTABLEKS                       R8 R7 K27 ["Text"]
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K7 ["Name"]
       99 CALL                             R1 3 -1
      100 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
