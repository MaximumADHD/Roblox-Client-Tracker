PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R1 R1 K2 ["Offset"]
        6 GETTABLEKS                       R4 R0 K4 ["shadowPadding"]
        8 MULK                             R3 R4 K3 [2]
        9 ADD                              R2 R1 R3
       10 DUPTABLE                         R3 K7 [{"knob", "knobShadow"}]
       11 DUPTABLE                         R4 K9 [{"size", "iconSize"}]
       12 GETTABLEKS                       R5 R0 K0 ["size"]
       14 SETTABLEKS                       R5 R4 K0 ["size"]
       16 GETTABLEKS                       R5 R0 K8 ["iconSize"]
       18 SETTABLEKS                       R5 R4 K8 ["iconSize"]
       20 SETTABLEKS                       R4 R3 K5 ["knob"]
       22 DUPTABLE                         R4 K11 [{"size", "padding"}]
       23 GETIMPORT                        R5 K14 [UDim2.fromOffset]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R2
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K0 ["size"]
       30 GETTABLEKS                       R5 R0 K4 ["shadowPadding"]
       32 SETTABLEKS                       R5 R4 K10 ["padding"]
       34 SETTABLEKS                       R4 R3 K6 ["knobShadow"]
       36 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"knob", "knobShadow"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["FoundationToggleVisualUpdate"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K6 ["auto-xy radius-circle anchor-center-center position-center-center"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K7 ["radius-circle anchor-center-center position-center-center"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["knob"]
       13 DUPTABLE                         R2 K9 [{["tag"] = "anchor-center-center position-center-center"}]
       14 SETTABLEKS                       R2 R1 K1 ["knobShadow"]
       16 NEWTABLE                         R2 4 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K10 ["XSmall"]
       21 GETUPVAL                         R4 2
       22 DUPTABLE                         R5 K14 [{"iconSize", "size", "shadowPadding"}]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K10 ["XSmall"]
       26 SETTABLEKS                       R6 R5 K11 ["iconSize"]
       28 GETUPVAL                         R6 4
       29 MOVE                             R7 R0
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K10 ["XSmall"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K12 ["size"]
       36 GETTABLEKS                       R6 R0 K15 ["Padding"]
       38 GETTABLEKS                       R6 R6 K16 ["XXSmall"]
       40 SETTABLEKS                       R6 R5 K13 ["shadowPadding"]
       42 CALL                             R4 1 1
       43 SETTABLE                         R4 R2 R3
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K17 ["Small"]
       47 GETUPVAL                         R4 2
       48 DUPTABLE                         R5 K14 [{"iconSize", "size", "shadowPadding"}]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K17 ["Small"]
       52 SETTABLEKS                       R6 R5 K11 ["iconSize"]
       54 GETUPVAL                         R6 4
       55 MOVE                             R7 R0
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K17 ["Small"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K12 ["size"]
       62 GETTABLEKS                       R6 R0 K15 ["Padding"]
       64 GETTABLEKS                       R6 R6 K10 ["XSmall"]
       66 SETTABLEKS                       R6 R5 K13 ["shadowPadding"]
       68 CALL                             R4 1 1
       69 SETTABLE                         R4 R2 R3
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K18 ["Medium"]
       73 GETUPVAL                         R4 2
       74 DUPTABLE                         R5 K14 [{"iconSize", "size", "shadowPadding"}]
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R6 R6 K18 ["Medium"]
       78 SETTABLEKS                       R6 R5 K11 ["iconSize"]
       80 GETUPVAL                         R6 4
       81 MOVE                             R7 R0
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K18 ["Medium"]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K12 ["size"]
       88 GETTABLEKS                       R6 R0 K15 ["Padding"]
       90 GETTABLEKS                       R6 R6 K17 ["Small"]
       92 SETTABLEKS                       R6 R5 K13 ["shadowPadding"]
       94 CALL                             R4 1 1
       95 SETTABLE                         R4 R2 R3
       96 GETUPVAL                         R3 1
       97 GETTABLEKS                       R3 R3 K19 ["Large"]
       99 GETUPVAL                         R4 2
      100 DUPTABLE                         R5 K14 [{"iconSize", "size", "shadowPadding"}]
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K19 ["Large"]
      104 SETTABLEKS                       R6 R5 K11 ["iconSize"]
      106 GETUPVAL                         R6 4
      107 MOVE                             R7 R0
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R8 R8 K19 ["Large"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K12 ["size"]
      114 GETTABLEKS                       R6 R0 K15 ["Padding"]
      116 GETTABLEKS                       R6 R6 K17 ["Small"]
      118 SETTABLEKS                       R6 R5 K13 ["shadowPadding"]
      120 CALL                             R4 1 1
      121 SETTABLE                         R4 R2 R3
      122 GETUPVAL                         R4 0
      123 GETTABLEKS                       R4 R4 K5 ["FoundationToggleVisualUpdate"]
      125 JUMPIFNOT                        R4 ; [+53]
      126 NEWTABLE                         R3 2 0
      128 LOADB                            R4 0
      129 DUPTABLE                         R5 K21 [{"knob", "iconContainer"}]
      130 DUPTABLE                         R6 K23 [{"style"}]
      131 GETTABLEKS                       R7 R0 K24 ["Color"]
      133 GETTABLEKS                       R7 R7 K25 ["Content"]
      135 GETTABLEKS                       R7 R7 K26 ["Emphasis"]
      137 SETTABLEKS                       R7 R6 K22 ["style"]
      139 SETTABLEKS                       R6 R5 K0 ["knob"]
      141 DUPTABLE                         R6 K28 [{"backgroundStyle"}]
      142 GETTABLEKS                       R7 R0 K29 ["Inverse"]
      144 GETTABLEKS                       R7 R7 K25 ["Content"]
      146 GETTABLEKS                       R7 R7 K26 ["Emphasis"]
      148 SETTABLEKS                       R7 R6 K27 ["backgroundStyle"]
      150 SETTABLEKS                       R6 R5 K20 ["iconContainer"]
      152 SETTABLE                         R5 R3 R4
      153 LOADB                            R4 1
      154 DUPTABLE                         R5 K21 [{"knob", "iconContainer"}]
      155 DUPTABLE                         R6 K23 [{"style"}]
      156 GETTABLEKS                       R7 R0 K29 ["Inverse"]
      158 GETTABLEKS                       R7 R7 K25 ["Content"]
      160 GETTABLEKS                       R7 R7 K26 ["Emphasis"]
      162 SETTABLEKS                       R7 R6 K22 ["style"]
      164 SETTABLEKS                       R6 R5 K0 ["knob"]
      166 DUPTABLE                         R6 K28 [{"backgroundStyle"}]
      167 GETTABLEKS                       R7 R0 K24 ["Color"]
      169 GETTABLEKS                       R7 R7 K25 ["Content"]
      171 GETTABLEKS                       R7 R7 K26 ["Emphasis"]
      173 SETTABLEKS                       R7 R6 K27 ["backgroundStyle"]
      175 SETTABLEKS                       R6 R5 K20 ["iconContainer"]
      177 SETTABLE                         R5 R3 R4
      178 JUMP                             ; [+56]
      179 NEWTABLE                         R3 2 0
      181 LOADB                            R4 0
      182 DUPTABLE                         R5 K21 [{"knob", "iconContainer"}]
      183 DUPTABLE                         R6 K23 [{"style"}]
      184 GETTABLEKS                       R7 R0 K24 ["Color"]
      186 GETTABLEKS                       R7 R7 K30 ["Extended"]
      188 GETTABLEKS                       R7 R7 K31 ["White"]
      190 GETTABLEKS                       R7 R7 K32 ["White_100"]
      192 SETTABLEKS                       R7 R6 K22 ["style"]
      194 SETTABLEKS                       R6 R5 K0 ["knob"]
      196 DUPTABLE                         R6 K28 [{"backgroundStyle"}]
      197 GETTABLEKS                       R7 R0 K29 ["Inverse"]
      199 GETTABLEKS                       R7 R7 K25 ["Content"]
      201 GETTABLEKS                       R7 R7 K26 ["Emphasis"]
      203 SETTABLEKS                       R7 R6 K27 ["backgroundStyle"]
      205 SETTABLEKS                       R6 R5 K20 ["iconContainer"]
      207 SETTABLE                         R5 R3 R4
      208 LOADB                            R4 1
      209 DUPTABLE                         R5 K21 [{"knob", "iconContainer"}]
      210 DUPTABLE                         R6 K23 [{"style"}]
      211 GETTABLEKS                       R7 R0 K24 ["Color"]
      213 GETTABLEKS                       R7 R7 K30 ["Extended"]
      215 GETTABLEKS                       R7 R7 K31 ["White"]
      217 GETTABLEKS                       R7 R7 K32 ["White_100"]
      219 SETTABLEKS                       R7 R6 K22 ["style"]
      221 SETTABLEKS                       R6 R5 K0 ["knob"]
      223 DUPTABLE                         R6 K28 [{"backgroundStyle"}]
      224 GETTABLEKS                       R7 R0 K24 ["Color"]
      226 GETTABLEKS                       R7 R7 K25 ["Content"]
      228 GETTABLEKS                       R7 R7 K26 ["Emphasis"]
      230 SETTABLEKS                       R7 R6 K27 ["backgroundStyle"]
      232 SETTABLEKS                       R6 R5 K20 ["iconContainer"]
      234 SETTABLE                         R5 R3 R4
      235 DUPTABLE                         R4 K36 [{"common", "sizes", "isInverse"}]
      236 SETTABLEKS                       R1 R4 K33 ["common"]
      238 SETTABLEKS                       R2 R4 K34 ["sizes"]
      240 SETTABLEKS                       R3 R4 K35 ["isInverse"]
      242 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Knob"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["isInverse"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["composeStyleVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K15 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["getKnobSize"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Providers"]
       50 GETTABLEKS                       R7 R7 K13 ["Style"]
       52 GETTABLEKS                       R7 R7 K17 ["VariantsContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Utility"]
       59 GETTABLEKS                       R8 R8 K18 ["Flags"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Enums"]
       66 GETTABLEKS                       R9 R9 K19 ["IconSize"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 DUPCLOSURE                       R10 K21 [PROTO_1]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 DUPCLOSURE                       R11 K22 [PROTO_2]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R2
       80 RETURN                           R11 1
