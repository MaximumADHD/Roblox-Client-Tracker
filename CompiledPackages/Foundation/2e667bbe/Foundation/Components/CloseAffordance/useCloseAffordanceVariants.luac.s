PROTO_0:
        0 DUPTABLE                         R0 K1 [{"container"}]
        1 DUPTABLE                         R1 K4 [{"radius", "tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K5 ["Radius"]
        5 GETTABLEKS                       R2 R3 K6 ["Circle"]
        7 SETTABLEKS                       R2 R1 K2 ["radius"]
        9 LOADK                            R2 K7 ["bg-over-media-100"]
       10 SETTABLEKS                       R2 R1 K3 ["tag"]
       12 SETTABLEKS                       R1 R0 K0 ["container"]
       14 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K5 [{"radius", "stateLayer"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K6 ["Radius"]
        5 GETTABLEKS                       R3 R4 K7 ["Medium"]
        7 SETTABLEKS                       R3 R2 K3 ["radius"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 DUPTABLE                         R3 K9 [{"mode"}]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K10 ["Inverse"]
       14 SETTABLEKS                       R4 R3 K8 ["mode"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K4 ["stateLayer"]
       20 SETTABLEKS                       R2 R1 K0 ["container"]
       22 JUMPIFNOT                        R0 ; [+11]
       23 DUPTABLE                         R2 K12 [{"style"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K10 ["Inverse"]
       27 GETTABLEKS                       R4 R5 K13 ["Content"]
       29 GETTABLEKS                       R3 R4 K14 ["Emphasis"]
       31 SETTABLEKS                       R3 R2 K11 ["style"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K1 ["content"]
       37 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["auto-xy row align-y-center align-x-center clip"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K7 [{"style"}]
        8 GETTABLEKS                       R5 R0 K8 ["Color"]
       10 GETTABLEKS                       R4 R5 K9 ["Content"]
       12 GETTABLEKS                       R3 R4 K10 ["Emphasis"]
       14 SETTABLEKS                       R3 R2 K6 ["style"]
       16 SETTABLEKS                       R2 R1 K1 ["content"]
       18 GETUPVAL                         R2 0
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K11 ["XSmall"]
       26 DUPTABLE                         R5 K2 [{"container", "content"}]
       27 DUPTABLE                         R6 K14 [{"size", "padding"}]
       28 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       30 GETTABLEKS                       R11 R2 K18 ["sizes"]
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R12 R13 K11 ["XSmall"]
       35 GETTABLE                         R10 R11 R12
       36 GETTABLEKS                       R9 R10 K0 ["container"]
       38 GETTABLEKS                       R8 R9 K19 ["height"]
       40 GETTABLEKS                       R12 R2 K18 ["sizes"]
       42 GETUPVAL                         R14 1
       43 GETTABLEKS                       R13 R14 K11 ["XSmall"]
       45 GETTABLE                         R11 R12 R13
       46 GETTABLEKS                       R10 R11 K0 ["container"]
       48 GETTABLEKS                       R9 R10 K19 ["height"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K12 ["size"]
       53 GETIMPORT                        R7 K22 [UDim.new]
       55 LOADN                            R8 0
       56 GETTABLEKS                       R10 R0 K23 ["Size"]
       58 GETTABLEKS                       R9 R10 K24 ["Size_100"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K13 ["padding"]
       63 SETTABLEKS                       R6 R5 K0 ["container"]
       65 DUPTABLE                         R6 K26 [{"iconSize"}]
       66 GETUPVAL                         R8 2
       67 GETTABLEKS                       R7 R8 K27 ["Small"]
       69 SETTABLEKS                       R7 R6 K25 ["iconSize"]
       71 SETTABLEKS                       R6 R5 K1 ["content"]
       73 SETTABLE                         R5 R3 R4
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R4 R5 K27 ["Small"]
       77 DUPTABLE                         R5 K2 [{"container", "content"}]
       78 DUPTABLE                         R6 K14 [{"size", "padding"}]
       79 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       81 GETTABLEKS                       R11 R2 K18 ["sizes"]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R12 R13 K27 ["Small"]
       86 GETTABLE                         R10 R11 R12
       87 GETTABLEKS                       R9 R10 K0 ["container"]
       89 GETTABLEKS                       R8 R9 K19 ["height"]
       91 GETTABLEKS                       R12 R2 K18 ["sizes"]
       93 GETUPVAL                         R14 1
       94 GETTABLEKS                       R13 R14 K27 ["Small"]
       96 GETTABLE                         R11 R12 R13
       97 GETTABLEKS                       R10 R11 K0 ["container"]
       99 GETTABLEKS                       R9 R10 K19 ["height"]
      101 CALL                             R7 2 1
      102 SETTABLEKS                       R7 R6 K12 ["size"]
      104 GETIMPORT                        R7 K22 [UDim.new]
      106 LOADN                            R8 0
      107 GETTABLEKS                       R10 R0 K23 ["Size"]
      109 GETTABLEKS                       R9 R10 K28 ["Size_150"]
      111 CALL                             R7 2 1
      112 SETTABLEKS                       R7 R6 K13 ["padding"]
      114 SETTABLEKS                       R6 R5 K0 ["container"]
      116 DUPTABLE                         R6 K26 [{"iconSize"}]
      117 GETUPVAL                         R8 2
      118 GETTABLEKS                       R7 R8 K29 ["Medium"]
      120 SETTABLEKS                       R7 R6 K25 ["iconSize"]
      122 SETTABLEKS                       R6 R5 K1 ["content"]
      124 SETTABLE                         R5 R3 R4
      125 GETUPVAL                         R5 1
      126 GETTABLEKS                       R4 R5 K29 ["Medium"]
      128 DUPTABLE                         R5 K2 [{"container", "content"}]
      129 DUPTABLE                         R6 K14 [{"size", "padding"}]
      130 GETIMPORT                        R7 K17 [UDim2.fromOffset]
      132 GETTABLEKS                       R11 R2 K18 ["sizes"]
      134 GETUPVAL                         R13 1
      135 GETTABLEKS                       R12 R13 K29 ["Medium"]
      137 GETTABLE                         R10 R11 R12
      138 GETTABLEKS                       R9 R10 K0 ["container"]
      140 GETTABLEKS                       R8 R9 K19 ["height"]
      142 GETTABLEKS                       R12 R2 K18 ["sizes"]
      144 GETUPVAL                         R14 1
      145 GETTABLEKS                       R13 R14 K29 ["Medium"]
      147 GETTABLE                         R11 R12 R13
      148 GETTABLEKS                       R10 R11 K0 ["container"]
      150 GETTABLEKS                       R9 R10 K19 ["height"]
      152 CALL                             R7 2 1
      153 SETTABLEKS                       R7 R6 K12 ["size"]
      155 GETIMPORT                        R7 K22 [UDim.new]
      157 LOADN                            R8 0
      158 GETTABLEKS                       R10 R0 K23 ["Size"]
      160 GETTABLEKS                       R9 R10 K30 ["Size_200"]
      162 CALL                             R7 2 1
      163 SETTABLEKS                       R7 R6 K13 ["padding"]
      165 SETTABLEKS                       R6 R5 K0 ["container"]
      167 DUPTABLE                         R6 K26 [{"iconSize"}]
      168 GETUPVAL                         R8 2
      169 GETTABLEKS                       R7 R8 K31 ["Large"]
      171 SETTABLEKS                       R7 R6 K25 ["iconSize"]
      173 SETTABLEKS                       R6 R5 K1 ["content"]
      175 SETTABLE                         R5 R3 R4
      176 NEWTABLE                         R4 2 0
      178 GETUPVAL                         R6 3
      179 GETTABLEKS                       R5 R6 K32 ["OverMedia"]
      181 GETUPVAL                         R7 4
      182 GETTABLEKS                       R6 R7 K33 ["map"]
      184 NEWTABLE                         R7 2 0
      186 LOADB                            R8 1
      187 LOADB                            R9 1
      188 SETTABLE                         R9 R7 R8
      189 LOADB                            R8 0
      190 LOADB                            R9 0
      191 SETTABLE                         R9 R7 R8
      192 NEWCLOSURE                       R8 P0
      193 CAPTURE                          VAL R0
      194 CALL                             R6 2 1
      195 SETTABLE                         R6 R4 R5
      196 GETUPVAL                         R6 3
      197 GETTABLEKS                       R5 R6 K34 ["Utility"]
      199 GETUPVAL                         R7 4
      200 GETTABLEKS                       R6 R7 K33 ["map"]
      202 NEWTABLE                         R7 2 0
      204 LOADB                            R8 1
      205 LOADB                            R9 1
      206 SETTABLE                         R9 R7 R8
      207 LOADB                            R8 0
      208 LOADB                            R9 0
      209 SETTABLE                         R9 R7 R8
      210 NEWCLOSURE                       R8 P1
      211 CAPTURE                          VAL R0
      212 CAPTURE                          UPVAL U5
      213 CALL                             R6 2 1
      214 SETTABLE                         R6 R4 R5
      215 DUPTABLE                         R5 K37 [{"common", "sizes", "types"}]
      216 SETTABLEKS                       R1 R5 K35 ["common"]
      218 SETTABLEKS                       R3 R5 K18 ["sizes"]
      220 SETTABLEKS                       R4 R5 K36 ["types"]
      222 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useVariants"]
        3 LOADK                            R5 K1 ["CloseAffordance"]
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R6 R4 K2 ["common"]
       10 GETTABLEKS                       R8 R4 K3 ["sizes"]
       12 GETTABLE                         R7 R8 R1
       13 GETTABLEKS                       R10 R4 K4 ["types"]
       15 GETTABLE                         R9 R10 R2
       16 ORK                              R10 R3 K5 [False]
       17 GETTABLE                         R8 R9 R10
       18 CALL                             R5 3 -1
       19 RETURN                           R5 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["ButtonVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Enums"]
       39 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K14 ["Providers"]
       46 GETTABLEKS                       R9 R10 K15 ["Style"]
       48 GETTABLEKS                       R8 R9 K16 ["VariantsContext"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Utility"]
       55 GETTABLEKS                       R9 R10 K18 ["composeStyleVariant"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K8 ["Enums"]
       62 GETTABLEKS                       R10 R11 K19 ["CloseAffordanceVariant"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K8 ["Enums"]
       69 GETTABLEKS                       R11 R12 K20 ["StateLayerMode"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R14 R0 K14 ["Providers"]
       76 GETTABLEKS                       R13 R14 K15 ["Style"]
       78 GETTABLEKS                       R12 R13 K21 ["Tokens"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R15 R0 K11 ["Components"]
       85 GETTABLEKS                       R14 R15 K22 ["Button"]
       87 GETTABLEKS                       R13 R14 K23 ["getSharedVariants"]
       89 CALL                             R12 1 1
       90 DUPCLOSURE                       R13 K24 [PROTO_2]
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R10
       97 DUPCLOSURE                       R14 K25 [PROTO_3]
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R8
      101 RETURN                           R14 1
