PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{["tag"] = "col gap-medium size-full padding-medium"}]
        7 DUPTABLE                         R4 K7 [{"Body", "ButtonPanel"}]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K0 ["createElement"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K1 ["View"]
       14 DUPTABLE                         R7 K9 [{["tag"] = "row shrink gap-medium size-0-full auto-x"}]
       15 DUPTABLE                         R8 K12 [{"loadingIcon", "MainText"}]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K0 ["createElement"]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K1 ["View"]
       22 DUPTABLE                         R11 K16 [{["tag"] = "align-y-center auto-xy padding-small", ["LayoutOrder"] = 1}]
       23 DUPTABLE                         R12 K18 [{"container"}]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K0 ["createElement"]
       27 GETUPVAL                         R14 1
       28 GETTABLEKS                       R14 R14 K1 ["View"]
       30 DUPTABLE                         R15 K20 [{["tag"] = "size-0-0 auto-xy", ["LayoutOrder"] = 1}]
       31 NEWTABLE                         R16 0 1
       33 GETUPVAL                         R17 0
       34 GETTABLEKS                       R17 R17 K0 ["createElement"]
       36 GETUPVAL                         R18 2
       37 DUPTABLE                         R19 K24 [{["size"], ["testId"] = "loadingSymbol"}]
       38 GETUPVAL                         R20 3
       39 GETTABLEKS                       R20 R20 K25 ["Medium"]
       41 SETTABLEKS                       R20 R19 K21 ["size"]
       43 CALL                             R17 2 -1
       44 SETLIST                          R16 R17 -1 [1]
       46 CALL                             R13 3 1
       47 SETTABLEKS                       R13 R12 K17 ["container"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K10 ["loadingIcon"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K0 ["createElement"]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K26 ["Text"]
       58 DUPTABLE                         R11 K30 [{["tag"] = "shrink size-full-0 auto-y padding-small text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2, ["testId"] = "loadingText"}]
       59 GETTABLEKS                       R12 R0 K31 ["text"]
       61 SETTABLEKS                       R12 R11 K26 ["Text"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K11 ["MainText"]
       66 CALL                             R5 3 1
       67 SETTABLEKS                       R5 R4 K5 ["Body"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K0 ["createElement"]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K1 ["View"]
       75 DUPTABLE                         R7 K33 [{["tag"] = "row align-x-right gap-medium size-full-1200 padding-small", ["LayoutOrder"] = 2}]
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K6 ["ButtonPanel"]
       79 CALL                             R1 3 -1
       80 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Loading"]
       23 GETTABLEKS                       R4 R2 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["IconSize"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
