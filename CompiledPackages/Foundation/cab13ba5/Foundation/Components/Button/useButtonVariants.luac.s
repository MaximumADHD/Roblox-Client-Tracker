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
       69 LOADK                            R7 K22 ["text-title-small"]
       70 SETTABLEKS                       R7 R6 K3 ["tag"]
       72 SETTABLEKS                       R6 R5 K1 ["text"]
       74 SETTABLE                         R5 R3 R4
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R4 R4 K23 ["Small"]
       78 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
       79 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
       80 LOADK                            R7 K13 ["gap-xsmall padding-small"]
       81 SETTABLEKS                       R7 R6 K3 ["tag"]
       83 GETTABLEKS                       R8 R1 K14 ["sizes"]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K23 ["Small"]
       88 GETTABLE                         R7 R8 R9
       89 GETTABLEKS                       R7 R7 K0 ["container"]
       91 GETTABLEKS                       R7 R7 K10 ["radius"]
       93 SETTABLEKS                       R7 R6 K10 ["radius"]
       95 GETTABLEKS                       R8 R1 K14 ["sizes"]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K23 ["Small"]
      100 GETTABLE                         R7 R8 R9
      101 GETTABLEKS                       R7 R7 K0 ["container"]
      103 GETTABLEKS                       R7 R7 K11 ["height"]
      105 SETTABLEKS                       R7 R6 K11 ["height"]
      107 SETTABLEKS                       R6 R5 K0 ["container"]
      109 DUPTABLE                         R6 K16 [{"size"}]
      110 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      112 GETTABLEKS                       R8 R0 K20 ["Size"]
      114 GETTABLEKS                       R8 R8 K24 ["Size_400"]
      116 GETTABLEKS                       R9 R0 K20 ["Size"]
      118 GETTABLEKS                       R9 R9 K24 ["Size_400"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K15 ["size"]
      123 SETTABLEKS                       R6 R5 K8 ["icon"]
      125 DUPTABLE                         R6 K4 [{"tag"}]
      126 LOADK                            R7 K22 ["text-title-small"]
      127 SETTABLEKS                       R7 R6 K3 ["tag"]
      129 SETTABLEKS                       R6 R5 K1 ["text"]
      131 SETTABLE                         R5 R3 R4
      132 GETUPVAL                         R4 1
      133 GETTABLEKS                       R4 R4 K25 ["Medium"]
      135 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
      136 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
      137 LOADK                            R7 K26 ["gap-small padding-medium"]
      138 SETTABLEKS                       R7 R6 K3 ["tag"]
      140 GETTABLEKS                       R8 R1 K14 ["sizes"]
      142 GETUPVAL                         R9 1
      143 GETTABLEKS                       R9 R9 K25 ["Medium"]
      145 GETTABLE                         R7 R8 R9
      146 GETTABLEKS                       R7 R7 K0 ["container"]
      148 GETTABLEKS                       R7 R7 K10 ["radius"]
      150 SETTABLEKS                       R7 R6 K10 ["radius"]
      152 GETTABLEKS                       R8 R1 K14 ["sizes"]
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R9 R9 K25 ["Medium"]
      157 GETTABLE                         R7 R8 R9
      158 GETTABLEKS                       R7 R7 K0 ["container"]
      160 GETTABLEKS                       R7 R7 K11 ["height"]
      162 SETTABLEKS                       R7 R6 K11 ["height"]
      164 SETTABLEKS                       R6 R5 K0 ["container"]
      166 DUPTABLE                         R6 K16 [{"size"}]
      167 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      169 GETTABLEKS                       R8 R0 K20 ["Size"]
      171 GETTABLEKS                       R8 R8 K27 ["Size_500"]
      173 GETTABLEKS                       R9 R0 K20 ["Size"]
      175 GETTABLEKS                       R9 R9 K27 ["Size_500"]
      177 CALL                             R7 2 1
      178 SETTABLEKS                       R7 R6 K15 ["size"]
      180 SETTABLEKS                       R6 R5 K8 ["icon"]
      182 DUPTABLE                         R6 K4 [{"tag"}]
      183 LOADK                            R7 K28 ["text-title-medium"]
      184 SETTABLEKS                       R7 R6 K3 ["tag"]
      186 SETTABLEKS                       R6 R5 K1 ["text"]
      188 SETTABLE                         R5 R3 R4
      189 GETUPVAL                         R4 1
      190 GETTABLEKS                       R4 R4 K29 ["Large"]
      192 DUPTABLE                         R5 K9 [{"container", "icon", "text"}]
      193 DUPTABLE                         R6 K12 [{"tag", "radius", "height"}]
      194 LOADK                            R7 K26 ["gap-small padding-medium"]
      195 SETTABLEKS                       R7 R6 K3 ["tag"]
      197 GETTABLEKS                       R8 R1 K14 ["sizes"]
      199 GETUPVAL                         R9 1
      200 GETTABLEKS                       R9 R9 K29 ["Large"]
      202 GETTABLE                         R7 R8 R9
      203 GETTABLEKS                       R7 R7 K0 ["container"]
      205 GETTABLEKS                       R7 R7 K10 ["radius"]
      207 SETTABLEKS                       R7 R6 K10 ["radius"]
      209 GETTABLEKS                       R8 R1 K14 ["sizes"]
      211 GETUPVAL                         R9 1
      212 GETTABLEKS                       R9 R9 K29 ["Large"]
      214 GETTABLE                         R7 R8 R9
      215 GETTABLEKS                       R7 R7 K0 ["container"]
      217 GETTABLEKS                       R7 R7 K11 ["height"]
      219 SETTABLEKS                       R7 R6 K11 ["height"]
      221 SETTABLEKS                       R6 R5 K0 ["container"]
      223 DUPTABLE                         R6 K16 [{"size"}]
      224 GETIMPORT                        R7 K19 [UDim2.fromOffset]
      226 GETTABLEKS                       R8 R0 K20 ["Size"]
      228 GETTABLEKS                       R8 R8 K30 ["Size_600"]
      230 GETTABLEKS                       R9 R0 K20 ["Size"]
      232 GETTABLEKS                       R9 R9 K30 ["Size_600"]
      234 CALL                             R7 2 1
      235 SETTABLEKS                       R7 R6 K15 ["size"]
      237 SETTABLEKS                       R6 R5 K8 ["icon"]
      239 DUPTABLE                         R6 K4 [{"tag"}]
      240 LOADK                            R7 K31 ["text-title-large"]
      241 SETTABLEKS                       R7 R6 K3 ["tag"]
      243 SETTABLEKS                       R6 R5 K1 ["text"]
      245 SETTABLE                         R5 R3 R4
      246 DUPTABLE                         R4 K34 [{"common", "sizes", "types"}]
      247 SETTABLEKS                       R2 R4 K32 ["common"]
      249 SETTABLEKS                       R3 R4 K14 ["sizes"]
      251 GETTABLEKS                       R5 R1 K33 ["types"]
      253 SETTABLEKS                       R5 R4 K33 ["types"]
      255 RETURN                           R4 1

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
