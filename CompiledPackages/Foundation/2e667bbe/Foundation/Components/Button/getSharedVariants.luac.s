PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K3 ["Color3"]
        3 SETTABLEKS                       R2 R1 K0 ["Color"]
        5 GETTABLEKS                       R2 R0 K1 ["Transparency"]
        7 SETTABLEKS                       R2 R1 K1 ["Transparency"]
        9 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"container", "content"}]
        1 DUPTABLE                         R3 K6 [{"style", "stroke", "stateLayer"}]
        2 GETTABLEKS                       R4 R0 K7 ["Background"]
        4 SETTABLEKS                       R4 R3 K3 ["style"]
        6 GETTABLEKS                       R5 R0 K8 ["Border"]
        8 DUPTABLE                         R4 K11 [{"Color", "Transparency"}]
        9 GETTABLEKS                       R6 R5 K12 ["Color3"]
       11 SETTABLEKS                       R6 R4 K9 ["Color"]
       13 GETTABLEKS                       R6 R5 K10 ["Transparency"]
       15 SETTABLEKS                       R6 R4 K10 ["Transparency"]
       17 SETTABLEKS                       R4 R3 K4 ["stroke"]
       19 JUMPIFNOT                        R1 ; [+7]
       20 DUPTABLE                         R4 K14 [{"mode"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K15 ["Inverse"]
       24 SETTABLEKS                       R5 R4 K13 ["mode"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K5 ["stateLayer"]
       30 SETTABLEKS                       R3 R2 K0 ["container"]
       32 DUPTABLE                         R3 K16 [{"style"}]
       33 GETTABLEKS                       R4 R0 K17 ["Foreground"]
       35 SETTABLEKS                       R4 R3 K3 ["style"]
       37 SETTABLEKS                       R3 R2 K1 ["content"]
       39 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R3 2 0
        2 LOADB                            R4 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R7 R0 K0 ["Color"]
        6 GETTABLE                         R6 R7 R1
        7 MOVE                             R7 R2
        8 CALL                             R5 2 1
        9 SETTABLE                         R5 R3 R4
       10 LOADB                            R4 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R7 R0 K1 ["Inverse"]
       14 GETTABLE                         R6 R7 R1
       15 NOT                              R7 R2
       16 CALL                             R5 2 1
       17 SETTABLE                         R5 R3 R4
       18 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Utility"]
        5 NEWTABLE                         R3 2 0
        7 LOADB                            R4 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R7 R0 K2 ["Color"]
       11 GETTABLEKS                       R6 R7 K1 ["ActionUtility"]
       13 LOADNIL                          R7
       14 CALL                             R5 2 1
       15 SETTABLE                         R5 R3 R4
       16 LOADB                            R4 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R7 R0 K3 ["Inverse"]
       20 GETTABLEKS                       R6 R7 K1 ["ActionUtility"]
       22 LOADB                            R7 1
       23 CALL                             R5 2 1
       24 SETTABLE                         R5 R3 R4
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K4 ["Standard"]
       29 NEWTABLE                         R3 2 0
       31 LOADB                            R4 0
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R7 R0 K2 ["Color"]
       35 GETTABLEKS                       R6 R7 K5 ["ActionStandard"]
       37 LOADNIL                          R7
       38 CALL                             R5 2 1
       39 SETTABLE                         R5 R3 R4
       40 LOADB                            R4 1
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R7 R0 K3 ["Inverse"]
       44 GETTABLEKS                       R6 R7 K5 ["ActionStandard"]
       46 LOADB                            R7 1
       47 CALL                             R5 2 1
       48 SETTABLE                         R5 R3 R4
       49 SETTABLE                         R3 R1 R2
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K6 ["Emphasis"]
       53 NEWTABLE                         R3 2 0
       55 LOADB                            R4 0
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R7 R0 K2 ["Color"]
       59 GETTABLEKS                       R6 R7 K7 ["ActionEmphasis"]
       61 LOADNIL                          R7
       62 CALL                             R5 2 1
       63 SETTABLE                         R5 R3 R4
       64 LOADB                            R4 1
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R7 R0 K3 ["Inverse"]
       68 GETTABLEKS                       R6 R7 K7 ["ActionEmphasis"]
       70 LOADB                            R7 1
       71 CALL                             R5 2 1
       72 SETTABLE                         R5 R3 R4
       73 SETTABLE                         R3 R1 R2
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K8 ["Alert"]
       77 NEWTABLE                         R3 2 0
       79 LOADB                            R4 0
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R7 R0 K2 ["Color"]
       83 GETTABLEKS                       R6 R7 K9 ["ActionAlert"]
       85 LOADNIL                          R7
       86 CALL                             R5 2 1
       87 SETTABLE                         R5 R3 R4
       88 LOADB                            R4 1
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R7 R0 K3 ["Inverse"]
       92 GETTABLEKS                       R6 R7 K9 ["ActionAlert"]
       94 LOADB                            R7 1
       95 CALL                             R5 2 1
       96 SETTABLE                         R5 R3 R4
       97 SETTABLE                         R3 R1 R2
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R2 R3 K10 ["SubEmphasis"]
      101 NEWTABLE                         R3 2 0
      103 LOADB                            R4 0
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R7 R0 K2 ["Color"]
      107 GETTABLEKS                       R6 R7 K11 ["ActionSubEmphasis"]
      109 LOADB                            R7 1
      110 CALL                             R5 2 1
      111 SETTABLE                         R5 R3 R4
      112 LOADB                            R4 1
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R7 R0 K3 ["Inverse"]
      116 GETTABLEKS                       R6 R7 K11 ["ActionSubEmphasis"]
      118 LOADB                            R7 0
      119 CALL                             R5 2 1
      120 SETTABLE                         R5 R3 R4
      121 SETTABLE                         R3 R1 R2
      122 GETUPVAL                         R3 0
      123 GETTABLEKS                       R2 R3 K12 ["SoftEmphasis"]
      125 NEWTABLE                         R3 2 0
      127 LOADB                            R4 0
      128 GETUPVAL                         R5 1
      129 GETTABLEKS                       R7 R0 K2 ["Color"]
      131 GETTABLEKS                       R6 R7 K13 ["ActionSoftEmphasis"]
      133 LOADNIL                          R7
      134 CALL                             R5 2 1
      135 SETTABLE                         R5 R3 R4
      136 LOADB                            R4 1
      137 GETUPVAL                         R5 1
      138 GETTABLEKS                       R7 R0 K3 ["Inverse"]
      140 GETTABLEKS                       R6 R7 K13 ["ActionSoftEmphasis"]
      142 LOADB                            R7 1
      143 CALL                             R5 2 1
      144 SETTABLE                         R5 R3 R4
      145 SETTABLE                         R3 R1 R2
      146 GETUPVAL                         R3 0
      147 GETTABLEKS                       R2 R3 K14 ["Subtle"]
      149 NEWTABLE                         R3 2 0
      151 LOADB                            R4 0
      152 GETUPVAL                         R5 1
      153 GETTABLEKS                       R7 R0 K2 ["Color"]
      155 GETTABLEKS                       R6 R7 K15 ["ActionSubtle"]
      157 LOADNIL                          R7
      158 CALL                             R5 2 1
      159 SETTABLE                         R5 R3 R4
      160 LOADB                            R4 1
      161 GETUPVAL                         R5 1
      162 GETTABLEKS                       R7 R0 K3 ["Inverse"]
      164 GETTABLEKS                       R6 R7 K15 ["ActionSubtle"]
      166 LOADB                            R7 1
      167 CALL                             R5 2 1
      168 SETTABLE                         R5 R3 R4
      169 SETTABLE                         R3 R1 R2
      170 GETUPVAL                         R3 0
      171 GETTABLEKS                       R2 R3 K16 ["Text"]
      173 NEWTABLE                         R3 2 0
      175 LOADB                            R4 0
      176 DUPTABLE                         R5 K18 [{"content"}]
      177 DUPTABLE                         R6 K20 [{"style"}]
      178 GETTABLEKS                       R9 R0 K2 ["Color"]
      180 GETTABLEKS                       R8 R9 K21 ["Content"]
      182 GETTABLEKS                       R7 R8 K6 ["Emphasis"]
      184 SETTABLEKS                       R7 R6 K19 ["style"]
      186 SETTABLEKS                       R6 R5 K17 ["content"]
      188 SETTABLE                         R5 R3 R4
      189 LOADB                            R4 1
      190 DUPTABLE                         R5 K23 [{"container", "content"}]
      191 DUPTABLE                         R6 K25 [{"stateLayer"}]
      192 DUPTABLE                         R7 K27 [{"mode"}]
      193 GETUPVAL                         R9 2
      194 GETTABLEKS                       R8 R9 K3 ["Inverse"]
      196 SETTABLEKS                       R8 R7 K26 ["mode"]
      198 SETTABLEKS                       R7 R6 K24 ["stateLayer"]
      200 SETTABLEKS                       R6 R5 K22 ["container"]
      202 DUPTABLE                         R6 K20 [{"style"}]
      203 GETTABLEKS                       R9 R0 K3 ["Inverse"]
      205 GETTABLEKS                       R8 R9 K21 ["Content"]
      207 GETTABLEKS                       R7 R8 K6 ["Emphasis"]
      209 SETTABLEKS                       R7 R6 K19 ["style"]
      211 SETTABLEKS                       R6 R5 K17 ["content"]
      213 SETTABLE                         R5 R3 R4
      214 SETTABLE                         R3 R1 R2
      215 GETUPVAL                         R3 0
      216 GETTABLEKS                       R2 R3 K28 ["Link"]
      218 NEWTABLE                         R3 2 0
      220 LOADB                            R4 0
      221 DUPTABLE                         R5 K18 [{"content"}]
      222 DUPTABLE                         R6 K20 [{"style"}]
      223 GETTABLEKS                       R9 R0 K2 ["Color"]
      225 GETTABLEKS                       R8 R9 K21 ["Content"]
      227 GETTABLEKS                       R7 R8 K28 ["Link"]
      229 SETTABLEKS                       R7 R6 K19 ["style"]
      231 SETTABLEKS                       R6 R5 K17 ["content"]
      233 SETTABLE                         R5 R3 R4
      234 LOADB                            R4 1
      235 DUPTABLE                         R5 K23 [{"container", "content"}]
      236 DUPTABLE                         R6 K25 [{"stateLayer"}]
      237 DUPTABLE                         R7 K27 [{"mode"}]
      238 GETUPVAL                         R9 2
      239 GETTABLEKS                       R8 R9 K3 ["Inverse"]
      241 SETTABLEKS                       R8 R7 K26 ["mode"]
      243 SETTABLEKS                       R7 R6 K24 ["stateLayer"]
      245 SETTABLEKS                       R6 R5 K22 ["container"]
      247 DUPTABLE                         R6 K20 [{"style"}]
      248 GETTABLEKS                       R9 R0 K3 ["Inverse"]
      250 GETTABLEKS                       R8 R9 K21 ["Content"]
      252 GETTABLEKS                       R7 R8 K28 ["Link"]
      254 SETTABLEKS                       R7 R6 K19 ["style"]
      256 SETTABLEKS                       R6 R5 K17 ["content"]
      258 SETTABLE                         R5 R3 R4
      259 SETTABLE                         R3 R1 R2
      260 GETUPVAL                         R3 0
      261 GETTABLEKS                       R2 R3 K29 ["OverMedia"]
      263 NEWTABLE                         R3 2 0
      265 LOADB                            R4 0
      266 GETUPVAL                         R5 1
      267 GETTABLEKS                       R7 R0 K2 ["Color"]
      269 GETTABLEKS                       R6 R7 K30 ["ActionOverMedia"]
      271 LOADB                            R7 1
      272 CALL                             R5 2 1
      273 SETTABLE                         R5 R3 R4
      274 LOADB                            R4 1
      275 GETUPVAL                         R5 1
      276 GETTABLEKS                       R7 R0 K3 ["Inverse"]
      278 GETTABLEKS                       R6 R7 K30 ["ActionOverMedia"]
      280 LOADB                            R7 0
      281 CALL                             R5 2 1
      282 SETTABLE                         R5 R3 R4
      283 SETTABLE                         R3 R1 R2
      284 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["XSmall"]
        5 DUPTABLE                         R3 K2 [{"container"}]
        6 DUPTABLE                         R4 K5 [{"radius", "height"}]
        7 GETTABLEKS                       R6 R0 K6 ["Radius"]
        9 GETTABLEKS                       R5 R6 K7 ["Small"]
       11 SETTABLEKS                       R5 R4 K3 ["radius"]
       13 GETTABLEKS                       R6 R0 K8 ["Size"]
       15 GETTABLEKS                       R5 R6 K9 ["Size_600"]
       17 SETTABLEKS                       R5 R4 K4 ["height"]
       19 SETTABLEKS                       R4 R3 K1 ["container"]
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K7 ["Small"]
       25 DUPTABLE                         R3 K2 [{"container"}]
       26 DUPTABLE                         R4 K5 [{"radius", "height"}]
       27 GETTABLEKS                       R6 R0 K6 ["Radius"]
       29 GETTABLEKS                       R5 R6 K10 ["Medium"]
       31 SETTABLEKS                       R5 R4 K3 ["radius"]
       33 GETTABLEKS                       R6 R0 K8 ["Size"]
       35 GETTABLEKS                       R5 R6 K11 ["Size_800"]
       37 SETTABLEKS                       R5 R4 K4 ["height"]
       39 SETTABLEKS                       R4 R3 K1 ["container"]
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R2 R3 K10 ["Medium"]
       45 DUPTABLE                         R3 K2 [{"container"}]
       46 DUPTABLE                         R4 K5 [{"radius", "height"}]
       47 GETTABLEKS                       R6 R0 K6 ["Radius"]
       49 GETTABLEKS                       R5 R6 K10 ["Medium"]
       51 SETTABLEKS                       R5 R4 K3 ["radius"]
       53 GETTABLEKS                       R6 R0 K8 ["Size"]
       55 GETTABLEKS                       R5 R6 K12 ["Size_1000"]
       57 SETTABLEKS                       R5 R4 K4 ["height"]
       59 SETTABLEKS                       R4 R3 K1 ["container"]
       61 SETTABLE                         R3 R1 R2
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K13 ["Large"]
       65 DUPTABLE                         R3 K2 [{"container"}]
       66 DUPTABLE                         R4 K5 [{"radius", "height"}]
       67 GETTABLEKS                       R6 R0 K6 ["Radius"]
       69 GETTABLEKS                       R5 R6 K10 ["Medium"]
       71 SETTABLEKS                       R5 R4 K3 ["radius"]
       73 GETTABLEKS                       R6 R0 K8 ["Size"]
       75 GETTABLEKS                       R5 R6 K14 ["Size_1200"]
       77 SETTABLEKS                       R5 R4 K4 ["height"]
       79 SETTABLEKS                       R4 R3 K1 ["container"]
       81 SETTABLE                         R3 R1 R2
       82 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K2 [{"sizes", "types"}]
        7 SETTABLEKS                       R1 R3 K0 ["sizes"]
        9 SETTABLEKS                       R2 R3 K1 ["types"]
       11 RETURN                           R3 1

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
       18 GETTABLEKS                       R3 R4 K9 ["ButtonVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["StateLayerMode"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R8 K14 ["Style"]
       41 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Enums"]
       48 GETTABLEKS                       R7 R8 K16 ["InputSize"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K17 [PROTO_0]
       52 DUPCLOSURE                       R8 K18 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 DUPCLOSURE                       R9 K19 [PROTO_2]
       55 CAPTURE                          VAL R8
       56 DUPCLOSURE                       R10 K20 [PROTO_3]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R11 K21 [PROTO_4]
       61 CAPTURE                          VAL R6
       62 DUPCLOSURE                       R12 K22 [PROTO_5]
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 RETURN                           R12 1
