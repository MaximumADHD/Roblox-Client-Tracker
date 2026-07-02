PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "radius-circle"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K6 [{"tag"}]
        5 NEWTABLE                         R3 2 0
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K7 ["auto-xy text-caption-small"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K8 ["FoundationFixBadgeAndIndicatorTextAlignment"]
       13 SETTABLEKS                       R4 R3 K9 ["text-align-x-left"]
       15 SETTABLEKS                       R3 R2 K3 ["tag"]
       17 SETTABLEKS                       R2 R1 K1 ["content"]
       19 NEWTABLE                         R2 8 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K10 ["Alert"]
       24 DUPTABLE                         R4 K2 [{"container", "content"}]
       25 DUPTABLE                         R5 K12 [{["tag"] = "bg-system-alert"}]
       26 SETTABLEKS                       R5 R4 K0 ["container"]
       28 DUPTABLE                         R5 K14 [{"style"}]
       29 GETTABLEKS                       R6 R0 K15 ["DarkMode"]
       31 GETTABLEKS                       R6 R6 K16 ["Content"]
       33 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       35 SETTABLEKS                       R6 R5 K13 ["style"]
       37 SETTABLEKS                       R5 R4 K1 ["content"]
       39 SETTABLE                         R4 R2 R3
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K18 ["Success"]
       43 DUPTABLE                         R4 K2 [{"container", "content"}]
       44 DUPTABLE                         R5 K20 [{["tag"] = "bg-system-success"}]
       45 SETTABLEKS                       R5 R4 K0 ["container"]
       47 DUPTABLE                         R5 K14 [{"style"}]
       48 GETTABLEKS                       R6 R0 K21 ["LightMode"]
       50 GETTABLEKS                       R6 R6 K16 ["Content"]
       52 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       54 SETTABLEKS                       R6 R5 K13 ["style"]
       56 SETTABLEKS                       R5 R4 K1 ["content"]
       58 SETTABLE                         R4 R2 R3
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R3 R3 K22 ["Warning"]
       62 DUPTABLE                         R4 K2 [{"container", "content"}]
       63 DUPTABLE                         R5 K24 [{["tag"] = "bg-system-warning"}]
       64 SETTABLEKS                       R5 R4 K0 ["container"]
       66 DUPTABLE                         R5 K14 [{"style"}]
       67 GETTABLEKS                       R6 R0 K21 ["LightMode"]
       69 GETTABLEKS                       R6 R6 K16 ["Content"]
       71 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       73 SETTABLEKS                       R6 R5 K13 ["style"]
       75 SETTABLEKS                       R5 R4 K1 ["content"]
       77 SETTABLE                         R4 R2 R3
       78 GETUPVAL                         R3 1
       79 GETTABLEKS                       R3 R3 K17 ["Emphasis"]
       81 DUPTABLE                         R4 K2 [{"container", "content"}]
       82 DUPTABLE                         R5 K26 [{["tag"] = "bg-system-emphasis"}]
       83 SETTABLEKS                       R5 R4 K0 ["container"]
       85 DUPTABLE                         R5 K14 [{"style"}]
       86 GETTABLEKS                       R6 R0 K15 ["DarkMode"]
       88 GETTABLEKS                       R6 R6 K16 ["Content"]
       90 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       92 SETTABLEKS                       R6 R5 K13 ["style"]
       94 SETTABLEKS                       R5 R4 K1 ["content"]
       96 SETTABLE                         R4 R2 R3
       97 GETUPVAL                         R3 1
       98 GETTABLEKS                       R3 R3 K27 ["Neutral"]
      100 DUPTABLE                         R4 K2 [{"container", "content"}]
      101 DUPTABLE                         R5 K29 [{["tag"] = "bg-system-neutral"}]
      102 SETTABLEKS                       R5 R4 K0 ["container"]
      104 DUPTABLE                         R5 K14 [{"style"}]
      105 GETTABLEKS                       R6 R0 K30 ["Inverse"]
      107 GETTABLEKS                       R6 R6 K16 ["Content"]
      109 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      111 SETTABLEKS                       R6 R5 K13 ["style"]
      113 SETTABLEKS                       R5 R4 K1 ["content"]
      115 SETTABLE                         R4 R2 R3
      116 GETUPVAL                         R3 1
      117 GETTABLEKS                       R3 R3 K31 ["Standard"]
      119 DUPTABLE                         R4 K2 [{"container", "content"}]
      120 DUPTABLE                         R5 K33 [{["tag"] = "bg-action-standard"}]
      121 SETTABLEKS                       R5 R4 K0 ["container"]
      123 DUPTABLE                         R5 K14 [{"style"}]
      124 GETTABLEKS                       R6 R0 K34 ["Color"]
      126 GETTABLEKS                       R6 R6 K16 ["Content"]
      128 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      130 SETTABLEKS                       R6 R5 K13 ["style"]
      132 SETTABLEKS                       R5 R4 K1 ["content"]
      134 SETTABLE                         R4 R2 R3
      135 GETUPVAL                         R3 1
      136 GETTABLEKS                       R3 R3 K35 ["Contrast_Experiment"]
      138 DUPTABLE                         R4 K2 [{"container", "content"}]
      139 DUPTABLE                         R5 K37 [{["tag"] = "bg-system-contrast"}]
      140 SETTABLEKS                       R5 R4 K0 ["container"]
      142 DUPTABLE                         R5 K14 [{"style"}]
      143 GETTABLEKS                       R6 R0 K30 ["Inverse"]
      145 GETTABLEKS                       R6 R6 K16 ["Content"]
      147 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      149 SETTABLEKS                       R6 R5 K13 ["style"]
      151 SETTABLEKS                       R5 R4 K1 ["content"]
      153 SETTABLE                         R4 R2 R3
      154 NEWTABLE                         R3 2 0
      156 LOADB                            R4 0
      157 DUPTABLE                         R5 K38 [{"container"}]
      158 DUPTABLE                         R6 K40 [{["tag"] = "size-200-200"}]
      159 SETTABLEKS                       R6 R5 K0 ["container"]
      161 SETTABLE                         R5 R3 R4
      162 LOADB                            R4 1
      163 DUPTABLE                         R5 K38 [{"container"}]
      164 DUPTABLE                         R6 K42 [{["tag"] = "size-400-400 auto-x row align-y-center align-x-center padding-xsmall"}]
      165 SETTABLEKS                       R6 R5 K0 ["container"]
      167 SETTABLE                         R5 R3 R4
      168 DUPTABLE                         R4 K46 [{"common", "variants", "hasValue"}]
      169 SETTABLEKS                       R1 R4 K43 ["common"]
      171 SETTABLEKS                       R2 R4 K44 ["variants"]
      173 SETTABLEKS                       R3 R4 K45 ["hasValue"]
      175 RETURN                           R4 1

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
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 SETGLOBAL                        R7 K18 ["variantsFactory"]
       58 DUPCLOSURE                       R7 K19 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 RETURN                           R7 1
