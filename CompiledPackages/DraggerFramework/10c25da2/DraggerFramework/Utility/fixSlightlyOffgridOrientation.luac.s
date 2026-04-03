PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 LOADB                            R13 0
        4 FASTCALL1                        MATH_ABS R4 ; [+3]
        5 MOVE                             R15 R4
        6 GETIMPORT                        R14 K3 [math.abs]
        8 CALL                             R14 1 1
        9 LOADK                            R15 K4 [1E-05]
       10 JUMPIFNOTLT                      R14 R15 ; [+5]
       12 JUMPIFEQKN                       R4 K5 [0] ; [+3]
       14 LOADN                            R4 0
       15 LOADB                            R13 1
       16 FASTCALL1                        MATH_ABS R5 ; [+3]
       17 MOVE                             R15 R5
       18 GETIMPORT                        R14 K3 [math.abs]
       20 CALL                             R14 1 1
       21 LOADK                            R15 K4 [1E-05]
       22 JUMPIFNOTLT                      R14 R15 ; [+5]
       24 JUMPIFEQKN                       R5 K5 [0] ; [+3]
       26 LOADN                            R5 0
       27 LOADB                            R13 1
       28 FASTCALL1                        MATH_ABS R6 ; [+3]
       29 MOVE                             R15 R6
       30 GETIMPORT                        R14 K3 [math.abs]
       32 CALL                             R14 1 1
       33 LOADK                            R15 K4 [1E-05]
       34 JUMPIFNOTLT                      R14 R15 ; [+5]
       36 JUMPIFEQKN                       R6 K5 [0] ; [+3]
       38 LOADN                            R6 0
       39 LOADB                            R13 1
       40 FASTCALL1                        MATH_ABS R7 ; [+3]
       41 MOVE                             R15 R7
       42 GETIMPORT                        R14 K3 [math.abs]
       44 CALL                             R14 1 1
       45 LOADK                            R15 K4 [1E-05]
       46 JUMPIFNOTLT                      R14 R15 ; [+5]
       48 JUMPIFEQKN                       R7 K5 [0] ; [+3]
       50 LOADN                            R7 0
       51 LOADB                            R13 1
       52 FASTCALL1                        MATH_ABS R8 ; [+3]
       53 MOVE                             R15 R8
       54 GETIMPORT                        R14 K3 [math.abs]
       56 CALL                             R14 1 1
       57 LOADK                            R15 K4 [1E-05]
       58 JUMPIFNOTLT                      R14 R15 ; [+5]
       60 JUMPIFEQKN                       R8 K5 [0] ; [+3]
       62 LOADN                            R8 0
       63 LOADB                            R13 1
       64 FASTCALL1                        MATH_ABS R9 ; [+3]
       65 MOVE                             R15 R9
       66 GETIMPORT                        R14 K3 [math.abs]
       68 CALL                             R14 1 1
       69 LOADK                            R15 K4 [1E-05]
       70 JUMPIFNOTLT                      R14 R15 ; [+5]
       72 JUMPIFEQKN                       R9 K5 [0] ; [+3]
       74 LOADN                            R9 0
       75 LOADB                            R13 1
       76 FASTCALL1                        MATH_ABS R10 ; [+3]
       77 MOVE                             R15 R10
       78 GETIMPORT                        R14 K3 [math.abs]
       80 CALL                             R14 1 1
       81 LOADK                            R15 K4 [1E-05]
       82 JUMPIFNOTLT                      R14 R15 ; [+5]
       84 JUMPIFEQKN                       R10 K5 [0] ; [+3]
       86 LOADN                            R10 0
       87 LOADB                            R13 1
       88 FASTCALL1                        MATH_ABS R11 ; [+3]
       89 MOVE                             R15 R11
       90 GETIMPORT                        R14 K3 [math.abs]
       92 CALL                             R14 1 1
       93 LOADK                            R15 K4 [1E-05]
       94 JUMPIFNOTLT                      R14 R15 ; [+5]
       96 JUMPIFEQKN                       R11 K5 [0] ; [+3]
       98 LOADN                            R11 0
       99 LOADB                            R13 1
      100 FASTCALL1                        MATH_ABS R12 ; [+3]
      101 MOVE                             R15 R12
      102 GETIMPORT                        R14 K3 [math.abs]
      104 CALL                             R14 1 1
      105 LOADK                            R15 K4 [1E-05]
      106 JUMPIFNOTLT                      R14 R15 ; [+5]
      108 JUMPIFEQKN                       R12 K5 [0] ; [+3]
      110 LOADN                            R12 0
      111 LOADB                            R13 1
      112 JUMPIFNOT                        R13 ; [+187]
      113 SUBK                             R15 R4 K6 [1]
      114 FASTCALL1                        MATH_ABS R15 ; [+2]
      115 GETIMPORT                        R14 K3 [math.abs]
      117 CALL                             R14 1 1
      118 LOADK                            R15 K4 [1E-05]
      119 JUMPIFNOTLT                      R14 R15 ; [+3]
      121 LOADN                            R4 1
      122 JUMP                             ; [+9]
      123 ADDK                             R15 R4 K6 [1]
      124 FASTCALL1                        MATH_ABS R15 ; [+2]
      125 GETIMPORT                        R14 K3 [math.abs]
      127 CALL                             R14 1 1
      128 LOADK                            R15 K4 [1E-05]
      129 JUMPIFNOTLT                      R14 R15 ; [+2]
      131 LOADN                            R4 255
      132 SUBK                             R15 R5 K6 [1]
      133 FASTCALL1                        MATH_ABS R15 ; [+2]
      134 GETIMPORT                        R14 K3 [math.abs]
      136 CALL                             R14 1 1
      137 LOADK                            R15 K4 [1E-05]
      138 JUMPIFNOTLT                      R14 R15 ; [+3]
      140 LOADN                            R5 1
      141 JUMP                             ; [+9]
      142 ADDK                             R15 R5 K6 [1]
      143 FASTCALL1                        MATH_ABS R15 ; [+2]
      144 GETIMPORT                        R14 K3 [math.abs]
      146 CALL                             R14 1 1
      147 LOADK                            R15 K4 [1E-05]
      148 JUMPIFNOTLT                      R14 R15 ; [+2]
      150 LOADN                            R5 255
      151 SUBK                             R15 R6 K6 [1]
      152 FASTCALL1                        MATH_ABS R15 ; [+2]
      153 GETIMPORT                        R14 K3 [math.abs]
      155 CALL                             R14 1 1
      156 LOADK                            R15 K4 [1E-05]
      157 JUMPIFNOTLT                      R14 R15 ; [+3]
      159 LOADN                            R6 1
      160 JUMP                             ; [+9]
      161 ADDK                             R15 R6 K6 [1]
      162 FASTCALL1                        MATH_ABS R15 ; [+2]
      163 GETIMPORT                        R14 K3 [math.abs]
      165 CALL                             R14 1 1
      166 LOADK                            R15 K4 [1E-05]
      167 JUMPIFNOTLT                      R14 R15 ; [+2]
      169 LOADN                            R6 255
      170 SUBK                             R15 R7 K6 [1]
      171 FASTCALL1                        MATH_ABS R15 ; [+2]
      172 GETIMPORT                        R14 K3 [math.abs]
      174 CALL                             R14 1 1
      175 LOADK                            R15 K4 [1E-05]
      176 JUMPIFNOTLT                      R14 R15 ; [+3]
      178 LOADN                            R7 1
      179 JUMP                             ; [+9]
      180 ADDK                             R15 R7 K6 [1]
      181 FASTCALL1                        MATH_ABS R15 ; [+2]
      182 GETIMPORT                        R14 K3 [math.abs]
      184 CALL                             R14 1 1
      185 LOADK                            R15 K4 [1E-05]
      186 JUMPIFNOTLT                      R14 R15 ; [+2]
      188 LOADN                            R7 255
      189 SUBK                             R15 R8 K6 [1]
      190 FASTCALL1                        MATH_ABS R15 ; [+2]
      191 GETIMPORT                        R14 K3 [math.abs]
      193 CALL                             R14 1 1
      194 LOADK                            R15 K4 [1E-05]
      195 JUMPIFNOTLT                      R14 R15 ; [+3]
      197 LOADN                            R8 1
      198 JUMP                             ; [+9]
      199 ADDK                             R15 R8 K6 [1]
      200 FASTCALL1                        MATH_ABS R15 ; [+2]
      201 GETIMPORT                        R14 K3 [math.abs]
      203 CALL                             R14 1 1
      204 LOADK                            R15 K4 [1E-05]
      205 JUMPIFNOTLT                      R14 R15 ; [+2]
      207 LOADN                            R8 255
      208 SUBK                             R15 R9 K6 [1]
      209 FASTCALL1                        MATH_ABS R15 ; [+2]
      210 GETIMPORT                        R14 K3 [math.abs]
      212 CALL                             R14 1 1
      213 LOADK                            R15 K4 [1E-05]
      214 JUMPIFNOTLT                      R14 R15 ; [+3]
      216 LOADN                            R9 1
      217 JUMP                             ; [+9]
      218 ADDK                             R15 R9 K6 [1]
      219 FASTCALL1                        MATH_ABS R15 ; [+2]
      220 GETIMPORT                        R14 K3 [math.abs]
      222 CALL                             R14 1 1
      223 LOADK                            R15 K4 [1E-05]
      224 JUMPIFNOTLT                      R14 R15 ; [+2]
      226 LOADN                            R9 255
      227 SUBK                             R15 R10 K6 [1]
      228 FASTCALL1                        MATH_ABS R15 ; [+2]
      229 GETIMPORT                        R14 K3 [math.abs]
      231 CALL                             R14 1 1
      232 LOADK                            R15 K4 [1E-05]
      233 JUMPIFNOTLT                      R14 R15 ; [+3]
      235 LOADN                            R10 1
      236 JUMP                             ; [+9]
      237 ADDK                             R15 R10 K6 [1]
      238 FASTCALL1                        MATH_ABS R15 ; [+2]
      239 GETIMPORT                        R14 K3 [math.abs]
      241 CALL                             R14 1 1
      242 LOADK                            R15 K4 [1E-05]
      243 JUMPIFNOTLT                      R14 R15 ; [+2]
      245 LOADN                            R10 255
      246 SUBK                             R15 R11 K6 [1]
      247 FASTCALL1                        MATH_ABS R15 ; [+2]
      248 GETIMPORT                        R14 K3 [math.abs]
      250 CALL                             R14 1 1
      251 LOADK                            R15 K4 [1E-05]
      252 JUMPIFNOTLT                      R14 R15 ; [+3]
      254 LOADN                            R11 1
      255 JUMP                             ; [+9]
      256 ADDK                             R15 R11 K6 [1]
      257 FASTCALL1                        MATH_ABS R15 ; [+2]
      258 GETIMPORT                        R14 K3 [math.abs]
      260 CALL                             R14 1 1
      261 LOADK                            R15 K4 [1E-05]
      262 JUMPIFNOTLT                      R14 R15 ; [+2]
      264 LOADN                            R11 255
      265 SUBK                             R15 R12 K6 [1]
      266 FASTCALL1                        MATH_ABS R15 ; [+2]
      267 GETIMPORT                        R14 K3 [math.abs]
      269 CALL                             R14 1 1
      270 LOADK                            R15 K4 [1E-05]
      271 JUMPIFNOTLT                      R14 R15 ; [+3]
      273 LOADN                            R12 1
      274 JUMP                             ; [+9]
      275 ADDK                             R15 R12 K6 [1]
      276 FASTCALL1                        MATH_ABS R15 ; [+2]
      277 GETIMPORT                        R14 K3 [math.abs]
      279 CALL                             R14 1 1
      280 LOADK                            R15 K4 [1E-05]
      281 JUMPIFNOTLT                      R14 R15 ; [+2]
      283 LOADN                            R12 255
      284 GETIMPORT                        R14 K9 [CFrame.new]
      286 MOVE                             R15 R1
      287 MOVE                             R16 R2
      288 MOVE                             R17 R3
      289 MOVE                             R18 R4
      290 MOVE                             R19 R5
      291 MOVE                             R20 R6
      292 MOVE                             R21 R7
      293 MOVE                             R22 R8
      294 MOVE                             R23 R9
      295 MOVE                             R24 R10
      296 MOVE                             R25 R11
      297 MOVE                             R26 R12
      298 CALL                             R14 12 -1
      299 RETURN                           R14 -1
      300 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
