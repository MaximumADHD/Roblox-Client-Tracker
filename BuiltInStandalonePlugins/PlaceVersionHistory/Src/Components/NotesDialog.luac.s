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
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K6 ["variant"]
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
       38 GETUPVAL                         R4 6
       39 GETTABLEKS                       R4 R4 K3 ["onAccept"]
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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["all"]
        6 NEWTABLE                         R1 0 2
        8 GETUPVAL                         R3 2
        9 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["resolve"]
       14 LOADB                            R3 1
       15 CALL                             R2 1 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K3 ["getNotesValidation"]
       20 GETUPVAL                         R3 4
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 5
       23 JUMPIFNOTEQKN                    R4 K1 [0] ; [+7]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K2 ["resolve"]
       28 LOADB                            R4 1
       29 CALL                             R3 1 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K3 ["getNotesValidation"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReject"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 GETIMPORT                        R5 K5 [Vector2.new]
       16 LOADN                            R6 482
       17 LOADN                            R7 307
       18 CALL                             R5 2 -1
       19 CALL                             R4 -1 2
       20 GETTABLEKS                       R7 R0 K6 ["notes"]
       22 JUMPIFNOT                        R7 ; [+10]
       23 GETTABLEKS                       R7 R0 K6 ["notes"]
       25 GETTABLEKS                       R7 R7 K7 ["title"]
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETTABLEKS                       R6 R0 K6 ["notes"]
       30 GETTABLEKS                       R6 R6 K7 ["title"]
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K8 [""]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K2 ["useState"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 2
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K2 ["useState"]
       42 LOADNIL                          R10
       43 CALL                             R9 1 2
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K2 ["useState"]
       47 LOADN                            R12 0
       48 CALL                             R11 1 2
       49 GETTABLEKS                       R14 R0 K6 ["notes"]
       51 JUMPIFNOT                        R14 ; [+10]
       52 GETTABLEKS                       R14 R0 K6 ["notes"]
       54 GETTABLEKS                       R14 R14 K9 ["description"]
       56 JUMPIFNOT                        R14 ; [+5]
       57 GETTABLEKS                       R13 R0 K6 ["notes"]
       59 GETTABLEKS                       R13 R13 K9 ["description"]
       61 JUMP                             ; [+1]
       62 LOADK                            R13 K8 [""]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K2 ["useState"]
       66 MOVE                             R15 R13
       67 CALL                             R14 1 2
       68 GETUPVAL                         R16 1
       69 GETTABLEKS                       R16 R16 K2 ["useState"]
       71 LOADNIL                          R17
       72 CALL                             R16 1 2
       73 GETUPVAL                         R18 1
       74 GETTABLEKS                       R18 R18 K2 ["useState"]
       76 LOADN                            R19 0
       77 CALL                             R18 1 2
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R20 R20 K2 ["useState"]
       81 LOADB                            R21 0
       82 CALL                             R20 1 2
       83 GETUPVAL                         R22 1
       84 GETTABLEKS                       R22 R22 K2 ["useState"]
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
      157 GETUPVAL                         R26 1
      158 GETTABLEKS                       R26 R26 K22 ["useEffect"]
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
      172 GETUPVAL                         R26 1
      173 GETTABLEKS                       R26 R26 K22 ["useEffect"]
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
      188 GETUPVAL                         R26 1
      189 GETTABLEKS                       R26 R26 K23 ["useCallback"]
      191 NEWCLOSURE                       R27 P2
      192 CAPTURE                          VAL R23
      193 CAPTURE                          UPVAL U7
      194 CAPTURE                          UPVAL U8
      195 NEWTABLE                         R28 0 0
      197 CALL                             R26 2 1
      198 GETUPVAL                         R27 1
      199 GETTABLEKS                       R27 R27 K23 ["useCallback"]
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
      218 GETUPVAL                         R28 1
      219 GETTABLEKS                       R28 R28 K23 ["useCallback"]
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
      246 GETUPVAL                         R29 1
      247 GETTABLEKS                       R29 R29 K23 ["useCallback"]
      249 NEWCLOSURE                       R30 P5
      250 CAPTURE                          VAL R0
      251 CAPTURE                          VAL R27
      252 NEWTABLE                         R31 0 1
      254 MOVE                             R32 R27
      255 SETLIST                          R31 R32 1 [1]
      257 CALL                             R29 2 1
      258 GETUPVAL                         R30 1
      259 GETTABLEKS                       R30 R30 K23 ["useCallback"]
      261 NEWCLOSURE                       R31 P6
      262 CAPTURE                          VAL R5
      263 NEWTABLE                         R32 0 0
      265 CALL                             R30 2 1
      266 GETUPVAL                         R31 1
      267 GETTABLEKS                       R31 R31 K23 ["useCallback"]
      269 NEWCLOSURE                       R32 P7
      270 CAPTURE                          VAL R8
      271 CAPTURE                          UPVAL U11
      272 NEWTABLE                         R33 0 0
      274 CALL                             R31 2 1
      275 GETUPVAL                         R32 1
      276 GETTABLEKS                       R32 R32 K24 ["createElement"]
      278 GETUPVAL                         R33 12
      279 GETTABLEKS                       R33 R33 K25 ["UI"]
      281 GETTABLEKS                       R33 R33 K26 ["Dialog"]
      283 DUPTABLE                         R34 K34 [{["Title"], ["Enabled"] = True, ["Modal"] = True, ["Resizable"] = False, ["Size"], ["OnClose"]}]
      284 SETTABLEKS                       R24 R34 K12 ["Title"]
      286 SETTABLEKS                       R4 R34 K32 ["Size"]
      288 SETTABLEKS                       R29 R34 K33 ["OnClose"]
      290 DUPTABLE                         R35 K37 [{"StyleLink", "MainView"}]
      291 GETUPVAL                         R36 1
      292 GETTABLEKS                       R36 R36 K24 ["createElement"]
      294 LOADK                            R37 K35 ["StyleLink"]
      295 DUPTABLE                         R38 K39 [{"StyleSheet"}]
      296 GETUPVAL                         R39 13
      297 CALL                             R39 0 1
      298 SETTABLEKS                       R39 R38 K38 ["StyleSheet"]
      300 CALL                             R36 2 1
      301 SETTABLEKS                       R36 R35 K35 ["StyleLink"]
      303 GETUPVAL                         R36 1
      304 GETTABLEKS                       R36 R36 K24 ["createElement"]
      306 GETUPVAL                         R37 14
      307 GETTABLEKS                       R37 R37 K40 ["View"]
      309 DUPTABLE                         R38 K44 [{["tag"] = "col gap-small size-0-0 auto-xy padding-small", ["onAbsoluteSizeChanged"]}]
      310 SETTABLEKS                       R30 R38 K43 ["onAbsoluteSizeChanged"]
      312 DUPTABLE                         R39 K47 [{"Body", "Footer"}]
      313 GETUPVAL                         R40 1
      314 GETTABLEKS                       R40 R40 K24 ["createElement"]
      316 GETUPVAL                         R41 14
      317 GETTABLEKS                       R41 R41 K40 ["View"]
      319 DUPTABLE                         R42 K52 [{["tag"] = "col gap-medium size-full-0 auto-y padding-small", ["testId"] = "--notes-dialog-body", ["LayoutOrder"]}]
      320 MOVE                             R43 R1
      321 CALL                             R43 0 1
      322 SETTABLEKS                       R43 R42 K51 ["LayoutOrder"]
      324 DUPTABLE                         R43 K55 [{"TitleInput", "DescriptionInput"}]
      325 GETUPVAL                         R44 1
      326 GETTABLEKS                       R44 R44 K24 ["createElement"]
      328 GETUPVAL                         R45 14
      329 GETTABLEKS                       R45 R45 K56 ["TextArea"]
      331 DUPTABLE                         R46 K67 [{["text"], ["onChanged"], ["label"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["LayoutOrder"]}]
      332 SETTABLEKS                       R7 R46 K57 ["text"]
      334 SETTABLEKS                       R31 R46 K58 ["onChanged"]
      336 LOADK                            R48 K68 ["%* *"]
      337 LOADK                            R52 K69 ["Label"]
      338 LOADK                            R53 K70 ["VersionName"]
      339 NAMECALL                         R50 R3 K14 ["getText"]
      341 CALL                             R50 3 1
      342 NAMECALL                         R48 R48 K71 ["format"]
      344 CALL                             R48 2 1
      345 MOVE                             R47 R48
      346 SETTABLEKS                       R47 R46 K59 ["label"]
      348 ORK                              R47 R9 K72 []
      349 SETTABLEKS                       R47 R46 K60 ["hint"]
      351 JUMPIFNOTEQKNIL                  R9 ; [+2]
      353 LOADB                            R47 0 +1
      354 LOADB                            R47 1
      355 SETTABLEKS                       R47 R46 K61 ["hasError"]
      357 SETTABLEKS                       R20 R46 K62 ["isDisabled"]
      359 GETIMPORT                        R47 K74 [UDim.new]
      361 LOADN                            R48 0
      362 LOADN                            R49 450
      363 CALL                             R47 2 1
      364 SETTABLEKS                       R47 R46 K63 ["width"]
      366 GETUPVAL                         R47 14
      367 GETTABLEKS                       R47 R47 K75 ["Enums"]
      369 GETTABLEKS                       R47 R47 K76 ["InputSize"]
      371 GETTABLEKS                       R47 R47 K77 ["Medium"]
      373 SETTABLEKS                       R47 R46 K66 ["size"]
      375 MOVE                             R47 R1
      376 CALL                             R47 0 1
      377 SETTABLEKS                       R47 R46 K51 ["LayoutOrder"]
      379 CALL                             R44 2 1
      380 SETTABLEKS                       R44 R43 K53 ["TitleInput"]
      382 GETUPVAL                         R44 1
      383 GETTABLEKS                       R44 R44 K24 ["createElement"]
      385 GETUPVAL                         R45 14
      386 GETTABLEKS                       R45 R45 K56 ["TextArea"]
      388 DUPTABLE                         R46 K79 [{["text"], ["onChanged"], ["label"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 6, ["size"], ["LayoutOrder"]}]
      389 SETTABLEKS                       R14 R46 K57 ["text"]
      391 SETTABLEKS                       R15 R46 K58 ["onChanged"]
      393 LOADK                            R49 K69 ["Label"]
      394 LOADK                            R50 K80 ["VersionNotes"]
      395 NAMECALL                         R47 R3 K14 ["getText"]
      397 CALL                             R47 3 1
      398 SETTABLEKS                       R47 R46 K59 ["label"]
      400 ORK                              R47 R16 K72 []
      401 SETTABLEKS                       R47 R46 K60 ["hint"]
      403 JUMPIFNOTEQKNIL                  R16 ; [+2]
      405 LOADB                            R47 0 +1
      406 LOADB                            R47 1
      407 SETTABLEKS                       R47 R46 K61 ["hasError"]
      409 SETTABLEKS                       R20 R46 K62 ["isDisabled"]
      411 GETIMPORT                        R47 K74 [UDim.new]
      413 LOADN                            R48 0
      414 LOADN                            R49 450
      415 CALL                             R47 2 1
      416 SETTABLEKS                       R47 R46 K63 ["width"]
      418 GETUPVAL                         R47 14
      419 GETTABLEKS                       R47 R47 K75 ["Enums"]
      421 GETTABLEKS                       R47 R47 K76 ["InputSize"]
      423 GETTABLEKS                       R47 R47 K77 ["Medium"]
      425 SETTABLEKS                       R47 R46 K66 ["size"]
      427 MOVE                             R47 R1
      428 CALL                             R47 0 1
      429 SETTABLEKS                       R47 R46 K51 ["LayoutOrder"]
      431 CALL                             R44 2 1
      432 SETTABLEKS                       R44 R43 K54 ["DescriptionInput"]
      434 CALL                             R40 3 1
      435 SETTABLEKS                       R40 R39 K45 ["Body"]
      437 GETUPVAL                         R40 1
      438 GETTABLEKS                       R40 R40 K24 ["createElement"]
      440 GETUPVAL                         R41 14
      441 GETTABLEKS                       R41 R41 K40 ["View"]
      443 DUPTABLE                         R42 K82 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      444 MOVE                             R43 R1
      445 CALL                             R43 0 1
      446 SETTABLEKS                       R43 R42 K51 ["LayoutOrder"]
      448 DUPTABLE                         R43 K86 [{"Spacer", "CancelButton", "AcceptButton"}]
      449 GETUPVAL                         R44 1
      450 GETTABLEKS                       R44 R44 K24 ["createElement"]
      452 GETUPVAL                         R45 14
      453 GETTABLEKS                       R45 R45 K40 ["View"]
      455 DUPTABLE                         R46 K88 [{["tag"] = "fill", ["LayoutOrder"]}]
      456 MOVE                             R47 R1
      457 CALL                             R47 0 1
      458 SETTABLEKS                       R47 R46 K51 ["LayoutOrder"]
      460 CALL                             R44 2 1
      461 SETTABLEKS                       R44 R43 K83 ["Spacer"]
      463 GETUPVAL                         R44 1
      464 GETTABLEKS                       R44 R44 K24 ["createElement"]
      466 GETUPVAL                         R45 14
      467 GETTABLEKS                       R45 R45 K89 ["Button"]
      469 DUPTABLE                         R46 K92 [{["text"], ["isDisabled"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--notes-dialog-cancel-button", ["LayoutOrder"]}]
      470 LOADK                            R49 K15 ["Action"]
      471 LOADK                            R50 K93 ["Cancel"]
      472 NAMECALL                         R47 R3 K14 ["getText"]
      474 CALL                             R47 3 1
      475 SETTABLEKS                       R47 R46 K57 ["text"]
      477 SETTABLEKS                       R20 R46 K62 ["isDisabled"]
      479 GETUPVAL                         R47 14
      480 GETTABLEKS                       R47 R47 K75 ["Enums"]
      482 GETTABLEKS                       R47 R47 K94 ["ButtonVariant"]
      484 GETTABLEKS                       R47 R47 K95 ["Standard"]
      486 SETTABLEKS                       R47 R46 K10 ["variant"]
      488 SETTABLEKS                       R29 R46 K90 ["onActivated"]
      490 GETUPVAL                         R47 14
      491 GETTABLEKS                       R47 R47 K75 ["Enums"]
      493 GETTABLEKS                       R47 R47 K76 ["InputSize"]
      495 GETTABLEKS                       R47 R47 K96 ["Small"]
      497 SETTABLEKS                       R47 R46 K66 ["size"]
      499 MOVE                             R47 R1
      500 CALL                             R47 0 1
      501 SETTABLEKS                       R47 R46 K51 ["LayoutOrder"]
      503 CALL                             R44 2 1
      504 SETTABLEKS                       R44 R43 K84 ["CancelButton"]
      506 GETUPVAL                         R44 1
      507 GETTABLEKS                       R44 R44 K24 ["createElement"]
      509 GETUPVAL                         R45 14
      510 GETTABLEKS                       R45 R45 K89 ["Button"]
      512 DUPTABLE                         R46 K98 [{["text"], ["variant"], ["onActivated"], ["size"], ["isDisabled"], ["testId"] = "--notes-dialog-accept-button", ["LayoutOrder"]}]
      513 SETTABLEKS                       R25 R46 K57 ["text"]
      515 GETUPVAL                         R47 14
      516 GETTABLEKS                       R47 R47 K75 ["Enums"]
      518 GETTABLEKS                       R47 R47 K94 ["ButtonVariant"]
      520 GETTABLEKS                       R47 R47 K99 ["Emphasis"]
      522 SETTABLEKS                       R47 R46 K10 ["variant"]
      524 SETTABLEKS                       R28 R46 K90 ["onActivated"]
      526 GETUPVAL                         R47 14
      527 GETTABLEKS                       R47 R47 K75 ["Enums"]
      529 GETTABLEKS                       R47 R47 K76 ["InputSize"]
      531 GETTABLEKS                       R47 R47 K96 ["Small"]
      533 SETTABLEKS                       R47 R46 K66 ["size"]
      535 MOVE                             R47 R20
      536 JUMPIF                           R47 ; [+10]
      537 LOADB                            R47 1
      538 JUMPIFEQKN                       R11 K100 [0] ; [+8]
      540 LOADB                            R47 1
      541 JUMPIFNOTEQKNIL                  R9 ; [+5]
      543 JUMPIFNOTEQKNIL                  R16 ; [+2]
      545 LOADB                            R47 0 +1
      546 LOADB                            R47 1
      547 SETTABLEKS                       R47 R46 K62 ["isDisabled"]
      549 MOVE                             R47 R1
      550 CALL                             R47 0 1
      551 SETTABLEKS                       R47 R46 K51 ["LayoutOrder"]
      553 CALL                             R44 2 1
      554 SETTABLEKS                       R44 R43 K85 ["AcceptButton"]
      556 CALL                             R40 3 1
      557 SETTABLEKS                       R40 R39 K46 ["Footer"]
      559 CALL                             R36 3 1
      560 SETTABLEKS                       R36 R35 K36 ["MainView"]
      562 CALL                             R32 3 -1
      563 RETURN                           R32 -1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K5 [{"type", "accepted", "titleLength", "descriptionLength", "hadFailedModeration"}]
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K6 ["variant"]
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_19:
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
       37 JUMPIF                           R3 ; [+5]
       38 GETUPVAL                         R4 6
       39 GETTABLEKS                       R4 R4 K3 ["reject"]
       41 CALL                             R4 0 -1
       42 RETURN                           R4 -1
       43 DUPTABLE                         R4 K6 [{"title", "description"}]
       44 GETUPVAL                         R6 1
       45 JUMPIFNOTEQKN                    R6 K7 [0] ; [+3]
       47 LOADNIL                          R5
       48 JUMP                             ; [+1]
       49 GETUPVAL                         R5 7
       50 SETTABLEKS                       R5 R4 K4 ["title"]
       52 GETUPVAL                         R6 2
       53 JUMPIFNOTEQKN                    R6 K7 [0] ; [+3]
       55 LOADNIL                          R5
       56 JUMP                             ; [+1]
       57 GETUPVAL                         R5 8
       58 SETTABLEKS                       R5 R4 K5 ["description"]
       60 GETUPVAL                         R5 9
       61 GETTABLEKS                       R5 R5 K8 ["placeId"]
       63 JUMPIFNOT                        R5 ; [+4]
       64 GETUPVAL                         R5 9
       65 GETTABLEKS                       R5 R5 K9 ["version"]
       67 JUMPIF                           R5 ; [+6]
       68 GETUPVAL                         R5 6
       69 GETTABLEKS                       R5 R5 K10 ["resolve"]
       71 MOVE                             R6 R4
       72 CALL                             R5 1 -1
       73 RETURN                           R5 -1
       74 DUPTABLE                         R5 K12 [{"notes", "placeId", "version"}]
       75 SETTABLEKS                       R4 R5 K11 ["notes"]
       77 GETUPVAL                         R6 9
       78 GETTABLEKS                       R6 R6 K8 ["placeId"]
       80 SETTABLEKS                       R6 R5 K8 ["placeId"]
       82 GETUPVAL                         R6 9
       83 GETTABLEKS                       R6 R6 K9 ["version"]
       85 SETTABLEKS                       R6 R5 K9 ["version"]
       87 GETUPVAL                         R6 10
       88 GETTABLEKS                       R6 R6 K13 ["saveVersionNotes"]
       90 MOVE                             R7 R5
       91 CALL                             R6 1 1
       92 NEWCLOSURE                       R8 P0
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          VAL R4
       95 NAMECALL                         R6 R6 K14 ["andThen"]
       97 CALL                             R6 2 -1
       98 RETURN                           R6 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onAccept"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["all"]
        6 NEWTABLE                         R1 0 2
        8 GETUPVAL                         R3 2
        9 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["resolve"]
       14 LOADB                            R3 1
       15 CALL                             R2 1 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K3 ["getNotesValidation"]
       20 GETUPVAL                         R3 4
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 5
       23 JUMPIFNOTEQKN                    R4 K1 [0] ; [+7]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K2 ["resolve"]
       28 LOADB                            R4 1
       29 CALL                             R3 1 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K3 ["getNotesValidation"]
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
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U3
       51 NAMECALL                         R0 R0 K4 ["andThen"]
       53 CALL                             R0 2 1
       54 NEWCLOSURE                       R2 P1
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U0
       58 NAMECALL                         R0 R0 K4 ["andThen"]
       60 CALL                             R0 2 1
       61 NEWCLOSURE                       R2 P2
       62 CAPTURE                          UPVAL U0
       63 NAMECALL                         R0 R0 K5 ["catch"]
       65 CALL                             R0 2 0
       66 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReject"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K2 [task.wait]
        4 CALL                             R1 0 0
        5 GETTABLEKS                       R1 R0 K3 ["focus"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_26:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
        8 GETIMPORT                        R2 K4 [Enum.KeyCode.Return]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K7 [Enum.ModifierKey.Ctrl]
       15 NAMECALL                         R1 R0 K8 ["IsModifierKeyDown"]
       17 CALL                             R1 2 1
       18 JUMPIF                           R1 ; [+10]
       19 GETIMPORT                        R1 K11 [task.wait]
       21 CALL                             R1 0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["current"]
       25 GETTABLEKS                       R1 R1 K12 ["focus"]
       27 CALL                             R1 0 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 1
       30 JUMPIFNOT                        R1 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 2
       33 CALL                             R1 0 0
       34 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 GETIMPORT                        R5 K5 [Vector2.new]
       16 LOADN                            R6 482
       17 LOADN                            R7 307
       18 CALL                             R5 2 -1
       19 CALL                             R4 -1 2
       20 GETTABLEKS                       R7 R0 K6 ["notes"]
       22 JUMPIFNOT                        R7 ; [+10]
       23 GETTABLEKS                       R7 R0 K6 ["notes"]
       25 GETTABLEKS                       R7 R7 K7 ["title"]
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETTABLEKS                       R6 R0 K6 ["notes"]
       30 GETTABLEKS                       R6 R6 K7 ["title"]
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K8 [""]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K2 ["useState"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 2
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K2 ["useState"]
       42 LOADNIL                          R10
       43 CALL                             R9 1 2
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K2 ["useState"]
       47 LOADN                            R12 0
       48 CALL                             R11 1 2
       49 GETTABLEKS                       R14 R0 K6 ["notes"]
       51 JUMPIFNOT                        R14 ; [+10]
       52 GETTABLEKS                       R14 R0 K6 ["notes"]
       54 GETTABLEKS                       R14 R14 K9 ["description"]
       56 JUMPIFNOT                        R14 ; [+5]
       57 GETTABLEKS                       R13 R0 K6 ["notes"]
       59 GETTABLEKS                       R13 R13 K9 ["description"]
       61 JUMP                             ; [+1]
       62 LOADK                            R13 K8 [""]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K2 ["useState"]
       66 MOVE                             R15 R13
       67 CALL                             R14 1 2
       68 GETUPVAL                         R16 1
       69 GETTABLEKS                       R16 R16 K2 ["useState"]
       71 LOADNIL                          R17
       72 CALL                             R16 1 2
       73 GETUPVAL                         R18 1
       74 GETTABLEKS                       R18 R18 K2 ["useState"]
       76 LOADN                            R19 0
       77 CALL                             R18 1 2
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R20 R20 K10 ["useRef"]
       81 LOADNIL                          R21
       82 CALL                             R20 1 1
       83 GETUPVAL                         R21 1
       84 GETTABLEKS                       R21 R21 K2 ["useState"]
       86 LOADB                            R22 0
       87 CALL                             R21 1 2
       88 GETUPVAL                         R23 1
       89 GETTABLEKS                       R23 R23 K2 ["useState"]
       91 LOADB                            R24 0
       92 CALL                             R23 1 2
       93 MOVE                             R25 R21
       94 JUMPIF                           R25 ; [+10]
       95 LOADB                            R25 1
       96 JUMPIFEQKN                       R11 K11 [0] ; [+8]
       98 LOADB                            R25 1
       99 JUMPIFNOTEQKNIL                  R9 ; [+5]
      101 JUMPIFNOTEQKNIL                  R16 ; [+2]
      103 LOADB                            R25 0 +1
      104 LOADB                            R25 1
      105 GETUPVAL                         R26 1
      106 GETTABLEKS                       R26 R26 K12 ["useEffect"]
      108 NEWCLOSURE                       R27 P0
      109 CAPTURE                          VAL R7
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R12
      114 NEWTABLE                         R28 0 1
      116 MOVE                             R29 R7
      117 SETLIST                          R28 R29 1 [1]
      119 CALL                             R26 2 0
      120 GETUPVAL                         R26 1
      121 GETTABLEKS                       R26 R26 K12 ["useEffect"]
      123 NEWCLOSURE                       R27 P1
      124 CAPTURE                          VAL R14
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R3
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R19
      130 NEWTABLE                         R28 0 1
      132 MOVE                             R29 R14
      133 SETLIST                          R28 R29 1 [1]
      135 CALL                             R26 2 0
      136 GETUPVAL                         R26 1
      137 GETTABLEKS                       R26 R26 K13 ["useCallback"]
      139 NEWCLOSURE                       R27 P2
      140 CAPTURE                          VAL R24
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          UPVAL U8
      143 NEWTABLE                         R28 0 0
      145 CALL                             R26 2 1
      146 GETUPVAL                         R27 1
      147 GETTABLEKS                       R27 R27 K13 ["useCallback"]
      149 NEWCLOSURE                       R28 P3
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R23
      156 NEWTABLE                         R29 0 4
      158 GETTABLEKS                       R30 R0 K14 ["variant"]
      160 MOVE                             R31 R11
      161 MOVE                             R32 R18
      162 MOVE                             R33 R23
      163 SETLIST                          R29 R30 4 [1]
      165 CALL                             R27 2 1
      166 GETUPVAL                         R28 1
      167 GETTABLEKS                       R28 R28 K13 ["useCallback"]
      169 NEWCLOSURE                       R29 P4
      170 CAPTURE                          VAL R22
      171 CAPTURE                          UPVAL U10
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R0
      182 CAPTURE                          VAL R27
      183 NEWTABLE                         R30 0 7
      185 GETTABLEKS                       R31 R0 K15 ["onAccept"]
      187 MOVE                             R32 R7
      188 MOVE                             R33 R14
      189 MOVE                             R34 R11
      190 MOVE                             R35 R18
      191 MOVE                             R36 R27
      192 MOVE                             R37 R26
      193 SETLIST                          R30 R31 7 [1]
      195 CALL                             R28 2 1
      196 GETUPVAL                         R29 1
      197 GETTABLEKS                       R29 R29 K13 ["useCallback"]
      199 NEWCLOSURE                       R30 P5
      200 CAPTURE                          VAL R0
      201 CAPTURE                          VAL R27
      202 NEWTABLE                         R31 0 1
      204 MOVE                             R32 R27
      205 SETLIST                          R31 R32 1 [1]
      207 CALL                             R29 2 1
      208 GETUPVAL                         R30 1
      209 GETTABLEKS                       R30 R30 K13 ["useCallback"]
      211 NEWCLOSURE                       R31 P6
      212 CAPTURE                          VAL R5
      213 NEWTABLE                         R32 0 0
      215 CALL                             R30 2 1
      216 GETUPVAL                         R31 1
      217 GETTABLEKS                       R31 R31 K13 ["useCallback"]
      219 DUPCLOSURE                       R32 K16 [PROTO_25]
      220 NEWTABLE                         R33 0 0
      222 CALL                             R31 2 1
      223 GETUPVAL                         R32 1
      224 GETTABLEKS                       R32 R32 K13 ["useCallback"]
      226 NEWCLOSURE                       R33 P8
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R28
      230 NEWTABLE                         R34 0 2
      232 MOVE                             R35 R28
      233 MOVE                             R36 R25
      234 SETLIST                          R34 R35 2 [1]
      236 CALL                             R32 2 1
      237 GETUPVAL                         R33 1
      238 GETTABLEKS                       R33 R33 K13 ["useCallback"]
      240 NEWCLOSURE                       R34 P9
      241 CAPTURE                          VAL R8
      242 CAPTURE                          UPVAL U11
      243 NEWTABLE                         R35 0 0
      245 CALL                             R33 2 1
      246 GETUPVAL                         R34 1
      247 GETTABLEKS                       R34 R34 K17 ["createElement"]
      249 GETUPVAL                         R35 12
      250 GETTABLEKS                       R35 R35 K18 ["UI"]
      252 GETTABLEKS                       R35 R35 K19 ["Dialog"]
      254 DUPTABLE                         R36 K28 [{["Title"], ["Enabled"] = True, ["Modal"] = True, ["Resizable"] = False, ["Size"], ["OnClose"]}]
      255 GETTABLEKS                       R38 R0 K14 ["variant"]
      257 JUMPIFNOTEQKS                    R38 K29 ["Edit"] ; [+7]
      259 LOADK                            R39 K20 ["Title"]
      260 LOADK                            R40 K30 ["EditVersionNotes"]
      261 NAMECALL                         R37 R3 K31 ["getText"]
      263 CALL                             R37 3 1
      264 JUMP                             ; [+31]
      265 GETTABLEKS                       R38 R0 K14 ["variant"]
      267 JUMPIFNOTEQKS                    R38 K32 ["Add"] ; [+7]
      269 LOADK                            R39 K20 ["Title"]
      270 LOADK                            R40 K33 ["AddVersionNotes"]
      271 NAMECALL                         R37 R3 K31 ["getText"]
      273 CALL                             R37 3 1
      274 JUMP                             ; [+21]
      275 GETTABLEKS                       R38 R0 K14 ["variant"]
      277 JUMPIFNOTEQKS                    R38 K34 ["Save"] ; [+7]
      279 LOADK                            R39 K20 ["Title"]
      280 LOADK                            R40 K35 ["SaveWithVersionNotes"]
      281 NAMECALL                         R37 R3 K31 ["getText"]
      283 CALL                             R37 3 1
      284 JUMP                             ; [+11]
      285 GETTABLEKS                       R38 R0 K14 ["variant"]
      287 JUMPIFNOTEQKS                    R38 K36 ["Publish"] ; [+7]
      289 LOADK                            R39 K20 ["Title"]
      290 LOADK                            R40 K37 ["PublishWithVersionNotes"]
      291 NAMECALL                         R37 R3 K31 ["getText"]
      293 CALL                             R37 3 1
      294 JUMP                             ; [+1]
      295 LOADK                            R37 K8 [""]
      296 SETTABLEKS                       R37 R36 K20 ["Title"]
      298 SETTABLEKS                       R4 R36 K26 ["Size"]
      300 SETTABLEKS                       R29 R36 K27 ["OnClose"]
      302 DUPTABLE                         R37 K40 [{"StyleLink", "MainView"}]
      303 GETUPVAL                         R38 1
      304 GETTABLEKS                       R38 R38 K17 ["createElement"]
      306 LOADK                            R39 K38 ["StyleLink"]
      307 DUPTABLE                         R40 K42 [{"StyleSheet"}]
      308 GETUPVAL                         R41 13
      309 CALL                             R41 0 1
      310 SETTABLEKS                       R41 R40 K41 ["StyleSheet"]
      312 CALL                             R38 2 1
      313 SETTABLEKS                       R38 R37 K38 ["StyleLink"]
      315 GETUPVAL                         R38 1
      316 GETTABLEKS                       R38 R38 K17 ["createElement"]
      318 GETUPVAL                         R39 14
      319 GETTABLEKS                       R39 R39 K43 ["View"]
      321 DUPTABLE                         R40 K47 [{["tag"] = "col gap-small size-0-0 auto-xy padding-small", ["onAbsoluteSizeChanged"]}]
      322 SETTABLEKS                       R30 R40 K46 ["onAbsoluteSizeChanged"]
      324 DUPTABLE                         R41 K50 [{"Body", "Footer"}]
      325 GETUPVAL                         R42 1
      326 GETTABLEKS                       R42 R42 K17 ["createElement"]
      328 GETUPVAL                         R43 14
      329 GETTABLEKS                       R43 R43 K43 ["View"]
      331 DUPTABLE                         R44 K55 [{["tag"] = "col gap-medium size-full-0 auto-y padding-small", ["testId"] = "--notes-dialog-body", ["LayoutOrder"]}]
      332 MOVE                             R45 R1
      333 CALL                             R45 0 1
      334 SETTABLEKS                       R45 R44 K54 ["LayoutOrder"]
      336 DUPTABLE                         R45 K58 [{"TitleInput", "DescriptionInput"}]
      337 GETUPVAL                         R46 1
      338 GETTABLEKS                       R46 R46 K17 ["createElement"]
      340 GETUPVAL                         R47 14
      341 GETTABLEKS                       R47 R47 K59 ["TextArea"]
      343 DUPTABLE                         R48 K73 [{["text"], ["onFocusLost"], ["onChanged"], ["label"], ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["textBoxRef"], ["LayoutOrder"]}]
      344 SETTABLEKS                       R7 R48 K60 ["text"]
      346 SETTABLEKS                       R32 R48 K61 ["onFocusLost"]
      348 SETTABLEKS                       R33 R48 K62 ["onChanged"]
      350 LOADK                            R50 K74 ["%* *"]
      351 LOADK                            R54 K75 ["Label"]
      352 LOADK                            R55 K76 ["VersionName"]
      353 NAMECALL                         R52 R3 K31 ["getText"]
      355 CALL                             R52 3 1
      356 NAMECALL                         R50 R50 K77 ["format"]
      358 CALL                             R50 2 1
      359 MOVE                             R49 R50
      360 SETTABLEKS                       R49 R48 K63 ["label"]
      362 LOADK                            R51 K75 ["Label"]
      363 LOADK                            R52 K78 ["VersionNamePlaceholder"]
      364 NAMECALL                         R49 R3 K31 ["getText"]
      366 CALL                             R49 3 1
      367 SETTABLEKS                       R49 R48 K64 ["placeholder"]
      369 ORK                              R49 R9 K79 []
      370 SETTABLEKS                       R49 R48 K65 ["hint"]
      372 JUMPIFNOTEQKNIL                  R9 ; [+2]
      374 LOADB                            R49 0 +1
      375 LOADB                            R49 1
      376 SETTABLEKS                       R49 R48 K66 ["hasError"]
      378 SETTABLEKS                       R21 R48 K67 ["isDisabled"]
      380 GETIMPORT                        R49 K81 [UDim.new]
      382 LOADN                            R50 0
      383 LOADN                            R51 450
      384 CALL                             R49 2 1
      385 SETTABLEKS                       R49 R48 K68 ["width"]
      387 GETUPVAL                         R49 14
      388 GETTABLEKS                       R49 R49 K82 ["Enums"]
      390 GETTABLEKS                       R49 R49 K83 ["InputSize"]
      392 GETTABLEKS                       R49 R49 K84 ["Medium"]
      394 SETTABLEKS                       R49 R48 K71 ["size"]
      396 SETTABLEKS                       R31 R48 K72 ["textBoxRef"]
      398 MOVE                             R49 R1
      399 CALL                             R49 0 1
      400 SETTABLEKS                       R49 R48 K54 ["LayoutOrder"]
      402 CALL                             R46 2 1
      403 SETTABLEKS                       R46 R45 K56 ["TitleInput"]
      405 GETUPVAL                         R46 1
      406 GETTABLEKS                       R46 R46 K17 ["createElement"]
      408 GETUPVAL                         R47 14
      409 GETTABLEKS                       R47 R47 K59 ["TextArea"]
      411 DUPTABLE                         R48 K86 [{["text"], ["onChanged"], ["label"], ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 6, ["size"], ["textBoxRef"], ["LayoutOrder"]}]
      412 SETTABLEKS                       R14 R48 K60 ["text"]
      414 SETTABLEKS                       R15 R48 K62 ["onChanged"]
      416 LOADK                            R51 K75 ["Label"]
      417 LOADK                            R52 K87 ["VersionNotes"]
      418 NAMECALL                         R49 R3 K31 ["getText"]
      420 CALL                             R49 3 1
      421 SETTABLEKS                       R49 R48 K63 ["label"]
      423 LOADK                            R51 K75 ["Label"]
      424 LOADK                            R52 K88 ["VersionNotesPlaceholder"]
      425 NAMECALL                         R49 R3 K31 ["getText"]
      427 CALL                             R49 3 1
      428 SETTABLEKS                       R49 R48 K64 ["placeholder"]
      430 ORK                              R49 R16 K79 []
      431 SETTABLEKS                       R49 R48 K65 ["hint"]
      433 JUMPIFNOTEQKNIL                  R16 ; [+2]
      435 LOADB                            R49 0 +1
      436 LOADB                            R49 1
      437 SETTABLEKS                       R49 R48 K66 ["hasError"]
      439 SETTABLEKS                       R21 R48 K67 ["isDisabled"]
      441 GETIMPORT                        R49 K81 [UDim.new]
      443 LOADN                            R50 0
      444 LOADN                            R51 450
      445 CALL                             R49 2 1
      446 SETTABLEKS                       R49 R48 K68 ["width"]
      448 GETUPVAL                         R49 14
      449 GETTABLEKS                       R49 R49 K82 ["Enums"]
      451 GETTABLEKS                       R49 R49 K83 ["InputSize"]
      453 GETTABLEKS                       R49 R49 K84 ["Medium"]
      455 SETTABLEKS                       R49 R48 K71 ["size"]
      457 SETTABLEKS                       R20 R48 K72 ["textBoxRef"]
      459 MOVE                             R49 R1
      460 CALL                             R49 0 1
      461 SETTABLEKS                       R49 R48 K54 ["LayoutOrder"]
      463 CALL                             R46 2 1
      464 SETTABLEKS                       R46 R45 K57 ["DescriptionInput"]
      466 CALL                             R42 3 1
      467 SETTABLEKS                       R42 R41 K48 ["Body"]
      469 GETUPVAL                         R42 1
      470 GETTABLEKS                       R42 R42 K17 ["createElement"]
      472 GETUPVAL                         R43 14
      473 GETTABLEKS                       R43 R43 K43 ["View"]
      475 DUPTABLE                         R44 K90 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      476 MOVE                             R45 R1
      477 CALL                             R45 0 1
      478 SETTABLEKS                       R45 R44 K54 ["LayoutOrder"]
      480 DUPTABLE                         R45 K94 [{"Spacer", "CancelButton", "AcceptButton"}]
      481 GETUPVAL                         R46 1
      482 GETTABLEKS                       R46 R46 K17 ["createElement"]
      484 GETUPVAL                         R47 14
      485 GETTABLEKS                       R47 R47 K43 ["View"]
      487 DUPTABLE                         R48 K96 [{["tag"] = "fill", ["LayoutOrder"]}]
      488 MOVE                             R49 R1
      489 CALL                             R49 0 1
      490 SETTABLEKS                       R49 R48 K54 ["LayoutOrder"]
      492 CALL                             R46 2 1
      493 SETTABLEKS                       R46 R45 K91 ["Spacer"]
      495 GETUPVAL                         R46 1
      496 GETTABLEKS                       R46 R46 K17 ["createElement"]
      498 GETUPVAL                         R47 14
      499 GETTABLEKS                       R47 R47 K97 ["Button"]
      501 DUPTABLE                         R48 K100 [{["text"], ["isDisabled"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--notes-dialog-cancel-button", ["LayoutOrder"]}]
      502 LOADK                            R51 K101 ["Action"]
      503 LOADK                            R52 K102 ["Cancel"]
      504 NAMECALL                         R49 R3 K31 ["getText"]
      506 CALL                             R49 3 1
      507 SETTABLEKS                       R49 R48 K60 ["text"]
      509 SETTABLEKS                       R21 R48 K67 ["isDisabled"]
      511 GETUPVAL                         R49 14
      512 GETTABLEKS                       R49 R49 K82 ["Enums"]
      514 GETTABLEKS                       R49 R49 K103 ["ButtonVariant"]
      516 GETTABLEKS                       R49 R49 K104 ["Standard"]
      518 SETTABLEKS                       R49 R48 K14 ["variant"]
      520 SETTABLEKS                       R29 R48 K98 ["onActivated"]
      522 GETUPVAL                         R49 14
      523 GETTABLEKS                       R49 R49 K82 ["Enums"]
      525 GETTABLEKS                       R49 R49 K83 ["InputSize"]
      527 GETTABLEKS                       R49 R49 K105 ["Small"]
      529 SETTABLEKS                       R49 R48 K71 ["size"]
      531 MOVE                             R49 R1
      532 CALL                             R49 0 1
      533 SETTABLEKS                       R49 R48 K54 ["LayoutOrder"]
      535 CALL                             R46 2 1
      536 SETTABLEKS                       R46 R45 K92 ["CancelButton"]
      538 GETUPVAL                         R46 1
      539 GETTABLEKS                       R46 R46 K17 ["createElement"]
      541 GETUPVAL                         R47 14
      542 GETTABLEKS                       R47 R47 K97 ["Button"]
      544 DUPTABLE                         R48 K108 [{["text"], ["variant"], ["onActivated"], ["size"], ["isLoading"], ["isDisabled"], ["testId"] = "--notes-dialog-accept-button", ["LayoutOrder"]}]
      545 GETTABLEKS                       R50 R0 K14 ["variant"]
      547 JUMPIFNOTEQKS                    R50 K29 ["Edit"] ; [+7]
      549 LOADK                            R51 K101 ["Action"]
      550 LOADK                            R52 K34 ["Save"]
      551 NAMECALL                         R49 R3 K31 ["getText"]
      553 CALL                             R49 3 1
      554 JUMP                             ; [+31]
      555 GETTABLEKS                       R50 R0 K14 ["variant"]
      557 JUMPIFNOTEQKS                    R50 K32 ["Add"] ; [+7]
      559 LOADK                            R51 K101 ["Action"]
      560 LOADK                            R52 K34 ["Save"]
      561 NAMECALL                         R49 R3 K31 ["getText"]
      563 CALL                             R49 3 1
      564 JUMP                             ; [+21]
      565 GETTABLEKS                       R50 R0 K14 ["variant"]
      567 JUMPIFNOTEQKS                    R50 K34 ["Save"] ; [+7]
      569 LOADK                            R51 K101 ["Action"]
      570 LOADK                            R52 K34 ["Save"]
      571 NAMECALL                         R49 R3 K31 ["getText"]
      573 CALL                             R49 3 1
      574 JUMP                             ; [+11]
      575 GETTABLEKS                       R50 R0 K14 ["variant"]
      577 JUMPIFNOTEQKS                    R50 K36 ["Publish"] ; [+7]
      579 LOADK                            R51 K101 ["Action"]
      580 LOADK                            R52 K36 ["Publish"]
      581 NAMECALL                         R49 R3 K31 ["getText"]
      583 CALL                             R49 3 1
      584 JUMP                             ; [+1]
      585 LOADK                            R49 K8 [""]
      586 SETTABLEKS                       R49 R48 K60 ["text"]
      588 GETUPVAL                         R49 14
      589 GETTABLEKS                       R49 R49 K82 ["Enums"]
      591 GETTABLEKS                       R49 R49 K103 ["ButtonVariant"]
      593 GETTABLEKS                       R49 R49 K109 ["Emphasis"]
      595 SETTABLEKS                       R49 R48 K14 ["variant"]
      597 SETTABLEKS                       R28 R48 K98 ["onActivated"]
      599 GETUPVAL                         R49 14
      600 GETTABLEKS                       R49 R49 K82 ["Enums"]
      602 GETTABLEKS                       R49 R49 K83 ["InputSize"]
      604 GETTABLEKS                       R49 R49 K105 ["Small"]
      606 SETTABLEKS                       R49 R48 K71 ["size"]
      608 SETTABLEKS                       R21 R48 K106 ["isLoading"]
      610 SETTABLEKS                       R25 R48 K67 ["isDisabled"]
      612 MOVE                             R49 R1
      613 CALL                             R49 0 1
      614 SETTABLEKS                       R49 R48 K54 ["LayoutOrder"]
      616 CALL                             R46 2 1
      617 SETTABLEKS                       R46 R45 K93 ["AcceptButton"]
      619 CALL                             R42 3 1
      620 SETTABLEKS                       R42 R41 K49 ["Footer"]
      622 CALL                             R38 3 1
      623 SETTABLEKS                       R38 R37 K39 ["MainView"]
      625 CALL                             R34 3 -1
      626 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Promise"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["Framework"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K9 ["Packages"]
       55 GETTABLEKS                       R8 R8 K15 ["TelemetryProtocol"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R6 K16 ["ContextServices"]
       60 GETTABLEKS                       R9 R8 K17 ["Localization"]
       62 GETTABLEKS                       R10 R0 K18 ["Src"]
       64 GETTABLEKS                       R10 R10 K19 ["Contexts"]
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R10 K20 ["NetworkContext"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R7 K21 ["new"]
       73 CALL                             R12 0 1
       74 GETTABLEKS                       R13 R0 K18 ["Src"]
       76 GETTABLEKS                       R13 R13 K22 ["Events"]
       78 GETIMPORT                        R14 K5 [require]
       80 GETTABLEKS                       R15 R13 K23 ["AddNotesEvent"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R13 K24 ["TextModerationEvent"]
       87 CALL                             R15 1 1
       88 GETTABLEKS                       R16 R3 K25 ["createNextOrder"]
       90 GETTABLEKS                       R17 R4 K26 ["Hooks"]
       92 GETTABLEKS                       R17 R17 K27 ["useStyleSheet"]
       94 GETIMPORT                        R18 K5 [require]
       96 GETTABLEKS                       R19 R0 K18 ["Src"]
       98 GETTABLEKS                       R19 R19 K28 ["Types"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R19 R1 K29 ["FIntPVHMaxTitleChars"]
      103 GETTABLEKS                       R20 R1 K30 ["FIntPVHMaxDescriptionChars"]
      105 GETTABLEKS                       R21 R1 K31 ["FIntPVHMaxDescriptionLines"]
      107 DUPCLOSURE                       R22 K32 [PROTO_0]
      108 DUPCLOSURE                       R23 K33 [PROTO_1]
      109 DUPCLOSURE                       R24 K34 [PROTO_2]
      110 DUPCLOSURE                       R25 K35 [PROTO_13]
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R4
      126 DUPCLOSURE                       R26 K36 [PROTO_28]
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R4
      142 GETTABLEKS                       R28 R1 K37 ["FFlagPluginQWidgetModalFocusKeyboard"]
      144 JUMPIFNOT                        R28 ; [+2]
      145 MOVE                             R27 R26
      146 RETURN                           R27 1
      147 MOVE                             R27 R25
      148 RETURN                           R27 1
