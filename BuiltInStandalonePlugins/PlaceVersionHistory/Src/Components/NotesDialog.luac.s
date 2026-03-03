PROTO_0:
        0 LOADK                            R3 K0 ["[\n\r]"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\r\n]"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 2
        6 ADDK                             R3 R2 K5 [1]
        7 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [utf8.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [utf8.len]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 MOVE                             R0 R2
        6 GETUPVAL                         R1 1
        7 JUMPIFNOTLT                      R1 R0 ; [+17]
        9 GETUPVAL                         R1 2
       10 LOADK                            R3 K3 ["%* (%*/%*)"]
       11 GETUPVAL                         R5 3
       12 LOADK                            R7 K4 ["Title"]
       13 LOADK                            R8 K5 ["ErrorCharLimit"]
       14 NAMECALL                         R5 R5 K6 ["getText"]
       16 CALL                             R5 3 1
       17 MOVE                             R6 R0
       18 GETUPVAL                         R7 1
       19 NAMECALL                         R3 R3 K7 ["format"]
       21 CALL                             R3 4 1
       22 MOVE                             R2 R3
       23 CALL                             R1 1 0
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R1 2
       26 LOADNIL                          R2
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 4
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [utf8.len]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 MOVE                             R0 R2
        6 GETUPVAL                         R2 0
        7 GETIMPORT                        R3 K5 [string.gsub]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K6 ["[\r\n]"]
       11 LOADK                            R6 K7 [""]
       12 CALL                             R3 3 2
       13 ADDK                             R1 R4 K8 [1]
       14 GETUPVAL                         R2 1
       15 JUMPIFNOTLT                      R2 R0 ; [+17]
       17 GETUPVAL                         R2 2
       18 LOADK                            R4 K9 ["%* (%*/%*)"]
       19 GETUPVAL                         R6 3
       20 LOADK                            R8 K10 ["Title"]
       21 LOADK                            R9 K11 ["ErrorCharLimit"]
       22 NAMECALL                         R6 R6 K12 ["getText"]
       24 CALL                             R6 3 1
       25 MOVE                             R7 R0
       26 GETUPVAL                         R8 1
       27 NAMECALL                         R4 R4 K13 ["format"]
       29 CALL                             R4 4 1
       30 MOVE                             R3 R4
       31 CALL                             R2 1 0
       32 JUMP                             ; [+22]
       33 GETUPVAL                         R2 4
       34 JUMPIFNOTLT                      R2 R1 ; [+17]
       36 GETUPVAL                         R2 2
       37 LOADK                            R4 K9 ["%* (%*/%*)"]
       38 GETUPVAL                         R6 3
       39 LOADK                            R8 K10 ["Title"]
       40 LOADK                            R9 K14 ["ErrorLineLimit"]
       41 NAMECALL                         R6 R6 K12 ["getText"]
       43 CALL                             R6 3 1
       44 MOVE                             R7 R1
       45 GETUPVAL                         R8 4
       46 NAMECALL                         R4 R4 K13 ["format"]
       48 CALL                             R4 4 1
       49 MOVE                             R3 R4
       50 CALL                             R2 1 0
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R2 2
       53 LOADNIL                          R3
       54 CALL                             R2 1 0
       55 GETUPVAL                         R2 5
       56 MOVE                             R3 R0
       57 CALL                             R2 1 0
       58 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        2 RETURN                           R0 0
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 DUPTABLE                         R5 K3 [{"approved", "textLength"}]
       10 SETTABLEKS                       R1 R5 K1 ["approved"]
       12 SETTABLEKS                       R0 R5 K2 ["textLength"]
       14 NAMECALL                         R2 R2 K4 ["logRobloxTelemetryEvent"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K5 [{"type", "accepted", "titleLength", "descriptionLength", "hadFailedModeration"}]
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K6 ["variant"]
        6 SETTABLEKS                       R5 R4 K0 ["type"]
        8 SETTABLEKS                       R0 R4 K1 ["accepted"]
       10 GETUPVAL                         R5 3
       11 SETTABLEKS                       R5 R4 K2 ["titleLength"]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K3 ["descriptionLength"]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K4 ["hadFailedModeration"]
       19 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETTABLEN                        R2 R0 1
        1 JUMPIFEQKB                       R2 TRUE ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 GETTABLEN                        R3 R0 2
        6 JUMPIFEQKB                       R3 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 AND                              R3 R1 R2
       11 GETUPVAL                         R4 0
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R1
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 JUMPIF                           R1 ; [+8]
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R5 4
       22 LOADK                            R7 K0 ["Title"]
       23 LOADK                            R8 K1 ["ErrorTextModeration"]
       24 NAMECALL                         R5 R5 K2 ["getText"]
       26 CALL                             R5 3 -1
       27 CALL                             R4 -1 0
       28 JUMPIF                           R2 ; [+8]
       29 GETUPVAL                         R4 5
       30 GETUPVAL                         R5 4
       31 LOADK                            R7 K0 ["Title"]
       32 LOADK                            R8 K1 ["ErrorTextModeration"]
       33 NAMECALL                         R5 R5 K2 ["getText"]
       35 CALL                             R5 3 -1
       36 CALL                             R4 -1 0
       37 JUMPIFNOT                        R3 ; [+24]
       38 GETUPVAL                         R5 6
       39 GETTABLEKS                       R4 R5 K3 ["onAccept"]
       41 DUPTABLE                         R5 K6 [{"title", "description"}]
       42 GETUPVAL                         R7 1
       43 JUMPIFNOTEQKN                    R7 K7 [0] ; [+3]
       45 LOADNIL                          R6
       46 JUMP                             ; [+1]
       47 GETUPVAL                         R6 7
       48 SETTABLEKS                       R6 R5 K4 ["title"]
       50 GETUPVAL                         R7 2
       51 JUMPIFNOTEQKN                    R7 K7 [0] ; [+3]
       53 LOADNIL                          R6
       54 JUMP                             ; [+1]
       55 GETUPVAL                         R6 8
       56 SETTABLEKS                       R6 R5 K5 ["description"]
       58 CALL                             R4 1 0
       59 GETUPVAL                         R4 9
       60 LOADB                            R5 1
       61 CALL                             R4 1 0
       62 GETUPVAL                         R4 10
       63 LOADB                            R5 0
       64 CALL                             R4 1 0
       65 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["all"]
        6 NEWTABLE                         R1 0 2
        8 GETUPVAL                         R3 2
        9 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K2 ["resolve"]
       14 LOADB                            R3 1
       15 CALL                             R2 1 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K3 ["getNotesValidation"]
       20 GETUPVAL                         R3 4
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 5
       23 JUMPIFNOTEQKN                    R4 K1 [0] ; [+7]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K2 ["resolve"]
       28 LOADB                            R4 1
       29 CALL                             R3 1 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R3 R4 K3 ["getNotesValidation"]
       34 GETUPVAL                         R4 6
       35 CALL                             R3 1 1
       36 SETLIST                          R1 R2 2 [1]
       38 CALL                             R0 1 1
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U9
       45 CAPTURE                          UPVAL U10
       46 CAPTURE                          UPVAL U11
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U0
       51 NAMECALL                         R0 R0 K4 ["andThen"]
       53 CALL                             R0 2 1
       54 NEWCLOSURE                       R2 P1
       55 CAPTURE                          UPVAL U0
       56 NAMECALL                         R0 R0 K5 ["catch"]
       58 CALL                             R0 2 0
       59 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onReject"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["useState"]
       14 GETIMPORT                        R5 K5 [Vector2.new]
       16 LOADN                            R6 226
       17 LOADN                            R7 51
       18 CALL                             R5 2 -1
       19 CALL                             R4 -1 2
       20 GETTABLEKS                       R7 R0 K6 ["notes"]
       22 JUMPIFNOT                        R7 ; [+10]
       23 GETTABLEKS                       R8 R0 K6 ["notes"]
       25 GETTABLEKS                       R7 R8 K7 ["title"]
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETTABLEKS                       R7 R0 K6 ["notes"]
       30 GETTABLEKS                       R6 R7 K7 ["title"]
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K8 [""]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K2 ["useState"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 2
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K2 ["useState"]
       42 LOADNIL                          R10
       43 CALL                             R9 1 2
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R11 R12 K2 ["useState"]
       47 LOADN                            R12 0
       48 CALL                             R11 1 2
       49 GETTABLEKS                       R14 R0 K6 ["notes"]
       51 JUMPIFNOT                        R14 ; [+10]
       52 GETTABLEKS                       R15 R0 K6 ["notes"]
       54 GETTABLEKS                       R14 R15 K9 ["description"]
       56 JUMPIFNOT                        R14 ; [+5]
       57 GETTABLEKS                       R14 R0 K6 ["notes"]
       59 GETTABLEKS                       R13 R14 K9 ["description"]
       61 JUMP                             ; [+1]
       62 LOADK                            R13 K8 [""]
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R14 R15 K2 ["useState"]
       66 MOVE                             R15 R13
       67 CALL                             R14 1 2
       68 GETUPVAL                         R17 1
       69 GETTABLEKS                       R16 R17 K2 ["useState"]
       71 LOADNIL                          R17
       72 CALL                             R16 1 2
       73 GETUPVAL                         R19 1
       74 GETTABLEKS                       R18 R19 K2 ["useState"]
       76 LOADN                            R19 0
       77 CALL                             R18 1 2
       78 GETUPVAL                         R21 1
       79 GETTABLEKS                       R20 R21 K2 ["useState"]
       81 LOADB                            R21 0
       82 CALL                             R20 1 2
       83 GETUPVAL                         R23 1
       84 GETTABLEKS                       R22 R23 K2 ["useState"]
       86 LOADB                            R23 0
       87 CALL                             R22 1 2
       88 LOADK                            R24 K8 [""]
       89 LOADK                            R25 K8 [""]
       90 GETTABLEKS                       R26 R0 K10 ["variant"]
       92 JUMPIFNOTEQKS                    R26 K11 ["Edit"] ; [+14]
       94 LOADK                            R28 K12 ["Title"]
       95 LOADK                            R29 K13 ["EditVersionNotes"]
       96 NAMECALL                         R26 R3 K14 ["getText"]
       98 CALL                             R26 3 1
       99 MOVE                             R24 R26
      100 LOADK                            R28 K15 ["Action"]
      101 LOADK                            R29 K16 ["Save"]
      102 NAMECALL                         R26 R3 K14 ["getText"]
      104 CALL                             R26 3 1
      105 MOVE                             R25 R26
      106 JUMP                             ; [+33]
      107 GETTABLEKS                       R26 R0 K10 ["variant"]
      109 JUMPIFNOTEQKS                    R26 K16 ["Save"] ; [+14]
      111 LOADK                            R28 K12 ["Title"]
      112 LOADK                            R29 K17 ["SaveWithVersionNotes"]
      113 NAMECALL                         R26 R3 K14 ["getText"]
      115 CALL                             R26 3 1
      116 MOVE                             R24 R26
      117 LOADK                            R28 K15 ["Action"]
      118 LOADK                            R29 K16 ["Save"]
      119 NAMECALL                         R26 R3 K14 ["getText"]
      121 CALL                             R26 3 1
      122 MOVE                             R25 R26
      123 JUMP                             ; [+16]
      124 GETTABLEKS                       R26 R0 K10 ["variant"]
      126 JUMPIFNOTEQKS                    R26 K18 ["Publish"] ; [+13]
      128 LOADK                            R28 K12 ["Title"]
      129 LOADK                            R29 K19 ["PublishWithVersionNotes"]
      130 NAMECALL                         R26 R3 K14 ["getText"]
      132 CALL                             R26 3 1
      133 MOVE                             R24 R26
      134 LOADK                            R28 K15 ["Action"]
      135 LOADK                            R29 K18 ["Publish"]
      136 NAMECALL                         R26 R3 K14 ["getText"]
      138 CALL                             R26 3 1
      139 MOVE                             R25 R26
      140 GETUPVAL                         R27 1
      141 GETTABLEKS                       R26 R27 K20 ["useEffect"]
      143 NEWCLOSURE                       R27 P0
      144 CAPTURE                          VAL R7
      145 CAPTURE                          UPVAL U4
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 NEWTABLE                         R28 0 1
      151 MOVE                             R29 R7
      152 SETLIST                          R28 R29 1 [1]
      154 CALL                             R26 2 0
      155 GETUPVAL                         R27 1
      156 GETTABLEKS                       R26 R27 K20 ["useEffect"]
      158 NEWCLOSURE                       R27 P1
      159 CAPTURE                          VAL R14
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R3
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          VAL R19
      165 NEWTABLE                         R28 0 1
      167 MOVE                             R29 R14
      168 SETLIST                          R28 R29 1 [1]
      170 CALL                             R26 2 0
      171 GETUPVAL                         R27 1
      172 GETTABLEKS                       R26 R27 K21 ["useCallback"]
      174 NEWCLOSURE                       R27 P2
      175 CAPTURE                          VAL R23
      176 CAPTURE                          UPVAL U7
      177 CAPTURE                          UPVAL U8
      178 NEWTABLE                         R28 0 0
      180 CALL                             R26 2 1
      181 GETUPVAL                         R28 1
      182 GETTABLEKS                       R27 R28 K21 ["useCallback"]
      184 NEWCLOSURE                       R28 P3
      185 CAPTURE                          UPVAL U7
      186 CAPTURE                          UPVAL U9
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R22
      191 NEWTABLE                         R29 0 4
      193 GETTABLEKS                       R30 R0 K10 ["variant"]
      195 MOVE                             R31 R11
      196 MOVE                             R32 R18
      197 MOVE                             R33 R22
      198 SETLIST                          R29 R30 4 [1]
      200 CALL                             R27 2 1
      201 GETUPVAL                         R29 1
      202 GETTABLEKS                       R28 R29 K21 ["useCallback"]
      204 NEWCLOSURE                       R29 P4
      205 CAPTURE                          VAL R21
      206 CAPTURE                          UPVAL U10
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R27
      218 NEWTABLE                         R30 0 6
      220 MOVE                             R31 R7
      221 MOVE                             R32 R14
      222 MOVE                             R33 R11
      223 MOVE                             R34 R18
      224 MOVE                             R35 R27
      225 MOVE                             R36 R26
      226 SETLIST                          R30 R31 6 [1]
      228 CALL                             R28 2 1
      229 GETUPVAL                         R30 1
      230 GETTABLEKS                       R29 R30 K21 ["useCallback"]
      232 NEWCLOSURE                       R30 P5
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R27
      235 NEWTABLE                         R31 0 1
      237 MOVE                             R32 R27
      238 SETLIST                          R31 R32 1 [1]
      240 CALL                             R29 2 1
      241 GETUPVAL                         R31 1
      242 GETTABLEKS                       R30 R31 K21 ["useCallback"]
      244 NEWCLOSURE                       R31 P6
      245 CAPTURE                          VAL R5
      246 NEWTABLE                         R32 0 0
      248 CALL                             R30 2 1
      249 GETUPVAL                         R32 1
      250 GETTABLEKS                       R31 R32 K21 ["useCallback"]
      252 NEWCLOSURE                       R32 P7
      253 CAPTURE                          VAL R8
      254 CAPTURE                          UPVAL U11
      255 NEWTABLE                         R33 0 0
      257 CALL                             R31 2 1
      258 GETUPVAL                         R33 1
      259 GETTABLEKS                       R32 R33 K22 ["createElement"]
      261 GETUPVAL                         R35 12
      262 GETTABLEKS                       R34 R35 K23 ["UI"]
      264 GETTABLEKS                       R33 R34 K24 ["Dialog"]
      266 DUPTABLE                         R34 K30 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
      267 SETTABLEKS                       R24 R34 K12 ["Title"]
      269 LOADB                            R35 1
      270 SETTABLEKS                       R35 R34 K25 ["Enabled"]
      272 LOADB                            R35 1
      273 SETTABLEKS                       R35 R34 K26 ["Modal"]
      275 LOADB                            R35 0
      276 SETTABLEKS                       R35 R34 K27 ["Resizable"]
      278 SETTABLEKS                       R4 R34 K28 ["Size"]
      280 SETTABLEKS                       R29 R34 K29 ["OnClose"]
      282 DUPTABLE                         R35 K33 [{"StyleLink", "MainView"}]
      283 GETUPVAL                         R37 1
      284 GETTABLEKS                       R36 R37 K22 ["createElement"]
      286 LOADK                            R37 K31 ["StyleLink"]
      287 DUPTABLE                         R38 K35 [{"StyleSheet"}]
      288 GETUPVAL                         R39 13
      289 CALL                             R39 0 1
      290 SETTABLEKS                       R39 R38 K34 ["StyleSheet"]
      292 CALL                             R36 2 1
      293 SETTABLEKS                       R36 R35 K31 ["StyleLink"]
      295 GETUPVAL                         R37 1
      296 GETTABLEKS                       R36 R37 K22 ["createElement"]
      298 GETUPVAL                         R38 14
      299 GETTABLEKS                       R37 R38 K36 ["View"]
      301 DUPTABLE                         R38 K39 [{"tag", "onAbsoluteSizeChanged"}]
      302 LOADK                            R39 K40 ["size-0-0 auto-xy col gap-small padding-small"]
      303 SETTABLEKS                       R39 R38 K37 ["tag"]
      305 SETTABLEKS                       R30 R38 K38 ["onAbsoluteSizeChanged"]
      307 DUPTABLE                         R39 K43 [{"Body", "Footer"}]
      308 GETUPVAL                         R41 1
      309 GETTABLEKS                       R40 R41 K22 ["createElement"]
      311 GETUPVAL                         R42 14
      312 GETTABLEKS                       R41 R42 K36 ["View"]
      314 DUPTABLE                         R42 K46 [{"tag", "testId", "LayoutOrder"}]
      315 LOADK                            R43 K47 ["size-full-0 auto-y col gap-medium padding-small"]
      316 SETTABLEKS                       R43 R42 K37 ["tag"]
      318 LOADK                            R43 K48 ["--notes-dialog-body"]
      319 SETTABLEKS                       R43 R42 K44 ["testId"]
      321 MOVE                             R43 R1
      322 CALL                             R43 0 1
      323 SETTABLEKS                       R43 R42 K45 ["LayoutOrder"]
      325 DUPTABLE                         R43 K51 [{"TitleInput", "DescriptionInput"}]
      326 GETUPVAL                         R45 1
      327 GETTABLEKS                       R44 R45 K22 ["createElement"]
      329 GETUPVAL                         R46 14
      330 GETTABLEKS                       R45 R46 K52 ["TextInput"]
      332 DUPTABLE                         R46 K62 [{"text", "onChanged", "label", "hint", "hasError", "isDisabled", "width", "numLines", "size", "LayoutOrder"}]
      333 SETTABLEKS                       R7 R46 K53 ["text"]
      335 SETTABLEKS                       R31 R46 K54 ["onChanged"]
      337 LOADK                            R48 K63 ["%* *"]
      338 LOADK                            R52 K64 ["Label"]
      339 LOADK                            R53 K65 ["VersionName"]
      340 NAMECALL                         R50 R3 K14 ["getText"]
      342 CALL                             R50 3 1
      343 NAMECALL                         R48 R48 K66 ["format"]
      345 CALL                             R48 2 1
      346 MOVE                             R47 R48
      347 SETTABLEKS                       R47 R46 K55 ["label"]
      349 ORK                              R47 R9 K67 []
      350 SETTABLEKS                       R47 R46 K56 ["hint"]
      352 JUMPIFNOTEQKNIL                  R9 ; [+2]
      354 LOADB                            R47 0 +1
      355 LOADB                            R47 1
      356 SETTABLEKS                       R47 R46 K57 ["hasError"]
      358 SETTABLEKS                       R20 R46 K58 ["isDisabled"]
      360 GETIMPORT                        R47 K69 [UDim.new]
      362 LOADN                            R48 0
      363 LOADN                            R49 194
      364 CALL                             R47 2 1
      365 SETTABLEKS                       R47 R46 K59 ["width"]
      367 LOADN                            R47 1
      368 SETTABLEKS                       R47 R46 K60 ["numLines"]
      370 GETUPVAL                         R50 14
      371 GETTABLEKS                       R49 R50 K70 ["Enums"]
      373 GETTABLEKS                       R48 R49 K71 ["InputSize"]
      375 GETTABLEKS                       R47 R48 K72 ["Medium"]
      377 SETTABLEKS                       R47 R46 K61 ["size"]
      379 MOVE                             R47 R1
      380 CALL                             R47 0 1
      381 SETTABLEKS                       R47 R46 K45 ["LayoutOrder"]
      383 CALL                             R44 2 1
      384 SETTABLEKS                       R44 R43 K49 ["TitleInput"]
      386 GETUPVAL                         R45 1
      387 GETTABLEKS                       R44 R45 K22 ["createElement"]
      389 GETUPVAL                         R46 14
      390 GETTABLEKS                       R45 R46 K73 ["TextArea"]
      392 DUPTABLE                         R46 K62 [{"text", "onChanged", "label", "hint", "hasError", "isDisabled", "width", "numLines", "size", "LayoutOrder"}]
      393 SETTABLEKS                       R14 R46 K53 ["text"]
      395 SETTABLEKS                       R15 R46 K54 ["onChanged"]
      397 LOADK                            R49 K64 ["Label"]
      398 LOADK                            R50 K74 ["VersionNotes"]
      399 NAMECALL                         R47 R3 K14 ["getText"]
      401 CALL                             R47 3 1
      402 SETTABLEKS                       R47 R46 K55 ["label"]
      404 ORK                              R47 R16 K67 []
      405 SETTABLEKS                       R47 R46 K56 ["hint"]
      407 JUMPIFNOTEQKNIL                  R16 ; [+2]
      409 LOADB                            R47 0 +1
      410 LOADB                            R47 1
      411 SETTABLEKS                       R47 R46 K57 ["hasError"]
      413 SETTABLEKS                       R20 R46 K58 ["isDisabled"]
      415 GETIMPORT                        R47 K69 [UDim.new]
      417 LOADN                            R48 0
      418 LOADN                            R49 194
      419 CALL                             R47 2 1
      420 SETTABLEKS                       R47 R46 K59 ["width"]
      422 LOADN                            R47 6
      423 SETTABLEKS                       R47 R46 K60 ["numLines"]
      425 GETUPVAL                         R50 14
      426 GETTABLEKS                       R49 R50 K70 ["Enums"]
      428 GETTABLEKS                       R48 R49 K71 ["InputSize"]
      430 GETTABLEKS                       R47 R48 K72 ["Medium"]
      432 SETTABLEKS                       R47 R46 K61 ["size"]
      434 MOVE                             R47 R1
      435 CALL                             R47 0 1
      436 SETTABLEKS                       R47 R46 K45 ["LayoutOrder"]
      438 CALL                             R44 2 1
      439 SETTABLEKS                       R44 R43 K50 ["DescriptionInput"]
      441 CALL                             R40 3 1
      442 SETTABLEKS                       R40 R39 K41 ["Body"]
      444 GETUPVAL                         R41 1
      445 GETTABLEKS                       R40 R41 K22 ["createElement"]
      447 GETUPVAL                         R42 14
      448 GETTABLEKS                       R41 R42 K36 ["View"]
      450 DUPTABLE                         R42 K75 [{"tag", "LayoutOrder"}]
      451 LOADK                            R43 K76 ["size-full-0 auto-y row gap-small"]
      452 SETTABLEKS                       R43 R42 K37 ["tag"]
      454 MOVE                             R43 R1
      455 CALL                             R43 0 1
      456 SETTABLEKS                       R43 R42 K45 ["LayoutOrder"]
      458 DUPTABLE                         R43 K80 [{"Spacer", "CancelButton", "AcceptButton"}]
      459 GETUPVAL                         R45 1
      460 GETTABLEKS                       R44 R45 K22 ["createElement"]
      462 GETUPVAL                         R46 14
      463 GETTABLEKS                       R45 R46 K36 ["View"]
      465 DUPTABLE                         R46 K75 [{"tag", "LayoutOrder"}]
      466 LOADK                            R47 K81 ["fill"]
      467 SETTABLEKS                       R47 R46 K37 ["tag"]
      469 MOVE                             R47 R1
      470 CALL                             R47 0 1
      471 SETTABLEKS                       R47 R46 K45 ["LayoutOrder"]
      473 CALL                             R44 2 1
      474 SETTABLEKS                       R44 R43 K77 ["Spacer"]
      476 GETUPVAL                         R45 1
      477 GETTABLEKS                       R44 R45 K22 ["createElement"]
      479 GETUPVAL                         R46 14
      480 GETTABLEKS                       R45 R46 K82 ["Button"]
      482 DUPTABLE                         R46 K84 [{"text", "isDisabled", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      483 LOADK                            R49 K15 ["Action"]
      484 LOADK                            R50 K85 ["Cancel"]
      485 NAMECALL                         R47 R3 K14 ["getText"]
      487 CALL                             R47 3 1
      488 SETTABLEKS                       R47 R46 K53 ["text"]
      490 SETTABLEKS                       R20 R46 K58 ["isDisabled"]
      492 GETUPVAL                         R50 14
      493 GETTABLEKS                       R49 R50 K70 ["Enums"]
      495 GETTABLEKS                       R48 R49 K86 ["ButtonVariant"]
      497 GETTABLEKS                       R47 R48 K87 ["Standard"]
      499 SETTABLEKS                       R47 R46 K10 ["variant"]
      501 SETTABLEKS                       R29 R46 K83 ["onActivated"]
      503 GETUPVAL                         R50 14
      504 GETTABLEKS                       R49 R50 K70 ["Enums"]
      506 GETTABLEKS                       R48 R49 K71 ["InputSize"]
      508 GETTABLEKS                       R47 R48 K88 ["Small"]
      510 SETTABLEKS                       R47 R46 K61 ["size"]
      512 LOADK                            R47 K89 ["--notes-dialog-cancel-button"]
      513 SETTABLEKS                       R47 R46 K44 ["testId"]
      515 MOVE                             R47 R1
      516 CALL                             R47 0 1
      517 SETTABLEKS                       R47 R46 K45 ["LayoutOrder"]
      519 CALL                             R44 2 1
      520 SETTABLEKS                       R44 R43 K78 ["CancelButton"]
      522 GETUPVAL                         R45 1
      523 GETTABLEKS                       R44 R45 K22 ["createElement"]
      525 GETUPVAL                         R46 14
      526 GETTABLEKS                       R45 R46 K82 ["Button"]
      528 DUPTABLE                         R46 K90 [{"text", "variant", "onActivated", "size", "isDisabled", "testId", "LayoutOrder"}]
      529 SETTABLEKS                       R25 R46 K53 ["text"]
      531 GETUPVAL                         R50 14
      532 GETTABLEKS                       R49 R50 K70 ["Enums"]
      534 GETTABLEKS                       R48 R49 K86 ["ButtonVariant"]
      536 GETTABLEKS                       R47 R48 K91 ["Emphasis"]
      538 SETTABLEKS                       R47 R46 K10 ["variant"]
      540 SETTABLEKS                       R28 R46 K83 ["onActivated"]
      542 GETUPVAL                         R50 14
      543 GETTABLEKS                       R49 R50 K70 ["Enums"]
      545 GETTABLEKS                       R48 R49 K71 ["InputSize"]
      547 GETTABLEKS                       R47 R48 K88 ["Small"]
      549 SETTABLEKS                       R47 R46 K61 ["size"]
      551 MOVE                             R47 R20
      552 JUMPIF                           R47 ; [+10]
      553 LOADB                            R47 1
      554 JUMPIFEQKN                       R11 K92 [0] ; [+8]
      556 LOADB                            R47 1
      557 JUMPIFNOTEQKNIL                  R9 ; [+5]
      559 JUMPIFNOTEQKNIL                  R16 ; [+2]
      561 LOADB                            R47 0 +1
      562 LOADB                            R47 1
      563 SETTABLEKS                       R47 R46 K58 ["isDisabled"]
      565 LOADK                            R47 K93 ["--notes-dialog-accept-button"]
      566 SETTABLEKS                       R47 R46 K44 ["testId"]
      568 MOVE                             R47 R1
      569 CALL                             R47 0 1
      570 SETTABLEKS                       R47 R46 K45 ["LayoutOrder"]
      572 CALL                             R44 2 1
      573 SETTABLEKS                       R44 R43 K79 ["AcceptButton"]
      575 CALL                             R40 3 1
      576 SETTABLEKS                       R40 R39 K42 ["Footer"]
      578 CALL                             R36 3 1
      579 SETTABLEKS                       R36 R35 K32 ["MainView"]
      581 CALL                             R32 3 -1
      582 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Promise"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R8 K12 ["TelemetryProtocol"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R5 K13 ["ContextServices"]
       51 GETTABLEKS                       R8 R7 K14 ["Localization"]
       53 GETTABLEKS                       R10 R0 K15 ["Src"]
       55 GETTABLEKS                       R9 R10 K16 ["Contexts"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K17 ["NetworkContext"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R6 K18 ["new"]
       64 CALL                             R11 0 1
       65 GETTABLEKS                       R13 R0 K15 ["Src"]
       67 GETTABLEKS                       R12 R13 K19 ["Events"]
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R12 K20 ["AddNotesEvent"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R12 K21 ["TextModerationEvent"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K5 [require]
       81 GETTABLEKS                       R18 R0 K22 ["Bin"]
       83 GETTABLEKS                       R17 R18 K23 ["Common"]
       85 GETTABLEKS                       R16 R17 K24 ["flags"]
       87 CALL                             R15 1 1
       88 GETTABLEKS                       R16 R2 K25 ["createNextOrder"]
       90 GETTABLEKS                       R18 R3 K26 ["Hooks"]
       92 GETTABLEKS                       R17 R18 K27 ["useStyleSheet"]
       94 GETIMPORT                        R18 K5 [require]
       96 GETTABLEKS                       R20 R0 K15 ["Src"]
       98 GETTABLEKS                       R19 R20 K28 ["Types"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R19 R15 K29 ["FIntPVHMaxTitleChars"]
      103 GETTABLEKS                       R20 R15 K30 ["FIntPVHMaxDescriptionChars"]
      105 GETTABLEKS                       R21 R15 K31 ["FIntPVHMaxDescriptionLines"]
      107 DUPCLOSURE                       R22 K32 [PROTO_0]
      108 DUPCLOSURE                       R23 K33 [PROTO_1]
      109 DUPCLOSURE                       R24 K34 [PROTO_2]
      110 DUPCLOSURE                       R25 K35 [PROTO_13]
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R3
      126 RETURN                           R25 1
