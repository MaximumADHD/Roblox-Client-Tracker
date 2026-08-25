PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NAMECALL                         R2 R0 K1 ["ToOrientation"]
        4 CALL                             R2 1 3
        5 DUPTABLE                         R5 K11 [{"value", "position", "orientation", "posX", "posY", "posZ", "oriX", "oriY", "oriZ"}]
        6 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
        7 SETTABLEKS                       R0 R6 K2 ["value"]
        9 SETTABLEKS                       R6 R5 K2 ["value"]
       11 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       12 SETTABLEKS                       R1 R6 K2 ["value"]
       14 SETTABLEKS                       R6 R5 K3 ["position"]
       16 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       17 FASTCALL3                        VECTOR R2 R3 R4
       19 MOVE                             R8 R2
       20 MOVE                             R9 R3
       21 MOVE                             R10 R4
       22 GETIMPORT                        R7 K17 [Vector3.new]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K2 ["value"]
       27 SETTABLEKS                       R6 R5 K4 ["orientation"]
       29 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       30 GETTABLEKS                       R7 R1 K18 ["X"]
       32 SETTABLEKS                       R7 R6 K2 ["value"]
       34 SETTABLEKS                       R6 R5 K5 ["posX"]
       36 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       37 GETTABLEKS                       R7 R1 K19 ["Y"]
       39 SETTABLEKS                       R7 R6 K2 ["value"]
       41 SETTABLEKS                       R6 R5 K6 ["posY"]
       43 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       44 GETTABLEKS                       R7 R1 K20 ["Z"]
       46 SETTABLEKS                       R7 R6 K2 ["value"]
       48 SETTABLEKS                       R6 R5 K7 ["posZ"]
       50 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       51 FASTCALL1                        MATH_DEG R2 ; [+3]
       52 MOVE                             R8 R2
       53 GETIMPORT                        R7 K23 [math.deg]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K2 ["value"]
       58 SETTABLEKS                       R6 R5 K8 ["oriX"]
       60 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       61 FASTCALL1                        MATH_DEG R3 ; [+3]
       62 MOVE                             R8 R3
       63 GETIMPORT                        R7 K23 [math.deg]
       65 CALL                             R7 1 1
       66 SETTABLEKS                       R7 R6 K2 ["value"]
       68 SETTABLEKS                       R6 R5 K9 ["oriY"]
       70 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       71 FASTCALL1                        MATH_DEG R4 ; [+3]
       72 MOVE                             R8 R4
       73 GETIMPORT                        R7 K23 [math.deg]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K2 ["value"]
       78 SETTABLEKS                       R6 R5 K10 ["oriZ"]
       80 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fromValue"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 SUB                              R4 R0 R1
        1 FASTCALL1                        MATH_ABS R4 ; [+2]
        2 GETIMPORT                        R3 K2 [math.abs]
        4 CALL                             R3 1 1
        5 LOADK                            R4 K3 [0.0001]
        6 JUMPIFLE                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_3:
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
      111 JUMPIF                           R6 ; [+35]
      112 GETTABLEKS                       R6 R1 K4 ["oriX"]
      114 GETTABLEKS                       R6 R6 K7 ["value"]
      116 JUMPIFEQKNIL                     R6 ; [+30]
      118 GETTABLEKS                       R7 R1 K4 ["oriX"]
      120 GETTABLEKS                       R7 R7 K7 ["value"]
      122 FASTCALL1                        MATH_DEG R3 ; [+3]
      123 MOVE                             R9 R3
      124 GETIMPORT                        R8 K16 [math.deg]
      126 CALL                             R8 1 1
      127 SUB                              R10 R7 R8
      128 FASTCALL1                        MATH_ABS R10 ; [+2]
      129 GETIMPORT                        R9 K18 [math.abs]
      131 CALL                             R9 1 1
      132 LOADK                            R10 K19 [0.0001]
      133 JUMPIFLE                         R9 R10 ; [+2]
      135 LOADB                            R6 0 +1
      136 LOADB                            R6 1
      137 JUMPIF                           R6 ; [+9]
      138 GETUPVAL                         R6 0
      139 SETTABLEKS                       R6 R1 K4 ["oriX"]
      141 GETUPVAL                         R6 0
      142 SETTABLEKS                       R6 R1 K20 ["orientation"]
      144 GETUPVAL                         R6 0
      145 SETTABLEKS                       R6 R1 K7 ["value"]
      147 GETTABLEKS                       R6 R1 K5 ["oriY"]
      149 GETTABLEKS                       R6 R6 K1 ["multiple"]
      151 JUMPIF                           R6 ; [+35]
      152 GETTABLEKS                       R6 R1 K5 ["oriY"]
      154 GETTABLEKS                       R6 R6 K7 ["value"]
      156 JUMPIFEQKNIL                     R6 ; [+30]
      158 GETTABLEKS                       R7 R1 K5 ["oriY"]
      160 GETTABLEKS                       R7 R7 K7 ["value"]
      162 FASTCALL1                        MATH_DEG R4 ; [+3]
      163 MOVE                             R9 R4
      164 GETIMPORT                        R8 K16 [math.deg]
      166 CALL                             R8 1 1
      167 SUB                              R10 R7 R8
      168 FASTCALL1                        MATH_ABS R10 ; [+2]
      169 GETIMPORT                        R9 K18 [math.abs]
      171 CALL                             R9 1 1
      172 LOADK                            R10 K19 [0.0001]
      173 JUMPIFLE                         R9 R10 ; [+2]
      175 LOADB                            R6 0 +1
      176 LOADB                            R6 1
      177 JUMPIF                           R6 ; [+9]
      178 GETUPVAL                         R6 0
      179 SETTABLEKS                       R6 R1 K5 ["oriY"]
      181 GETUPVAL                         R6 0
      182 SETTABLEKS                       R6 R1 K20 ["orientation"]
      184 GETUPVAL                         R6 0
      185 SETTABLEKS                       R6 R1 K7 ["value"]
      187 GETTABLEKS                       R6 R1 K6 ["oriZ"]
      189 GETTABLEKS                       R6 R6 K1 ["multiple"]
      191 JUMPIF                           R6 ; [+35]
      192 GETTABLEKS                       R6 R1 K6 ["oriZ"]
      194 GETTABLEKS                       R6 R6 K7 ["value"]
      196 JUMPIFEQKNIL                     R6 ; [+30]
      198 GETTABLEKS                       R7 R1 K6 ["oriZ"]
      200 GETTABLEKS                       R7 R7 K7 ["value"]
      202 FASTCALL1                        MATH_DEG R5 ; [+3]
      203 MOVE                             R9 R5
      204 GETIMPORT                        R8 K16 [math.deg]
      206 CALL                             R8 1 1
      207 SUB                              R10 R7 R8
      208 FASTCALL1                        MATH_ABS R10 ; [+2]
      209 GETIMPORT                        R9 K18 [math.abs]
      211 CALL                             R9 1 1
      212 LOADK                            R10 K19 [0.0001]
      213 JUMPIFLE                         R9 R10 ; [+2]
      215 LOADB                            R6 0 +1
      216 LOADB                            R6 1
      217 JUMPIF                           R6 ; [+9]
      218 GETUPVAL                         R6 0
      219 SETTABLEKS                       R6 R1 K6 ["oriZ"]
      221 GETUPVAL                         R6 0
      222 SETTABLEKS                       R6 R1 K20 ["orientation"]
      224 GETUPVAL                         R6 0
      225 SETTABLEKS                       R6 R1 K7 ["value"]
      227 GETTABLEKS                       R6 R1 K0 ["posX"]
      229 GETTABLEKS                       R6 R6 K1 ["multiple"]
      231 JUMPIFNOT                        R6 ; [+24]
      232 GETTABLEKS                       R6 R1 K2 ["posY"]
      234 GETTABLEKS                       R6 R6 K1 ["multiple"]
      236 JUMPIFNOT                        R6 ; [+19]
      237 GETTABLEKS                       R6 R1 K3 ["posZ"]
      239 GETTABLEKS                       R6 R6 K1 ["multiple"]
      241 JUMPIFNOT                        R6 ; [+14]
      242 GETTABLEKS                       R6 R1 K4 ["oriX"]
      244 GETTABLEKS                       R6 R6 K1 ["multiple"]
      246 JUMPIFNOT                        R6 ; [+9]
      247 GETTABLEKS                       R6 R1 K5 ["oriY"]
      249 GETTABLEKS                       R6 R6 K1 ["multiple"]
      251 JUMPIFNOT                        R6 ; [+4]
      252 GETTABLEKS                       R6 R1 K6 ["oriZ"]
      254 GETTABLEKS                       R6 R6 K1 ["multiple"]
      256 RETURN                           R6 1

PROTO_4:
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
       35 JUMP                             ; [+311]
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
       71 JUMP                             ; [+275]
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
      107 JUMP                             ; [+239]
      108 JUMPIFNOTEQKS                    R4 K18 ["oriX"] ; [+43]
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
      140 FASTCALL1                        MATH_RAD R5 ; [+3]
      141 MOVE                             R17 R5
      142 GETIMPORT                        R16 K26 [math.rad]
      144 CALL                             R16 1 1
      145 MOVE                             R17 R11
      146 MOVE                             R18 R12
      147 CALL                             R15 3 1
      148 MUL                              R13 R14 R15
      149 SETTABLE                         R13 R1 R8
      150 FORNLOOP                         R6
      151 JUMP                             ; [+195]
      152 JUMPIFNOTEQKS                    R4 K27 ["oriY"] ; [+43]
      154 FASTCALL1                        TYPEOF R5 ; [+3]
      155 MOVE                             R9 R5
      156 GETIMPORT                        R8 K2 [typeof]
      158 CALL                             R8 1 1
      159 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
      161 LOADB                            R7 0 +1
      162 LOADB                            R7 1
      163 FASTCALL2K                       ASSERT R7 K28 ; [+4]
      165 LOADK                            R8 K28 ["CFrame Aggregator: oriY must be a number"]
      166 GETIMPORT                        R6 K6 [assert]
      168 CALL                             R6 2 0
      169 MOVE                             R8 R2
      170 MOVE                             R6 R3
      171 LOADN                            R7 1
      172 FORNPREP                         R6
      173 GETTABLE                         R9 R1 R8
      174 NAMECALL                         R10 R9 K20 ["ToOrientation"]
      176 CALL                             R10 1 3
      177 GETIMPORT                        R14 K9 [CFrame.new]
      179 GETTABLEKS                       R15 R9 K21 ["Position"]
      181 CALL                             R14 1 1
      182 GETIMPORT                        R15 K23 [CFrame.fromOrientation]
      184 MOVE                             R16 R10
      185 FASTCALL1                        MATH_RAD R5 ; [+3]
      186 MOVE                             R18 R5
      187 GETIMPORT                        R17 K26 [math.rad]
      189 CALL                             R17 1 1
      190 MOVE                             R18 R12
      191 CALL                             R15 3 1
      192 MUL                              R13 R14 R15
      193 SETTABLE                         R13 R1 R8
      194 FORNLOOP                         R6
      195 JUMP                             ; [+151]
      196 JUMPIFNOTEQKS                    R4 K29 ["oriZ"] ; [+43]
      198 FASTCALL1                        TYPEOF R5 ; [+3]
      199 MOVE                             R9 R5
      200 GETIMPORT                        R8 K2 [typeof]
      202 CALL                             R8 1 1
      203 JUMPIFEQKS                       R8 K3 ["number"] ; [+2]
      205 LOADB                            R7 0 +1
      206 LOADB                            R7 1
      207 FASTCALL2K                       ASSERT R7 K30 ; [+4]
      209 LOADK                            R8 K30 ["CFrame Aggregator: oriZ must be a number"]
      210 GETIMPORT                        R6 K6 [assert]
      212 CALL                             R6 2 0
      213 MOVE                             R8 R2
      214 MOVE                             R6 R3
      215 LOADN                            R7 1
      216 FORNPREP                         R6
      217 GETTABLE                         R9 R1 R8
      218 NAMECALL                         R10 R9 K20 ["ToOrientation"]
      220 CALL                             R10 1 3
      221 GETIMPORT                        R14 K9 [CFrame.new]
      223 GETTABLEKS                       R15 R9 K21 ["Position"]
      225 CALL                             R14 1 1
      226 GETIMPORT                        R15 K23 [CFrame.fromOrientation]
      228 MOVE                             R16 R10
      229 MOVE                             R17 R11
      230 FASTCALL1                        MATH_RAD R5 ; [+3]
      231 MOVE                             R19 R5
      232 GETIMPORT                        R18 K26 [math.rad]
      234 CALL                             R18 1 1
      235 CALL                             R15 3 1
      236 MUL                              R13 R14 R15
      237 SETTABLE                         R13 R1 R8
      238 FORNLOOP                         R6
      239 JUMP                             ; [+107]
      240 JUMPIFNOTEQKS                    R4 K31 ["position"] ; [+31]
      242 FASTCALL1                        TYPEOF R5 ; [+3]
      243 MOVE                             R9 R5
      244 GETIMPORT                        R8 K2 [typeof]
      246 CALL                             R8 1 1
      247 JUMPIFEQKS                       R8 K32 ["Vector3"] ; [+2]
      249 LOADB                            R7 0 +1
      250 LOADB                            R7 1
      251 FASTCALL2K                       ASSERT R7 K33 ; [+4]
      253 LOADK                            R8 K33 ["CFrame Aggregator: position must be a Vector3"]
      254 GETIMPORT                        R6 K6 [assert]
      256 CALL                             R6 2 0
      257 MOVE                             R8 R2
      258 MOVE                             R6 R3
      259 LOADN                            R7 1
      260 FORNPREP                         R6
      261 GETTABLE                         R9 R1 R8
      262 GETIMPORT                        R11 K9 [CFrame.new]
      264 MOVE                             R12 R5
      265 CALL                             R11 1 1
      266 GETTABLEKS                       R12 R9 K12 ["Rotation"]
      268 MUL                              R10 R11 R12
      269 SETTABLE                         R10 R1 R8
      270 FORNLOOP                         R6
      271 JUMP                             ; [+75]
      272 JUMPIFNOTEQKS                    R4 K34 ["orientation"] ; [+51]
      274 FASTCALL1                        TYPEOF R5 ; [+3]
      275 MOVE                             R9 R5
      276 GETIMPORT                        R8 K2 [typeof]
      278 CALL                             R8 1 1
      279 JUMPIFEQKS                       R8 K32 ["Vector3"] ; [+2]
      281 LOADB                            R7 0 +1
      282 LOADB                            R7 1
      283 FASTCALL2K                       ASSERT R7 K35 ; [+4]
      285 LOADK                            R8 K35 ["CFrame Aggregator: orientation must be a Vector3"]
      286 GETIMPORT                        R6 K6 [assert]
      288 CALL                             R6 2 0
      289 MOVE                             R8 R2
      290 MOVE                             R6 R3
      291 LOADN                            R7 1
      292 FORNPREP                         R6
      293 GETTABLE                         R9 R1 R8
      294 GETIMPORT                        R11 K9 [CFrame.new]
      296 GETTABLEKS                       R12 R9 K21 ["Position"]
      298 CALL                             R11 1 1
      299 GETIMPORT                        R12 K23 [CFrame.fromOrientation]
      301 GETTABLEKS                       R14 R5 K15 ["X"]
      303 FASTCALL1                        MATH_RAD R14 ; [+2]
      304 GETIMPORT                        R13 K26 [math.rad]
      306 CALL                             R13 1 1
      307 GETTABLEKS                       R15 R5 K10 ["Y"]
      309 FASTCALL1                        MATH_RAD R15 ; [+2]
      310 GETIMPORT                        R14 K26 [math.rad]
      312 CALL                             R14 1 1
      313 GETTABLEKS                       R16 R5 K11 ["Z"]
      315 FASTCALL1                        MATH_RAD R16 ; [+2]
      316 GETIMPORT                        R15 K26 [math.rad]
      318 CALL                             R15 1 1
      319 CALL                             R12 3 1
      320 MUL                              R10 R11 R12
      321 SETTABLE                         R10 R1 R8
      322 FORNLOOP                         R6
      323 JUMP                             ; [+23]
      324 JUMPIFNOTEQKS                    R4 K36 ["value"] ; [+22]
      326 FASTCALL1                        TYPEOF R5 ; [+3]
      327 MOVE                             R9 R5
      328 GETIMPORT                        R8 K2 [typeof]
      330 CALL                             R8 1 1
      331 JUMPIFEQKS                       R8 K7 ["CFrame"] ; [+2]
      333 LOADB                            R7 0 +1
      334 LOADB                            R7 1
      335 FASTCALL2K                       ASSERT R7 K37 ; [+4]
      337 LOADK                            R8 K37 ["CFrame Aggregator: value must be a CFrame"]
      338 GETIMPORT                        R6 K6 [assert]
      340 CALL                             R6 2 0
      341 MOVE                             R8 R2
      342 MOVE                             R6 R3
      343 LOADN                            R7 1
      344 FORNPREP                         R6
      345 SETTABLE                         R5 R1 R8
      346 FORNLOOP                         R6
      347 LOADNIL                          R6
      348 RETURN                           R6 1

PROTO_5:
        0 JUMPIFEQKS                       R0 K0 ["position"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["orientation"] ; [+6]
        4 GETUPVAL                         R3 0
        5 LOADK                            R4 K2 ["value"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1
        9 JUMPIFNOTEQKS                    R0 K2 ["value"] ; [+6]
       11 GETIMPORT                        R3 K4 [error]
       13 LOADK                            R4 K5 ["Should be unreachable, position/value are always separate"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 GETTABLEN                        R3 R1 1
       17 FASTCALL1                        TYPEOF R3 ; [+3]
       18 MOVE                             R5 R3
       19 GETIMPORT                        R4 K7 [typeof]
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQKS                    R4 K8 ["number"] ; [+5]
       24 DUPTABLE                         R4 K11 [{["type"] = "ok", ["value"]}]
       25 SETTABLEKS                       R3 R4 K2 ["value"]
       27 RETURN                           R4 1
       28 DUPTABLE                         R4 K13 [{["type"] = "error", ["warning"]}]
       29 DUPTABLE                         R5 K17 [{["type"] = "expressionWrongType", ["expected"] = "number", ["received"]}]
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R7 R3
       32 GETIMPORT                        R6 K7 [typeof]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K16 ["received"]
       37 SETTABLEKS                       R5 R4 K12 ["warning"]
       39 RETURN                           R4 1
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["getAggregateParts"]
       13 GETTABLEKS                       R2 R2 K8 ["AggregatePartsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["CapturableWarnings"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PropertyTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["PropertyInteraction"]
       37 GETTABLEKS                       R6 R6 K13 ["genericMultiplePart"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Guest"]
       44 GETTABLEKS                       R7 R7 K14 ["getValueAggregator"]
       46 GETTABLEKS                       R7 R7 K15 ["Util"]
       48 GETTABLEKS                       R7 R7 K16 ["parseVector3ExpressionResults"]
       50 CALL                             R6 1 1
       51 DUPTABLE                         R7 K19 [{"fromValue", "allMultiple"}]
       52 DUPCLOSURE                       R8 K20 [PROTO_0]
       53 SETTABLEKS                       R8 R7 K17 ["fromValue"]
       55 DUPTABLE                         R8 K30 [{"value", "position", "posX", "posY", "posZ", "orientation", "oriX", "oriY", "oriZ"}]
       56 SETTABLEKS                       R5 R8 K21 ["value"]
       58 SETTABLEKS                       R5 R8 K22 ["position"]
       60 SETTABLEKS                       R5 R8 K23 ["posX"]
       62 SETTABLEKS                       R5 R8 K24 ["posY"]
       64 SETTABLEKS                       R5 R8 K25 ["posZ"]
       66 SETTABLEKS                       R5 R8 K26 ["orientation"]
       68 SETTABLEKS                       R5 R8 K27 ["oriX"]
       70 SETTABLEKS                       R5 R8 K28 ["oriY"]
       72 SETTABLEKS                       R5 R8 K29 ["oriZ"]
       74 SETTABLEKS                       R8 R7 K18 ["allMultiple"]
       76 DUPCLOSURE                       R8 K31 [PROTO_1]
       77 CAPTURE                          VAL R7
       78 DUPCLOSURE                       R9 K32 [PROTO_2]
       79 DUPCLOSURE                       R10 K33 [PROTO_3]
       80 CAPTURE                          VAL R5
       81 DUPCLOSURE                       R11 K34 [PROTO_4]
       82 DUPCLOSURE                       R12 K35 [PROTO_5]
       83 CAPTURE                          VAL R6
       84 DUPTABLE                         R13 K41 [{"initParts", "addToAggregation", "setPart", "parsePartFromExpressionResults", "aggregateParts"}]
       85 SETTABLEKS                       R8 R13 K36 ["initParts"]
       87 SETTABLEKS                       R10 R13 K37 ["addToAggregation"]
       89 SETTABLEKS                       R11 R13 K38 ["setPart"]
       91 SETTABLEKS                       R12 R13 K39 ["parsePartFromExpressionResults"]
       93 SETTABLEKS                       R7 R13 K40 ["aggregateParts"]
       95 RETURN                           R13 1
