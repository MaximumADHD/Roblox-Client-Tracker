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
       16 GETIMPORT                        R3 K17 [UDim2.new]
       18 LOADN                            R4 0
       19 LOADN                            R5 0
       20 LOADN                            R6 0
       21 GETTABLEKS                       R7 R0 K18 ["Size"]
       23 GETTABLEKS                       R7 R7 K19 ["Size_50"]
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R2 K13 ["position"]
       28 GETTABLEKS                       R3 R0 K9 ["Color"]
       30 GETTABLEKS                       R3 R3 K20 ["Common"]
       32 GETTABLEKS                       R3 R3 K21 ["HeavyDivider"]
       34 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       36 SETTABLEKS                       R2 R1 K2 ["line"]
       38 NEWTABLE                         R2 2 0
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K22 ["Horizontal"]
       43 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       44 DUPTABLE                         R5 K25 [{["tag"] = "size-full-0 auto-y"}]
       45 SETTABLEKS                       R5 R4 K0 ["container"]
       47 DUPTABLE                         R5 K26 [{"Size"}]
       48 GETIMPORT                        R6 K17 [UDim2.new]
       50 LOADN                            R7 1
       51 LOADN                            R8 0
       52 LOADN                            R9 0
       53 GETTABLEKS                       R10 R0 K10 ["Stroke"]
       55 GETTABLEKS                       R10 R10 K27 ["Standard"]
       57 CALL                             R6 4 1
       58 SETTABLEKS                       R6 R5 K18 ["Size"]
       60 SETTABLEKS                       R5 R4 K1 ["stroke"]
       62 SETTABLE                         R4 R2 R3
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K28 ["Vertical"]
       66 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       67 DUPTABLE                         R5 K30 [{["tag"] = "size-0-full auto-x"}]
       68 SETTABLEKS                       R5 R4 K0 ["container"]
       70 DUPTABLE                         R5 K26 [{"Size"}]
       71 GETIMPORT                        R6 K17 [UDim2.new]
       73 LOADN                            R7 0
       74 GETTABLEKS                       R8 R0 K10 ["Stroke"]
       76 GETTABLEKS                       R8 R8 K27 ["Standard"]
       78 LOADN                            R9 1
       79 LOADN                            R10 0
       80 CALL                             R6 4 1
       81 SETTABLEKS                       R6 R5 K18 ["Size"]
       83 SETTABLEKS                       R5 R4 K1 ["stroke"]
       85 SETTABLE                         R4 R2 R3
       86 NEWTABLE                         R3 4 0
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R4 R4 K31 ["Inset"]
       91 DUPTABLE                         R5 K32 [{"container"}]
       92 DUPTABLE                         R6 K34 [{["tag"] = "padding-x-xlarge"}]
       93 SETTABLEKS                       R6 R5 K0 ["container"]
       95 SETTABLE                         R5 R3 R4
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R4 R4 K35 ["InsetLeft"]
       99 DUPTABLE                         R5 K32 [{"container"}]
      100 DUPTABLE                         R6 K37 [{["tag"] = "padding-left-xlarge"}]
      101 SETTABLEKS                       R6 R5 K0 ["container"]
      103 SETTABLE                         R5 R3 R4
      104 GETUPVAL                         R4 1
      105 GETTABLEKS                       R4 R4 K38 ["InsetRight"]
      107 DUPTABLE                         R5 K32 [{"container"}]
      108 DUPTABLE                         R6 K40 [{["tag"] = "padding-right-xlarge"}]
      109 SETTABLEKS                       R6 R5 K0 ["container"]
      111 SETTABLE                         R5 R3 R4
      112 DUPTABLE                         R4 K44 [{"common", "padding", "orientation"}]
      113 SETTABLEKS                       R1 R4 K41 ["common"]
      115 SETTABLEKS                       R3 R4 K42 ["padding"]
      117 SETTABLEKS                       R2 R4 K43 ["orientation"]
      119 RETURN                           R4 1

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
