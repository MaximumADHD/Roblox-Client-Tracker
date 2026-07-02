PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Stroke"]
        2 GETTABLEKS                       R2 R2 K1 ["Standard"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K7 [{"container", "input"}]
        9 DUPTABLE                         R3 K11 [{["tag"] = "row align-x-left align-y-center auto-xy", ["padding"]}]
       10 GETIMPORT                        R4 K14 [UDim.new]
       12 LOADN                            R5 0
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K10 ["padding"]
       17 SETTABLEKS                       R3 R2 K5 ["container"]
       19 DUPTABLE                         R3 K16 [{"stroke"}]
       20 DUPTABLE                         R4 K18 [{"thickness"}]
       21 SETTABLEKS                       R1 R4 K17 ["thickness"]
       23 SETTABLEKS                       R4 R3 K15 ["stroke"]
       25 SETTABLEKS                       R3 R2 K6 ["input"]
       27 NEWTABLE                         R3 4 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K19 ["XSmall"]
       32 DUPTABLE                         R5 K20 [{"container"}]
       33 DUPTABLE                         R6 K22 [{["tag"] = "gap-medium"}]
       34 SETTABLEKS                       R6 R5 K5 ["container"]
       36 SETTABLE                         R5 R3 R4
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K23 ["Small"]
       40 DUPTABLE                         R5 K20 [{"container"}]
       41 DUPTABLE                         R6 K22 [{["tag"] = "gap-medium"}]
       42 SETTABLEKS                       R6 R5 K5 ["container"]
       44 SETTABLE                         R5 R3 R4
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K24 ["Medium"]
       48 DUPTABLE                         R5 K20 [{"container"}]
       49 DUPTABLE                         R6 K22 [{["tag"] = "gap-medium"}]
       50 SETTABLEKS                       R6 R5 K5 ["container"]
       52 SETTABLE                         R5 R3 R4
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K25 ["Large"]
       56 DUPTABLE                         R5 K20 [{"container"}]
       57 DUPTABLE                         R6 K22 [{["tag"] = "gap-medium"}]
       58 SETTABLEKS                       R6 R5 K5 ["container"]
       60 SETTABLE                         R5 R3 R4
       61 NEWTABLE                         R4 2 0
       63 GETIMPORT                        R5 K29 [Enum.HorizontalAlignment.Left]
       65 DUPTABLE                         R6 K20 [{"container"}]
       66 DUPTABLE                         R7 K31 [{["tag"] = "flex-x-between size-full-0"}]
       67 SETTABLEKS                       R7 R6 K5 ["container"]
       69 SETTABLE                         R6 R4 R5
       70 GETIMPORT                        R5 K33 [Enum.HorizontalAlignment.Right]
       72 DUPTABLE                         R6 K20 [{"container"}]
       73 DUPTABLE                         R7 K35 [{["tag"] = ""}]
       74 SETTABLEKS                       R7 R6 K5 ["container"]
       76 SETTABLE                         R6 R4 R5
       77 DUPTABLE                         R5 K39 [{"common", "sizes", "labelPosition"}]
       78 SETTABLEKS                       R2 R5 K36 ["common"]
       80 SETTABLEKS                       R3 R5 K37 ["sizes"]
       82 SETTABLEKS                       R4 R5 K38 ["labelPosition"]
       84 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["InternalInput"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["labelPosition"]
       15 GETTABLE                         R7 R8 R2
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Utility"]
       25 GETTABLEKS                       R4 R4 K11 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Providers"]
       41 GETTABLEKS                       R6 R6 K13 ["Style"]
       43 GETTABLEKS                       R6 R6 K15 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R7 K17 [PROTO_1]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R3
       52 RETURN                           R7 1
