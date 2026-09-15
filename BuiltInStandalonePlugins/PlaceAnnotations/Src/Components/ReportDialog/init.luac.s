PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["step"]
        8 SETTABLE                         R5 R1 R7
        9 FORGLOOP                         R2 2 ; [-4]
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R4 R0 K3 ["IsThreadFlow"]
       12 JUMPIFNOT                        R4 ; [+2]
       13 GETUPVAL                         R3 2
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R5 R0 K3 ["IsThreadFlow"]
       18 JUMPIFNOT                        R5 ; [+2]
       19 GETUPVAL                         R4 4
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R4 5
       22 GETTABLEKS                       R6 R0 K4 ["Step"]
       24 GETTABLE                         R5 R4 R6
       25 JUMPIF                           R5 ; [+2]
       26 LENGTH                           R6 R3
       27 ADDK                             R5 R6 K5 [1]
       28 NEWTABLE                         R6 0 0
       30 MOVE                             R7 R3
       31 LOADNIL                          R8
       32 LOADNIL                          R9
       33 FORGPREP                         R7
       34 JUMPIFLT                         R10 R5 ; [+2]
       36 LOADB                            R12 0 +1
       37 LOADB                            R12 1
       38 JUMPIFEQ                         R10 R5 ; [+2]
       40 LOADB                            R13 0 +1
       41 LOADB                            R13 1
       42 GETTABLEKS                       R14 R11 K6 ["key"]
       44 GETUPVAL                         R15 6
       45 GETTABLEKS                       R15 R15 K7 ["createElement"]
       47 GETUPVAL                         R16 1
       48 GETTABLEKS                       R16 R16 K8 ["View"]
       50 DUPTABLE                         R17 K14 [{["LayoutOrder"], ["Size"], ["tag"] = "col", ["testId"]}]
       51 SETTABLEKS                       R10 R17 K9 ["LayoutOrder"]
       53 GETIMPORT                        R18 K17 [UDim2.new]
       55 LENGTH                           R20 R3
       56 DIVRK                            R19 K5 [1] R20
       57 LOADN                            R20 0
       58 LOADN                            R21 0
       59 LOADN                            R22 34
       60 CALL                             R18 4 1
       61 SETTABLEKS                       R18 R17 K10 ["Size"]
       63 LOADK                            R18 K18 ["--report-step-%*"]
       64 GETIMPORT                        R20 K21 [string.lower]
       66 GETTABLEKS                       R21 R11 K22 ["step"]
       68 CALL                             R20 1 1
       69 NAMECALL                         R18 R18 K23 ["format"]
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K13 ["testId"]
       74 DUPTABLE                         R18 K26 [{"LabelRow", "Track"}]
       75 GETUPVAL                         R19 6
       76 GETTABLEKS                       R19 R19 K7 ["createElement"]
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R20 R20 K8 ["View"]
       81 DUPTABLE                         R21 K28 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "row align-y-center gap-small padding-left-small"}]
       82 GETIMPORT                        R22 K17 [UDim2.new]
       84 LOADN                            R23 1
       85 LOADN                            R24 0
       86 LOADN                            R25 0
       87 LOADN                            R26 32
       88 CALL                             R22 4 1
       89 SETTABLEKS                       R22 R21 K10 ["Size"]
       91 DUPTABLE                         R22 K31 [{"Marker", "Label"}]
       92 GETUPVAL                         R23 6
       93 GETTABLEKS                       R23 R23 K7 ["createElement"]
       95 GETUPVAL                         R24 1
       96 GETTABLEKS                       R24 R24 K8 ["View"]
       98 DUPTABLE                         R25 K35 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "row align-x-center align-y-center radius-circle", ["backgroundStyle"], ["stroke"]}]
       99 GETIMPORT                        R26 K37 [UDim2.fromOffset]
      101 LOADN                            R27 18
      102 LOADN                            R28 18
      103 CALL                             R26 2 1
      104 SETTABLEKS                       R26 R25 K10 ["Size"]
      106 JUMPIFNOT                        R12 ; [+7]
      107 GETTABLEKS                       R26 R2 K38 ["Color"]
      109 GETTABLEKS                       R26 R26 K39 ["Content"]
      111 GETTABLEKS                       R26 R26 K40 ["Emphasis"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R26
      115 SETTABLEKS                       R26 R25 K33 ["backgroundStyle"]
      117 JUMPIF                           R12 ; [+38]
      118 DUPTABLE                         R26 K43 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      119 JUMPIFNOT                        R13 ; [+7]
      120 GETTABLEKS                       R27 R2 K38 ["Color"]
      122 GETTABLEKS                       R27 R27 K39 ["Content"]
      124 GETTABLEKS                       R27 R27 K40 ["Emphasis"]
      126 JUMP                             ; [+6]
      127 GETTABLEKS                       R27 R2 K38 ["Color"]
      129 GETTABLEKS                       R27 R27 K39 ["Content"]
      131 GETTABLEKS                       R27 R27 K44 ["Muted"]
      133 GETTABLEKS                       R27 R27 K45 ["Color3"]
      135 SETTABLEKS                       R27 R26 K38 ["Color"]
      137 JUMPIFNOT                        R13 ; [+7]
      138 GETTABLEKS                       R27 R2 K38 ["Color"]
      140 GETTABLEKS                       R27 R27 K39 ["Content"]
      142 GETTABLEKS                       R27 R27 K40 ["Emphasis"]
      144 JUMP                             ; [+6]
      145 GETTABLEKS                       R27 R2 K38 ["Color"]
      147 GETTABLEKS                       R27 R27 K39 ["Content"]
      149 GETTABLEKS                       R27 R27 K44 ["Muted"]
      151 GETTABLEKS                       R27 R27 K41 ["Transparency"]
      153 SETTABLEKS                       R27 R26 K41 ["Transparency"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R26
      157 SETTABLEKS                       R26 R25 K34 ["stroke"]
      159 DUPTABLE                         R26 K46 [{"Content"}]
      160 JUMPIFNOT                        R12 ; [+46]
      161 GETUPVAL                         R27 6
      162 GETTABLEKS                       R27 R27 K7 ["createElement"]
      164 GETUPVAL                         R28 1
      165 GETTABLEKS                       R28 R28 K47 ["Icon"]
      167 DUPTABLE                         R29 K51 [{"name", "size", "style", "testId"}]
      168 GETUPVAL                         R30 1
      169 GETTABLEKS                       R30 R30 K52 ["Enums"]
      171 GETTABLEKS                       R30 R30 K53 ["IconName"]
      173 GETTABLEKS                       R30 R30 K54 ["Check"]
      175 SETTABLEKS                       R30 R29 K48 ["name"]
      177 GETUPVAL                         R30 1
      178 GETTABLEKS                       R30 R30 K52 ["Enums"]
      180 GETTABLEKS                       R30 R30 K55 ["IconSize"]
      182 GETTABLEKS                       R30 R30 K56 ["Small"]
      184 SETTABLEKS                       R30 R29 K49 ["size"]
      186 GETTABLEKS                       R30 R2 K38 ["Color"]
      188 GETTABLEKS                       R30 R30 K57 ["Surface"]
      190 GETTABLEKS                       R30 R30 K58 ["Surface_100"]
      192 SETTABLEKS                       R30 R29 K50 ["style"]
      194 LOADK                            R30 K59 ["--report-step-%*-complete"]
      195 GETIMPORT                        R32 K21 [string.lower]
      197 GETTABLEKS                       R33 R11 K22 ["step"]
      199 CALL                             R32 1 1
      200 NAMECALL                         R30 R30 K23 ["format"]
      202 CALL                             R30 2 1
      203 SETTABLEKS                       R30 R29 K13 ["testId"]
      205 CALL                             R27 2 1
      206 JUMP                             ; [+30]
      207 GETUPVAL                         R27 6
      208 GETTABLEKS                       R27 R27 K7 ["createElement"]
      210 GETUPVAL                         R28 1
      211 GETTABLEKS                       R28 R28 K60 ["Text"]
      213 DUPTABLE                         R29 K62 [{"Text", "tag", "fontStyle"}]
      214 FASTCALL1                        TOSTRING R10 ; [+3]
      215 MOVE                             R31 R10
      216 GETIMPORT                        R30 K64 [tostring]
      218 CALL                             R30 1 1
      219 SETTABLEKS                       R30 R29 K60 ["Text"]
      221 NEWTABLE                         R30 4 0
      223 LOADB                            R31 1
      224 SETTABLEKS                       R31 R30 K65 ["auto-xy text-label-small"]
      226 SETTABLEKS                       R13 R30 K66 ["content-emphasis"]
      228 NOT                              R31 R13
      229 SETTABLEKS                       R31 R30 K67 ["content-muted"]
      231 SETTABLEKS                       R30 R29 K11 ["tag"]
      233 GETUPVAL                         R30 7
      234 SETTABLEKS                       R30 R29 K61 ["fontStyle"]
      236 CALL                             R27 2 1
      237 SETTABLEKS                       R27 R26 K39 ["Content"]
      239 CALL                             R23 3 1
      240 SETTABLEKS                       R23 R22 K29 ["Marker"]
      242 GETUPVAL                         R23 6
      243 GETTABLEKS                       R23 R23 K7 ["createElement"]
      245 GETUPVAL                         R24 1
      246 GETTABLEKS                       R24 R24 K60 ["Text"]
      248 DUPTABLE                         R25 K69 [{["LayoutOrder"] = 2, ["Text"], ["tag"], ["fontStyle"]}]
      249 LOADK                            R28 K70 ["Report"]
      250 GETTABLEKS                       R29 R11 K6 ["key"]
      252 NAMECALL                         R26 R1 K71 ["getText"]
      254 CALL                             R26 3 1
      255 SETTABLEKS                       R26 R25 K60 ["Text"]
      257 NEWTABLE                         R26 4 0
      259 LOADB                            R27 1
      260 SETTABLEKS                       R27 R26 K65 ["auto-xy text-label-small"]
      262 SETTABLEKS                       R13 R26 K66 ["content-emphasis"]
      264 NOT                              R27 R13
      265 SETTABLEKS                       R27 R26 K67 ["content-muted"]
      267 SETTABLEKS                       R26 R25 K11 ["tag"]
      269 JUMPIFNOT                        R13 ; [+2]
      270 GETUPVAL                         R26 7
      271 JUMP                             ; [+1]
      272 LOADNIL                          R26
      273 SETTABLEKS                       R26 R25 K61 ["fontStyle"]
      275 CALL                             R23 2 1
      276 SETTABLEKS                       R23 R22 K30 ["Label"]
      278 CALL                             R19 3 1
      279 SETTABLEKS                       R19 R18 K24 ["LabelRow"]
      281 GETUPVAL                         R19 6
      282 GETTABLEKS                       R19 R19 K7 ["createElement"]
      284 GETUPVAL                         R20 1
      285 GETTABLEKS                       R20 R20 K8 ["View"]
      287 DUPTABLE                         R21 K73 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "bg-shift-400"}]
      288 GETIMPORT                        R22 K17 [UDim2.new]
      290 LOADN                            R23 1
      291 LOADN                            R24 0
      292 LOADN                            R25 0
      293 LOADN                            R26 2
      294 CALL                             R22 4 1
      295 SETTABLEKS                       R22 R21 K10 ["Size"]
      297 DUPTABLE                         R22 K75 [{"Active"}]
      298 MOVE                             R23 R13
      299 JUMPIFNOT                        R23 ; [+27]
      300 GETUPVAL                         R23 6
      301 GETTABLEKS                       R23 R23 K7 ["createElement"]
      303 GETUPVAL                         R24 1
      304 GETTABLEKS                       R24 R24 K8 ["View"]
      306 DUPTABLE                         R25 K77 [{["tag"] = "size-full", ["backgroundStyle"], ["testId"]}]
      307 GETTABLEKS                       R26 R2 K38 ["Color"]
      309 GETTABLEKS                       R26 R26 K39 ["Content"]
      311 GETTABLEKS                       R26 R26 K40 ["Emphasis"]
      313 SETTABLEKS                       R26 R25 K33 ["backgroundStyle"]
      315 LOADK                            R26 K78 ["--report-step-%*-active"]
      316 GETIMPORT                        R28 K21 [string.lower]
      318 GETTABLEKS                       R29 R11 K22 ["step"]
      320 CALL                             R28 1 1
      321 NAMECALL                         R26 R26 K23 ["format"]
      323 CALL                             R26 2 1
      324 SETTABLEKS                       R26 R25 K13 ["testId"]
      326 CALL                             R23 2 1
      327 SETTABLEKS                       R23 R22 K74 ["Active"]
      329 CALL                             R19 3 1
      330 SETTABLEKS                       R19 R18 K25 ["Track"]
      332 CALL                             R15 3 1
      333 SETTABLE                         R15 R6 R14
      334 FORGLOOP                         R7 2 ; [-301]
      336 GETUPVAL                         R7 6
      337 GETTABLEKS                       R7 R7 K7 ["createElement"]
      339 GETUPVAL                         R8 1
      340 GETTABLEKS                       R8 R8 K8 ["View"]
      342 DUPTABLE                         R9 K80 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "row"}]
      343 GETIMPORT                        R10 K17 [UDim2.new]
      345 LOADN                            R11 1
      346 LOADN                            R12 0
      347 LOADN                            R13 0
      348 LOADN                            R14 34
      349 CALL                             R10 4 1
      350 SETTABLEKS                       R10 R9 K10 ["Size"]
      352 MOVE                             R10 R6
      353 CALL                             R7 3 -1
      354 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSubmit"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETTABLEKS                       R3 R3 K1 ["TargetCommentPreview"]
       10 CALL                             R0 3 1
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K2 ["SetInvalidTargetReason"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetSelectedComment"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectedComment"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["CommitSelectedComment"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["SelectedComment"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["OnSelectComment"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["SelectedComment"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["IsSubmitting"]
        6 JUMPIFEQKB                       R3 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R4 R0 K2 ["TargetComment"]
       13 GETTABLEKS                       R5 R0 K3 ["Step"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["useState"]
       19 LOADK                            R5 K5 [""]
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K4 ["useState"]
       24 LOADK                            R7 K5 [""]
       25 CALL                             R6 1 2
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R7
       32 NEWTABLE                         R10 0 1
       34 GETTABLEKS                       R11 R0 K2 ["TargetComment"]
       36 SETLIST                          R10 R11 1 [1]
       38 CALL                             R8 2 0
       39 LOADNIL                          R8
       40 LOADB                            R9 1
       41 NEWCLOSURE                       R10 P1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R3
       47 GETTABLEKS                       R11 R0 K3 ["Step"]
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R12 R12 K7 ["CommentPicker"]
       52 JUMPIFNOTEQ                      R11 R12 ; [+32]
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K8 ["createElement"]
       57 GETUPVAL                         R12 5
       58 GETTABLEKS                       R12 R12 K7 ["CommentPicker"]
       60 DUPTABLE                         R13 K12 [{"Thread", "SelectedComment", "OnSelectedCommentChanged"}]
       61 GETTABLEKS                       R14 R0 K9 ["Thread"]
       63 SETTABLEKS                       R14 R13 K9 ["Thread"]
       65 GETTABLEKS                       R14 R3 K10 ["SelectedComment"]
       67 SETTABLEKS                       R14 R13 K10 ["SelectedComment"]
       69 NEWCLOSURE                       R14 P2
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R14 R13 K11 ["OnSelectedCommentChanged"]
       73 CALL                             R11 2 1
       74 MOVE                             R8 R11
       75 GETTABLEKS                       R11 R3 K10 ["SelectedComment"]
       77 JUMPIFNOTEQKNIL                  R11 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 NEWCLOSURE                       R10 P3
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R0
       84 JUMP                             ; [+70]
       85 GETTABLEKS                       R11 R0 K3 ["Step"]
       87 GETUPVAL                         R12 4
       88 GETTABLEKS                       R12 R12 K13 ["Category"]
       90 JUMPIFNOTEQ                      R11 R12 ; [+27]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R11 R11 K8 ["createElement"]
       95 GETUPVAL                         R12 5
       96 GETTABLEKS                       R12 R12 K13 ["Category"]
       98 DUPTABLE                         R13 K16 [{"TargetComment", "SelectedCategory", "OnSelectedCategoryChanged"}]
       99 GETTABLEKS                       R14 R3 K17 ["TargetCommentPreview"]
      101 SETTABLEKS                       R14 R13 K2 ["TargetComment"]
      103 SETTABLEKS                       R4 R13 K14 ["SelectedCategory"]
      105 NEWCLOSURE                       R14 P4
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R14 R13 K15 ["OnSelectedCategoryChanged"]
      109 CALL                             R11 2 1
      110 MOVE                             R8 R11
      111 JUMPIFNOTEQKS                    R4 K5 [""] ; [+2]
      113 LOADB                            R9 0 +1
      114 LOADB                            R9 1
      115 GETTABLEKS                       R10 R0 K18 ["OnContinueCategory"]
      117 JUMP                             ; [+37]
      118 GETTABLEKS                       R11 R0 K3 ["Step"]
      120 GETUPVAL                         R12 4
      121 GETTABLEKS                       R12 R12 K19 ["Details"]
      123 JUMPIFNOTEQ                      R11 R12 ; [+31]
      125 GETUPVAL                         R11 2
      126 GETTABLEKS                       R11 R11 K8 ["createElement"]
      128 GETUPVAL                         R12 5
      129 GETTABLEKS                       R12 R12 K19 ["Details"]
      131 DUPTABLE                         R13 K21 [{"TargetComment", "Details", "OnDetailsChanged"}]
      132 GETTABLEKS                       R14 R3 K17 ["TargetCommentPreview"]
      134 SETTABLEKS                       R14 R13 K2 ["TargetComment"]
      136 SETTABLEKS                       R6 R13 K19 ["Details"]
      138 NEWCLOSURE                       R14 P5
      139 CAPTURE                          VAL R7
      140 SETTABLEKS                       R14 R13 K20 ["OnDetailsChanged"]
      142 CALL                             R11 2 1
      143 MOVE                             R8 R11
      144 GETIMPORT                        R11 K24 [utf8.len]
      146 MOVE                             R12 R6
      147 CALL                             R11 1 1
      148 GETUPVAL                         R12 5
      149 GETTABLEKS                       R12 R12 K25 ["MAX_DETAILS_LENGTH"]
      151 JUMPIFLE                         R11 R12 ; [+2]
      153 LOADB                            R9 0 +1
      154 LOADB                            R9 1
      155 GETTABLEKS                       R12 R0 K9 ["Thread"]
      157 JUMPIFNOTEQKNIL                  R12 ; [+2]
      159 LOADB                            R11 0 +1
      160 LOADB                            R11 1
      161 LOADB                            R12 1
      162 GETTABLEKS                       R13 R0 K3 ["Step"]
      164 GETUPVAL                         R14 4
      165 GETTABLEKS                       R14 R14 K19 ["Details"]
      167 JUMPIFEQ                         R13 R14 ; [+12]
      169 MOVE                             R12 R11
      170 JUMPIFNOT                        R12 ; [+9]
      171 GETTABLEKS                       R13 R0 K3 ["Step"]
      173 GETUPVAL                         R14 4
      174 GETTABLEKS                       R14 R14 K13 ["Category"]
      176 JUMPIFEQ                         R13 R14 ; [+2]
      178 LOADB                            R12 0 +1
      179 LOADB                            R12 1
      180 GETTABLEKS                       R14 R3 K26 ["InvalidTargetReason"]
      182 JUMPIFNOTEQKNIL                  R14 ; [+2]
      184 LOADB                            R13 0 +1
      185 LOADB                            R13 1
      186 GETUPVAL                         R14 2
      187 GETTABLEKS                       R14 R14 K8 ["createElement"]
      189 GETUPVAL                         R15 6
      190 GETTABLEKS                       R15 R15 K27 ["View"]
      192 DUPTABLE                         R16 K30 [{["tag"] = "col gap-medium size-full padding-xlarge bg-surface-100"}]
      193 DUPTABLE                         R17 K33 [{"Main", "Actions"}]
      194 GETUPVAL                         R18 2
      195 GETTABLEKS                       R18 R18 K8 ["createElement"]
      197 GETUPVAL                         R19 5
      198 GETTABLEKS                       R19 R19 K34 ["Layout"]
      200 DUPTABLE                         R20 K38 [{"Body", "InvalidTargetReason", "SubmissionFailed", "StepMenu"}]
      201 SETTABLEKS                       R8 R20 K35 ["Body"]
      203 GETTABLEKS                       R21 R3 K26 ["InvalidTargetReason"]
      205 SETTABLEKS                       R21 R20 K26 ["InvalidTargetReason"]
      207 GETTABLEKS                       R22 R0 K36 ["SubmissionFailed"]
      209 JUMPIFEQKB                       R22 TRUE ; [+2]
      211 LOADB                            R21 0 +1
      212 LOADB                            R21 1
      213 SETTABLEKS                       R21 R20 K36 ["SubmissionFailed"]
      215 GETUPVAL                         R21 2
      216 GETTABLEKS                       R21 R21 K8 ["createElement"]
      218 GETUPVAL                         R22 7
      219 DUPTABLE                         R23 K40 [{"IsThreadFlow", "Step"}]
      220 SETTABLEKS                       R11 R23 K39 ["IsThreadFlow"]
      222 GETTABLEKS                       R24 R0 K3 ["Step"]
      224 SETTABLEKS                       R24 R23 K3 ["Step"]
      226 CALL                             R21 2 1
      227 SETTABLEKS                       R21 R20 K37 ["StepMenu"]
      229 CALL                             R18 2 1
      230 SETTABLEKS                       R18 R17 K31 ["Main"]
      232 GETUPVAL                         R18 2
      233 GETTABLEKS                       R18 R18 K8 ["createElement"]
      235 GETUPVAL                         R19 6
      236 GETTABLEKS                       R19 R19 K27 ["View"]
      238 DUPTABLE                         R20 K44 [{["LayoutOrder"] = 2, ["tag"] = "row gap-small size-full-0 auto-y"}]
      239 DUPTABLE                         R21 K50 [{"Back", "Spacer", "Continue", "Cancel", "Close"}]
      240 NOT                              R22 R13
      241 JUMPIFNOT                        R22 ; [+32]
      242 MOVE                             R22 R12
      243 JUMPIFNOT                        R22 ; [+30]
      244 GETUPVAL                         R22 2
      245 GETTABLEKS                       R22 R22 K8 ["createElement"]
      247 GETUPVAL                         R23 6
      248 GETTABLEKS                       R23 R23 K51 ["Button"]
      250 DUPTABLE                         R24 K59 [{["LayoutOrder"] = 1, ["text"], ["size"], ["isDisabled"], ["onActivated"], ["testId"] = "--report-back"}]
      251 LOADK                            R27 K60 ["Report"]
      252 LOADK                            R28 K45 ["Back"]
      253 NAMECALL                         R25 R1 K61 ["getText"]
      255 CALL                             R25 3 1
      256 SETTABLEKS                       R25 R24 K53 ["text"]
      258 GETUPVAL                         R25 6
      259 GETTABLEKS                       R25 R25 K62 ["Enums"]
      261 GETTABLEKS                       R25 R25 K63 ["ButtonSize"]
      263 GETTABLEKS                       R25 R25 K64 ["Small"]
      265 SETTABLEKS                       R25 R24 K54 ["size"]
      267 SETTABLEKS                       R2 R24 K55 ["isDisabled"]
      269 GETTABLEKS                       R25 R0 K65 ["OnBack"]
      271 SETTABLEKS                       R25 R24 K56 ["onActivated"]
      273 CALL                             R22 2 1
      274 SETTABLEKS                       R22 R21 K45 ["Back"]
      276 GETUPVAL                         R22 2
      277 GETTABLEKS                       R22 R22 K8 ["createElement"]
      279 GETUPVAL                         R23 6
      280 GETTABLEKS                       R23 R23 K27 ["View"]
      282 DUPTABLE                         R24 K67 [{["LayoutOrder"] = 2, ["tag"] = "fill"}]
      283 CALL                             R22 2 1
      284 SETTABLEKS                       R22 R21 K46 ["Spacer"]
      286 NOT                              R22 R13
      287 JUMPIFNOT                        R22 ; [+54]
      288 GETUPVAL                         R22 2
      289 GETTABLEKS                       R22 R22 K8 ["createElement"]
      291 GETUPVAL                         R23 6
      292 GETTABLEKS                       R23 R23 K51 ["Button"]
      294 DUPTABLE                         R24 K72 [{["LayoutOrder"] = 3, ["text"], ["isDisabled"], ["isLoading"], ["variant"], ["size"], ["onActivated"], ["testId"] = "--report-continue"}]
      295 GETTABLEKS                       R26 R0 K3 ["Step"]
      297 GETUPVAL                         R27 4
      298 GETTABLEKS                       R27 R27 K19 ["Details"]
      300 JUMPIFNOTEQ                      R26 R27 ; [+7]
      302 LOADK                            R27 K73 ["AddAnnotation"]
      303 LOADK                            R28 K74 ["Submit"]
      304 NAMECALL                         R25 R1 K61 ["getText"]
      306 CALL                             R25 3 1
      307 JUMP                             ; [+5]
      308 LOADK                            R27 K60 ["Report"]
      309 LOADK                            R28 K47 ["Continue"]
      310 NAMECALL                         R25 R1 K61 ["getText"]
      312 CALL                             R25 3 1
      313 SETTABLEKS                       R25 R24 K53 ["text"]
      315 NOT                              R26 R9
      316 OR                               R25 R26 R2
      317 SETTABLEKS                       R25 R24 K55 ["isDisabled"]
      319 SETTABLEKS                       R2 R24 K69 ["isLoading"]
      321 GETUPVAL                         R25 6
      322 GETTABLEKS                       R25 R25 K62 ["Enums"]
      324 GETTABLEKS                       R25 R25 K75 ["ButtonVariant"]
      326 GETTABLEKS                       R25 R25 K76 ["Emphasis"]
      328 SETTABLEKS                       R25 R24 K70 ["variant"]
      330 GETUPVAL                         R25 6
      331 GETTABLEKS                       R25 R25 K62 ["Enums"]
      333 GETTABLEKS                       R25 R25 K63 ["ButtonSize"]
      335 GETTABLEKS                       R25 R25 K64 ["Small"]
      337 SETTABLEKS                       R25 R24 K54 ["size"]
      339 SETTABLEKS                       R10 R24 K56 ["onActivated"]
      341 CALL                             R22 2 1
      342 SETTABLEKS                       R22 R21 K47 ["Continue"]
      344 NOT                              R22 R13
      345 JUMPIFNOT                        R22 ; [+30]
      346 GETUPVAL                         R22 2
      347 GETTABLEKS                       R22 R22 K8 ["createElement"]
      349 GETUPVAL                         R23 6
      350 GETTABLEKS                       R23 R23 K51 ["Button"]
      352 DUPTABLE                         R24 K79 [{["LayoutOrder"] = 4, ["text"], ["size"], ["isDisabled"], ["onActivated"], ["testId"] = "--report-cancel"}]
      353 LOADK                            R27 K73 ["AddAnnotation"]
      354 LOADK                            R28 K48 ["Cancel"]
      355 NAMECALL                         R25 R1 K61 ["getText"]
      357 CALL                             R25 3 1
      358 SETTABLEKS                       R25 R24 K53 ["text"]
      360 GETUPVAL                         R25 6
      361 GETTABLEKS                       R25 R25 K62 ["Enums"]
      363 GETTABLEKS                       R25 R25 K63 ["ButtonSize"]
      365 GETTABLEKS                       R25 R25 K64 ["Small"]
      367 SETTABLEKS                       R25 R24 K54 ["size"]
      369 SETTABLEKS                       R2 R24 K55 ["isDisabled"]
      371 GETTABLEKS                       R25 R0 K80 ["OnCancel"]
      373 SETTABLEKS                       R25 R24 K56 ["onActivated"]
      375 CALL                             R22 2 1
      376 SETTABLEKS                       R22 R21 K48 ["Cancel"]
      378 MOVE                             R22 R13
      379 JUMPIFNOT                        R22 ; [+37]
      380 GETUPVAL                         R22 2
      381 GETTABLEKS                       R22 R22 K8 ["createElement"]
      383 GETUPVAL                         R23 6
      384 GETTABLEKS                       R23 R23 K51 ["Button"]
      386 DUPTABLE                         R24 K83 [{["LayoutOrder"] = 5, ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "--report-close"}]
      387 LOADK                            R27 K60 ["Report"]
      388 LOADK                            R28 K49 ["Close"]
      389 NAMECALL                         R25 R1 K61 ["getText"]
      391 CALL                             R25 3 1
      392 SETTABLEKS                       R25 R24 K53 ["text"]
      394 GETUPVAL                         R25 6
      395 GETTABLEKS                       R25 R25 K62 ["Enums"]
      397 GETTABLEKS                       R25 R25 K75 ["ButtonVariant"]
      399 GETTABLEKS                       R25 R25 K76 ["Emphasis"]
      401 SETTABLEKS                       R25 R24 K70 ["variant"]
      403 GETUPVAL                         R25 6
      404 GETTABLEKS                       R25 R25 K62 ["Enums"]
      406 GETTABLEKS                       R25 R25 K63 ["ButtonSize"]
      408 GETTABLEKS                       R25 R25 K64 ["Small"]
      410 SETTABLEKS                       R25 R24 K54 ["size"]
      412 GETTABLEKS                       R25 R0 K80 ["OnCancel"]
      414 SETTABLEKS                       R25 R24 K56 ["onActivated"]
      416 CALL                             R22 2 1
      417 SETTABLEKS                       R22 R21 K49 ["Close"]
      419 CALL                             R18 3 1
      420 SETTABLEKS                       R18 R17 K32 ["Actions"]
      422 CALL                             R14 3 -1
      423 RETURN                           R14 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Step"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["Confirmed"]
       10 JUMPIFEQ                         R0 R1 ; [+2]
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K5 [task.delay]
       15 LOADN                            R1 4
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 NEWTABLE                         R5 0 2
       19 GETTABLEKS                       R6 R0 K4 ["Step"]
       21 GETTABLEKS                       R7 R0 K5 ["OnCancel"]
       23 SETLIST                          R5 R6 2 [1]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K6 ["fflagStudioUserReportingComments"]
       29 JUMPIF                           R3 ; [+2]
       30 LOADNIL                          R3
       31 RETURN                           R3 1
       32 GETTABLEKS                       R3 R0 K4 ["Step"]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K7 ["Confirmed"]
       37 JUMPIFNOTEQ                      R3 R4 ; [+72]
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R3 R3 K8 ["createElement"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K9 ["View"]
       45 DUPTABLE                         R5 K17 [{["Position"], ["ZIndex"] = 100, ["tag"] = "row align-y-center gap-small anchor-bottom-center size-0 auto-xy padding-y-medium padding-left-medium padding-right-large radius-medium bg-system-contrast", ["testId"] = "--report-submission-success-snackbar"}]
       46 GETIMPORT                        R6 K20 [UDim2.new]
       48 LOADK                            R7 K21 [0.5]
       49 LOADN                            R8 0
       50 LOADN                            R9 1
       51 LOADN                            R10 -20
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R5 K10 ["Position"]
       55 DUPTABLE                         R6 K24 [{"Icon", "Title"}]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K8 ["createElement"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K22 ["Icon"]
       62 DUPTABLE                         R9 K30 [{["LayoutOrder"] = 1, ["name"], ["style"], ["testId"] = "--report-submission-success-snackbar-icon"}]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K31 ["Enums"]
       66 GETTABLEKS                       R10 R10 K32 ["IconName"]
       68 GETTABLEKS                       R10 R10 K33 ["Check"]
       70 SETTABLEKS                       R10 R9 K27 ["name"]
       72 GETTABLEKS                       R10 R2 K34 ["Inverse"]
       74 GETTABLEKS                       R10 R10 K35 ["Content"]
       76 GETTABLEKS                       R10 R10 K36 ["Emphasis"]
       78 SETTABLEKS                       R10 R9 K28 ["style"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K22 ["Icon"]
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K8 ["createElement"]
       86 GETUPVAL                         R8 1
       87 GETTABLEKS                       R8 R8 K37 ["Text"]
       89 DUPTABLE                         R9 K42 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "fill auto-xy text-caption-large text-wrap text-align-x-left", ["testId"] = "--report-submission-success-snackbar-title"}]
       90 LOADK                            R12 K43 ["Report"]
       91 LOADK                            R13 K44 ["SubmittedSuccessfully"]
       92 NAMECALL                         R10 R1 K45 ["getText"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K37 ["Text"]
       97 GETTABLEKS                       R10 R2 K34 ["Inverse"]
       99 GETTABLEKS                       R10 R10 K35 ["Content"]
      101 GETTABLEKS                       R10 R10 K36 ["Emphasis"]
      103 SETTABLEKS                       R10 R9 K39 ["textStyle"]
      105 CALL                             R7 2 1
      106 SETTABLEKS                       R7 R6 K23 ["Title"]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1
      110 GETUPVAL                         R3 2
      111 GETTABLEKS                       R3 R3 K8 ["createElement"]
      113 GETUPVAL                         R4 5
      114 DUPTABLE                         R5 K53 [{["Title"], ["Modal"] = True, ["Resizable"] = False, ["Enabled"] = True, ["OnClose"], ["Size"]}]
      115 LOADK                            R8 K54 ["Dropdown"]
      116 LOADK                            R9 K43 ["Report"]
      117 NAMECALL                         R6 R1 K45 ["getText"]
      119 CALL                             R6 3 1
      120 SETTABLEKS                       R6 R5 K23 ["Title"]
      122 GETTABLEKS                       R7 R0 K55 ["IsSubmitting"]
      124 JUMPIFNOT                        R7 ; [+2]
      125 DUPCLOSURE                       R6 K56 [PROTO_12]
      126 JUMP                             ; [+2]
      127 GETTABLEKS                       R6 R0 K5 ["OnCancel"]
      129 SETTABLEKS                       R6 R5 K51 ["OnClose"]
      131 GETIMPORT                        R6 K58 [Vector2.new]
      133 LOADN                            R7 600
      134 LOADN                            R8 720
      135 CALL                             R6 2 1
      136 SETTABLEKS                       R6 R5 K52 ["Size"]
      138 DUPTABLE                         R6 K60 [{"Foundation"}]
      139 GETUPVAL                         R7 2
      140 GETTABLEKS                       R7 R7 K8 ["createElement"]
      142 GETUPVAL                         R8 6
      143 LOADNIL                          R9
      144 DUPTABLE                         R10 K62 [{"Contents"}]
      145 GETUPVAL                         R11 2
      146 GETTABLEKS                       R11 R11 K8 ["createElement"]
      148 GETUPVAL                         R12 7
      149 MOVE                             R13 R0
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K61 ["Contents"]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K59 ["Foundation"]
      156 CALL                             R3 3 -1
      157 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R2 K13 ["UI"]
       41 GETTABLEKS                       R6 R6 K14 ["Dialog"]
       43 GETTABLEKS                       R7 R4 K15 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["FoundationProviderAdapter"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K17 ["Src"]
       51 GETTABLEKS                       R9 R9 K18 ["Util"]
       53 GETTABLEKS                       R9 R9 K19 ["ReportCategoryToAbuseCategory"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Src"]
       60 GETTABLEKS                       R10 R10 K20 ["Enums"]
       62 GETTABLEKS                       R10 R10 K21 ["ReportStep"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K22 ["Bin"]
       69 GETTABLEKS                       R11 R11 K23 ["Common"]
       71 GETTABLEKS                       R11 R11 K24 ["defineLuaFlags"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K17 ["Src"]
       78 GETTABLEKS                       R12 R12 K15 ["Components"]
       80 GETTABLEKS                       R12 R12 K25 ["ReportDialog"]
       82 GETTABLEKS                       R12 R12 K26 ["Steps"]
       84 CALL                             R11 1 1
       85 GETTABLEKS                       R13 R10 K27 ["fflagStudioUserReportingComments"]
       87 JUMPIFNOT                        R13 ; [+10]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K17 ["Src"]
       92 GETTABLEKS                       R13 R13 K28 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K29 ["useCommentTarget"]
       96 CALL                             R12 1 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R12
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K17 ["Src"]
      103 GETTABLEKS                       R14 R14 K30 ["Types"]
      105 CALL                             R13 1 1
      106 DUPTABLE                         R14 K32 [{"Font"}]
      107 GETIMPORT                        R15 K35 [Enum.Font.BuilderSansBold]
      109 SETTABLEKS                       R15 R14 K31 ["Font"]
      111 NEWTABLE                         R15 0 2
      113 DUPTABLE                         R16 K39 [{["key"] = "StepCategory", ["step"]}]
      114 GETTABLEKS                       R17 R9 K40 ["Category"]
      116 SETTABLEKS                       R17 R16 K38 ["step"]
      118 DUPTABLE                         R17 K42 [{["key"] = "StepDetails", ["step"]}]
      119 GETTABLEKS                       R18 R9 K43 ["Details"]
      121 SETTABLEKS                       R18 R17 K38 ["step"]
      123 SETLIST                          R15 R16 2 [1]
      125 NEWTABLE                         R16 0 3
      127 DUPTABLE                         R17 K45 [{["key"] = "StepComment", ["step"]}]
      128 GETTABLEKS                       R18 R9 K46 ["CommentPicker"]
      130 SETTABLEKS                       R18 R17 K38 ["step"]
      132 DUPTABLE                         R18 K39 [{["key"] = "StepCategory", ["step"]}]
      133 GETTABLEKS                       R19 R9 K40 ["Category"]
      135 SETTABLEKS                       R19 R18 K38 ["step"]
      137 DUPTABLE                         R19 K42 [{["key"] = "StepDetails", ["step"]}]
      138 GETTABLEKS                       R20 R9 K43 ["Details"]
      140 SETTABLEKS                       R20 R19 K38 ["step"]
      142 SETLIST                          R16 R17 3 [1]
      144 DUPCLOSURE                       R17 K47 [PROTO_0]
      145 NEWTABLE                         R19 0 0
      147 MOVE                             R20 R15
      148 LOADNIL                          R21
      149 LOADNIL                          R22
      150 FORGPREP                         R20
      151 GETTABLEKS                       R25 R24 K38 ["step"]
      153 SETTABLE                         R23 R19 R25
      154 FORGLOOP                         R20 2 ; [-4]
      156 MOVE                             R18 R19
      157 NEWTABLE                         R20 0 0
      159 MOVE                             R21 R16
      160 LOADNIL                          R22
      161 LOADNIL                          R23
      162 FORGPREP                         R21
      163 GETTABLEKS                       R26 R25 K38 ["step"]
      165 SETTABLE                         R24 R20 R26
      166 FORGLOOP                         R21 2 ; [-4]
      168 MOVE                             R19 R20
      169 DUPCLOSURE                       R20 K48 [PROTO_1]
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R14
      178 DUPCLOSURE                       R21 K49 [PROTO_8]
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R20
      187 DUPCLOSURE                       R22 K50 [PROTO_13]
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R21
      196 RETURN                           R22 1
