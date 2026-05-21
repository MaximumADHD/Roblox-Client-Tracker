PROTO_0:
        0 DUPTABLE                         R1 K3 [{"container", "stroke", "line"}]
        1 DUPTABLE                         R2 K5 [{"tag"}]
        2 LOADK                            R3 K6 ["col"]
        3 SETTABLEKS                       R3 R2 K4 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K8 [{"backgroundStyle"}]
        8 GETTABLEKS                       R3 R0 K9 ["Color"]
       10 GETTABLEKS                       R3 R3 K10 ["Stroke"]
       12 GETTABLEKS                       R3 R3 K11 ["Default"]
       14 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       16 SETTABLEKS                       R2 R1 K1 ["stroke"]
       18 DUPTABLE                         R2 K13 [{"tag", "position", "backgroundStyle"}]
       19 LOADK                            R3 K14 ["size-full-200"]
       20 SETTABLEKS                       R3 R2 K4 ["tag"]
       22 GETIMPORT                        R3 K17 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 0
       26 LOADN                            R6 0
       27 GETTABLEKS                       R7 R0 K18 ["Size"]
       29 GETTABLEKS                       R7 R7 K19 ["Size_50"]
       31 CALL                             R3 4 1
       32 SETTABLEKS                       R3 R2 K12 ["position"]
       34 GETTABLEKS                       R3 R0 K9 ["Color"]
       36 GETTABLEKS                       R3 R3 K20 ["Common"]
       38 GETTABLEKS                       R3 R3 K21 ["HeavyDivider"]
       40 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       42 SETTABLEKS                       R2 R1 K2 ["line"]
       44 NEWTABLE                         R2 2 0
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K22 ["Horizontal"]
       49 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       50 DUPTABLE                         R5 K5 [{"tag"}]
       51 LOADK                            R6 K24 ["size-full-0 auto-y"]
       52 SETTABLEKS                       R6 R5 K4 ["tag"]
       54 SETTABLEKS                       R5 R4 K0 ["container"]
       56 DUPTABLE                         R5 K25 [{"Size"}]
       57 GETIMPORT                        R6 K17 [UDim2.new]
       59 LOADN                            R7 1
       60 LOADN                            R8 0
       61 LOADN                            R9 0
       62 GETTABLEKS                       R10 R0 K10 ["Stroke"]
       64 GETTABLEKS                       R10 R10 K26 ["Standard"]
       66 CALL                             R6 4 1
       67 SETTABLEKS                       R6 R5 K18 ["Size"]
       69 SETTABLEKS                       R5 R4 K1 ["stroke"]
       71 SETTABLE                         R4 R2 R3
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K27 ["Vertical"]
       75 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       76 DUPTABLE                         R5 K5 [{"tag"}]
       77 LOADK                            R6 K28 ["size-0-full auto-x"]
       78 SETTABLEKS                       R6 R5 K4 ["tag"]
       80 SETTABLEKS                       R5 R4 K0 ["container"]
       82 DUPTABLE                         R5 K25 [{"Size"}]
       83 GETIMPORT                        R6 K17 [UDim2.new]
       85 LOADN                            R7 0
       86 GETTABLEKS                       R8 R0 K10 ["Stroke"]
       88 GETTABLEKS                       R8 R8 K26 ["Standard"]
       90 LOADN                            R9 1
       91 LOADN                            R10 0
       92 CALL                             R6 4 1
       93 SETTABLEKS                       R6 R5 K18 ["Size"]
       95 SETTABLEKS                       R5 R4 K1 ["stroke"]
       97 SETTABLE                         R4 R2 R3
       98 NEWTABLE                         R3 4 0
      100 GETUPVAL                         R4 1
      101 GETTABLEKS                       R4 R4 K29 ["Inset"]
      103 DUPTABLE                         R5 K30 [{"container"}]
      104 DUPTABLE                         R6 K5 [{"tag"}]
      105 LOADK                            R7 K31 ["padding-x-xlarge"]
      106 SETTABLEKS                       R7 R6 K4 ["tag"]
      108 SETTABLEKS                       R6 R5 K0 ["container"]
      110 SETTABLE                         R5 R3 R4
      111 GETUPVAL                         R4 1
      112 GETTABLEKS                       R4 R4 K32 ["InsetLeft"]
      114 DUPTABLE                         R5 K30 [{"container"}]
      115 DUPTABLE                         R6 K5 [{"tag"}]
      116 LOADK                            R7 K33 ["padding-left-xlarge"]
      117 SETTABLEKS                       R7 R6 K4 ["tag"]
      119 SETTABLEKS                       R6 R5 K0 ["container"]
      121 SETTABLE                         R5 R3 R4
      122 GETUPVAL                         R4 1
      123 GETTABLEKS                       R4 R4 K34 ["InsetRight"]
      125 DUPTABLE                         R5 K30 [{"container"}]
      126 DUPTABLE                         R6 K5 [{"tag"}]
      127 LOADK                            R7 K35 ["padding-right-xlarge"]
      128 SETTABLEKS                       R7 R6 K4 ["tag"]
      130 SETTABLEKS                       R6 R5 K0 ["container"]
      132 SETTABLE                         R5 R3 R4
      133 DUPTABLE                         R4 K39 [{"common", "padding", "orientation"}]
      134 SETTABLEKS                       R1 R4 K36 ["common"]
      136 SETTABLEKS                       R3 R4 K37 ["padding"]
      138 SETTABLEKS                       R2 R4 K38 ["orientation"]
      140 RETURN                           R4 1

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
