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
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["row flex-x-between align-y-center stroke-standard stroke-position-inner"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 LOADK                            R3 K6 ["shrink auto-xy text-truncate-split"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["text"]
       13 NEWTABLE                         R2 4 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K7 ["XSmall"]
       18 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       19 DUPTABLE                         R5 K4 [{"tag"}]
       20 LOADK                            R6 K10 ["gap-xxsmall size-full-600 padding-small radius-small"]
       21 SETTABLEKS                       R6 R5 K3 ["tag"]
       23 SETTABLEKS                       R5 R4 K0 ["container"]
       25 DUPTABLE                         R5 K4 [{"tag"}]
       26 LOADK                            R6 K11 ["text-body-small"]
       27 SETTABLEKS                       R6 R5 K3 ["tag"]
       29 SETTABLEKS                       R5 R4 K1 ["text"]
       31 DUPTABLE                         R5 K13 [{"size"}]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K14 ["FoundationDropdownControlIconFix"]
       35 JUMPIFNOT                        R7 ; [+4]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K7 ["XSmall"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K15 ["Small"]
       43 SETTABLEKS                       R6 R5 K12 ["size"]
       45 SETTABLEKS                       R5 R4 K8 ["arrow"]
       47 SETTABLE                         R4 R2 R3
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K15 ["Small"]
       51 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       52 DUPTABLE                         R5 K4 [{"tag"}]
       53 LOADK                            R6 K16 ["gap-xxsmall size-full-800 padding-medium radius-medium"]
       54 SETTABLEKS                       R6 R5 K3 ["tag"]
       56 SETTABLEKS                       R5 R4 K0 ["container"]
       58 DUPTABLE                         R5 K4 [{"tag"}]
       59 LOADK                            R6 K11 ["text-body-small"]
       60 SETTABLEKS                       R6 R5 K3 ["tag"]
       62 SETTABLEKS                       R5 R4 K1 ["text"]
       64 DUPTABLE                         R5 K13 [{"size"}]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K14 ["FoundationDropdownControlIconFix"]
       68 JUMPIFNOT                        R7 ; [+4]
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K15 ["Small"]
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R6 R6 K15 ["Small"]
       76 SETTABLEKS                       R6 R5 K12 ["size"]
       78 SETTABLEKS                       R5 R4 K8 ["arrow"]
       80 SETTABLE                         R4 R2 R3
       81 GETUPVAL                         R3 0
       82 GETTABLEKS                       R3 R3 K17 ["Medium"]
       84 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       85 DUPTABLE                         R5 K4 [{"tag"}]
       86 LOADK                            R6 K18 ["size-full-1000 padding-medium radius-medium"]
       87 SETTABLEKS                       R6 R5 K3 ["tag"]
       89 SETTABLEKS                       R5 R4 K0 ["container"]
       91 DUPTABLE                         R5 K4 [{"tag"}]
       92 LOADK                            R6 K19 ["text-body-medium"]
       93 SETTABLEKS                       R6 R5 K3 ["tag"]
       95 SETTABLEKS                       R5 R4 K1 ["text"]
       97 DUPTABLE                         R5 K13 [{"size"}]
       98 GETUPVAL                         R7 1
       99 GETTABLEKS                       R7 R7 K14 ["FoundationDropdownControlIconFix"]
      101 JUMPIFNOT                        R7 ; [+4]
      102 GETUPVAL                         R6 2
      103 GETTABLEKS                       R6 R6 K17 ["Medium"]
      105 JUMP                             ; [+3]
      106 GETUPVAL                         R6 0
      107 GETTABLEKS                       R6 R6 K17 ["Medium"]
      109 SETTABLEKS                       R6 R5 K12 ["size"]
      111 SETTABLEKS                       R5 R4 K8 ["arrow"]
      113 SETTABLE                         R4 R2 R3
      114 GETUPVAL                         R3 0
      115 GETTABLEKS                       R3 R3 K20 ["Large"]
      117 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
      118 DUPTABLE                         R5 K4 [{"tag"}]
      119 LOADK                            R6 K21 ["size-full-1200 padding-medium radius-medium"]
      120 SETTABLEKS                       R6 R5 K3 ["tag"]
      122 SETTABLEKS                       R5 R4 K0 ["container"]
      124 DUPTABLE                         R5 K4 [{"tag"}]
      125 LOADK                            R6 K22 ["text-body-large"]
      126 SETTABLEKS                       R6 R5 K3 ["tag"]
      128 SETTABLEKS                       R5 R4 K1 ["text"]
      130 DUPTABLE                         R5 K13 [{"size"}]
      131 GETUPVAL                         R7 1
      132 GETTABLEKS                       R7 R7 K14 ["FoundationDropdownControlIconFix"]
      134 JUMPIFNOT                        R7 ; [+4]
      135 GETUPVAL                         R6 2
      136 GETTABLEKS                       R6 R6 K20 ["Large"]
      138 JUMP                             ; [+3]
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K20 ["Large"]
      142 SETTABLEKS                       R6 R5 K12 ["size"]
      144 SETTABLEKS                       R5 R4 K8 ["arrow"]
      146 SETTABLE                         R4 R2 R3
      147 NEWTABLE                         R3 8 0
      149 GETUPVAL                         R4 3
      150 GETTABLEKS                       R4 R4 K23 ["Disabled"]
      152 DUPTABLE                         R5 K2 [{"container", "text"}]
      153 DUPTABLE                         R6 K4 [{"tag"}]
      154 LOADK                            R7 K24 ["stroke-muted"]
      155 SETTABLEKS                       R7 R6 K3 ["tag"]
      157 SETTABLEKS                       R6 R5 K0 ["container"]
      159 DUPTABLE                         R6 K4 [{"tag"}]
      160 LOADK                            R7 K25 ["content-muted"]
      161 SETTABLEKS                       R7 R6 K3 ["tag"]
      163 SETTABLEKS                       R6 R5 K1 ["text"]
      165 SETTABLE                         R5 R3 R4
      166 GETUPVAL                         R4 3
      167 GETTABLEKS                       R4 R4 K26 ["Initialize"]
      169 DUPTABLE                         R5 K2 [{"container", "text"}]
      170 DUPTABLE                         R6 K4 [{"tag"}]
      171 LOADK                            R7 K27 ["stroke-default"]
      172 SETTABLEKS                       R7 R6 K3 ["tag"]
      174 SETTABLEKS                       R6 R5 K0 ["container"]
      176 DUPTABLE                         R6 K4 [{"tag"}]
      177 LOADK                            R7 K28 ["content-default"]
      178 SETTABLEKS                       R7 R6 K3 ["tag"]
      180 SETTABLEKS                       R6 R5 K1 ["text"]
      182 SETTABLE                         R5 R3 R4
      183 GETUPVAL                         R4 3
      184 GETTABLEKS                       R4 R4 K29 ["Default"]
      186 DUPTABLE                         R5 K2 [{"container", "text"}]
      187 DUPTABLE                         R6 K4 [{"tag"}]
      188 LOADK                            R7 K27 ["stroke-default"]
      189 SETTABLEKS                       R7 R6 K3 ["tag"]
      191 SETTABLEKS                       R6 R5 K0 ["container"]
      193 DUPTABLE                         R6 K4 [{"tag"}]
      194 LOADK                            R7 K28 ["content-default"]
      195 SETTABLEKS                       R7 R6 K3 ["tag"]
      197 SETTABLEKS                       R6 R5 K1 ["text"]
      199 SETTABLE                         R5 R3 R4
      200 GETUPVAL                         R4 3
      201 GETTABLEKS                       R4 R4 K30 ["Hover"]
      203 DUPTABLE                         R5 K2 [{"container", "text"}]
      204 DUPTABLE                         R6 K4 [{"tag"}]
      205 LOADK                            R7 K31 ["stroke-emphasis"]
      206 SETTABLEKS                       R7 R6 K3 ["tag"]
      208 SETTABLEKS                       R6 R5 K0 ["container"]
      210 DUPTABLE                         R6 K4 [{"tag"}]
      211 LOADK                            R7 K32 ["content-emphasis"]
      212 SETTABLEKS                       R7 R6 K3 ["tag"]
      214 SETTABLEKS                       R6 R5 K1 ["text"]
      216 SETTABLE                         R5 R3 R4
      217 GETUPVAL                         R4 3
      218 GETTABLEKS                       R4 R4 K33 ["Pressed"]
      220 DUPTABLE                         R5 K2 [{"container", "text"}]
      221 DUPTABLE                         R6 K4 [{"tag"}]
      222 LOADK                            R7 K31 ["stroke-emphasis"]
      223 SETTABLEKS                       R7 R6 K3 ["tag"]
      225 SETTABLEKS                       R6 R5 K0 ["container"]
      227 DUPTABLE                         R6 K4 [{"tag"}]
      228 LOADK                            R7 K32 ["content-emphasis"]
      229 SETTABLEKS                       R7 R6 K3 ["tag"]
      231 SETTABLEKS                       R6 R5 K1 ["text"]
      233 SETTABLE                         R5 R3 R4
      234 DUPTABLE                         R4 K2 [{"container", "text"}]
      235 DUPTABLE                         R5 K4 [{"tag"}]
      236 LOADK                            R6 K34 ["stroke-alert"]
      237 SETTABLEKS                       R6 R5 K3 ["tag"]
      239 SETTABLEKS                       R5 R4 K0 ["container"]
      241 DUPTABLE                         R5 K4 [{"tag"}]
      242 LOADK                            R6 K28 ["content-default"]
      243 SETTABLEKS                       R6 R5 K3 ["tag"]
      245 SETTABLEKS                       R5 R4 K1 ["text"]
      247 SETTABLEKS                       R4 R3 K35 ["Error"]
      249 GETUPVAL                         R4 4
      250 GETTABLEKS                       R4 R4 K36 ["map"]
      252 MOVE                             R5 R3
      253 DUPCLOSURE                       R6 K37 [PROTO_0]
      254 CAPTURE                          UPVAL U4
      255 CALL                             R4 2 1
      256 DUPTABLE                         R5 K42 [{"common", "sizes", "states", "placeholderStates"}]
      257 SETTABLEKS                       R1 R5 K38 ["common"]
      259 SETTABLEKS                       R2 R5 K39 ["sizes"]
      261 SETTABLEKS                       R3 R5 K40 ["states"]
      263 SETTABLEKS                       R4 R5 K41 ["placeholderStates"]
      265 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useVariants"]
        3 LOADK                            R6 K1 ["Dropdown"]
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R0
        6 CALL                             R5 3 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R6 K2 ["Error"]
        9 JUMP                             ; [+1]
       10 MOVE                             R6 R2
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K3 ["common"]
       14 GETTABLEKS                       R10 R5 K4 ["sizes"]
       16 GETTABLE                         R9 R10 R1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETTABLEKS                       R11 R5 K5 ["placeholderStates"]
       20 GETTABLE                         R10 R11 R6
       21 JUMP                             ; [+3]
       22 GETTABLEKS                       R11 R5 K6 ["states"]
       24 GETTABLE                         R10 R11 R6
       25 CALL                             R7 3 -1
       26 RETURN                           R7 -1

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
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["composeStyleVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Providers"]
       60 GETTABLEKS                       R10 R10 K18 ["Style"]
       62 GETTABLEKS                       R10 R10 K19 ["Tokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Providers"]
       69 GETTABLEKS                       R11 R11 K18 ["Style"]
       71 GETTABLEKS                       R11 R11 K20 ["VariantsContext"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K15 ["Utility"]
       78 GETTABLEKS                       R12 R12 K21 ["Flags"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_1]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 DUPCLOSURE                       R13 K23 [PROTO_2]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R8
       91 RETURN                           R13 1
