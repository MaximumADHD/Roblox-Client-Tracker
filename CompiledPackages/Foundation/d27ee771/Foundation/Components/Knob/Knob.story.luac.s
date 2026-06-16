PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"size", "style", "stroke", "hasShadow", "icon", "isDisabled"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["style"]
       10 SETTABLEKS                       R4 R3 K2 ["style"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["stroke"]
       15 SETTABLEKS                       R4 R3 K3 ["stroke"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["hasShadow"]
       20 SETTABLEKS                       R4 R3 K4 ["hasShadow"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["icon"]
       25 SETTABLEKS                       R4 R3 K5 ["icon"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K6 ["isDisabled"]
       30 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row gap-medium auto-y size-full-0 align-y-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K4 ["map"]
       11 NEWTABLE                         R5 0 4
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K5 ["Large"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K6 ["Medium"]
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K7 ["Small"]
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K8 ["XSmall"]
       25 SETLIST                          R5 R6 4 [1]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 CALL                             R4 2 -1
       32 CALL                             R1 -1 -1
       33 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K2 ["isInverse"]
        4 ORK                              R2 R3 K1 [False]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["FoundationToggleVisualUpdate"]
       10 JUMPIFNOT                        R4 ; [+53]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K7 [{"tag", "backgroundStyle"}]
       16 LOADK                            R7 K8 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
       17 SETTABLEKS                       R7 R6 K5 ["tag"]
       19 JUMPIFNOT                        R2 ; [+7]
       20 GETTABLEKS                       R7 R3 K9 ["Inverse"]
       22 GETTABLEKS                       R7 R7 K10 ["Surface"]
       24 GETTABLEKS                       R7 R7 K11 ["Surface_0"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R7
       28 SETTABLEKS                       R7 R6 K6 ["backgroundStyle"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K4 ["createElement"]
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R8 R8 K12 ["Provider"]
       36 DUPTABLE                         R9 K14 [{"value"}]
       37 DUPTABLE                         R10 K15 [{"isInverse"}]
       38 SETTABLEKS                       R2 R10 K2 ["isInverse"]
       40 SETTABLEKS                       R10 R9 K13 ["value"]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K4 ["createElement"]
       45 GETUPVAL                         R11 5
       46 GETUPVAL                         R12 6
       47 GETTABLEKS                       R12 R12 K16 ["join"]
       49 MOVE                             R13 R0
       50 DUPTABLE                         R14 K19 [{"hasShadow", "isDisabled"}]
       51 GETTABLEKS                       R15 R1 K17 ["hasShadow"]
       53 SETTABLEKS                       R15 R14 K17 ["hasShadow"]
       55 GETTABLEKS                       R15 R1 K18 ["isDisabled"]
       57 SETTABLEKS                       R15 R14 K18 ["isDisabled"]
       59 CALL                             R12 2 -1
       60 CALL                             R10 -1 -1
       61 CALL                             R7 -1 -1
       62 CALL                             R4 -1 -1
       63 RETURN                           R4 -1
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K4 ["createElement"]
       67 GETUPVAL                         R5 3
       68 DUPTABLE                         R6 K20 [{"tag"}]
       69 LOADK                            R7 K8 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
       70 SETTABLEKS                       R7 R6 K5 ["tag"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K4 ["createElement"]
       75 GETUPVAL                         R8 5
       76 GETUPVAL                         R9 6
       77 GETTABLEKS                       R9 R9 K16 ["join"]
       79 MOVE                             R10 R0
       80 DUPTABLE                         R11 K21 [{"hasShadow"}]
       81 GETTABLEKS                       R12 R1 K17 ["hasShadow"]
       83 SETTABLEKS                       R12 R11 K17 ["hasShadow"]
       85 CALL                             R9 2 -1
       86 CALL                             R7 -1 -1
       87 CALL                             R4 -1 -1
       88 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K2 ["isInverse"]
        4 ORK                              R2 R3 K1 [False]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["FoundationToggleVisualUpdate"]
       10 JUMPIFNOT                        R4 ; [+103]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K7 [{"backgroundStyle", "tag"}]
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R7 R3 K8 ["Inverse"]
       19 GETTABLEKS                       R7 R7 K9 ["Surface"]
       21 GETTABLEKS                       R7 R7 K10 ["Surface_0"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       27 LOADK                            R7 K11 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
       28 SETTABLEKS                       R7 R6 K6 ["tag"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K4 ["createElement"]
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R8 R8 K12 ["Provider"]
       36 DUPTABLE                         R9 K14 [{"value"}]
       37 DUPTABLE                         R10 K15 [{"isInverse"}]
       38 SETTABLEKS                       R2 R10 K2 ["isInverse"]
       40 SETTABLEKS                       R10 R9 K13 ["value"]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K4 ["createElement"]
       45 GETUPVAL                         R11 5
       46 DUPTABLE                         R12 K20 [{"style", "stroke", "hasShadow", "isDisabled"}]
       47 GETTABLEKS                       R13 R3 K21 ["Color"]
       49 GETTABLEKS                       R13 R13 K22 ["None"]
       51 SETTABLEKS                       R13 R12 K16 ["style"]
       53 DUPTABLE                         R13 K25 [{"Color", "Thickness", "Transparency"}]
       54 JUMPIFNOT                        R2 ; [+9]
       55 GETTABLEKS                       R14 R3 K8 ["Inverse"]
       57 GETTABLEKS                       R14 R14 K26 ["Content"]
       59 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       61 GETTABLEKS                       R14 R14 K28 ["Color3"]
       63 JUMP                             ; [+8]
       64 GETTABLEKS                       R14 R3 K21 ["Color"]
       66 GETTABLEKS                       R14 R14 K26 ["Content"]
       68 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       70 GETTABLEKS                       R14 R14 K28 ["Color3"]
       72 SETTABLEKS                       R14 R13 K21 ["Color"]
       74 GETTABLEKS                       R14 R3 K29 ["Stroke"]
       76 GETTABLEKS                       R14 R14 K30 ["Thicker"]
       78 SETTABLEKS                       R14 R13 K23 ["Thickness"]
       80 JUMPIFNOT                        R2 ; [+9]
       81 GETTABLEKS                       R14 R3 K8 ["Inverse"]
       83 GETTABLEKS                       R14 R14 K26 ["Content"]
       85 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       87 GETTABLEKS                       R14 R14 K24 ["Transparency"]
       89 JUMP                             ; [+8]
       90 GETTABLEKS                       R14 R3 K21 ["Color"]
       92 GETTABLEKS                       R14 R14 K26 ["Content"]
       94 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       96 GETTABLEKS                       R14 R14 K24 ["Transparency"]
       98 SETTABLEKS                       R14 R13 K24 ["Transparency"]
      100 SETTABLEKS                       R13 R12 K17 ["stroke"]
      102 GETTABLEKS                       R13 R1 K18 ["hasShadow"]
      104 SETTABLEKS                       R13 R12 K18 ["hasShadow"]
      106 GETTABLEKS                       R13 R1 K19 ["isDisabled"]
      108 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
      110 CALL                             R10 2 -1
      111 CALL                             R7 -1 -1
      112 CALL                             R4 -1 -1
      113 RETURN                           R4 -1
      114 GETUPVAL                         R4 2
      115 GETTABLEKS                       R4 R4 K4 ["createElement"]
      117 GETUPVAL                         R5 3
      118 DUPTABLE                         R6 K31 [{"tag"}]
      119 LOADK                            R7 K11 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
      120 SETTABLEKS                       R7 R6 K6 ["tag"]
      122 GETUPVAL                         R7 2
      123 GETTABLEKS                       R7 R7 K4 ["createElement"]
      125 GETUPVAL                         R8 5
      126 DUPTABLE                         R9 K32 [{"style", "stroke", "hasShadow"}]
      127 GETTABLEKS                       R10 R3 K21 ["Color"]
      129 GETTABLEKS                       R10 R10 K22 ["None"]
      131 SETTABLEKS                       R10 R9 K16 ["style"]
      133 DUPTABLE                         R10 K25 [{"Color", "Thickness", "Transparency"}]
      134 GETTABLEKS                       R11 R3 K21 ["Color"]
      136 GETTABLEKS                       R11 R11 K26 ["Content"]
      138 GETTABLEKS                       R11 R11 K27 ["Emphasis"]
      140 GETTABLEKS                       R11 R11 K28 ["Color3"]
      142 SETTABLEKS                       R11 R10 K21 ["Color"]
      144 GETTABLEKS                       R11 R3 K29 ["Stroke"]
      146 GETTABLEKS                       R11 R11 K30 ["Thicker"]
      148 SETTABLEKS                       R11 R10 K23 ["Thickness"]
      150 GETTABLEKS                       R11 R3 K21 ["Color"]
      152 GETTABLEKS                       R11 R11 K26 ["Content"]
      154 GETTABLEKS                       R11 R11 K27 ["Emphasis"]
      156 GETTABLEKS                       R11 R11 K24 ["Transparency"]
      158 SETTABLEKS                       R11 R10 K24 ["Transparency"]
      160 SETTABLEKS                       R10 R9 K17 ["stroke"]
      162 GETTABLEKS                       R10 R1 K18 ["hasShadow"]
      164 SETTABLEKS                       R10 R9 K18 ["hasShadow"]
      166 CALL                             R7 2 -1
      167 CALL                             R4 -1 -1
      168 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K2 ["isInverse"]
        4 ORK                              R2 R3 K1 [False]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{"backgroundStyle", "tag"}]
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADNIL                          R7
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R7 R3 K7 ["Inverse"]
       17 GETTABLEKS                       R7 R7 K8 ["Surface"]
       19 GETTABLEKS                       R7 R7 K9 ["Surface_0"]
       21 SETTABLEKS                       R7 R6 K4 ["backgroundStyle"]
       23 LOADK                            R7 K10 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
       24 SETTABLEKS                       R7 R6 K5 ["tag"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K3 ["createElement"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K11 ["Provider"]
       32 DUPTABLE                         R9 K13 [{"value"}]
       33 DUPTABLE                         R10 K14 [{"isInverse"}]
       34 SETTABLEKS                       R2 R10 K2 ["isInverse"]
       36 SETTABLEKS                       R10 R9 K12 ["value"]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K3 ["createElement"]
       41 GETUPVAL                         R11 4
       42 DUPTABLE                         R12 K18 [{"hasShadow", "isDisabled", "icon"}]
       43 GETTABLEKS                       R13 R1 K15 ["hasShadow"]
       45 SETTABLEKS                       R13 R12 K15 ["hasShadow"]
       47 GETTABLEKS                       R13 R1 K16 ["isDisabled"]
       49 SETTABLEKS                       R13 R12 K16 ["isDisabled"]
       51 DUPTABLE                         R13 K21 [{"name", "variant"}]
       52 GETUPVAL                         R14 5
       53 GETTABLEKS                       R14 R14 K22 ["Icon"]
       55 GETTABLEKS                       R14 R14 K23 ["Check"]
       57 SETTABLEKS                       R14 R13 K19 ["name"]
       59 GETUPVAL                         R14 5
       60 GETTABLEKS                       R14 R14 K24 ["IconVariant"]
       62 GETTABLEKS                       R14 R14 K25 ["Regular"]
       64 SETTABLEKS                       R14 R13 K20 ["variant"]
       66 SETTABLEKS                       R13 R12 K17 ["icon"]
       68 CALL                             R10 2 -1
       69 CALL                             R7 -1 -1
       70 CALL                             R4 -1 -1
       71 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Providers"]
       37 GETTABLEKS                       R7 R7 K13 ["Style"]
       39 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Providers"]
       46 GETTABLEKS                       R8 R8 K13 ["Style"]
       48 GETTABLEKS                       R8 R8 K15 ["PresentationContext"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R1 K16 ["BuilderIcons"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Utility"]
       60 GETTABLEKS                       R10 R10 K18 ["Flags"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R12 R12 K4 ["Parent"]
       76 GETTABLEKS                       R12 R12 K21 ["Knob"]
       78 CALL                             R11 1 1
       79 DUPCLOSURE                       R12 K22 [PROTO_1]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 NEWTABLE                         R13 0 2
       87 DUPTABLE                         R14 K26 [{"name", "summary", "story"}]
       88 LOADK                            R15 K27 ["Basic"]
       89 SETTABLEKS                       R15 R14 K23 ["name"]
       91 LOADK                            R15 K28 ["Default knob across sizes."]
       92 SETTABLEKS                       R15 R14 K24 ["summary"]
       94 DUPCLOSURE                       R15 K29 [PROTO_2]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R3
      102 SETTABLEKS                       R15 R14 K25 ["story"]
      104 DUPTABLE                         R15 K26 [{"name", "summary", "story"}]
      105 LOADK                            R16 K30 ["With Stroke"]
      106 SETTABLEKS                       R16 R15 K23 ["name"]
      108 LOADK                            R16 K31 ["Knob with transparent fill and emphasis stroke across sizes."]
      109 SETTABLEKS                       R16 R15 K24 ["summary"]
      111 DUPCLOSURE                       R16 K32 [PROTO_3]
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R12
      118 SETTABLEKS                       R16 R15 K25 ["story"]
      120 SETLIST                          R13 R14 2 [1]
      122 GETTABLEKS                       R14 R9 K33 ["FoundationToggleVisualUpdate"]
      124 JUMPIFNOT                        R14 ; [+22]
      125 DUPTABLE                         R16 K26 [{"name", "summary", "story"}]
      126 LOADK                            R17 K34 ["With Icon"]
      127 SETTABLEKS                       R17 R16 K23 ["name"]
      129 LOADK                            R17 K35 ["Knob rendering a BuilderIcons check icon instead of the circle."]
      130 SETTABLEKS                       R17 R16 K24 ["summary"]
      132 DUPCLOSURE                       R17 K36 [PROTO_4]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R8
      139 SETTABLEKS                       R17 R16 K25 ["story"]
      141 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      143 MOVE                             R15 R13
      144 GETIMPORT                        R14 K39 [table.insert]
      146 CALL                             R14 2 0
      147 DUPTABLE                         R14 K42 [{"controls", "summary", "stories"}]
      148 GETTABLEKS                       R16 R9 K33 ["FoundationToggleVisualUpdate"]
      150 JUMPIFNOT                        R16 ; [+11]
      151 DUPTABLE                         R15 K46 [{"isInverse", "hasShadow", "isDisabled"}]
      152 LOADB                            R16 0
      153 SETTABLEKS                       R16 R15 K43 ["isInverse"]
      155 LOADB                            R16 1
      156 SETTABLEKS                       R16 R15 K44 ["hasShadow"]
      158 LOADB                            R16 0
      159 SETTABLEKS                       R16 R15 K45 ["isDisabled"]
      161 JUMP                             ; [+4]
      162 DUPTABLE                         R15 K47 [{"hasShadow"}]
      163 LOADB                            R16 1
      164 SETTABLEKS                       R16 R15 K44 ["hasShadow"]
      166 SETTABLEKS                       R15 R14 K40 ["controls"]
      168 GETTABLEKS                       R16 R9 K33 ["FoundationToggleVisualUpdate"]
      170 JUMPIFNOT                        R16 ; [+2]
      171 LOADK                            R15 K48 ["Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly. Uses PresentationContext for inverse styling."]
      172 JUMP                             ; [+1]
      173 LOADK                            R15 K49 ["Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly."]
      174 SETTABLEKS                       R15 R14 K24 ["summary"]
      176 SETTABLEKS                       R13 R14 K41 ["stories"]
      178 RETURN                           R14 1
