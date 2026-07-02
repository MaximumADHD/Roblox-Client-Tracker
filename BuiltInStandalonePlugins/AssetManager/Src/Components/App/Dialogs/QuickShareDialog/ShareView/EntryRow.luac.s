PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center gap-small size-full-700 padding-left-xsmall"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 DUPTABLE                         R4 K8 [{"Thumbnail", "Name"}]
       12 GETTABLEKS                       R6 R0 K9 ["Uri"]
       14 JUMPIFEQKNIL                     R6 ; [+14]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K10 ["Image"]
       22 DUPTABLE                         R7 K15 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-600 radius-small", ["testId"] = "entryrow-image"}]
       23 GETTABLEKS                       R8 R0 K9 ["Uri"]
       25 SETTABLEKS                       R8 R7 K10 ["Image"]
       27 CALL                             R5 2 1
       28 JUMP                             ; [+30]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["createElement"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K16 ["Avatar"]
       35 DUPTABLE                         R7 K21 [{["LayoutOrder"] = 1, ["userId"], ["userPresence"], ["size"], ["testId"] = "entryrow-avatar"}]
       36 GETTABLEKS                       R8 R0 K22 ["Id"]
       38 SETTABLEKS                       R8 R7 K17 ["userId"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K23 ["Enums"]
       43 GETTABLEKS                       R8 R8 K24 ["UserPresence"]
       45 GETTABLEKS                       R8 R8 K25 ["None"]
       47 SETTABLEKS                       R8 R7 K18 ["userPresence"]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K23 ["Enums"]
       52 GETTABLEKS                       R8 R8 K26 ["InputSize"]
       54 GETTABLEKS                       R8 R8 K27 ["XSmall"]
       56 SETTABLEKS                       R8 R7 K19 ["size"]
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K6 ["Thumbnail"]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K0 ["createElement"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K28 ["Text"]
       67 DUPTABLE                         R7 K31 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-medium text-wrap", ["Text"]}]
       68 GETTABLEKS                       R8 R0 K28 ["Text"]
       70 SETTABLEKS                       R8 R7 K28 ["Text"]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K7 ["Name"]
       75 CALL                             R1 3 -1
       76 RETURN                           R1 -1

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
