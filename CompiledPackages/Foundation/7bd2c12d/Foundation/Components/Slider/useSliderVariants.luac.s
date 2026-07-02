PROTO_0:
        0 DUPTABLE                         R1 K2 [{"bar", "fill"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "anchor-center-center position-center-center size-full-100 radius-small"}]
        2 SETTABLEKS                       R2 R1 K0 ["bar"]
        4 DUPTABLE                         R2 K7 [{["tag"] = "radius-small"}]
        5 SETTABLEKS                       R2 R1 K1 ["fill"]
        7 NEWTABLE                         R2 4 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["Emphasis"]
       12 DUPTABLE                         R4 K10 [{"bar", "fill", "knob"}]
       13 DUPTABLE                         R5 K12 [{["tag"] = "bg-shift-400"}]
       14 SETTABLEKS                       R5 R4 K0 ["bar"]
       16 DUPTABLE                         R5 K14 [{["tag"] = "bg-emphasis"}]
       17 SETTABLEKS                       R5 R4 K1 ["fill"]
       19 DUPTABLE                         R5 K19 [{["style"], ["dragStyle"], ["hasShadow"] = True}]
       20 GETTABLEKS                       R6 R0 K20 ["Color"]
       22 GETTABLEKS                       R6 R6 K21 ["Extended"]
       24 GETTABLEKS                       R6 R6 K22 ["White"]
       26 GETTABLEKS                       R6 R6 K23 ["White_100"]
       28 SETTABLEKS                       R6 R5 K15 ["style"]
       30 GETTABLEKS                       R6 R0 K20 ["Color"]
       32 GETTABLEKS                       R6 R6 K24 ["ActionEmphasis"]
       34 GETTABLEKS                       R6 R6 K25 ["Background"]
       36 SETTABLEKS                       R6 R5 K16 ["dragStyle"]
       38 SETTABLEKS                       R5 R4 K9 ["knob"]
       40 SETTABLE                         R4 R2 R3
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K26 ["Standard"]
       44 DUPTABLE                         R4 K10 [{"bar", "fill", "knob"}]
       45 DUPTABLE                         R5 K12 [{["tag"] = "bg-shift-400"}]
       46 SETTABLEKS                       R5 R4 K0 ["bar"]
       48 DUPTABLE                         R5 K28 [{["tag"] = "bg-system-contrast"}]
       49 SETTABLEKS                       R5 R4 K1 ["fill"]
       51 DUPTABLE                         R5 K30 [{["style"], ["dragStyle"], ["hasShadow"] = False}]
       52 GETTABLEKS                       R6 R0 K20 ["Color"]
       54 GETTABLEKS                       R6 R6 K31 ["System"]
       56 GETTABLEKS                       R6 R6 K32 ["Contrast"]
       58 SETTABLEKS                       R6 R5 K15 ["style"]
       60 GETTABLEKS                       R6 R0 K20 ["Color"]
       62 GETTABLEKS                       R6 R6 K31 ["System"]
       64 GETTABLEKS                       R6 R6 K32 ["Contrast"]
       66 SETTABLEKS                       R6 R5 K16 ["dragStyle"]
       68 SETTABLEKS                       R5 R4 K9 ["knob"]
       70 SETTABLE                         R4 R2 R3
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K33 ["Utility"]
       74 DUPTABLE                         R4 K34 [{"knob"}]
       75 DUPTABLE                         R5 K36 [{["style"], ["dragStyle"], ["stroke"], ["hasShadow"] = True}]
       76 GETTABLEKS                       R6 R0 K20 ["Color"]
       78 GETTABLEKS                       R6 R6 K37 ["None"]
       80 SETTABLEKS                       R6 R5 K15 ["style"]
       82 GETTABLEKS                       R6 R0 K20 ["Color"]
       84 GETTABLEKS                       R6 R6 K37 ["None"]
       86 SETTABLEKS                       R6 R5 K16 ["dragStyle"]
       88 DUPTABLE                         R6 K40 [{"Color", "Transparency", "Thickness"}]
       89 GETTABLEKS                       R7 R0 K20 ["Color"]
       91 GETTABLEKS                       R7 R7 K31 ["System"]
       93 GETTABLEKS                       R7 R7 K32 ["Contrast"]
       95 GETTABLEKS                       R7 R7 K41 ["Color3"]
       97 SETTABLEKS                       R7 R6 K20 ["Color"]
       99 GETTABLEKS                       R7 R0 K20 ["Color"]
      101 GETTABLEKS                       R7 R7 K31 ["System"]
      103 GETTABLEKS                       R7 R7 K32 ["Contrast"]
      105 GETTABLEKS                       R7 R7 K38 ["Transparency"]
      107 SETTABLEKS                       R7 R6 K38 ["Transparency"]
      109 GETTABLEKS                       R7 R0 K42 ["Stroke"]
      111 GETTABLEKS                       R7 R7 K43 ["Thicker"]
      113 SETTABLEKS                       R7 R6 K39 ["Thickness"]
      115 SETTABLEKS                       R6 R5 K35 ["stroke"]
      117 SETTABLEKS                       R5 R4 K9 ["knob"]
      119 SETTABLE                         R4 R2 R3
      120 NEWTABLE                         R3 4 0
      122 GETUPVAL                         R4 1
      123 GETTABLEKS                       R4 R4 K44 ["XSmall"]
      125 DUPTABLE                         R5 K46 [{"hitbox"}]
      126 DUPTABLE                         R6 K48 [{"height"}]
      127 GETTABLEKS                       R7 R0 K49 ["Size"]
      129 GETTABLEKS                       R7 R7 K50 ["Size_300"]
      131 SETTABLEKS                       R7 R6 K47 ["height"]
      133 SETTABLEKS                       R6 R5 K45 ["hitbox"]
      135 SETTABLE                         R5 R3 R4
      136 GETUPVAL                         R4 1
      137 GETTABLEKS                       R4 R4 K51 ["Small"]
      139 DUPTABLE                         R5 K46 [{"hitbox"}]
      140 DUPTABLE                         R6 K48 [{"height"}]
      141 GETTABLEKS                       R7 R0 K49 ["Size"]
      143 GETTABLEKS                       R7 R7 K52 ["Size_400"]
      145 SETTABLEKS                       R7 R6 K47 ["height"]
      147 SETTABLEKS                       R6 R5 K45 ["hitbox"]
      149 SETTABLE                         R5 R3 R4
      150 GETUPVAL                         R4 1
      151 GETTABLEKS                       R4 R4 K53 ["Medium"]
      153 DUPTABLE                         R5 K46 [{"hitbox"}]
      154 DUPTABLE                         R6 K48 [{"height"}]
      155 GETTABLEKS                       R7 R0 K49 ["Size"]
      157 GETTABLEKS                       R7 R7 K54 ["Size_500"]
      159 SETTABLEKS                       R7 R6 K47 ["height"]
      161 SETTABLEKS                       R6 R5 K45 ["hitbox"]
      163 SETTABLE                         R5 R3 R4
      164 GETUPVAL                         R4 1
      165 GETTABLEKS                       R4 R4 K55 ["Large"]
      167 DUPTABLE                         R5 K46 [{"hitbox"}]
      168 DUPTABLE                         R6 K48 [{"height"}]
      169 GETTABLEKS                       R7 R0 K49 ["Size"]
      171 GETTABLEKS                       R7 R7 K56 ["Size_700"]
      173 SETTABLEKS                       R7 R6 K47 ["height"]
      175 SETTABLEKS                       R6 R5 K45 ["hitbox"]
      177 SETTABLE                         R5 R3 R4
      178 DUPTABLE                         R4 K60 [{"common", "variants", "sizes"}]
      179 SETTABLEKS                       R1 R4 K57 ["common"]
      181 SETTABLEKS                       R2 R4 K58 ["variants"]
      183 SETTABLEKS                       R3 R4 K59 ["sizes"]
      185 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Slider"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["variants"]
       12 GETTABLE                         R6 R7 R2
       13 GETTABLEKS                       R8 R3 K4 ["sizes"]
       15 GETTABLE                         R7 R8 R1
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["SliderVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R4 K10 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Providers"]
       32 GETTABLEKS                       R5 R5 K12 ["Style"]
       34 GETTABLEKS                       R5 R5 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Providers"]
       41 GETTABLEKS                       R6 R6 K12 ["Style"]
       43 GETTABLEKS                       R6 R6 K14 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R7 K16 ["Types"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R8 K18 [PROTO_1]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 RETURN                           R8 1
