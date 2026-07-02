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
       69 DUPTABLE                         R4 K2 [{"container", "content"}]
       70 DUPTABLE                         R5 K24 [{["tag"] = "bg-system-emphasis"}]
       71 SETTABLEKS                       R5 R4 K0 ["container"]
       73 DUPTABLE                         R5 K12 [{"style"}]
       74 GETTABLEKS                       R6 R0 K13 ["DarkMode"]
       76 GETTABLEKS                       R6 R6 K14 ["Content"]
       78 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       80 SETTABLEKS                       R6 R5 K11 ["style"]
       82 SETTABLEKS                       R5 R4 K1 ["content"]
       84 SETTABLE                         R4 R2 R3
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R3 R3 K25 ["Neutral"]
       88 DUPTABLE                         R4 K2 [{"container", "content"}]
       89 DUPTABLE                         R5 K27 [{["tag"] = "bg-system-neutral"}]
       90 SETTABLEKS                       R5 R4 K0 ["container"]
       92 DUPTABLE                         R5 K12 [{"style"}]
       93 GETTABLEKS                       R6 R0 K28 ["Inverse"]
       95 GETTABLEKS                       R6 R6 K14 ["Content"]
       97 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       99 SETTABLEKS                       R6 R5 K11 ["style"]
      101 SETTABLEKS                       R5 R4 K1 ["content"]
      103 SETTABLE                         R4 R2 R3
      104 GETUPVAL                         R3 0
      105 GETTABLEKS                       R3 R3 K29 ["Standard"]
      107 DUPTABLE                         R4 K2 [{"container", "content"}]
      108 DUPTABLE                         R5 K31 [{["tag"] = "bg-action-standard"}]
      109 SETTABLEKS                       R5 R4 K0 ["container"]
      111 DUPTABLE                         R5 K12 [{"style"}]
      112 GETTABLEKS                       R6 R0 K32 ["Color"]
      114 GETTABLEKS                       R6 R6 K14 ["Content"]
      116 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      118 SETTABLEKS                       R6 R5 K11 ["style"]
      120 SETTABLEKS                       R5 R4 K1 ["content"]
      122 SETTABLE                         R4 R2 R3
      123 GETUPVAL                         R3 0
      124 GETTABLEKS                       R3 R3 K33 ["Contrast_Experiment"]
      126 DUPTABLE                         R4 K2 [{"container", "content"}]
      127 DUPTABLE                         R5 K35 [{["tag"] = "bg-system-contrast"}]
      128 SETTABLEKS                       R5 R4 K0 ["container"]
      130 DUPTABLE                         R5 K12 [{"style"}]
      131 GETTABLEKS                       R6 R0 K28 ["Inverse"]
      133 GETTABLEKS                       R6 R6 K14 ["Content"]
      135 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      137 SETTABLEKS                       R6 R5 K11 ["style"]
      139 SETTABLEKS                       R5 R4 K1 ["content"]
      141 SETTABLE                         R4 R2 R3
      142 NEWTABLE                         R3 2 0
      144 LOADB                            R4 0
      145 DUPTABLE                         R5 K36 [{"container"}]
      146 DUPTABLE                         R6 K38 [{["tag"] = "size-200-200"}]
      147 SETTABLEKS                       R6 R5 K0 ["container"]
      149 SETTABLE                         R5 R3 R4
      150 LOADB                            R4 1
      151 DUPTABLE                         R5 K36 [{"container"}]
      152 DUPTABLE                         R6 K40 [{["tag"] = "size-400-400 auto-x row align-y-center align-x-center padding-xsmall"}]
      153 SETTABLEKS                       R6 R5 K0 ["container"]
      155 SETTABLE                         R5 R3 R4
      156 DUPTABLE                         R4 K44 [{"common", "variants", "hasValue"}]
      157 SETTABLEKS                       R1 R4 K41 ["common"]
      159 SETTABLEKS                       R2 R4 K42 ["variants"]
      161 SETTABLEKS                       R3 R4 K43 ["hasValue"]
      163 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R3 ; [+19]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Contrast_Experiment"]
        7 JUMPIFNOTEQ                      R1 R3 ; [+5]
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R4 K4 ["Contrast is not a supported StatusIndicator variant."]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["Alert"]
       16 JUMPIFNOTEQ                      R1 R3 ; [+6]
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETIMPORT                        R3 K3 [error]
       21 LOADK                            R4 K6 ["Alert is not a supported numeric StatusIndicator variant."]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K7 ["useVariants"]
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
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 SETGLOBAL                        R7 K18 ["variantsFactory"]
       57 DUPCLOSURE                       R7 K19 [PROTO_1]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 RETURN                           R7 1
