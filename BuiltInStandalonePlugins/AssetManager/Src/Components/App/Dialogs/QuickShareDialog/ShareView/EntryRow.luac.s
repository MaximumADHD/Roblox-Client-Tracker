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
       17 JUMPIFEQKNIL                     R6 ; [+20]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K10 ["Image"]
       25 DUPTABLE                         R7 K11 [{"LayoutOrder", "Image", "tag"}]
       26 LOADN                            R8 1
       27 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       29 GETTABLEKS                       R8 R0 K9 ["Uri"]
       31 SETTABLEKS                       R8 R7 K10 ["Image"]
       33 LOADK                            R8 K12 ["size-600 radius-small data-testid=entryrow-image"]
       34 SETTABLEKS                       R8 R7 K3 ["tag"]
       36 CALL                             R5 2 1
       37 JUMP                             ; [+36]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["createElement"]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K13 ["Avatar"]
       44 DUPTABLE                         R7 K18 [{"LayoutOrder", "userId", "userPresence", "size", "testId"}]
       45 LOADN                            R8 1
       46 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       48 GETTABLEKS                       R8 R0 K19 ["Id"]
       50 SETTABLEKS                       R8 R7 K14 ["userId"]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K20 ["Enums"]
       55 GETTABLEKS                       R8 R8 K21 ["UserPresence"]
       57 GETTABLEKS                       R8 R8 K22 ["None"]
       59 SETTABLEKS                       R8 R7 K15 ["userPresence"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K20 ["Enums"]
       64 GETTABLEKS                       R8 R8 K23 ["InputSize"]
       66 GETTABLEKS                       R8 R8 K24 ["XSmall"]
       68 SETTABLEKS                       R8 R7 K16 ["size"]
       70 LOADK                            R8 K25 ["entryrow-avatar"]
       71 SETTABLEKS                       R8 R7 K17 ["testId"]
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K6 ["Thumbnail"]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R5 R5 K0 ["createElement"]
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R6 R6 K26 ["Text"]
       82 DUPTABLE                         R7 K27 [{"LayoutOrder", "tag", "Text"}]
       83 LOADN                            R8 2
       84 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       86 LOADK                            R8 K28 ["text-body-medium text-wrap auto-xy"]
       87 SETTABLEKS                       R8 R7 K3 ["tag"]
       89 GETTABLEKS                       R8 R0 K26 ["Text"]
       91 SETTABLEKS                       R8 R7 K26 ["Text"]
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K7 ["Name"]
       96 CALL                             R1 3 -1
       97 RETURN                           R1 -1

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
