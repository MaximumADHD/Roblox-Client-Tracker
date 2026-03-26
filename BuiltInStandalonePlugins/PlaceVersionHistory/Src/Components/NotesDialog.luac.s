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
      106 JUMP                             ; [+50]
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
      123 JUMP                             ; [+33]
      124 GETTABLEKS                       R26 R0 K10 ["variant"]
      126 JUMPIFNOTEQKS                    R26 K18 ["Publish"] ; [+14]
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
      140 JUMP                             ; [+16]
      141 GETTABLEKS                       R26 R0 K10 ["variant"]
      143 JUMPIFNOTEQKS                    R26 K20 ["Add"] ; [+13]
      145 LOADK                            R28 K12 ["Title"]
      146 LOADK                            R29 K21 ["AddVersionNotes"]
      147 NAMECALL                         R26 R3 K14 ["getText"]
      149 CALL                             R26 3 1
      150 MOVE                             R24 R26
      151 LOADK                            R28 K15 ["Action"]
      152 LOADK                            R29 K16 ["Save"]
      153 NAMECALL                         R26 R3 K14 ["getText"]
      155 CALL                             R26 3 1
      156 MOVE                             R25 R26
      157 GETUPVAL                         R27 1
      158 GETTABLEKS                       R26 R27 K22 ["useEffect"]
      160 NEWCLOSURE                       R27 P0
      161 CAPTURE                          VAL R7
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R12
      166 NEWTABLE                         R28 0 1
      168 MOVE                             R29 R7
      169 SETLIST                          R28 R29 1 [1]
      171 CALL                             R26 2 0
      172 GETUPVAL                         R27 1
      173 GETTABLEKS                       R26 R27 K22 ["useEffect"]
      175 NEWCLOSURE                       R27 P1
      176 CAPTURE                          VAL R14
      177 CAPTURE                          UPVAL U5
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R3
      180 CAPTURE                          UPVAL U6
      181 CAPTURE                          VAL R19
      182 NEWTABLE                         R28 0 1
      184 MOVE                             R29 R14
      185 SETLIST                          R28 R29 1 [1]
      187 CALL                             R26 2 0
      188 GETUPVAL                         R27 1
      189 GETTABLEKS                       R26 R27 K23 ["useCallback"]
      191 NEWCLOSURE                       R27 P2
      192 CAPTURE                          VAL R23
      193 CAPTURE                          UPVAL U7
      194 CAPTURE                          UPVAL U8
      195 NEWTABLE                         R28 0 0
      197 CALL                             R26 2 1
      198 GETUPVAL                         R28 1
      199 GETTABLEKS                       R27 R28 K23 ["useCallback"]
      201 NEWCLOSURE                       R28 P3
      202 CAPTURE                          UPVAL U7
      203 CAPTURE                          UPVAL U9
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R22
      208 NEWTABLE                         R29 0 4
      210 GETTABLEKS                       R30 R0 K10 ["variant"]
      212 MOVE                             R31 R11
      213 MOVE                             R32 R18
      214 MOVE                             R33 R22
      215 SETLIST                          R29 R30 4 [1]
      217 CALL                             R27 2 1
      218 GETUPVAL                         R29 1
      219 GETTABLEKS                       R28 R29 K23 ["useCallback"]
      221 NEWCLOSURE                       R29 P4
      222 CAPTURE                          VAL R21
      223 CAPTURE                          UPVAL U10
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R27
      235 NEWTABLE                         R30 0 6
      237 MOVE                             R31 R7
      238 MOVE                             R32 R14
      239 MOVE                             R33 R11
      240 MOVE                             R34 R18
      241 MOVE                             R35 R27
      242 MOVE                             R36 R26
      243 SETLIST                          R30 R31 6 [1]
      245 CALL                             R28 2 1
      246 GETUPVAL                         R30 1
      247 GETTABLEKS                       R29 R30 K23 ["useCallback"]
      249 NEWCLOSURE                       R30 P5
      250 CAPTURE                          VAL R0
      251 CAPTURE                          VAL R27
      252 NEWTABLE                         R31 0 1
      254 MOVE                             R32 R27
      255 SETLIST                          R31 R32 1 [1]
      257 CALL                             R29 2 1
      258 GETUPVAL                         R31 1
      259 GETTABLEKS                       R30 R31 K23 ["useCallback"]
      261 NEWCLOSURE                       R31 P6
      262 CAPTURE                          VAL R5
      263 NEWTABLE                         R32 0 0
      265 CALL                             R30 2 1
      266 GETUPVAL                         R32 1
      267 GETTABLEKS                       R31 R32 K23 ["useCallback"]
      269 NEWCLOSURE                       R32 P7
      270 CAPTURE                          VAL R8
      271 CAPTURE                          UPVAL U11
      272 NEWTABLE                         R33 0 0
      274 CALL                             R31 2 1
      275 GETUPVAL                         R33 1
      276 GETTABLEKS                       R32 R33 K24 ["createElement"]
      278 GETUPVAL                         R35 12
      279 GETTABLEKS                       R34 R35 K25 ["UI"]
      281 GETTABLEKS                       R33 R34 K26 ["Dialog"]
      283 DUPTABLE                         R34 K32 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
      284 SETTABLEKS                       R24 R34 K12 ["Title"]
      286 LOADB                            R35 1
      287 SETTABLEKS                       R35 R34 K27 ["Enabled"]
      289 LOADB                            R35 1
      290 SETTABLEKS                       R35 R34 K28 ["Modal"]
      292 LOADB                            R35 0
      293 SETTABLEKS                       R35 R34 K29 ["Resizable"]
      295 SETTABLEKS                       R4 R34 K30 ["Size"]
      297 SETTABLEKS                       R29 R34 K31 ["OnClose"]
      299 DUPTABLE                         R35 K35 [{"StyleLink", "MainView"}]
      300 GETUPVAL                         R37 1
      301 GETTABLEKS                       R36 R37 K24 ["createElement"]
      303 LOADK                            R37 K33 ["StyleLink"]
      304 DUPTABLE                         R38 K37 [{"StyleSheet"}]
      305 GETUPVAL                         R39 13
      306 CALL                             R39 0 1
      307 SETTABLEKS                       R39 R38 K36 ["StyleSheet"]
      309 CALL                             R36 2 1
      310 SETTABLEKS                       R36 R35 K33 ["StyleLink"]
      312 GETUPVAL                         R37 1
      313 GETTABLEKS                       R36 R37 K24 ["createElement"]
      315 GETUPVAL                         R38 14
      316 GETTABLEKS                       R37 R38 K38 ["View"]
      318 DUPTABLE                         R38 K41 [{"tag", "onAbsoluteSizeChanged"}]
      319 LOADK                            R39 K42 ["size-0-0 auto-xy col gap-small padding-small"]
      320 SETTABLEKS                       R39 R38 K39 ["tag"]
      322 SETTABLEKS                       R30 R38 K40 ["onAbsoluteSizeChanged"]
      324 DUPTABLE                         R39 K45 [{"Body", "Footer"}]
      325 GETUPVAL                         R41 1
      326 GETTABLEKS                       R40 R41 K24 ["createElement"]
      328 GETUPVAL                         R42 14
      329 GETTABLEKS                       R41 R42 K38 ["View"]
      331 DUPTABLE                         R42 K48 [{"tag", "testId", "LayoutOrder"}]
      332 LOADK                            R43 K49 ["size-full-0 auto-y col gap-medium padding-small"]
      333 SETTABLEKS                       R43 R42 K39 ["tag"]
      335 LOADK                            R43 K50 ["--notes-dialog-body"]
      336 SETTABLEKS                       R43 R42 K46 ["testId"]
      338 MOVE                             R43 R1
      339 CALL                             R43 0 1
      340 SETTABLEKS                       R43 R42 K47 ["LayoutOrder"]
      342 DUPTABLE                         R43 K53 [{"TitleInput", "DescriptionInput"}]
      343 GETUPVAL                         R45 1
      344 GETTABLEKS                       R44 R45 K24 ["createElement"]
      346 GETUPVAL                         R46 14
      347 GETTABLEKS                       R45 R46 K54 ["TextArea"]
      349 DUPTABLE                         R46 K64 [{"text", "onChanged", "label", "hint", "hasError", "isDisabled", "width", "numLines", "size", "LayoutOrder"}]
      350 SETTABLEKS                       R7 R46 K55 ["text"]
      352 SETTABLEKS                       R31 R46 K56 ["onChanged"]
      354 LOADK                            R48 K65 ["%* *"]
      355 LOADK                            R52 K66 ["Label"]
      356 LOADK                            R53 K67 ["VersionName"]
      357 NAMECALL                         R50 R3 K14 ["getText"]
      359 CALL                             R50 3 1
      360 NAMECALL                         R48 R48 K68 ["format"]
      362 CALL                             R48 2 1
      363 MOVE                             R47 R48
      364 SETTABLEKS                       R47 R46 K57 ["label"]
      366 ORK                              R47 R9 K69 []
      367 SETTABLEKS                       R47 R46 K58 ["hint"]
      369 JUMPIFNOTEQKNIL                  R9 ; [+2]
      371 LOADB                            R47 0 +1
      372 LOADB                            R47 1
      373 SETTABLEKS                       R47 R46 K59 ["hasError"]
      375 SETTABLEKS                       R20 R46 K60 ["isDisabled"]
      377 GETIMPORT                        R47 K71 [UDim.new]
      379 LOADN                            R48 0
      380 LOADN                            R49 194
      381 CALL                             R47 2 1
      382 SETTABLEKS                       R47 R46 K61 ["width"]
      384 LOADN                            R47 1
      385 SETTABLEKS                       R47 R46 K62 ["numLines"]
      387 GETUPVAL                         R50 14
      388 GETTABLEKS                       R49 R50 K72 ["Enums"]
      390 GETTABLEKS                       R48 R49 K73 ["InputSize"]
      392 GETTABLEKS                       R47 R48 K74 ["Medium"]
      394 SETTABLEKS                       R47 R46 K63 ["size"]
      396 MOVE                             R47 R1
      397 CALL                             R47 0 1
      398 SETTABLEKS                       R47 R46 K47 ["LayoutOrder"]
      400 CALL                             R44 2 1
      401 SETTABLEKS                       R44 R43 K51 ["TitleInput"]
      403 GETUPVAL                         R45 1
      404 GETTABLEKS                       R44 R45 K24 ["createElement"]
      406 GETUPVAL                         R46 14
      407 GETTABLEKS                       R45 R46 K54 ["TextArea"]
      409 DUPTABLE                         R46 K64 [{"text", "onChanged", "label", "hint", "hasError", "isDisabled", "width", "numLines", "size", "LayoutOrder"}]
      410 SETTABLEKS                       R14 R46 K55 ["text"]
      412 SETTABLEKS                       R15 R46 K56 ["onChanged"]
      414 LOADK                            R49 K66 ["Label"]
      415 LOADK                            R50 K75 ["VersionNotes"]
      416 NAMECALL                         R47 R3 K14 ["getText"]
      418 CALL                             R47 3 1
      419 SETTABLEKS                       R47 R46 K57 ["label"]
      421 ORK                              R47 R16 K69 []
      422 SETTABLEKS                       R47 R46 K58 ["hint"]
      424 JUMPIFNOTEQKNIL                  R16 ; [+2]
      426 LOADB                            R47 0 +1
      427 LOADB                            R47 1
      428 SETTABLEKS                       R47 R46 K59 ["hasError"]
      430 SETTABLEKS                       R20 R46 K60 ["isDisabled"]
      432 GETIMPORT                        R47 K71 [UDim.new]
      434 LOADN                            R48 0
      435 LOADN                            R49 194
      436 CALL                             R47 2 1
      437 SETTABLEKS                       R47 R46 K61 ["width"]
      439 LOADN                            R47 6
      440 SETTABLEKS                       R47 R46 K62 ["numLines"]
      442 GETUPVAL                         R50 14
      443 GETTABLEKS                       R49 R50 K72 ["Enums"]
      445 GETTABLEKS                       R48 R49 K73 ["InputSize"]
      447 GETTABLEKS                       R47 R48 K74 ["Medium"]
      449 SETTABLEKS                       R47 R46 K63 ["size"]
      451 MOVE                             R47 R1
      452 CALL                             R47 0 1
      453 SETTABLEKS                       R47 R46 K47 ["LayoutOrder"]
      455 CALL                             R44 2 1
      456 SETTABLEKS                       R44 R43 K52 ["DescriptionInput"]
      458 CALL                             R40 3 1
      459 SETTABLEKS                       R40 R39 K43 ["Body"]
      461 GETUPVAL                         R41 1
      462 GETTABLEKS                       R40 R41 K24 ["createElement"]
      464 GETUPVAL                         R42 14
      465 GETTABLEKS                       R41 R42 K38 ["View"]
      467 DUPTABLE                         R42 K76 [{"tag", "LayoutOrder"}]
      468 LOADK                            R43 K77 ["size-full-0 auto-y row gap-small"]
      469 SETTABLEKS                       R43 R42 K39 ["tag"]
      471 MOVE                             R43 R1
      472 CALL                             R43 0 1
      473 SETTABLEKS                       R43 R42 K47 ["LayoutOrder"]
      475 DUPTABLE                         R43 K81 [{"Spacer", "CancelButton", "AcceptButton"}]
      476 GETUPVAL                         R45 1
      477 GETTABLEKS                       R44 R45 K24 ["createElement"]
      479 GETUPVAL                         R46 14
      480 GETTABLEKS                       R45 R46 K38 ["View"]
      482 DUPTABLE                         R46 K76 [{"tag", "LayoutOrder"}]
      483 LOADK                            R47 K82 ["fill"]
      484 SETTABLEKS                       R47 R46 K39 ["tag"]
      486 MOVE                             R47 R1
      487 CALL                             R47 0 1
      488 SETTABLEKS                       R47 R46 K47 ["LayoutOrder"]
      490 CALL                             R44 2 1
      491 SETTABLEKS                       R44 R43 K78 ["Spacer"]
      493 GETUPVAL                         R45 1
      494 GETTABLEKS                       R44 R45 K24 ["createElement"]
      496 GETUPVAL                         R46 14
      497 GETTABLEKS                       R45 R46 K83 ["Button"]
      499 DUPTABLE                         R46 K85 [{"text", "isDisabled", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      500 LOADK                            R49 K15 ["Action"]
      501 LOADK                            R50 K86 ["Cancel"]
      502 NAMECALL                         R47 R3 K14 ["getText"]
      504 CALL                             R47 3 1
      505 SETTABLEKS                       R47 R46 K55 ["text"]
      507 SETTABLEKS                       R20 R46 K60 ["isDisabled"]
      509 GETUPVAL                         R50 14
      510 GETTABLEKS                       R49 R50 K72 ["Enums"]
      512 GETTABLEKS                       R48 R49 K87 ["ButtonVariant"]
      514 GETTABLEKS                       R47 R48 K88 ["Standard"]
      516 SETTABLEKS                       R47 R46 K10 ["variant"]
      518 SETTABLEKS                       R29 R46 K84 ["onActivated"]
      520 GETUPVAL                         R50 14
      521 GETTABLEKS                       R49 R50 K72 ["Enums"]
      523 GETTABLEKS                       R48 R49 K73 ["InputSize"]
      525 GETTABLEKS                       R47 R48 K89 ["Small"]
      527 SETTABLEKS                       R47 R46 K63 ["size"]
      529 LOADK                            R47 K90 ["--notes-dialog-cancel-button"]
      530 SETTABLEKS                       R47 R46 K46 ["testId"]
      532 MOVE                             R47 R1
      533 CALL                             R47 0 1
      534 SETTABLEKS                       R47 R46 K47 ["LayoutOrder"]
      536 CALL                             R44 2 1
      537 SETTABLEKS                       R44 R43 K79 ["CancelButton"]
      539 GETUPVAL                         R45 1
      540 GETTABLEKS                       R44 R45 K24 ["createElement"]
      542 GETUPVAL                         R46 14
      543 GETTABLEKS                       R45 R46 K83 ["Button"]
      545 DUPTABLE                         R46 K91 [{"text", "variant", "onActivated", "size", "isDisabled", "testId", "LayoutOrder"}]
      546 SETTABLEKS                       R25 R46 K55 ["text"]
      548 GETUPVAL                         R50 14
      549 GETTABLEKS                       R49 R50 K72 ["Enums"]
      551 GETTABLEKS                       R48 R49 K87 ["ButtonVariant"]
      553 GETTABLEKS                       R47 R48 K92 ["Emphasis"]
      555 SETTABLEKS                       R47 R46 K10 ["variant"]
      557 SETTABLEKS                       R28 R46 K84 ["onActivated"]
      559 GETUPVAL                         R50 14
      560 GETTABLEKS                       R49 R50 K72 ["Enums"]
      562 GETTABLEKS                       R48 R49 K73 ["InputSize"]
      564 GETTABLEKS                       R47 R48 K89 ["Small"]
      566 SETTABLEKS                       R47 R46 K63 ["size"]
      568 MOVE                             R47 R20
      569 JUMPIF                           R47 ; [+10]
      570 LOADB                            R47 1
      571 JUMPIFEQKN                       R11 K93 [0] ; [+8]
      573 LOADB                            R47 1
      574 JUMPIFNOTEQKNIL                  R9 ; [+5]
      576 JUMPIFNOTEQKNIL                  R16 ; [+2]
      578 LOADB                            R47 0 +1
      579 LOADB                            R47 1
      580 SETTABLEKS                       R47 R46 K60 ["isDisabled"]
      582 LOADK                            R47 K94 ["--notes-dialog-accept-button"]
      583 SETTABLEKS                       R47 R46 K46 ["testId"]
      585 MOVE                             R47 R1
      586 CALL                             R47 0 1
      587 SETTABLEKS                       R47 R46 K47 ["LayoutOrder"]
      589 CALL                             R44 2 1
      590 SETTABLEKS                       R44 R43 K80 ["AcceptButton"]
      592 CALL                             R40 3 1
      593 SETTABLEKS                       R40 R39 K44 ["Footer"]
      595 CALL                             R36 3 1
      596 SETTABLEKS                       R36 R35 K34 ["MainView"]
      598 CALL                             R32 3 -1
      599 RETURN                           R32 -1

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
