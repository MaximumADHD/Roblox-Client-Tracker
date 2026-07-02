PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K6 [{["radius"], ["tag"] = "bg-over-media-100"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K7 ["Radius"]
        5 GETTABLEKS                       R3 R3 K8 ["Circle"]
        7 SETTABLEKS                       R3 R2 K3 ["radius"]
        9 SETTABLEKS                       R2 R1 K0 ["container"]
       11 DUPTABLE                         R2 K10 [{"style"}]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K11 ["Color"]
       15 GETTABLEKS                       R3 R3 K12 ["Content"]
       17 GETTABLEKS                       R3 R3 K13 ["Emphasis"]
       19 SETTABLEKS                       R3 R2 K9 ["style"]
       21 SETTABLEKS                       R2 R1 K1 ["content"]
       23 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K5 [{"radius", "stateLayer"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K6 ["Radius"]
        5 GETTABLEKS                       R3 R3 K7 ["Medium"]
        7 SETTABLEKS                       R3 R2 K3 ["radius"]
        9 DUPTABLE                         R3 K9 [{"mode"}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K10 ["COLOR_MODE_TO_STATE_LAYER_MODE"]
       13 LOADB                            R7 0
       14 GETTABLE                         R5 R6 R7
       15 GETTABLE                         R4 R5 R0
       16 SETTABLEKS                       R4 R3 K8 ["mode"]
       18 SETTABLEKS                       R3 R2 K4 ["stateLayer"]
       20 SETTABLEKS                       R2 R1 K0 ["container"]
       22 DUPTABLE                         R2 K12 [{"style"}]
       23 GETUPVAL                         R4 0
       24 GETTABLE                         R3 R4 R0
       25 GETTABLEKS                       R3 R3 K13 ["Content"]
       27 GETTABLEKS                       R3 R3 K14 ["Emphasis"]
       29 SETTABLEKS                       R3 R2 K11 ["style"]
       31 SETTABLEKS                       R2 R1 K1 ["content"]
       33 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"container"}]
        1 DUPTABLE                         R2 K4 [{["tag"] = "auto-xy row align-y-center align-x-center clip"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 4 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K5 ["XSmall"]
       12 DUPTABLE                         R5 K7 [{"container", "content"}]
       13 DUPTABLE                         R6 K10 [{"size", "padding"}]
       14 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       16 GETTABLEKS                       R9 R2 K14 ["sizes"]
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K5 ["XSmall"]
       21 GETTABLE                         R8 R9 R10
       22 GETTABLEKS                       R8 R8 K0 ["container"]
       24 GETTABLEKS                       R8 R8 K15 ["height"]
       26 GETTABLEKS                       R10 R2 K14 ["sizes"]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K5 ["XSmall"]
       31 GETTABLE                         R9 R10 R11
       32 GETTABLEKS                       R9 R9 K0 ["container"]
       34 GETTABLEKS                       R9 R9 K15 ["height"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K8 ["size"]
       39 GETIMPORT                        R7 K18 [UDim.new]
       41 LOADN                            R8 0
       42 GETTABLEKS                       R9 R0 K19 ["Size"]
       44 GETTABLEKS                       R9 R9 K20 ["Size_100"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K9 ["padding"]
       49 SETTABLEKS                       R6 R5 K0 ["container"]
       51 DUPTABLE                         R6 K22 [{"iconSize"}]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K23 ["Small"]
       55 SETTABLEKS                       R7 R6 K21 ["iconSize"]
       57 SETTABLEKS                       R6 R5 K6 ["content"]
       59 SETTABLE                         R5 R3 R4
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R4 R4 K23 ["Small"]
       63 DUPTABLE                         R5 K7 [{"container", "content"}]
       64 DUPTABLE                         R6 K10 [{"size", "padding"}]
       65 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       67 GETTABLEKS                       R9 R2 K14 ["sizes"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K23 ["Small"]
       72 GETTABLE                         R8 R9 R10
       73 GETTABLEKS                       R8 R8 K0 ["container"]
       75 GETTABLEKS                       R8 R8 K15 ["height"]
       77 GETTABLEKS                       R10 R2 K14 ["sizes"]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K23 ["Small"]
       82 GETTABLE                         R9 R10 R11
       83 GETTABLEKS                       R9 R9 K0 ["container"]
       85 GETTABLEKS                       R9 R9 K15 ["height"]
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K8 ["size"]
       90 GETIMPORT                        R7 K18 [UDim.new]
       92 LOADN                            R8 0
       93 GETTABLEKS                       R9 R0 K19 ["Size"]
       95 GETTABLEKS                       R9 R9 K24 ["Size_150"]
       97 CALL                             R7 2 1
       98 SETTABLEKS                       R7 R6 K9 ["padding"]
      100 SETTABLEKS                       R6 R5 K0 ["container"]
      102 DUPTABLE                         R6 K22 [{"iconSize"}]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R7 R7 K25 ["Medium"]
      106 SETTABLEKS                       R7 R6 K21 ["iconSize"]
      108 SETTABLEKS                       R6 R5 K6 ["content"]
      110 SETTABLE                         R5 R3 R4
      111 GETUPVAL                         R4 1
      112 GETTABLEKS                       R4 R4 K25 ["Medium"]
      114 DUPTABLE                         R5 K7 [{"container", "content"}]
      115 DUPTABLE                         R6 K10 [{"size", "padding"}]
      116 GETIMPORT                        R7 K13 [UDim2.fromOffset]
      118 GETTABLEKS                       R9 R2 K14 ["sizes"]
      120 GETUPVAL                         R10 1
      121 GETTABLEKS                       R10 R10 K25 ["Medium"]
      123 GETTABLE                         R8 R9 R10
      124 GETTABLEKS                       R8 R8 K0 ["container"]
      126 GETTABLEKS                       R8 R8 K15 ["height"]
      128 GETTABLEKS                       R10 R2 K14 ["sizes"]
      130 GETUPVAL                         R11 1
      131 GETTABLEKS                       R11 R11 K25 ["Medium"]
      133 GETTABLE                         R9 R10 R11
      134 GETTABLEKS                       R9 R9 K0 ["container"]
      136 GETTABLEKS                       R9 R9 K15 ["height"]
      138 CALL                             R7 2 1
      139 SETTABLEKS                       R7 R6 K8 ["size"]
      141 GETIMPORT                        R7 K18 [UDim.new]
      143 LOADN                            R8 0
      144 GETTABLEKS                       R9 R0 K19 ["Size"]
      146 GETTABLEKS                       R9 R9 K26 ["Size_200"]
      148 CALL                             R7 2 1
      149 SETTABLEKS                       R7 R6 K9 ["padding"]
      151 SETTABLEKS                       R6 R5 K0 ["container"]
      153 DUPTABLE                         R6 K22 [{"iconSize"}]
      154 GETUPVAL                         R7 2
      155 GETTABLEKS                       R7 R7 K27 ["Large"]
      157 SETTABLEKS                       R7 R6 K21 ["iconSize"]
      159 SETTABLEKS                       R6 R5 K6 ["content"]
      161 SETTABLE                         R5 R3 R4
      162 NEWTABLE                         R4 2 0
      164 GETUPVAL                         R5 3
      165 GETTABLEKS                       R5 R5 K28 ["OverMedia"]
      167 GETUPVAL                         R6 4
      168 GETTABLEKS                       R6 R6 K29 ["map"]
      170 GETUPVAL                         R7 5
      171 NEWCLOSURE                       R8 P0
      172 CAPTURE                          VAL R0
      173 CALL                             R6 2 1
      174 SETTABLE                         R6 R4 R5
      175 GETUPVAL                         R5 3
      176 GETTABLEKS                       R5 R5 K30 ["Utility"]
      178 GETUPVAL                         R6 4
      179 GETTABLEKS                       R6 R6 K29 ["map"]
      181 GETUPVAL                         R7 5
      182 NEWCLOSURE                       R8 P1
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U6
      185 CALL                             R6 2 1
      186 SETTABLE                         R6 R4 R5
      187 DUPTABLE                         R5 K33 [{"common", "sizes", "types"}]
      188 SETTABLEKS                       R1 R5 K31 ["common"]
      190 SETTABLEKS                       R3 R5 K14 ["sizes"]
      192 SETTABLEKS                       R4 R5 K32 ["types"]
      194 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useVariants"]
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
       16 MOVE                             R10 R3
       17 JUMPIF                           R10 ; [+3]
       18 GETUPVAL                         R10 3
       19 GETTABLEKS                       R10 R10 K5 ["Color"]
       21 GETTABLE                         R8 R9 R10
       22 CALL                             R5 3 -1
       23 RETURN                           R5 -1

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
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R6 K11 ["ButtonVariant"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["IconSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Providers"]
       53 GETTABLEKS                       R9 R9 K16 ["Style"]
       55 GETTABLEKS                       R9 R9 K17 ["VariantsContext"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Utility"]
       62 GETTABLEKS                       R10 R10 K19 ["composeStyleVariant"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K8 ["Enums"]
       69 GETTABLEKS                       R11 R11 K20 ["CloseAffordanceVariant"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K15 ["Providers"]
       76 GETTABLEKS                       R12 R12 K16 ["Style"]
       78 GETTABLEKS                       R12 R12 K21 ["Tokens"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K22 ["Constants"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K12 ["Components"]
       90 GETTABLEKS                       R14 R14 K23 ["Button"]
       92 GETTABLEKS                       R14 R14 K24 ["getSharedVariants"]
       94 CALL                             R13 1 1
       95 DUPCLOSURE                       R14 K25 [PROTO_2]
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R15 K26 [PROTO_3]
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R3
      108 RETURN                           R15 1
