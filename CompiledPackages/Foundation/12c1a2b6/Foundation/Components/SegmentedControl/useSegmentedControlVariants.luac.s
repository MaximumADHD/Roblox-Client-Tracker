PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "segment", "text", "icon", "divider"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 LOADK                            R3 K8 ["row align-y-center auto-xy bg-surface-300"]
        3 SETTABLEKS                       R3 R2 K6 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K7 [{"tag"}]
        8 LOADK                            R3 K9 ["row align-y-center size-0-full auto-xy"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["segment"]
       13 DUPTABLE                         R2 K7 [{"tag"}]
       14 LOADK                            R3 K10 ["auto-x text-truncate-end content-emphasis"]
       15 SETTABLEKS                       R3 R2 K6 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["text"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K11 ["FoundationSegmentedControlIconSupport"]
       22 JUMPIFNOT                        R3 ; [+10]
       23 DUPTABLE                         R2 K13 [{"style"}]
       24 GETTABLEKS                       R3 R0 K14 ["Color"]
       26 GETTABLEKS                       R3 R3 K15 ["Content"]
       28 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       30 SETTABLEKS                       R3 R2 K12 ["style"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K3 ["icon"]
       36 DUPTABLE                         R2 K7 [{"tag"}]
       37 LOADK                            R3 K17 ["row"]
       38 SETTABLEKS                       R3 R2 K6 ["tag"]
       40 SETTABLEKS                       R2 R1 K4 ["divider"]
       42 NEWTABLE                         R2 4 0
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K18 ["XSmall"]
       47 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       48 DUPTABLE                         R5 K7 [{"tag"}]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K19 ["FoundationSegmentedControlSizePaddingUpdate"]
       52 JUMPIFNOT                        R7 ; [+2]
       53 LOADK                            R6 K20 ["size-600 radius-medium"]
       54 JUMP                             ; [+1]
       55 LOADK                            R6 K21 ["size-600 padding-xsmall radius-small"]
       56 SETTABLEKS                       R6 R5 K6 ["tag"]
       58 SETTABLEKS                       R5 R4 K0 ["container"]
       60 DUPTABLE                         R5 K7 [{"tag"}]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K19 ["FoundationSegmentedControlSizePaddingUpdate"]
       64 JUMPIFNOT                        R7 ; [+2]
       65 LOADK                            R6 K22 ["padding-small radius-medium"]
       66 JUMP                             ; [+1]
       67 LOADK                            R6 K23 ["padding-small radius-small"]
       68 SETTABLEKS                       R6 R5 K6 ["tag"]
       70 SETTABLEKS                       R5 R4 K1 ["segment"]
       72 DUPTABLE                         R5 K7 [{"tag"}]
       73 LOADK                            R6 K24 ["text-caption-small"]
       74 SETTABLEKS                       R6 R5 K6 ["tag"]
       76 SETTABLEKS                       R5 R4 K2 ["text"]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
       81 JUMPIFNOT                        R6 ; [+7]
       82 DUPTABLE                         R5 K26 [{"size"}]
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R6 R6 K27 ["Small"]
       86 SETTABLEKS                       R6 R5 K25 ["size"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R5
       90 SETTABLEKS                       R5 R4 K3 ["icon"]
       92 DUPTABLE                         R5 K29 [{"Size"}]
       93 GETIMPORT                        R6 K32 [UDim2.new]
       95 LOADN                            R7 0
       96 GETTABLEKS                       R8 R0 K33 ["Stroke"]
       98 GETTABLEKS                       R8 R8 K34 ["Standard"]
      100 LOADN                            R9 1
      101 LOADN                            R10 0
      102 CALL                             R6 4 1
      103 SETTABLEKS                       R6 R5 K28 ["Size"]
      105 SETTABLEKS                       R5 R4 K4 ["divider"]
      107 SETTABLE                         R4 R2 R3
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K27 ["Small"]
      111 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      112 DUPTABLE                         R5 K7 [{"tag"}]
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R7 R7 K19 ["FoundationSegmentedControlSizePaddingUpdate"]
      116 JUMPIFNOT                        R7 ; [+2]
      117 LOADK                            R6 K35 ["size-800 radius-medium"]
      118 JUMP                             ; [+1]
      119 LOADK                            R6 K36 ["size-800 padding-xsmall radius-medium"]
      120 SETTABLEKS                       R6 R5 K6 ["tag"]
      122 SETTABLEKS                       R5 R4 K0 ["container"]
      124 DUPTABLE                         R5 K7 [{"tag"}]
      125 GETUPVAL                         R7 0
      126 GETTABLEKS                       R7 R7 K19 ["FoundationSegmentedControlSizePaddingUpdate"]
      128 JUMPIFNOT                        R7 ; [+2]
      129 LOADK                            R6 K22 ["padding-small radius-medium"]
      130 JUMP                             ; [+1]
      131 LOADK                            R6 K23 ["padding-small radius-small"]
      132 SETTABLEKS                       R6 R5 K6 ["tag"]
      134 SETTABLEKS                       R5 R4 K1 ["segment"]
      136 DUPTABLE                         R5 K7 [{"tag"}]
      137 LOADK                            R6 K24 ["text-caption-small"]
      138 SETTABLEKS                       R6 R5 K6 ["tag"]
      140 SETTABLEKS                       R5 R4 K2 ["text"]
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      145 JUMPIFNOT                        R6 ; [+7]
      146 DUPTABLE                         R5 K26 [{"size"}]
      147 GETUPVAL                         R6 2
      148 GETTABLEKS                       R6 R6 K37 ["Medium"]
      150 SETTABLEKS                       R6 R5 K25 ["size"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R5
      154 SETTABLEKS                       R5 R4 K3 ["icon"]
      156 DUPTABLE                         R5 K29 [{"Size"}]
      157 GETIMPORT                        R6 K32 [UDim2.new]
      159 LOADN                            R7 0
      160 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      162 GETTABLEKS                       R8 R8 K34 ["Standard"]
      164 LOADN                            R9 1
      165 LOADN                            R10 0
      166 CALL                             R6 4 1
      167 SETTABLEKS                       R6 R5 K28 ["Size"]
      169 SETTABLEKS                       R5 R4 K4 ["divider"]
      171 SETTABLE                         R4 R2 R3
      172 GETUPVAL                         R3 1
      173 GETTABLEKS                       R3 R3 K37 ["Medium"]
      175 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      176 DUPTABLE                         R5 K7 [{"tag"}]
      177 LOADK                            R6 K38 ["size-1000 padding-xsmall radius-medium"]
      178 SETTABLEKS                       R6 R5 K6 ["tag"]
      180 SETTABLEKS                       R5 R4 K0 ["container"]
      182 DUPTABLE                         R5 K7 [{"tag"}]
      183 LOADK                            R6 K23 ["padding-small radius-small"]
      184 SETTABLEKS                       R6 R5 K6 ["tag"]
      186 SETTABLEKS                       R5 R4 K1 ["segment"]
      188 DUPTABLE                         R5 K7 [{"tag"}]
      189 LOADK                            R6 K39 ["text-caption-medium"]
      190 SETTABLEKS                       R6 R5 K6 ["tag"]
      192 SETTABLEKS                       R5 R4 K2 ["text"]
      194 GETUPVAL                         R6 0
      195 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      197 JUMPIFNOT                        R6 ; [+7]
      198 DUPTABLE                         R5 K26 [{"size"}]
      199 GETUPVAL                         R6 2
      200 GETTABLEKS                       R6 R6 K37 ["Medium"]
      202 SETTABLEKS                       R6 R5 K25 ["size"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R5
      206 SETTABLEKS                       R5 R4 K3 ["icon"]
      208 DUPTABLE                         R5 K29 [{"Size"}]
      209 GETIMPORT                        R6 K32 [UDim2.new]
      211 LOADN                            R7 0
      212 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      214 GETTABLEKS                       R8 R8 K34 ["Standard"]
      216 LOADN                            R9 1
      217 LOADN                            R10 0
      218 CALL                             R6 4 1
      219 SETTABLEKS                       R6 R5 K28 ["Size"]
      221 SETTABLEKS                       R5 R4 K4 ["divider"]
      223 SETTABLE                         R4 R2 R3
      224 GETUPVAL                         R3 1
      225 GETTABLEKS                       R3 R3 K40 ["Large"]
      227 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      228 DUPTABLE                         R5 K7 [{"tag"}]
      229 LOADK                            R6 K41 ["size-1200 padding-xsmall radius-medium"]
      230 SETTABLEKS                       R6 R5 K6 ["tag"]
      232 SETTABLEKS                       R5 R4 K0 ["container"]
      234 DUPTABLE                         R5 K7 [{"tag"}]
      235 LOADK                            R6 K42 ["padding-medium radius-small"]
      236 SETTABLEKS                       R6 R5 K6 ["tag"]
      238 SETTABLEKS                       R5 R4 K1 ["segment"]
      240 DUPTABLE                         R5 K7 [{"tag"}]
      241 LOADK                            R6 K39 ["text-caption-medium"]
      242 SETTABLEKS                       R6 R5 K6 ["tag"]
      244 SETTABLEKS                       R5 R4 K2 ["text"]
      246 GETUPVAL                         R6 0
      247 GETTABLEKS                       R6 R6 K11 ["FoundationSegmentedControlIconSupport"]
      249 JUMPIFNOT                        R6 ; [+7]
      250 DUPTABLE                         R5 K26 [{"size"}]
      251 GETUPVAL                         R6 2
      252 GETTABLEKS                       R6 R6 K40 ["Large"]
      254 SETTABLEKS                       R6 R5 K25 ["size"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R5
      258 SETTABLEKS                       R5 R4 K3 ["icon"]
      260 DUPTABLE                         R5 K29 [{"Size"}]
      261 GETIMPORT                        R6 K32 [UDim2.new]
      263 LOADN                            R7 0
      264 GETTABLEKS                       R8 R0 K33 ["Stroke"]
      266 GETTABLEKS                       R8 R8 K34 ["Standard"]
      268 LOADN                            R9 1
      269 LOADN                            R10 0
      270 CALL                             R6 4 1
      271 SETTABLEKS                       R6 R5 K28 ["Size"]
      273 SETTABLEKS                       R5 R4 K4 ["divider"]
      275 SETTABLE                         R4 R2 R3
      276 DUPTABLE                         R3 K45 [{"common", "sizes"}]
      277 SETTABLEKS                       R1 R3 K43 ["common"]
      279 SETTABLEKS                       R2 R3 K44 ["sizes"]
      281 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["SegmentedControl"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["sizes"]
       12 GETTABLE                         R5 R6 R1
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["IconSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Utility"]
       39 GETTABLEKS                       R6 R6 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Providers"]
       46 GETTABLEKS                       R7 R7 K15 ["Style"]
       48 GETTABLEKS                       R7 R7 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Providers"]
       55 GETTABLEKS                       R8 R8 K15 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R5
       68 RETURN                           R9 1
