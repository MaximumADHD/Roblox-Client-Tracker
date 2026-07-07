PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["CFrame"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["posX"]
        2 GETTABLEKS                       R3 R3 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+27]
        5 GETTABLEKS                       R3 R1 K2 ["posY"]
        7 GETTABLEKS                       R3 R3 K1 ["multiple"]
        9 JUMPIFNOT                        R3 ; [+22]
       10 GETTABLEKS                       R3 R1 K3 ["posZ"]
       12 GETTABLEKS                       R3 R3 K1 ["multiple"]
       14 JUMPIFNOT                        R3 ; [+17]
       15 GETTABLEKS                       R3 R1 K4 ["oriX"]
       17 GETTABLEKS                       R3 R3 K1 ["multiple"]
       19 JUMPIFNOT                        R3 ; [+12]
       20 GETTABLEKS                       R3 R1 K5 ["oriY"]
       22 GETTABLEKS                       R3 R3 K1 ["multiple"]
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETTABLEKS                       R3 R1 K6 ["oriZ"]
       27 GETTABLEKS                       R3 R3 K1 ["multiple"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADB                            R3 1
       31 RETURN                           R3 1
       32 GETTABLEKS                       R3 R1 K0 ["posX"]
       34 GETTABLEKS                       R3 R3 K1 ["multiple"]
       36 JUMPIF                           R3 ; [+19]
       37 GETTABLEKS                       R3 R1 K0 ["posX"]
       39 GETTABLEKS                       R3 R3 K7 ["value"]
       41 GETTABLEKS                       R4 R2 K8 ["Position"]
       43 GETTABLEKS                       R4 R4 K9 ["X"]
       45 JUMPIFEQ                         R3 R4 ; [+10]
       47 GETUPVAL                         R3 0
       48 SETTABLEKS                       R3 R1 K0 ["posX"]
       50 GETUPVAL                         R3 0
       51 SETTABLEKS                       R3 R1 K10 ["position"]
       53 GETUPVAL                         R3 0
       54 SETTABLEKS                       R3 R1 K7 ["value"]
       56 GETTABLEKS                       R3 R1 K2 ["posY"]
       58 GETTABLEKS                       R3 R3 K1 ["multiple"]
       60 JUMPIF                           R3 ; [+19]
       61 GETTABLEKS                       R3 R1 K2 ["posY"]
       63 GETTABLEKS                       R3 R3 K7 ["value"]
       65 GETTABLEKS                       R4 R2 K8 ["Position"]
       67 GETTABLEKS                       R4 R4 K11 ["Y"]
       69 JUMPIFEQ                         R3 R4 ; [+10]
       71 GETUPVAL                         R3 0
       72 SETTABLEKS                       R3 R1 K2 ["posY"]
       74 GETUPVAL                         R3 0
       75 SETTABLEKS                       R3 R1 K10 ["position"]
       77 GETUPVAL                         R3 0
       78 SETTABLEKS                       R3 R1 K7 ["value"]
       80 GETTABLEKS                       R3 R1 K3 ["posZ"]
       82 GETTABLEKS                       R3 R3 K1 ["multiple"]
       84 JUMPIF                           R3 ; [+19]
       85 GETTABLEKS                       R3 R1 K3 ["posZ"]
       87 GETTABLEKS                       R3 R3 K7 ["value"]
       89 GETTABLEKS                       R4 R2 K8 ["Position"]
       91 GETTABLEKS                       R4 R4 K12 ["Z"]
       93 JUMPIFEQ                         R3 R4 ; [+10]
       95 GETUPVAL                         R3 0
       96 SETTABLEKS                       R3 R1 K3 ["posZ"]
       98 GETUPVAL                         R3 0
       99 SETTABLEKS                       R3 R1 K10 ["position"]
      101 GETUPVAL                         R3 0
      102 SETTABLEKS                       R3 R1 K7 ["value"]
      104 NAMECALL                         R3 R2 K13 ["ToOrientation"]
      106 CALL                             R3 1 3
      107 GETTABLEKS                       R6 R1 K4 ["oriX"]
      109 GETTABLEKS                       R6 R6 K1 ["multiple"]
      111 JUMPIF                           R6 ; [+15]
      112 GETTABLEKS                       R6 R1 K4 ["oriX"]
      114 GETTABLEKS                       R6 R6 K7 ["value"]
      116 JUMPIFEQ                         R6 R3 ; [+10]
      118 GETUPVAL                         R6 0
      119 SETTABLEKS                       R6 R1 K4 ["oriX"]
      121 GETUPVAL                         R6 0
      122 SETTABLEKS                       R6 R1 K14 ["orientation"]
      124 GETUPVAL                         R6 0
      125 SETTABLEKS                       R6 R1 K7 ["value"]
      127 GETTABLEKS                       R6 R1 K5 ["oriY"]
      129 GETTABLEKS                       R6 R6 K1 ["multiple"]
      131 JUMPIF                           R6 ; [+15]
      132 GETTABLEKS                       R6 R1 K5 ["oriY"]
      134 GETTABLEKS                       R6 R6 K7 ["value"]
      136 JUMPIFEQ                         R6 R4 ; [+10]
      138 GETUPVAL                         R6 0
      139 SETTABLEKS                       R6 R1 K5 ["oriY"]
      141 GETUPVAL                         R6 0
      142 SETTABLEKS                       R6 R1 K14 ["orientation"]
      144 GETUPVAL                         R6 0
      145 SETTABLEKS                       R6 R1 K7 ["value"]
      147 GETTABLEKS                       R6 R1 K6 ["oriZ"]
      149 GETTABLEKS                       R6 R6 K1 ["multiple"]
      151 JUMPIF                           R6 ; [+15]
      152 GETTABLEKS                       R6 R1 K6 ["oriZ"]
      154 GETTABLEKS                       R6 R6 K7 ["value"]
      156 JUMPIFEQ                         R6 R5 ; [+10]
      158 GETUPVAL                         R6 0
      159 SETTABLEKS                       R6 R1 K6 ["oriZ"]
      161 GETUPVAL                         R6 0
      162 SETTABLEKS                       R6 R1 K14 ["orientation"]
      164 GETUPVAL                         R6 0
      165 SETTABLEKS                       R6 R1 K7 ["value"]
      167 GETTABLEKS                       R6 R1 K0 ["posX"]
      169 GETTABLEKS                       R6 R6 K1 ["multiple"]
      171 JUMPIFNOT                        R6 ; [+24]
      172 GETTABLEKS                       R6 R1 K2 ["posY"]
      174 GETTABLEKS                       R6 R6 K1 ["multiple"]
      176 JUMPIFNOT                        R6 ; [+19]
      177 GETTABLEKS                       R6 R1 K3 ["posZ"]
      179 GETTABLEKS                       R6 R6 K1 ["multiple"]
      181 JUMPIFNOT                        R6 ; [+14]
      182 GETTABLEKS                       R6 R1 K4 ["oriX"]
      184 GETTABLEKS                       R6 R6 K1 ["multiple"]
      186 JUMPIFNOT                        R6 ; [+9]
      187 GETTABLEKS                       R6 R1 K5 ["oriY"]
      189 GETTABLEKS                       R6 R6 K1 ["multiple"]
      191 JUMPIFNOT                        R6 ; [+4]
      192 GETTABLEKS                       R6 R1 K6 ["oriZ"]
      194 GETTABLEKS                       R6 R6 K1 ["multiple"]
      196 RETURN                           R6 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R4 K0 ["posX"] ; [+35]
        2 FASTCALL1                        TYPEOF R5 ; [+3]
        3 MOVE                             R9 R5
        4 GETIMPORT                        R8 K2 [typeof]
        6 CALL                             R8 1 1
        7 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
        9 LOADB                            R7 0 +1
       10 LOADB                            R7 1
       11 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       13 LOADK                            R8 K4 ["CFrame Aggregator: posX must be a number"]
       14 GETIMPORT                        R6 K6 [assert]
       16 CALL                             R6 2 0
       17 MOVE                             R8 R2
       18 MOVE                             R6 R3
       19 LOADN                            R7 1
       20 FORNPREP                         R6
       21 GETTABLE                         R9 R1 R8
       22 GETIMPORT                        R11 K9 [CFrame.new]
       24 MOVE                             R12 R5
       25 GETTABLEKS                       R13 R9 K10 ["Y"]
       27 GETTABLEKS                       R14 R9 K11 ["Z"]
       29 CALL                             R11 3 1
       30 GETTABLEKS                       R12 R9 K12 ["Rotation"]
       32 MUL                              R10 R11 R12
       33 SETTABLE                         R10 R1 R8
       34 FORNLOOP                         R6
       35 JUMP                             ; [+287]
       36 JUMPIFNOTEQKS                    R4 K13 ["posY"] ; [+35]
       38 FASTCALL1                        TYPEOF R5 ; [+3]
       39 MOVE                             R9 R5
       40 GETIMPORT                        R8 K2 [typeof]
       42 CALL                             R8 1 1
       43 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 FASTCALL2K                       ASSERT R7 K14 ; [+4]
       49 LOADK                            R8 K14 ["CFrame Aggregator: posY must be a number"]
       50 GETIMPORT                        R6 K6 [assert]
       52 CALL                             R6 2 0
       53 MOVE                             R8 R2
       54 MOVE                             R6 R3
       55 LOADN                            R7 1
       56 FORNPREP                         R6
       57 GETTABLE                         R9 R1 R8
       58 GETIMPORT                        R11 K9 [CFrame.new]
       60 GETTABLEKS                       R12 R9 K15 ["X"]
       62 MOVE                             R13 R5
       63 GETTABLEKS                       R14 R9 K11 ["Z"]
       65 CALL                             R11 3 1
       66 GETTABLEKS                       R12 R9 K12 ["Rotation"]
       68 MUL                              R10 R11 R12
       69 SETTABLE                         R10 R1 R8
       70 FORNLOOP                         R6
       71 JUMP                             ; [+251]
       72 JUMPIFNOTEQKS                    R4 K16 ["posZ"] ; [+35]
       74 FASTCALL1                        TYPEOF R5 ; [+3]
       75 MOVE                             R9 R5
       76 GETIMPORT                        R8 K2 [typeof]
       78 CALL                             R8 1 1
       79 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
       81 LOADB                            R7 0 +1
       82 LOADB                            R7 1
       83 FASTCALL2K                       ASSERT R7 K17 ; [+4]
       85 LOADK                            R8 K17 ["CFrame Aggregator: posZ must be a number"]
       86 GETIMPORT                        R6 K6 [assert]
       88 CALL                             R6 2 0
       89 MOVE                             R8 R2
       90 MOVE                             R6 R3
       91 LOADN                            R7 1
       92 FORNPREP                         R6
       93 GETTABLE                         R9 R1 R8
       94 GETIMPORT                        R11 K9 [CFrame.new]
       96 GETTABLEKS                       R12 R9 K15 ["X"]
       98 GETTABLEKS                       R13 R9 K10 ["Y"]
      100 MOVE                             R14 R5
      101 CALL                             R11 3 1
      102 GETTABLEKS                       R12 R9 K12 ["Rotation"]
      104 MUL                              R10 R11 R12
      105 SETTABLE                         R10 R1 R8
      106 FORNLOOP                         R6
      107 JUMP                             ; [+215]
      108 JUMPIFNOTEQKS                    R4 K18 ["oriX"] ; [+39]
      110 FASTCALL1                        TYPEOF R5 ; [+3]
      111 MOVE                             R9 R5
      112 GETIMPORT                        R8 K2 [typeof]
      114 CALL                             R8 1 1
      115 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
      117 LOADB                            R7 0 +1
      118 LOADB                            R7 1
      119 FASTCALL2K                       ASSERT R7 K19 ; [+4]
      121 LOADK                            R8 K19 ["CFrame Aggregator: oriX must be a number"]
      122 GETIMPORT                        R6 K6 [assert]
      124 CALL                             R6 2 0
      125 MOVE                             R8 R2
      126 MOVE                             R6 R3
      127 LOADN                            R7 1
      128 FORNPREP                         R6
      129 GETTABLE                         R9 R1 R8
      130 NAMECALL                         R10 R9 K20 ["ToOrientation"]
      132 CALL                             R10 1 3
      133 GETIMPORT                        R14 K9 [CFrame.new]
      135 GETTABLEKS                       R15 R9 K21 ["Position"]
      137 CALL                             R14 1 1
      138 GETIMPORT                        R15 K23 [CFrame.fromOrientation]
      140 MOVE                             R16 R5
      141 MOVE                             R17 R11
      142 MOVE                             R18 R12
      143 CALL                             R15 3 1
      144 MUL                              R13 R14 R15
      145 SETTABLE                         R13 R1 R8
      146 FORNLOOP                         R6
      147 JUMP                             ; [+175]
      148 JUMPIFNOTEQKS                    R4 K24 ["oriY"] ; [+39]
      150 FASTCALL1                        TYPEOF R5 ; [+3]
      151 MOVE                             R9 R5
      152 GETIMPORT                        R8 K2 [typeof]
      154 CALL                             R8 1 1
      155 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
      157 LOADB                            R7 0 +1
      158 LOADB                            R7 1
      159 FASTCALL2K                       ASSERT R7 K25 ; [+4]
      161 LOADK                            R8 K25 ["CFrame Aggregator: oriY must be a number"]
      162 GETIMPORT                        R6 K6 [assert]
      164 CALL                             R6 2 0
      165 MOVE                             R8 R2
      166 MOVE                             R6 R3
      167 LOADN                            R7 1
      168 FORNPREP                         R6
      169 GETTABLE                         R9 R1 R8
      170 NAMECALL                         R10 R9 K20 ["ToOrientation"]
      172 CALL                             R10 1 3
      173 GETIMPORT                        R14 K9 [CFrame.new]
      175 GETTABLEKS                       R15 R9 K21 ["Position"]
      177 CALL                             R14 1 1
      178 GETIMPORT                        R15 K23 [CFrame.fromOrientation]
      180 MOVE                             R16 R10
      181 MOVE                             R17 R5
      182 MOVE                             R18 R12
      183 CALL                             R15 3 1
      184 MUL                              R13 R14 R15
      185 SETTABLE                         R13 R1 R8
      186 FORNLOOP                         R6
      187 JUMP                             ; [+135]
      188 JUMPIFNOTEQKS                    R4 K26 ["oriZ"] ; [+39]
      190 FASTCALL1                        TYPEOF R5 ; [+3]
      191 MOVE                             R9 R5
      192 GETIMPORT                        R8 K2 [typeof]
      194 CALL                             R8 1 1
      195 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
      197 LOADB                            R7 0 +1
      198 LOADB                            R7 1
      199 FASTCALL2K                       ASSERT R7 K27 ; [+4]
      201 LOADK                            R8 K27 ["CFrame Aggregator: oriZ must be a number"]
      202 GETIMPORT                        R6 K6 [assert]
      204 CALL                             R6 2 0
      205 MOVE                             R8 R2
      206 MOVE                             R6 R3
      207 LOADN                            R7 1
      208 FORNPREP                         R6
      209 GETTABLE                         R9 R1 R8
      210 NAMECALL                         R10 R9 K20 ["ToOrientation"]
      212 CALL                             R10 1 3
      213 GETIMPORT                        R14 K9 [CFrame.new]
      215 GETTABLEKS                       R15 R9 K21 ["Position"]
      217 CALL                             R14 1 1
      218 GETIMPORT                        R15 K23 [CFrame.fromOrientation]
      220 MOVE                             R16 R10
      221 MOVE                             R17 R11
      222 MOVE                             R18 R5
      223 CALL                             R15 3 1
      224 MUL                              R13 R14 R15
      225 SETTABLE                         R13 R1 R8
      226 FORNLOOP                         R6
      227 JUMP                             ; [+95]
      228 JUMPIFNOTEQKS                    R4 K28 ["position"] ; [+31]
      230 FASTCALL1                        TYPEOF R5 ; [+3]
      231 MOVE                             R9 R5
      232 GETIMPORT                        R8 K2 [typeof]
      234 CALL                             R8 1 1
      235 JUMPIFEQKS                       R8 K29 ["Vector3"] ; [+2]
      237 LOADB                            R7 0 +1
      238 LOADB                            R7 1
      239 FASTCALL2K                       ASSERT R7 K30 ; [+4]
      241 LOADK                            R8 K30 ["CFrame Aggregator: position must be a Vector3"]
      242 GETIMPORT                        R6 K6 [assert]
      244 CALL                             R6 2 0
      245 MOVE                             R8 R2
      246 MOVE                             R6 R3
      247 LOADN                            R7 1
      248 FORNPREP                         R6
      249 GETTABLE                         R9 R1 R8
      250 GETIMPORT                        R11 K9 [CFrame.new]
      252 MOVE                             R12 R5
      253 CALL                             R11 1 1
      254 GETTABLEKS                       R12 R9 K12 ["Rotation"]
      256 MUL                              R10 R11 R12
      257 SETTABLE                         R10 R1 R8
      258 FORNLOOP                         R6
      259 JUMP                             ; [+63]
      260 JUMPIFNOTEQKS                    R4 K31 ["orientation"] ; [+39]
      262 FASTCALL1                        TYPEOF R5 ; [+3]
      263 MOVE                             R9 R5
      264 GETIMPORT                        R8 K2 [typeof]
      266 CALL                             R8 1 1
      267 JUMPIFEQKS                       R8 K29 ["Vector3"] ; [+2]
      269 LOADB                            R7 0 +1
      270 LOADB                            R7 1
      271 FASTCALL2K                       ASSERT R7 K32 ; [+4]
      273 LOADK                            R8 K32 ["CFrame Aggregator: orientation must be a Vector3"]
      274 GETIMPORT                        R6 K6 [assert]
      276 CALL                             R6 2 0
      277 MOVE                             R8 R2
      278 MOVE                             R6 R3
      279 LOADN                            R7 1
      280 FORNPREP                         R6
      281 GETTABLE                         R9 R1 R8
      282 GETIMPORT                        R11 K9 [CFrame.new]
      284 GETTABLEKS                       R12 R9 K21 ["Position"]
      286 CALL                             R11 1 1
      287 GETIMPORT                        R12 K23 [CFrame.fromOrientation]
      289 GETTABLEKS                       R13 R5 K15 ["X"]
      291 GETTABLEKS                       R14 R5 K10 ["Y"]
      293 GETTABLEKS                       R15 R5 K11 ["Z"]
      295 CALL                             R12 3 1
      296 MUL                              R10 R11 R12
      297 SETTABLE                         R10 R1 R8
      298 FORNLOOP                         R6
      299 JUMP                             ; [+23]
      300 JUMPIFNOTEQKS                    R4 K33 ["value"] ; [+22]
      302 FASTCALL1                        TYPEOF R5 ; [+3]
      303 MOVE                             R9 R5
      304 GETIMPORT                        R8 K2 [typeof]
      306 CALL                             R8 1 1
      307 JUMPIFEQKS                       R8 K7 ["CFrame"] ; [+2]
      309 LOADB                            R7 0 +1
      310 LOADB                            R7 1
      311 FASTCALL2K                       ASSERT R7 K34 ; [+4]
      313 LOADK                            R8 K34 ["CFrame Aggregator: value must be a CFrame"]
      314 GETIMPORT                        R6 K6 [assert]
      316 CALL                             R6 2 0
      317 MOVE                             R8 R2
      318 MOVE                             R6 R3
      319 LOADN                            R7 1
      320 FORNPREP                         R6
      321 SETTABLE                         R5 R1 R8
      322 FORNLOOP                         R6
      323 LOADNIL                          R6
      324 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["RpcTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["PropertyInteraction"]
       21 GETTABLEKS                       R4 R4 K9 ["genericMultiplePart"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K8 ["PropertyInteraction"]
       28 GETTABLEKS                       R5 R5 K10 ["getAggregateParts"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K11 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R6 K12 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R7 K13 [PROTO_2]
       36 DUPTABLE                         R8 K17 [{"initParts", "addToAggregation", "setPart"}]
       37 SETTABLEKS                       R5 R8 K14 ["initParts"]
       39 SETTABLEKS                       R6 R8 K15 ["addToAggregation"]
       41 SETTABLEKS                       R7 R8 K16 ["setPart"]
       43 RETURN                           R8 1
