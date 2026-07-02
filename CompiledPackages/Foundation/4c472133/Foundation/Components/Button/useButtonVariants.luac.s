PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"container", "text"}]
        4 DUPTABLE                         R3 K5 [{["tag"] = "row align-x-center align-y-center clip"}]
        5 SETTABLEKS                       R3 R2 K0 ["container"]
        7 DUPTABLE                         R3 K7 [{["tag"] = "shrink size-0-full auto-x text-truncate-end"}]
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
       59 DUPTABLE                         R6 K23 [{"tag"}]
       60 NEWTABLE                         R7 2 0
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R8 R8 K24 ["FoundationButtonLabelTypography"]
       65 SETTABLEKS                       R8 R7 K25 ["text-label-small"]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K24 ["FoundationButtonLabelTypography"]
       70 NOT                              R8 R9
       71 SETTABLEKS                       R8 R7 K26 ["text-title-small"]
       73 SETTABLEKS                       R7 R6 K3 ["tag"]
       75 SETTABLEKS                       R6 R5 K1 ["text"]
       77 SETTABLE                         R5 R3 R4
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R4 R4 K27 ["Small"]
       81 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
       82 DUPTABLE                         R6 K14 [{["tag"] = "gap-xsmall padding-small", ["radius"], ["height"]}]
       83 GETTABLEKS                       R8 R1 K15 ["sizes"]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K27 ["Small"]
       88 GETTABLE                         R7 R8 R9
       89 GETTABLEKS                       R7 R7 K0 ["container"]
       91 GETTABLEKS                       R7 R7 K12 ["radius"]
       93 SETTABLEKS                       R7 R6 K12 ["radius"]
       95 GETTABLEKS                       R8 R1 K15 ["sizes"]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K27 ["Small"]
      100 GETTABLE                         R7 R8 R9
      101 GETTABLEKS                       R7 R7 K0 ["container"]
      103 GETTABLEKS                       R7 R7 K13 ["height"]
      105 SETTABLEKS                       R7 R6 K13 ["height"]
      107 SETTABLEKS                       R6 R5 K0 ["container"]
      109 DUPTABLE                         R6 K17 [{"size"}]
      110 GETIMPORT                        R7 K20 [UDim2.fromOffset]
      112 GETTABLEKS                       R8 R0 K21 ["Size"]
      114 GETTABLEKS                       R8 R8 K28 ["Size_400"]
      116 GETTABLEKS                       R9 R0 K21 ["Size"]
      118 GETTABLEKS                       R9 R9 K28 ["Size_400"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K16 ["size"]
      123 SETTABLEKS                       R6 R5 K9 ["icon"]
      125 DUPTABLE                         R6 K23 [{"tag"}]
      126 NEWTABLE                         R7 2 0
      128 GETUPVAL                         R8 2
      129 GETTABLEKS                       R8 R8 K24 ["FoundationButtonLabelTypography"]
      131 SETTABLEKS                       R8 R7 K25 ["text-label-small"]
      133 GETUPVAL                         R9 2
      134 GETTABLEKS                       R9 R9 K24 ["FoundationButtonLabelTypography"]
      136 NOT                              R8 R9
      137 SETTABLEKS                       R8 R7 K26 ["text-title-small"]
      139 SETTABLEKS                       R7 R6 K3 ["tag"]
      141 SETTABLEKS                       R6 R5 K1 ["text"]
      143 SETTABLE                         R5 R3 R4
      144 GETUPVAL                         R4 1
      145 GETTABLEKS                       R4 R4 K29 ["Medium"]
      147 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
      148 DUPTABLE                         R6 K31 [{["tag"] = "gap-small padding-medium", ["radius"], ["height"]}]
      149 GETTABLEKS                       R8 R1 K15 ["sizes"]
      151 GETUPVAL                         R9 1
      152 GETTABLEKS                       R9 R9 K29 ["Medium"]
      154 GETTABLE                         R7 R8 R9
      155 GETTABLEKS                       R7 R7 K0 ["container"]
      157 GETTABLEKS                       R7 R7 K12 ["radius"]
      159 SETTABLEKS                       R7 R6 K12 ["radius"]
      161 GETTABLEKS                       R8 R1 K15 ["sizes"]
      163 GETUPVAL                         R9 1
      164 GETTABLEKS                       R9 R9 K29 ["Medium"]
      166 GETTABLE                         R7 R8 R9
      167 GETTABLEKS                       R7 R7 K0 ["container"]
      169 GETTABLEKS                       R7 R7 K13 ["height"]
      171 SETTABLEKS                       R7 R6 K13 ["height"]
      173 SETTABLEKS                       R6 R5 K0 ["container"]
      175 DUPTABLE                         R6 K17 [{"size"}]
      176 GETIMPORT                        R7 K20 [UDim2.fromOffset]
      178 GETTABLEKS                       R8 R0 K21 ["Size"]
      180 GETTABLEKS                       R8 R8 K32 ["Size_500"]
      182 GETTABLEKS                       R9 R0 K21 ["Size"]
      184 GETTABLEKS                       R9 R9 K32 ["Size_500"]
      186 CALL                             R7 2 1
      187 SETTABLEKS                       R7 R6 K16 ["size"]
      189 SETTABLEKS                       R6 R5 K9 ["icon"]
      191 DUPTABLE                         R6 K23 [{"tag"}]
      192 NEWTABLE                         R7 2 0
      194 GETUPVAL                         R8 2
      195 GETTABLEKS                       R8 R8 K24 ["FoundationButtonLabelTypography"]
      197 SETTABLEKS                       R8 R7 K33 ["text-label-medium"]
      199 GETUPVAL                         R9 2
      200 GETTABLEKS                       R9 R9 K24 ["FoundationButtonLabelTypography"]
      202 NOT                              R8 R9
      203 SETTABLEKS                       R8 R7 K34 ["text-title-medium"]
      205 SETTABLEKS                       R7 R6 K3 ["tag"]
      207 SETTABLEKS                       R6 R5 K1 ["text"]
      209 SETTABLE                         R5 R3 R4
      210 GETUPVAL                         R4 1
      211 GETTABLEKS                       R4 R4 K35 ["Large"]
      213 DUPTABLE                         R5 K10 [{"container", "icon", "text"}]
      214 DUPTABLE                         R6 K31 [{["tag"] = "gap-small padding-medium", ["radius"], ["height"]}]
      215 GETTABLEKS                       R8 R1 K15 ["sizes"]
      217 GETUPVAL                         R9 1
      218 GETTABLEKS                       R9 R9 K35 ["Large"]
      220 GETTABLE                         R7 R8 R9
      221 GETTABLEKS                       R7 R7 K0 ["container"]
      223 GETTABLEKS                       R7 R7 K12 ["radius"]
      225 SETTABLEKS                       R7 R6 K12 ["radius"]
      227 GETTABLEKS                       R8 R1 K15 ["sizes"]
      229 GETUPVAL                         R9 1
      230 GETTABLEKS                       R9 R9 K35 ["Large"]
      232 GETTABLE                         R7 R8 R9
      233 GETTABLEKS                       R7 R7 K0 ["container"]
      235 GETTABLEKS                       R7 R7 K13 ["height"]
      237 SETTABLEKS                       R7 R6 K13 ["height"]
      239 SETTABLEKS                       R6 R5 K0 ["container"]
      241 DUPTABLE                         R6 K17 [{"size"}]
      242 GETIMPORT                        R7 K20 [UDim2.fromOffset]
      244 GETTABLEKS                       R8 R0 K21 ["Size"]
      246 GETTABLEKS                       R8 R8 K36 ["Size_600"]
      248 GETTABLEKS                       R9 R0 K21 ["Size"]
      250 GETTABLEKS                       R9 R9 K36 ["Size_600"]
      252 CALL                             R7 2 1
      253 SETTABLEKS                       R7 R6 K16 ["size"]
      255 SETTABLEKS                       R6 R5 K9 ["icon"]
      257 DUPTABLE                         R6 K23 [{"tag"}]
      258 NEWTABLE                         R7 2 0
      260 GETUPVAL                         R8 2
      261 GETTABLEKS                       R8 R8 K24 ["FoundationButtonLabelTypography"]
      263 SETTABLEKS                       R8 R7 K37 ["text-label-large"]
      265 GETUPVAL                         R9 2
      266 GETTABLEKS                       R9 R9 K24 ["FoundationButtonLabelTypography"]
      268 NOT                              R8 R9
      269 SETTABLEKS                       R8 R7 K38 ["text-title-large"]
      271 SETTABLEKS                       R7 R6 K3 ["tag"]
      273 SETTABLEKS                       R6 R5 K1 ["text"]
      275 SETTABLE                         R5 R3 R4
      276 DUPTABLE                         R4 K41 [{"common", "sizes", "types"}]
      277 SETTABLEKS                       R2 R4 K39 ["common"]
      279 SETTABLEKS                       R3 R4 K15 ["sizes"]
      281 GETTABLEKS                       R5 R1 K40 ["types"]
      283 SETTABLEKS                       R5 R4 K40 ["types"]
      285 RETURN                           R4 1

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
       60 GETIMPORT                        R9 K1 [script]
       62 GETTABLEKS                       R9 R9 K18 ["Parent"]
       64 GETTABLEKS                       R9 R9 K19 ["getSharedVariants"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K14 ["Providers"]
       71 GETTABLEKS                       R10 R10 K15 ["Style"]
       73 GETTABLEKS                       R10 R10 K20 ["Tokens"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K21 [PROTO_0]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R11 K22 [PROTO_1]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R4
       85 RETURN                           R11 1
