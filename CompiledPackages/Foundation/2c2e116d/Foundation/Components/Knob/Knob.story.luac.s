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
        4 DUPTABLE                         R3 K3 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 NEWTABLE                         R5 0 4
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K5 ["Large"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R7 R7 K6 ["Medium"]
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R8 R8 K7 ["Small"]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K8 ["XSmall"]
       22 SETLIST                          R5 R6 4 [1]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CALL                             R4 2 -1
       29 CALL                             R1 -1 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K2 ["isInverse"]
        4 ORK                              R2 R3 K1 [False]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["FoundationToggleVisualUpdate"]
       10 JUMPIFNOT                        R4 ; [+50]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K8 [{["tag"] = "align-y-center gap-medium auto-xy padding-medium radius-medium", ["backgroundStyle"]}]
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R7 R3 K9 ["Inverse"]
       19 GETTABLEKS                       R7 R7 K10 ["Surface"]
       21 GETTABLEKS                       R7 R7 K11 ["Surface_0"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R6 K7 ["backgroundStyle"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K4 ["createElement"]
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K12 ["Provider"]
       33 DUPTABLE                         R9 K14 [{"value"}]
       34 DUPTABLE                         R10 K15 [{"isInverse"}]
       35 SETTABLEKS                       R2 R10 K2 ["isInverse"]
       37 SETTABLEKS                       R10 R9 K13 ["value"]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K4 ["createElement"]
       42 GETUPVAL                         R11 5
       43 GETUPVAL                         R12 6
       44 GETTABLEKS                       R12 R12 K16 ["join"]
       46 MOVE                             R13 R0
       47 DUPTABLE                         R14 K19 [{"hasShadow", "isDisabled"}]
       48 GETTABLEKS                       R15 R1 K17 ["hasShadow"]
       50 SETTABLEKS                       R15 R14 K17 ["hasShadow"]
       52 GETTABLEKS                       R15 R1 K18 ["isDisabled"]
       54 SETTABLEKS                       R15 R14 K18 ["isDisabled"]
       56 CALL                             R12 2 -1
       57 CALL                             R10 -1 -1
       58 CALL                             R7 -1 -1
       59 CALL                             R4 -1 -1
       60 RETURN                           R4 -1
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R4 R4 K4 ["createElement"]
       64 GETUPVAL                         R5 3
       65 DUPTABLE                         R6 K20 [{["tag"] = "align-y-center gap-medium auto-xy padding-medium radius-medium"}]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K4 ["createElement"]
       69 GETUPVAL                         R8 5
       70 GETUPVAL                         R9 6
       71 GETTABLEKS                       R9 R9 K16 ["join"]
       73 MOVE                             R10 R0
       74 DUPTABLE                         R11 K21 [{"hasShadow"}]
       75 GETTABLEKS                       R12 R1 K17 ["hasShadow"]
       77 SETTABLEKS                       R12 R11 K17 ["hasShadow"]
       79 CALL                             R9 2 -1
       80 CALL                             R7 -1 -1
       81 CALL                             R4 -1 -1
       82 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K2 ["isInverse"]
        4 ORK                              R2 R3 K1 [False]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["FoundationToggleVisualUpdate"]
       10 JUMPIFNOT                        R4 ; [+100]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K8 [{["backgroundStyle"], ["tag"] = "align-y-center gap-medium auto-xy padding-medium radius-medium"}]
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R7 R3 K9 ["Inverse"]
       19 GETTABLEKS                       R7 R7 K10 ["Surface"]
       21 GETTABLEKS                       R7 R7 K11 ["Surface_0"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K4 ["createElement"]
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K12 ["Provider"]
       33 DUPTABLE                         R9 K14 [{"value"}]
       34 DUPTABLE                         R10 K15 [{"isInverse"}]
       35 SETTABLEKS                       R2 R10 K2 ["isInverse"]
       37 SETTABLEKS                       R10 R9 K13 ["value"]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K4 ["createElement"]
       42 GETUPVAL                         R11 5
       43 DUPTABLE                         R12 K20 [{"style", "stroke", "hasShadow", "isDisabled"}]
       44 GETTABLEKS                       R13 R3 K21 ["Color"]
       46 GETTABLEKS                       R13 R13 K22 ["None"]
       48 SETTABLEKS                       R13 R12 K16 ["style"]
       50 DUPTABLE                         R13 K25 [{"Color", "Thickness", "Transparency"}]
       51 JUMPIFNOT                        R2 ; [+9]
       52 GETTABLEKS                       R14 R3 K9 ["Inverse"]
       54 GETTABLEKS                       R14 R14 K26 ["Content"]
       56 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       58 GETTABLEKS                       R14 R14 K28 ["Color3"]
       60 JUMP                             ; [+8]
       61 GETTABLEKS                       R14 R3 K21 ["Color"]
       63 GETTABLEKS                       R14 R14 K26 ["Content"]
       65 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       67 GETTABLEKS                       R14 R14 K28 ["Color3"]
       69 SETTABLEKS                       R14 R13 K21 ["Color"]
       71 GETTABLEKS                       R14 R3 K29 ["Stroke"]
       73 GETTABLEKS                       R14 R14 K30 ["Thicker"]
       75 SETTABLEKS                       R14 R13 K23 ["Thickness"]
       77 JUMPIFNOT                        R2 ; [+9]
       78 GETTABLEKS                       R14 R3 K9 ["Inverse"]
       80 GETTABLEKS                       R14 R14 K26 ["Content"]
       82 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       84 GETTABLEKS                       R14 R14 K24 ["Transparency"]
       86 JUMP                             ; [+8]
       87 GETTABLEKS                       R14 R3 K21 ["Color"]
       89 GETTABLEKS                       R14 R14 K26 ["Content"]
       91 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       93 GETTABLEKS                       R14 R14 K24 ["Transparency"]
       95 SETTABLEKS                       R14 R13 K24 ["Transparency"]
       97 SETTABLEKS                       R13 R12 K17 ["stroke"]
       99 GETTABLEKS                       R13 R1 K18 ["hasShadow"]
      101 SETTABLEKS                       R13 R12 K18 ["hasShadow"]
      103 GETTABLEKS                       R13 R1 K19 ["isDisabled"]
      105 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
      107 CALL                             R10 2 -1
      108 CALL                             R7 -1 -1
      109 CALL                             R4 -1 -1
      110 RETURN                           R4 -1
      111 GETUPVAL                         R4 2
      112 GETTABLEKS                       R4 R4 K4 ["createElement"]
      114 GETUPVAL                         R5 3
      115 DUPTABLE                         R6 K31 [{["tag"] = "align-y-center gap-medium auto-xy padding-medium radius-medium"}]
      116 GETUPVAL                         R7 2
      117 GETTABLEKS                       R7 R7 K4 ["createElement"]
      119 GETUPVAL                         R8 5
      120 DUPTABLE                         R9 K32 [{"style", "stroke", "hasShadow"}]
      121 GETTABLEKS                       R10 R3 K21 ["Color"]
      123 GETTABLEKS                       R10 R10 K22 ["None"]
      125 SETTABLEKS                       R10 R9 K16 ["style"]
      127 DUPTABLE                         R10 K25 [{"Color", "Thickness", "Transparency"}]
      128 GETTABLEKS                       R11 R3 K21 ["Color"]
      130 GETTABLEKS                       R11 R11 K26 ["Content"]
      132 GETTABLEKS                       R11 R11 K27 ["Emphasis"]
      134 GETTABLEKS                       R11 R11 K28 ["Color3"]
      136 SETTABLEKS                       R11 R10 K21 ["Color"]
      138 GETTABLEKS                       R11 R3 K29 ["Stroke"]
      140 GETTABLEKS                       R11 R11 K30 ["Thicker"]
      142 SETTABLEKS                       R11 R10 K23 ["Thickness"]
      144 GETTABLEKS                       R11 R3 K21 ["Color"]
      146 GETTABLEKS                       R11 R11 K26 ["Content"]
      148 GETTABLEKS                       R11 R11 K27 ["Emphasis"]
      150 GETTABLEKS                       R11 R11 K24 ["Transparency"]
      152 SETTABLEKS                       R11 R10 K24 ["Transparency"]
      154 SETTABLEKS                       R10 R9 K17 ["stroke"]
      156 GETTABLEKS                       R10 R1 K18 ["hasShadow"]
      158 SETTABLEKS                       R10 R9 K18 ["hasShadow"]
      160 CALL                             R7 2 -1
      161 CALL                             R4 -1 -1
      162 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K2 ["isInverse"]
        4 ORK                              R2 R3 K1 [False]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K7 [{["backgroundStyle"], ["tag"] = "align-y-center gap-medium auto-xy padding-medium radius-medium"}]
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADNIL                          R7
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R7 R3 K8 ["Inverse"]
       17 GETTABLEKS                       R7 R7 K9 ["Surface"]
       19 GETTABLEKS                       R7 R7 K10 ["Surface_0"]
       21 SETTABLEKS                       R7 R6 K4 ["backgroundStyle"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K3 ["createElement"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K11 ["Provider"]
       29 DUPTABLE                         R9 K13 [{"value"}]
       30 DUPTABLE                         R10 K14 [{"isInverse"}]
       31 SETTABLEKS                       R2 R10 K2 ["isInverse"]
       33 SETTABLEKS                       R10 R9 K12 ["value"]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R10 R10 K3 ["createElement"]
       38 GETUPVAL                         R11 4
       39 DUPTABLE                         R12 K18 [{"hasShadow", "isDisabled", "icon"}]
       40 GETTABLEKS                       R13 R1 K15 ["hasShadow"]
       42 SETTABLEKS                       R13 R12 K15 ["hasShadow"]
       44 GETTABLEKS                       R13 R1 K16 ["isDisabled"]
       46 SETTABLEKS                       R13 R12 K16 ["isDisabled"]
       48 DUPTABLE                         R13 K21 [{"name", "variant"}]
       49 GETUPVAL                         R14 5
       50 GETTABLEKS                       R14 R14 K22 ["Icon"]
       52 GETTABLEKS                       R14 R14 K23 ["Check"]
       54 SETTABLEKS                       R14 R13 K19 ["name"]
       56 GETUPVAL                         R14 5
       57 GETTABLEKS                       R14 R14 K24 ["IconVariant"]
       59 GETTABLEKS                       R14 R14 K25 ["Regular"]
       61 SETTABLEKS                       R14 R13 K20 ["variant"]
       63 SETTABLEKS                       R13 R12 K17 ["icon"]
       65 CALL                             R10 2 -1
       66 CALL                             R7 -1 -1
       67 CALL                             R4 -1 -1
       68 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["BuilderIcons"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R6 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Providers"]
       35 GETTABLEKS                       R7 R7 K13 ["Style"]
       37 GETTABLEKS                       R7 R7 K14 ["PresentationContext"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Components"]
       44 GETTABLEKS                       R8 R8 K16 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Components"]
       51 GETTABLEKS                       R9 R9 K17 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Providers"]
       58 GETTABLEKS                       R10 R10 K13 ["Style"]
       60 GETTABLEKS                       R10 R10 K18 ["useTokens"]
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
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 NEWTABLE                         R13 0 2
       87 DUPTABLE                         R14 K28 [{["name"] = "Basic", ["summary"] = "Default knob across sizes.", ["story"]}]
       88 DUPCLOSURE                       R15 K29 [PROTO_2]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R15 R14 K27 ["story"]
       98 DUPTABLE                         R15 K32 [{["name"] = "With Stroke", ["summary"] = "Knob with transparent fill and emphasis stroke across sizes.", ["story"]}]
       99 DUPCLOSURE                       R16 K33 [PROTO_3]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R12
      106 SETTABLEKS                       R16 R15 K27 ["story"]
      108 SETLIST                          R13 R14 2 [1]
      110 GETTABLEKS                       R14 R5 K34 ["FoundationToggleVisualUpdate"]
      112 JUMPIFNOT                        R14 ; [+16]
      113 DUPTABLE                         R16 K37 [{["name"] = "With Icon", ["summary"] = "Knob rendering a BuilderIcons check icon instead of the circle.", ["story"]}]
      114 DUPCLOSURE                       R17 K38 [PROTO_4]
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R17 R16 K27 ["story"]
      123 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      125 MOVE                             R15 R13
      126 GETIMPORT                        R14 K41 [table.insert]
      128 CALL                             R14 2 0
      129 DUPTABLE                         R14 K44 [{"controls", "summary", "stories"}]
      130 GETTABLEKS                       R16 R5 K34 ["FoundationToggleVisualUpdate"]
      132 JUMPIFNOT                        R16 ; [+2]
      133 DUPTABLE                         R15 K50 [{["isInverse"] = False, ["hasShadow"] = True, ["isDisabled"] = False}]
      134 JUMP                             ; [+1]
      135 DUPTABLE                         R15 K51 [{["hasShadow"] = True}]
      136 SETTABLEKS                       R15 R14 K42 ["controls"]
      138 GETTABLEKS                       R16 R5 K34 ["FoundationToggleVisualUpdate"]
      140 JUMPIFNOT                        R16 ; [+2]
      141 LOADK                            R15 K52 ["Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly. Uses PresentationContext for inverse styling."]
      142 JUMP                             ; [+1]
      143 LOADK                            R15 K53 ["Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly."]
      144 SETTABLEKS                       R15 R14 K25 ["summary"]
      146 SETTABLEKS                       R13 R14 K43 ["stories"]
      148 RETURN                           R14 1
