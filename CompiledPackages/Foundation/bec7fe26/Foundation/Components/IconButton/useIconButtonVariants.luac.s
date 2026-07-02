PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationIconButtonBiggerBuilderIcons"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 NEWTABLE                         R1 0 0
        6 JUMP                             ; [+4]
        7 DUPTABLE                         R1 K2 [{"container"}]
        8 DUPTABLE                         R2 K5 [{["tag"] = "row align-y-center align-x-center clip"}]
        9 SETTABLEKS                       R2 R1 K1 ["container"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 4 0
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K6 ["XSmall"]
       19 DUPTABLE                         R5 K2 [{"container"}]
       20 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
       21 GETTABLEKS                       R8 R2 K11 ["sizes"]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K6 ["XSmall"]
       26 GETTABLE                         R7 R8 R9
       27 GETTABLEKS                       R7 R7 K1 ["container"]
       29 GETTABLEKS                       R7 R7 K7 ["radius"]
       31 SETTABLEKS                       R7 R6 K7 ["radius"]
       33 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       35 GETTABLEKS                       R9 R2 K11 ["sizes"]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K6 ["XSmall"]
       40 GETTABLE                         R8 R9 R10
       41 GETTABLEKS                       R8 R8 K1 ["container"]
       43 GETTABLEKS                       R8 R8 K15 ["height"]
       45 GETTABLEKS                       R10 R2 K11 ["sizes"]
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R11 R11 K6 ["XSmall"]
       50 GETTABLE                         R9 R10 R11
       51 GETTABLEKS                       R9 R9 K1 ["container"]
       53 GETTABLEKS                       R9 R9 K15 ["height"]
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R6 K8 ["size"]
       58 GETIMPORT                        R7 K18 [UDim.new]
       60 LOADN                            R8 0
       61 GETTABLEKS                       R9 R0 K19 ["Size"]
       63 GETTABLEKS                       R9 R9 K20 ["Size_150"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K9 ["padding"]
       68 SETTABLEKS                       R6 R5 K1 ["container"]
       70 SETTABLE                         R5 R3 R4
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K21 ["Small"]
       74 DUPTABLE                         R5 K2 [{"container"}]
       75 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
       76 GETTABLEKS                       R8 R2 K11 ["sizes"]
       78 GETUPVAL                         R9 2
       79 GETTABLEKS                       R9 R9 K21 ["Small"]
       81 GETTABLE                         R7 R8 R9
       82 GETTABLEKS                       R7 R7 K1 ["container"]
       84 GETTABLEKS                       R7 R7 K7 ["radius"]
       86 SETTABLEKS                       R7 R6 K7 ["radius"]
       88 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       90 GETTABLEKS                       R9 R2 K11 ["sizes"]
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K21 ["Small"]
       95 GETTABLE                         R8 R9 R10
       96 GETTABLEKS                       R8 R8 K1 ["container"]
       98 GETTABLEKS                       R8 R8 K15 ["height"]
      100 GETTABLEKS                       R10 R2 K11 ["sizes"]
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R11 R11 K21 ["Small"]
      105 GETTABLE                         R9 R10 R11
      106 GETTABLEKS                       R9 R9 K1 ["container"]
      108 GETTABLEKS                       R9 R9 K15 ["height"]
      110 CALL                             R7 2 1
      111 SETTABLEKS                       R7 R6 K8 ["size"]
      113 GETIMPORT                        R7 K18 [UDim.new]
      115 LOADN                            R8 0
      116 GETTABLEKS                       R9 R0 K19 ["Size"]
      118 GETTABLEKS                       R9 R9 K22 ["Size_200"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K9 ["padding"]
      123 SETTABLEKS                       R6 R5 K1 ["container"]
      125 SETTABLE                         R5 R3 R4
      126 GETUPVAL                         R4 2
      127 GETTABLEKS                       R4 R4 K23 ["Medium"]
      129 DUPTABLE                         R5 K2 [{"container"}]
      130 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
      131 GETTABLEKS                       R8 R2 K11 ["sizes"]
      133 GETUPVAL                         R9 2
      134 GETTABLEKS                       R9 R9 K23 ["Medium"]
      136 GETTABLE                         R7 R8 R9
      137 GETTABLEKS                       R7 R7 K1 ["container"]
      139 GETTABLEKS                       R7 R7 K7 ["radius"]
      141 SETTABLEKS                       R7 R6 K7 ["radius"]
      143 GETIMPORT                        R7 K14 [UDim2.fromOffset]
      145 GETTABLEKS                       R9 R2 K11 ["sizes"]
      147 GETUPVAL                         R10 2
      148 GETTABLEKS                       R10 R10 K23 ["Medium"]
      150 GETTABLE                         R8 R9 R10
      151 GETTABLEKS                       R8 R8 K1 ["container"]
      153 GETTABLEKS                       R8 R8 K15 ["height"]
      155 GETTABLEKS                       R10 R2 K11 ["sizes"]
      157 GETUPVAL                         R11 2
      158 GETTABLEKS                       R11 R11 K23 ["Medium"]
      160 GETTABLE                         R9 R10 R11
      161 GETTABLEKS                       R9 R9 K1 ["container"]
      163 GETTABLEKS                       R9 R9 K15 ["height"]
      165 CALL                             R7 2 1
      166 SETTABLEKS                       R7 R6 K8 ["size"]
      168 GETIMPORT                        R7 K18 [UDim.new]
      170 LOADN                            R8 0
      171 GETTABLEKS                       R9 R0 K19 ["Size"]
      173 GETTABLEKS                       R9 R9 K24 ["Size_250"]
      175 CALL                             R7 2 1
      176 SETTABLEKS                       R7 R6 K9 ["padding"]
      178 SETTABLEKS                       R6 R5 K1 ["container"]
      180 SETTABLE                         R5 R3 R4
      181 GETUPVAL                         R4 2
      182 GETTABLEKS                       R4 R4 K25 ["Large"]
      184 DUPTABLE                         R5 K2 [{"container"}]
      185 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
      186 GETTABLEKS                       R8 R2 K11 ["sizes"]
      188 GETUPVAL                         R9 2
      189 GETTABLEKS                       R9 R9 K25 ["Large"]
      191 GETTABLE                         R7 R8 R9
      192 GETTABLEKS                       R7 R7 K1 ["container"]
      194 GETTABLEKS                       R7 R7 K7 ["radius"]
      196 SETTABLEKS                       R7 R6 K7 ["radius"]
      198 GETIMPORT                        R7 K14 [UDim2.fromOffset]
      200 GETTABLEKS                       R9 R2 K11 ["sizes"]
      202 GETUPVAL                         R10 2
      203 GETTABLEKS                       R10 R10 K25 ["Large"]
      205 GETTABLE                         R8 R9 R10
      206 GETTABLEKS                       R8 R8 K1 ["container"]
      208 GETTABLEKS                       R8 R8 K15 ["height"]
      210 GETTABLEKS                       R10 R2 K11 ["sizes"]
      212 GETUPVAL                         R11 2
      213 GETTABLEKS                       R11 R11 K25 ["Large"]
      215 GETTABLE                         R9 R10 R11
      216 GETTABLEKS                       R9 R9 K1 ["container"]
      218 GETTABLEKS                       R9 R9 K15 ["height"]
      220 CALL                             R7 2 1
      221 SETTABLEKS                       R7 R6 K8 ["size"]
      223 GETIMPORT                        R7 K18 [UDim.new]
      225 LOADN                            R8 0
      226 GETTABLEKS                       R9 R0 K19 ["Size"]
      228 GETTABLEKS                       R9 R9 K26 ["Size_300"]
      230 CALL                             R7 2 1
      231 SETTABLEKS                       R7 R6 K9 ["padding"]
      233 SETTABLEKS                       R6 R5 K1 ["container"]
      235 SETTABLE                         R5 R3 R4
      236 DUPTABLE                         R4 K29 [{"common", "sizes", "types"}]
      237 SETTABLEKS                       R1 R4 K27 ["common"]
      239 SETTABLEKS                       R3 R4 K11 ["sizes"]
      241 GETTABLEKS                       R5 R2 K28 ["types"]
      243 SETTABLEKS                       R5 R4 K28 ["types"]
      245 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useVariants"]
        3 LOADK                            R5 K1 ["IconButton"]
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["ButtonVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Enums"]
       32 GETTABLEKS                       R5 R5 K11 ["ColorMode"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Providers"]
       46 GETTABLEKS                       R7 R7 K15 ["Style"]
       48 GETTABLEKS                       R7 R7 K16 ["VariantsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Utility"]
       55 GETTABLEKS                       R8 R8 K17 ["composeStyleVariant"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Providers"]
       62 GETTABLEKS                       R9 R9 K15 ["Style"]
       64 GETTABLEKS                       R9 R9 K18 ["Tokens"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K12 ["Components"]
       71 GETTABLEKS                       R10 R10 K19 ["Button"]
       73 GETTABLEKS                       R10 R10 K20 ["getSharedVariants"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K21 [PROTO_0]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 DUPCLOSURE                       R11 K22 [PROTO_1]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R4
       85 RETURN                           R11 1
