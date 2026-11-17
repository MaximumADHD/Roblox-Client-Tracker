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
       52 DUPTABLE                         R11 K20 [{["Items"], ["Position"], ["Size"], ["TextWrapped"] = True}]
       53 NEWTABLE                         R12 0 2
       55 LOADK                            R15 K21 ["General"]
       56 LOADK                            R16 K22 ["GameIconHint"]
       57 DUPTABLE                         R17 K26 [{["fileTypes"], ["newline"] = "\n"}]
       58 GETIMPORT                        R18 K29 [table.concat]
       60 GETUPVAL                         R19 2
       61 GETTABLEKS                       R19 R19 K30 ["IMAGE_TYPES"]
       63 LOADK                            R20 K31 [", "]
       64 CALL                             R18 2 1
       65 SETTABLEKS                       R18 R17 K23 ["fileTypes"]
       67 NAMECALL                         R13 R7 K32 ["getText"]
       69 CALL                             R13 4 1
       70 LOADK                            R16 K21 ["General"]
       71 LOADK                            R17 K33 ["GameIconModeration"]
       72 NAMECALL                         R14 R7 K32 ["getText"]
       74 CALL                             R14 3 -1
       75 SETLIST                          R12 R13 -1 [1]
       77 SETTABLEKS                       R12 R11 K15 ["Items"]
       79 GETUPVAL                         R12 3
       80 SETTABLEKS                       R12 R11 K16 ["Position"]
       82 GETUPVAL                         R12 4
       83 SETTABLEKS                       R12 R11 K17 ["Size"]
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K14 ["createElement"]
       89 GETUPVAL                         R11 5
       90 DUPTABLE                         R12 K35 [{"LayoutOrder", "Title"}]
       91 GETTABLEKS                       R14 R0 K0 ["props"]
       93 GETTABLEKS                       R14 R14 K34 ["LayoutOrder"]
       95 ORK                              R13 R14 K36 [1]
       96 SETTABLEKS                       R13 R12 K34 ["LayoutOrder"]
       98 SETTABLEKS                       R4 R12 K4 ["Title"]
      100 DUPTABLE                         R13 K40 [{"Icon", "NewIcon", "Notes", "NewNote", "ErrorMessage"}]
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R14 R14 K14 ["createElement"]
      104 GETUPVAL                         R15 6
      105 DUPTABLE                         R16 K45 [{"Visible", "Preview", "Image", "OnClick"}]
      106 JUMPIFNOT                        R1 ; [+3]
      107 LOADB                            R17 1
      108 JUMPIFNOTEQKS                    R2 K46 ["None"] ; [+2]
      110 MOVE                             R17 R8
      111 SETTABLEKS                       R17 R16 K41 ["Visible"]
      113 SETTABLEKS                       R8 R16 K42 ["Preview"]
      115 SETTABLEKS                       R2 R16 K43 ["Image"]
      117 GETTABLEKS                       R17 R0 K0 ["props"]
      119 GETTABLEKS                       R17 R17 K47 ["AddIcon"]
      121 SETTABLEKS                       R17 R16 K44 ["OnClick"]
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K2 ["Icon"]
      126 GETUPVAL                         R14 0
      127 GETTABLEKS                       R14 R14 K14 ["createElement"]
      129 GETUPVAL                         R15 7
      130 DUPTABLE                         R16 K48 [{"Visible", "OnClick"}]
      131 MOVE                             R17 R1
      132 JUMPIFNOT                        R17 ; [+4]
      133 LOADB                            R17 0
      134 JUMPIFNOTEQKS                    R2 K46 ["None"] ; [+2]
      136 NOT                              R17 R8
      137 SETTABLEKS                       R17 R16 K41 ["Visible"]
      139 GETTABLEKS                       R17 R0 K0 ["props"]
      141 GETTABLEKS                       R17 R17 K47 ["AddIcon"]
      143 SETTABLEKS                       R17 R16 K44 ["OnClick"]
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K37 ["NewIcon"]
      148 SETTABLEKS                       R9 R13 K38 ["Notes"]
      150 MOVE                             R14 R5
      151 JUMPIFNOT                        R14 ; [+78]
      152 GETUPVAL                         R14 0
      153 GETTABLEKS                       R14 R14 K14 ["createElement"]
      155 LOADK                            R15 K49 ["TextButton"]
      156 GETUPVAL                         R16 8
      157 GETTABLEKS                       R16 R16 K50 ["Dictionary"]
      159 GETTABLEKS                       R16 R16 K51 ["join"]
      161 GETTABLEKS                       R17 R6 K52 ["fontStyle"]
      163 GETTABLEKS                       R17 R17 K53 ["Smaller"]
      165 NEWTABLE                         R18 16 0
      167 LOADN                            R19 1
      168 SETTABLEKS                       R19 R18 K54 ["BackgroundTransparency"]
      170 LOADK                            R21 K21 ["General"]
      171 LOADK                            R22 K55 ["GameIconTutorial"]
      172 NAMECALL                         R19 R7 K32 ["getText"]
      174 CALL                             R19 3 1
      175 SETTABLEKS                       R19 R18 K56 ["Text"]
      177 GETTABLEKS                       R19 R6 K57 ["hyperlink"]
      179 SETTABLEKS                       R19 R18 K58 ["TextColor3"]
      181 GETIMPORT                        R19 K61 [UDim2.new]
      183 LOADN                            R20 1
      184 LOADN                            R21 0
      185 LOADN                            R22 0
      186 LOADN                            R23 18
      187 CALL                             R19 4 1
      188 SETTABLEKS                       R19 R18 K17 ["Size"]
      190 GETIMPORT                        R19 K61 [UDim2.new]
      192 LOADN                            R20 0
      193 LOADN                            R21 180
      194 LOADN                            R22 0
      195 LOADN                            R23 92
      196 CALL                             R19 4 1
      197 SETTABLEKS                       R19 R18 K16 ["Position"]
      199 GETIMPORT                        R19 K65 [Enum.TextXAlignment.Left]
      201 SETTABLEKS                       R19 R18 K63 ["TextXAlignment"]
      203 GETUPVAL                         R19 0
      204 GETTABLEKS                       R19 R19 K66 ["Event"]
      206 GETTABLEKS                       R19 R19 K67 ["MouseEnter"]
      208 GETTABLEKS                       R20 R0 K68 ["mouseEnter"]
      210 SETTABLE                         R20 R18 R19
      211 GETUPVAL                         R19 0
      212 GETTABLEKS                       R19 R19 K66 ["Event"]
      214 GETTABLEKS                       R19 R19 K69 ["MouseLeave"]
      216 GETTABLEKS                       R20 R0 K70 ["mouseLeave"]
      218 SETTABLE                         R20 R18 R19
      219 GETUPVAL                         R19 0
      220 GETTABLEKS                       R19 R19 K66 ["Event"]
      222 GETTABLEKS                       R19 R19 K71 ["Activated"]
      224 DUPCLOSURE                       R20 K72 [PROTO_4]
      225 CAPTURE                          UPVAL U9
      226 CAPTURE                          UPVAL U10
      227 SETTABLE                         R20 R18 R19
      228 CALL                             R16 2 -1
      229 CALL                             R14 -1 1
      230 SETTABLEKS                       R14 R13 K39 ["NewNote"]
      232 MOVE                             R14 R3
      233 JUMPIFNOT                        R14 ; [+44]
      234 GETUPVAL                         R14 0
      235 GETTABLEKS                       R14 R14 K14 ["createElement"]
      237 LOADK                            R15 K73 ["TextLabel"]
      238 GETUPVAL                         R16 8
      239 GETTABLEKS                       R16 R16 K50 ["Dictionary"]
      241 GETTABLEKS                       R16 R16 K51 ["join"]
      243 GETTABLEKS                       R17 R6 K52 ["fontStyle"]
      245 GETTABLEKS                       R17 R17 K74 ["Error"]
      247 DUPTABLE                         R18 K76 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      248 GETIMPORT                        R19 K61 [UDim2.new]
      250 LOADN                            R20 1
      251 LOADN                            R21 -180
      252 LOADN                            R22 0
      253 LOADN                            R23 40
      254 CALL                             R19 4 1
      255 SETTABLEKS                       R19 R18 K17 ["Size"]
      257 GETIMPORT                        R19 K61 [UDim2.new]
      259 LOADN                            R20 0
      260 LOADN                            R21 180
      261 LOADN                            R22 0
      262 LOADN                            R23 122
      263 CALL                             R19 4 1
      264 SETTABLEKS                       R19 R18 K16 ["Position"]
      266 SETTABLEKS                       R3 R18 K56 ["Text"]
      268 GETIMPORT                        R19 K65 [Enum.TextXAlignment.Left]
      270 SETTABLEKS                       R19 R18 K63 ["TextXAlignment"]
      272 GETIMPORT                        R19 K78 [Enum.TextYAlignment.Center]
      274 SETTABLEKS                       R19 R18 K75 ["TextYAlignment"]
      276 CALL                             R16 2 -1
      277 CALL                             R14 -1 1
      278 SETTABLEKS                       R14 R13 K3 ["ErrorMessage"]
      280 CALL                             R10 3 -1
      281 RETURN                           R10 -1

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
       23 LOADN                            R5 -180
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
