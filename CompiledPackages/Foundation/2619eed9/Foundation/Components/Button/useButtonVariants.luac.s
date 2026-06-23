PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"container", "text"}]
        4 DUPTABLE                         R3 K4 [{"tag"}]
        5 LOADK                            R4 K5 ["row align-x-center align-y-center clip"]
        6 SETTABLEKS                       R4 R3 K3 ["tag"]
        8 SETTABLEKS                       R3 R2 K0 ["container"]
       10 DUPTABLE                         R3 K4 [{"tag"}]
       11 LOADK                            R4 K6 ["shrink size-0-full auto-x text-truncate-end"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 SETTABLEKS                       R3 R2 K1 ["text"]
       16 NEWTABLE                         R3 4 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K7 ["XSmall"]
       21 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
       22 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
       23 LOADK                            R7 K13 ["gap-xsmall padding-small"]
       24 SETTABLEKS                       R7 R6 K3 ["tag"]
       26 GETTABLEKS                       R8 R1 K14 ["sizes"]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K7 ["XSmall"]
       31 GETTABLE                         R7 R8 R9
       32 GETTABLEKS                       R7 R7 K0 ["container"]
       34 GETTABLEKS                       R7 R7 K10 ["radius"]
       36 SETTABLEKS                       R7 R6 K10 ["radius"]
       38 GETTABLEKS                       R8 R1 K14 ["sizes"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K7 ["XSmall"]
       43 GETTABLE                         R7 R8 R9
       44 GETTABLEKS                       R7 R7 K0 ["container"]
       46 GETTABLEKS                       R7 R7 K11 ["height"]
       48 SETTABLEKS                       R7 R6 K11 ["height"]
       50 SETTABLEKS                       R6 R5 K0 ["container"]
       52 DUPTABLE                         R6 K16 [{"size"}]
       53 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       55 GETTABLEKS                       R8 R0 K20 ["Size"]
       57 GETTABLEKS                       R8 R8 K21 ["Size_300"]
       59 GETTABLEKS                       R9 R0 K20 ["Size"]
       61 GETTABLEKS                       R9 R9 K21 ["Size_300"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K15 ["size"]
       66 SETTABLEKS                       R6 R5 K8 ["icon"]
       68 DUPTABLE                         R6 K4 [{"tag"}]
       69 NEWTABLE                         R7 2 0
       71 GETUPVAL                         R8 2
       72 GETTABLEKS                       R8 R8 K22 ["FoundationButtonLabelTypography"]
       74 SETTABLEKS                       R8 R7 K23 ["text-label-small"]
       76 GETUPVAL                         R9 2
       77 GETTABLEKS                       R9 R9 K22 ["FoundationButtonLabelTypography"]
       79 NOT                              R8 R9
       80 SETTABLEKS                       R8 R7 K24 ["text-title-small"]
       82 SETTABLEKS                       R7 R6 K3 ["tag"]
       84 SETTABLEKS                       R6 R5 K1 ["text"]
       86 SETTABLE                         R5 R3 R4
       87 GETUPVAL                         R4 1
       88 GETTABLEKS                       R4 R4 K25 ["Small"]
       90 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
       91 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
       92 LOADK                            R7 K13 ["gap-xsmall padding-small"]
       93 SETTABLEKS                       R7 R6 K3 ["tag"]
       95 GETTABLEKS                       R8 R1 K14 ["sizes"]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K25 ["Small"]
      100 GETTABLE                         R7 R8 R9
      101 GETTABLEKS                       R7 R7 K0 ["container"]
      103 GETTABLEKS                       R7 R7 K10 ["radius"]
      105 SETTABLEKS                       R7 R6 K10 ["radius"]
      107 GETTABLEKS                       R8 R1 K14 ["sizes"]
      109 GETUPVAL                         R9 1
      110 GETTABLEKS                       R9 R9 K25 ["Small"]
      112 GETTABLE                         R7 R8 R9
      113 GETTABLEKS                       R7 R7 K0 ["container"]
      115 GETTABLEKS                       R7 R7 K11 ["height"]
      117 SETTABLEKS                       R7 R6 K11 ["height"]
      119 SETTABLEKS                       R6 R5 K0 ["container"]
      121 DUPTABLE                         R6 K16 [{"size"}]
      122 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      124 GETTABLEKS                       R8 R0 K20 ["Size"]
      126 GETTABLEKS                       R8 R8 K26 ["Size_400"]
      128 GETTABLEKS                       R9 R0 K20 ["Size"]
      130 GETTABLEKS                       R9 R9 K26 ["Size_400"]
      132 CALL                             R7 2 1
      133 SETTABLEKS                       R7 R6 K15 ["size"]
      135 SETTABLEKS                       R6 R5 K8 ["icon"]
      137 DUPTABLE                         R6 K4 [{"tag"}]
      138 NEWTABLE                         R7 2 0
      140 GETUPVAL                         R8 2
      141 GETTABLEKS                       R8 R8 K22 ["FoundationButtonLabelTypography"]
      143 SETTABLEKS                       R8 R7 K23 ["text-label-small"]
      145 GETUPVAL                         R9 2
      146 GETTABLEKS                       R9 R9 K22 ["FoundationButtonLabelTypography"]
      148 NOT                              R8 R9
      149 SETTABLEKS                       R8 R7 K24 ["text-title-small"]
      151 SETTABLEKS                       R7 R6 K3 ["tag"]
      153 SETTABLEKS                       R6 R5 K1 ["text"]
      155 SETTABLE                         R5 R3 R4
      156 GETUPVAL                         R4 1
      157 GETTABLEKS                       R4 R4 K27 ["Medium"]
      159 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
      160 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
      161 LOADK                            R7 K28 ["gap-small padding-medium"]
      162 SETTABLEKS                       R7 R6 K3 ["tag"]
      164 GETTABLEKS                       R8 R1 K14 ["sizes"]
      166 GETUPVAL                         R9 1
      167 GETTABLEKS                       R9 R9 K27 ["Medium"]
      169 GETTABLE                         R7 R8 R9
      170 GETTABLEKS                       R7 R7 K0 ["container"]
      172 GETTABLEKS                       R7 R7 K10 ["radius"]
      174 SETTABLEKS                       R7 R6 K10 ["radius"]
      176 GETTABLEKS                       R8 R1 K14 ["sizes"]
      178 GETUPVAL                         R9 1
      179 GETTABLEKS                       R9 R9 K27 ["Medium"]
      181 GETTABLE                         R7 R8 R9
      182 GETTABLEKS                       R7 R7 K0 ["container"]
      184 GETTABLEKS                       R7 R7 K11 ["height"]
      186 SETTABLEKS                       R7 R6 K11 ["height"]
      188 SETTABLEKS                       R6 R5 K0 ["container"]
      190 DUPTABLE                         R6 K16 [{"size"}]
      191 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      193 GETTABLEKS                       R8 R0 K20 ["Size"]
      195 GETTABLEKS                       R8 R8 K29 ["Size_500"]
      197 GETTABLEKS                       R9 R0 K20 ["Size"]
      199 GETTABLEKS                       R9 R9 K29 ["Size_500"]
      201 CALL                             R7 2 1
      202 SETTABLEKS                       R7 R6 K15 ["size"]
      204 SETTABLEKS                       R6 R5 K8 ["icon"]
      206 DUPTABLE                         R6 K4 [{"tag"}]
      207 NEWTABLE                         R7 2 0
      209 GETUPVAL                         R8 2
      210 GETTABLEKS                       R8 R8 K22 ["FoundationButtonLabelTypography"]
      212 SETTABLEKS                       R8 R7 K30 ["text-label-medium"]
      214 GETUPVAL                         R9 2
      215 GETTABLEKS                       R9 R9 K22 ["FoundationButtonLabelTypography"]
      217 NOT                              R8 R9
      218 SETTABLEKS                       R8 R7 K31 ["text-title-medium"]
      220 SETTABLEKS                       R7 R6 K3 ["tag"]
      222 SETTABLEKS                       R6 R5 K1 ["text"]
      224 SETTABLE                         R5 R3 R4
      225 GETUPVAL                         R4 1
      226 GETTABLEKS                       R4 R4 K32 ["Large"]
      228 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
      229 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
      230 LOADK                            R7 K28 ["gap-small padding-medium"]
      231 SETTABLEKS                       R7 R6 K3 ["tag"]
      233 GETTABLEKS                       R8 R1 K14 ["sizes"]
      235 GETUPVAL                         R9 1
      236 GETTABLEKS                       R9 R9 K32 ["Large"]
      238 GETTABLE                         R7 R8 R9
      239 GETTABLEKS                       R7 R7 K0 ["container"]
      241 GETTABLEKS                       R7 R7 K10 ["radius"]
      243 SETTABLEKS                       R7 R6 K10 ["radius"]
      245 GETTABLEKS                       R8 R1 K14 ["sizes"]
      247 GETUPVAL                         R9 1
      248 GETTABLEKS                       R9 R9 K32 ["Large"]
      250 GETTABLE                         R7 R8 R9
      251 GETTABLEKS                       R7 R7 K0 ["container"]
      253 GETTABLEKS                       R7 R7 K11 ["height"]
      255 SETTABLEKS                       R7 R6 K11 ["height"]
      257 SETTABLEKS                       R6 R5 K0 ["container"]
      259 DUPTABLE                         R6 K16 [{"size"}]
      260 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      262 GETTABLEKS                       R8 R0 K20 ["Size"]
      264 GETTABLEKS                       R8 R8 K33 ["Size_600"]
      266 GETTABLEKS                       R9 R0 K20 ["Size"]
      268 GETTABLEKS                       R9 R9 K33 ["Size_600"]
      270 CALL                             R7 2 1
      271 SETTABLEKS                       R7 R6 K15 ["size"]
      273 SETTABLEKS                       R6 R5 K8 ["icon"]
      275 DUPTABLE                         R6 K4 [{"tag"}]
      276 NEWTABLE                         R7 2 0
      278 GETUPVAL                         R8 2
      279 GETTABLEKS                       R8 R8 K22 ["FoundationButtonLabelTypography"]
      281 SETTABLEKS                       R8 R7 K34 ["text-label-large"]
      283 GETUPVAL                         R9 2
      284 GETTABLEKS                       R9 R9 K22 ["FoundationButtonLabelTypography"]
      286 NOT                              R8 R9
      287 SETTABLEKS                       R8 R7 K35 ["text-title-large"]
      289 SETTABLEKS                       R7 R6 K3 ["tag"]
      291 SETTABLEKS                       R6 R5 K1 ["text"]
      293 SETTABLE                         R5 R3 R4
      294 DUPTABLE                         R4 K38 [{"common", "sizes", "types"}]
      295 SETTABLEKS                       R2 R4 K36 ["common"]
      297 SETTABLEKS                       R3 R4 K14 ["sizes"]
      299 GETTABLEKS                       R5 R1 K37 ["types"]
      301 SETTABLEKS                       R5 R4 K37 ["types"]
      303 RETURN                           R4 1

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
