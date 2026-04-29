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
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K11 ["FoundationSegmentedControlIconSupport"]
       22 JUMPIFNOT                        R3 ; [+10]
       23 DUPTABLE                         R2 K13 [{"style"}]
       24 GETTABLEKS                       R5 R0 K14 ["Color"]
       26 GETTABLEKS                       R4 R5 K15 ["Content"]
       28 GETTABLEKS                       R3 R4 K16 ["Emphasis"]
       30 SETTABLEKS                       R3 R2 K12 ["style"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K3 ["icon"]
       36 DUPTABLE                         R2 K7 [{"tag"}]
       37 LOADK                            R3 K17 ["row"]
       38 SETTABLEKS                       R3 R2 K6 ["tag"]
       40 SETTABLEKS                       R2 R1 K4 ["divider"]
       42 NEWTABLE                         R2 4 0
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R3 R4 K18 ["XSmall"]
       47 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       48 DUPTABLE                         R5 K7 [{"tag"}]
       49 LOADK                            R6 K19 ["size-600 padding-xsmall radius-small"]
       50 SETTABLEKS                       R6 R5 K6 ["tag"]
       52 SETTABLEKS                       R5 R4 K0 ["container"]
       54 DUPTABLE                         R5 K7 [{"tag"}]
       55 LOADK                            R6 K20 ["padding-small radius-small"]
       56 SETTABLEKS                       R6 R5 K6 ["tag"]
       58 SETTABLEKS                       R5 R4 K1 ["segment"]
       60 DUPTABLE                         R5 K7 [{"tag"}]
       61 LOADK                            R6 K21 ["text-caption-small"]
       62 SETTABLEKS                       R6 R5 K6 ["tag"]
       64 SETTABLEKS                       R5 R4 K2 ["text"]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R6 R7 K11 ["FoundationSegmentedControlIconSupport"]
       69 JUMPIFNOT                        R6 ; [+7]
       70 DUPTABLE                         R5 K23 [{"size"}]
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R6 R7 K24 ["Small"]
       74 SETTABLEKS                       R6 R5 K22 ["size"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R5
       78 SETTABLEKS                       R5 R4 K3 ["icon"]
       80 DUPTABLE                         R5 K26 [{"Size"}]
       81 GETIMPORT                        R6 K29 [UDim2.new]
       83 LOADN                            R7 0
       84 GETTABLEKS                       R9 R0 K30 ["Stroke"]
       86 GETTABLEKS                       R8 R9 K31 ["Standard"]
       88 LOADN                            R9 1
       89 LOADN                            R10 0
       90 CALL                             R6 4 1
       91 SETTABLEKS                       R6 R5 K25 ["Size"]
       93 SETTABLEKS                       R5 R4 K4 ["divider"]
       95 SETTABLE                         R4 R2 R3
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R3 R4 K24 ["Small"]
       99 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      100 DUPTABLE                         R5 K7 [{"tag"}]
      101 LOADK                            R6 K32 ["size-800 padding-xsmall radius-medium"]
      102 SETTABLEKS                       R6 R5 K6 ["tag"]
      104 SETTABLEKS                       R5 R4 K0 ["container"]
      106 DUPTABLE                         R5 K7 [{"tag"}]
      107 LOADK                            R6 K20 ["padding-small radius-small"]
      108 SETTABLEKS                       R6 R5 K6 ["tag"]
      110 SETTABLEKS                       R5 R4 K1 ["segment"]
      112 DUPTABLE                         R5 K7 [{"tag"}]
      113 LOADK                            R6 K21 ["text-caption-small"]
      114 SETTABLEKS                       R6 R5 K6 ["tag"]
      116 SETTABLEKS                       R5 R4 K2 ["text"]
      118 GETUPVAL                         R7 0
      119 GETTABLEKS                       R6 R7 K11 ["FoundationSegmentedControlIconSupport"]
      121 JUMPIFNOT                        R6 ; [+7]
      122 DUPTABLE                         R5 K23 [{"size"}]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R6 R7 K33 ["Medium"]
      126 SETTABLEKS                       R6 R5 K22 ["size"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R5
      130 SETTABLEKS                       R5 R4 K3 ["icon"]
      132 DUPTABLE                         R5 K26 [{"Size"}]
      133 GETIMPORT                        R6 K29 [UDim2.new]
      135 LOADN                            R7 0
      136 GETTABLEKS                       R9 R0 K30 ["Stroke"]
      138 GETTABLEKS                       R8 R9 K31 ["Standard"]
      140 LOADN                            R9 1
      141 LOADN                            R10 0
      142 CALL                             R6 4 1
      143 SETTABLEKS                       R6 R5 K25 ["Size"]
      145 SETTABLEKS                       R5 R4 K4 ["divider"]
      147 SETTABLE                         R4 R2 R3
      148 GETUPVAL                         R4 1
      149 GETTABLEKS                       R3 R4 K33 ["Medium"]
      151 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      152 DUPTABLE                         R5 K7 [{"tag"}]
      153 LOADK                            R6 K34 ["size-1000 padding-xsmall radius-medium"]
      154 SETTABLEKS                       R6 R5 K6 ["tag"]
      156 SETTABLEKS                       R5 R4 K0 ["container"]
      158 DUPTABLE                         R5 K7 [{"tag"}]
      159 LOADK                            R6 K20 ["padding-small radius-small"]
      160 SETTABLEKS                       R6 R5 K6 ["tag"]
      162 SETTABLEKS                       R5 R4 K1 ["segment"]
      164 DUPTABLE                         R5 K7 [{"tag"}]
      165 LOADK                            R6 K35 ["text-caption-medium"]
      166 SETTABLEKS                       R6 R5 K6 ["tag"]
      168 SETTABLEKS                       R5 R4 K2 ["text"]
      170 GETUPVAL                         R7 0
      171 GETTABLEKS                       R6 R7 K11 ["FoundationSegmentedControlIconSupport"]
      173 JUMPIFNOT                        R6 ; [+7]
      174 DUPTABLE                         R5 K23 [{"size"}]
      175 GETUPVAL                         R7 2
      176 GETTABLEKS                       R6 R7 K33 ["Medium"]
      178 SETTABLEKS                       R6 R5 K22 ["size"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R5
      182 SETTABLEKS                       R5 R4 K3 ["icon"]
      184 DUPTABLE                         R5 K26 [{"Size"}]
      185 GETIMPORT                        R6 K29 [UDim2.new]
      187 LOADN                            R7 0
      188 GETTABLEKS                       R9 R0 K30 ["Stroke"]
      190 GETTABLEKS                       R8 R9 K31 ["Standard"]
      192 LOADN                            R9 1
      193 LOADN                            R10 0
      194 CALL                             R6 4 1
      195 SETTABLEKS                       R6 R5 K25 ["Size"]
      197 SETTABLEKS                       R5 R4 K4 ["divider"]
      199 SETTABLE                         R4 R2 R3
      200 GETUPVAL                         R4 1
      201 GETTABLEKS                       R3 R4 K36 ["Large"]
      203 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      204 DUPTABLE                         R5 K7 [{"tag"}]
      205 LOADK                            R6 K37 ["size-1200 padding-xsmall radius-medium"]
      206 SETTABLEKS                       R6 R5 K6 ["tag"]
      208 SETTABLEKS                       R5 R4 K0 ["container"]
      210 DUPTABLE                         R5 K7 [{"tag"}]
      211 LOADK                            R6 K38 ["padding-medium radius-small"]
      212 SETTABLEKS                       R6 R5 K6 ["tag"]
      214 SETTABLEKS                       R5 R4 K1 ["segment"]
      216 DUPTABLE                         R5 K7 [{"tag"}]
      217 LOADK                            R6 K35 ["text-caption-medium"]
      218 SETTABLEKS                       R6 R5 K6 ["tag"]
      220 SETTABLEKS                       R5 R4 K2 ["text"]
      222 GETUPVAL                         R7 0
      223 GETTABLEKS                       R6 R7 K11 ["FoundationSegmentedControlIconSupport"]
      225 JUMPIFNOT                        R6 ; [+7]
      226 DUPTABLE                         R5 K23 [{"size"}]
      227 GETUPVAL                         R7 2
      228 GETTABLEKS                       R6 R7 K36 ["Large"]
      230 SETTABLEKS                       R6 R5 K22 ["size"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R5
      234 SETTABLEKS                       R5 R4 K3 ["icon"]
      236 DUPTABLE                         R5 K26 [{"Size"}]
      237 GETIMPORT                        R6 K29 [UDim2.new]
      239 LOADN                            R7 0
      240 GETTABLEKS                       R9 R0 K30 ["Stroke"]
      242 GETTABLEKS                       R8 R9 K31 ["Standard"]
      244 LOADN                            R9 1
      245 LOADN                            R10 0
      246 CALL                             R6 4 1
      247 SETTABLEKS                       R6 R5 K25 ["Size"]
      249 SETTABLEKS                       R5 R4 K4 ["divider"]
      251 SETTABLE                         R4 R2 R3
      252 DUPTABLE                         R3 K41 [{"common", "sizes"}]
      253 SETTABLEKS                       R1 R3 K39 ["common"]
      255 SETTABLEKS                       R2 R3 K40 ["sizes"]
      257 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["IconSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Utility"]
       39 GETTABLEKS                       R6 R7 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R9 K15 ["Style"]
       48 GETTABLEKS                       R7 R8 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Providers"]
       55 GETTABLEKS                       R9 R10 K15 ["Style"]
       57 GETTABLEKS                       R8 R9 K17 ["VariantsContext"]
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
