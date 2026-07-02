PROTO_0:
        0 DUPTABLE                         R1 K3 [{"container", "stroke", "line"}]
        1 DUPTABLE                         R2 K6 [{["tag"] = "col"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K8 [{"backgroundStyle"}]
        5 GETTABLEKS                       R3 R0 K9 ["Color"]
        7 GETTABLEKS                       R3 R3 K10 ["Stroke"]
        9 GETTABLEKS                       R3 R3 K11 ["Default"]
       11 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       13 SETTABLEKS                       R2 R1 K1 ["stroke"]
       15 DUPTABLE                         R2 K14 [{["tag"] = "size-full-200", ["position"], ["backgroundStyle"]}]
       16 GETIMPORT                        R3 K17 [UDim2.fromOffset]
       18 LOADN                            R4 0
       19 GETTABLEKS                       R5 R0 K18 ["Size"]
       21 GETTABLEKS                       R5 R5 K19 ["Size_50"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K13 ["position"]
       26 GETTABLEKS                       R3 R0 K9 ["Color"]
       28 GETTABLEKS                       R3 R3 K20 ["Common"]
       30 GETTABLEKS                       R3 R3 K21 ["HeavyDivider"]
       32 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       34 SETTABLEKS                       R2 R1 K2 ["line"]
       36 NEWTABLE                         R2 2 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K22 ["Horizontal"]
       41 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       42 DUPTABLE                         R5 K25 [{["tag"] = "size-full-0 auto-y"}]
       43 SETTABLEKS                       R5 R4 K0 ["container"]
       45 DUPTABLE                         R5 K26 [{"Size"}]
       46 GETIMPORT                        R6 K28 [UDim2.new]
       48 LOADN                            R7 1
       49 LOADN                            R8 0
       50 LOADN                            R9 0
       51 GETTABLEKS                       R10 R0 K10 ["Stroke"]
       53 GETTABLEKS                       R10 R10 K29 ["Standard"]
       55 CALL                             R6 4 1
       56 SETTABLEKS                       R6 R5 K18 ["Size"]
       58 SETTABLEKS                       R5 R4 K1 ["stroke"]
       60 SETTABLE                         R4 R2 R3
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K30 ["Vertical"]
       64 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       65 DUPTABLE                         R5 K32 [{["tag"] = "size-0-full auto-x"}]
       66 SETTABLEKS                       R5 R4 K0 ["container"]
       68 DUPTABLE                         R5 K26 [{"Size"}]
       69 GETIMPORT                        R6 K28 [UDim2.new]
       71 LOADN                            R7 0
       72 GETTABLEKS                       R8 R0 K10 ["Stroke"]
       74 GETTABLEKS                       R8 R8 K29 ["Standard"]
       76 LOADN                            R9 1
       77 LOADN                            R10 0
       78 CALL                             R6 4 1
       79 SETTABLEKS                       R6 R5 K18 ["Size"]
       81 SETTABLEKS                       R5 R4 K1 ["stroke"]
       83 SETTABLE                         R4 R2 R3
       84 NEWTABLE                         R3 4 0
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R4 R4 K33 ["Inset"]
       89 DUPTABLE                         R5 K34 [{"container"}]
       90 DUPTABLE                         R6 K36 [{["tag"] = "padding-x-xlarge"}]
       91 SETTABLEKS                       R6 R5 K0 ["container"]
       93 SETTABLE                         R5 R3 R4
       94 GETUPVAL                         R4 1
       95 GETTABLEKS                       R4 R4 K37 ["InsetLeft"]
       97 DUPTABLE                         R5 K34 [{"container"}]
       98 DUPTABLE                         R6 K39 [{["tag"] = "padding-left-xlarge"}]
       99 SETTABLEKS                       R6 R5 K0 ["container"]
      101 SETTABLE                         R5 R3 R4
      102 GETUPVAL                         R4 1
      103 GETTABLEKS                       R4 R4 K40 ["InsetRight"]
      105 DUPTABLE                         R5 K34 [{"container"}]
      106 DUPTABLE                         R6 K42 [{["tag"] = "padding-right-xlarge"}]
      107 SETTABLEKS                       R6 R5 K0 ["container"]
      109 SETTABLE                         R5 R3 R4
      110 DUPTABLE                         R4 K46 [{"common", "padding", "orientation"}]
      111 SETTABLEKS                       R1 R4 K43 ["common"]
      113 SETTABLEKS                       R3 R4 K44 ["padding"]
      115 SETTABLEKS                       R2 R4 K45 ["orientation"]
      117 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Divider"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K3 ["Horizontal"]
       13 JUMPIFNOTEQ                      R2 R7 ; [+5]
       15 GETTABLEKS                       R7 R3 K4 ["padding"]
       17 GETTABLE                         R6 R7 R1
       18 JUMP                             ; [+2]
       19 NEWTABLE                         R6 0 0
       21 GETTABLEKS                       R8 R3 K5 ["orientation"]
       23 GETTABLE                         R7 R8 R2
       24 CALL                             R4 3 -1
       25 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["DividerVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["Orientation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Providers"]
       39 GETTABLEKS                       R6 R6 K14 ["Style"]
       41 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Providers"]
       48 GETTABLEKS                       R7 R7 K14 ["Style"]
       50 GETTABLEKS                       R7 R7 K16 ["VariantsContext"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R8 K18 [PROTO_1]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 RETURN                           R8 1
