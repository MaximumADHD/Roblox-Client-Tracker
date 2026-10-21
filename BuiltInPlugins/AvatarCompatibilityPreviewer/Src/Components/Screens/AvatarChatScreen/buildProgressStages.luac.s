PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 [":"]
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+4]
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 RETURN                           R2 2
       12 LOADN                            R4 1
       13 SUBK                             R5 R1 K4 [1]
       14 FASTCALL3                        STRING_SUB R0 R4 R5
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K6 [string.sub]
       19 CALL                             R2 3 1
       20 ADDK                             R5 R1 K4 [1]
       21 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       23 MOVE                             R4 R0
       24 GETIMPORT                        R3 K6 [string.sub]
       26 CALL                             R3 2 1
       27 RETURN                           R2 2

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+35]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["stepTextKeys"]
        5 GETIMPORT                        R5 K3 [string.find]
        7 MOVE                             R6 R0
        8 LOADK                            R7 K4 [":"]
        9 LOADN                            R8 1
       10 LOADB                            R9 1
       11 CALL                             R5 4 1
       12 JUMPIFNOTEQKNIL                  R5 ; [+3]
       14 MOVE                             R4 R0
       15 JUMP                             ; [+16]
       16 LOADN                            R8 1
       17 SUBK                             R9 R5 K5 [1]
       18 FASTCALL3                        STRING_SUB R0 R8 R9
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K7 [string.sub]
       23 CALL                             R6 3 1
       24 MOVE                             R4 R6
       25 ADDK                             R8 R5 K5 [1]
       26 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K7 [string.sub]
       31 CALL                             R6 2 1
       32 GETTABLE                         R2 R3 R4
       33 JUMPIFEQKNIL                     R2 ; [+2]
       35 RETURN                           R0 1
       36 OR                               R2 R1 R0
       37 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R5 K2 [string.find]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K3 [":"]
        4 LOADN                            R8 1
        5 LOADB                            R9 1
        6 CALL                             R5 4 1
        7 JUMPIFNOTEQKNIL                  R5 ; [+4]
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 JUMP                             ; [+17]
       12 LOADN                            R8 1
       13 SUBK                             R9 R5 K4 [1]
       14 FASTCALL3                        STRING_SUB R1 R8 R9
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K6 [string.sub]
       19 CALL                             R6 3 1
       20 MOVE                             R3 R6
       21 ADDK                             R8 R5 K4 [1]
       22 FASTCALL2                        STRING_SUB R1 R8 ; [+4]
       24 MOVE                             R7 R1
       25 GETIMPORT                        R6 K6 [string.sub]
       27 CALL                             R6 2 1
       28 MOVE                             R4 R6
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K7 ["stepTextKeys"]
       32 GETTABLE                         R5 R6 R3
       33 JUMPIFNOTEQKNIL                  R5 ; [+3]
       35 MOVE                             R6 R3
       36 JUMP                             ; [+10]
       37 LOADK                            R8 K8 ["AvatarChatScreen"]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R9 R5 K9 ["completed"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R9 R5 K10 ["active"]
       44 NAMECALL                         R6 R0 K11 ["getText"]
       46 CALL                             R6 3 1
       47 JUMPIFNOTEQKNIL                  R4 ; [+2]
       49 RETURN                           R6 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K12 ["partTextKeys"]
       53 GETTABLE                         R7 R8 R4
       54 JUMPIFEQKNIL                     R7 ; [+7]
       56 LOADK                            R10 K8 ["AvatarChatScreen"]
       57 MOVE                             R11 R7
       58 NAMECALL                         R8 R0 K11 ["getText"]
       60 CALL                             R8 3 1
       61 JUMP                             ; [+1]
       62 MOVE                             R8 R4
       63 LOADK                            R9 K13 ["%* (%*)"]
       64 MOVE                             R11 R6
       65 MOVE                             R12 R8
       66 NAMECALL                         R9 R9 K14 ["format"]
       68 CALL                             R9 3 1
       69 RETURN                           R9 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R1 K1 ["id"]
        6 GETIMPORT                        R4 K4 [string.find]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K5 [":"]
       10 LOADN                            R7 1
       11 LOADB                            R8 1
       12 CALL                             R4 4 1
       13 JUMPIFNOTEQKNIL                  R4 ; [+3]
       15 MOVE                             R2 R3
       16 JUMP                             ; [+16]
       17 LOADN                            R7 1
       18 SUBK                             R8 R4 K6 [1]
       19 FASTCALL3                        STRING_SUB R3 R7 R8
       21 MOVE                             R6 R3
       22 GETIMPORT                        R5 K8 [string.sub]
       24 CALL                             R5 3 1
       25 MOVE                             R2 R5
       26 ADDK                             R7 R4 K6 [1]
       27 FASTCALL2                        STRING_SUB R3 R7 ; [+4]
       29 MOVE                             R6 R3
       30 GETIMPORT                        R5 K8 [string.sub]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K9 ["stepTextKeys"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K10 ["collapsedStep"]
       39 GETTABLE                         R6 R7 R2
       40 OR                               R5 R6 R2
       41 GETTABLE                         R3 R4 R5
       42 JUMPIFEQKNIL                     R3 ; [+8]
       44 LOADK                            R6 K11 ["AvatarChatScreen"]
       45 GETTABLEKS                       R7 R3 K12 ["active"]
       47 NAMECALL                         R4 R0 K13 ["getText"]
       49 CALL                             R4 3 1
       50 RETURN                           R4 1
       51 GETTABLEKS                       R4 R1 K14 ["label"]
       53 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["step"]
        2 JUMPIFEQKNIL                     R3 ; [+3]
        4 JUMPIFNOTEQKS                    R3 K1 [""] ; [+3]
        6 LOADNIL                          R2
        7 JUMP                             ; [+1]
        8 MOVE                             R2 R3
        9 GETTABLEKS                       R3 R0 K2 ["thoughtByNode"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 LOADB                            R4 1
       15 JUMPIFEQKS                       R2 K3 ["uploading"] ; [+13]
       17 LOADB                            R4 0
       18 GETTABLEKS                       R5 R0 K4 ["progress"]
       20 JUMPIFEQKNIL                     R5 ; [+8]
       22 GETTABLEKS                       R5 R0 K4 ["progress"]
       24 LOADN                            R6 1
       25 JUMPIFLE                         R6 R5 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 NEWTABLE                         R5 0 0
       31 NEWTABLE                         R6 0 0
       33 NEWTABLE                         R7 0 0
       35 LOADB                            R8 0
       36 GETTABLEKS                       R9 R0 K5 ["nodes"]
       38 JUMPIF                           R9 ; [+2]
       39 NEWTABLE                         R9 0 0
       41 MOVE                             R10 R9
       42 LOADNIL                          R11
       43 LOADNIL                          R12
       44 FORGPREP                         R10
       45 GETTABLEKS                       R16 R14 K6 ["Id"]
       47 JUMPIFEQKNIL                     R16 ; [+3]
       49 JUMPIFNOTEQKS                    R16 K1 [""] ; [+3]
       51 LOADNIL                          R15
       52 JUMP                             ; [+1]
       53 MOVE                             R15 R16
       54 GETTABLEKS                       R17 R14 K7 ["StageName"]
       56 JUMPIFEQKNIL                     R17 ; [+3]
       58 JUMPIFNOTEQKS                    R17 K1 [""] ; [+3]
       60 LOADNIL                          R16
       61 JUMP                             ; [+1]
       62 MOVE                             R16 R17
       63 LOADB                            R17 1
       64 GETTABLEKS                       R18 R14 K8 ["Status"]
       66 JUMPIFEQKS                       R18 K9 ["completed"] ; [+9]
       68 MOVE                             R17 R4
       69 JUMPIFNOT                        R17 ; [+6]
       70 GETTABLEKS                       R18 R14 K8 ["Status"]
       72 JUMPIFEQKS                       R18 K10 ["running"] ; [+2]
       74 LOADB                            R17 0 +1
       75 LOADB                            R17 1
       76 GETTABLEKS                       R18 R14 K8 ["Status"]
       78 JUMPIFNOTEQKS                    R18 K9 ["completed"] ; [+8]
       80 JUMPIFEQKNIL                     R2 ; [+6]
       82 JUMPIFEQ                         R15 R2 ; [+3]
       84 JUMPIFNOTEQ                      R16 R2 ; [+2]
       86 LOADB                            R8 1
       87 JUMPIFEQKNIL                     R15 ; [+36]
       89 GETUPVAL                         R20 0
       90 GETTABLEKS                       R20 R20 K11 ["stepTextKeys"]
       92 GETIMPORT                        R22 K14 [string.find]
       94 MOVE                             R23 R15
       95 LOADK                            R24 K15 [":"]
       96 LOADN                            R25 1
       97 LOADB                            R26 1
       98 CALL                             R22 4 1
       99 JUMPIFNOTEQKNIL                  R22 ; [+3]
      101 MOVE                             R21 R15
      102 JUMP                             ; [+16]
      103 LOADN                            R25 1
      104 SUBK                             R26 R22 K16 [1]
      105 FASTCALL3                        STRING_SUB R15 R25 R26
      107 MOVE                             R24 R15
      108 GETIMPORT                        R23 K18 [string.sub]
      110 CALL                             R23 3 1
      111 MOVE                             R21 R23
      112 ADDK                             R25 R22 K16 [1]
      113 FASTCALL2                        STRING_SUB R15 R25 ; [+4]
      115 MOVE                             R24 R15
      116 GETIMPORT                        R23 K18 [string.sub]
      118 CALL                             R23 2 1
      119 GETTABLE                         R19 R20 R21
      120 JUMPIFEQKNIL                     R19 ; [+3]
      122 MOVE                             R18 R15
      123 JUMP                             ; [+1]
      124 OR                               R18 R16 R15
      125 JUMPIFEQKNIL                     R18 ; [+52]
      127 GETUPVAL                         R19 1
      128 MOVE                             R20 R1
      129 MOVE                             R21 R18
      130 MOVE                             R22 R17
      131 CALL                             R19 3 1
      132 DUPTABLE                         R20 K22 [{"id", "label", "thought"}]
      133 OR                               R21 R15 R18
      134 SETTABLEKS                       R21 R20 K19 ["id"]
      136 SETTABLEKS                       R19 R20 K20 ["label"]
      138 JUMPIF                           R17 ; [+2]
      139 JUMPIFNOTEQKNIL                  R15 ; [+3]
      141 LOADNIL                          R21
      142 JUMP                             ; [+1]
      143 GETTABLE                         R21 R3 R15
      144 SETTABLEKS                       R21 R20 K21 ["thought"]
      146 JUMPIFNOT                        R17 ; [+8]
      147 FASTCALL2                        TABLE_INSERT R7 R20 ; [+5]
      149 MOVE                             R22 R7
      150 MOVE                             R23 R20
      151 GETIMPORT                        R21 K25 [table.insert]
      153 CALL                             R21 2 0
      154 JUMP                             ; [+23]
      155 GETTABLEKS                       R21 R14 K8 ["Status"]
      157 JUMPIFNOTEQKS                    R21 K10 ["running"] ; [+9]
      159 FASTCALL2                        TABLE_INSERT R5 R20 ; [+5]
      161 MOVE                             R22 R5
      162 MOVE                             R23 R20
      163 GETIMPORT                        R21 K25 [table.insert]
      165 CALL                             R21 2 0
      166 JUMP                             ; [+11]
      167 GETTABLEKS                       R21 R14 K8 ["Status"]
      169 JUMPIFNOTEQKS                    R21 K26 ["waiting"] ; [+8]
      171 FASTCALL2                        TABLE_INSERT R6 R20 ; [+5]
      173 MOVE                             R22 R6
      174 MOVE                             R23 R20
      175 GETIMPORT                        R21 K25 [table.insert]
      177 CALL                             R21 2 0
      178 FORGLOOP                         R10 2 ; [-134]
      180 JUMPIFNOT                        R4 ; [+14]
      181 LOADK                            R12 K27 ["ProgressBar"]
      182 LOADK                            R13 K28 ["UploadingResults"]
      183 NAMECALL                         R10 R1 K29 ["getText"]
      185 CALL                             R10 3 1
      186 DUPTABLE                         R13 K30 [{["id"] = "uploading", ["label"]}]
      187 SETTABLEKS                       R10 R13 K20 ["label"]
      189 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      191 MOVE                             R12 R5
      192 GETIMPORT                        R11 K25 [table.insert]
      194 CALL                             R11 2 0
      195 LENGTH                           R11 R5
      196 LOADN                            R12 0
      197 JUMPIFNOTLT                      R12 R11 ; [+4]
      199 NEWTABLE                         R10 0 0
      201 JUMP                             ; [+1]
      202 MOVE                             R10 R6
      203 LENGTH                           R11 R5
      204 JUMPIFNOTEQKN                    R11 K31 [0] ; [+26]
      206 LENGTH                           R11 R10
      207 JUMPIFNOTEQKN                    R11 K31 [0] ; [+23]
      209 JUMPIFEQKNIL                     R2 ; [+21]
      211 JUMPIF                           R8 ; [+19]
      212 GETUPVAL                         R11 1
      213 MOVE                             R12 R1
      214 MOVE                             R13 R2
      215 LOADB                            R14 0
      216 CALL                             R11 3 1
      217 DUPTABLE                         R14 K22 [{"id", "label", "thought"}]
      218 SETTABLEKS                       R2 R14 K19 ["id"]
      220 SETTABLEKS                       R11 R14 K20 ["label"]
      222 GETTABLE                         R15 R3 R2
      223 SETTABLEKS                       R15 R14 K21 ["thought"]
      225 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      227 MOVE                             R13 R10
      228 GETIMPORT                        R12 K25 [table.insert]
      230 CALL                             R12 2 0
      231 LENGTH                           R11 R5
      232 JUMPIFNOTEQKN                    R11 K31 [0] ; [+9]
      234 LENGTH                           R11 R10
      235 JUMPIFNOTEQKN                    R11 K31 [0] ; [+6]
      237 LENGTH                           R11 R7
      238 JUMPIFNOTEQKN                    R11 K31 [0] ; [+3]
      240 LOADNIL                          R11
      241 RETURN                           R11 1
      242 DUPTABLE                         R11 K33 [{"running", "waiting", "completed", "summary"}]
      243 SETTABLEKS                       R5 R11 K10 ["running"]
      245 SETTABLEKS                       R10 R11 K26 ["waiting"]
      247 SETTABLEKS                       R7 R11 K9 ["completed"]
      249 GETTABLEN                        R13 R5 1
      250 JUMPIF                           R13 ; [+1]
      251 GETTABLEN                        R13 R10 1
      252 JUMPIFNOTEQKNIL                  R13 ; [+3]
      254 LOADK                            R12 K1 [""]
      255 JUMP                             ; [+50]
      256 GETTABLEKS                       R15 R13 K19 ["id"]
      258 GETIMPORT                        R16 K14 [string.find]
      260 MOVE                             R17 R15
      261 LOADK                            R18 K15 [":"]
      262 LOADN                            R19 1
      263 LOADB                            R20 1
      264 CALL                             R16 4 1
      265 JUMPIFNOTEQKNIL                  R16 ; [+3]
      267 MOVE                             R14 R15
      268 JUMP                             ; [+16]
      269 LOADN                            R19 1
      270 SUBK                             R20 R16 K16 [1]
      271 FASTCALL3                        STRING_SUB R15 R19 R20
      273 MOVE                             R18 R15
      274 GETIMPORT                        R17 K18 [string.sub]
      276 CALL                             R17 3 1
      277 MOVE                             R14 R17
      278 ADDK                             R19 R16 K16 [1]
      279 FASTCALL2                        STRING_SUB R15 R19 ; [+4]
      281 MOVE                             R18 R15
      282 GETIMPORT                        R17 K18 [string.sub]
      284 CALL                             R17 2 1
      285 GETUPVAL                         R16 0
      286 GETTABLEKS                       R16 R16 K11 ["stepTextKeys"]
      288 GETUPVAL                         R19 0
      289 GETTABLEKS                       R19 R19 K34 ["collapsedStep"]
      291 GETTABLE                         R18 R19 R14
      292 OR                               R17 R18 R14
      293 GETTABLE                         R15 R16 R17
      294 JUMPIFEQKNIL                     R15 ; [+9]
      296 LOADK                            R18 K35 ["AvatarChatScreen"]
      297 GETTABLEKS                       R19 R15 K36 ["active"]
      299 NAMECALL                         R16 R1 K29 ["getText"]
      301 CALL                             R16 3 1
      302 MOVE                             R12 R16
      303 JUMP                             ; [+2]
      304 GETTABLEKS                       R12 R13 K20 ["label"]
      306 SETTABLEKS                       R12 R11 K32 ["summary"]
      308 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["AvatarCreationStages"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R4 R4 K13 ["Localization"]
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 DUPCLOSURE                       R6 K15 [PROTO_1]
       36 DUPCLOSURE                       R7 K16 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 DUPCLOSURE                       R8 K17 [PROTO_3]
       39 CAPTURE                          VAL R2
       40 DUPCLOSURE                       R9 K18 [PROTO_4]
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R10 K19 [PROTO_5]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R8
       45 RETURN                           R10 1
