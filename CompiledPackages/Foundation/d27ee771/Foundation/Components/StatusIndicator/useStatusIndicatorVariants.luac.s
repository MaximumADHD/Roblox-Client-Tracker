PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["radius-circle"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 NEWTABLE                         R3 2 0
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K6 ["auto-xy text-caption-small"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["FoundationFixBadgeAndIndicatorTextAlignment"]
       16 SETTABLEKS                       R4 R3 K8 ["text-align-x-left"]
       18 SETTABLEKS                       R3 R2 K3 ["tag"]
       20 SETTABLEKS                       R2 R1 K1 ["content"]
       22 NEWTABLE                         R2 8 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K9 ["Alert"]
       27 DUPTABLE                         R4 K2 [{"container", "content"}]
       28 DUPTABLE                         R5 K4 [{"tag"}]
       29 LOADK                            R6 K10 ["bg-system-alert"]
       30 SETTABLEKS                       R6 R5 K3 ["tag"]
       32 SETTABLEKS                       R5 R4 K0 ["container"]
       34 DUPTABLE                         R5 K12 [{"style"}]
       35 GETTABLEKS                       R6 R0 K13 ["DarkMode"]
       37 GETTABLEKS                       R6 R6 K14 ["Content"]
       39 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       41 SETTABLEKS                       R6 R5 K11 ["style"]
       43 SETTABLEKS                       R5 R4 K1 ["content"]
       45 SETTABLE                         R4 R2 R3
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K16 ["Success"]
       49 DUPTABLE                         R4 K2 [{"container", "content"}]
       50 DUPTABLE                         R5 K4 [{"tag"}]
       51 LOADK                            R6 K17 ["bg-system-success"]
       52 SETTABLEKS                       R6 R5 K3 ["tag"]
       54 SETTABLEKS                       R5 R4 K0 ["container"]
       56 DUPTABLE                         R5 K12 [{"style"}]
       57 GETTABLEKS                       R6 R0 K18 ["LightMode"]
       59 GETTABLEKS                       R6 R6 K14 ["Content"]
       61 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       63 SETTABLEKS                       R6 R5 K11 ["style"]
       65 SETTABLEKS                       R5 R4 K1 ["content"]
       67 SETTABLE                         R4 R2 R3
       68 GETUPVAL                         R3 1
       69 GETTABLEKS                       R3 R3 K19 ["Warning"]
       71 DUPTABLE                         R4 K2 [{"container", "content"}]
       72 DUPTABLE                         R5 K4 [{"tag"}]
       73 LOADK                            R6 K20 ["bg-system-warning"]
       74 SETTABLEKS                       R6 R5 K3 ["tag"]
       76 SETTABLEKS                       R5 R4 K0 ["container"]
       78 DUPTABLE                         R5 K12 [{"style"}]
       79 GETTABLEKS                       R6 R0 K18 ["LightMode"]
       81 GETTABLEKS                       R6 R6 K14 ["Content"]
       83 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       85 SETTABLEKS                       R6 R5 K11 ["style"]
       87 SETTABLEKS                       R5 R4 K1 ["content"]
       89 SETTABLE                         R4 R2 R3
       90 GETUPVAL                         R3 1
       91 GETTABLEKS                       R3 R3 K15 ["Emphasis"]
       93 DUPTABLE                         R4 K2 [{"container", "content"}]
       94 DUPTABLE                         R5 K4 [{"tag"}]
       95 LOADK                            R6 K21 ["bg-system-emphasis"]
       96 SETTABLEKS                       R6 R5 K3 ["tag"]
       98 SETTABLEKS                       R5 R4 K0 ["container"]
      100 DUPTABLE                         R5 K12 [{"style"}]
      101 GETTABLEKS                       R6 R0 K13 ["DarkMode"]
      103 GETTABLEKS                       R6 R6 K14 ["Content"]
      105 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      107 SETTABLEKS                       R6 R5 K11 ["style"]
      109 SETTABLEKS                       R5 R4 K1 ["content"]
      111 SETTABLE                         R4 R2 R3
      112 GETUPVAL                         R3 1
      113 GETTABLEKS                       R3 R3 K22 ["Neutral"]
      115 DUPTABLE                         R4 K2 [{"container", "content"}]
      116 DUPTABLE                         R5 K4 [{"tag"}]
      117 LOADK                            R6 K23 ["bg-system-neutral"]
      118 SETTABLEKS                       R6 R5 K3 ["tag"]
      120 SETTABLEKS                       R5 R4 K0 ["container"]
      122 DUPTABLE                         R5 K12 [{"style"}]
      123 GETTABLEKS                       R6 R0 K24 ["Inverse"]
      125 GETTABLEKS                       R6 R6 K14 ["Content"]
      127 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      129 SETTABLEKS                       R6 R5 K11 ["style"]
      131 SETTABLEKS                       R5 R4 K1 ["content"]
      133 SETTABLE                         R4 R2 R3
      134 GETUPVAL                         R3 1
      135 GETTABLEKS                       R3 R3 K25 ["Standard"]
      137 DUPTABLE                         R4 K2 [{"container", "content"}]
      138 DUPTABLE                         R5 K4 [{"tag"}]
      139 LOADK                            R6 K26 ["bg-action-standard"]
      140 SETTABLEKS                       R6 R5 K3 ["tag"]
      142 SETTABLEKS                       R5 R4 K0 ["container"]
      144 DUPTABLE                         R5 K12 [{"style"}]
      145 GETTABLEKS                       R6 R0 K27 ["Color"]
      147 GETTABLEKS                       R6 R6 K14 ["Content"]
      149 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      151 SETTABLEKS                       R6 R5 K11 ["style"]
      153 SETTABLEKS                       R5 R4 K1 ["content"]
      155 SETTABLE                         R4 R2 R3
      156 GETUPVAL                         R3 1
      157 GETTABLEKS                       R3 R3 K28 ["Contrast_Experiment"]
      159 DUPTABLE                         R4 K2 [{"container", "content"}]
      160 DUPTABLE                         R5 K4 [{"tag"}]
      161 LOADK                            R6 K29 ["bg-system-contrast"]
      162 SETTABLEKS                       R6 R5 K3 ["tag"]
      164 SETTABLEKS                       R5 R4 K0 ["container"]
      166 DUPTABLE                         R5 K12 [{"style"}]
      167 GETTABLEKS                       R6 R0 K24 ["Inverse"]
      169 GETTABLEKS                       R6 R6 K14 ["Content"]
      171 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
      173 SETTABLEKS                       R6 R5 K11 ["style"]
      175 SETTABLEKS                       R5 R4 K1 ["content"]
      177 SETTABLE                         R4 R2 R3
      178 NEWTABLE                         R3 2 0
      180 LOADB                            R4 0
      181 DUPTABLE                         R5 K30 [{"container"}]
      182 DUPTABLE                         R6 K4 [{"tag"}]
      183 LOADK                            R7 K31 ["size-200-200"]
      184 SETTABLEKS                       R7 R6 K3 ["tag"]
      186 SETTABLEKS                       R6 R5 K0 ["container"]
      188 SETTABLE                         R5 R3 R4
      189 LOADB                            R4 1
      190 DUPTABLE                         R5 K30 [{"container"}]
      191 DUPTABLE                         R6 K4 [{"tag"}]
      192 LOADK                            R7 K32 ["size-400-400 auto-x row align-y-center align-x-center padding-xsmall"]
      193 SETTABLEKS                       R7 R6 K3 ["tag"]
      195 SETTABLEKS                       R6 R5 K0 ["container"]
      197 SETTABLE                         R5 R3 R4
      198 DUPTABLE                         R4 K36 [{"common", "variants", "hasValue"}]
      199 SETTABLEKS                       R1 R4 K33 ["common"]
      201 SETTABLEKS                       R2 R4 K34 ["variants"]
      203 SETTABLEKS                       R3 R4 K35 ["hasValue"]
      205 RETURN                           R4 1

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
