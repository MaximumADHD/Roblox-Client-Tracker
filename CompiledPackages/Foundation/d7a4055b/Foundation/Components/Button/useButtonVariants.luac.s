PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"container", "text"}]
        4 DUPTABLE                         R3 K5 [{["tag"] = "row align-y-center align-x-center clip"}]
        5 SETTABLEKS                       R3 R2 K0 ["container"]
        7 DUPTABLE                         R3 K7 [{["tag"] = "size-0-full auto-x text-truncate-end shrink"}]
        8 SETTABLEKS                       R3 R2 K1 ["text"]
       10 NEWTABLE                         R3 4 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K8 ["XSmall"]
       15 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
       16 DUPTABLE                         R6 K14 [{["tag"] = "gap-xsmall padding-small", ["radius"], ["height"]}]
       17 GETTABLEKS                       R8 R1 K15 ["sizes"]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K8 ["XSmall"]
       22 GETTABLE                         R7 R8 R9
       23 GETTABLEKS                       R7 R7 K0 ["container"]
       25 GETTABLEKS                       R7 R7 K12 ["radius"]
       27 SETTABLEKS                       R7 R6 K12 ["radius"]
       29 GETTABLEKS                       R8 R1 K15 ["sizes"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K8 ["XSmall"]
       34 GETTABLE                         R7 R8 R9
       35 GETTABLEKS                       R7 R7 K0 ["container"]
       37 GETTABLEKS                       R7 R7 K13 ["height"]
       39 SETTABLEKS                       R7 R6 K13 ["height"]
       41 SETTABLEKS                       R6 R5 K0 ["container"]
       43 DUPTABLE                         R6 K17 [{"size"}]
       44 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       46 GETTABLEKS                       R8 R0 K21 ["Size"]
       48 GETTABLEKS                       R8 R8 K22 ["Size_300"]
       50 GETTABLEKS                       R9 R0 K21 ["Size"]
       52 GETTABLEKS                       R9 R9 K22 ["Size_300"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K16 ["size"]
       57 SETTABLEKS                       R6 R5 K9 ["icon"]
       59 DUPTABLE                         R6 K24 [{["tag"] = "text-title-small"}]
       60 SETTABLEKS                       R6 R5 K1 ["text"]
       62 SETTABLE                         R5 R3 R4
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K25 ["Small"]
       66 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
       67 DUPTABLE                         R6 K14 [{["tag"] = "gap-xsmall padding-small", ["radius"], ["height"]}]
       68 GETTABLEKS                       R8 R1 K15 ["sizes"]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K25 ["Small"]
       73 GETTABLE                         R7 R8 R9
       74 GETTABLEKS                       R7 R7 K0 ["container"]
       76 GETTABLEKS                       R7 R7 K12 ["radius"]
       78 SETTABLEKS                       R7 R6 K12 ["radius"]
       80 GETTABLEKS                       R8 R1 K15 ["sizes"]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K25 ["Small"]
       85 GETTABLE                         R7 R8 R9
       86 GETTABLEKS                       R7 R7 K0 ["container"]
       88 GETTABLEKS                       R7 R7 K13 ["height"]
       90 SETTABLEKS                       R7 R6 K13 ["height"]
       92 SETTABLEKS                       R6 R5 K0 ["container"]
       94 DUPTABLE                         R6 K17 [{"size"}]
       95 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       97 GETTABLEKS                       R8 R0 K21 ["Size"]
       99 GETTABLEKS                       R8 R8 K26 ["Size_400"]
      101 GETTABLEKS                       R9 R0 K21 ["Size"]
      103 GETTABLEKS                       R9 R9 K26 ["Size_400"]
      105 CALL                             R7 2 1
      106 SETTABLEKS                       R7 R6 K16 ["size"]
      108 SETTABLEKS                       R6 R5 K9 ["icon"]
      110 DUPTABLE                         R6 K24 [{["tag"] = "text-title-small"}]
      111 SETTABLEKS                       R6 R5 K1 ["text"]
      113 SETTABLE                         R5 R3 R4
      114 GETUPVAL                         R4 1
      115 GETTABLEKS                       R4 R4 K27 ["Medium"]
      117 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
      118 DUPTABLE                         R6 K29 [{["tag"] = "gap-small padding-medium", ["radius"], ["height"]}]
      119 GETTABLEKS                       R8 R1 K15 ["sizes"]
      121 GETUPVAL                         R9 1
      122 GETTABLEKS                       R9 R9 K27 ["Medium"]
      124 GETTABLE                         R7 R8 R9
      125 GETTABLEKS                       R7 R7 K0 ["container"]
      127 GETTABLEKS                       R7 R7 K12 ["radius"]
      129 SETTABLEKS                       R7 R6 K12 ["radius"]
      131 GETTABLEKS                       R8 R1 K15 ["sizes"]
      133 GETUPVAL                         R9 1
      134 GETTABLEKS                       R9 R9 K27 ["Medium"]
      136 GETTABLE                         R7 R8 R9
      137 GETTABLEKS                       R7 R7 K0 ["container"]
      139 GETTABLEKS                       R7 R7 K13 ["height"]
      141 SETTABLEKS                       R7 R6 K13 ["height"]
      143 SETTABLEKS                       R6 R5 K0 ["container"]
      145 DUPTABLE                         R6 K17 [{"size"}]
      146 GETIMPORT                        R7 K20 [UDim2.fromOffset]
      148 GETTABLEKS                       R8 R0 K21 ["Size"]
      150 GETTABLEKS                       R8 R8 K30 ["Size_500"]
      152 GETTABLEKS                       R9 R0 K21 ["Size"]
      154 GETTABLEKS                       R9 R9 K30 ["Size_500"]
      156 CALL                             R7 2 1
      157 SETTABLEKS                       R7 R6 K16 ["size"]
      159 SETTABLEKS                       R6 R5 K9 ["icon"]
      161 DUPTABLE                         R6 K32 [{["tag"] = "text-title-medium"}]
      162 SETTABLEKS                       R6 R5 K1 ["text"]
      164 SETTABLE                         R5 R3 R4
      165 GETUPVAL                         R4 1
      166 GETTABLEKS                       R4 R4 K33 ["Large"]
      168 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
      169 DUPTABLE                         R6 K29 [{["tag"] = "gap-small padding-medium", ["radius"], ["height"]}]
      170 GETTABLEKS                       R8 R1 K15 ["sizes"]
      172 GETUPVAL                         R9 1
      173 GETTABLEKS                       R9 R9 K33 ["Large"]
      175 GETTABLE                         R7 R8 R9
      176 GETTABLEKS                       R7 R7 K0 ["container"]
      178 GETTABLEKS                       R7 R7 K12 ["radius"]
      180 SETTABLEKS                       R7 R6 K12 ["radius"]
      182 GETTABLEKS                       R8 R1 K15 ["sizes"]
      184 GETUPVAL                         R9 1
      185 GETTABLEKS                       R9 R9 K33 ["Large"]
      187 GETTABLE                         R7 R8 R9
      188 GETTABLEKS                       R7 R7 K0 ["container"]
      190 GETTABLEKS                       R7 R7 K13 ["height"]
      192 SETTABLEKS                       R7 R6 K13 ["height"]
      194 SETTABLEKS                       R6 R5 K0 ["container"]
      196 DUPTABLE                         R6 K17 [{"size"}]
      197 GETIMPORT                        R7 K20 [UDim2.fromOffset]
      199 GETTABLEKS                       R8 R0 K21 ["Size"]
      201 GETTABLEKS                       R8 R8 K34 ["Size_600"]
      203 GETTABLEKS                       R9 R0 K21 ["Size"]
      205 GETTABLEKS                       R9 R9 K34 ["Size_600"]
      207 CALL                             R7 2 1
      208 SETTABLEKS                       R7 R6 K16 ["size"]
      210 SETTABLEKS                       R6 R5 K9 ["icon"]
      212 DUPTABLE                         R6 K36 [{["tag"] = "text-title-large"}]
      213 SETTABLEKS                       R6 R5 K1 ["text"]
      215 SETTABLE                         R5 R3 R4
      216 DUPTABLE                         R4 K39 [{"common", "sizes", "types"}]
      217 SETTABLEKS                       R2 R4 K37 ["common"]
      219 SETTABLEKS                       R3 R4 K15 ["sizes"]
      221 GETTABLEKS                       R5 R1 K38 ["types"]
      223 SETTABLEKS                       R5 R4 K38 ["types"]
      225 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useVariants"]
        3 LOADK                            R5 K1 ["Button"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["ButtonVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K9 ["ColorMode"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Providers"]
       39 GETTABLEKS                       R6 R6 K13 ["Style"]
       41 GETTABLEKS                       R6 R6 K14 ["VariantsContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Utility"]
       48 GETTABLEKS                       R7 R7 K16 ["composeStyleVariant"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K17 ["Parent"]
       57 GETTABLEKS                       R8 R8 K18 ["getSharedVariants"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K12 ["Providers"]
       64 GETTABLEKS                       R9 R9 K13 ["Style"]
       66 GETTABLEKS                       R9 R9 K19 ["Tokens"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R10 K21 [PROTO_1]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 RETURN                           R10 1
