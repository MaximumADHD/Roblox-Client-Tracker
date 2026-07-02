PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"text"}]
        5 DUPTABLE                         R4 K5 [{["tag"] = "content-muted"}]
        6 SETTABLEKS                       R4 R3 K1 ["text"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"container", "text"}]
        1 DUPTABLE                         R1 K4 [{"tag"}]
        2 NEWTABLE                         R2 2 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K5 ["FoundationDropdownVariant"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K6 ["row flex-x-between align-y-center stroke-standard stroke-position-inner"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K5 ["FoundationDropdownVariant"]
       13 SETTABLEKS                       R3 R2 K7 ["row flex-x-between align-y-center"]
       15 SETTABLEKS                       R2 R1 K3 ["tag"]
       17 SETTABLEKS                       R1 R0 K0 ["container"]
       19 DUPTABLE                         R1 K4 [{"tag"}]
       20 NEWTABLE                         R2 2 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["FoundationDropdownVariant"]
       25 SETTABLEKS                       R3 R2 K8 ["shrink auto-xy text-truncate-split content-emphasis"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K5 ["FoundationDropdownVariant"]
       30 NOT                              R3 R4
       31 SETTABLEKS                       R3 R2 K9 ["shrink auto-xy text-truncate-split"]
       33 SETTABLEKS                       R2 R1 K3 ["tag"]
       35 SETTABLEKS                       R1 R0 K1 ["text"]
       37 NEWTABLE                         R1 4 0
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K10 ["XSmall"]
       42 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
       43 DUPTABLE                         R4 K4 [{"tag"}]
       44 NEWTABLE                         R5 2 0
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
       49 SETTABLEKS                       R6 R5 K14 ["gap-small size-full-600 padding-small radius-small"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
       54 NOT                              R6 R7
       55 SETTABLEKS                       R6 R5 K15 ["gap-xxsmall size-full-600 padding-small radius-small"]
       57 SETTABLEKS                       R5 R4 K3 ["tag"]
       59 SETTABLEKS                       R4 R3 K0 ["container"]
       61 DUPTABLE                         R4 K17 [{["tag"] = "text-body-small"}]
       62 SETTABLEKS                       R4 R3 K1 ["text"]
       64 DUPTABLE                         R4 K19 [{"size"}]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R5 R5 K10 ["XSmall"]
       68 SETTABLEKS                       R5 R4 K18 ["size"]
       70 SETTABLEKS                       R4 R3 K11 ["arrow"]
       72 SETTABLE                         R3 R1 R2
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K20 ["Small"]
       76 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
       77 DUPTABLE                         R4 K4 [{"tag"}]
       78 NEWTABLE                         R5 2 0
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
       83 SETTABLEKS                       R6 R5 K21 ["gap-small size-full-800 padding-medium radius-medium"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
       88 NOT                              R6 R7
       89 SETTABLEKS                       R6 R5 K22 ["gap-xxsmall size-full-800 padding-medium radius-medium"]
       91 SETTABLEKS                       R5 R4 K3 ["tag"]
       93 SETTABLEKS                       R4 R3 K0 ["container"]
       95 DUPTABLE                         R4 K17 [{["tag"] = "text-body-small"}]
       96 SETTABLEKS                       R4 R3 K1 ["text"]
       98 DUPTABLE                         R4 K19 [{"size"}]
       99 GETUPVAL                         R5 2
      100 GETTABLEKS                       R5 R5 K20 ["Small"]
      102 SETTABLEKS                       R5 R4 K18 ["size"]
      104 SETTABLEKS                       R4 R3 K11 ["arrow"]
      106 SETTABLE                         R3 R1 R2
      107 GETUPVAL                         R2 1
      108 GETTABLEKS                       R2 R2 K23 ["Medium"]
      110 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
      111 DUPTABLE                         R4 K4 [{"tag"}]
      112 NEWTABLE                         R5 2 0
      114 GETUPVAL                         R6 0
      115 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
      117 SETTABLEKS                       R6 R5 K24 ["gap-small size-full-1000 padding-medium radius-medium"]
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
      122 NOT                              R6 R7
      123 SETTABLEKS                       R6 R5 K25 ["size-full-1000 padding-medium radius-medium"]
      125 SETTABLEKS                       R5 R4 K3 ["tag"]
      127 SETTABLEKS                       R4 R3 K0 ["container"]
      129 DUPTABLE                         R4 K27 [{["tag"] = "text-body-medium"}]
      130 SETTABLEKS                       R4 R3 K1 ["text"]
      132 DUPTABLE                         R4 K19 [{"size"}]
      133 GETUPVAL                         R5 2
      134 GETTABLEKS                       R5 R5 K23 ["Medium"]
      136 SETTABLEKS                       R5 R4 K18 ["size"]
      138 SETTABLEKS                       R4 R3 K11 ["arrow"]
      140 SETTABLE                         R3 R1 R2
      141 GETUPVAL                         R2 1
      142 GETTABLEKS                       R2 R2 K28 ["Large"]
      144 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
      145 DUPTABLE                         R4 K4 [{"tag"}]
      146 NEWTABLE                         R5 2 0
      148 GETUPVAL                         R6 0
      149 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
      151 SETTABLEKS                       R6 R5 K29 ["gap-small size-full-1200 padding-medium radius-medium"]
      153 GETUPVAL                         R7 0
      154 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
      156 NOT                              R6 R7
      157 SETTABLEKS                       R6 R5 K30 ["size-full-1200 padding-medium radius-medium"]
      159 SETTABLEKS                       R5 R4 K3 ["tag"]
      161 SETTABLEKS                       R4 R3 K0 ["container"]
      163 DUPTABLE                         R4 K32 [{["tag"] = "text-body-large"}]
      164 SETTABLEKS                       R4 R3 K1 ["text"]
      166 DUPTABLE                         R4 K19 [{"size"}]
      167 GETUPVAL                         R5 2
      168 GETTABLEKS                       R5 R5 K28 ["Large"]
      170 SETTABLEKS                       R5 R4 K18 ["size"]
      172 SETTABLEKS                       R4 R3 K11 ["arrow"]
      174 SETTABLE                         R3 R1 R2
      175 NEWTABLE                         R2 8 0
      177 GETUPVAL                         R3 3
      178 GETTABLEKS                       R3 R3 K33 ["Disabled"]
      180 DUPTABLE                         R4 K2 [{"container", "text"}]
      181 GETUPVAL                         R6 0
      182 GETTABLEKS                       R6 R6 K5 ["FoundationDropdownVariant"]
      184 JUMPIFNOT                        R6 ; [+2]
      185 LOADNIL                          R5
      186 JUMP                             ; [+1]
      187 DUPTABLE                         R5 K35 [{["tag"] = "stroke-muted"}]
      188 SETTABLEKS                       R5 R4 K0 ["container"]
      190 DUPTABLE                         R5 K37 [{["tag"] = "content-muted"}]
      191 SETTABLEKS                       R5 R4 K1 ["text"]
      193 SETTABLE                         R4 R2 R3
      194 GETUPVAL                         R3 3
      195 GETTABLEKS                       R3 R3 K38 ["Initialize"]
      197 DUPTABLE                         R4 K2 [{"container", "text"}]
      198 GETUPVAL                         R6 0
      199 GETTABLEKS                       R6 R6 K5 ["FoundationDropdownVariant"]
      201 JUMPIFNOT                        R6 ; [+2]
      202 LOADNIL                          R5
      203 JUMP                             ; [+1]
      204 DUPTABLE                         R5 K40 [{["tag"] = "stroke-default"}]
      205 SETTABLEKS                       R5 R4 K0 ["container"]
      207 DUPTABLE                         R5 K42 [{["tag"] = "content-default"}]
      208 SETTABLEKS                       R5 R4 K1 ["text"]
      210 SETTABLE                         R4 R2 R3
      211 GETUPVAL                         R3 3
      212 GETTABLEKS                       R3 R3 K43 ["Default"]
      214 GETUPVAL                         R5 0
      215 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      217 JUMPIFNOT                        R5 ; [+2]
      218 LOADNIL                          R4
      219 JUMP                             ; [+7]
      220 DUPTABLE                         R4 K2 [{"container", "text"}]
      221 DUPTABLE                         R5 K40 [{["tag"] = "stroke-default"}]
      222 SETTABLEKS                       R5 R4 K0 ["container"]
      224 DUPTABLE                         R5 K42 [{["tag"] = "content-default"}]
      225 SETTABLEKS                       R5 R4 K1 ["text"]
      227 SETTABLE                         R4 R2 R3
      228 GETUPVAL                         R3 3
      229 GETTABLEKS                       R3 R3 K44 ["Hover"]
      231 GETUPVAL                         R5 0
      232 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      234 JUMPIFNOT                        R5 ; [+2]
      235 LOADNIL                          R4
      236 JUMP                             ; [+7]
      237 DUPTABLE                         R4 K2 [{"container", "text"}]
      238 DUPTABLE                         R5 K46 [{["tag"] = "stroke-emphasis"}]
      239 SETTABLEKS                       R5 R4 K0 ["container"]
      241 DUPTABLE                         R5 K48 [{["tag"] = "content-emphasis"}]
      242 SETTABLEKS                       R5 R4 K1 ["text"]
      244 SETTABLE                         R4 R2 R3
      245 GETUPVAL                         R3 3
      246 GETTABLEKS                       R3 R3 K49 ["Pressed"]
      248 GETUPVAL                         R5 0
      249 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      251 JUMPIFNOT                        R5 ; [+2]
      252 LOADNIL                          R4
      253 JUMP                             ; [+7]
      254 DUPTABLE                         R4 K2 [{"container", "text"}]
      255 DUPTABLE                         R5 K46 [{["tag"] = "stroke-emphasis"}]
      256 SETTABLEKS                       R5 R4 K0 ["container"]
      258 DUPTABLE                         R5 K48 [{["tag"] = "content-emphasis"}]
      259 SETTABLEKS                       R5 R4 K1 ["text"]
      261 SETTABLE                         R4 R2 R3
      262 GETUPVAL                         R4 0
      263 GETTABLEKS                       R4 R4 K5 ["FoundationDropdownVariant"]
      265 JUMPIF                           R4 ; [+2]
      266 LOADNIL                          R3
      267 JUMP                             ; [+7]
      268 DUPTABLE                         R3 K2 [{"container", "text"}]
      269 DUPTABLE                         R4 K51 [{["tag"] = "stroke-alert"}]
      270 SETTABLEKS                       R4 R3 K0 ["container"]
      272 DUPTABLE                         R4 K42 [{["tag"] = "content-default"}]
      273 SETTABLEKS                       R4 R3 K1 ["text"]
      275 SETTABLEKS                       R3 R2 K52 ["Error"]
      277 GETUPVAL                         R3 4
      278 GETTABLEKS                       R3 R3 K53 ["map"]
      280 MOVE                             R4 R2
      281 DUPCLOSURE                       R5 K54 [PROTO_0]
      282 CAPTURE                          UPVAL U4
      283 CALL                             R3 2 1
      284 DUPTABLE                         R4 K59 [{"common", "sizes", "states", "placeholderStates"}]
      285 SETTABLEKS                       R0 R4 K55 ["common"]
      287 SETTABLEKS                       R1 R4 K56 ["sizes"]
      289 SETTABLEKS                       R2 R4 K57 ["states"]
      291 SETTABLEKS                       R3 R4 K58 ["placeholderStates"]
      293 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["useVariants"]
        3 LOADK                            R9 K1 ["Dropdown"]
        4 GETUPVAL                         R10 1
        5 MOVE                             R11 R0
        6 CALL                             R8 3 1
        7 GETUPVAL                         R10 2
        8 GETTABLEKS                       R10 R10 K2 ["FoundationDropdownVariant"]
       10 JUMPIFNOT                        R10 ; [+8]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K0 ["useVariants"]
       14 LOADK                            R10 K3 ["InputField"]
       15 GETUPVAL                         R11 3
       16 MOVE                             R12 R0
       17 CALL                             R9 3 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R9
       20 GETUPVAL                         R11 2
       21 GETTABLEKS                       R11 R11 K2 ["FoundationDropdownVariant"]
       23 JUMPIFNOT                        R11 ; [+9]
       24 GETTABLEKS                       R11 R9 K4 ["variants"]
       26 MOVE                             R12 R2
       27 JUMPIF                           R12 ; [+3]
       28 GETUPVAL                         R12 4
       29 GETTABLEKS                       R12 R12 K5 ["Standard"]
       31 GETTABLE                         R10 R11 R12
       32 JUMP                             ; [+1]
       33 LOADNIL                          R10
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R12 R12 K2 ["FoundationDropdownVariant"]
       37 JUMPIF                           R12 ; [+3]
       38 JUMPIFNOT                        R5 ; [+2]
       39 LOADK                            R11 K6 ["Error"]
       40 JUMP                             ; [+1]
       41 MOVE                             R11 R3
       42 GETUPVAL                         R12 5
       43 GETUPVAL                         R14 2
       44 GETTABLEKS                       R14 R14 K2 ["FoundationDropdownVariant"]
       46 JUMPIFNOT                        R14 ; [+3]
       47 GETTABLEKS                       R13 R9 K7 ["common"]
       49 JUMP                             ; [+2]
       50 NEWTABLE                         R13 0 0
       52 GETTABLEKS                       R14 R8 K7 ["common"]
       54 GETUPVAL                         R16 2
       55 GETTABLEKS                       R16 R16 K2 ["FoundationDropdownVariant"]
       57 JUMPIFNOT                        R16 ; [+4]
       58 GETTABLEKS                       R16 R9 K8 ["sizes"]
       60 GETTABLE                         R15 R16 R1
       61 JUMP                             ; [+2]
       62 NEWTABLE                         R15 0 0
       64 GETTABLEKS                       R17 R8 K8 ["sizes"]
       66 GETTABLE                         R16 R17 R1
       67 GETUPVAL                         R18 2
       68 GETTABLEKS                       R18 R18 K2 ["FoundationDropdownVariant"]
       70 JUMPIFNOT                        R18 ; [+7]
       71 GETUPVAL                         R18 4
       72 GETTABLEKS                       R18 R18 K9 ["Utility"]
       74 JUMPIFEQ                         R2 R18 ; [+3]
       76 MOVE                             R17 R10
       77 JUMP                             ; [+2]
       78 NEWTABLE                         R17 0 0
       80 GETUPVAL                         R19 2
       81 GETTABLEKS                       R19 R19 K2 ["FoundationDropdownVariant"]
       83 JUMPIFNOT                        R19 ; [+4]
       84 GETTABLEKS                       R19 R9 K10 ["hoverState"]
       86 GETTABLE                         R18 R19 R7
       87 JUMP                             ; [+2]
       88 NEWTABLE                         R18 0 0
       90 GETUPVAL                         R20 2
       91 GETTABLEKS                       R20 R20 K2 ["FoundationDropdownVariant"]
       93 JUMPIFNOT                        R20 ; [+4]
       94 GETTABLEKS                       R20 R9 K11 ["focusedState"]
       96 GETTABLE                         R19 R20 R6
       97 JUMP                             ; [+2]
       98 NEWTABLE                         R19 0 0
      100 GETUPVAL                         R21 2
      101 GETTABLEKS                       R21 R21 K2 ["FoundationDropdownVariant"]
      103 JUMPIFNOT                        R21 ; [+4]
      104 GETTABLEKS                       R21 R9 K12 ["errorState"]
      106 GETTABLE                         R20 R21 R5
      107 JUMP                             ; [+2]
      108 NEWTABLE                         R20 0 0
      110 JUMPIFNOT                        R4 ; [+4]
      111 GETTABLEKS                       R22 R8 K13 ["placeholderStates"]
      113 GETTABLE                         R21 R22 R11
      114 JUMP                             ; [+3]
      115 GETTABLEKS                       R22 R8 K14 ["states"]
      117 GETTABLE                         R21 R22 R11
      118 GETUPVAL                         R23 2
      119 GETTABLEKS                       R23 R23 K2 ["FoundationDropdownVariant"]
      121 JUMPIFNOT                        R23 ; [+7]
      122 GETUPVAL                         R23 4
      123 GETTABLEKS                       R23 R23 K9 ["Utility"]
      125 JUMPIFNOTEQ                      R2 R23 ; [+3]
      127 MOVE                             R22 R10
      128 JUMP                             ; [+2]
      129 NEWTABLE                         R22 0 0
      131 CALL                             R12 10 -1
      132 RETURN                           R12 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ControlState"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["InputLabelSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Enums"]
       53 GETTABLEKS                       R9 R9 K15 ["InputVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Utility"]
       60 GETTABLEKS                       R10 R10 K17 ["composeStyleVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Utility"]
       67 GETTABLEKS                       R11 R11 K18 ["Flags"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Providers"]
       74 GETTABLEKS                       R12 R12 K20 ["Style"]
       76 GETTABLEKS                       R12 R12 K21 ["Tokens"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K19 ["Providers"]
       83 GETTABLEKS                       R13 R13 K20 ["Style"]
       85 GETTABLEKS                       R13 R13 K22 ["VariantsContext"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K8 ["Components"]
       92 GETTABLEKS                       R14 R14 K23 ["InputField"]
       94 GETTABLEKS                       R14 R14 K24 ["getInputVariantsFactory"]
       96 CALL                             R13 1 1
       97 DUPCLOSURE                       R14 K25 [PROTO_1]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R2
      103 DUPCLOSURE                       R15 K26 [PROTO_2]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R9
      110 RETURN                           R15 1
