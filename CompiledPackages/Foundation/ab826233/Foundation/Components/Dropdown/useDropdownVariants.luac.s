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
       44 LOADK                            R5 K13 ["gap-xxsmall size-full-600 padding-small radius-small"]
       45 SETTABLEKS                       R5 R4 K3 ["tag"]
       47 SETTABLEKS                       R4 R3 K0 ["container"]
       49 DUPTABLE                         R4 K4 [{"tag"}]
       50 LOADK                            R5 K14 ["text-body-small"]
       51 SETTABLEKS                       R5 R4 K3 ["tag"]
       53 SETTABLEKS                       R4 R3 K1 ["text"]
       55 DUPTABLE                         R4 K16 [{"size"}]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K10 ["XSmall"]
       59 SETTABLEKS                       R5 R4 K15 ["size"]
       61 SETTABLEKS                       R4 R3 K11 ["arrow"]
       63 SETTABLE                         R3 R1 R2
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K17 ["Small"]
       67 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
       68 DUPTABLE                         R4 K4 [{"tag"}]
       69 LOADK                            R5 K18 ["gap-xxsmall size-full-800 padding-medium radius-medium"]
       70 SETTABLEKS                       R5 R4 K3 ["tag"]
       72 SETTABLEKS                       R4 R3 K0 ["container"]
       74 DUPTABLE                         R4 K4 [{"tag"}]
       75 LOADK                            R5 K14 ["text-body-small"]
       76 SETTABLEKS                       R5 R4 K3 ["tag"]
       78 SETTABLEKS                       R4 R3 K1 ["text"]
       80 DUPTABLE                         R4 K16 [{"size"}]
       81 GETUPVAL                         R5 2
       82 GETTABLEKS                       R5 R5 K17 ["Small"]
       84 SETTABLEKS                       R5 R4 K15 ["size"]
       86 SETTABLEKS                       R4 R3 K11 ["arrow"]
       88 SETTABLE                         R3 R1 R2
       89 GETUPVAL                         R2 1
       90 GETTABLEKS                       R2 R2 K19 ["Medium"]
       92 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
       93 DUPTABLE                         R4 K4 [{"tag"}]
       94 LOADK                            R5 K20 ["size-full-1000 padding-medium radius-medium"]
       95 SETTABLEKS                       R5 R4 K3 ["tag"]
       97 SETTABLEKS                       R4 R3 K0 ["container"]
       99 DUPTABLE                         R4 K4 [{"tag"}]
      100 LOADK                            R5 K21 ["text-body-medium"]
      101 SETTABLEKS                       R5 R4 K3 ["tag"]
      103 SETTABLEKS                       R4 R3 K1 ["text"]
      105 DUPTABLE                         R4 K16 [{"size"}]
      106 GETUPVAL                         R5 2
      107 GETTABLEKS                       R5 R5 K19 ["Medium"]
      109 SETTABLEKS                       R5 R4 K15 ["size"]
      111 SETTABLEKS                       R4 R3 K11 ["arrow"]
      113 SETTABLE                         R3 R1 R2
      114 GETUPVAL                         R2 1
      115 GETTABLEKS                       R2 R2 K22 ["Large"]
      117 DUPTABLE                         R3 K12 [{"container", "text", "arrow"}]
      118 DUPTABLE                         R4 K4 [{"tag"}]
      119 LOADK                            R5 K23 ["size-full-1200 padding-medium radius-medium"]
      120 SETTABLEKS                       R5 R4 K3 ["tag"]
      122 SETTABLEKS                       R4 R3 K0 ["container"]
      124 DUPTABLE                         R4 K4 [{"tag"}]
      125 LOADK                            R5 K24 ["text-body-large"]
      126 SETTABLEKS                       R5 R4 K3 ["tag"]
      128 SETTABLEKS                       R4 R3 K1 ["text"]
      130 DUPTABLE                         R4 K16 [{"size"}]
      131 GETUPVAL                         R5 2
      132 GETTABLEKS                       R5 R5 K22 ["Large"]
      134 SETTABLEKS                       R5 R4 K15 ["size"]
      136 SETTABLEKS                       R4 R3 K11 ["arrow"]
      138 SETTABLE                         R3 R1 R2
      139 NEWTABLE                         R2 8 0
      141 GETUPVAL                         R3 3
      142 GETTABLEKS                       R3 R3 K25 ["Disabled"]
      144 DUPTABLE                         R4 K2 [{"container", "text"}]
      145 GETUPVAL                         R6 0
      146 GETTABLEKS                       R6 R6 K5 ["FoundationDropdownVariant"]
      148 JUMPIFNOT                        R6 ; [+2]
      149 LOADNIL                          R5
      150 JUMP                             ; [+4]
      151 DUPTABLE                         R5 K4 [{"tag"}]
      152 LOADK                            R6 K26 ["stroke-muted"]
      153 SETTABLEKS                       R6 R5 K3 ["tag"]
      155 SETTABLEKS                       R5 R4 K0 ["container"]
      157 DUPTABLE                         R5 K4 [{"tag"}]
      158 LOADK                            R6 K27 ["content-muted"]
      159 SETTABLEKS                       R6 R5 K3 ["tag"]
      161 SETTABLEKS                       R5 R4 K1 ["text"]
      163 SETTABLE                         R4 R2 R3
      164 GETUPVAL                         R3 3
      165 GETTABLEKS                       R3 R3 K28 ["Initialize"]
      167 DUPTABLE                         R4 K2 [{"container", "text"}]
      168 GETUPVAL                         R6 0
      169 GETTABLEKS                       R6 R6 K5 ["FoundationDropdownVariant"]
      171 JUMPIFNOT                        R6 ; [+2]
      172 LOADNIL                          R5
      173 JUMP                             ; [+4]
      174 DUPTABLE                         R5 K4 [{"tag"}]
      175 LOADK                            R6 K29 ["stroke-default"]
      176 SETTABLEKS                       R6 R5 K3 ["tag"]
      178 SETTABLEKS                       R5 R4 K0 ["container"]
      180 DUPTABLE                         R5 K4 [{"tag"}]
      181 LOADK                            R6 K30 ["content-default"]
      182 SETTABLEKS                       R6 R5 K3 ["tag"]
      184 SETTABLEKS                       R5 R4 K1 ["text"]
      186 SETTABLE                         R4 R2 R3
      187 GETUPVAL                         R3 3
      188 GETTABLEKS                       R3 R3 K31 ["Default"]
      190 GETUPVAL                         R5 0
      191 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      193 JUMPIFNOT                        R5 ; [+2]
      194 LOADNIL                          R4
      195 JUMP                             ; [+13]
      196 DUPTABLE                         R4 K2 [{"container", "text"}]
      197 DUPTABLE                         R5 K4 [{"tag"}]
      198 LOADK                            R6 K29 ["stroke-default"]
      199 SETTABLEKS                       R6 R5 K3 ["tag"]
      201 SETTABLEKS                       R5 R4 K0 ["container"]
      203 DUPTABLE                         R5 K4 [{"tag"}]
      204 LOADK                            R6 K30 ["content-default"]
      205 SETTABLEKS                       R6 R5 K3 ["tag"]
      207 SETTABLEKS                       R5 R4 K1 ["text"]
      209 SETTABLE                         R4 R2 R3
      210 GETUPVAL                         R3 3
      211 GETTABLEKS                       R3 R3 K32 ["Hover"]
      213 GETUPVAL                         R5 0
      214 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      216 JUMPIFNOT                        R5 ; [+2]
      217 LOADNIL                          R4
      218 JUMP                             ; [+13]
      219 DUPTABLE                         R4 K2 [{"container", "text"}]
      220 DUPTABLE                         R5 K4 [{"tag"}]
      221 LOADK                            R6 K33 ["stroke-emphasis"]
      222 SETTABLEKS                       R6 R5 K3 ["tag"]
      224 SETTABLEKS                       R5 R4 K0 ["container"]
      226 DUPTABLE                         R5 K4 [{"tag"}]
      227 LOADK                            R6 K34 ["content-emphasis"]
      228 SETTABLEKS                       R6 R5 K3 ["tag"]
      230 SETTABLEKS                       R5 R4 K1 ["text"]
      232 SETTABLE                         R4 R2 R3
      233 GETUPVAL                         R3 3
      234 GETTABLEKS                       R3 R3 K35 ["Pressed"]
      236 GETUPVAL                         R5 0
      237 GETTABLEKS                       R5 R5 K5 ["FoundationDropdownVariant"]
      239 JUMPIFNOT                        R5 ; [+2]
      240 LOADNIL                          R4
      241 JUMP                             ; [+13]
      242 DUPTABLE                         R4 K2 [{"container", "text"}]
      243 DUPTABLE                         R5 K4 [{"tag"}]
      244 LOADK                            R6 K33 ["stroke-emphasis"]
      245 SETTABLEKS                       R6 R5 K3 ["tag"]
      247 SETTABLEKS                       R5 R4 K0 ["container"]
      249 DUPTABLE                         R5 K4 [{"tag"}]
      250 LOADK                            R6 K34 ["content-emphasis"]
      251 SETTABLEKS                       R6 R5 K3 ["tag"]
      253 SETTABLEKS                       R5 R4 K1 ["text"]
      255 SETTABLE                         R4 R2 R3
      256 GETUPVAL                         R4 0
      257 GETTABLEKS                       R4 R4 K5 ["FoundationDropdownVariant"]
      259 JUMPIF                           R4 ; [+2]
      260 LOADNIL                          R3
      261 JUMP                             ; [+13]
      262 DUPTABLE                         R3 K2 [{"container", "text"}]
      263 DUPTABLE                         R4 K4 [{"tag"}]
      264 LOADK                            R5 K36 ["stroke-alert"]
      265 SETTABLEKS                       R5 R4 K3 ["tag"]
      267 SETTABLEKS                       R4 R3 K0 ["container"]
      269 DUPTABLE                         R4 K4 [{"tag"}]
      270 LOADK                            R5 K30 ["content-default"]
      271 SETTABLEKS                       R5 R4 K3 ["tag"]
      273 SETTABLEKS                       R4 R3 K1 ["text"]
      275 SETTABLEKS                       R3 R2 K37 ["Error"]
      277 GETUPVAL                         R3 4
      278 GETTABLEKS                       R3 R3 K38 ["map"]
      280 MOVE                             R4 R2
      281 DUPCLOSURE                       R5 K39 [PROTO_0]
      282 CAPTURE                          UPVAL U4
      283 CALL                             R3 2 1
      284 DUPTABLE                         R4 K44 [{"common", "sizes", "states", "placeholderStates"}]
      285 SETTABLEKS                       R0 R4 K40 ["common"]
      287 SETTABLEKS                       R1 R4 K41 ["sizes"]
      289 SETTABLEKS                       R2 R4 K42 ["states"]
      291 SETTABLEKS                       R3 R4 K43 ["placeholderStates"]
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
