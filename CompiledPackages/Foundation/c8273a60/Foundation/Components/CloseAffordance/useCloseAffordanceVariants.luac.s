PROTO_0:
        0 DUPTABLE                         R0 K2 [{"container", "content"}]
        1 DUPTABLE                         R1 K4 [{"tag"}]
        2 LOADK                            R2 K5 ["bg-over-media-100"]
        3 SETTABLEKS                       R2 R1 K3 ["tag"]
        5 SETTABLEKS                       R1 R0 K0 ["container"]
        7 DUPTABLE                         R1 K7 [{"style"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K8 ["Color"]
       11 GETTABLEKS                       R2 R2 K9 ["Content"]
       13 GETTABLEKS                       R2 R2 K10 ["Emphasis"]
       15 SETTABLEKS                       R2 R1 K6 ["style"]
       17 SETTABLEKS                       R1 R0 K1 ["content"]
       19 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K4 [{"stateLayer"}]
        2 DUPTABLE                         R3 K6 [{"mode"}]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K7 ["COLOR_MODE_TO_STATE_LAYER_MODE"]
        6 LOADB                            R7 0
        7 GETTABLE                         R5 R6 R7
        8 GETTABLE                         R4 R5 R0
        9 SETTABLEKS                       R4 R3 K5 ["mode"]
       11 SETTABLEKS                       R3 R2 K3 ["stateLayer"]
       13 SETTABLEKS                       R2 R1 K0 ["container"]
       15 DUPTABLE                         R2 K9 [{"style"}]
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R0
       18 GETTABLEKS                       R3 R3 K10 ["Content"]
       20 GETTABLEKS                       R3 R3 K11 ["Emphasis"]
       22 SETTABLEKS                       R3 R2 K8 ["style"]
       24 SETTABLEKS                       R2 R1 K1 ["content"]
       26 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"container"}]
        1 DUPTABLE                         R2 K3 [{"tag"}]
        2 LOADK                            R3 K4 ["row align-x-center align-y-center auto-xy clip"]
        3 SETTABLEKS                       R3 R2 K2 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 2 0
       12 LOADB                            R4 1
       13 NEWTABLE                         R5 4 0
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["XSmall"]
       18 DUPTABLE                         R7 K7 [{"container", "content"}]
       19 DUPTABLE                         R8 K10 [{"size", "padding"}]
       20 GETIMPORT                        R9 K13 [UDim2.fromOffset]
       22 GETTABLEKS                       R11 R2 K14 ["sizes"]
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K5 ["XSmall"]
       27 GETTABLE                         R10 R11 R12
       28 GETTABLEKS                       R10 R10 K0 ["container"]
       30 GETTABLEKS                       R10 R10 K15 ["height"]
       32 GETTABLEKS                       R12 R2 K14 ["sizes"]
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R13 R13 K5 ["XSmall"]
       37 GETTABLE                         R11 R12 R13
       38 GETTABLEKS                       R11 R11 K0 ["container"]
       40 GETTABLEKS                       R11 R11 K15 ["height"]
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K8 ["size"]
       45 GETIMPORT                        R9 K18 [UDim.new]
       47 LOADN                            R10 0
       48 GETTABLEKS                       R11 R0 K19 ["Size"]
       50 GETTABLEKS                       R11 R11 K20 ["Size_100"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K9 ["padding"]
       55 SETTABLEKS                       R8 R7 K0 ["container"]
       57 DUPTABLE                         R8 K22 [{"iconSize"}]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K23 ["Small"]
       61 SETTABLEKS                       R9 R8 K21 ["iconSize"]
       63 SETTABLEKS                       R8 R7 K6 ["content"]
       65 SETTABLE                         R7 R5 R6
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K23 ["Small"]
       69 DUPTABLE                         R7 K7 [{"container", "content"}]
       70 DUPTABLE                         R8 K10 [{"size", "padding"}]
       71 GETIMPORT                        R9 K13 [UDim2.fromOffset]
       73 GETTABLEKS                       R11 R2 K14 ["sizes"]
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R12 R12 K23 ["Small"]
       78 GETTABLE                         R10 R11 R12
       79 GETTABLEKS                       R10 R10 K0 ["container"]
       81 GETTABLEKS                       R10 R10 K15 ["height"]
       83 GETTABLEKS                       R12 R2 K14 ["sizes"]
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R13 R13 K23 ["Small"]
       88 GETTABLE                         R11 R12 R13
       89 GETTABLEKS                       R11 R11 K0 ["container"]
       91 GETTABLEKS                       R11 R11 K15 ["height"]
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K8 ["size"]
       96 GETIMPORT                        R9 K18 [UDim.new]
       98 LOADN                            R10 0
       99 GETTABLEKS                       R11 R0 K19 ["Size"]
      101 GETTABLEKS                       R11 R11 K24 ["Size_150"]
      103 CALL                             R9 2 1
      104 SETTABLEKS                       R9 R8 K9 ["padding"]
      106 SETTABLEKS                       R8 R7 K0 ["container"]
      108 DUPTABLE                         R8 K22 [{"iconSize"}]
      109 GETUPVAL                         R9 2
      110 GETTABLEKS                       R9 R9 K25 ["Medium"]
      112 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      114 SETTABLEKS                       R8 R7 K6 ["content"]
      116 SETTABLE                         R7 R5 R6
      117 GETUPVAL                         R6 1
      118 GETTABLEKS                       R6 R6 K25 ["Medium"]
      120 DUPTABLE                         R7 K7 [{"container", "content"}]
      121 DUPTABLE                         R8 K10 [{"size", "padding"}]
      122 GETIMPORT                        R9 K13 [UDim2.fromOffset]
      124 GETTABLEKS                       R11 R2 K14 ["sizes"]
      126 GETUPVAL                         R12 1
      127 GETTABLEKS                       R12 R12 K25 ["Medium"]
      129 GETTABLE                         R10 R11 R12
      130 GETTABLEKS                       R10 R10 K0 ["container"]
      132 GETTABLEKS                       R10 R10 K15 ["height"]
      134 GETTABLEKS                       R12 R2 K14 ["sizes"]
      136 GETUPVAL                         R13 1
      137 GETTABLEKS                       R13 R13 K25 ["Medium"]
      139 GETTABLE                         R11 R12 R13
      140 GETTABLEKS                       R11 R11 K0 ["container"]
      142 GETTABLEKS                       R11 R11 K15 ["height"]
      144 CALL                             R9 2 1
      145 SETTABLEKS                       R9 R8 K8 ["size"]
      147 GETIMPORT                        R9 K18 [UDim.new]
      149 LOADN                            R10 0
      150 GETTABLEKS                       R11 R0 K19 ["Size"]
      152 GETTABLEKS                       R11 R11 K26 ["Size_200"]
      154 CALL                             R9 2 1
      155 SETTABLEKS                       R9 R8 K9 ["padding"]
      157 SETTABLEKS                       R8 R7 K0 ["container"]
      159 DUPTABLE                         R8 K22 [{"iconSize"}]
      160 GETUPVAL                         R9 2
      161 GETTABLEKS                       R9 R9 K27 ["Large"]
      163 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      165 SETTABLEKS                       R8 R7 K6 ["content"]
      167 SETTABLE                         R7 R5 R6
      168 SETTABLE                         R5 R3 R4
      169 LOADB                            R4 0
      170 NEWTABLE                         R5 4 0
      172 GETUPVAL                         R6 1
      173 GETTABLEKS                       R6 R6 K5 ["XSmall"]
      175 DUPTABLE                         R7 K28 [{"content"}]
      176 DUPTABLE                         R8 K22 [{"iconSize"}]
      177 GETUPVAL                         R9 2
      178 GETTABLEKS                       R9 R9 K5 ["XSmall"]
      180 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      182 SETTABLEKS                       R8 R7 K6 ["content"]
      184 SETTABLE                         R7 R5 R6
      185 GETUPVAL                         R6 1
      186 GETTABLEKS                       R6 R6 K23 ["Small"]
      188 DUPTABLE                         R7 K28 [{"content"}]
      189 DUPTABLE                         R8 K22 [{"iconSize"}]
      190 GETUPVAL                         R9 2
      191 GETTABLEKS                       R9 R9 K23 ["Small"]
      193 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      195 SETTABLEKS                       R8 R7 K6 ["content"]
      197 SETTABLE                         R7 R5 R6
      198 GETUPVAL                         R6 1
      199 GETTABLEKS                       R6 R6 K25 ["Medium"]
      201 DUPTABLE                         R7 K28 [{"content"}]
      202 DUPTABLE                         R8 K22 [{"iconSize"}]
      203 GETUPVAL                         R9 2
      204 GETTABLEKS                       R9 R9 K27 ["Large"]
      206 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      208 SETTABLEKS                       R8 R7 K6 ["content"]
      210 SETTABLE                         R7 R5 R6
      211 SETTABLE                         R5 R3 R4
      212 NEWTABLE                         R4 2 0
      214 GETUPVAL                         R5 3
      215 GETTABLEKS                       R5 R5 K29 ["OverMedia"]
      217 GETUPVAL                         R6 4
      218 GETTABLEKS                       R6 R6 K30 ["map"]
      220 GETUPVAL                         R7 5
      221 NEWCLOSURE                       R8 P0
      222 CAPTURE                          VAL R0
      223 CALL                             R6 2 1
      224 SETTABLE                         R6 R4 R5
      225 GETUPVAL                         R5 3
      226 GETTABLEKS                       R5 R5 K31 ["Utility"]
      228 GETUPVAL                         R6 4
      229 GETTABLEKS                       R6 R6 K30 ["map"]
      231 GETUPVAL                         R7 5
      232 NEWCLOSURE                       R8 P1
      233 CAPTURE                          UPVAL U6
      234 CAPTURE                          VAL R0
      235 CALL                             R6 2 1
      236 SETTABLE                         R6 R4 R5
      237 NEWTABLE                         R5 2 0
      239 LOADB                            R6 1
      240 DUPTABLE                         R7 K1 [{"container"}]
      241 DUPTABLE                         R8 K33 [{"radius"}]
      242 GETTABLEKS                       R9 R0 K34 ["Radius"]
      244 GETTABLEKS                       R9 R9 K25 ["Medium"]
      246 SETTABLEKS                       R9 R8 K32 ["radius"]
      248 SETTABLEKS                       R8 R7 K0 ["container"]
      250 SETTABLE                         R7 R5 R6
      251 LOADB                            R6 0
      252 DUPTABLE                         R7 K1 [{"container"}]
      253 DUPTABLE                         R8 K33 [{"radius"}]
      254 LOADN                            R9 0
      255 SETTABLEKS                       R9 R8 K32 ["radius"]
      257 SETTABLEKS                       R8 R7 K0 ["container"]
      259 SETTABLE                         R7 R5 R6
      260 NEWTABLE                         R6 2 0
      262 LOADB                            R7 1
      263 DUPTABLE                         R8 K1 [{"container"}]
      264 DUPTABLE                         R9 K33 [{"radius"}]
      265 GETTABLEKS                       R10 R0 K34 ["Radius"]
      267 GETTABLEKS                       R10 R10 K35 ["Circle"]
      269 SETTABLEKS                       R10 R9 K32 ["radius"]
      271 SETTABLEKS                       R9 R8 K0 ["container"]
      273 SETTABLE                         R8 R6 R7
      274 LOADB                            R7 0
      275 NEWTABLE                         R8 0 0
      277 SETTABLE                         R8 R6 R7
      278 DUPTABLE                         R7 K39 [{"common", "types", "sizes", "padding", "circular"}]
      279 SETTABLEKS                       R1 R7 K36 ["common"]
      281 SETTABLEKS                       R4 R7 K37 ["types"]
      283 SETTABLEKS                       R3 R7 K14 ["sizes"]
      285 SETTABLEKS                       R5 R7 K9 ["padding"]
      287 SETTABLEKS                       R6 R7 K38 ["circular"]
      289 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["useVariants"]
        3 LOADK                            R7 K1 ["CloseAffordance"]
        4 GETUPVAL                         R8 1
        5 MOVE                             R9 R0
        6 CALL                             R6 3 1
        7 LOADB                            R7 1
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R8 R8 K2 ["OverMedia"]
       11 JUMPIFEQ                         R2 R8 ; [+2]
       13 MOVE                             R7 R5
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R9 R6 K3 ["common"]
       17 GETTABLEKS                       R12 R6 K4 ["types"]
       19 GETTABLE                         R11 R12 R2
       20 MOVE                             R12 R3
       21 JUMPIF                           R12 ; [+3]
       22 GETUPVAL                         R12 4
       23 GETTABLEKS                       R12 R12 K5 ["Color"]
       25 GETTABLE                         R10 R11 R12
       26 GETTABLEKS                       R13 R6 K6 ["sizes"]
       28 GETTABLE                         R12 R13 R4
       29 GETTABLE                         R11 R12 R1
       30 GETTABLEKS                       R13 R6 K7 ["padding"]
       32 GETTABLE                         R12 R13 R4
       33 GETTABLEKS                       R14 R6 K8 ["circular"]
       35 GETTABLE                         R13 R14 R7
       36 CALL                             R8 5 -1
       37 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ColorMode"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R5 K10 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Style"]
       48 GETTABLEKS                       R8 R8 K16 ["VariantsContext"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Utility"]
       55 GETTABLEKS                       R9 R9 K18 ["composeStyleVariant"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K8 ["Enums"]
       62 GETTABLEKS                       R10 R10 K19 ["CloseAffordanceVariant"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Providers"]
       69 GETTABLEKS                       R11 R11 K15 ["Style"]
       71 GETTABLEKS                       R11 R11 K20 ["Tokens"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K21 ["Constants"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Components"]
       83 GETTABLEKS                       R13 R13 K22 ["Button"]
       85 GETTABLEKS                       R13 R13 K23 ["getSharedVariants"]
       87 CALL                             R12 1 1
       88 DUPCLOSURE                       R13 K24 [PROTO_2]
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R11
       96 DUPCLOSURE                       R14 K25 [PROTO_3]
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R3
      102 RETURN                           R14 1
