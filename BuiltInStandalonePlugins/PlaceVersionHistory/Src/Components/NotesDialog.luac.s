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
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["View"]
       11 DUPTABLE                         R5 K6 [{["tag"] = "size-full", ["ref"]}]
       12 SETTABLEKS                       R2 R5 K5 ["ref"]
       14 DUPTABLE                         R6 K8 [{"OverlayProvider"}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K1 ["createElement"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K7 ["OverlayProvider"]
       21 DUPTABLE                         R9 K10 [{"gui"}]
       22 SETTABLEKS                       R1 R9 K9 ["gui"]
       24 GETTABLEKS                       R10 R0 K11 ["children"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K7 ["OverlayProvider"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K7 [{[1], ["accepted"], ["titleLength"], ["descriptionLength"], ["hadFailedModeration"], ["summaryStatus"] = "Unused"}]
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K8 ["variant"]
        6 SETTABLEKS                       R5 R4 K0 ["type"]
        8 SETTABLEKS                       R0 R4 K1 ["accepted"]
       10 GETUPVAL                         R5 3
       11 SETTABLEKS                       R5 R4 K2 ["titleLength"]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K3 ["descriptionLength"]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K4 ["hadFailedModeration"]
       19 NAMECALL                         R1 R1 K9 ["logRobloxTelemetryEvent"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReject"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["localization"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["EngineFeaturePVHGenerateNotes"]
        7 JUMPIFNOT                        R3 ; [+423]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["View"]
       14 DUPTABLE                         R5 K9 [{["tag"] = "col gap-medium size-full-0 auto-y padding-small", ["testId"] = "--notes-dialog-body", ["LayoutOrder"]}]
       15 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       19 DUPTABLE                         R6 K12 [{"TitleGroup", "DescriptionGroup"}]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K2 ["createElement"]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K3 ["View"]
       26 DUPTABLE                         R9 K14 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       27 MOVE                             R10 R1
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       31 DUPTABLE                         R10 K17 [{"LabelRow", "TitleInput"}]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R11 R11 K2 ["createElement"]
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R12 R12 K3 ["View"]
       38 DUPTABLE                         R13 K19 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       39 MOVE                             R14 R1
       40 CALL                             R14 0 1
       41 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       43 DUPTABLE                         R14 K23 [{"Label", "Spacer", "GenerateButton"}]
       44 GETUPVAL                         R15 2
       45 GETTABLEKS                       R15 R15 K2 ["createElement"]
       47 GETUPVAL                         R16 3
       48 GETTABLEKS                       R16 R16 K24 ["Text"]
       50 DUPTABLE                         R17 K26 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-medium content-default", ["LayoutOrder"]}]
       51 LOADK                            R19 K27 ["%* *"]
       52 LOADK                            R23 K20 ["Label"]
       53 LOADK                            R24 K28 ["VersionName"]
       54 NAMECALL                         R21 R2 K29 ["getText"]
       56 CALL                             R21 3 1
       57 NAMECALL                         R19 R19 K30 ["format"]
       59 CALL                             R19 2 1
       60 MOVE                             R18 R19
       61 SETTABLEKS                       R18 R17 K24 ["Text"]
       63 MOVE                             R18 R1
       64 CALL                             R18 0 1
       65 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K20 ["Label"]
       70 GETUPVAL                         R15 2
       71 GETTABLEKS                       R15 R15 K2 ["createElement"]
       73 GETUPVAL                         R16 3
       74 GETTABLEKS                       R16 R16 K3 ["View"]
       76 DUPTABLE                         R17 K32 [{["tag"] = "fill", ["LayoutOrder"]}]
       77 MOVE                             R18 R1
       78 CALL                             R18 0 1
       79 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K21 ["Spacer"]
       84 GETTABLEKS                       R16 R0 K33 ["showGenerateButton"]
       86 JUMPIF                           R16 ; [+2]
       87 LOADNIL                          R15
       88 JUMP                             ; [+26]
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R15 R15 K2 ["createElement"]
       92 GETUPVAL                         R16 4
       93 DUPTABLE                         R17 K38 [{"tooltip", "isGenerating", "isDisabled", "onActivated", "LayoutOrder"}]
       94 GETTABLEKS                       R18 R0 K39 ["generateTooltip"]
       96 SETTABLEKS                       R18 R17 K34 ["tooltip"]
       98 GETTABLEKS                       R18 R0 K35 ["isGenerating"]
      100 SETTABLEKS                       R18 R17 K35 ["isGenerating"]
      102 GETTABLEKS                       R18 R0 K40 ["isLoading"]
      104 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      106 GETTABLEKS                       R18 R0 K41 ["onGenerateTrigger"]
      108 SETTABLEKS                       R18 R17 K37 ["onActivated"]
      110 MOVE                             R18 R1
      111 CALL                             R18 0 1
      112 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K22 ["GenerateButton"]
      117 CALL                             R11 3 1
      118 SETTABLEKS                       R11 R10 K15 ["LabelRow"]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K2 ["createElement"]
      123 GETUPVAL                         R12 3
      124 GETTABLEKS                       R12 R12 K3 ["View"]
      126 DUPTABLE                         R13 K46 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
      127 GETIMPORT                        R14 K49 [UDim2.new]
      129 LOADN                            R15 0
      130 LOADN                            R16 450
      131 LOADN                            R17 0
      132 LOADN                            R18 0
      133 CALL                             R14 4 1
      134 SETTABLEKS                       R14 R13 K44 ["Size"]
      136 GETIMPORT                        R14 K52 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R14 R13 K45 ["AutomaticSize"]
      140 MOVE                             R14 R1
      141 CALL                             R14 0 1
      142 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      144 DUPTABLE                         R14 K55 [{"Input", "DraftingOverlay"}]
      145 GETUPVAL                         R15 2
      146 GETTABLEKS                       R15 R15 K2 ["createElement"]
      148 GETUPVAL                         R16 3
      149 GETTABLEKS                       R16 R16 K56 ["TextArea"]
      151 DUPTABLE                         R17 K70 [{["key"], ["text"], ["onFocusLost"], ["onChanged"], ["label"] = "", ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["textBoxRef"]}]
      152 GETTABLEKS                       R19 R0 K71 ["generationId"]
      154 FASTCALL1                        TOSTRING R19 ; [+2]
      155 GETIMPORT                        R18 K73 [tostring]
      157 CALL                             R18 1 1
      158 SETTABLEKS                       R18 R17 K57 ["key"]
      160 GETTABLEKS                       R18 R0 K74 ["title"]
      162 SETTABLEKS                       R18 R17 K58 ["text"]
      164 GETTABLEKS                       R18 R0 K75 ["onTitleFocusLost"]
      166 SETTABLEKS                       R18 R17 K59 ["onFocusLost"]
      168 GETTABLEKS                       R18 R0 K76 ["onTitleChanged"]
      170 SETTABLEKS                       R18 R17 K60 ["onChanged"]
      172 GETTABLEKS                       R19 R0 K35 ["isGenerating"]
      174 JUMPIFNOT                        R19 ; [+5]
      175 GETTABLEKS                       R19 R0 K77 ["isTitleBlank"]
      177 JUMPIFNOT                        R19 ; [+2]
      178 LOADK                            R18 K62 [""]
      179 JUMP                             ; [+5]
      180 LOADK                            R20 K20 ["Label"]
      181 LOADK                            R21 K78 ["VersionNamePlaceholder"]
      182 NAMECALL                         R18 R2 K29 ["getText"]
      184 CALL                             R18 3 1
      185 SETTABLEKS                       R18 R17 K63 ["placeholder"]
      187 GETTABLEKS                       R19 R0 K79 ["titleError"]
      189 JUMPIFNOT                        R19 ; [+3]
      190 GETTABLEKS                       R18 R0 K79 ["titleError"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R18
      194 SETTABLEKS                       R18 R17 K64 ["hint"]
      196 GETTABLEKS                       R19 R0 K79 ["titleError"]
      198 JUMPIFNOTEQKNIL                  R19 ; [+2]
      200 LOADB                            R18 0 +1
      201 LOADB                            R18 1
      202 SETTABLEKS                       R18 R17 K65 ["hasError"]
      204 GETTABLEKS                       R18 R0 K80 ["isBusy"]
      206 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      208 GETIMPORT                        R18 K82 [UDim.new]
      210 LOADN                            R19 0
      211 LOADN                            R20 450
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K66 ["width"]
      215 GETUPVAL                         R18 3
      216 GETTABLEKS                       R18 R18 K83 ["Enums"]
      218 GETTABLEKS                       R18 R18 K84 ["InputSize"]
      220 GETTABLEKS                       R18 R18 K85 ["Medium"]
      222 SETTABLEKS                       R18 R17 K68 ["size"]
      224 GETTABLEKS                       R18 R0 K86 ["titleRef"]
      226 SETTABLEKS                       R18 R17 K69 ["textBoxRef"]
      228 CALL                             R15 2 1
      229 SETTABLEKS                       R15 R14 K53 ["Input"]
      231 GETTABLEKS                       R16 R0 K35 ["isGenerating"]
      233 JUMPIFNOT                        R16 ; [+17]
      234 GETTABLEKS                       R16 R0 K77 ["isTitleBlank"]
      236 JUMPIFNOT                        R16 ; [+14]
      237 GETUPVAL                         R15 2
      238 GETTABLEKS                       R15 R15 K2 ["createElement"]
      240 GETUPVAL                         R16 5
      241 DUPTABLE                         R17 K89 [{["text"], ["centered"] = True}]
      242 LOADK                            R20 K90 ["Description"]
      243 LOADK                            R21 K91 ["Draft"]
      244 NAMECALL                         R18 R2 K29 ["getText"]
      246 CALL                             R18 3 1
      247 SETTABLEKS                       R18 R17 K58 ["text"]
      249 CALL                             R15 2 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R15
      252 SETTABLEKS                       R15 R14 K54 ["DraftingOverlay"]
      254 CALL                             R11 3 1
      255 SETTABLEKS                       R11 R10 K16 ["TitleInput"]
      257 CALL                             R7 3 1
      258 SETTABLEKS                       R7 R6 K10 ["TitleGroup"]
      260 GETUPVAL                         R7 2
      261 GETTABLEKS                       R7 R7 K2 ["createElement"]
      263 GETUPVAL                         R8 3
      264 GETTABLEKS                       R8 R8 K3 ["View"]
      266 DUPTABLE                         R9 K14 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      267 MOVE                             R10 R1
      268 CALL                             R10 0 1
      269 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      271 DUPTABLE                         R10 K93 [{"Label", "DescriptionInput"}]
      272 GETUPVAL                         R11 2
      273 GETTABLEKS                       R11 R11 K2 ["createElement"]
      275 GETUPVAL                         R12 3
      276 GETTABLEKS                       R12 R12 K24 ["Text"]
      278 DUPTABLE                         R13 K26 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-medium content-default", ["LayoutOrder"]}]
      279 LOADK                            R16 K20 ["Label"]
      280 LOADK                            R17 K94 ["VersionNotes"]
      281 NAMECALL                         R14 R2 K29 ["getText"]
      283 CALL                             R14 3 1
      284 SETTABLEKS                       R14 R13 K24 ["Text"]
      286 MOVE                             R14 R1
      287 CALL                             R14 0 1
      288 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      290 CALL                             R11 2 1
      291 SETTABLEKS                       R11 R10 K20 ["Label"]
      293 GETUPVAL                         R11 2
      294 GETTABLEKS                       R11 R11 K2 ["createElement"]
      296 GETUPVAL                         R12 3
      297 GETTABLEKS                       R12 R12 K3 ["View"]
      299 DUPTABLE                         R13 K46 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
      300 GETIMPORT                        R14 K49 [UDim2.new]
      302 LOADN                            R15 0
      303 LOADN                            R16 450
      304 LOADN                            R17 0
      305 LOADN                            R18 0
      306 CALL                             R14 4 1
      307 SETTABLEKS                       R14 R13 K44 ["Size"]
      309 GETIMPORT                        R14 K52 [Enum.AutomaticSize.Y]
      311 SETTABLEKS                       R14 R13 K45 ["AutomaticSize"]
      313 MOVE                             R14 R1
      314 CALL                             R14 0 1
      315 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      317 DUPTABLE                         R14 K55 [{"Input", "DraftingOverlay"}]
      318 GETUPVAL                         R15 2
      319 GETTABLEKS                       R15 R15 K2 ["createElement"]
      321 GETUPVAL                         R16 3
      322 GETTABLEKS                       R16 R16 K56 ["TextArea"]
      324 DUPTABLE                         R17 K96 [{["key"], ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 6, ["size"], ["textBoxRef"]}]
      325 GETTABLEKS                       R19 R0 K71 ["generationId"]
      327 FASTCALL1                        TOSTRING R19 ; [+2]
      328 GETIMPORT                        R18 K73 [tostring]
      330 CALL                             R18 1 1
      331 SETTABLEKS                       R18 R17 K57 ["key"]
      333 GETTABLEKS                       R18 R0 K97 ["description"]
      335 SETTABLEKS                       R18 R17 K58 ["text"]
      337 GETTABLEKS                       R18 R0 K98 ["onDescriptionChanged"]
      339 SETTABLEKS                       R18 R17 K60 ["onChanged"]
      341 GETTABLEKS                       R19 R0 K35 ["isGenerating"]
      343 JUMPIFNOT                        R19 ; [+5]
      344 GETTABLEKS                       R19 R0 K99 ["isDescriptionBlank"]
      346 JUMPIFNOT                        R19 ; [+2]
      347 LOADK                            R18 K62 [""]
      348 JUMP                             ; [+5]
      349 LOADK                            R20 K20 ["Label"]
      350 LOADK                            R21 K100 ["VersionNotesPlaceholder"]
      351 NAMECALL                         R18 R2 K29 ["getText"]
      353 CALL                             R18 3 1
      354 SETTABLEKS                       R18 R17 K63 ["placeholder"]
      356 GETTABLEKS                       R19 R0 K101 ["descriptionError"]
      358 JUMPIFNOT                        R19 ; [+3]
      359 GETTABLEKS                       R18 R0 K101 ["descriptionError"]
      361 JUMP                             ; [+1]
      362 LOADNIL                          R18
      363 SETTABLEKS                       R18 R17 K64 ["hint"]
      365 GETTABLEKS                       R19 R0 K101 ["descriptionError"]
      367 JUMPIFNOTEQKNIL                  R19 ; [+2]
      369 LOADB                            R18 0 +1
      370 LOADB                            R18 1
      371 SETTABLEKS                       R18 R17 K65 ["hasError"]
      373 GETTABLEKS                       R18 R0 K80 ["isBusy"]
      375 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      377 GETIMPORT                        R18 K82 [UDim.new]
      379 LOADN                            R19 0
      380 LOADN                            R20 450
      381 CALL                             R18 2 1
      382 SETTABLEKS                       R18 R17 K66 ["width"]
      384 GETUPVAL                         R18 3
      385 GETTABLEKS                       R18 R18 K83 ["Enums"]
      387 GETTABLEKS                       R18 R18 K84 ["InputSize"]
      389 GETTABLEKS                       R18 R18 K85 ["Medium"]
      391 SETTABLEKS                       R18 R17 K68 ["size"]
      393 GETTABLEKS                       R18 R0 K102 ["descriptionRef"]
      395 SETTABLEKS                       R18 R17 K69 ["textBoxRef"]
      397 CALL                             R15 2 1
      398 SETTABLEKS                       R15 R14 K53 ["Input"]
      400 GETTABLEKS                       R16 R0 K35 ["isGenerating"]
      402 JUMPIFNOT                        R16 ; [+17]
      403 GETTABLEKS                       R16 R0 K99 ["isDescriptionBlank"]
      405 JUMPIFNOT                        R16 ; [+14]
      406 GETUPVAL                         R15 2
      407 GETTABLEKS                       R15 R15 K2 ["createElement"]
      409 GETUPVAL                         R16 5
      410 DUPTABLE                         R17 K104 [{["text"], ["centered"] = False}]
      411 LOADK                            R20 K90 ["Description"]
      412 LOADK                            R21 K91 ["Draft"]
      413 NAMECALL                         R18 R2 K29 ["getText"]
      415 CALL                             R18 3 1
      416 SETTABLEKS                       R18 R17 K58 ["text"]
      418 CALL                             R15 2 1
      419 JUMP                             ; [+1]
      420 LOADNIL                          R15
      421 SETTABLEKS                       R15 R14 K54 ["DraftingOverlay"]
      423 CALL                             R11 3 1
      424 SETTABLEKS                       R11 R10 K92 ["DescriptionInput"]
      426 CALL                             R7 3 1
      427 SETTABLEKS                       R7 R6 K11 ["DescriptionGroup"]
      429 CALL                             R3 3 -1
      430 RETURN                           R3 -1
      431 GETUPVAL                         R3 2
      432 GETTABLEKS                       R3 R3 K2 ["createElement"]
      434 GETUPVAL                         R4 3
      435 GETTABLEKS                       R4 R4 K3 ["View"]
      437 DUPTABLE                         R5 K9 [{["tag"] = "col gap-medium size-full-0 auto-y padding-small", ["testId"] = "--notes-dialog-body", ["LayoutOrder"]}]
      438 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
      440 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      442 DUPTABLE                         R6 K105 [{"TitleInput", "DescriptionInput"}]
      443 GETUPVAL                         R7 2
      444 GETTABLEKS                       R7 R7 K2 ["createElement"]
      446 GETUPVAL                         R8 3
      447 GETTABLEKS                       R8 R8 K56 ["TextArea"]
      449 DUPTABLE                         R9 K106 [{["text"], ["onFocusLost"], ["onChanged"], ["label"], ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["textBoxRef"], ["LayoutOrder"]}]
      450 GETTABLEKS                       R10 R0 K74 ["title"]
      452 SETTABLEKS                       R10 R9 K58 ["text"]
      454 GETTABLEKS                       R10 R0 K75 ["onTitleFocusLost"]
      456 SETTABLEKS                       R10 R9 K59 ["onFocusLost"]
      458 GETTABLEKS                       R10 R0 K76 ["onTitleChanged"]
      460 SETTABLEKS                       R10 R9 K60 ["onChanged"]
      462 LOADK                            R11 K27 ["%* *"]
      463 LOADK                            R15 K20 ["Label"]
      464 LOADK                            R16 K28 ["VersionName"]
      465 NAMECALL                         R13 R2 K29 ["getText"]
      467 CALL                             R13 3 1
      468 NAMECALL                         R11 R11 K30 ["format"]
      470 CALL                             R11 2 1
      471 MOVE                             R10 R11
      472 SETTABLEKS                       R10 R9 K61 ["label"]
      474 LOADK                            R12 K20 ["Label"]
      475 LOADK                            R13 K78 ["VersionNamePlaceholder"]
      476 NAMECALL                         R10 R2 K29 ["getText"]
      478 CALL                             R10 3 1
      479 SETTABLEKS                       R10 R9 K63 ["placeholder"]
      481 GETTABLEKS                       R11 R0 K79 ["titleError"]
      483 JUMPIFNOT                        R11 ; [+3]
      484 GETTABLEKS                       R10 R0 K79 ["titleError"]
      486 JUMP                             ; [+1]
      487 LOADNIL                          R10
      488 SETTABLEKS                       R10 R9 K64 ["hint"]
      490 GETTABLEKS                       R11 R0 K79 ["titleError"]
      492 JUMPIFNOTEQKNIL                  R11 ; [+2]
      494 LOADB                            R10 0 +1
      495 LOADB                            R10 1
      496 SETTABLEKS                       R10 R9 K65 ["hasError"]
      498 GETTABLEKS                       R10 R0 K40 ["isLoading"]
      500 SETTABLEKS                       R10 R9 K36 ["isDisabled"]
      502 GETIMPORT                        R10 K82 [UDim.new]
      504 LOADN                            R11 0
      505 LOADN                            R12 450
      506 CALL                             R10 2 1
      507 SETTABLEKS                       R10 R9 K66 ["width"]
      509 GETUPVAL                         R10 3
      510 GETTABLEKS                       R10 R10 K83 ["Enums"]
      512 GETTABLEKS                       R10 R10 K84 ["InputSize"]
      514 GETTABLEKS                       R10 R10 K85 ["Medium"]
      516 SETTABLEKS                       R10 R9 K68 ["size"]
      518 GETTABLEKS                       R10 R0 K86 ["titleRef"]
      520 SETTABLEKS                       R10 R9 K69 ["textBoxRef"]
      522 MOVE                             R10 R1
      523 CALL                             R10 0 1
      524 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      526 CALL                             R7 2 1
      527 SETTABLEKS                       R7 R6 K16 ["TitleInput"]
      529 GETUPVAL                         R7 2
      530 GETTABLEKS                       R7 R7 K2 ["createElement"]
      532 GETUPVAL                         R8 3
      533 GETTABLEKS                       R8 R8 K56 ["TextArea"]
      535 DUPTABLE                         R9 K107 [{["text"], ["onChanged"], ["label"], ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 6, ["size"], ["textBoxRef"], ["LayoutOrder"]}]
      536 GETTABLEKS                       R10 R0 K97 ["description"]
      538 SETTABLEKS                       R10 R9 K58 ["text"]
      540 GETTABLEKS                       R10 R0 K98 ["onDescriptionChanged"]
      542 SETTABLEKS                       R10 R9 K60 ["onChanged"]
      544 LOADK                            R12 K20 ["Label"]
      545 LOADK                            R13 K94 ["VersionNotes"]
      546 NAMECALL                         R10 R2 K29 ["getText"]
      548 CALL                             R10 3 1
      549 SETTABLEKS                       R10 R9 K61 ["label"]
      551 LOADK                            R12 K20 ["Label"]
      552 LOADK                            R13 K100 ["VersionNotesPlaceholder"]
      553 NAMECALL                         R10 R2 K29 ["getText"]
      555 CALL                             R10 3 1
      556 SETTABLEKS                       R10 R9 K63 ["placeholder"]
      558 GETTABLEKS                       R11 R0 K101 ["descriptionError"]
      560 JUMPIFNOT                        R11 ; [+3]
      561 GETTABLEKS                       R10 R0 K101 ["descriptionError"]
      563 JUMP                             ; [+1]
      564 LOADNIL                          R10
      565 SETTABLEKS                       R10 R9 K64 ["hint"]
      567 GETTABLEKS                       R11 R0 K101 ["descriptionError"]
      569 JUMPIFNOTEQKNIL                  R11 ; [+2]
      571 LOADB                            R10 0 +1
      572 LOADB                            R10 1
      573 SETTABLEKS                       R10 R9 K65 ["hasError"]
      575 GETTABLEKS                       R10 R0 K40 ["isLoading"]
      577 SETTABLEKS                       R10 R9 K36 ["isDisabled"]
      579 GETIMPORT                        R10 K82 [UDim.new]
      581 LOADN                            R11 0
      582 LOADN                            R12 450
      583 CALL                             R10 2 1
      584 SETTABLEKS                       R10 R9 K66 ["width"]
      586 GETUPVAL                         R10 3
      587 GETTABLEKS                       R10 R10 K83 ["Enums"]
      589 GETTABLEKS                       R10 R10 K84 ["InputSize"]
      591 GETTABLEKS                       R10 R10 K85 ["Medium"]
      593 SETTABLEKS                       R10 R9 K68 ["size"]
      595 GETTABLEKS                       R10 R0 K102 ["descriptionRef"]
      597 SETTABLEKS                       R10 R9 K69 ["textBoxRef"]
      599 MOVE                             R10 R1
      600 CALL                             R10 0 1
      601 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      603 CALL                             R7 2 1
      604 SETTABLEKS                       R7 R6 K92 ["DescriptionInput"]
      606 CALL                             R3 3 -1
      607 RETURN                           R3 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K9 [{"Spacer", "CancelButton", "AcceptButton"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["createElement"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K1 ["View"]
       20 DUPTABLE                         R8 K11 [{["tag"] = "fill", ["LayoutOrder"]}]
       21 MOVE                             R9 R1
       22 CALL                             R9 0 1
       23 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K6 ["Spacer"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K0 ["createElement"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K12 ["Button"]
       34 DUPTABLE                         R8 K20 [{["text"], ["isDisabled"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--notes-dialog-cancel-button", ["LayoutOrder"]}]
       35 GETTABLEKS                       R9 R0 K21 ["cancelText"]
       37 SETTABLEKS                       R9 R8 K13 ["text"]
       39 GETTABLEKS                       R9 R0 K22 ["isLoading"]
       41 SETTABLEKS                       R9 R8 K14 ["isDisabled"]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K23 ["Enums"]
       46 GETTABLEKS                       R9 R9 K24 ["ButtonVariant"]
       48 GETTABLEKS                       R9 R9 K25 ["Standard"]
       50 SETTABLEKS                       R9 R8 K15 ["variant"]
       52 GETTABLEKS                       R9 R0 K26 ["onReject"]
       54 SETTABLEKS                       R9 R8 K16 ["onActivated"]
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K23 ["Enums"]
       59 GETTABLEKS                       R9 R9 K27 ["InputSize"]
       61 GETTABLEKS                       R9 R9 K28 ["Small"]
       63 SETTABLEKS                       R9 R8 K17 ["size"]
       65 MOVE                             R9 R1
       66 CALL                             R9 0 1
       67 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K7 ["CancelButton"]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K0 ["createElement"]
       75 GETUPVAL                         R7 2
       76 GETTABLEKS                       R7 R7 K12 ["Button"]
       78 DUPTABLE                         R8 K30 [{["text"], ["variant"], ["onActivated"], ["size"], ["isLoading"], ["isDisabled"], ["testId"] = "--notes-dialog-accept-button", ["LayoutOrder"]}]
       79 GETTABLEKS                       R9 R0 K31 ["acceptText"]
       81 SETTABLEKS                       R9 R8 K13 ["text"]
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R9 R9 K23 ["Enums"]
       86 GETTABLEKS                       R9 R9 K24 ["ButtonVariant"]
       88 GETTABLEKS                       R9 R9 K32 ["Emphasis"]
       90 SETTABLEKS                       R9 R8 K15 ["variant"]
       92 GETTABLEKS                       R9 R0 K33 ["onAccept"]
       94 SETTABLEKS                       R9 R8 K16 ["onActivated"]
       96 GETUPVAL                         R9 2
       97 GETTABLEKS                       R9 R9 K23 ["Enums"]
       99 GETTABLEKS                       R9 R9 K27 ["InputSize"]
      101 GETTABLEKS                       R9 R9 K28 ["Small"]
      103 SETTABLEKS                       R9 R8 K17 ["size"]
      105 GETTABLEKS                       R9 R0 K22 ["isLoading"]
      107 SETTABLEKS                       R9 R8 K22 ["isLoading"]
      109 GETTABLEKS                       R9 R0 K34 ["isAcceptDisabled"]
      111 SETTABLEKS                       R9 R8 K14 ["isDisabled"]
      113 MOVE                             R9 R1
      114 CALL                             R9 0 1
      115 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      117 CALL                             R6 2 1
      118 SETTABLEKS                       R6 R5 K8 ["AcceptButton"]
      120 CALL                             R2 3 -1
      121 RETURN                           R2 -1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 DUPTABLE                         R7 K4 [{"isRegenerated", "generationSuccess", "titleLength", "descriptionLength"}]
        3 SETTABLEKS                       R0 R7 K0 ["isRegenerated"]
        5 SETTABLEKS                       R1 R7 K1 ["generationSuccess"]
        7 SETTABLEKS                       R2 R7 K2 ["titleLength"]
        9 SETTABLEKS                       R3 R7 K3 ["descriptionLength"]
       11 NAMECALL                         R4 R4 K5 ["logRobloxTelemetryEvent"]
       13 CALL                             R4 3 0
       14 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADK                            R1 K2 ["Unused"]
       10 JUMP                             ; [+15]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["current"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+3]
       17 LOADK                            R1 K3 ["Accepted"]
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K1 ["current"]
       22 JUMPIFNOT                        R2 ; [+2]
       23 LOADK                            R1 K4 ["Rejected"]
       24 JUMP                             ; [+1]
       25 LOADK                            R1 K5 ["Edited"]
       26 GETUPVAL                         R2 4
       27 GETUPVAL                         R4 5
       28 DUPTABLE                         R5 K12 [{"type", "accepted", "titleLength", "descriptionLength", "hadFailedModeration", "summaryStatus"}]
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R6 R6 K13 ["variant"]
       32 SETTABLEKS                       R6 R5 K6 ["type"]
       34 SETTABLEKS                       R0 R5 K7 ["accepted"]
       36 GETUPVAL                         R6 7
       37 SETTABLEKS                       R6 R5 K8 ["titleLength"]
       39 GETUPVAL                         R6 8
       40 SETTABLEKS                       R6 R5 K9 ["descriptionLength"]
       42 GETUPVAL                         R6 9
       43 SETTABLEKS                       R6 R5 K10 ["hadFailedModeration"]
       45 SETTABLEKS                       R1 R5 K11 ["summaryStatus"]
       47 NAMECALL                         R2 R2 K14 ["logRobloxTelemetryEvent"]
       49 CALL                             R2 3 0
       50 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 NAMECALL                         R0 R0 K2 ["cancel"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K3 ["onReject"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 3
       23 LOADB                            R1 0
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K2 [task.wait]
        4 CALL                             R1 0 0
        5 GETTABLEKS                       R1 R0 K3 ["focus"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["current"]
        7 JUMPIFEQKNIL                     R1 ; [+7]
        9 JUMPIFNOTEQKS                    R0 K2 [""] ; [+5]
       11 GETUPVAL                         R1 2
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K1 ["current"]
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_33:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETTABLEKS                       R1 R0 K0 ["title"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R3 R0 K0 ["title"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+16]
       13 GETTABLEKS                       R1 R0 K1 ["description"]
       15 JUMPIFNOT                        R1 ; [+13]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R2 R0 K1 ["description"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R2 R0 K1 ["description"]
       23 SETTABLEKS                       R2 R1 K2 ["current"]
       25 GETUPVAL                         R1 6
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R1 K2 ["current"]
       29 GETUPVAL                         R1 7
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K2 ["current"]
       33 GETUPVAL                         R1 8
       34 LOADB                            R2 0
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 9
       37 GETUPVAL                         R2 10
       38 LOADB                            R3 1
       39 GETTABLEKS                       R6 R0 K0 ["title"]
       41 ORK                              R5 R6 K3 [""]
       42 GETIMPORT                        R6 K6 [utf8.len]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 MOVE                             R4 R6
       47 GETTABLEKS                       R7 R0 K1 ["description"]
       49 ORK                              R6 R7 K3 [""]
       50 GETIMPORT                        R7 K6 [utf8.len]
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R5 R7
       55 CALL                             R1 4 0
       56 GETUPVAL                         R1 11
       57 DUPCLOSURE                       R2 K7 [PROTO_33]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 LOADB                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R0 4 0
       13 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["cancel"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 1
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 GETUPVAL                         R0 2
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 3
       21 JUMPIFEQKN                       R1 K2 [0] ; [+2]
       23 LOADB                            R0 0 +1
       24 LOADB                            R0 1
       25 GETUPVAL                         R2 4
       26 JUMPIFEQKN                       R2 K2 [0] ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K0 ["current"]
       33 LOADN                            R4 0
       34 JUMPIFLT                         R4 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 GETUPVAL                         R3 5
       39 GETTABLEKS                       R4 R3 K0 ["current"]
       41 ADDK                             R4 R4 K3 [1]
       42 SETTABLEKS                       R4 R3 K0 ["current"]
       44 GETUPVAL                         R3 2
       45 LOADB                            R4 1
       46 CALL                             R3 1 0
       47 LOADB                            R3 0
       48 GETUPVAL                         R4 6
       49 GETTABLEKS                       R4 R4 K4 ["isPublished"]
       51 JUMPIFNOTEQKB                    R4 TRUE ; [+8]
       53 GETUPVAL                         R4 6
       54 GETTABLEKS                       R4 R4 K5 ["date"]
       56 JUMPIFNOTEQKNIL                  R4 ; [+2]
       58 LOADB                            R3 0 +1
       59 LOADB                            R3 1
       60 JUMPIFNOT                        R3 ; [+17]
       61 GETUPVAL                         R4 7
       62 GETTABLEKS                       R4 R4 K6 ["getGeneratedNotes"]
       64 GETUPVAL                         R6 6
       65 GETTABLEKS                       R6 R6 K7 ["placeId"]
       67 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       69 LOADK                            R7 K8 ["retroactive generation requires a placeId"]
       70 GETIMPORT                        R5 K10 [assert]
       72 CALL                             R5 2 1
       73 GETUPVAL                         R6 6
       74 GETTABLEKS                       R6 R6 K5 ["date"]
       76 CALL                             R4 2 1
       77 JUMP                             ; [+11]
       78 GETUPVAL                         R4 7
       79 GETTABLEKS                       R4 R4 K6 ["getGeneratedNotes"]
       81 GETUPVAL                         R5 6
       82 GETTABLEKS                       R5 R5 K7 ["placeId"]
       84 JUMPIF                           R5 ; [+3]
       85 GETUPVAL                         R5 8
       86 GETTABLEKS                       R5 R5 K11 ["sessionPlaceId"]
       88 CALL                             R4 1 1
       89 GETUPVAL                         R5 1
       90 SETTABLEKS                       R4 R5 K0 ["current"]
       92 NEWCLOSURE                       R7 P0
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          UPVAL U14
      103 CAPTURE                          VAL R2
      104 CAPTURE                          UPVAL U15
      105 NAMECALL                         R5 R4 K12 ["andThen"]
      107 CALL                             R5 2 1
      108 NEWCLOSURE                       R7 P1
      109 CAPTURE                          UPVAL U1
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U14
      112 CAPTURE                          VAL R2
      113 NAMECALL                         R5 R5 K13 ["catch"]
      115 CALL                             R5 2 0
      116 RETURN                           R0 0

PROTO_37:
        0 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["variant"]
        7 JUMPIFNOTEQKS                    R0 K2 ["Publish"] ; [+3]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K1 ["use"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["useState"]
       19 GETIMPORT                        R6 K5 [Vector2.new]
       21 LOADN                            R7 482
       22 LOADN                            R8 307
       23 CALL                             R6 2 -1
       24 CALL                             R5 -1 2
       25 GETTABLEKS                       R8 R0 K6 ["notes"]
       27 JUMPIFNOT                        R8 ; [+10]
       28 GETTABLEKS                       R8 R0 K6 ["notes"]
       30 GETTABLEKS                       R8 R8 K7 ["title"]
       32 JUMPIFNOT                        R8 ; [+5]
       33 GETTABLEKS                       R7 R0 K6 ["notes"]
       35 GETTABLEKS                       R7 R7 K7 ["title"]
       37 JUMP                             ; [+1]
       38 LOADK                            R7 K8 [""]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K2 ["useState"]
       42 MOVE                             R9 R7
       43 CALL                             R8 1 2
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K2 ["useState"]
       47 LOADNIL                          R11
       48 CALL                             R10 1 2
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R12 R12 K2 ["useState"]
       52 LOADN                            R13 0
       53 CALL                             R12 1 2
       54 GETTABLEKS                       R15 R0 K6 ["notes"]
       56 JUMPIFNOT                        R15 ; [+10]
       57 GETTABLEKS                       R15 R0 K6 ["notes"]
       59 GETTABLEKS                       R15 R15 K9 ["description"]
       61 JUMPIFNOT                        R15 ; [+5]
       62 GETTABLEKS                       R14 R0 K6 ["notes"]
       64 GETTABLEKS                       R14 R14 K9 ["description"]
       66 JUMP                             ; [+1]
       67 LOADK                            R14 K8 [""]
       68 GETUPVAL                         R15 1
       69 GETTABLEKS                       R15 R15 K2 ["useState"]
       71 MOVE                             R16 R14
       72 CALL                             R15 1 2
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R17 R17 K2 ["useState"]
       76 LOADNIL                          R18
       77 CALL                             R17 1 2
       78 GETUPVAL                         R19 1
       79 GETTABLEKS                       R19 R19 K2 ["useState"]
       81 LOADN                            R20 0
       82 CALL                             R19 1 2
       83 GETUPVAL                         R21 1
       84 GETTABLEKS                       R21 R21 K10 ["useRef"]
       86 LOADNIL                          R22
       87 CALL                             R21 1 1
       88 GETUPVAL                         R22 1
       89 GETTABLEKS                       R22 R22 K2 ["useState"]
       91 LOADB                            R23 0
       92 CALL                             R22 1 2
       93 GETUPVAL                         R24 1
       94 GETTABLEKS                       R24 R24 K2 ["useState"]
       96 LOADB                            R25 0
       97 CALL                             R24 1 2
       98 GETUPVAL                         R26 1
       99 GETTABLEKS                       R26 R26 K2 ["useState"]
      101 LOADN                            R27 0
      102 CALL                             R26 1 2
      103 GETUPVAL                         R28 1
      104 GETTABLEKS                       R28 R28 K10 ["useRef"]
      106 LOADNIL                          R29
      107 CALL                             R28 1 1
      108 GETUPVAL                         R29 1
      109 GETTABLEKS                       R29 R29 K10 ["useRef"]
      111 LOADNIL                          R30
      112 CALL                             R29 1 1
      113 GETUPVAL                         R30 1
      114 GETTABLEKS                       R30 R30 K10 ["useRef"]
      116 LOADB                            R31 0
      117 CALL                             R30 1 1
      118 GETUPVAL                         R31 1
      119 GETTABLEKS                       R31 R31 K10 ["useRef"]
      121 LOADN                            R32 0
      122 CALL                             R31 1 1
      123 GETUPVAL                         R32 1
      124 GETTABLEKS                       R32 R32 K2 ["useState"]
      126 LOADB                            R33 0
      127 CALL                             R32 1 2
      128 GETUPVAL                         R35 5
      129 GETTABLEKS                       R35 R35 K11 ["EngineFeaturePVHGenerateNotes"]
      131 JUMPIFNOT                        R35 ; [+2]
      132 OR                               R34 R22 R24
      133 JUMP                             ; [+1]
      134 MOVE                             R34 R22
      135 GETTABLEKS                       R36 R0 K12 ["placeId"]
      137 JUMPIFEQKNIL                     R36 ; [+6]
      139 LOADB                            R35 1
      140 GETTABLEKS                       R36 R0 K12 ["placeId"]
      142 JUMPIFNOTEQKN                    R36 K13 [0] ; [+7]
      144 GETTABLEKS                       R36 R0 K14 ["variant"]
      146 JUMPIFEQKS                       R36 K15 ["Publish"] ; [+2]
      148 LOADB                            R35 0 +1
      149 LOADB                            R35 1
      150 GETUPVAL                         R36 5
      151 GETTABLEKS                       R36 R36 K11 ["EngineFeaturePVHGenerateNotes"]
      153 JUMPIFNOT                        R36 ; [+10]
      154 GETTABLEKS                       R37 R0 K16 ["isPublished"]
      156 JUMPIFEQKB                       R37 TRUE ; [+6]
      158 LOADB                            R36 0
      159 GETTABLEKS                       R37 R0 K14 ["variant"]
      161 JUMPIFNOTEQKS                    R37 K15 ["Publish"] ; [+2]
      163 MOVE                             R36 R35
      164 GETUPVAL                         R38 5
      165 GETTABLEKS                       R38 R38 K11 ["EngineFeaturePVHGenerateNotes"]
      167 JUMPIFNOT                        R38 ; [+2]
      168 MOVE                             R37 R34
      169 JUMPIF                           R37 ; [+12]
      170 MOVE                             R37 R22
      171 JUMPIF                           R37 ; [+10]
      172 LOADB                            R37 1
      173 JUMPIFEQKN                       R12 K13 [0] ; [+8]
      175 LOADB                            R37 1
      176 JUMPIFNOTEQKNIL                  R10 ; [+5]
      178 JUMPIFNOTEQKNIL                  R17 ; [+2]
      180 LOADB                            R37 0 +1
      181 LOADB                            R37 1
      182 JUMPIFEQKN                       R12 K13 [0] ; [+2]
      184 LOADB                            R38 0 +1
      185 LOADB                            R38 1
      186 JUMPIFEQKN                       R19 K13 [0] ; [+2]
      188 LOADB                            R39 0 +1
      189 LOADB                            R39 1
      190 MOVE                             R40 R36
      191 JUMPIFNOT                        R40 ; [+5]
      192 MOVE                             R40 R24
      193 JUMPIF                           R40 ; [+3]
      194 MOVE                             R40 R38
      195 JUMPIF                           R40 ; [+1]
      196 MOVE                             R40 R39
      197 GETUPVAL                         R42 5
      198 GETTABLEKS                       R42 R42 K11 ["EngineFeaturePVHGenerateNotes"]
      200 JUMPIF                           R42 ; [+2]
      201 LOADK                            R41 K8 [""]
      202 JUMP                             ; [+27]
      203 JUMPIFNOT                        R24 ; [+6]
      204 LOADK                            R43 K17 ["Action"]
      205 LOADK                            R44 K18 ["StopGenerating"]
      206 NAMECALL                         R41 R4 K19 ["getText"]
      208 CALL                             R41 3 1
      209 JUMP                             ; [+20]
      210 JUMPIFNOT                        R38 ; [+7]
      211 JUMPIFNOT                        R39 ; [+6]
      212 LOADK                            R43 K17 ["Action"]
      213 LOADK                            R44 K20 ["GenerateTitleAndDetails"]
      214 NAMECALL                         R41 R4 K19 ["getText"]
      216 CALL                             R41 3 1
      217 JUMP                             ; [+12]
      218 JUMPIFNOT                        R38 ; [+6]
      219 LOADK                            R43 K17 ["Action"]
      220 LOADK                            R44 K21 ["GenerateTitle"]
      221 NAMECALL                         R41 R4 K19 ["getText"]
      223 CALL                             R41 3 1
      224 JUMP                             ; [+5]
      225 LOADK                            R43 K17 ["Action"]
      226 LOADK                            R44 K22 ["GenerateDetails"]
      227 NAMECALL                         R41 R4 K19 ["getText"]
      229 CALL                             R41 3 1
      230 GETUPVAL                         R42 1
      231 GETTABLEKS                       R42 R42 K23 ["useEffect"]
      233 NEWCLOSURE                       R43 P0
      234 CAPTURE                          VAL R8
      235 CAPTURE                          UPVAL U6
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R13
      239 NEWTABLE                         R44 0 1
      241 MOVE                             R45 R8
      242 SETLIST                          R44 R45 1 [1]
      244 CALL                             R42 2 0
      245 GETUPVAL                         R42 1
      246 GETTABLEKS                       R42 R42 K23 ["useEffect"]
      248 NEWCLOSURE                       R43 P1
      249 CAPTURE                          VAL R15
      250 CAPTURE                          UPVAL U7
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R4
      253 CAPTURE                          UPVAL U8
      254 CAPTURE                          VAL R20
      255 NEWTABLE                         R44 0 1
      257 MOVE                             R45 R15
      258 SETLIST                          R44 R45 1 [1]
      260 CALL                             R42 2 0
      261 GETUPVAL                         R42 1
      262 GETTABLEKS                       R42 R42 K24 ["useCallback"]
      264 NEWCLOSURE                       R43 P2
      265 CAPTURE                          VAL R33
      266 CAPTURE                          UPVAL U9
      267 CAPTURE                          UPVAL U10
      268 NEWTABLE                         R44 0 0
      270 CALL                             R42 2 1
      271 GETUPVAL                         R43 1
      272 GETTABLEKS                       R43 R43 K24 ["useCallback"]
      274 DUPCLOSURE                       R44 K25 [PROTO_20]
      275 CAPTURE                          UPVAL U9
      276 CAPTURE                          UPVAL U11
      277 NEWTABLE                         R45 0 0
      279 CALL                             R43 2 1
      280 GETUPVAL                         R44 1
      281 GETTABLEKS                       R44 R44 K24 ["useCallback"]
      283 NEWCLOSURE                       R45 P4
      284 CAPTURE                          UPVAL U5
      285 CAPTURE                          VAL R29
      286 CAPTURE                          VAL R15
      287 CAPTURE                          VAL R30
      288 CAPTURE                          UPVAL U9
      289 CAPTURE                          UPVAL U12
      290 CAPTURE                          VAL R0
      291 CAPTURE                          VAL R12
      292 CAPTURE                          VAL R19
      293 CAPTURE                          VAL R32
      294 NEWTABLE                         R46 0 5
      296 GETTABLEKS                       R47 R0 K14 ["variant"]
      298 MOVE                             R48 R12
      299 MOVE                             R49 R19
      300 MOVE                             R50 R32
      301 MOVE                             R51 R15
      302 SETLIST                          R46 R47 5 [1]
      304 CALL                             R44 2 1
      305 GETUPVAL                         R45 1
      306 GETTABLEKS                       R45 R45 K24 ["useCallback"]
      308 NEWCLOSURE                       R46 P5
      309 CAPTURE                          VAL R23
      310 CAPTURE                          UPVAL U13
      311 CAPTURE                          VAL R12
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R8
      314 CAPTURE                          VAL R19
      315 CAPTURE                          VAL R15
      316 CAPTURE                          VAL R42
      317 CAPTURE                          VAL R11
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R18
      320 CAPTURE                          VAL R0
      321 CAPTURE                          VAL R44
      322 NEWTABLE                         R47 0 7
      324 GETTABLEKS                       R48 R0 K26 ["onAccept"]
      326 MOVE                             R49 R8
      327 MOVE                             R50 R15
      328 MOVE                             R51 R12
      329 MOVE                             R52 R19
      330 MOVE                             R53 R44
      331 MOVE                             R54 R42
      332 SETLIST                          R47 R48 7 [1]
      334 CALL                             R45 2 1
      335 GETUPVAL                         R46 1
      336 GETTABLEKS                       R46 R46 K24 ["useCallback"]
      338 NEWCLOSURE                       R47 P6
      339 CAPTURE                          UPVAL U5
      340 CAPTURE                          VAL R28
      341 CAPTURE                          VAL R0
      342 CAPTURE                          VAL R44
      343 NEWTABLE                         R48 0 1
      345 MOVE                             R49 R44
      346 SETLIST                          R48 R49 1 [1]
      348 CALL                             R46 2 1
      349 GETUPVAL                         R47 1
      350 GETTABLEKS                       R47 R47 K24 ["useCallback"]
      352 NEWCLOSURE                       R48 P7
      353 CAPTURE                          VAL R6
      354 NEWTABLE                         R49 0 0
      356 CALL                             R47 2 1
      357 GETUPVAL                         R48 1
      358 GETTABLEKS                       R48 R48 K24 ["useCallback"]
      360 DUPCLOSURE                       R49 K27 [PROTO_29]
      361 NEWTABLE                         R50 0 0
      363 CALL                             R48 2 1
      364 GETUPVAL                         R49 1
      365 GETTABLEKS                       R49 R49 K24 ["useCallback"]
      367 NEWCLOSURE                       R50 P9
      368 CAPTURE                          VAL R21
      369 CAPTURE                          VAL R37
      370 CAPTURE                          VAL R45
      371 NEWTABLE                         R51 0 2
      373 MOVE                             R52 R45
      374 MOVE                             R53 R37
      375 SETLIST                          R51 R52 2 [1]
      377 CALL                             R49 2 1
      378 GETUPVAL                         R50 1
      379 GETTABLEKS                       R50 R50 K24 ["useCallback"]
      381 NEWCLOSURE                       R51 P10
      382 CAPTURE                          VAL R9
      383 CAPTURE                          UPVAL U14
      384 NEWTABLE                         R52 0 0
      386 CALL                             R50 2 1
      387 GETUPVAL                         R51 1
      388 GETTABLEKS                       R51 R51 K24 ["useCallback"]
      390 NEWCLOSURE                       R52 P11
      391 CAPTURE                          UPVAL U5
      392 CAPTURE                          VAL R29
      393 CAPTURE                          VAL R30
      394 CAPTURE                          VAL R16
      395 NEWTABLE                         R53 0 0
      397 CALL                             R51 2 1
      398 GETUPVAL                         R53 5
      399 GETTABLEKS                       R53 R53 K11 ["EngineFeaturePVHGenerateNotes"]
      401 JUMPIFNOT                        R53 ; [+39]
      402 GETUPVAL                         R52 1
      403 GETTABLEKS                       R52 R52 K24 ["useCallback"]
      405 NEWCLOSURE                       R53 P12
      406 CAPTURE                          VAL R24
      407 CAPTURE                          VAL R28
      408 CAPTURE                          VAL R25
      409 CAPTURE                          VAL R12
      410 CAPTURE                          VAL R19
      411 CAPTURE                          VAL R31
      412 CAPTURE                          VAL R0
      413 CAPTURE                          VAL R2
      414 CAPTURE                          VAL R3
      415 CAPTURE                          VAL R9
      416 CAPTURE                          UPVAL U14
      417 CAPTURE                          VAL R16
      418 CAPTURE                          VAL R29
      419 CAPTURE                          VAL R30
      420 CAPTURE                          VAL R43
      421 CAPTURE                          VAL R27
      422 NEWTABLE                         R54 0 9
      424 MOVE                             R55 R24
      425 MOVE                             R56 R12
      426 MOVE                             R57 R19
      427 MOVE                             R58 R2
      428 GETTABLEKS                       R59 R0 K16 ["isPublished"]
      430 GETTABLEKS                       R60 R0 K12 ["placeId"]
      432 GETTABLEKS                       R61 R0 K28 ["date"]
      434 GETTABLEKS                       R62 R3 K29 ["sessionPlaceId"]
      436 MOVE                             R63 R43
      437 SETLIST                          R54 R55 9 [1]
      439 CALL                             R52 2 1
      440 JUMP                             ; [+1]
      441 DUPCLOSURE                       R52 K30 [PROTO_37]
      442 GETUPVAL                         R53 1
      443 GETTABLEKS                       R53 R53 K23 ["useEffect"]
      445 NEWCLOSURE                       R54 P14
      446 CAPTURE                          UPVAL U5
      447 CAPTURE                          VAL R0
      448 CAPTURE                          VAL R52
      449 NEWTABLE                         R55 0 0
      451 CALL                             R53 2 0
      452 LOADK                            R55 K17 ["Action"]
      453 LOADK                            R56 K31 ["Cancel"]
      454 NAMECALL                         R53 R4 K19 ["getText"]
      456 CALL                             R53 3 1
      457 GETTABLEKS                       R55 R0 K14 ["variant"]
      459 JUMPIFNOTEQKS                    R55 K32 ["Edit"] ; [+7]
      461 LOADK                            R56 K17 ["Action"]
      462 LOADK                            R57 K33 ["Save"]
      463 NAMECALL                         R54 R4 K19 ["getText"]
      465 CALL                             R54 3 1
      466 JUMP                             ; [+31]
      467 GETTABLEKS                       R55 R0 K14 ["variant"]
      469 JUMPIFNOTEQKS                    R55 K34 ["Add"] ; [+7]
      471 LOADK                            R56 K17 ["Action"]
      472 LOADK                            R57 K33 ["Save"]
      473 NAMECALL                         R54 R4 K19 ["getText"]
      475 CALL                             R54 3 1
      476 JUMP                             ; [+21]
      477 GETTABLEKS                       R55 R0 K14 ["variant"]
      479 JUMPIFNOTEQKS                    R55 K33 ["Save"] ; [+7]
      481 LOADK                            R56 K17 ["Action"]
      482 LOADK                            R57 K33 ["Save"]
      483 NAMECALL                         R54 R4 K19 ["getText"]
      485 CALL                             R54 3 1
      486 JUMP                             ; [+11]
      487 GETTABLEKS                       R55 R0 K14 ["variant"]
      489 JUMPIFNOTEQKS                    R55 K15 ["Publish"] ; [+7]
      491 LOADK                            R56 K17 ["Action"]
      492 LOADK                            R57 K15 ["Publish"]
      493 NAMECALL                         R54 R4 K19 ["getText"]
      495 CALL                             R54 3 1
      496 JUMP                             ; [+1]
      497 LOADK                            R54 K8 [""]
      498 DUPTABLE                         R55 K37 [{"StyleLink", "MainView"}]
      499 GETUPVAL                         R56 1
      500 GETTABLEKS                       R56 R56 K38 ["createElement"]
      502 LOADK                            R57 K35 ["StyleLink"]
      503 DUPTABLE                         R58 K40 [{"StyleSheet"}]
      504 GETUPVAL                         R59 15
      505 CALL                             R59 0 1
      506 SETTABLEKS                       R59 R58 K39 ["StyleSheet"]
      508 CALL                             R56 2 1
      509 SETTABLEKS                       R56 R55 K35 ["StyleLink"]
      511 GETUPVAL                         R56 1
      512 GETTABLEKS                       R56 R56 K38 ["createElement"]
      514 GETUPVAL                         R57 16
      515 GETTABLEKS                       R57 R57 K41 ["View"]
      517 DUPTABLE                         R58 K45 [{["tag"] = "col gap-small size-0-0 auto-xy padding-small", ["onAbsoluteSizeChanged"]}]
      518 SETTABLEKS                       R47 R58 K44 ["onAbsoluteSizeChanged"]
      520 DUPTABLE                         R59 K48 [{"Body", "Footer"}]
      521 GETUPVAL                         R60 1
      522 GETTABLEKS                       R60 R60 K38 ["createElement"]
      524 GETUPVAL                         R61 17
      525 DUPTABLE                         R62 K67 [{"localization", "title", "description", "titleError", "descriptionError", "isLoading", "isBusy", "isGenerating", "isTitleBlank", "isDescriptionBlank", "showGenerateButton", "generateTooltip", "generationId", "onTitleFocusLost", "onTitleChanged", "onDescriptionChanged", "onGenerateTrigger", "titleRef", "descriptionRef", "LayoutOrder"}]
      526 SETTABLEKS                       R4 R62 K49 ["localization"]
      528 SETTABLEKS                       R8 R62 K7 ["title"]
      530 SETTABLEKS                       R15 R62 K9 ["description"]
      532 SETTABLEKS                       R10 R62 K50 ["titleError"]
      534 SETTABLEKS                       R17 R62 K51 ["descriptionError"]
      536 SETTABLEKS                       R22 R62 K52 ["isLoading"]
      538 SETTABLEKS                       R34 R62 K53 ["isBusy"]
      540 SETTABLEKS                       R24 R62 K54 ["isGenerating"]
      542 SETTABLEKS                       R38 R62 K55 ["isTitleBlank"]
      544 SETTABLEKS                       R39 R62 K56 ["isDescriptionBlank"]
      546 SETTABLEKS                       R40 R62 K57 ["showGenerateButton"]
      548 SETTABLEKS                       R41 R62 K58 ["generateTooltip"]
      550 SETTABLEKS                       R26 R62 K59 ["generationId"]
      552 SETTABLEKS                       R49 R62 K60 ["onTitleFocusLost"]
      554 SETTABLEKS                       R50 R62 K61 ["onTitleChanged"]
      556 SETTABLEKS                       R51 R62 K62 ["onDescriptionChanged"]
      558 SETTABLEKS                       R52 R62 K63 ["onGenerateTrigger"]
      560 SETTABLEKS                       R48 R62 K64 ["titleRef"]
      562 SETTABLEKS                       R21 R62 K65 ["descriptionRef"]
      564 MOVE                             R63 R1
      565 CALL                             R63 0 1
      566 SETTABLEKS                       R63 R62 K66 ["LayoutOrder"]
      568 CALL                             R60 2 1
      569 SETTABLEKS                       R60 R59 K46 ["Body"]
      571 GETUPVAL                         R60 1
      572 GETTABLEKS                       R60 R60 K38 ["createElement"]
      574 GETUPVAL                         R61 18
      575 DUPTABLE                         R62 K72 [{"cancelText", "acceptText", "isLoading", "isAcceptDisabled", "onAccept", "onReject", "LayoutOrder"}]
      576 SETTABLEKS                       R53 R62 K68 ["cancelText"]
      578 SETTABLEKS                       R54 R62 K69 ["acceptText"]
      580 SETTABLEKS                       R22 R62 K52 ["isLoading"]
      582 SETTABLEKS                       R37 R62 K70 ["isAcceptDisabled"]
      584 SETTABLEKS                       R45 R62 K26 ["onAccept"]
      586 SETTABLEKS                       R46 R62 K71 ["onReject"]
      588 MOVE                             R63 R1
      589 CALL                             R63 0 1
      590 SETTABLEKS                       R63 R62 K66 ["LayoutOrder"]
      592 CALL                             R60 2 1
      593 SETTABLEKS                       R60 R59 K47 ["Footer"]
      595 CALL                             R56 3 1
      596 SETTABLEKS                       R56 R55 K36 ["MainView"]
      598 GETUPVAL                         R56 1
      599 GETTABLEKS                       R56 R56 K38 ["createElement"]
      601 GETUPVAL                         R57 19
      602 GETTABLEKS                       R57 R57 K73 ["UI"]
      604 GETTABLEKS                       R57 R57 K74 ["Dialog"]
      606 DUPTABLE                         R58 K83 [{["Title"], ["Enabled"] = True, ["Modal"] = True, ["Resizable"] = False, ["Size"], ["OnClose"]}]
      607 GETTABLEKS                       R60 R0 K14 ["variant"]
      609 JUMPIFNOTEQKS                    R60 K32 ["Edit"] ; [+7]
      611 LOADK                            R61 K75 ["Title"]
      612 LOADK                            R62 K84 ["EditVersionNotes"]
      613 NAMECALL                         R59 R4 K19 ["getText"]
      615 CALL                             R59 3 1
      616 JUMP                             ; [+31]
      617 GETTABLEKS                       R60 R0 K14 ["variant"]
      619 JUMPIFNOTEQKS                    R60 K34 ["Add"] ; [+7]
      621 LOADK                            R61 K75 ["Title"]
      622 LOADK                            R62 K85 ["AddVersionNotes"]
      623 NAMECALL                         R59 R4 K19 ["getText"]
      625 CALL                             R59 3 1
      626 JUMP                             ; [+21]
      627 GETTABLEKS                       R60 R0 K14 ["variant"]
      629 JUMPIFNOTEQKS                    R60 K33 ["Save"] ; [+7]
      631 LOADK                            R61 K75 ["Title"]
      632 LOADK                            R62 K86 ["SaveWithVersionNotes"]
      633 NAMECALL                         R59 R4 K19 ["getText"]
      635 CALL                             R59 3 1
      636 JUMP                             ; [+11]
      637 GETTABLEKS                       R60 R0 K14 ["variant"]
      639 JUMPIFNOTEQKS                    R60 K15 ["Publish"] ; [+7]
      641 LOADK                            R61 K75 ["Title"]
      642 LOADK                            R62 K87 ["PublishWithVersionNotes"]
      643 NAMECALL                         R59 R4 K19 ["getText"]
      645 CALL                             R59 3 1
      646 JUMP                             ; [+1]
      647 LOADK                            R59 K8 [""]
      648 SETTABLEKS                       R59 R58 K75 ["Title"]
      650 SETTABLEKS                       R5 R58 K81 ["Size"]
      652 SETTABLEKS                       R46 R58 K82 ["OnClose"]
      654 GETUPVAL                         R60 5
      655 GETTABLEKS                       R60 R60 K11 ["EngineFeaturePVHGenerateNotes"]
      657 JUMPIFNOT                        R60 ; [+11]
      658 DUPTABLE                         R59 K89 [{"Content"}]
      659 GETUPVAL                         R60 1
      660 GETTABLEKS                       R60 R60 K38 ["createElement"]
      662 GETUPVAL                         R61 20
      663 LOADNIL                          R62
      664 MOVE                             R63 R55
      665 CALL                             R60 3 1
      666 SETTABLEKS                       R60 R59 K88 ["Content"]
      668 JUMP                             ; [+1]
      669 MOVE                             R59 R55
      670 CALL                             R56 3 -1
      671 RETURN                           R56 -1

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
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R10 K21 ["SettingContext"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R13 R7 K22 ["new"]
       78 CALL                             R13 0 1
       79 GETTABLEKS                       R14 R0 K18 ["Src"]
       81 GETTABLEKS                       R14 R14 K23 ["Events"]
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R14 K24 ["AddNotesEvent"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K5 [require]
       90 GETTABLEKS                       R17 R14 K25 ["SummaryGenerationEvent"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R18 R14 K26 ["TextModerationEvent"]
       97 CALL                             R17 1 1
       98 GETTABLEKS                       R18 R3 K27 ["createNextOrder"]
      100 GETTABLEKS                       R19 R4 K28 ["Hooks"]
      102 GETTABLEKS                       R19 R19 K29 ["useStyleSheet"]
      104 GETTABLEKS                       R20 R0 K18 ["Src"]
      106 GETTABLEKS                       R20 R20 K30 ["Components"]
      108 GETIMPORT                        R21 K5 [require]
      110 GETTABLEKS                       R22 R20 K31 ["DraftingText"]
      112 GETTABLEKS                       R22 R22 K32 ["Overlay"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K5 [require]
      117 GETTABLEKS                       R23 R20 K33 ["GenerateButton"]
      119 CALL                             R22 1 1
      120 GETIMPORT                        R23 K5 [require]
      122 GETTABLEKS                       R24 R0 K18 ["Src"]
      124 GETTABLEKS                       R24 R24 K34 ["Types"]
      126 CALL                             R23 1 1
      127 GETTABLEKS                       R24 R1 K35 ["FIntPVHMaxTitleChars"]
      129 GETTABLEKS                       R25 R1 K36 ["FIntPVHMaxDescriptionChars"]
      131 GETTABLEKS                       R26 R1 K37 ["FIntPVHMaxDescriptionLines"]
      133 DUPCLOSURE                       R27 K38 [PROTO_0]
      134 DUPCLOSURE                       R28 K39 [PROTO_1]
      135 DUPCLOSURE                       R29 K40 [PROTO_2]
      136 DUPCLOSURE                       R30 K41 [PROTO_3]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R4
      139 DUPCLOSURE                       R31 K42 [PROTO_14]
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R24
      145 CAPTURE                          VAL R25
      146 CAPTURE                          VAL R26
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R27
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R4
      155 DUPCLOSURE                       R32 K43 [PROTO_15]
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R21
      162 DUPCLOSURE                       R33 K44 [PROTO_16]
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R4
      166 DUPCLOSURE                       R34 K45 [PROTO_39]
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R26
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R27
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R32
      185 CAPTURE                          VAL R33
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R30
      188 GETTABLEKS                       R36 R1 K46 ["FFlagPluginQWidgetModalFocusKeyboard"]
      190 JUMPIFNOT                        R36 ; [+2]
      191 MOVE                             R35 R34
      192 RETURN                           R35 1
      193 MOVE                             R35 R31
      194 RETURN                           R35 1
