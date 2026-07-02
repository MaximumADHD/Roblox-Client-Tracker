PROTO_0:
        0 DUPTABLE                         R0 K2 [{"container", "content"}]
        1 DUPTABLE                         R1 K5 [{["tag"] = "bg-over-media-100"}]
        2 SETTABLEKS                       R1 R0 K0 ["container"]
        4 DUPTABLE                         R1 K7 [{"style"}]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K8 ["Color"]
        8 GETTABLEKS                       R2 R2 K9 ["Content"]
       10 GETTABLEKS                       R2 R2 K10 ["Emphasis"]
       12 SETTABLEKS                       R2 R1 K6 ["style"]
       14 SETTABLEKS                       R1 R0 K1 ["content"]
       16 RETURN                           R0 1

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
        1 DUPTABLE                         R2 K4 [{["tag"] = "row align-x-center align-y-center auto-xy clip"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 2 0
        9 LOADB                            R4 1
       10 NEWTABLE                         R5 4 0
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["XSmall"]
       15 DUPTABLE                         R7 K7 [{"container", "content"}]
       16 DUPTABLE                         R8 K10 [{"size", "padding"}]
       17 GETIMPORT                        R9 K13 [UDim2.fromOffset]
       19 GETTABLEKS                       R11 R2 K14 ["sizes"]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K5 ["XSmall"]
       24 GETTABLE                         R10 R11 R12
       25 GETTABLEKS                       R10 R10 K0 ["container"]
       27 GETTABLEKS                       R10 R10 K15 ["height"]
       29 GETTABLEKS                       R12 R2 K14 ["sizes"]
       31 GETUPVAL                         R13 1
       32 GETTABLEKS                       R13 R13 K5 ["XSmall"]
       34 GETTABLE                         R11 R12 R13
       35 GETTABLEKS                       R11 R11 K0 ["container"]
       37 GETTABLEKS                       R11 R11 K15 ["height"]
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K8 ["size"]
       42 GETIMPORT                        R9 K18 [UDim.new]
       44 LOADN                            R10 0
       45 GETTABLEKS                       R11 R0 K19 ["Size"]
       47 GETTABLEKS                       R11 R11 K20 ["Size_100"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K9 ["padding"]
       52 SETTABLEKS                       R8 R7 K0 ["container"]
       54 DUPTABLE                         R8 K22 [{"iconSize"}]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K23 ["Small"]
       58 SETTABLEKS                       R9 R8 K21 ["iconSize"]
       60 SETTABLEKS                       R8 R7 K6 ["content"]
       62 SETTABLE                         R7 R5 R6
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K23 ["Small"]
       66 DUPTABLE                         R7 K7 [{"container", "content"}]
       67 DUPTABLE                         R8 K10 [{"size", "padding"}]
       68 GETIMPORT                        R9 K13 [UDim2.fromOffset]
       70 GETTABLEKS                       R11 R2 K14 ["sizes"]
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R12 R12 K23 ["Small"]
       75 GETTABLE                         R10 R11 R12
       76 GETTABLEKS                       R10 R10 K0 ["container"]
       78 GETTABLEKS                       R10 R10 K15 ["height"]
       80 GETTABLEKS                       R12 R2 K14 ["sizes"]
       82 GETUPVAL                         R13 1
       83 GETTABLEKS                       R13 R13 K23 ["Small"]
       85 GETTABLE                         R11 R12 R13
       86 GETTABLEKS                       R11 R11 K0 ["container"]
       88 GETTABLEKS                       R11 R11 K15 ["height"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K8 ["size"]
       93 GETIMPORT                        R9 K18 [UDim.new]
       95 LOADN                            R10 0
       96 GETTABLEKS                       R11 R0 K19 ["Size"]
       98 GETTABLEKS                       R11 R11 K24 ["Size_150"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K9 ["padding"]
      103 SETTABLEKS                       R8 R7 K0 ["container"]
      105 DUPTABLE                         R8 K22 [{"iconSize"}]
      106 GETUPVAL                         R9 2
      107 GETTABLEKS                       R9 R9 K25 ["Medium"]
      109 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      111 SETTABLEKS                       R8 R7 K6 ["content"]
      113 SETTABLE                         R7 R5 R6
      114 GETUPVAL                         R6 1
      115 GETTABLEKS                       R6 R6 K25 ["Medium"]
      117 DUPTABLE                         R7 K7 [{"container", "content"}]
      118 DUPTABLE                         R8 K10 [{"size", "padding"}]
      119 GETIMPORT                        R9 K13 [UDim2.fromOffset]
      121 GETTABLEKS                       R11 R2 K14 ["sizes"]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K25 ["Medium"]
      126 GETTABLE                         R10 R11 R12
      127 GETTABLEKS                       R10 R10 K0 ["container"]
      129 GETTABLEKS                       R10 R10 K15 ["height"]
      131 GETTABLEKS                       R12 R2 K14 ["sizes"]
      133 GETUPVAL                         R13 1
      134 GETTABLEKS                       R13 R13 K25 ["Medium"]
      136 GETTABLE                         R11 R12 R13
      137 GETTABLEKS                       R11 R11 K0 ["container"]
      139 GETTABLEKS                       R11 R11 K15 ["height"]
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K8 ["size"]
      144 GETIMPORT                        R9 K18 [UDim.new]
      146 LOADN                            R10 0
      147 GETTABLEKS                       R11 R0 K19 ["Size"]
      149 GETTABLEKS                       R11 R11 K26 ["Size_200"]
      151 CALL                             R9 2 1
      152 SETTABLEKS                       R9 R8 K9 ["padding"]
      154 SETTABLEKS                       R8 R7 K0 ["container"]
      156 DUPTABLE                         R8 K22 [{"iconSize"}]
      157 GETUPVAL                         R9 2
      158 GETTABLEKS                       R9 R9 K27 ["Large"]
      160 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      162 SETTABLEKS                       R8 R7 K6 ["content"]
      164 SETTABLE                         R7 R5 R6
      165 SETTABLE                         R5 R3 R4
      166 LOADB                            R4 0
      167 NEWTABLE                         R5 4 0
      169 GETUPVAL                         R6 1
      170 GETTABLEKS                       R6 R6 K5 ["XSmall"]
      172 DUPTABLE                         R7 K28 [{"content"}]
      173 DUPTABLE                         R8 K22 [{"iconSize"}]
      174 GETUPVAL                         R9 2
      175 GETTABLEKS                       R9 R9 K5 ["XSmall"]
      177 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      179 SETTABLEKS                       R8 R7 K6 ["content"]
      181 SETTABLE                         R7 R5 R6
      182 GETUPVAL                         R6 1
      183 GETTABLEKS                       R6 R6 K23 ["Small"]
      185 DUPTABLE                         R7 K28 [{"content"}]
      186 DUPTABLE                         R8 K22 [{"iconSize"}]
      187 GETUPVAL                         R9 2
      188 GETTABLEKS                       R9 R9 K23 ["Small"]
      190 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      192 SETTABLEKS                       R8 R7 K6 ["content"]
      194 SETTABLE                         R7 R5 R6
      195 GETUPVAL                         R6 1
      196 GETTABLEKS                       R6 R6 K25 ["Medium"]
      198 DUPTABLE                         R7 K28 [{"content"}]
      199 DUPTABLE                         R8 K22 [{"iconSize"}]
      200 GETUPVAL                         R9 2
      201 GETTABLEKS                       R9 R9 K27 ["Large"]
      203 SETTABLEKS                       R9 R8 K21 ["iconSize"]
      205 SETTABLEKS                       R8 R7 K6 ["content"]
      207 SETTABLE                         R7 R5 R6
      208 SETTABLE                         R5 R3 R4
      209 NEWTABLE                         R4 2 0
      211 GETUPVAL                         R5 3
      212 GETTABLEKS                       R5 R5 K29 ["OverMedia"]
      214 GETUPVAL                         R6 4
      215 GETTABLEKS                       R6 R6 K30 ["map"]
      217 GETUPVAL                         R7 5
      218 NEWCLOSURE                       R8 P0
      219 CAPTURE                          VAL R0
      220 CALL                             R6 2 1
      221 SETTABLE                         R6 R4 R5
      222 GETUPVAL                         R5 3
      223 GETTABLEKS                       R5 R5 K31 ["Utility"]
      225 GETUPVAL                         R6 4
      226 GETTABLEKS                       R6 R6 K30 ["map"]
      228 GETUPVAL                         R7 5
      229 NEWCLOSURE                       R8 P1
      230 CAPTURE                          UPVAL U6
      231 CAPTURE                          VAL R0
      232 CALL                             R6 2 1
      233 SETTABLE                         R6 R4 R5
      234 NEWTABLE                         R5 2 0
      236 LOADB                            R6 1
      237 DUPTABLE                         R7 K1 [{"container"}]
      238 DUPTABLE                         R8 K33 [{"radius"}]
      239 GETTABLEKS                       R9 R0 K34 ["Radius"]
      241 GETTABLEKS                       R9 R9 K25 ["Medium"]
      243 SETTABLEKS                       R9 R8 K32 ["radius"]
      245 SETTABLEKS                       R8 R7 K0 ["container"]
      247 SETTABLE                         R7 R5 R6
      248 LOADB                            R6 0
      249 DUPTABLE                         R7 K1 [{"container"}]
      250 DUPTABLE                         R8 K36 [{["radius"] = 0}]
      251 SETTABLEKS                       R8 R7 K0 ["container"]
      253 SETTABLE                         R7 R5 R6
      254 NEWTABLE                         R6 2 0
      256 LOADB                            R7 1
      257 DUPTABLE                         R8 K1 [{"container"}]
      258 DUPTABLE                         R9 K33 [{"radius"}]
      259 GETTABLEKS                       R10 R0 K34 ["Radius"]
      261 GETTABLEKS                       R10 R10 K37 ["Circle"]
      263 SETTABLEKS                       R10 R9 K32 ["radius"]
      265 SETTABLEKS                       R9 R8 K0 ["container"]
      267 SETTABLE                         R8 R6 R7
      268 LOADB                            R7 0
      269 NEWTABLE                         R8 0 0
      271 SETTABLE                         R8 R6 R7
      272 DUPTABLE                         R7 K41 [{"common", "types", "sizes", "padding", "circular"}]
      273 SETTABLEKS                       R1 R7 K38 ["common"]
      275 SETTABLEKS                       R4 R7 K39 ["types"]
      277 SETTABLEKS                       R3 R7 K14 ["sizes"]
      279 SETTABLEKS                       R5 R7 K9 ["padding"]
      281 SETTABLEKS                       R6 R7 K40 ["circular"]
      283 RETURN                           R7 1

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
