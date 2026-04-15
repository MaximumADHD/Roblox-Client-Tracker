PROTO_0:
        0 DUPTABLE                         R1 K3 [{"container", "stroke", "line"}]
        1 DUPTABLE                         R2 K5 [{"tag"}]
        2 LOADK                            R3 K6 ["col"]
        3 SETTABLEKS                       R3 R2 K4 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K8 [{"backgroundStyle"}]
        8 GETTABLEKS                       R5 R0 K9 ["Color"]
       10 GETTABLEKS                       R4 R5 K10 ["Stroke"]
       12 GETTABLEKS                       R3 R4 K11 ["Default"]
       14 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       16 SETTABLEKS                       R2 R1 K1 ["stroke"]
       18 DUPTABLE                         R2 K13 [{"tag", "position", "backgroundStyle"}]
       19 LOADK                            R3 K14 ["size-full-200"]
       20 SETTABLEKS                       R3 R2 K4 ["tag"]
       22 GETIMPORT                        R3 K17 [UDim2.fromOffset]
       24 LOADN                            R4 0
       25 GETTABLEKS                       R6 R0 K18 ["Size"]
       27 GETTABLEKS                       R5 R6 K19 ["Size_50"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K12 ["position"]
       32 GETTABLEKS                       R5 R0 K9 ["Color"]
       34 GETTABLEKS                       R4 R5 K20 ["Common"]
       36 GETTABLEKS                       R3 R4 K21 ["HeavyDivider"]
       38 SETTABLEKS                       R3 R2 K7 ["backgroundStyle"]
       40 SETTABLEKS                       R2 R1 K2 ["line"]
       42 NEWTABLE                         R2 2 0
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R3 R4 K22 ["Horizontal"]
       47 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       48 DUPTABLE                         R5 K5 [{"tag"}]
       49 LOADK                            R6 K24 ["size-full-0 auto-y"]
       50 SETTABLEKS                       R6 R5 K4 ["tag"]
       52 SETTABLEKS                       R5 R4 K0 ["container"]
       54 DUPTABLE                         R5 K25 [{"Size"}]
       55 GETIMPORT                        R6 K27 [UDim2.new]
       57 LOADN                            R7 1
       58 LOADN                            R8 0
       59 LOADN                            R9 0
       60 GETTABLEKS                       R11 R0 K10 ["Stroke"]
       62 GETTABLEKS                       R10 R11 K28 ["Standard"]
       64 CALL                             R6 4 1
       65 SETTABLEKS                       R6 R5 K18 ["Size"]
       67 SETTABLEKS                       R5 R4 K1 ["stroke"]
       69 SETTABLE                         R4 R2 R3
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R3 R4 K29 ["Vertical"]
       73 DUPTABLE                         R4 K23 [{"container", "stroke"}]
       74 DUPTABLE                         R5 K5 [{"tag"}]
       75 LOADK                            R6 K30 ["size-0-full auto-x"]
       76 SETTABLEKS                       R6 R5 K4 ["tag"]
       78 SETTABLEKS                       R5 R4 K0 ["container"]
       80 DUPTABLE                         R5 K25 [{"Size"}]
       81 GETIMPORT                        R6 K27 [UDim2.new]
       83 LOADN                            R7 0
       84 GETTABLEKS                       R9 R0 K10 ["Stroke"]
       86 GETTABLEKS                       R8 R9 K28 ["Standard"]
       88 LOADN                            R9 1
       89 LOADN                            R10 0
       90 CALL                             R6 4 1
       91 SETTABLEKS                       R6 R5 K18 ["Size"]
       93 SETTABLEKS                       R5 R4 K1 ["stroke"]
       95 SETTABLE                         R4 R2 R3
       96 NEWTABLE                         R3 4 0
       98 GETUPVAL                         R5 1
       99 GETTABLEKS                       R4 R5 K31 ["Inset"]
      101 DUPTABLE                         R5 K32 [{"container"}]
      102 DUPTABLE                         R6 K5 [{"tag"}]
      103 LOADK                            R7 K33 ["padding-x-xlarge"]
      104 SETTABLEKS                       R7 R6 K4 ["tag"]
      106 SETTABLEKS                       R6 R5 K0 ["container"]
      108 SETTABLE                         R5 R3 R4
      109 GETUPVAL                         R5 1
      110 GETTABLEKS                       R4 R5 K34 ["InsetLeft"]
      112 DUPTABLE                         R5 K32 [{"container"}]
      113 DUPTABLE                         R6 K5 [{"tag"}]
      114 LOADK                            R7 K35 ["padding-left-xlarge"]
      115 SETTABLEKS                       R7 R6 K4 ["tag"]
      117 SETTABLEKS                       R6 R5 K0 ["container"]
      119 SETTABLE                         R5 R3 R4
      120 GETUPVAL                         R5 1
      121 GETTABLEKS                       R4 R5 K36 ["InsetRight"]
      123 DUPTABLE                         R5 K32 [{"container"}]
      124 DUPTABLE                         R6 K5 [{"tag"}]
      125 LOADK                            R7 K37 ["padding-right-xlarge"]
      126 SETTABLEKS                       R7 R6 K4 ["tag"]
      128 SETTABLEKS                       R6 R5 K0 ["container"]
      130 SETTABLE                         R5 R3 R4
      131 DUPTABLE                         R4 K41 [{"common", "padding", "orientation"}]
      132 SETTABLEKS                       R1 R4 K38 ["common"]
      134 SETTABLEKS                       R3 R4 K39 ["padding"]
      136 SETTABLEKS                       R2 R4 K40 ["orientation"]
      138 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Divider"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K3 ["Horizontal"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["DividerVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["Orientation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R8 K14 ["Style"]
       41 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Providers"]
       48 GETTABLEKS                       R8 R9 K14 ["Style"]
       50 GETTABLEKS                       R7 R8 K16 ["VariantsContext"]
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
