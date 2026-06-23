PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"text"}]
        5 DUPTABLE                         R4 K4 [{"tag"}]
        6 LOADK                            R5 K5 ["content-muted"]
        7 SETTABLEKS                       R5 R4 K3 ["tag"]
        9 SETTABLEKS                       R4 R3 K1 ["text"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

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
       61 DUPTABLE                         R4 K4 [{"tag"}]
       62 LOADK                            R5 K16 ["text-body-small"]
       63 SETTABLEKS                       R5 R4 K3 ["tag"]
       65 SETTABLEKS                       R4 R3 K1 ["text"]
       67 DUPTABLE                         R4 K18 [{"size"}]
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R5 R5 K10 ["XSmall"]
       71 SETTABLEKS                       R5 R4 K17 ["size"]
       73 SETTABLEKS                       R4 R3 K11 ["arrow"]
       75 SETTABLE                         R3 R1 R2
       76 GETUPVAL                         R2 1
       77 GETTABLEKS                       R2 R2 K19 ["Small"]
       79 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
       80 DUPTABLE                         R4 K4 [{"tag"}]
       81 NEWTABLE                         R5 2 0
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
       86 SETTABLEKS                       R6 R5 K20 ["gap-small size-full-800 padding-medium radius-medium"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
       91 NOT                              R6 R7
       92 SETTABLEKS                       R6 R5 K21 ["gap-xxsmall size-full-800 padding-medium radius-medium"]
       94 SETTABLEKS                       R5 R4 K3 ["tag"]
       96 SETTABLEKS                       R4 R3 K0 ["container"]
       98 DUPTABLE                         R4 K4 [{"tag"}]
       99 LOADK                            R5 K16 ["text-body-small"]
      100 SETTABLEKS                       R5 R4 K3 ["tag"]
      102 SETTABLEKS                       R4 R3 K1 ["text"]
      104 DUPTABLE                         R4 K18 [{"size"}]
      105 GETUPVAL                         R5 2
      106 GETTABLEKS                       R5 R5 K19 ["Small"]
      108 SETTABLEKS                       R5 R4 K17 ["size"]
      110 SETTABLEKS                       R4 R3 K11 ["arrow"]
      112 SETTABLE                         R3 R1 R2
      113 GETUPVAL                         R2 1
      114 GETTABLEKS                       R2 R2 K22 ["Medium"]
      116 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
      117 DUPTABLE                         R4 K4 [{"tag"}]
      118 NEWTABLE                         R5 2 0
      120 GETUPVAL                         R6 0
      121 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
      123 SETTABLEKS                       R6 R5 K23 ["gap-small size-full-1000 padding-medium radius-medium"]
      125 GETUPVAL                         R7 0
      126 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
      128 NOT                              R6 R7
      129 SETTABLEKS                       R6 R5 K24 ["size-full-1000 padding-medium radius-medium"]
      131 SETTABLEKS                       R5 R4 K3 ["tag"]
      133 SETTABLEKS                       R4 R3 K0 ["container"]
      135 DUPTABLE                         R4 K4 [{"tag"}]
      136 LOADK                            R5 K25 ["text-body-medium"]
      137 SETTABLEKS                       R5 R4 K3 ["tag"]
      139 SETTABLEKS                       R4 R3 K1 ["text"]
      141 DUPTABLE                         R4 K18 [{"size"}]
      142 GETUPVAL                         R5 2
      143 GETTABLEKS                       R5 R5 K22 ["Medium"]
      145 SETTABLEKS                       R5 R4 K17 ["size"]
      147 SETTABLEKS                       R4 R3 K11 ["arrow"]
      149 SETTABLE                         R3 R1 R2
      150 GETUPVAL                         R2 1
      151 GETTABLEKS                       R2 R2 K26 ["Large"]
      153 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
      154 DUPTABLE                         R4 K4 [{"tag"}]
      155 NEWTABLE                         R5 2 0
      157 GETUPVAL                         R6 0
      158 GETTABLEKS                       R6 R6 K13 ["FoundationDropdownSizeGap"]
      160 SETTABLEKS                       R6 R5 K27 ["gap-small size-full-1200 padding-medium radius-medium"]
      162 GETUPVAL                         R7 0
      163 GETTABLEKS                       R7 R7 K13 ["FoundationDropdownSizeGap"]
      165 NOT                              R6 R7
      166 SETTABLEKS                       R6 R5 K28 ["size-full-1200 padding-medium radius-medium"]
      168 SETTABLEKS                       R5 R4 K3 ["tag"]
      170 SETTABLEKS                       R4 R3 K0 ["container"]
      172 DUPTABLE                         R4 K4 [{"tag"}]
      173 LOADK                            R5 K29 ["text-body-large"]
      174 SETTABLEKS                       R5 R4 K3 ["tag"]
      176 SETTABLEKS                       R4 R3 K1 ["text"]
      178 DUPTABLE                         R4 K18 [{"size"}]
      179 GETUPVAL                         R5 2
      180 GETTABLEKS                       R5 R5 K26 ["Large"]
      182 SETTABLEKS                       R5 R4 K17 ["size"]
      184 SETTABLEKS                       R4 R3 K11 ["arrow"]
      186 SETTABLE                         R3 R1 R2
      187 NEWTABLE                         R2 8 0
      189 GETUPVAL                         R3 3
      190 GETTABLEKS                       R3 R3 K30 ["Disabled"]
      192 DUPTABLE                         R4 K2 [{"container", "text"}]
      193 GETUPVAL                         R6 0
      194 GETTABLEKS                       R6 R6 K5 ["FoundationDropdownVariant"]
      196 JUMPIFNOT                        R6 ; [+2]
      197 LOADNIL                          R5
      198 JUMP                             ; [+4]
      199 DUPTABLE                         R5 K4 [{"tag"}]
      200 LOADK                            R6 K31 ["stroke-muted"]
      201 SETTABLEKS                       R6 R5 K3 ["tag"]
      203 SETTABLEKS                       R5 R4 K0 ["container"]
      205 DUPTABLE                         R5 K4 [{"tag"}]
      206 LOADK                            R6 K32 ["content-muted"]
      207 SETTABLEKS                       R6 R5 K3 ["tag"]
      209 SETTABLEKS                       R5 R4 K1 ["text"]
      211 SETTABLE                         R4 R2 R3
      212 GETUPVAL                         R3 3
      213 GETTABLEKS                       R3 R3 K33 ["Initialize"]
      215 DUPTABLE                         R4 K2 [{"container", "text"}]
      216 GETUPVAL                         R6 0
      217 GETTABLEKS                       R6 R6 K5 ["FoundationDropdownVariant"]
      219 JUMPIFNOT                        R6 ; [+2]
      220 LOADNIL                          R5
      221 JUMP                             ; [+4]
      222 DUPTABLE                         R5 K4 [{"tag"}]
      223 LOADK                            R6 K34 ["stroke-default"]
      224 SETTABLEKS                       R6 R5 K3 ["tag"]
      226 SETTABLEKS                       R5 R4 K0 ["container"]
      228 DUPTABLE                         R5 K4 [{"tag"}]
      229 LOADK                            R6 K35 ["content-default"]
      230 SETTABLEKS                       R6 R5 K3 ["tag"]
      232 SETTABLEKS                       R5 R4 K1 ["text"]
      234 SETTABLE                         R4 R2 R3
      235 GETUPVAL                         R3 3
      236 GETTABLEKS                       R3 R3 K36 ["Default"]
      238 GETUPVAL                         R5 0
      239 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      241 JUMPIFNOT                        R5 ; [+2]
      242 LOADNIL                          R4
      243 JUMP                             ; [+13]
      244 DUPTABLE                         R4 K2 [{"container", "text"}]
      245 DUPTABLE                         R5 K4 [{"tag"}]
      246 LOADK                            R6 K34 ["stroke-default"]
      247 SETTABLEKS                       R6 R5 K3 ["tag"]
      249 SETTABLEKS                       R5 R4 K0 ["container"]
      251 DUPTABLE                         R5 K4 [{"tag"}]
      252 LOADK                            R6 K35 ["content-default"]
      253 SETTABLEKS                       R6 R5 K3 ["tag"]
      255 SETTABLEKS                       R5 R4 K1 ["text"]
      257 SETTABLE                         R4 R2 R3
      258 GETUPVAL                         R3 3
      259 GETTABLEKS                       R3 R3 K37 ["Hover"]
      261 GETUPVAL                         R5 0
      262 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      264 JUMPIFNOT                        R5 ; [+2]
      265 LOADNIL                          R4
      266 JUMP                             ; [+13]
      267 DUPTABLE                         R4 K2 [{"container", "text"}]
      268 DUPTABLE                         R5 K4 [{"tag"}]
      269 LOADK                            R6 K38 ["stroke-emphasis"]
      270 SETTABLEKS                       R6 R5 K3 ["tag"]
      272 SETTABLEKS                       R5 R4 K0 ["container"]
      274 DUPTABLE                         R5 K4 [{"tag"}]
      275 LOADK                            R6 K39 ["content-emphasis"]
      276 SETTABLEKS                       R6 R5 K3 ["tag"]
      278 SETTABLEKS                       R5 R4 K1 ["text"]
      280 SETTABLE                         R4 R2 R3
      281 GETUPVAL                         R3 3
      282 GETTABLEKS                       R3 R3 K40 ["Pressed"]
      284 GETUPVAL                         R5 0
      285 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      287 JUMPIFNOT                        R5 ; [+2]
      288 LOADNIL                          R4
      289 JUMP                             ; [+13]
      290 DUPTABLE                         R4 K2 [{"container", "text"}]
      291 DUPTABLE                         R5 K4 [{"tag"}]
      292 LOADK                            R6 K38 ["stroke-emphasis"]
      293 SETTABLEKS                       R6 R5 K3 ["tag"]
      295 SETTABLEKS                       R5 R4 K0 ["container"]
      297 DUPTABLE                         R5 K4 [{"tag"}]
      298 LOADK                            R6 K39 ["content-emphasis"]
      299 SETTABLEKS                       R6 R5 K3 ["tag"]
      301 SETTABLEKS                       R5 R4 K1 ["text"]
      303 SETTABLE                         R4 R2 R3
      304 GETUPVAL                         R4 0
      305 GETTABLEKS                       R4 R4 K5 ["FoundationDropdownVariant"]
      307 JUMPIF                           R4 ; [+2]
      308 LOADNIL                          R3
      309 JUMP                             ; [+13]
      310 DUPTABLE                         R3 K2 [{"container", "text"}]
      311 DUPTABLE                         R4 K4 [{"tag"}]
      312 LOADK                            R5 K41 ["stroke-alert"]
      313 SETTABLEKS                       R5 R4 K3 ["tag"]
      315 SETTABLEKS                       R4 R3 K0 ["container"]
      317 DUPTABLE                         R4 K4 [{"tag"}]
      318 LOADK                            R5 K35 ["content-default"]
      319 SETTABLEKS                       R5 R4 K3 ["tag"]
      321 SETTABLEKS                       R4 R3 K1 ["text"]
      323 SETTABLEKS                       R3 R2 K42 ["Error"]
      325 GETUPVAL                         R3 4
      326 GETTABLEKS                       R3 R3 K43 ["map"]
      328 MOVE                             R4 R2
      329 DUPCLOSURE                       R5 K44 [PROTO_0]
      330 CAPTURE                          UPVAL U4
      331 CALL                             R3 2 1
      332 DUPTABLE                         R4 K49 [{"common", "sizes", "states", "placeholderStates"}]
      333 SETTABLEKS                       R0 R4 K45 ["common"]
      335 SETTABLEKS                       R1 R4 K46 ["sizes"]
      337 SETTABLEKS                       R2 R4 K47 ["states"]
      339 SETTABLEKS                       R3 R4 K48 ["placeholderStates"]
      341 RETURN                           R4 1

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
