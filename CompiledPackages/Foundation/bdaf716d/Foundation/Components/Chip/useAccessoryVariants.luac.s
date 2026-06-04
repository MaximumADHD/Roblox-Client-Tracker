PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 NEWTABLE                         R2 4 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["Small"]
        7 GETIMPORT                        R4 K3 [UDim2.fromOffset]
        9 GETTABLEKS                       R5 R0 K4 ["Size"]
       11 GETTABLEKS                       R5 R5 K5 ["Size_300"]
       13 GETTABLEKS                       R6 R0 K4 ["Size"]
       15 GETTABLEKS                       R6 R6 K5 ["Size_300"]
       17 CALL                             R4 2 1
       18 SETTABLE                         R4 R2 R3
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K6 ["Medium"]
       22 GETIMPORT                        R4 K3 [UDim2.fromOffset]
       24 GETTABLEKS                       R5 R0 K4 ["Size"]
       26 GETTABLEKS                       R5 R5 K7 ["Size_400"]
       28 GETTABLEKS                       R6 R0 K4 ["Size"]
       30 GETTABLEKS                       R6 R6 K7 ["Size_400"]
       32 CALL                             R4 2 1
       33 SETTABLE                         R4 R2 R3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K8 ["Large"]
       37 GETIMPORT                        R4 K3 [UDim2.fromOffset]
       39 GETTABLEKS                       R5 R0 K4 ["Size"]
       41 GETTABLEKS                       R5 R5 K9 ["Size_500"]
       43 GETTABLEKS                       R6 R0 K4 ["Size"]
       45 GETTABLEKS                       R6 R6 K9 ["Size_500"]
       47 CALL                             R4 2 1
       48 SETTABLE                         R4 R2 R3
       49 SETTABLEKS                       R2 R1 K10 ["Default"]
       51 NEWTABLE                         R2 4 0
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K0 ["Small"]
       56 GETIMPORT                        R4 K3 [UDim2.fromOffset]
       58 GETTABLEKS                       R5 R0 K4 ["Size"]
       60 GETTABLEKS                       R5 R5 K7 ["Size_400"]
       62 GETTABLEKS                       R6 R0 K4 ["Size"]
       64 GETTABLEKS                       R6 R6 K7 ["Size_400"]
       66 CALL                             R4 2 1
       67 SETTABLE                         R4 R2 R3
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R3 R3 K6 ["Medium"]
       71 GETIMPORT                        R4 K3 [UDim2.fromOffset]
       73 GETTABLEKS                       R5 R0 K4 ["Size"]
       75 GETTABLEKS                       R5 R5 K9 ["Size_500"]
       77 GETTABLEKS                       R6 R0 K4 ["Size"]
       79 GETTABLEKS                       R6 R6 K9 ["Size_500"]
       81 CALL                             R4 2 1
       82 SETTABLE                         R4 R2 R3
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R3 R3 K8 ["Large"]
       86 GETIMPORT                        R4 K3 [UDim2.fromOffset]
       88 GETTABLEKS                       R5 R0 K4 ["Size"]
       90 GETTABLEKS                       R5 R5 K11 ["Size_600"]
       92 GETTABLEKS                       R6 R0 K4 ["Size"]
       94 GETTABLEKS                       R6 R6 K11 ["Size_600"]
       96 CALL                             R4 2 1
       97 SETTABLE                         R4 R2 R3
       98 SETTABLEKS                       R2 R1 K12 ["Circular"]
      100 NEWTABLE                         R2 2 0
      102 NEWTABLE                         R3 4 0
      104 GETUPVAL                         R4 0
      105 GETTABLEKS                       R4 R4 K0 ["Small"]
      107 GETIMPORT                        R5 K15 [UDim.new]
      109 LOADN                            R6 0
      110 GETTABLEKS                       R7 R0 K4 ["Size"]
      112 GETTABLEKS                       R7 R7 K16 ["Size_150"]
      114 CALL                             R5 2 1
      115 SETTABLE                         R5 R3 R4
      116 GETUPVAL                         R4 0
      117 GETTABLEKS                       R4 R4 K6 ["Medium"]
      119 GETIMPORT                        R5 K15 [UDim.new]
      121 LOADN                            R6 0
      122 GETTABLEKS                       R7 R0 K4 ["Size"]
      124 GETTABLEKS                       R7 R7 K17 ["Size_200"]
      126 CALL                             R5 2 1
      127 SETTABLE                         R5 R3 R4
      128 GETUPVAL                         R4 0
      129 GETTABLEKS                       R4 R4 K8 ["Large"]
      131 GETIMPORT                        R5 K15 [UDim.new]
      133 LOADN                            R6 0
      134 GETTABLEKS                       R7 R0 K4 ["Size"]
      136 GETTABLEKS                       R7 R7 K18 ["Size_250"]
      138 CALL                             R5 2 1
      139 SETTABLE                         R5 R3 R4
      140 SETTABLEKS                       R3 R2 K12 ["Circular"]
      142 NEWTABLE                         R3 4 0
      144 GETUPVAL                         R4 0
      145 GETTABLEKS                       R4 R4 K0 ["Small"]
      147 GETIMPORT                        R5 K15 [UDim.new]
      149 LOADN                            R6 0
      150 GETTABLEKS                       R7 R0 K19 ["Padding"]
      152 GETTABLEKS                       R7 R7 K0 ["Small"]
      154 CALL                             R5 2 1
      155 SETTABLE                         R5 R3 R4
      156 GETUPVAL                         R4 0
      157 GETTABLEKS                       R4 R4 K6 ["Medium"]
      159 GETIMPORT                        R5 K15 [UDim.new]
      161 LOADN                            R6 0
      162 GETTABLEKS                       R7 R0 K19 ["Padding"]
      164 GETTABLEKS                       R7 R7 K6 ["Medium"]
      166 CALL                             R5 2 1
      167 SETTABLE                         R5 R3 R4
      168 GETUPVAL                         R4 0
      169 GETTABLEKS                       R4 R4 K8 ["Large"]
      171 GETIMPORT                        R5 K15 [UDim.new]
      173 LOADN                            R6 0
      174 GETTABLEKS                       R7 R0 K19 ["Padding"]
      176 GETTABLEKS                       R7 R7 K6 ["Medium"]
      178 CALL                             R5 2 1
      179 SETTABLE                         R5 R3 R4
      180 SETTABLEKS                       R3 R2 K10 ["Default"]
      182 NEWTABLE                         R3 2 0
      184 NEWTABLE                         R4 4 0
      186 GETUPVAL                         R5 0
      187 GETTABLEKS                       R5 R5 K0 ["Small"]
      189 GETIMPORT                        R6 K15 [UDim.new]
      191 LOADN                            R7 0
      192 GETTABLEKS                       R8 R0 K19 ["Padding"]
      194 GETTABLEKS                       R8 R8 K20 ["XSmall"]
      196 CALL                             R6 2 1
      197 SETTABLE                         R6 R4 R5
      198 GETUPVAL                         R5 0
      199 GETTABLEKS                       R5 R5 K6 ["Medium"]
      201 GETIMPORT                        R6 K15 [UDim.new]
      203 LOADN                            R7 0
      204 GETTABLEKS                       R8 R0 K4 ["Size"]
      206 GETTABLEKS                       R8 R8 K16 ["Size_150"]
      208 CALL                             R6 2 1
      209 SETTABLE                         R6 R4 R5
      210 GETUPVAL                         R5 0
      211 GETTABLEKS                       R5 R5 K8 ["Large"]
      213 GETIMPORT                        R6 K15 [UDim.new]
      215 LOADN                            R7 0
      216 GETTABLEKS                       R8 R0 K19 ["Padding"]
      218 GETTABLEKS                       R8 R8 K0 ["Small"]
      220 CALL                             R6 2 1
      221 SETTABLE                         R6 R4 R5
      222 SETTABLEKS                       R4 R3 K21 ["Leading"]
      224 NEWTABLE                         R4 4 0
      226 GETUPVAL                         R5 0
      227 GETTABLEKS                       R5 R5 K0 ["Small"]
      229 GETIMPORT                        R6 K15 [UDim.new]
      231 LOADN                            R7 0
      232 GETTABLEKS                       R8 R0 K4 ["Size"]
      234 GETTABLEKS                       R8 R8 K16 ["Size_150"]
      236 CALL                             R6 2 1
      237 SETTABLE                         R6 R4 R5
      238 GETUPVAL                         R5 0
      239 GETTABLEKS                       R5 R5 K6 ["Medium"]
      241 GETIMPORT                        R6 K15 [UDim.new]
      243 LOADN                            R7 0
      244 GETTABLEKS                       R8 R0 K19 ["Padding"]
      246 GETTABLEKS                       R8 R8 K0 ["Small"]
      248 CALL                             R6 2 1
      249 SETTABLE                         R6 R4 R5
      250 GETUPVAL                         R5 0
      251 GETTABLEKS                       R5 R5 K8 ["Large"]
      253 GETIMPORT                        R6 K15 [UDim.new]
      255 LOADN                            R7 0
      256 GETTABLEKS                       R8 R0 K4 ["Size"]
      258 GETTABLEKS                       R8 R8 K18 ["Size_250"]
      260 CALL                             R6 2 1
      261 SETTABLE                         R6 R4 R5
      262 SETTABLEKS                       R4 R3 K22 ["Trailing"]
      264 DUPTABLE                         R4 K26 [{"textSpacing", "accessorySpacing", "accessorySize"}]
      265 SETTABLEKS                       R3 R4 K23 ["textSpacing"]
      267 SETTABLEKS                       R2 R4 K24 ["accessorySpacing"]
      269 SETTABLEKS                       R1 R4 K25 ["accessorySize"]
      271 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useVariants"]
        3 LOADK                            R5 K1 ["ChipAccessory"]
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADK                            R5 K2 ["Circular"]
        9 JUMP                             ; [+1]
       10 LOADK                            R5 K3 ["Default"]
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADK                            R6 K4 ["Leading"]
       13 JUMP                             ; [+1]
       14 LOADK                            R6 K5 ["Trailing"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K7 [{"accessory"}]
       17 DUPTABLE                         R9 K10 [{"Size", "padding"}]
       18 GETTABLEKS                       R12 R4 K11 ["accessorySize"]
       20 GETTABLE                         R11 R12 R5
       21 GETTABLE                         R10 R11 R1
       22 SETTABLEKS                       R10 R9 K8 ["Size"]
       24 JUMPIFNOT                        R2 ; [+14]
       25 DUPTABLE                         R10 K14 [{"left", "right"}]
       26 GETTABLEKS                       R13 R4 K15 ["accessorySpacing"]
       28 GETTABLE                         R12 R13 R5
       29 GETTABLE                         R11 R12 R1
       30 SETTABLEKS                       R11 R10 K12 ["left"]
       32 GETTABLEKS                       R13 R4 K16 ["textSpacing"]
       34 GETTABLE                         R12 R13 R6
       35 GETTABLE                         R11 R12 R1
       36 SETTABLEKS                       R11 R10 K13 ["right"]
       38 JUMP                             ; [+13]
       39 DUPTABLE                         R10 K14 [{"left", "right"}]
       40 GETTABLEKS                       R13 R4 K16 ["textSpacing"]
       42 GETTABLE                         R12 R13 R6
       43 GETTABLE                         R11 R12 R1
       44 SETTABLEKS                       R11 R10 K12 ["left"]
       46 GETTABLEKS                       R13 R4 K15 ["accessorySpacing"]
       48 GETTABLE                         R12 R13 R5
       49 GETTABLE                         R11 R12 R1
       50 SETTABLEKS                       R11 R10 K13 ["right"]
       52 SETTABLEKS                       R10 R9 K9 ["padding"]
       54 SETTABLEKS                       R9 R8 K6 ["accessory"]
       56 CALL                             R7 1 -1
       57 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ChipSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["composeStyleVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K11 ["Style"]
       27 GETTABLEKS                       R4 R4 K12 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Providers"]
       34 GETTABLEKS                       R5 R5 K11 ["Style"]
       36 GETTABLEKS                       R5 R5 K13 ["VariantsContext"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 RETURN                           R6 1
