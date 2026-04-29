PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 4 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["XSmall"]
       10 DUPTABLE                         R5 K2 [{"container"}]
       11 DUPTABLE                         R6 K6 [{"radius", "size", "padding"}]
       12 GETTABLEKS                       R10 R2 K7 ["sizes"]
       14 GETUPVAL                         R12 1
       15 GETTABLEKS                       R11 R12 K0 ["XSmall"]
       17 GETTABLE                         R9 R10 R11
       18 GETTABLEKS                       R8 R9 K1 ["container"]
       20 GETTABLEKS                       R7 R8 K3 ["radius"]
       22 SETTABLEKS                       R7 R6 K3 ["radius"]
       24 GETIMPORT                        R7 K10 [UDim2.fromOffset]
       26 GETTABLEKS                       R11 R2 K7 ["sizes"]
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R12 R13 K0 ["XSmall"]
       31 GETTABLE                         R10 R11 R12
       32 GETTABLEKS                       R9 R10 K1 ["container"]
       34 GETTABLEKS                       R8 R9 K11 ["height"]
       36 GETTABLEKS                       R12 R2 K7 ["sizes"]
       38 GETUPVAL                         R14 1
       39 GETTABLEKS                       R13 R14 K0 ["XSmall"]
       41 GETTABLE                         R11 R12 R13
       42 GETTABLEKS                       R10 R11 K1 ["container"]
       44 GETTABLEKS                       R9 R10 K11 ["height"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K4 ["size"]
       49 GETIMPORT                        R7 K14 [UDim.new]
       51 LOADN                            R8 0
       52 GETTABLEKS                       R10 R0 K15 ["Size"]
       54 GETTABLEKS                       R9 R10 K16 ["Size_150"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K5 ["padding"]
       59 SETTABLEKS                       R6 R5 K1 ["container"]
       61 SETTABLE                         R5 R3 R4
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R4 R5 K17 ["Small"]
       65 DUPTABLE                         R5 K2 [{"container"}]
       66 DUPTABLE                         R6 K6 [{"radius", "size", "padding"}]
       67 GETTABLEKS                       R10 R2 K7 ["sizes"]
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R11 R12 K17 ["Small"]
       72 GETTABLE                         R9 R10 R11
       73 GETTABLEKS                       R8 R9 K1 ["container"]
       75 GETTABLEKS                       R7 R8 K3 ["radius"]
       77 SETTABLEKS                       R7 R6 K3 ["radius"]
       79 GETIMPORT                        R7 K10 [UDim2.fromOffset]
       81 GETTABLEKS                       R11 R2 K7 ["sizes"]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R12 R13 K17 ["Small"]
       86 GETTABLE                         R10 R11 R12
       87 GETTABLEKS                       R9 R10 K1 ["container"]
       89 GETTABLEKS                       R8 R9 K11 ["height"]
       91 GETTABLEKS                       R12 R2 K7 ["sizes"]
       93 GETUPVAL                         R14 1
       94 GETTABLEKS                       R13 R14 K17 ["Small"]
       96 GETTABLE                         R11 R12 R13
       97 GETTABLEKS                       R10 R11 K1 ["container"]
       99 GETTABLEKS                       R9 R10 K11 ["height"]
      101 CALL                             R7 2 1
      102 SETTABLEKS                       R7 R6 K4 ["size"]
      104 GETIMPORT                        R7 K14 [UDim.new]
      106 LOADN                            R8 0
      107 GETTABLEKS                       R10 R0 K15 ["Size"]
      109 GETTABLEKS                       R9 R10 K18 ["Size_200"]
      111 CALL                             R7 2 1
      112 SETTABLEKS                       R7 R6 K5 ["padding"]
      114 SETTABLEKS                       R6 R5 K1 ["container"]
      116 SETTABLE                         R5 R3 R4
      117 GETUPVAL                         R5 1
      118 GETTABLEKS                       R4 R5 K19 ["Medium"]
      120 DUPTABLE                         R5 K2 [{"container"}]
      121 DUPTABLE                         R6 K6 [{"radius", "size", "padding"}]
      122 GETTABLEKS                       R10 R2 K7 ["sizes"]
      124 GETUPVAL                         R12 1
      125 GETTABLEKS                       R11 R12 K19 ["Medium"]
      127 GETTABLE                         R9 R10 R11
      128 GETTABLEKS                       R8 R9 K1 ["container"]
      130 GETTABLEKS                       R7 R8 K3 ["radius"]
      132 SETTABLEKS                       R7 R6 K3 ["radius"]
      134 GETIMPORT                        R7 K10 [UDim2.fromOffset]
      136 GETTABLEKS                       R11 R2 K7 ["sizes"]
      138 GETUPVAL                         R13 1
      139 GETTABLEKS                       R12 R13 K19 ["Medium"]
      141 GETTABLE                         R10 R11 R12
      142 GETTABLEKS                       R9 R10 K1 ["container"]
      144 GETTABLEKS                       R8 R9 K11 ["height"]
      146 GETTABLEKS                       R12 R2 K7 ["sizes"]
      148 GETUPVAL                         R14 1
      149 GETTABLEKS                       R13 R14 K19 ["Medium"]
      151 GETTABLE                         R11 R12 R13
      152 GETTABLEKS                       R10 R11 K1 ["container"]
      154 GETTABLEKS                       R9 R10 K11 ["height"]
      156 CALL                             R7 2 1
      157 SETTABLEKS                       R7 R6 K4 ["size"]
      159 GETIMPORT                        R7 K14 [UDim.new]
      161 LOADN                            R8 0
      162 GETTABLEKS                       R10 R0 K15 ["Size"]
      164 GETTABLEKS                       R9 R10 K20 ["Size_250"]
      166 CALL                             R7 2 1
      167 SETTABLEKS                       R7 R6 K5 ["padding"]
      169 SETTABLEKS                       R6 R5 K1 ["container"]
      171 SETTABLE                         R5 R3 R4
      172 GETUPVAL                         R5 1
      173 GETTABLEKS                       R4 R5 K21 ["Large"]
      175 DUPTABLE                         R5 K2 [{"container"}]
      176 DUPTABLE                         R6 K6 [{"radius", "size", "padding"}]
      177 GETTABLEKS                       R10 R2 K7 ["sizes"]
      179 GETUPVAL                         R12 1
      180 GETTABLEKS                       R11 R12 K21 ["Large"]
      182 GETTABLE                         R9 R10 R11
      183 GETTABLEKS                       R8 R9 K1 ["container"]
      185 GETTABLEKS                       R7 R8 K3 ["radius"]
      187 SETTABLEKS                       R7 R6 K3 ["radius"]
      189 GETIMPORT                        R7 K10 [UDim2.fromOffset]
      191 GETTABLEKS                       R11 R2 K7 ["sizes"]
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R12 R13 K21 ["Large"]
      196 GETTABLE                         R10 R11 R12
      197 GETTABLEKS                       R9 R10 K1 ["container"]
      199 GETTABLEKS                       R8 R9 K11 ["height"]
      201 GETTABLEKS                       R12 R2 K7 ["sizes"]
      203 GETUPVAL                         R14 1
      204 GETTABLEKS                       R13 R14 K21 ["Large"]
      206 GETTABLE                         R11 R12 R13
      207 GETTABLEKS                       R10 R11 K1 ["container"]
      209 GETTABLEKS                       R9 R10 K11 ["height"]
      211 CALL                             R7 2 1
      212 SETTABLEKS                       R7 R6 K4 ["size"]
      214 GETIMPORT                        R7 K14 [UDim.new]
      216 LOADN                            R8 0
      217 GETTABLEKS                       R10 R0 K15 ["Size"]
      219 GETTABLEKS                       R9 R10 K22 ["Size_300"]
      221 CALL                             R7 2 1
      222 SETTABLEKS                       R7 R6 K5 ["padding"]
      224 SETTABLEKS                       R6 R5 K1 ["container"]
      226 SETTABLE                         R5 R3 R4
      227 DUPTABLE                         R4 K25 [{"common", "sizes", "types"}]
      228 SETTABLEKS                       R1 R4 K23 ["common"]
      230 SETTABLEKS                       R3 R4 K7 ["sizes"]
      232 GETTABLEKS                       R5 R2 K24 ["types"]
      234 SETTABLEKS                       R5 R4 K24 ["types"]
      236 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useVariants"]
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["ButtonVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R5 K9 ["ColorMode"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R8 K13 ["Style"]
       41 GETTABLEKS                       R6 R7 K14 ["VariantsContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Utility"]
       48 GETTABLEKS                       R7 R8 K16 ["composeStyleVariant"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K12 ["Providers"]
       55 GETTABLEKS                       R9 R10 K13 ["Style"]
       57 GETTABLEKS                       R8 R9 K17 ["Tokens"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R11 K18 ["Button"]
       66 GETTABLEKS                       R9 R10 K19 ["getSharedVariants"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R10 K21 [PROTO_1]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 RETURN                           R10 1
