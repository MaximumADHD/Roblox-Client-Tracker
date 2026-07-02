PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "segment", "text", "icon", "divider"}]
        1 DUPTABLE                         R2 K8 [{["tag"] = "row align-y-center auto-xy bg-surface-300"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K10 [{["tag"] = "row align-y-center size-0-full auto-xy"}]
        5 SETTABLEKS                       R2 R1 K1 ["segment"]
        7 DUPTABLE                         R2 K12 [{["tag"] = "auto-x text-truncate-end content-emphasis"}]
        8 SETTABLEKS                       R2 R1 K2 ["text"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K13 ["FoundationSegmentedControlIconSupport"]
       13 JUMPIFNOT                        R3 ; [+10]
       14 DUPTABLE                         R2 K15 [{"style"}]
       15 GETTABLEKS                       R3 R0 K16 ["Color"]
       17 GETTABLEKS                       R3 R3 K17 ["Content"]
       19 GETTABLEKS                       R3 R3 K18 ["Emphasis"]
       21 SETTABLEKS                       R3 R2 K14 ["style"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K3 ["icon"]
       27 DUPTABLE                         R2 K20 [{["tag"] = "row"}]
       28 SETTABLEKS                       R2 R1 K4 ["divider"]
       30 NEWTABLE                         R2 4 0
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K21 ["XSmall"]
       35 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       36 DUPTABLE                         R5 K22 [{"tag"}]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K23 ["FoundationSegmentedControlSizePaddingUpdate"]
       40 JUMPIFNOT                        R7 ; [+2]
       41 LOADK                            R6 K24 ["size-600 radius-medium"]
       42 JUMP                             ; [+1]
       43 LOADK                            R6 K25 ["size-600 padding-xsmall radius-small"]
       44 SETTABLEKS                       R6 R5 K6 ["tag"]
       46 SETTABLEKS                       R5 R4 K0 ["container"]
       48 DUPTABLE                         R5 K22 [{"tag"}]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K23 ["FoundationSegmentedControlSizePaddingUpdate"]
       52 JUMPIFNOT                        R7 ; [+2]
       53 LOADK                            R6 K26 ["padding-small radius-medium"]
       54 JUMP                             ; [+1]
       55 LOADK                            R6 K27 ["padding-small radius-small"]
       56 SETTABLEKS                       R6 R5 K6 ["tag"]
       58 SETTABLEKS                       R5 R4 K1 ["segment"]
       60 DUPTABLE                         R5 K29 [{["tag"] = "text-caption-small"}]
       61 SETTABLEKS                       R5 R4 K2 ["text"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
       66 JUMPIFNOT                        R6 ; [+7]
       67 DUPTABLE                         R5 K31 [{"size"}]
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R6 R6 K32 ["Small"]
       71 SETTABLEKS                       R6 R5 K30 ["size"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R5
       75 SETTABLEKS                       R5 R4 K3 ["icon"]
       77 DUPTABLE                         R5 K34 [{"Size"}]
       78 GETIMPORT                        R6 K37 [UDim2.new]
       80 LOADN                            R7 0
       81 GETTABLEKS                       R8 R0 K38 ["Stroke"]
       83 GETTABLEKS                       R8 R8 K39 ["Standard"]
       85 LOADN                            R9 1
       86 LOADN                            R10 0
       87 CALL                             R6 4 1
       88 SETTABLEKS                       R6 R5 K33 ["Size"]
       90 SETTABLEKS                       R5 R4 K4 ["divider"]
       92 SETTABLE                         R4 R2 R3
       93 GETUPVAL                         R3 1
       94 GETTABLEKS                       R3 R3 K32 ["Small"]
       96 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
       97 DUPTABLE                         R5 K22 [{"tag"}]
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R7 R7 K23 ["FoundationSegmentedControlSizePaddingUpdate"]
      101 JUMPIFNOT                        R7 ; [+2]
      102 LOADK                            R6 K40 ["size-800 radius-medium"]
      103 JUMP                             ; [+1]
      104 LOADK                            R6 K41 ["size-800 padding-xsmall radius-medium"]
      105 SETTABLEKS                       R6 R5 K6 ["tag"]
      107 SETTABLEKS                       R5 R4 K0 ["container"]
      109 DUPTABLE                         R5 K22 [{"tag"}]
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R7 R7 K23 ["FoundationSegmentedControlSizePaddingUpdate"]
      113 JUMPIFNOT                        R7 ; [+2]
      114 LOADK                            R6 K26 ["padding-small radius-medium"]
      115 JUMP                             ; [+1]
      116 LOADK                            R6 K27 ["padding-small radius-small"]
      117 SETTABLEKS                       R6 R5 K6 ["tag"]
      119 SETTABLEKS                       R5 R4 K1 ["segment"]
      121 DUPTABLE                         R5 K29 [{["tag"] = "text-caption-small"}]
      122 SETTABLEKS                       R5 R4 K2 ["text"]
      124 GETUPVAL                         R6 0
      125 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      127 JUMPIFNOT                        R6 ; [+7]
      128 DUPTABLE                         R5 K31 [{"size"}]
      129 GETUPVAL                         R6 2
      130 GETTABLEKS                       R6 R6 K42 ["Medium"]
      132 SETTABLEKS                       R6 R5 K30 ["size"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R5
      136 SETTABLEKS                       R5 R4 K3 ["icon"]
      138 DUPTABLE                         R5 K34 [{"Size"}]
      139 GETIMPORT                        R6 K37 [UDim2.new]
      141 LOADN                            R7 0
      142 GETTABLEKS                       R8 R0 K38 ["Stroke"]
      144 GETTABLEKS                       R8 R8 K39 ["Standard"]
      146 LOADN                            R9 1
      147 LOADN                            R10 0
      148 CALL                             R6 4 1
      149 SETTABLEKS                       R6 R5 K33 ["Size"]
      151 SETTABLEKS                       R5 R4 K4 ["divider"]
      153 SETTABLE                         R4 R2 R3
      154 GETUPVAL                         R3 1
      155 GETTABLEKS                       R3 R3 K42 ["Medium"]
      157 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      158 DUPTABLE                         R5 K44 [{["tag"] = "size-1000 padding-xsmall radius-medium"}]
      159 SETTABLEKS                       R5 R4 K0 ["container"]
      161 DUPTABLE                         R5 K45 [{["tag"] = "padding-small radius-small"}]
      162 SETTABLEKS                       R5 R4 K1 ["segment"]
      164 DUPTABLE                         R5 K47 [{["tag"] = "text-caption-medium"}]
      165 SETTABLEKS                       R5 R4 K2 ["text"]
      167 GETUPVAL                         R6 0
      168 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      170 JUMPIFNOT                        R6 ; [+7]
      171 DUPTABLE                         R5 K31 [{"size"}]
      172 GETUPVAL                         R6 2
      173 GETTABLEKS                       R6 R6 K42 ["Medium"]
      175 SETTABLEKS                       R6 R5 K30 ["size"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R5
      179 SETTABLEKS                       R5 R4 K3 ["icon"]
      181 DUPTABLE                         R5 K34 [{"Size"}]
      182 GETIMPORT                        R6 K37 [UDim2.new]
      184 LOADN                            R7 0
      185 GETTABLEKS                       R8 R0 K38 ["Stroke"]
      187 GETTABLEKS                       R8 R8 K39 ["Standard"]
      189 LOADN                            R9 1
      190 LOADN                            R10 0
      191 CALL                             R6 4 1
      192 SETTABLEKS                       R6 R5 K33 ["Size"]
      194 SETTABLEKS                       R5 R4 K4 ["divider"]
      196 SETTABLE                         R4 R2 R3
      197 GETUPVAL                         R3 1
      198 GETTABLEKS                       R3 R3 K48 ["Large"]
      200 DUPTABLE                         R4 K5 [{"container", "segment", "text", "icon", "divider"}]
      201 DUPTABLE                         R5 K50 [{["tag"] = "size-1200 padding-xsmall radius-medium"}]
      202 SETTABLEKS                       R5 R4 K0 ["container"]
      204 DUPTABLE                         R5 K52 [{["tag"] = "padding-medium radius-small"}]
      205 SETTABLEKS                       R5 R4 K1 ["segment"]
      207 DUPTABLE                         R5 K47 [{["tag"] = "text-caption-medium"}]
      208 SETTABLEKS                       R5 R4 K2 ["text"]
      210 GETUPVAL                         R6 0
      211 GETTABLEKS                       R6 R6 K13 ["FoundationSegmentedControlIconSupport"]
      213 JUMPIFNOT                        R6 ; [+7]
      214 DUPTABLE                         R5 K31 [{"size"}]
      215 GETUPVAL                         R6 2
      216 GETTABLEKS                       R6 R6 K48 ["Large"]
      218 SETTABLEKS                       R6 R5 K30 ["size"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R5
      222 SETTABLEKS                       R5 R4 K3 ["icon"]
      224 DUPTABLE                         R5 K34 [{"Size"}]
      225 GETIMPORT                        R6 K37 [UDim2.new]
      227 LOADN                            R7 0
      228 GETTABLEKS                       R8 R0 K38 ["Stroke"]
      230 GETTABLEKS                       R8 R8 K39 ["Standard"]
      232 LOADN                            R9 1
      233 LOADN                            R10 0
      234 CALL                             R6 4 1
      235 SETTABLEKS                       R6 R5 K33 ["Size"]
      237 SETTABLEKS                       R5 R4 K4 ["divider"]
      239 SETTABLE                         R4 R2 R3
      240 DUPTABLE                         R3 K55 [{"common", "sizes"}]
      241 SETTABLEKS                       R1 R3 K53 ["common"]
      243 SETTABLEKS                       R2 R3 K54 ["sizes"]
      245 RETURN                           R3 1

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
