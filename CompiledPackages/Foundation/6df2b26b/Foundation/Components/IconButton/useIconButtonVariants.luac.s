PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationIconButtonBiggerBuilderIcons"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 NEWTABLE                         R1 0 0
        6 JUMP                             ; [+7]
        7 DUPTABLE                         R1 K2 [{"container"}]
        8 DUPTABLE                         R2 K4 [{"tag"}]
        9 LOADK                            R3 K5 ["row align-y-center align-x-center clip"]
       10 SETTABLEKS                       R3 R2 K3 ["tag"]
       12 SETTABLEKS                       R2 R1 K1 ["container"]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 NEWTABLE                         R3 4 0
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K6 ["XSmall"]
       22 DUPTABLE                         R5 K2 [{"container"}]
       23 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
       24 GETTABLEKS                       R10 R2 K11 ["sizes"]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K6 ["XSmall"]
       29 GETTABLE                         R9 R10 R11
       30 GETTABLEKS                       R8 R9 K1 ["container"]
       32 GETTABLEKS                       R7 R8 K7 ["radius"]
       34 SETTABLEKS                       R7 R6 K7 ["radius"]
       36 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       38 GETTABLEKS                       R11 R2 K11 ["sizes"]
       40 GETUPVAL                         R13 2
       41 GETTABLEKS                       R12 R13 K6 ["XSmall"]
       43 GETTABLE                         R10 R11 R12
       44 GETTABLEKS                       R9 R10 K1 ["container"]
       46 GETTABLEKS                       R8 R9 K15 ["height"]
       48 GETTABLEKS                       R12 R2 K11 ["sizes"]
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R13 R14 K6 ["XSmall"]
       53 GETTABLE                         R11 R12 R13
       54 GETTABLEKS                       R10 R11 K1 ["container"]
       56 GETTABLEKS                       R9 R10 K15 ["height"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K8 ["size"]
       61 GETIMPORT                        R7 K18 [UDim.new]
       63 LOADN                            R8 0
       64 GETTABLEKS                       R10 R0 K19 ["Size"]
       66 GETTABLEKS                       R9 R10 K20 ["Size_150"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K9 ["padding"]
       71 SETTABLEKS                       R6 R5 K1 ["container"]
       73 SETTABLE                         R5 R3 R4
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R4 R5 K21 ["Small"]
       77 DUPTABLE                         R5 K2 [{"container"}]
       78 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
       79 GETTABLEKS                       R10 R2 K11 ["sizes"]
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R11 R12 K21 ["Small"]
       84 GETTABLE                         R9 R10 R11
       85 GETTABLEKS                       R8 R9 K1 ["container"]
       87 GETTABLEKS                       R7 R8 K7 ["radius"]
       89 SETTABLEKS                       R7 R6 K7 ["radius"]
       91 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       93 GETTABLEKS                       R11 R2 K11 ["sizes"]
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R12 R13 K21 ["Small"]
       98 GETTABLE                         R10 R11 R12
       99 GETTABLEKS                       R9 R10 K1 ["container"]
      101 GETTABLEKS                       R8 R9 K15 ["height"]
      103 GETTABLEKS                       R12 R2 K11 ["sizes"]
      105 GETUPVAL                         R14 2
      106 GETTABLEKS                       R13 R14 K21 ["Small"]
      108 GETTABLE                         R11 R12 R13
      109 GETTABLEKS                       R10 R11 K1 ["container"]
      111 GETTABLEKS                       R9 R10 K15 ["height"]
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K8 ["size"]
      116 GETIMPORT                        R7 K18 [UDim.new]
      118 LOADN                            R8 0
      119 GETTABLEKS                       R10 R0 K19 ["Size"]
      121 GETTABLEKS                       R9 R10 K22 ["Size_200"]
      123 CALL                             R7 2 1
      124 SETTABLEKS                       R7 R6 K9 ["padding"]
      126 SETTABLEKS                       R6 R5 K1 ["container"]
      128 SETTABLE                         R5 R3 R4
      129 GETUPVAL                         R5 2
      130 GETTABLEKS                       R4 R5 K23 ["Medium"]
      132 DUPTABLE                         R5 K2 [{"container"}]
      133 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
      134 GETTABLEKS                       R10 R2 K11 ["sizes"]
      136 GETUPVAL                         R12 2
      137 GETTABLEKS                       R11 R12 K23 ["Medium"]
      139 GETTABLE                         R9 R10 R11
      140 GETTABLEKS                       R8 R9 K1 ["container"]
      142 GETTABLEKS                       R7 R8 K7 ["radius"]
      144 SETTABLEKS                       R7 R6 K7 ["radius"]
      146 GETIMPORT                        R7 K14 [UDim2.fromOffset]
      148 GETTABLEKS                       R11 R2 K11 ["sizes"]
      150 GETUPVAL                         R13 2
      151 GETTABLEKS                       R12 R13 K23 ["Medium"]
      153 GETTABLE                         R10 R11 R12
      154 GETTABLEKS                       R9 R10 K1 ["container"]
      156 GETTABLEKS                       R8 R9 K15 ["height"]
      158 GETTABLEKS                       R12 R2 K11 ["sizes"]
      160 GETUPVAL                         R14 2
      161 GETTABLEKS                       R13 R14 K23 ["Medium"]
      163 GETTABLE                         R11 R12 R13
      164 GETTABLEKS                       R10 R11 K1 ["container"]
      166 GETTABLEKS                       R9 R10 K15 ["height"]
      168 CALL                             R7 2 1
      169 SETTABLEKS                       R7 R6 K8 ["size"]
      171 GETIMPORT                        R7 K18 [UDim.new]
      173 LOADN                            R8 0
      174 GETTABLEKS                       R10 R0 K19 ["Size"]
      176 GETTABLEKS                       R9 R10 K24 ["Size_250"]
      178 CALL                             R7 2 1
      179 SETTABLEKS                       R7 R6 K9 ["padding"]
      181 SETTABLEKS                       R6 R5 K1 ["container"]
      183 SETTABLE                         R5 R3 R4
      184 GETUPVAL                         R5 2
      185 GETTABLEKS                       R4 R5 K25 ["Large"]
      187 DUPTABLE                         R5 K2 [{"container"}]
      188 DUPTABLE                         R6 K10 [{"radius", "size", "padding"}]
      189 GETTABLEKS                       R10 R2 K11 ["sizes"]
      191 GETUPVAL                         R12 2
      192 GETTABLEKS                       R11 R12 K25 ["Large"]
      194 GETTABLE                         R9 R10 R11
      195 GETTABLEKS                       R8 R9 K1 ["container"]
      197 GETTABLEKS                       R7 R8 K7 ["radius"]
      199 SETTABLEKS                       R7 R6 K7 ["radius"]
      201 GETIMPORT                        R7 K14 [UDim2.fromOffset]
      203 GETTABLEKS                       R11 R2 K11 ["sizes"]
      205 GETUPVAL                         R13 2
      206 GETTABLEKS                       R12 R13 K25 ["Large"]
      208 GETTABLE                         R10 R11 R12
      209 GETTABLEKS                       R9 R10 K1 ["container"]
      211 GETTABLEKS                       R8 R9 K15 ["height"]
      213 GETTABLEKS                       R12 R2 K11 ["sizes"]
      215 GETUPVAL                         R14 2
      216 GETTABLEKS                       R13 R14 K25 ["Large"]
      218 GETTABLE                         R11 R12 R13
      219 GETTABLEKS                       R10 R11 K1 ["container"]
      221 GETTABLEKS                       R9 R10 K15 ["height"]
      223 CALL                             R7 2 1
      224 SETTABLEKS                       R7 R6 K8 ["size"]
      226 GETIMPORT                        R7 K18 [UDim.new]
      228 LOADN                            R8 0
      229 GETTABLEKS                       R10 R0 K19 ["Size"]
      231 GETTABLEKS                       R9 R10 K26 ["Size_300"]
      233 CALL                             R7 2 1
      234 SETTABLEKS                       R7 R6 K9 ["padding"]
      236 SETTABLEKS                       R6 R5 K1 ["container"]
      238 SETTABLE                         R5 R3 R4
      239 DUPTABLE                         R4 K29 [{"common", "sizes", "types"}]
      240 SETTABLEKS                       R1 R4 K27 ["common"]
      242 SETTABLEKS                       R3 R4 K11 ["sizes"]
      244 GETTABLEKS                       R5 R2 K28 ["types"]
      246 SETTABLEKS                       R5 R4 K28 ["types"]
      248 RETURN                           R4 1

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
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["ButtonVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R5 R6 K11 ["ColorMode"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R9 K15 ["Style"]
       48 GETTABLEKS                       R7 R8 K16 ["VariantsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Utility"]
       55 GETTABLEKS                       R8 R9 K17 ["composeStyleVariant"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K14 ["Providers"]
       62 GETTABLEKS                       R10 R11 K15 ["Style"]
       64 GETTABLEKS                       R9 R10 K18 ["Tokens"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K12 ["Components"]
       71 GETTABLEKS                       R11 R12 K19 ["Button"]
       73 GETTABLEKS                       R10 R11 K20 ["getSharedVariants"]
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
