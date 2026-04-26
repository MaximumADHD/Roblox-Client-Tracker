PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["radius-circle"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 LOADK                            R3 K6 ["auto-xy text-caption-small text-align-x-left"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["content"]
       13 NEWTABLE                         R2 8 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K7 ["Alert"]
       18 DUPTABLE                         R4 K2 [{"container", "content"}]
       19 DUPTABLE                         R5 K4 [{"tag"}]
       20 LOADK                            R6 K8 ["bg-system-alert"]
       21 SETTABLEKS                       R6 R5 K3 ["tag"]
       23 SETTABLEKS                       R5 R4 K0 ["container"]
       25 DUPTABLE                         R5 K10 [{"style"}]
       26 GETTABLEKS                       R8 R0 K11 ["DarkMode"]
       28 GETTABLEKS                       R7 R8 K12 ["Content"]
       30 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
       32 SETTABLEKS                       R6 R5 K9 ["style"]
       34 SETTABLEKS                       R5 R4 K1 ["content"]
       36 SETTABLE                         R4 R2 R3
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K14 ["Success"]
       40 DUPTABLE                         R4 K2 [{"container", "content"}]
       41 DUPTABLE                         R5 K4 [{"tag"}]
       42 LOADK                            R6 K15 ["bg-system-success"]
       43 SETTABLEKS                       R6 R5 K3 ["tag"]
       45 SETTABLEKS                       R5 R4 K0 ["container"]
       47 DUPTABLE                         R5 K10 [{"style"}]
       48 GETTABLEKS                       R8 R0 K16 ["LightMode"]
       50 GETTABLEKS                       R7 R8 K12 ["Content"]
       52 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
       54 SETTABLEKS                       R6 R5 K9 ["style"]
       56 SETTABLEKS                       R5 R4 K1 ["content"]
       58 SETTABLE                         R4 R2 R3
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K17 ["Warning"]
       62 DUPTABLE                         R4 K2 [{"container", "content"}]
       63 DUPTABLE                         R5 K4 [{"tag"}]
       64 LOADK                            R6 K18 ["bg-system-warning"]
       65 SETTABLEKS                       R6 R5 K3 ["tag"]
       67 SETTABLEKS                       R5 R4 K0 ["container"]
       69 DUPTABLE                         R5 K10 [{"style"}]
       70 GETTABLEKS                       R8 R0 K16 ["LightMode"]
       72 GETTABLEKS                       R7 R8 K12 ["Content"]
       74 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
       76 SETTABLEKS                       R6 R5 K9 ["style"]
       78 SETTABLEKS                       R5 R4 K1 ["content"]
       80 SETTABLE                         R4 R2 R3
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R3 R4 K13 ["Emphasis"]
       84 DUPTABLE                         R4 K2 [{"container", "content"}]
       85 DUPTABLE                         R5 K4 [{"tag"}]
       86 LOADK                            R6 K19 ["bg-system-emphasis"]
       87 SETTABLEKS                       R6 R5 K3 ["tag"]
       89 SETTABLEKS                       R5 R4 K0 ["container"]
       91 DUPTABLE                         R5 K10 [{"style"}]
       92 GETTABLEKS                       R8 R0 K11 ["DarkMode"]
       94 GETTABLEKS                       R7 R8 K12 ["Content"]
       96 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
       98 SETTABLEKS                       R6 R5 K9 ["style"]
      100 SETTABLEKS                       R5 R4 K1 ["content"]
      102 SETTABLE                         R4 R2 R3
      103 GETUPVAL                         R4 0
      104 GETTABLEKS                       R3 R4 K20 ["Neutral"]
      106 DUPTABLE                         R4 K2 [{"container", "content"}]
      107 DUPTABLE                         R5 K4 [{"tag"}]
      108 LOADK                            R6 K21 ["bg-system-neutral"]
      109 SETTABLEKS                       R6 R5 K3 ["tag"]
      111 SETTABLEKS                       R5 R4 K0 ["container"]
      113 DUPTABLE                         R5 K10 [{"style"}]
      114 GETTABLEKS                       R8 R0 K22 ["Inverse"]
      116 GETTABLEKS                       R7 R8 K12 ["Content"]
      118 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
      120 SETTABLEKS                       R6 R5 K9 ["style"]
      122 SETTABLEKS                       R5 R4 K1 ["content"]
      124 SETTABLE                         R4 R2 R3
      125 GETUPVAL                         R4 0
      126 GETTABLEKS                       R3 R4 K23 ["Standard"]
      128 DUPTABLE                         R4 K2 [{"container", "content"}]
      129 DUPTABLE                         R5 K4 [{"tag"}]
      130 LOADK                            R6 K24 ["bg-action-standard"]
      131 SETTABLEKS                       R6 R5 K3 ["tag"]
      133 SETTABLEKS                       R5 R4 K0 ["container"]
      135 DUPTABLE                         R5 K10 [{"style"}]
      136 GETTABLEKS                       R8 R0 K25 ["Color"]
      138 GETTABLEKS                       R7 R8 K12 ["Content"]
      140 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
      142 SETTABLEKS                       R6 R5 K9 ["style"]
      144 SETTABLEKS                       R5 R4 K1 ["content"]
      146 SETTABLE                         R4 R2 R3
      147 GETUPVAL                         R4 0
      148 GETTABLEKS                       R3 R4 K26 ["Contrast_Experiment"]
      150 DUPTABLE                         R4 K2 [{"container", "content"}]
      151 DUPTABLE                         R5 K4 [{"tag"}]
      152 LOADK                            R6 K27 ["bg-system-contrast"]
      153 SETTABLEKS                       R6 R5 K3 ["tag"]
      155 SETTABLEKS                       R5 R4 K0 ["container"]
      157 DUPTABLE                         R5 K10 [{"style"}]
      158 GETTABLEKS                       R8 R0 K22 ["Inverse"]
      160 GETTABLEKS                       R7 R8 K12 ["Content"]
      162 GETTABLEKS                       R6 R7 K13 ["Emphasis"]
      164 SETTABLEKS                       R6 R5 K9 ["style"]
      166 SETTABLEKS                       R5 R4 K1 ["content"]
      168 SETTABLE                         R4 R2 R3
      169 NEWTABLE                         R3 2 0
      171 LOADB                            R4 0
      172 DUPTABLE                         R5 K28 [{"container"}]
      173 DUPTABLE                         R6 K4 [{"tag"}]
      174 LOADK                            R7 K29 ["size-200-200"]
      175 SETTABLEKS                       R7 R6 K3 ["tag"]
      177 SETTABLEKS                       R6 R5 K0 ["container"]
      179 SETTABLE                         R5 R3 R4
      180 LOADB                            R4 1
      181 DUPTABLE                         R5 K28 [{"container"}]
      182 DUPTABLE                         R6 K4 [{"tag"}]
      183 LOADK                            R7 K30 ["row align-x-center align-y-center size-400-400 auto-x padding-xsmall"]
      184 SETTABLEKS                       R7 R6 K3 ["tag"]
      186 SETTABLEKS                       R6 R5 K0 ["container"]
      188 SETTABLE                         R5 R3 R4
      189 DUPTABLE                         R4 K34 [{"common", "variants", "hasValue"}]
      190 SETTABLEKS                       R1 R4 K31 ["common"]
      192 SETTABLEKS                       R2 R4 K32 ["variants"]
      194 SETTABLEKS                       R3 R4 K33 ["hasValue"]
      196 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R3 ; [+19]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Contrast_Experiment"]
        7 JUMPIFNOTEQ                      R1 R3 ; [+5]
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R4 K4 ["Contrast is not a supported StatusIndicator variant."]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K5 ["Alert"]
       16 JUMPIFNOTEQ                      R1 R3 ; [+6]
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETIMPORT                        R3 K3 [error]
       21 LOADK                            R4 K6 ["Alert is not a supported numeric StatusIndicator variant."]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K7 ["useVariants"]
       26 LOADK                            R4 K8 ["StatusIndicator"]
       27 GETGLOBAL                        R5 K9 ["variantsFactory"]
       29 MOVE                             R6 R0
       30 CALL                             R3 3 1
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R5 R3 K10 ["common"]
       34 GETTABLEKS                       R7 R3 K11 ["variants"]
       36 GETTABLE                         R6 R7 R1
       37 GETTABLEKS                       R8 R3 K12 ["hasValue"]
       39 GETTABLE                         R7 R8 R2
       40 CALL                             R4 3 -1
       41 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["StatusIndicatorVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R5 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Utility"]
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
       54 CAPTURE                          VAL R2
       55 SETGLOBAL                        R7 K18 ["variantsFactory"]
       57 DUPCLOSURE                       R7 K19 [PROTO_1]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 RETURN                           R7 1
