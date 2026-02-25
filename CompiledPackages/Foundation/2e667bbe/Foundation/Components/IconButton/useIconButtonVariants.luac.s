PROTO_0:
        0 DUPTABLE                         R1 K1 [{"container"}]
        1 DUPTABLE                         R2 K3 [{"tag"}]
        2 LOADK                            R3 K4 ["row align-y-center align-x-center clip"]
        3 SETTABLEKS                       R3 R2 K2 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 4 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K5 ["XSmall"]
       15 DUPTABLE                         R5 K1 [{"container"}]
       16 DUPTABLE                         R6 K9 [{"radius", "size", "padding"}]
       17 GETTABLEKS                       R10 R2 K10 ["sizes"]
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R11 R12 K5 ["XSmall"]
       22 GETTABLE                         R9 R10 R11
       23 GETTABLEKS                       R8 R9 K0 ["container"]
       25 GETTABLEKS                       R7 R8 K6 ["radius"]
       27 SETTABLEKS                       R7 R6 K6 ["radius"]
       29 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       31 GETTABLEKS                       R11 R2 K10 ["sizes"]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R12 R13 K5 ["XSmall"]
       36 GETTABLE                         R10 R11 R12
       37 GETTABLEKS                       R9 R10 K0 ["container"]
       39 GETTABLEKS                       R8 R9 K14 ["height"]
       41 GETTABLEKS                       R12 R2 K10 ["sizes"]
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R13 R14 K5 ["XSmall"]
       46 GETTABLE                         R11 R12 R13
       47 GETTABLEKS                       R10 R11 K0 ["container"]
       49 GETTABLEKS                       R9 R10 K14 ["height"]
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K7 ["size"]
       54 GETIMPORT                        R7 K17 [UDim.new]
       56 LOADN                            R8 0
       57 GETTABLEKS                       R10 R0 K18 ["Size"]
       59 GETTABLEKS                       R9 R10 K19 ["Size_150"]
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K8 ["padding"]
       64 SETTABLEKS                       R6 R5 K0 ["container"]
       66 SETTABLE                         R5 R3 R4
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R4 R5 K20 ["Small"]
       70 DUPTABLE                         R5 K1 [{"container"}]
       71 DUPTABLE                         R6 K9 [{"radius", "size", "padding"}]
       72 GETTABLEKS                       R10 R2 K10 ["sizes"]
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R11 R12 K20 ["Small"]
       77 GETTABLE                         R9 R10 R11
       78 GETTABLEKS                       R8 R9 K0 ["container"]
       80 GETTABLEKS                       R7 R8 K6 ["radius"]
       82 SETTABLEKS                       R7 R6 K6 ["radius"]
       84 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       86 GETTABLEKS                       R11 R2 K10 ["sizes"]
       88 GETUPVAL                         R13 1
       89 GETTABLEKS                       R12 R13 K20 ["Small"]
       91 GETTABLE                         R10 R11 R12
       92 GETTABLEKS                       R9 R10 K0 ["container"]
       94 GETTABLEKS                       R8 R9 K14 ["height"]
       96 GETTABLEKS                       R12 R2 K10 ["sizes"]
       98 GETUPVAL                         R14 1
       99 GETTABLEKS                       R13 R14 K20 ["Small"]
      101 GETTABLE                         R11 R12 R13
      102 GETTABLEKS                       R10 R11 K0 ["container"]
      104 GETTABLEKS                       R9 R10 K14 ["height"]
      106 CALL                             R7 2 1
      107 SETTABLEKS                       R7 R6 K7 ["size"]
      109 GETIMPORT                        R7 K17 [UDim.new]
      111 LOADN                            R8 0
      112 GETTABLEKS                       R10 R0 K18 ["Size"]
      114 GETTABLEKS                       R9 R10 K21 ["Size_200"]
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K8 ["padding"]
      119 SETTABLEKS                       R6 R5 K0 ["container"]
      121 SETTABLE                         R5 R3 R4
      122 GETUPVAL                         R5 1
      123 GETTABLEKS                       R4 R5 K22 ["Medium"]
      125 DUPTABLE                         R5 K1 [{"container"}]
      126 DUPTABLE                         R6 K9 [{"radius", "size", "padding"}]
      127 GETTABLEKS                       R10 R2 K10 ["sizes"]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R11 R12 K22 ["Medium"]
      132 GETTABLE                         R9 R10 R11
      133 GETTABLEKS                       R8 R9 K0 ["container"]
      135 GETTABLEKS                       R7 R8 K6 ["radius"]
      137 SETTABLEKS                       R7 R6 K6 ["radius"]
      139 GETIMPORT                        R7 K13 [UDim2.fromOffset]
      141 GETTABLEKS                       R11 R2 K10 ["sizes"]
      143 GETUPVAL                         R13 1
      144 GETTABLEKS                       R12 R13 K22 ["Medium"]
      146 GETTABLE                         R10 R11 R12
      147 GETTABLEKS                       R9 R10 K0 ["container"]
      149 GETTABLEKS                       R8 R9 K14 ["height"]
      151 GETTABLEKS                       R12 R2 K10 ["sizes"]
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R13 R14 K22 ["Medium"]
      156 GETTABLE                         R11 R12 R13
      157 GETTABLEKS                       R10 R11 K0 ["container"]
      159 GETTABLEKS                       R9 R10 K14 ["height"]
      161 CALL                             R7 2 1
      162 SETTABLEKS                       R7 R6 K7 ["size"]
      164 GETIMPORT                        R7 K17 [UDim.new]
      166 LOADN                            R8 0
      167 GETTABLEKS                       R10 R0 K18 ["Size"]
      169 GETTABLEKS                       R9 R10 K23 ["Size_250"]
      171 CALL                             R7 2 1
      172 SETTABLEKS                       R7 R6 K8 ["padding"]
      174 SETTABLEKS                       R6 R5 K0 ["container"]
      176 SETTABLE                         R5 R3 R4
      177 GETUPVAL                         R5 1
      178 GETTABLEKS                       R4 R5 K24 ["Large"]
      180 DUPTABLE                         R5 K1 [{"container"}]
      181 DUPTABLE                         R6 K9 [{"radius", "size", "padding"}]
      182 GETTABLEKS                       R10 R2 K10 ["sizes"]
      184 GETUPVAL                         R12 1
      185 GETTABLEKS                       R11 R12 K24 ["Large"]
      187 GETTABLE                         R9 R10 R11
      188 GETTABLEKS                       R8 R9 K0 ["container"]
      190 GETTABLEKS                       R7 R8 K6 ["radius"]
      192 SETTABLEKS                       R7 R6 K6 ["radius"]
      194 GETIMPORT                        R7 K13 [UDim2.fromOffset]
      196 GETTABLEKS                       R11 R2 K10 ["sizes"]
      198 GETUPVAL                         R13 1
      199 GETTABLEKS                       R12 R13 K24 ["Large"]
      201 GETTABLE                         R10 R11 R12
      202 GETTABLEKS                       R9 R10 K0 ["container"]
      204 GETTABLEKS                       R8 R9 K14 ["height"]
      206 GETTABLEKS                       R12 R2 K10 ["sizes"]
      208 GETUPVAL                         R14 1
      209 GETTABLEKS                       R13 R14 K24 ["Large"]
      211 GETTABLE                         R11 R12 R13
      212 GETTABLEKS                       R10 R11 K0 ["container"]
      214 GETTABLEKS                       R9 R10 K14 ["height"]
      216 CALL                             R7 2 1
      217 SETTABLEKS                       R7 R6 K7 ["size"]
      219 GETIMPORT                        R7 K17 [UDim.new]
      221 LOADN                            R8 0
      222 GETTABLEKS                       R10 R0 K18 ["Size"]
      224 GETTABLEKS                       R9 R10 K25 ["Size_300"]
      226 CALL                             R7 2 1
      227 SETTABLEKS                       R7 R6 K8 ["padding"]
      229 SETTABLEKS                       R6 R5 K0 ["container"]
      231 SETTABLE                         R5 R3 R4
      232 DUPTABLE                         R4 K28 [{"common", "sizes", "types"}]
      233 SETTABLEKS                       R1 R4 K26 ["common"]
      235 SETTABLEKS                       R3 R4 K10 ["sizes"]
      237 GETTABLEKS                       R5 R2 K27 ["types"]
      239 SETTABLEKS                       R5 R4 K27 ["types"]
      241 RETURN                           R4 1

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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["ButtonVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R7 K12 ["Style"]
       34 GETTABLEKS                       R5 R6 K13 ["VariantsContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Utility"]
       41 GETTABLEKS                       R6 R7 K15 ["composeStyleVariant"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K11 ["Providers"]
       48 GETTABLEKS                       R8 R9 K12 ["Style"]
       50 GETTABLEKS                       R7 R8 K16 ["Tokens"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K9 ["Components"]
       57 GETTABLEKS                       R9 R10 K17 ["Button"]
       59 GETTABLEKS                       R8 R9 K18 ["getSharedVariants"]
       61 CALL                             R7 1 1
       62 DUPCLOSURE                       R8 K19 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 DUPCLOSURE                       R9 K20 [PROTO_1]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R5
       69 RETURN                           R9 1
