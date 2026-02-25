PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K5 [{"radius", "tag"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K6 ["Radius"]
        5 GETTABLEKS                       R3 R4 K7 ["Circle"]
        7 SETTABLEKS                       R3 R2 K3 ["radius"]
        9 LOADK                            R3 K8 ["bg-over-media-100"]
       10 SETTABLEKS                       R3 R2 K4 ["tag"]
       12 SETTABLEKS                       R2 R1 K0 ["container"]
       14 DUPTABLE                         R2 K10 [{"style"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K11 ["Color"]
       18 GETTABLEKS                       R4 R5 K12 ["Content"]
       20 GETTABLEKS                       R3 R4 K13 ["Emphasis"]
       22 SETTABLEKS                       R3 R2 K9 ["style"]
       24 SETTABLEKS                       R2 R1 K1 ["content"]
       26 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"container", "content"}]
        1 DUPTABLE                         R2 K5 [{"radius", "stateLayer"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K6 ["Radius"]
        5 GETTABLEKS                       R3 R4 K7 ["Medium"]
        7 SETTABLEKS                       R3 R2 K3 ["radius"]
        9 DUPTABLE                         R3 K9 [{"mode"}]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K10 ["COLOR_MODE_TO_STATE_LAYER_MODE"]
       13 LOADB                            R7 0
       14 GETTABLE                         R5 R6 R7
       15 GETTABLE                         R4 R5 R0
       16 SETTABLEKS                       R4 R3 K8 ["mode"]
       18 SETTABLEKS                       R3 R2 K4 ["stateLayer"]
       20 SETTABLEKS                       R2 R1 K0 ["container"]
       22 DUPTABLE                         R2 K12 [{"style"}]
       23 GETUPVAL                         R6 0
       24 GETTABLE                         R5 R6 R0
       25 GETTABLEKS                       R4 R5 K13 ["Content"]
       27 GETTABLEKS                       R3 R4 K14 ["Emphasis"]
       29 SETTABLEKS                       R3 R2 K11 ["style"]
       31 SETTABLEKS                       R2 R1 K1 ["content"]
       33 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"container"}]
        1 DUPTABLE                         R2 K3 [{"tag"}]
        2 LOADK                            R3 K4 ["auto-xy row align-y-center align-x-center clip"]
        3 SETTABLEKS                       R3 R2 K2 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 4 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K5 ["XSmall"]
       15 DUPTABLE                         R5 K7 [{"container", "content"}]
       16 DUPTABLE                         R6 K10 [{"size", "padding"}]
       17 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       19 GETTABLEKS                       R11 R2 K14 ["sizes"]
       21 GETUPVAL                         R13 1
       22 GETTABLEKS                       R12 R13 K5 ["XSmall"]
       24 GETTABLE                         R10 R11 R12
       25 GETTABLEKS                       R9 R10 K0 ["container"]
       27 GETTABLEKS                       R8 R9 K15 ["height"]
       29 GETTABLEKS                       R12 R2 K14 ["sizes"]
       31 GETUPVAL                         R14 1
       32 GETTABLEKS                       R13 R14 K5 ["XSmall"]
       34 GETTABLE                         R11 R12 R13
       35 GETTABLEKS                       R10 R11 K0 ["container"]
       37 GETTABLEKS                       R9 R10 K15 ["height"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K8 ["size"]
       42 GETIMPORT                        R7 K18 [UDim.new]
       44 LOADN                            R8 0
       45 GETTABLEKS                       R10 R0 K19 ["Size"]
       47 GETTABLEKS                       R9 R10 K20 ["Size_100"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K9 ["padding"]
       52 SETTABLEKS                       R6 R5 K0 ["container"]
       54 DUPTABLE                         R6 K22 [{"iconSize"}]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K23 ["Small"]
       58 SETTABLEKS                       R7 R6 K21 ["iconSize"]
       60 SETTABLEKS                       R6 R5 K6 ["content"]
       62 SETTABLE                         R5 R3 R4
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R4 R5 K23 ["Small"]
       66 DUPTABLE                         R5 K7 [{"container", "content"}]
       67 DUPTABLE                         R6 K10 [{"size", "padding"}]
       68 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       70 GETTABLEKS                       R11 R2 K14 ["sizes"]
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R12 R13 K23 ["Small"]
       75 GETTABLE                         R10 R11 R12
       76 GETTABLEKS                       R9 R10 K0 ["container"]
       78 GETTABLEKS                       R8 R9 K15 ["height"]
       80 GETTABLEKS                       R12 R2 K14 ["sizes"]
       82 GETUPVAL                         R14 1
       83 GETTABLEKS                       R13 R14 K23 ["Small"]
       85 GETTABLE                         R11 R12 R13
       86 GETTABLEKS                       R10 R11 K0 ["container"]
       88 GETTABLEKS                       R9 R10 K15 ["height"]
       90 CALL                             R7 2 1
       91 SETTABLEKS                       R7 R6 K8 ["size"]
       93 GETIMPORT                        R7 K18 [UDim.new]
       95 LOADN                            R8 0
       96 GETTABLEKS                       R10 R0 K19 ["Size"]
       98 GETTABLEKS                       R9 R10 K24 ["Size_150"]
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K9 ["padding"]
      103 SETTABLEKS                       R6 R5 K0 ["container"]
      105 DUPTABLE                         R6 K22 [{"iconSize"}]
      106 GETUPVAL                         R8 2
      107 GETTABLEKS                       R7 R8 K25 ["Medium"]
      109 SETTABLEKS                       R7 R6 K21 ["iconSize"]
      111 SETTABLEKS                       R6 R5 K6 ["content"]
      113 SETTABLE                         R5 R3 R4
      114 GETUPVAL                         R5 1
      115 GETTABLEKS                       R4 R5 K25 ["Medium"]
      117 DUPTABLE                         R5 K7 [{"container", "content"}]
      118 DUPTABLE                         R6 K10 [{"size", "padding"}]
      119 GETIMPORT                        R7 K13 [UDim2.fromOffset]
      121 GETTABLEKS                       R11 R2 K14 ["sizes"]
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R12 R13 K25 ["Medium"]
      126 GETTABLE                         R10 R11 R12
      127 GETTABLEKS                       R9 R10 K0 ["container"]
      129 GETTABLEKS                       R8 R9 K15 ["height"]
      131 GETTABLEKS                       R12 R2 K14 ["sizes"]
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R13 R14 K25 ["Medium"]
      136 GETTABLE                         R11 R12 R13
      137 GETTABLEKS                       R10 R11 K0 ["container"]
      139 GETTABLEKS                       R9 R10 K15 ["height"]
      141 CALL                             R7 2 1
      142 SETTABLEKS                       R7 R6 K8 ["size"]
      144 GETIMPORT                        R7 K18 [UDim.new]
      146 LOADN                            R8 0
      147 GETTABLEKS                       R10 R0 K19 ["Size"]
      149 GETTABLEKS                       R9 R10 K26 ["Size_200"]
      151 CALL                             R7 2 1
      152 SETTABLEKS                       R7 R6 K9 ["padding"]
      154 SETTABLEKS                       R6 R5 K0 ["container"]
      156 DUPTABLE                         R6 K22 [{"iconSize"}]
      157 GETUPVAL                         R8 2
      158 GETTABLEKS                       R7 R8 K27 ["Large"]
      160 SETTABLEKS                       R7 R6 K21 ["iconSize"]
      162 SETTABLEKS                       R6 R5 K6 ["content"]
      164 SETTABLE                         R5 R3 R4
      165 NEWTABLE                         R4 2 0
      167 GETUPVAL                         R6 3
      168 GETTABLEKS                       R5 R6 K28 ["OverMedia"]
      170 GETUPVAL                         R7 4
      171 GETTABLEKS                       R6 R7 K29 ["map"]
      173 GETUPVAL                         R7 5
      174 NEWCLOSURE                       R8 P0
      175 CAPTURE                          VAL R0
      176 CALL                             R6 2 1
      177 SETTABLE                         R6 R4 R5
      178 GETUPVAL                         R6 3
      179 GETTABLEKS                       R5 R6 K30 ["Utility"]
      181 GETUPVAL                         R7 4
      182 GETTABLEKS                       R6 R7 K29 ["map"]
      184 GETUPVAL                         R7 5
      185 NEWCLOSURE                       R8 P1
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U6
      188 CALL                             R6 2 1
      189 SETTABLE                         R6 R4 R5
      190 DUPTABLE                         R5 K33 [{"common", "sizes", "types"}]
      191 SETTABLEKS                       R1 R5 K31 ["common"]
      193 SETTABLEKS                       R3 R5 K14 ["sizes"]
      195 SETTABLEKS                       R4 R5 K32 ["types"]
      197 RETURN                           R5 1

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
       16 MOVE                             R10 R3
       17 JUMPIF                           R10 ; [+3]
       18 GETUPVAL                         R11 3
       19 GETTABLEKS                       R10 R11 K5 ["Color"]
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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["ColorMode"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R7 K11 ["ButtonVariant"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Enums"]
       46 GETTABLEKS                       R8 R9 K14 ["IconSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R11 R0 K15 ["Providers"]
       53 GETTABLEKS                       R10 R11 K16 ["Style"]
       55 GETTABLEKS                       R9 R10 K17 ["VariantsContext"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Utility"]
       62 GETTABLEKS                       R10 R11 K19 ["composeStyleVariant"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K8 ["Enums"]
       69 GETTABLEKS                       R11 R12 K20 ["CloseAffordanceVariant"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R14 R0 K15 ["Providers"]
       76 GETTABLEKS                       R13 R14 K16 ["Style"]
       78 GETTABLEKS                       R12 R13 K21 ["Tokens"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K22 ["Constants"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R16 R0 K12 ["Components"]
       90 GETTABLEKS                       R15 R16 K23 ["Button"]
       92 GETTABLEKS                       R14 R15 K24 ["getSharedVariants"]
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
