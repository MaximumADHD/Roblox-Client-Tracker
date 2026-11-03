PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 23
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 JUMPIFEQKS                       R1 K3 ["AnimationGenEditorEdit:"] ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K4 [24]
       16 GETIMPORT                        R1 K2 [string.sub]
       18 CALL                             R1 2 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIFEQKNIL                     R2 ; [+7]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["retain"]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["capture"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 MOVE                             R2 R3
       15 DUPTABLE                         R3 K4 [{"session", "editor"}]
       16 SETTABLEKS                       R2 R3 K2 ["session"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K1 ["capture"]
       21 MOVE                             R5 R0
       22 JUMPIFEQKNIL                     R2 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K3 ["editor"]
       29 RETURN                           R3 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["dispose"]
        6 GETTABLEKS                       R2 R0 K1 ["editor"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["session"]
       11 JUMPIFEQKNIL                     R1 ; [+7]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["release"]
       16 GETTABLEKS                       R2 R0 K2 ["session"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["before"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 JUMP                             ; [+16]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["dispose"]
        8 GETTABLEKS                       R3 R1 K2 ["editor"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R1 K3 ["session"]
       13 JUMPIFEQKNIL                     R2 ; [+7]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["release"]
       18 GETTABLEKS                       R3 R1 K3 ["session"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R1 R0 K5 ["after"]
       23 JUMPIFNOTEQKNIL                  R1 ; [+2]
       25 JUMP                             ; [+16]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K1 ["dispose"]
       29 GETTABLEKS                       R3 R1 K2 ["editor"]
       31 CALL                             R2 1 0
       32 GETTABLEKS                       R2 R1 K3 ["session"]
       34 JUMPIFEQKNIL                     R2 ; [+7]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K4 ["release"]
       39 GETTABLEKS                       R3 R1 K3 ["session"]
       41 CALL                             R2 1 0
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K0 ["before"]
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K5 ["after"]
       48 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["isUndone"]
        6 JUMPIFNOT                        R5 ; [+51]
        7 GETTABLEKS                       R5 R4 K1 ["before"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+2]
       11 JUMP                             ; [+16]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K2 ["dispose"]
       15 GETTABLEKS                       R7 R5 K3 ["editor"]
       17 CALL                             R6 1 0
       18 GETTABLEKS                       R6 R5 K4 ["session"]
       20 JUMPIFEQKNIL                     R6 ; [+7]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K5 ["release"]
       25 GETTABLEKS                       R7 R5 K4 ["session"]
       27 CALL                             R6 1 0
       28 GETTABLEKS                       R5 R4 K6 ["after"]
       30 JUMPIFNOTEQKNIL                  R5 ; [+2]
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K2 ["dispose"]
       36 GETTABLEKS                       R7 R5 K3 ["editor"]
       38 CALL                             R6 1 0
       39 GETTABLEKS                       R6 R5 K4 ["session"]
       41 JUMPIFEQKNIL                     R6 ; [+7]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K5 ["release"]
       46 GETTABLEKS                       R7 R5 K4 ["session"]
       48 CALL                             R6 1 0
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R4 K1 ["before"]
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K6 ["after"]
       55 GETUPVAL                         R5 0
       56 LOADNIL                          R6
       57 SETTABLE                         R6 R5 R3
       58 FORGLOOP                         R0 2 ; [-55]
       60 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getRig"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+11]
        7 LOADK                            R5 K2 ["__AnimationGenEditNonce"]
        8 NAMECALL                         R3 R1 K3 ["GetAttribute"]
       10 CALL                             R3 2 1
       11 ORK                              R2 R3 K1 [0]
       12 LOADK                            R5 K2 ["__AnimationGenEditNonce"]
       13 ADDK                             R6 R2 K4 [1]
       14 NAMECALL                         R3 R1 K5 ["SetAttribute"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["restore"]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K1 ["session"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["restore"]
       12 MOVE                             R3 R0
       13 GETTABLEKS                       R4 R1 K2 ["editor"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["onRestored"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R1 K1 ["session"]
       23 JUMPIFEQKNIL                     R2 ; [+13]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["prepareReload"]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R2
       30 CALL                             R3 2 1
       31 JUMPIFEQKNIL                     R3 ; [+5]
       33 GETIMPORT                        R4 K7 [task.defer]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 0
        3 LOADB                            R2 1
        4 SETUPVAL                         R2 0
        5 GETIMPORT                        R2 K1 [pcall]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R2 3 2
       11 LOADB                            R4 0
       12 SETUPVAL                         R4 0
       13 JUMPIF                           R2 ; [+7]
       14 GETUPVAL                         R4 2
       15 LOADK                            R5 K2 ["[AnimationGen] undo restore failed: %*"]
       16 MOVE                             R7 R3
       17 NAMECALL                         R5 R5 K3 ["format"]
       19 CALL                             R5 2 1
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+6]
        2 GETUPVAL                         R5 1
        3 GETIMPORT                        R6 K2 [coroutine.running]
        5 CALL                             R6 0 1
        6 GETTABLE                         R4 R5 R6
        7 JUMPIFNOT                        R4 ; [+3]
        8 MOVE                             R4 R2
        9 CALL                             R4 0 -1
       10 RETURN                           R4 -1
       11 GETUPVAL                         R4 2
       12 LOADB                            R6 0
       13 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       15 CALL                             R4 2 1
       16 DUPTABLE                         R5 K8 [{["contentId"], ["before"], ["isUndone"] = False}]
       17 SETTABLEKS                       R0 R5 K4 ["contentId"]
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R0
       21 MOVE                             R8 R3
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K5 ["before"]
       25 GETUPVAL                         R6 4
       26 LOADK                            R9 K9 ["AnimationGenEditorEdit:"]
       27 MOVE                             R10 R4
       28 CONCAT                           R8 R9 R10
       29 LOADK                            R10 K10 ["AnimationGen: "]
       30 MOVE                             R11 R1
       31 CONCAT                           R9 R10 R11
       32 NAMECALL                         R6 R6 K11 ["TryBeginRecording"]
       34 CALL                             R6 3 1
       35 JUMPIFEQKNIL                     R6 ; [+18]
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R7 R7 K12 ["getRig"]
       40 MOVE                             R8 R0
       41 CALL                             R7 1 1
       42 JUMPIFEQKNIL                     R7 ; [+11]
       44 LOADK                            R11 K14 ["__AnimationGenEditNonce"]
       45 NAMECALL                         R9 R7 K15 ["GetAttribute"]
       47 CALL                             R9 2 1
       48 ORK                              R8 R9 K13 [0]
       49 LOADK                            R11 K14 ["__AnimationGenEditNonce"]
       50 ADDK                             R12 R8 K16 [1]
       51 NAMECALL                         R9 R7 K17 ["SetAttribute"]
       53 CALL                             R9 3 0
       54 GETIMPORT                        R7 K2 [coroutine.running]
       56 CALL                             R7 0 1
       57 GETUPVAL                         R8 6
       58 LOADB                            R9 1
       59 SETTABLE                         R9 R8 R5
       60 GETUPVAL                         R8 1
       61 LOADB                            R9 1
       62 SETTABLE                         R9 R8 R7
       63 GETIMPORT                        R8 K20 [table.pack]
       65 GETIMPORT                        R9 K22 [pcall]
       67 MOVE                             R10 R2
       68 CALL                             R9 1 -1
       69 CALL                             R8 -1 1
       70 GETUPVAL                         R9 1
       71 LOADNIL                          R10
       72 SETTABLE                         R10 R9 R7
       73 GETUPVAL                         R9 6
       74 LOADNIL                          R10
       75 SETTABLE                         R10 R9 R5
       76 GETTABLEN                        R9 R8 1
       77 JUMPIF                           R9 ; [+62]
       78 JUMPIFEQKNIL                     R6 ; [+8]
       80 GETUPVAL                         R9 4
       81 MOVE                             R11 R6
       82 GETIMPORT                        R12 K26 [Enum.FinishRecordingOperation.Cancel]
       84 NAMECALL                         R9 R9 K27 ["FinishRecording"]
       86 CALL                             R9 3 0
       87 GETTABLEKS                       R9 R5 K5 ["before"]
       89 JUMPIFNOTEQKNIL                  R9 ; [+2]
       91 JUMP                             ; [+16]
       92 GETUPVAL                         R10 7
       93 GETTABLEKS                       R10 R10 K28 ["dispose"]
       95 GETTABLEKS                       R11 R9 K29 ["editor"]
       97 CALL                             R10 1 0
       98 GETTABLEKS                       R10 R9 K30 ["session"]
      100 JUMPIFEQKNIL                     R10 ; [+7]
      102 GETUPVAL                         R10 8
      103 GETTABLEKS                       R10 R10 K31 ["release"]
      105 GETTABLEKS                       R11 R9 K30 ["session"]
      107 CALL                             R10 1 0
      108 GETTABLEKS                       R9 R5 K32 ["after"]
      110 JUMPIFNOTEQKNIL                  R9 ; [+2]
      112 JUMP                             ; [+16]
      113 GETUPVAL                         R10 7
      114 GETTABLEKS                       R10 R10 K28 ["dispose"]
      116 GETTABLEKS                       R11 R9 K29 ["editor"]
      118 CALL                             R10 1 0
      119 GETTABLEKS                       R10 R9 K30 ["session"]
      121 JUMPIFEQKNIL                     R10 ; [+7]
      123 GETUPVAL                         R10 8
      124 GETTABLEKS                       R10 R10 K31 ["release"]
      126 GETTABLEKS                       R11 R9 K30 ["session"]
      128 CALL                             R10 1 0
      129 LOADNIL                          R9
      130 SETTABLEKS                       R9 R5 K5 ["before"]
      132 LOADNIL                          R9
      133 SETTABLEKS                       R9 R5 K32 ["after"]
      135 GETIMPORT                        R9 K34 [error]
      137 GETTABLEN                        R10 R8 2
      138 LOADN                            R11 0
      139 CALL                             R9 2 0
      140 JUMPIFNOTEQKNIL                  R6 ; [+50]
      142 GETTABLEKS                       R9 R5 K5 ["before"]
      144 JUMPIFNOTEQKNIL                  R9 ; [+2]
      146 JUMP                             ; [+16]
      147 GETUPVAL                         R10 7
      148 GETTABLEKS                       R10 R10 K28 ["dispose"]
      150 GETTABLEKS                       R11 R9 K29 ["editor"]
      152 CALL                             R10 1 0
      153 GETTABLEKS                       R10 R9 K30 ["session"]
      155 JUMPIFEQKNIL                     R10 ; [+7]
      157 GETUPVAL                         R10 8
      158 GETTABLEKS                       R10 R10 K31 ["release"]
      160 GETTABLEKS                       R11 R9 K30 ["session"]
      162 CALL                             R10 1 0
      163 GETTABLEKS                       R9 R5 K32 ["after"]
      165 JUMPIFNOTEQKNIL                  R9 ; [+2]
      167 JUMP                             ; [+16]
      168 GETUPVAL                         R10 7
      169 GETTABLEKS                       R10 R10 K28 ["dispose"]
      171 GETTABLEKS                       R11 R9 K29 ["editor"]
      173 CALL                             R10 1 0
      174 GETTABLEKS                       R10 R9 K30 ["session"]
      176 JUMPIFEQKNIL                     R10 ; [+7]
      178 GETUPVAL                         R10 8
      179 GETTABLEKS                       R10 R10 K31 ["release"]
      181 GETTABLEKS                       R11 R9 K30 ["session"]
      183 CALL                             R10 1 0
      184 LOADNIL                          R9
      185 SETTABLEKS                       R9 R5 K5 ["before"]
      187 LOADNIL                          R9
      188 SETTABLEKS                       R9 R5 K32 ["after"]
      190 JUMP                             ; [+143]
      191 GETTABLEKS                       R9 R8 K35 ["n"]
      193 LOADN                            R10 2
      194 JUMPIFNOTLE                      R10 R9 ; [+60]
      196 GETTABLEN                        R9 R8 2
      197 JUMPIFNOTEQKB                    R9 FALSE ; [+57]
      199 GETUPVAL                         R9 4
      200 MOVE                             R11 R6
      201 GETIMPORT                        R12 K26 [Enum.FinishRecordingOperation.Cancel]
      203 NAMECALL                         R9 R9 K27 ["FinishRecording"]
      205 CALL                             R9 3 0
      206 GETTABLEKS                       R9 R5 K5 ["before"]
      208 JUMPIFNOTEQKNIL                  R9 ; [+2]
      210 JUMP                             ; [+16]
      211 GETUPVAL                         R10 7
      212 GETTABLEKS                       R10 R10 K28 ["dispose"]
      214 GETTABLEKS                       R11 R9 K29 ["editor"]
      216 CALL                             R10 1 0
      217 GETTABLEKS                       R10 R9 K30 ["session"]
      219 JUMPIFEQKNIL                     R10 ; [+7]
      221 GETUPVAL                         R10 8
      222 GETTABLEKS                       R10 R10 K31 ["release"]
      224 GETTABLEKS                       R11 R9 K30 ["session"]
      226 CALL                             R10 1 0
      227 GETTABLEKS                       R9 R5 K32 ["after"]
      229 JUMPIFNOTEQKNIL                  R9 ; [+2]
      231 JUMP                             ; [+16]
      232 GETUPVAL                         R10 7
      233 GETTABLEKS                       R10 R10 K28 ["dispose"]
      235 GETTABLEKS                       R11 R9 K29 ["editor"]
      237 CALL                             R10 1 0
      238 GETTABLEKS                       R10 R9 K30 ["session"]
      240 JUMPIFEQKNIL                     R10 ; [+7]
      242 GETUPVAL                         R10 8
      243 GETTABLEKS                       R10 R10 K31 ["release"]
      245 GETTABLEKS                       R11 R9 K30 ["session"]
      247 CALL                             R10 1 0
      248 LOADNIL                          R9
      249 SETTABLEKS                       R9 R5 K5 ["before"]
      251 LOADNIL                          R9
      252 SETTABLEKS                       R9 R5 K32 ["after"]
      254 JUMP                             ; [+79]
      255 GETUPVAL                         R9 4
      256 MOVE                             R11 R6
      257 GETIMPORT                        R12 K37 [Enum.FinishRecordingOperation.Commit]
      259 NAMECALL                         R9 R9 K27 ["FinishRecording"]
      261 CALL                             R9 3 0
      262 GETUPVAL                         R9 9
      263 LOADNIL                          R10
      264 LOADNIL                          R11
      265 FORGPREP                         R9
      266 GETTABLEKS                       R14 R13 K6 ["isUndone"]
      268 JUMPIFNOT                        R14 ; [+51]
      269 GETTABLEKS                       R14 R13 K5 ["before"]
      271 JUMPIFNOTEQKNIL                  R14 ; [+2]
      273 JUMP                             ; [+16]
      274 GETUPVAL                         R15 7
      275 GETTABLEKS                       R15 R15 K28 ["dispose"]
      277 GETTABLEKS                       R16 R14 K29 ["editor"]
      279 CALL                             R15 1 0
      280 GETTABLEKS                       R15 R14 K30 ["session"]
      282 JUMPIFEQKNIL                     R15 ; [+7]
      284 GETUPVAL                         R15 8
      285 GETTABLEKS                       R15 R15 K31 ["release"]
      287 GETTABLEKS                       R16 R14 K30 ["session"]
      289 CALL                             R15 1 0
      290 GETTABLEKS                       R14 R13 K32 ["after"]
      292 JUMPIFNOTEQKNIL                  R14 ; [+2]
      294 JUMP                             ; [+16]
      295 GETUPVAL                         R15 7
      296 GETTABLEKS                       R15 R15 K28 ["dispose"]
      298 GETTABLEKS                       R16 R14 K29 ["editor"]
      300 CALL                             R15 1 0
      301 GETTABLEKS                       R15 R14 K30 ["session"]
      303 JUMPIFEQKNIL                     R15 ; [+7]
      305 GETUPVAL                         R15 8
      306 GETTABLEKS                       R15 R15 K31 ["release"]
      308 GETTABLEKS                       R16 R14 K30 ["session"]
      310 CALL                             R15 1 0
      311 LOADNIL                          R14
      312 SETTABLEKS                       R14 R13 K5 ["before"]
      314 LOADNIL                          R14
      315 SETTABLEKS                       R14 R13 K32 ["after"]
      317 GETUPVAL                         R14 9
      318 LOADNIL                          R15
      319 SETTABLE                         R15 R14 R12
      320 FORGLOOP                         R9 2 ; [-55]
      322 GETTABLEKS                       R9 R5 K5 ["before"]
      324 JUMPIFEQKNIL                     R9 ; [+9]
      326 GETUPVAL                         R9 3
      327 MOVE                             R10 R0
      328 LOADNIL                          R11
      329 CALL                             R9 2 1
      330 SETTABLEKS                       R9 R5 K32 ["after"]
      332 GETUPVAL                         R9 9
      333 SETTABLE                         R5 R9 R4
      334 GETIMPORT                        R9 K39 [table.unpack]
      336 MOVE                             R10 R8
      337 LOADN                            R11 2
      338 GETTABLEKS                       R12 R8 K35 ["n"]
      340 CALL                             R9 3 -1
      341 RETURN                           R9 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["contentId"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+52]
        8 GETTABLEKS                       R6 R5 K1 ["before"]
       10 JUMPIFNOTEQKNIL                  R6 ; [+2]
       12 JUMP                             ; [+16]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K2 ["dispose"]
       16 GETTABLEKS                       R8 R6 K3 ["editor"]
       18 CALL                             R7 1 0
       19 GETTABLEKS                       R7 R6 K4 ["session"]
       21 JUMPIFEQKNIL                     R7 ; [+7]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K5 ["release"]
       26 GETTABLEKS                       R8 R6 K4 ["session"]
       28 CALL                             R7 1 0
       29 GETTABLEKS                       R6 R5 K6 ["after"]
       31 JUMPIFNOTEQKNIL                  R6 ; [+2]
       33 JUMP                             ; [+16]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K2 ["dispose"]
       37 GETTABLEKS                       R8 R6 K3 ["editor"]
       39 CALL                             R7 1 0
       40 GETTABLEKS                       R7 R6 K4 ["session"]
       42 JUMPIFEQKNIL                     R7 ; [+7]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K5 ["release"]
       47 GETTABLEKS                       R8 R6 K4 ["session"]
       49 CALL                             R7 1 0
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K1 ["before"]
       53 LOADNIL                          R6
       54 SETTABLEKS                       R6 R5 K6 ["after"]
       56 GETUPVAL                         R6 0
       57 LOADNIL                          R7
       58 SETTABLE                         R7 R6 R4
       59 FORGLOOP                         R1 2 ; [-56]
       61 GETUPVAL                         R1 3
       62 LOADNIL                          R2
       63 LOADNIL                          R3
       64 FORGPREP                         R1
       65 GETTABLEKS                       R6 R4 K0 ["contentId"]
       67 JUMPIFNOTEQ                      R6 R0 ; [+49]
       69 GETTABLEKS                       R6 R4 K1 ["before"]
       71 JUMPIFNOTEQKNIL                  R6 ; [+2]
       73 JUMP                             ; [+16]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K2 ["dispose"]
       77 GETTABLEKS                       R8 R6 K3 ["editor"]
       79 CALL                             R7 1 0
       80 GETTABLEKS                       R7 R6 K4 ["session"]
       82 JUMPIFEQKNIL                     R7 ; [+7]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K5 ["release"]
       87 GETTABLEKS                       R8 R6 K4 ["session"]
       89 CALL                             R7 1 0
       90 GETTABLEKS                       R6 R4 K6 ["after"]
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 JUMP                             ; [+16]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K2 ["dispose"]
       98 GETTABLEKS                       R8 R6 K3 ["editor"]
      100 CALL                             R7 1 0
      101 GETTABLEKS                       R7 R6 K4 ["session"]
      103 JUMPIFEQKNIL                     R7 ; [+7]
      105 GETUPVAL                         R7 2
      106 GETTABLEKS                       R7 R7 K5 ["release"]
      108 GETTABLEKS                       R8 R6 K4 ["session"]
      110 CALL                             R7 1 0
      111 LOADNIL                          R6
      112 SETTABLEKS                       R6 R4 K1 ["before"]
      114 LOADNIL                          R6
      115 SETTABLEKS                       R6 R4 K6 ["after"]
      117 FORGLOOP                         R1 1 ; [-53]
      119 RETURN                           R0 0

PROTO_11:
        0 LOADN                            R4 1
        1 LOADN                            R5 23
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFEQKS                       R2 K3 ["AnimationGenEditorEdit:"] ; [+3]
       10 LOADNIL                          R1
       11 JUMP                             ; [+7]
       12 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K4 [24]
       16 GETIMPORT                        R1 K2 [string.sub]
       18 CALL                             R1 2 1
       19 JUMPIFEQKNIL                     R1 ; [+4]
       21 GETUPVAL                         R3 0
       22 GETTABLE                         R2 R3 R1
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_12:
        0 LOADN                            R5 1
        1 LOADN                            R6 23
        2 FASTCALL3                        STRING_SUB R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [string.sub]
        7 CALL                             R3 3 1
        8 JUMPIFEQKS                       R3 K3 ["AnimationGenEditorEdit:"] ; [+3]
       10 LOADNIL                          R2
       11 JUMP                             ; [+7]
       12 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K4 [24]
       16 GETIMPORT                        R2 K2 [string.sub]
       18 CALL                             R2 2 1
       19 JUMPIFEQKNIL                     R2 ; [+4]
       21 GETUPVAL                         R3 0
       22 GETTABLE                         R1 R3 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R1
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 RETURN                           R0 0
       28 LOADB                            R2 1
       29 SETTABLEKS                       R2 R1 K5 ["isUndone"]
       31 GETTABLEKS                       R2 R1 K6 ["contentId"]
       33 GETTABLEKS                       R3 R1 K7 ["before"]
       35 JUMPIFNOTEQKNIL                  R3 ; [+2]
       37 RETURN                           R0 0
       38 LOADB                            R4 1
       39 SETUPVAL                         R4 1
       40 GETIMPORT                        R4 K9 [pcall]
       42 GETUPVAL                         R5 2
       43 MOVE                             R6 R2
       44 MOVE                             R7 R3
       45 CALL                             R4 3 2
       46 LOADB                            R6 0
       47 SETUPVAL                         R6 1
       48 JUMPIF                           R4 ; [+7]
       49 GETUPVAL                         R6 3
       50 LOADK                            R7 K10 ["[AnimationGen] undo restore failed: %*"]
       51 MOVE                             R9 R5
       52 NAMECALL                         R7 R7 K11 ["format"]
       54 CALL                             R7 2 1
       55 CALL                             R6 1 0
       56 RETURN                           R0 0

PROTO_13:
        0 LOADN                            R5 1
        1 LOADN                            R6 23
        2 FASTCALL3                        STRING_SUB R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [string.sub]
        7 CALL                             R3 3 1
        8 JUMPIFEQKS                       R3 K3 ["AnimationGenEditorEdit:"] ; [+3]
       10 LOADNIL                          R2
       11 JUMP                             ; [+7]
       12 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K4 [24]
       16 GETIMPORT                        R2 K2 [string.sub]
       18 CALL                             R2 2 1
       19 JUMPIFEQKNIL                     R2 ; [+4]
       21 GETUPVAL                         R3 0
       22 GETTABLE                         R1 R3 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R1
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 RETURN                           R0 0
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R1 K5 ["isUndone"]
       31 GETTABLEKS                       R2 R1 K6 ["contentId"]
       33 GETTABLEKS                       R3 R1 K7 ["after"]
       35 JUMPIFNOTEQKNIL                  R3 ; [+2]
       37 RETURN                           R0 0
       38 LOADB                            R4 1
       39 SETUPVAL                         R4 1
       40 GETIMPORT                        R4 K9 [pcall]
       42 GETUPVAL                         R5 2
       43 MOVE                             R6 R2
       44 MOVE                             R7 R3
       45 CALL                             R4 3 2
       46 LOADB                            R6 0
       47 SETUPVAL                         R6 1
       48 JUMPIF                           R4 ; [+7]
       49 GETUPVAL                         R6 3
       50 LOADK                            R7 K10 ["[AnimationGen] undo restore failed: %*"]
       51 MOVE                             R9 R5
       52 NAMECALL                         R7 R7 K11 ["format"]
       54 CALL                             R7 2 1
       55 CALL                             R6 1 0
       56 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 GETTABLEKS                       R5 R4 K1 ["before"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 JUMP                             ; [+16]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K2 ["dispose"]
       20 GETTABLEKS                       R7 R5 K3 ["editor"]
       22 CALL                             R6 1 0
       23 GETTABLEKS                       R6 R5 K4 ["session"]
       25 JUMPIFEQKNIL                     R6 ; [+7]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K5 ["release"]
       30 GETTABLEKS                       R7 R5 K4 ["session"]
       32 CALL                             R6 1 0
       33 GETTABLEKS                       R5 R4 K6 ["after"]
       35 JUMPIFNOTEQKNIL                  R5 ; [+2]
       37 JUMP                             ; [+16]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K2 ["dispose"]
       41 GETTABLEKS                       R7 R5 K3 ["editor"]
       43 CALL                             R6 1 0
       44 GETTABLEKS                       R6 R5 K4 ["session"]
       46 JUMPIFEQKNIL                     R6 ; [+7]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K5 ["release"]
       51 GETTABLEKS                       R7 R5 K4 ["session"]
       53 CALL                             R6 1 0
       54 LOADNIL                          R5
       55 SETTABLEKS                       R5 R4 K1 ["before"]
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R4 K6 ["after"]
       60 FORGLOOP                         R0 2 ; [-49]
       62 GETIMPORT                        R0 K9 [table.clear]
       64 GETUPVAL                         R1 2
       65 CALL                             R0 1 0
       66 GETUPVAL                         R0 5
       67 LOADNIL                          R1
       68 LOADNIL                          R2
       69 FORGPREP                         R0
       70 GETTABLEKS                       R5 R3 K1 ["before"]
       72 JUMPIFNOTEQKNIL                  R5 ; [+2]
       74 JUMP                             ; [+16]
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R6 R6 K2 ["dispose"]
       78 GETTABLEKS                       R7 R5 K3 ["editor"]
       80 CALL                             R6 1 0
       81 GETTABLEKS                       R6 R5 K4 ["session"]
       83 JUMPIFEQKNIL                     R6 ; [+7]
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K5 ["release"]
       88 GETTABLEKS                       R7 R5 K4 ["session"]
       90 CALL                             R6 1 0
       91 GETTABLEKS                       R5 R3 K6 ["after"]
       93 JUMPIFNOTEQKNIL                  R5 ; [+2]
       95 JUMP                             ; [+16]
       96 GETUPVAL                         R6 3
       97 GETTABLEKS                       R6 R6 K2 ["dispose"]
       99 GETTABLEKS                       R7 R5 K3 ["editor"]
      101 CALL                             R6 1 0
      102 GETTABLEKS                       R6 R5 K4 ["session"]
      104 JUMPIFEQKNIL                     R6 ; [+7]
      106 GETUPVAL                         R6 4
      107 GETTABLEKS                       R6 R6 K5 ["release"]
      109 GETTABLEKS                       R7 R5 K4 ["session"]
      111 CALL                             R6 1 0
      112 LOADNIL                          R5
      113 SETTABLEKS                       R5 R3 K1 ["before"]
      115 LOADNIL                          R5
      116 SETTABLEKS                       R5 R3 K6 ["after"]
      118 FORGLOOP                         R0 1 ; [-49]
      120 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["changeHistoryService"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["sessions"]
        6 GETTABLEKS                       R3 R0 K2 ["editor"]
        8 GETTABLEKS                       R4 R0 K3 ["onWarn"]
       10 JUMPIF                           R4 ; [+1]
       11 DUPCLOSURE                       R4 K4 [PROTO_1]
       12 NEWTABLE                         R5 0 0
       14 NEWTABLE                         R6 0 0
       16 LOADB                            R7 0
       17 NEWTABLE                         R8 0 0
       19 NEWCLOSURE                       R9 P1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 NEWCLOSURE                       R10 P2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 NEWCLOSURE                       R11 P3
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 NEWCLOSURE                       R12 P4
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 NEWCLOSURE                       R13 P5
       33 CAPTURE                          VAL R0
       34 NEWCLOSURE                       R14 P6
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R15 P7
       39 CAPTURE                          REF R7
       40 CAPTURE                          VAL R14
       41 CAPTURE                          VAL R4
       42 NEWCLOSURE                       R16 P8
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R8
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R9
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 NEWCLOSURE                       R17 P9
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 NEWCLOSURE                       R18 P10
       59 CAPTURE                          VAL R5
       60 NEWCLOSURE                       R19 P11
       61 CAPTURE                          VAL R5
       62 CAPTURE                          REF R7
       63 CAPTURE                          VAL R14
       64 CAPTURE                          VAL R4
       65 NEWCLOSURE                       R20 P12
       66 CAPTURE                          VAL R5
       67 CAPTURE                          REF R7
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R4
       70 GETTABLEKS                       R21 R1 K5 ["OnUndo"]
       72 MOVE                             R23 R19
       73 NAMECALL                         R21 R21 K6 ["Connect"]
       75 CALL                             R21 2 1
       76 GETTABLEKS                       R22 R1 K7 ["OnRedo"]
       78 MOVE                             R24 R20
       79 NAMECALL                         R22 R22 K6 ["Connect"]
       81 CALL                             R22 2 1
       82 DUPTABLE                         R23 K11 [{"runEdit", "discardHistory", "destroy"}]
       83 SETTABLEKS                       R16 R23 K8 ["runEdit"]
       85 SETTABLEKS                       R17 R23 K9 ["discardHistory"]
       87 NEWCLOSURE                       R24 P13
       88 CAPTURE                          VAL R21
       89 CAPTURE                          VAL R22
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R24 R23 K10 ["destroy"]
       96 CLOSEUPVALS                      R7
       97 RETURN                           R23 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssistantUI"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Types"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 DUPCLOSURE                       R5 K13 [PROTO_15]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 RETURN                           R5 1
