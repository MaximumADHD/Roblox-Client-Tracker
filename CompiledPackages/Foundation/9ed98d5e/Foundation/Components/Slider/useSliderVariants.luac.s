PROTO_0:
        0 DUPTABLE                         R1 K2 [{"bar", "fill"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["position-center-center anchor-center-center size-full-100 radius-small"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["bar"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 LOADK                            R3 K6 ["radius-small"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["fill"]
       13 NEWTABLE                         R2 4 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K7 ["Emphasis"]
       18 DUPTABLE                         R4 K9 [{"bar", "fill", "knob"}]
       19 DUPTABLE                         R5 K4 [{"tag"}]
       20 LOADK                            R6 K10 ["bg-shift-400"]
       21 SETTABLEKS                       R6 R5 K3 ["tag"]
       23 SETTABLEKS                       R5 R4 K0 ["bar"]
       25 DUPTABLE                         R5 K4 [{"tag"}]
       26 LOADK                            R6 K11 ["bg-emphasis"]
       27 SETTABLEKS                       R6 R5 K3 ["tag"]
       29 SETTABLEKS                       R5 R4 K1 ["fill"]
       31 DUPTABLE                         R5 K15 [{"style", "dragStyle", "hasShadow"}]
       32 GETTABLEKS                       R9 R0 K16 ["Color"]
       34 GETTABLEKS                       R8 R9 K17 ["Extended"]
       36 GETTABLEKS                       R7 R8 K18 ["White"]
       38 GETTABLEKS                       R6 R7 K19 ["White_100"]
       40 SETTABLEKS                       R6 R5 K12 ["style"]
       42 GETTABLEKS                       R8 R0 K16 ["Color"]
       44 GETTABLEKS                       R7 R8 K20 ["ActionEmphasis"]
       46 GETTABLEKS                       R6 R7 K21 ["Background"]
       48 SETTABLEKS                       R6 R5 K13 ["dragStyle"]
       50 LOADB                            R6 1
       51 SETTABLEKS                       R6 R5 K14 ["hasShadow"]
       53 SETTABLEKS                       R5 R4 K8 ["knob"]
       55 SETTABLE                         R4 R2 R3
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K22 ["Standard"]
       59 DUPTABLE                         R4 K9 [{"bar", "fill", "knob"}]
       60 DUPTABLE                         R5 K4 [{"tag"}]
       61 LOADK                            R6 K10 ["bg-shift-400"]
       62 SETTABLEKS                       R6 R5 K3 ["tag"]
       64 SETTABLEKS                       R5 R4 K0 ["bar"]
       66 DUPTABLE                         R5 K4 [{"tag"}]
       67 LOADK                            R6 K23 ["bg-system-contrast"]
       68 SETTABLEKS                       R6 R5 K3 ["tag"]
       70 SETTABLEKS                       R5 R4 K1 ["fill"]
       72 DUPTABLE                         R5 K15 [{"style", "dragStyle", "hasShadow"}]
       73 GETTABLEKS                       R8 R0 K16 ["Color"]
       75 GETTABLEKS                       R7 R8 K24 ["System"]
       77 GETTABLEKS                       R6 R7 K25 ["Contrast"]
       79 SETTABLEKS                       R6 R5 K12 ["style"]
       81 GETTABLEKS                       R8 R0 K16 ["Color"]
       83 GETTABLEKS                       R7 R8 K24 ["System"]
       85 GETTABLEKS                       R6 R7 K25 ["Contrast"]
       87 SETTABLEKS                       R6 R5 K13 ["dragStyle"]
       89 LOADB                            R6 0
       90 SETTABLEKS                       R6 R5 K14 ["hasShadow"]
       92 SETTABLEKS                       R5 R4 K8 ["knob"]
       94 SETTABLE                         R4 R2 R3
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R3 R4 K26 ["Utility"]
       98 DUPTABLE                         R4 K27 [{"knob"}]
       99 DUPTABLE                         R5 K29 [{"style", "dragStyle", "stroke", "hasShadow"}]
      100 GETTABLEKS                       R7 R0 K16 ["Color"]
      102 GETTABLEKS                       R6 R7 K30 ["None"]
      104 SETTABLEKS                       R6 R5 K12 ["style"]
      106 GETTABLEKS                       R7 R0 K16 ["Color"]
      108 GETTABLEKS                       R6 R7 K30 ["None"]
      110 SETTABLEKS                       R6 R5 K13 ["dragStyle"]
      112 DUPTABLE                         R6 K33 [{"Color", "Transparency", "Thickness"}]
      113 GETTABLEKS                       R10 R0 K16 ["Color"]
      115 GETTABLEKS                       R9 R10 K24 ["System"]
      117 GETTABLEKS                       R8 R9 K25 ["Contrast"]
      119 GETTABLEKS                       R7 R8 K34 ["Color3"]
      121 SETTABLEKS                       R7 R6 K16 ["Color"]
      123 GETTABLEKS                       R10 R0 K16 ["Color"]
      125 GETTABLEKS                       R9 R10 K24 ["System"]
      127 GETTABLEKS                       R8 R9 K25 ["Contrast"]
      129 GETTABLEKS                       R7 R8 K31 ["Transparency"]
      131 SETTABLEKS                       R7 R6 K31 ["Transparency"]
      133 GETTABLEKS                       R8 R0 K35 ["Stroke"]
      135 GETTABLEKS                       R7 R8 K36 ["Thicker"]
      137 SETTABLEKS                       R7 R6 K32 ["Thickness"]
      139 SETTABLEKS                       R6 R5 K28 ["stroke"]
      141 LOADB                            R6 1
      142 SETTABLEKS                       R6 R5 K14 ["hasShadow"]
      144 SETTABLEKS                       R5 R4 K8 ["knob"]
      146 SETTABLE                         R4 R2 R3
      147 NEWTABLE                         R3 4 0
      149 GETUPVAL                         R5 1
      150 GETTABLEKS                       R4 R5 K37 ["XSmall"]
      152 DUPTABLE                         R5 K39 [{"hitbox"}]
      153 DUPTABLE                         R6 K41 [{"height"}]
      154 GETTABLEKS                       R8 R0 K42 ["Size"]
      156 GETTABLEKS                       R7 R8 K43 ["Size_300"]
      158 SETTABLEKS                       R7 R6 K40 ["height"]
      160 SETTABLEKS                       R6 R5 K38 ["hitbox"]
      162 SETTABLE                         R5 R3 R4
      163 GETUPVAL                         R5 1
      164 GETTABLEKS                       R4 R5 K44 ["Small"]
      166 DUPTABLE                         R5 K39 [{"hitbox"}]
      167 DUPTABLE                         R6 K41 [{"height"}]
      168 GETTABLEKS                       R8 R0 K42 ["Size"]
      170 GETTABLEKS                       R7 R8 K45 ["Size_400"]
      172 SETTABLEKS                       R7 R6 K40 ["height"]
      174 SETTABLEKS                       R6 R5 K38 ["hitbox"]
      176 SETTABLE                         R5 R3 R4
      177 GETUPVAL                         R5 1
      178 GETTABLEKS                       R4 R5 K46 ["Medium"]
      180 DUPTABLE                         R5 K39 [{"hitbox"}]
      181 DUPTABLE                         R6 K41 [{"height"}]
      182 GETTABLEKS                       R8 R0 K42 ["Size"]
      184 GETTABLEKS                       R7 R8 K47 ["Size_500"]
      186 SETTABLEKS                       R7 R6 K40 ["height"]
      188 SETTABLEKS                       R6 R5 K38 ["hitbox"]
      190 SETTABLE                         R5 R3 R4
      191 GETUPVAL                         R5 1
      192 GETTABLEKS                       R4 R5 K48 ["Large"]
      194 DUPTABLE                         R5 K39 [{"hitbox"}]
      195 DUPTABLE                         R6 K41 [{"height"}]
      196 GETTABLEKS                       R8 R0 K42 ["Size"]
      198 GETTABLEKS                       R7 R8 K49 ["Size_700"]
      200 SETTABLEKS                       R7 R6 K40 ["height"]
      202 SETTABLEKS                       R6 R5 K38 ["hitbox"]
      204 SETTABLE                         R5 R3 R4
      205 DUPTABLE                         R4 K53 [{"common", "variants", "sizes"}]
      206 SETTABLEKS                       R1 R4 K50 ["common"]
      208 SETTABLEKS                       R2 R4 K51 ["variants"]
      210 SETTABLEKS                       R3 R4 K52 ["sizes"]
      212 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["SliderVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R7 K12 ["Style"]
       34 GETTABLEKS                       R5 R6 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Providers"]
       41 GETTABLEKS                       R7 R8 K12 ["Style"]
       43 GETTABLEKS                       R6 R7 K14 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R8 K16 ["Types"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R8 K18 [PROTO_1]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 RETURN                           R8 1
