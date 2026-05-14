PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADB                            R2 1
        8 NAMECALL                         R0 R0 K2 ["mouseHoverChanged"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K2 ["mouseHoverChanged"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["mouseEnter"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["mouseLeave"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R2 K1 ["Mouse"]
        5 LOADK                            R5 K2 ["PointingHand"]
        6 NAMECALL                         R3 R3 K3 ["__pushCursor"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R2 K1 ["Mouse"]
       12 NAMECALL                         R3 R3 K4 ["__resetCursor"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Icon"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["ErrorMessage"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Title"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["TutorialEnabled"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K6 ["Stylizer"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K7 ["Localization"]
       28 LOADNIL                          R8
       29 FASTCALL1                        TYPEOF R2 ; [+3]
       30 MOVE                             R10 R2
       31 GETIMPORT                        R9 K9 [typeof]
       33 CALL                             R9 1 1
       34 JUMPIFNOTEQKS                    R9 K10 ["Instance"] ; [+12]
       36 LOADK                            R11 K11 ["File"]
       37 NAMECALL                         R9 R2 K12 ["IsA"]
       39 CALL                             R9 2 1
       40 JUMPIFNOT                        R9 ; [+6]
       41 NAMECALL                         R9 R2 K13 ["GetTemporaryId"]
       43 CALL                             R9 1 1
       44 MOVE                             R2 R9
       45 LOADB                            R8 1
       46 JUMP                             ; [+1]
       47 LOADB                            R8 0
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K14 ["createElement"]
       51 GETUPVAL                         R10 1
       52 DUPTABLE                         R11 K19 [{"Items", "Position", "Size", "TextWrapped"}]
       53 NEWTABLE                         R12 0 2
       55 LOADK                            R15 K20 ["General"]
       56 LOADK                            R16 K21 ["GameIconHint"]
       57 DUPTABLE                         R17 K24 [{"fileTypes", "newline"}]
       58 GETIMPORT                        R18 K27 [table.concat]
       60 GETUPVAL                         R19 2
       61 GETTABLEKS                       R19 R19 K28 ["IMAGE_TYPES"]
       63 LOADK                            R20 K29 [", "]
       64 CALL                             R18 2 1
       65 SETTABLEKS                       R18 R17 K22 ["fileTypes"]
       67 LOADK                            R18 K30 ["\n"]
       68 SETTABLEKS                       R18 R17 K23 ["newline"]
       70 NAMECALL                         R13 R7 K31 ["getText"]
       72 CALL                             R13 4 1
       73 LOADK                            R16 K20 ["General"]
       74 LOADK                            R17 K32 ["GameIconModeration"]
       75 NAMECALL                         R14 R7 K31 ["getText"]
       77 CALL                             R14 3 -1
       78 SETLIST                          R12 R13 -1 [1]
       80 SETTABLEKS                       R12 R11 K15 ["Items"]
       82 GETUPVAL                         R12 3
       83 SETTABLEKS                       R12 R11 K16 ["Position"]
       85 GETUPVAL                         R12 4
       86 SETTABLEKS                       R12 R11 K17 ["Size"]
       88 LOADB                            R12 1
       89 SETTABLEKS                       R12 R11 K18 ["TextWrapped"]
       91 CALL                             R9 2 1
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K14 ["createElement"]
       95 GETUPVAL                         R11 5
       96 DUPTABLE                         R12 K34 [{"LayoutOrder", "Title"}]
       97 GETTABLEKS                       R14 R0 K0 ["props"]
       99 GETTABLEKS                       R14 R14 K33 ["LayoutOrder"]
      101 ORK                              R13 R14 K35 [1]
      102 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      104 SETTABLEKS                       R4 R12 K4 ["Title"]
      106 DUPTABLE                         R13 K39 [{"Icon", "NewIcon", "Notes", "NewNote", "ErrorMessage"}]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K14 ["createElement"]
      110 GETUPVAL                         R15 6
      111 DUPTABLE                         R16 K44 [{"Visible", "Preview", "Image", "OnClick"}]
      112 JUMPIFNOT                        R1 ; [+3]
      113 LOADB                            R17 1
      114 JUMPIFNOTEQKS                    R2 K45 ["None"] ; [+2]
      116 MOVE                             R17 R8
      117 SETTABLEKS                       R17 R16 K40 ["Visible"]
      119 SETTABLEKS                       R8 R16 K41 ["Preview"]
      121 SETTABLEKS                       R2 R16 K42 ["Image"]
      123 GETTABLEKS                       R17 R0 K0 ["props"]
      125 GETTABLEKS                       R17 R17 K46 ["AddIcon"]
      127 SETTABLEKS                       R17 R16 K43 ["OnClick"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K2 ["Icon"]
      132 GETUPVAL                         R14 0
      133 GETTABLEKS                       R14 R14 K14 ["createElement"]
      135 GETUPVAL                         R15 7
      136 DUPTABLE                         R16 K47 [{"Visible", "OnClick"}]
      137 MOVE                             R17 R1
      138 JUMPIFNOT                        R17 ; [+4]
      139 LOADB                            R17 0
      140 JUMPIFNOTEQKS                    R2 K45 ["None"] ; [+2]
      142 NOT                              R17 R8
      143 SETTABLEKS                       R17 R16 K40 ["Visible"]
      145 GETTABLEKS                       R17 R0 K0 ["props"]
      147 GETTABLEKS                       R17 R17 K46 ["AddIcon"]
      149 SETTABLEKS                       R17 R16 K43 ["OnClick"]
      151 CALL                             R14 2 1
      152 SETTABLEKS                       R14 R13 K36 ["NewIcon"]
      154 SETTABLEKS                       R9 R13 K37 ["Notes"]
      156 MOVE                             R14 R5
      157 JUMPIFNOT                        R14 ; [+78]
      158 GETUPVAL                         R14 0
      159 GETTABLEKS                       R14 R14 K14 ["createElement"]
      161 LOADK                            R15 K48 ["TextButton"]
      162 GETUPVAL                         R16 8
      163 GETTABLEKS                       R16 R16 K49 ["Dictionary"]
      165 GETTABLEKS                       R16 R16 K50 ["join"]
      167 GETTABLEKS                       R17 R6 K51 ["fontStyle"]
      169 GETTABLEKS                       R17 R17 K52 ["Smaller"]
      171 NEWTABLE                         R18 16 0
      173 LOADN                            R19 1
      174 SETTABLEKS                       R19 R18 K53 ["BackgroundTransparency"]
      176 LOADK                            R21 K20 ["General"]
      177 LOADK                            R22 K54 ["GameIconTutorial"]
      178 NAMECALL                         R19 R7 K31 ["getText"]
      180 CALL                             R19 3 1
      181 SETTABLEKS                       R19 R18 K55 ["Text"]
      183 GETTABLEKS                       R19 R6 K56 ["hyperlink"]
      185 SETTABLEKS                       R19 R18 K57 ["TextColor3"]
      187 GETIMPORT                        R19 K60 [UDim2.new]
      189 LOADN                            R20 1
      190 LOADN                            R21 0
      191 LOADN                            R22 0
      192 LOADN                            R23 18
      193 CALL                             R19 4 1
      194 SETTABLEKS                       R19 R18 K17 ["Size"]
      196 GETIMPORT                        R19 K60 [UDim2.new]
      198 LOADN                            R20 0
      199 LOADN                            R21 180
      200 LOADN                            R22 0
      201 LOADN                            R23 92
      202 CALL                             R19 4 1
      203 SETTABLEKS                       R19 R18 K16 ["Position"]
      205 GETIMPORT                        R19 K64 [Enum.TextXAlignment.Left]
      207 SETTABLEKS                       R19 R18 K62 ["TextXAlignment"]
      209 GETUPVAL                         R19 0
      210 GETTABLEKS                       R19 R19 K65 ["Event"]
      212 GETTABLEKS                       R19 R19 K66 ["MouseEnter"]
      214 GETTABLEKS                       R20 R0 K67 ["mouseEnter"]
      216 SETTABLE                         R20 R18 R19
      217 GETUPVAL                         R19 0
      218 GETTABLEKS                       R19 R19 K65 ["Event"]
      220 GETTABLEKS                       R19 R19 K68 ["MouseLeave"]
      222 GETTABLEKS                       R20 R0 K69 ["mouseLeave"]
      224 SETTABLE                         R20 R18 R19
      225 GETUPVAL                         R19 0
      226 GETTABLEKS                       R19 R19 K65 ["Event"]
      228 GETTABLEKS                       R19 R19 K70 ["Activated"]
      230 DUPCLOSURE                       R20 K71 [PROTO_4]
      231 CAPTURE                          UPVAL U9
      232 CAPTURE                          UPVAL U10
      233 SETTABLE                         R20 R18 R19
      234 CALL                             R16 2 -1
      235 CALL                             R14 -1 1
      236 SETTABLEKS                       R14 R13 K38 ["NewNote"]
      238 MOVE                             R14 R3
      239 JUMPIFNOT                        R14 ; [+50]
      240 GETUPVAL                         R14 0
      241 GETTABLEKS                       R14 R14 K14 ["createElement"]
      243 LOADK                            R15 K72 ["TextLabel"]
      244 GETUPVAL                         R16 8
      245 GETTABLEKS                       R16 R16 K49 ["Dictionary"]
      247 GETTABLEKS                       R16 R16 K50 ["join"]
      249 GETTABLEKS                       R17 R6 K51 ["fontStyle"]
      251 GETTABLEKS                       R17 R17 K73 ["Error"]
      253 DUPTABLE                         R18 K75 [{"Size", "Position", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      254 GETIMPORT                        R19 K60 [UDim2.new]
      256 LOADN                            R20 1
      257 LOADN                            R21 76
      258 LOADN                            R22 0
      259 LOADN                            R23 40
      260 CALL                             R19 4 1
      261 SETTABLEKS                       R19 R18 K17 ["Size"]
      263 GETIMPORT                        R19 K60 [UDim2.new]
      265 LOADN                            R20 0
      266 LOADN                            R21 180
      267 LOADN                            R22 0
      268 LOADN                            R23 122
      269 CALL                             R19 4 1
      270 SETTABLEKS                       R19 R18 K16 ["Position"]
      272 LOADN                            R19 1
      273 SETTABLEKS                       R19 R18 K53 ["BackgroundTransparency"]
      275 SETTABLEKS                       R3 R18 K55 ["Text"]
      277 LOADB                            R19 1
      278 SETTABLEKS                       R19 R18 K18 ["TextWrapped"]
      280 GETIMPORT                        R19 K64 [Enum.TextXAlignment.Left]
      282 SETTABLEKS                       R19 R18 K62 ["TextXAlignment"]
      284 GETIMPORT                        R19 K77 [Enum.TextYAlignment.Center]
      286 SETTABLEKS                       R19 R18 K74 ["TextYAlignment"]
      288 CALL                             R16 2 -1
      289 CALL                             R14 -1 1
      290 SETTABLEKS                       R14 R13 K3 ["ErrorMessage"]
      292 CALL                             R10 3 -1
      293 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpRbxApiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [UDim2.new]
       15 LOADN                            R3 0
       16 LOADN                            R4 180
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 CALL                             R2 4 1
       20 GETIMPORT                        R3 K7 [UDim2.new]
       22 LOADN                            R4 1
       23 LOADN                            R5 76
       24 LOADN                            R6 0
       25 LOADN                            R7 100
       26 CALL                             R3 4 1
       27 GETIMPORT                        R4 K9 [script]
       29 GETTABLEKS                       R4 R4 K10 ["Parent"]
       31 GETTABLEKS                       R4 R4 K10 ["Parent"]
       33 GETTABLEKS                       R4 R4 K10 ["Parent"]
       35 GETTABLEKS                       R4 R4 K10 ["Parent"]
       37 GETIMPORT                        R5 K12 [require]
       39 GETTABLEKS                       R6 R4 K13 ["Packages"]
       41 GETTABLEKS                       R6 R6 K14 ["Roact"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K12 [require]
       46 GETTABLEKS                       R7 R4 K13 ["Packages"]
       48 GETTABLEKS                       R7 R7 K15 ["Framework"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K12 [require]
       53 GETTABLEKS                       R8 R4 K13 ["Packages"]
       55 GETTABLEKS                       R8 R8 K16 ["Cryo"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R6 K17 ["UI"]
       60 GETTABLEKS                       R9 R8 K18 ["BulletList"]
       62 GETTABLEKS                       R10 R8 K19 ["TitledFrame"]
       64 GETIMPORT                        R11 K12 [require]
       66 GETTABLEKS                       R12 R4 K20 ["Src"]
       68 GETTABLEKS                       R12 R12 K21 ["Util"]
       70 GETTABLEKS                       R12 R12 K22 ["DEPRECATED_Constants"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R6 K23 ["ContextServices"]
       75 GETTABLEKS                       R13 R12 K24 ["withContext"]
       77 LOADK                            R16 K25 ["articles/Game-Icons-Tips"]
       78 NAMECALL                         R14 R1 K26 ["GetDocumentationUrl"]
       80 CALL                             R14 2 1
       81 GETIMPORT                        R15 K12 [require]
       83 GETTABLEKS                       R16 R4 K20 ["Src"]
       85 GETTABLEKS                       R16 R16 K27 ["Components"]
       87 GETTABLEKS                       R16 R16 K28 ["UploadableIcon"]
       89 GETTABLEKS                       R16 R16 K28 ["UploadableIcon"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K12 [require]
       94 GETTABLEKS                       R17 R4 K20 ["Src"]
       96 GETTABLEKS                       R17 R17 K27 ["Components"]
       98 GETTABLEKS                       R17 R17 K28 ["UploadableIcon"]
      100 GETTABLEKS                       R17 R17 K29 ["NewUploadableIcon"]
      102 CALL                             R16 1 1
      103 GETTABLEKS                       R17 R5 K30 ["PureComponent"]
      105 LOADK                            R19 K31 ["UploadableIconWidget"]
      106 NAMECALL                         R17 R17 K32 ["extend"]
      108 CALL                             R17 2 1
      109 DUPCLOSURE                       R18 K33 [PROTO_2]
      110 SETTABLEKS                       R18 R17 K34 ["init"]
      112 DUPCLOSURE                       R18 K35 [PROTO_3]
      113 SETTABLEKS                       R18 R17 K36 ["mouseHoverChanged"]
      115 DUPCLOSURE                       R18 K37 [PROTO_5]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R14
      127 SETTABLEKS                       R18 R17 K38 ["render"]
      129 MOVE                             R18 R13
      130 DUPTABLE                         R19 K42 [{"Stylizer", "Localization", "Mouse"}]
      131 GETTABLEKS                       R20 R12 K39 ["Stylizer"]
      133 SETTABLEKS                       R20 R19 K39 ["Stylizer"]
      135 GETTABLEKS                       R20 R12 K40 ["Localization"]
      137 SETTABLEKS                       R20 R19 K40 ["Localization"]
      139 GETTABLEKS                       R20 R12 K41 ["Mouse"]
      141 SETTABLEKS                       R20 R19 K41 ["Mouse"]
      143 CALL                             R18 1 1
      144 MOVE                             R19 R17
      145 CALL                             R18 1 1
      146 MOVE                             R17 R18
      147 RETURN                           R17 1
