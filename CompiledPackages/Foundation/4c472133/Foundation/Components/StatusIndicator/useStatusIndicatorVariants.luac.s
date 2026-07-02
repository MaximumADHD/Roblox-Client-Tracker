PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "radius-circle"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K7 [{["tag"] = "auto-xy text-caption-small text-align-x-left"}]
        5 SETTABLEKS                       R2 R1 K1 ["content"]
        7 NEWTABLE                         R2 8 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["Alert"]
       12 DUPTABLE                         R4 K2 [{"container", "content"}]
       13 DUPTABLE                         R5 K10 [{["tag"] = "bg-system-alert"}]
       14 SETTABLEKS                       R5 R4 K0 ["container"]
       16 DUPTABLE                         R5 K12 [{"style"}]
       17 GETTABLEKS                       R6 R0 K13 ["DarkMode"]
       19 GETTABLEKS                       R6 R6 K14 ["Content"]
       21 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       23 SETTABLEKS                       R6 R5 K11 ["style"]
       25 SETTABLEKS                       R5 R4 K1 ["content"]
       27 SETTABLE                         R4 R2 R3
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K16 ["Success"]
       31 DUPTABLE                         R4 K2 [{"container", "content"}]
       32 DUPTABLE                         R5 K18 [{["tag"] = "bg-system-success"}]
       33 SETTABLEKS                       R5 R4 K0 ["container"]
       35 DUPTABLE                         R5 K12 [{"style"}]
       36 GETTABLEKS                       R6 R0 K19 ["LightMode"]
       38 GETTABLEKS                       R6 R6 K14 ["Content"]
       40 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       42 SETTABLEKS                       R6 R5 K11 ["style"]
       44 SETTABLEKS                       R5 R4 K1 ["content"]
       46 SETTABLE                         R4 R2 R3
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K20 ["Warning"]
       50 DUPTABLE                         R4 K2 [{"container", "content"}]
       51 DUPTABLE                         R5 K22 [{["tag"] = "bg-system-warning"}]
       52 SETTABLEKS                       R5 R4 K0 ["container"]
       54 DUPTABLE                         R5 K12 [{"style"}]
       55 GETTABLEKS                       R6 R0 K19 ["LightMode"]
       57 GETTABLEKS                       R6 R6 K14 ["Content"]
       59 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       61 SETTABLEKS                       R6 R5 K11 ["style"]
       63 SETTABLEKS                       R5 R4 K1 ["content"]
       65 SETTABLE                         R4 R2 R3
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K15 ["Emphasis"]
       69 GETUPVAL                         R5 1
       70 GETTABLEKS                       R5 R5 K23 ["FoundationActionEmphasisStatusIndicator"]
       72 JUMPIFNOT                        R5 ; [+16]
       73 DUPTABLE                         R4 K2 [{"container", "content"}]
       74 DUPTABLE                         R5 K25 [{["tag"] = "bg-action-emphasis"}]
       75 SETTABLEKS                       R5 R4 K0 ["container"]
       77 DUPTABLE                         R5 K12 [{"style"}]
       78 GETTABLEKS                       R6 R0 K26 ["Color"]
       80 GETTABLEKS                       R6 R6 K27 ["ActionEmphasis"]
       82 GETTABLEKS                       R6 R6 K28 ["Foreground"]
       84 SETTABLEKS                       R6 R5 K11 ["style"]
       86 SETTABLEKS                       R5 R4 K1 ["content"]
       88 JUMP                             ; [+15]
       89 DUPTABLE                         R4 K2 [{"container", "content"}]
       90 DUPTABLE                         R5 K30 [{["tag"] = "bg-system-emphasis"}]
       91 SETTABLEKS                       R5 R4 K0 ["container"]
       93 DUPTABLE                         R5 K12 [{"style"}]
       94 GETTABLEKS                       R6 R0 K13 ["DarkMode"]
       96 GETTABLEKS                       R6 R6 K14 ["Content"]
       98 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      100 SETTABLEKS                       R6 R5 K11 ["style"]
      102 SETTABLEKS                       R5 R4 K1 ["content"]
      104 SETTABLE                         R4 R2 R3
      105 GETUPVAL                         R3 0
      106 GETTABLEKS                       R3 R3 K31 ["Neutral"]
      108 DUPTABLE                         R4 K2 [{"container", "content"}]
      109 DUPTABLE                         R5 K33 [{["tag"] = "bg-system-neutral"}]
      110 SETTABLEKS                       R5 R4 K0 ["container"]
      112 DUPTABLE                         R5 K12 [{"style"}]
      113 GETTABLEKS                       R6 R0 K34 ["Inverse"]
      115 GETTABLEKS                       R6 R6 K14 ["Content"]
      117 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      119 SETTABLEKS                       R6 R5 K11 ["style"]
      121 SETTABLEKS                       R5 R4 K1 ["content"]
      123 SETTABLE                         R4 R2 R3
      124 GETUPVAL                         R3 0
      125 GETTABLEKS                       R3 R3 K35 ["Standard"]
      127 DUPTABLE                         R4 K2 [{"container", "content"}]
      128 DUPTABLE                         R5 K37 [{["tag"] = "bg-action-standard"}]
      129 SETTABLEKS                       R5 R4 K0 ["container"]
      131 DUPTABLE                         R5 K12 [{"style"}]
      132 GETTABLEKS                       R6 R0 K26 ["Color"]
      134 GETTABLEKS                       R6 R6 K14 ["Content"]
      136 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      138 SETTABLEKS                       R6 R5 K11 ["style"]
      140 SETTABLEKS                       R5 R4 K1 ["content"]
      142 SETTABLE                         R4 R2 R3
      143 GETUPVAL                         R3 0
      144 GETTABLEKS                       R3 R3 K38 ["Contrast_Experiment"]
      146 DUPTABLE                         R4 K2 [{"container", "content"}]
      147 DUPTABLE                         R5 K40 [{["tag"] = "bg-system-contrast"}]
      148 SETTABLEKS                       R5 R4 K0 ["container"]
      150 DUPTABLE                         R5 K12 [{"style"}]
      151 GETTABLEKS                       R6 R0 K34 ["Inverse"]
      153 GETTABLEKS                       R6 R6 K14 ["Content"]
      155 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      157 SETTABLEKS                       R6 R5 K11 ["style"]
      159 SETTABLEKS                       R5 R4 K1 ["content"]
      161 SETTABLE                         R4 R2 R3
      162 NEWTABLE                         R3 2 0
      164 LOADB                            R4 0
      165 DUPTABLE                         R5 K41 [{"container"}]
      166 DUPTABLE                         R6 K43 [{["tag"] = "size-200-200"}]
      167 SETTABLEKS                       R6 R5 K0 ["container"]
      169 SETTABLE                         R5 R3 R4
      170 LOADB                            R4 1
      171 DUPTABLE                         R5 K41 [{"container"}]
      172 DUPTABLE                         R6 K45 [{["tag"] = "row align-x-center align-y-center size-400-400 auto-x padding-xsmall"}]
      173 SETTABLEKS                       R6 R5 K0 ["container"]
      175 SETTABLE                         R5 R3 R4
      176 DUPTABLE                         R4 K49 [{"common", "variants", "hasValue"}]
      177 SETTABLEKS                       R1 R4 K46 ["common"]
      179 SETTABLEKS                       R2 R4 K47 ["variants"]
      181 SETTABLEKS                       R3 R4 K48 ["hasValue"]
      183 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R3 ; [+21]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+19]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Contrast_Experiment"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+5]
       11 GETIMPORT                        R3 K3 [error]
       13 LOADK                            R4 K4 ["Contrast is not a supported StatusIndicator variant."]
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["Alert"]
       18 JUMPIFNOTEQ                      R1 R3 ; [+6]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETIMPORT                        R3 K3 [error]
       23 LOADK                            R4 K6 ["Alert is not a supported numeric StatusIndicator variant."]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K7 ["useVariants"]
       28 LOADK                            R4 K8 ["StatusIndicator"]
       29 GETGLOBAL                        R5 K9 ["variantsFactory"]
       31 MOVE                             R6 R0
       32 CALL                             R3 3 1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R5 R3 K10 ["common"]
       36 GETTABLEKS                       R7 R3 K11 ["variants"]
       38 GETTABLE                         R6 R7 R1
       39 GETTABLEKS                       R8 R3 K12 ["hasValue"]
       41 GETTABLE                         R7 R8 R2
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["StatusIndicatorVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Utility"]
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
       53 GETIMPORT                        R8 K18 [_G]
       55 GETTABLEKS                       R8 R8 K19 ["__DEV__"]
       57 JUMPIFEQKB                       R8 TRUE ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 DUPCLOSURE                       R8 K20 [PROTO_0]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 SETGLOBAL                        R8 K21 ["variantsFactory"]
       66 DUPCLOSURE                       R8 K22 [PROTO_1]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 RETURN                           R8 1
