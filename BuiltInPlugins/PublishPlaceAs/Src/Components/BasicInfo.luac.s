PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Key", "Text"}]
        1 SETTABLEKS                       R0 R1 K0 ["Key"]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["Genre"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R2 R2 K4 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K1 ["Text"]
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETTABLEKS                       R2 R2 K0 ["Key"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETTABLEKS                       R2 R2 K0 ["Key"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["DispatchSetSelectedGroup"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R4 1 0
        8 SETTABLE                         R1 R4 R0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TeamCreateEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["TeamCreateEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataSharingEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["DataSharingEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K2 [{[1] = True}]
        4 NAMECALL                         R1 R1 K3 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K4 ["Dictionary"]
       11 GETTABLEKS                       R1 R1 K5 ["join"]
       13 GETUPVAL                         R2 3
       14 NEWTABLE                         R3 1 0
       16 GETTABLEKS                       R4 R0 K6 ["Id"]
       18 GETTABLEKS                       R6 R0 K7 ["Selected"]
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K8 ["None"]
       24 JUMPIF                           R5 ; [+3]
       25 GETTABLEKS                       R6 R0 K7 ["Selected"]
       27 NOT                              R5 R6
       28 SETTABLE                         R5 R3 R4
       29 CALL                             R1 2 1
       30 NEWTABLE                         R2 2 0
       32 GETUPVAL                         R3 4
       33 GETTABLEKS                       R4 R0 K6 ["Id"]
       35 SETTABLE                         R4 R2 R3
       36 GETUPVAL                         R3 5
       37 GETTABLEKS                       R5 R0 K7 ["Selected"]
       39 NOT                              R4 R5
       40 SETTABLE                         R4 R2 R3
       41 GETUPVAL                         R3 6
       42 GETUPVAL                         R4 7
       43 GETUPVAL                         R5 8
       44 GETUPVAL                         R6 9
       45 MOVE                             R7 R2
       46 CALL                             R3 4 0
       47 GETUPVAL                         R3 10
       48 MOVE                             R4 R1
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 NEWTABLE                         R0 1 0
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K4 ["OK"]
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 MOVE                             R5 R0
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 NEWTABLE                         R0 1 0
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K4 ["Close"]
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 MOVE                             R5 R0
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["China"]
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Description"]
        8 GETTABLEKS                       R5 R1 K4 ["DescriptionChanged"]
       10 GETTABLEKS                       R6 R1 K5 ["DescriptionError"]
       12 GETTABLEKS                       R7 R1 K6 ["Devices"]
       14 GETTABLEKS                       R8 R1 K7 ["DevicesChanged"]
       16 GETTABLEKS                       R9 R1 K8 ["Genre"]
       18 GETTABLEKS                       R10 R1 K9 ["GenreChanged"]
       20 GETTABLEKS                       R11 R1 K10 ["Name"]
       22 GETTABLEKS                       R12 R1 K11 ["NameChanged"]
       24 GETTABLEKS                       R13 R1 K12 ["NameError"]
       26 GETTABLEKS                       R14 R1 K13 ["CreatorId"]
       28 GETTABLEKS                       R15 R1 K14 ["Groups"]
       30 GETTABLEKS                       R16 R1 K15 ["CreatorChanged"]
       32 GETTABLEKS                       R17 R1 K16 ["OptInLocations"]
       34 GETTABLEKS                       R18 R1 K17 ["OptInLocationsChanged"]
       36 GETTABLEKS                       R19 R1 K18 ["PlayerAcceptance"]
       38 GETTABLEKS                       R20 R1 K19 ["SelectedGroup"]
       40 GETTABLEKS                       R21 R1 K20 ["OwnedGroups"]
       42 JUMPIFNOT                        R20 ; [+3]
       43 MOVE                             R22 R16
       44 MOVE                             R23 R20
       45 CALL                             R22 1 0
       46 GETUPVAL                         R22 0
       47 GETTABLEKS                       R22 R22 K21 ["List"]
       49 GETTABLEKS                       R22 R22 K22 ["map"]
       51 GETUPVAL                         R23 1
       52 GETTABLEKS                       R23 R23 K23 ["GENRE_IDS"]
       54 NEWCLOSURE                       R24 P0
       55 CAPTURE                          VAL R3
       56 CALL                             R22 2 1
       57 LOADN                            R23 1
       58 NEWCLOSURE                       R24 P1
       59 CAPTURE                          VAL R22
       60 CAPTURE                          VAL R10
       61 NEWTABLE                         R25 0 0
       63 GETIMPORT                        R26 K25 [pairs]
       65 MOVE                             R27 R22
       66 CALL                             R26 1 3
       67 FORGPREP_NEXT                    R26
       68 GETTABLEKS                       R33 R30 K26 ["Text"]
       70 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
       72 MOVE                             R32 R25
       73 GETIMPORT                        R31 K29 [table.insert]
       75 CALL                             R31 2 0
       76 GETTABLEKS                       R31 R30 K30 ["Key"]
       78 JUMPIFNOTEQ                      R9 R31 ; [+2]
       80 MOVE                             R23 R29
       81 FORGLOOP                         R26 2 ; [-14]
       83 NEWTABLE                         R26 0 1
       85 DUPTABLE                         R27 K33 [{["Key"] = 0, ["Type"], ["Text"]}]
       86 GETUPVAL                         R28 1
       87 GETTABLEKS                       R28 R28 K34 ["SUBJECT_TYPE"]
       89 GETTABLEKS                       R28 R28 K35 ["USER"]
       91 SETTABLEKS                       R28 R27 K32 ["Type"]
       93 LOADK                            R30 K36 ["GroupDropdown"]
       94 LOADK                            R31 K37 ["Me"]
       95 NAMECALL                         R28 R3 K38 ["getText"]
       97 CALL                             R28 3 1
       98 SETTABLEKS                       R28 R27 K26 ["Text"]
      100 SETLIST                          R26 R27 1 [1]
      102 LOADN                            R27 1
      103 NEWCLOSURE                       R28 P2
      104 CAPTURE                          VAL R26
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R1
      107 JUMPIFNOT                        R15 ; [+66]
      108 GETIMPORT                        R29 K40 [next]
      110 MOVE                             R30 R15
      111 CALL                             R29 1 1
      112 JUMPIFEQKNIL                     R29 ; [+61]
      114 GETIMPORT                        R29 K25 [pairs]
      116 MOVE                             R30 R15
      117 CALL                             R29 1 3
      118 FORGPREP_NEXT                    R29
      119 DUPTABLE                         R36 K41 [{"Key", "Type", "Text"}]
      120 GETTABLEKS                       R37 R33 K42 ["groupId"]
      122 SETTABLEKS                       R37 R36 K30 ["Key"]
      124 GETUPVAL                         R37 1
      125 GETTABLEKS                       R37 R37 K34 ["SUBJECT_TYPE"]
      127 GETTABLEKS                       R37 R37 K43 ["GROUP"]
      129 SETTABLEKS                       R37 R36 K32 ["Type"]
      131 GETTABLEKS                       R37 R33 K44 ["name"]
      133 SETTABLEKS                       R37 R36 K26 ["Text"]
      135 FASTCALL2                        TABLE_INSERT R26 R36 ; [+4]
      137 MOVE                             R35 R26
      138 GETIMPORT                        R34 K29 [table.insert]
      140 CALL                             R34 2 0
      141 FORGLOOP                         R29 2 ; [-23]
      143 GETUPVAL                         R29 2
      144 JUMPIF                           R29 ; [+29]
      145 LOADB                            R29 1
      146 SETUPVAL                         R29 2
      147 GETIMPORT                        R29 K46 [ipairs]
      149 MOVE                             R30 R26
      150 CALL                             R29 1 3
      151 FORGPREP_INEXT                   R29
      152 GETIMPORT                        R34 K48 [game]
      154 GETTABLEKS                       R34 R34 K13 ["CreatorId"]
      156 GETTABLEKS                       R35 R33 K30 ["Key"]
      158 JUMPIFNOTEQ                      R34 R35 ; [+13]
      160 GETIMPORT                        R34 K48 [game]
      162 GETTABLEKS                       R34 R34 K49 ["CreatorType"]
      164 GETIMPORT                        R35 K52 [Enum.CreatorType.Group]
      166 JUMPIFNOTEQ                      R34 R35 ; [+5]
      168 MOVE                             R34 R16
      169 GETTABLEKS                       R35 R33 K30 ["Key"]
      171 CALL                             R34 1 0
      172 FORGLOOP                         R29 2 [inext] ; [-21]
      174 NEWTABLE                         R29 0 0
      176 GETIMPORT                        R30 K46 [ipairs]
      178 MOVE                             R31 R26
      179 CALL                             R30 1 3
      180 FORGPREP_INEXT                   R30
      181 GETTABLEKS                       R37 R34 K26 ["Text"]
      183 FASTCALL2                        TABLE_INSERT R29 R37 ; [+4]
      185 MOVE                             R36 R29
      186 GETIMPORT                        R35 K29 [table.insert]
      188 CALL                             R35 2 0
      189 GETTABLEKS                       R35 R34 K30 ["Key"]
      191 JUMPIFNOTEQ                      R14 R35 ; [+2]
      193 MOVE                             R27 R33
      194 FORGLOOP                         R30 2 [inext] ; [-14]
      196 GETIMPORT                        R30 K55 [utf8.len]
      198 MOVE                             R31 R11
      199 CALL                             R30 1 1
      200 GETIMPORT                        R31 K55 [utf8.len]
      202 MOVE                             R32 R4
      203 CALL                             R31 1 1
      204 GETUPVAL                         R32 3
      205 GETTABLEKS                       R32 R32 K56 ["new"]
      207 CALL                             R32 0 1
      208 GETUPVAL                         R33 4
      209 GETUPVAL                         R36 5
      210 LOADK                            R37 K57 ["RequirementsLinkText"]
      211 NAMECALL                         R34 R3 K38 ["getText"]
      213 CALL                             R34 3 1
      214 LOADN                            R35 14
      215 LOADK                            R36 K58 ["SourceSans"]
      216 CALL                             R33 3 1
      217 DUPTABLE                         R34 K66 [{"Header", "Name", "Description", "Separator1", "Creator", "Separator2", "Genre", "Separator4", "Devices", "Separator3", "EnableTeamCreate"}]
      218 GETUPVAL                         R35 6
      219 GETTABLEKS                       R35 R35 K67 ["createElement"]
      221 GETUPVAL                         R36 7
      222 DUPTABLE                         R37 K70 [{"Title", "LayoutOrder"}]
      223 LOADK                            R40 K71 ["MenuItem"]
      224 LOADK                            R41 K72 ["BasicInfo"]
      225 NAMECALL                         R38 R3 K38 ["getText"]
      227 CALL                             R38 3 1
      228 SETTABLEKS                       R38 R37 K68 ["Title"]
      230 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      232 CALL                             R38 1 1
      233 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      235 CALL                             R35 2 1
      236 SETTABLEKS                       R35 R34 K59 ["Header"]
      238 GETUPVAL                         R35 6
      239 GETTABLEKS                       R35 R35 K67 ["createElement"]
      241 GETUPVAL                         R36 8
      242 DUPTABLE                         R37 K74 [{"LayoutOrder", "Title"}]
      243 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      245 CALL                             R38 1 1
      246 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      248 LOADK                            R40 K75 ["PageTitle"]
      249 LOADK                            R41 K10 ["Name"]
      250 NAMECALL                         R38 R3 K38 ["getText"]
      252 CALL                             R38 3 1
      253 SETTABLEKS                       R38 R37 K68 ["Title"]
      255 DUPTABLE                         R38 K77 [{"TextBox"}]
      256 GETUPVAL                         R39 6
      257 GETTABLEKS                       R39 R39 K67 ["createElement"]
      259 GETUPVAL                         R40 9
      260 DUPTABLE                         R41 K82 [{["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      261 MOVE                             R42 R13
      262 JUMPIFNOT                        R42 ; [+19]
      263 LOADK                            R44 K83 ["Error"]
      264 MOVE                             R45 R13
      265 NEWTABLE                         R46 0 2
      267 FASTCALL1                        TOSTRING R30 ; [+3]
      268 MOVE                             R48 R30
      269 GETIMPORT                        R47 K85 [tostring]
      271 CALL                             R47 1 1
      272 LOADN                            R49 50
      273 FASTCALL1                        TOSTRING R49 ; [+2]
      274 GETIMPORT                        R48 K85 [tostring]
      276 CALL                             R48 1 1
      277 SETLIST                          R46 R47 2 [1]
      279 NAMECALL                         R42 R3 K38 ["getText"]
      281 CALL                             R42 4 1
      282 SETTABLEKS                       R42 R41 K78 ["ErrorText"]
      284 SETTABLEKS                       R12 R41 K81 ["OnTextChanged"]
      286 SETTABLEKS                       R11 R41 K26 ["Text"]
      288 CALL                             R39 2 1
      289 SETTABLEKS                       R39 R38 K76 ["TextBox"]
      291 CALL                             R35 3 1
      292 SETTABLEKS                       R35 R34 K10 ["Name"]
      294 GETUPVAL                         R35 6
      295 GETTABLEKS                       R35 R35 K67 ["createElement"]
      297 GETUPVAL                         R36 8
      298 DUPTABLE                         R37 K74 [{"LayoutOrder", "Title"}]
      299 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      301 CALL                             R38 1 1
      302 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      304 LOADK                            R40 K75 ["PageTitle"]
      305 LOADK                            R41 K3 ["Description"]
      306 NAMECALL                         R38 R3 K38 ["getText"]
      308 CALL                             R38 3 1
      309 SETTABLEKS                       R38 R37 K68 ["Title"]
      311 DUPTABLE                         R38 K77 [{"TextBox"}]
      312 GETUPVAL                         R39 6
      313 GETTABLEKS                       R39 R39 K67 ["createElement"]
      315 GETUPVAL                         R40 9
      316 DUPTABLE                         R41 K90 [{["ErrorText"], ["Height"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Text"]}]
      317 MOVE                             R42 R6
      318 JUMPIFNOT                        R42 ; [+19]
      319 LOADK                            R44 K83 ["Error"]
      320 MOVE                             R45 R6
      321 NEWTABLE                         R46 0 2
      323 FASTCALL1                        TOSTRING R31 ; [+3]
      324 MOVE                             R48 R31
      325 GETIMPORT                        R47 K85 [tostring]
      327 CALL                             R47 1 1
      328 LOADN                            R49 1000
      329 FASTCALL1                        TOSTRING R49 ; [+2]
      330 GETIMPORT                        R48 K85 [tostring]
      332 CALL                             R48 1 1
      333 SETLIST                          R46 R47 2 [1]
      335 NAMECALL                         R42 R3 K38 ["getText"]
      337 CALL                             R42 4 1
      338 SETTABLEKS                       R42 R41 K78 ["ErrorText"]
      340 GETTABLEKS                       R42 R2 K91 ["descriptionBox"]
      342 GETTABLEKS                       R42 R42 K92 ["textBoxHeight"]
      344 SETTABLEKS                       R42 R41 K86 ["Height"]
      346 SETTABLEKS                       R5 R41 K81 ["OnTextChanged"]
      348 SETTABLEKS                       R4 R41 K26 ["Text"]
      350 CALL                             R39 2 1
      351 SETTABLEKS                       R39 R38 K76 ["TextBox"]
      353 CALL                             R35 3 1
      354 SETTABLEKS                       R35 R34 K3 ["Description"]
      356 GETUPVAL                         R35 6
      357 GETTABLEKS                       R35 R35 K67 ["createElement"]
      359 GETUPVAL                         R36 10
      360 DUPTABLE                         R37 K93 [{"LayoutOrder"}]
      361 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      363 CALL                             R38 1 1
      364 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      366 CALL                             R35 2 1
      367 SETTABLEKS                       R35 R34 K60 ["Separator1"]
      369 GETUPVAL                         R35 6
      370 GETTABLEKS                       R35 R35 K67 ["createElement"]
      372 GETUPVAL                         R36 8
      373 DUPTABLE                         R37 K74 [{"LayoutOrder", "Title"}]
      374 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      376 CALL                             R38 1 1
      377 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      379 LOADK                            R40 K75 ["PageTitle"]
      380 LOADK                            R41 K61 ["Creator"]
      381 NAMECALL                         R38 R3 K38 ["getText"]
      383 CALL                             R38 3 1
      384 SETTABLEKS                       R38 R37 K68 ["Title"]
      386 DUPTABLE                         R38 K95 [{"Selector"}]
      387 GETUPVAL                         R39 6
      388 GETTABLEKS                       R39 R39 K67 ["createElement"]
      390 GETUPVAL                         R40 11
      391 DUPTABLE                         R41 K100 [{"Items", "SelectedIndex", "OnItemActivated", "Width"}]
      392 SETTABLEKS                       R29 R41 K96 ["Items"]
      394 SETTABLEKS                       R27 R41 K97 ["SelectedIndex"]
      396 SETTABLEKS                       R28 R41 K98 ["OnItemActivated"]
      398 GETTABLEKS                       R42 R2 K101 ["selectInput"]
      400 GETTABLEKS                       R42 R42 K102 ["width"]
      402 GETTABLEKS                       R42 R42 K103 ["creator"]
      404 SETTABLEKS                       R42 R41 K99 ["Width"]
      406 CALL                             R39 2 1
      407 SETTABLEKS                       R39 R38 K94 ["Selector"]
      409 CALL                             R35 3 1
      410 SETTABLEKS                       R35 R34 K61 ["Creator"]
      412 GETUPVAL                         R35 6
      413 GETTABLEKS                       R35 R35 K67 ["createElement"]
      415 GETUPVAL                         R36 10
      416 DUPTABLE                         R37 K93 [{"LayoutOrder"}]
      417 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      419 CALL                             R38 1 1
      420 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      422 CALL                             R35 2 1
      423 SETTABLEKS                       R35 R34 K62 ["Separator2"]
      425 GETUPVAL                         R36 12
      426 JUMPIFNOT                        R36 ; [+2]
      427 LOADNIL                          R35
      428 JUMP                             ; [+71]
      429 GETUPVAL                         R35 6
      430 GETTABLEKS                       R35 R35 K67 ["createElement"]
      432 GETUPVAL                         R36 8
      433 DUPTABLE                         R37 K74 [{"LayoutOrder", "Title"}]
      434 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      436 CALL                             R38 1 1
      437 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      439 LOADK                            R40 K75 ["PageTitle"]
      440 LOADK                            R41 K8 ["Genre"]
      441 NAMECALL                         R38 R3 K38 ["getText"]
      443 CALL                             R38 3 1
      444 SETTABLEKS                       R38 R37 K68 ["Title"]
      446 DUPTABLE                         R38 K105 [{"Body"}]
      447 GETUPVAL                         R39 6
      448 GETTABLEKS                       R39 R39 K67 ["createElement"]
      450 GETUPVAL                         R40 13
      451 DUPTABLE                         R41 K114 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["TextProps"], ["TextWrapped"] = True, ["HorizontalAlignment"]}]
      452 DUPCLOSURE                       R42 K115 [PROTO_3]
      453 CAPTURE                          UPVAL U14
      454 CAPTURE                          UPVAL U15
      455 SETTABLEKS                       R42 R41 K106 ["OnLinkClicked"]
      457 LOADK                            R44 K116 ["General"]
      458 LOADK                            R45 K117 ["GenreReplacementMessage"]
      459 NAMECALL                         R42 R3 K38 ["getText"]
      461 CALL                             R42 3 1
      462 SETTABLEKS                       R42 R41 K26 ["Text"]
      464 LOADK                            R44 K116 ["General"]
      465 LOADK                            R45 K118 ["GenreOverhaulMessageLink"]
      466 NAMECALL                         R42 R3 K38 ["getText"]
      468 CALL                             R42 3 1
      469 SETTABLEKS                       R42 R41 K107 ["LinkText"]
      471 GETTABLEKS                       R42 R2 K119 ["textWithInlineLink"]
      473 GETTABLEKS                       R42 R42 K120 ["maxWidth"]
      475 SETTABLEKS                       R42 R41 K110 ["MaxWidth"]
      477 GETUPVAL                         R42 16
      478 GETTABLEKS                       R42 R42 K121 ["join"]
      480 GETTABLEKS                       R43 R2 K122 ["fontStyle"]
      482 GETTABLEKS                       R43 R43 K123 ["Subtext"]
      484 DUPTABLE                         R44 K127 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      485 GETIMPORT                        R45 K129 [Enum.TextXAlignment.Left]
      487 SETTABLEKS                       R45 R44 K126 ["TextXAlignment"]
      489 CALL                             R42 2 1
      490 SETTABLEKS                       R42 R41 K111 ["TextProps"]
      492 GETIMPORT                        R42 K130 [Enum.HorizontalAlignment.Left]
      494 SETTABLEKS                       R42 R41 K113 ["HorizontalAlignment"]
      496 CALL                             R39 2 1
      497 SETTABLEKS                       R39 R38 K104 ["Body"]
      499 CALL                             R35 3 1
      500 SETTABLEKS                       R35 R34 K8 ["Genre"]
      502 GETUPVAL                         R36 12
      503 JUMPIFNOT                        R36 ; [+2]
      504 LOADNIL                          R35
      505 JUMP                             ; [+11]
      506 GETUPVAL                         R35 6
      507 GETTABLEKS                       R35 R35 K67 ["createElement"]
      509 GETUPVAL                         R36 10
      510 DUPTABLE                         R37 K93 [{"LayoutOrder"}]
      511 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      513 CALL                             R38 1 1
      514 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      516 CALL                             R35 2 1
      517 SETTABLEKS                       R35 R34 K63 ["Separator4"]
      519 GETUPVAL                         R35 6
      520 GETTABLEKS                       R35 R35 K67 ["createElement"]
      522 GETUPVAL                         R36 17
      523 DUPTABLE                         R37 K132 [{"LayoutOrder", "Devices", "DeviceSelected"}]
      524 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      526 CALL                             R38 1 1
      527 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      529 SETTABLEKS                       R7 R37 K6 ["Devices"]
      531 NEWCLOSURE                       R38 P4
      532 CAPTURE                          UPVAL U0
      533 CAPTURE                          VAL R7
      534 CAPTURE                          VAL R8
      535 SETTABLEKS                       R38 R37 K131 ["DeviceSelected"]
      537 CALL                             R35 2 1
      538 SETTABLEKS                       R35 R34 K6 ["Devices"]
      540 GETUPVAL                         R35 6
      541 GETTABLEKS                       R35 R35 K67 ["createElement"]
      543 GETUPVAL                         R36 10
      544 DUPTABLE                         R37 K93 [{"LayoutOrder"}]
      545 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      547 CALL                             R38 1 1
      548 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      550 CALL                             R35 2 1
      551 SETTABLEKS                       R35 R34 K64 ["Separator3"]
      553 GETUPVAL                         R35 6
      554 GETTABLEKS                       R35 R35 K67 ["createElement"]
      556 GETUPVAL                         R36 18
      557 DUPTABLE                         R37 K138 [{["Title"], ["LayoutOrder"], ["Disabled"] = False, ["Selected"], ["LinkProps"], ["OnClick"]}]
      558 LOADK                            R40 K139 ["TeamCreate"]
      559 LOADK                            R41 K68 ["Title"]
      560 NAMECALL                         R38 R3 K38 ["getText"]
      562 CALL                             R38 3 1
      563 SETTABLEKS                       R38 R37 K68 ["Title"]
      565 NAMECALL                         R38 R32 K73 ["getNextOrder"]
      567 CALL                             R38 1 1
      568 SETTABLEKS                       R38 R37 K69 ["LayoutOrder"]
      570 GETTABLEKS                       R38 R1 K140 ["TeamCreateEnabled"]
      572 SETTABLEKS                       R38 R37 K135 ["Selected"]
      574 DUPTABLE                         R38 K141 [{"Text", "LinkText", "OnLinkClicked"}]
      575 LOADK                            R41 K139 ["TeamCreate"]
      576 LOADK                            R42 K142 ["LinkDescription"]
      577 NAMECALL                         R39 R3 K38 ["getText"]
      579 CALL                             R39 3 1
      580 SETTABLEKS                       R39 R38 K26 ["Text"]
      582 LOADK                            R41 K139 ["TeamCreate"]
      583 LOADK                            R42 K107 ["LinkText"]
      584 NAMECALL                         R39 R3 K38 ["getText"]
      586 CALL                             R39 3 1
      587 SETTABLEKS                       R39 R38 K107 ["LinkText"]
      589 DUPCLOSURE                       R39 K143 [PROTO_5]
      590 CAPTURE                          UPVAL U14
      591 CAPTURE                          UPVAL U19
      592 SETTABLEKS                       R39 R38 K106 ["OnLinkClicked"]
      594 SETTABLEKS                       R38 R37 K136 ["LinkProps"]
      596 NEWCLOSURE                       R38 P6
      597 CAPTURE                          VAL R1
      598 SETTABLEKS                       R38 R37 K137 ["OnClick"]
      600 DUPTABLE                         R38 K145 [{"TeachingCallout"}]
      601 GETUPVAL                         R40 20
      602 JUMPIF                           R40 ; [+7]
      603 GETUPVAL                         R39 6
      604 GETTABLEKS                       R39 R39 K67 ["createElement"]
      606 GETUPVAL                         R40 21
      607 DUPTABLE                         R41 K150 [{["DefinitionId"] = "PublishPlaceAsTeamCreateToggleCallout", ["LocationId"] = "TeamCreateToggle"}]
      608 CALL                             R39 2 1
      609 JUMP                             ; [+1]
      610 LOADNIL                          R39
      611 SETTABLEKS                       R39 R38 K144 ["TeachingCallout"]
      613 CALL                             R35 3 1
      614 SETTABLEKS                       R35 R34 K65 ["EnableTeamCreate"]
      616 GETUPVAL                         R36 16
      617 GETTABLEKS                       R36 R36 K151 ["find"]
      619 MOVE                             R37 R21
      620 NEWCLOSURE                       R38 P7
      621 CAPTURE                          VAL R14
      622 CALL                             R36 2 1
      623 JUMPIFNOTEQKNIL                  R36 ; [+2]
      625 LOADB                            R35 0 +1
      626 LOADB                            R35 1
      627 LOADB                            R36 1
      628 JUMPIFEQKN                       R14 K31 [0] ; [+2]
      630 MOVE                             R36 R35
      631 GETUPVAL                         R37 6
      632 GETTABLEKS                       R37 R37 K67 ["createElement"]
      634 GETUPVAL                         R38 22
      635 DUPTABLE                         R39 K155 [{"DataSharingEnabled", "DataSharingDefault", "LayoutOrder", "isOwningCreator", "OnClick"}]
      636 GETTABLEKS                       R40 R1 K152 ["DataSharingEnabled"]
      638 SETTABLEKS                       R40 R39 K152 ["DataSharingEnabled"]
      640 GETTABLEKS                       R40 R1 K153 ["DataSharingDefault"]
      642 SETTABLEKS                       R40 R39 K153 ["DataSharingDefault"]
      644 NAMECALL                         R40 R32 K73 ["getNextOrder"]
      646 CALL                             R40 1 1
      647 SETTABLEKS                       R40 R39 K69 ["LayoutOrder"]
      649 SETTABLEKS                       R36 R39 K154 ["isOwningCreator"]
      651 NEWCLOSURE                       R40 P8
      652 CAPTURE                          VAL R1
      653 SETTABLEKS                       R40 R39 K137 ["OnClick"]
      655 CALL                             R37 2 1
      656 SETTABLEKS                       R37 R34 K156 ["DataSharing"]
      658 GETTABLEKS                       R37 R1 K157 ["IsPublish"]
      660 JUMPIFNOT                        R37 ; [+456]
      661 GETUPVAL                         R37 23
      662 CALL                             R37 0 1
      663 JUMPIFNOT                        R37 ; [+453]
      664 GETUPVAL                         R37 6
      665 GETTABLEKS                       R37 R37 K67 ["createElement"]
      667 GETUPVAL                         R38 10
      668 DUPTABLE                         R39 K93 [{"LayoutOrder"}]
      669 NAMECALL                         R40 R32 K73 ["getNextOrder"]
      671 CALL                             R40 1 1
      672 SETTABLEKS                       R40 R39 K69 ["LayoutOrder"]
      674 CALL                             R37 2 1
      675 SETTABLEKS                       R37 R34 K158 ["Separator5"]
      677 GETUPVAL                         R37 6
      678 GETTABLEKS                       R37 R37 K67 ["createElement"]
      680 GETUPVAL                         R38 24
      681 DUPTABLE                         R39 K164 [{"Title", "LayoutOrder", "MaxHeight", "Boxes", "Enabled", "EntryClicked", "Tooltip"}]
      682 GETUPVAL                         R42 5
      683 LOADK                            R43 K165 ["TitleOptInLocations"]
      684 NAMECALL                         R40 R3 K38 ["getText"]
      686 CALL                             R40 3 1
      687 SETTABLEKS                       R40 R39 K68 ["Title"]
      689 NAMECALL                         R40 R32 K73 ["getNextOrder"]
      691 CALL                             R40 1 1
      692 SETTABLEKS                       R40 R39 K69 ["LayoutOrder"]
      694 GETTABLEKS                       R40 R2 K166 ["optInLocations"]
      696 GETTABLEKS                       R40 R40 K167 ["height"]
      698 SETTABLEKS                       R40 R39 K159 ["MaxHeight"]
      700 NEWTABLE                         R40 0 1
      702 DUPTABLE                         R41 K170 [{"Id", "Title", "Selected", "LinkTextFrame"}]
      703 GETUPVAL                         R42 25
      704 SETTABLEKS                       R42 R41 K168 ["Id"]
      706 GETUPVAL                         R44 5
      707 GETUPVAL                         R45 25
      708 NAMECALL                         R42 R3 K38 ["getText"]
      710 CALL                             R42 3 1
      711 SETTABLEKS                       R42 R41 K68 ["Title"]
      713 JUMPIFNOT                        R17 ; [+3]
      714 GETTABLEKS                       R42 R17 K171 ["China"]
      716 JUMP                             ; [+1]
      717 LOADB                            R42 0
      718 SETTABLEKS                       R42 R41 K135 ["Selected"]
      720 GETUPVAL                         R42 6
      721 GETTABLEKS                       R42 R42 K67 ["createElement"]
      723 LOADK                            R43 K172 ["Frame"]
      724 DUPTABLE                         R44 K175 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
      725 GETIMPORT                        R45 K177 [UDim2.new]
      727 LOADN                            R46 0
      728 GETTABLEKS                       R47 R2 K178 ["requirementsLink"]
      730 GETTABLEKS                       R47 R47 K179 ["length"]
      732 LOADN                            R48 0
      733 GETTABLEKS                       R49 R2 K178 ["requirementsLink"]
      735 GETTABLEKS                       R49 R49 K167 ["height"]
      737 CALL                             R45 4 1
      738 SETTABLEKS                       R45 R44 K173 ["Size"]
      740 GETIMPORT                        R45 K177 [UDim2.new]
      742 LOADN                            R46 0
      743 LOADN                            R47 0
      744 LOADN                            R48 0
      745 GETTABLEKS                       R49 R2 K178 ["requirementsLink"]
      747 GETTABLEKS                       R49 R49 K180 ["paddingY"]
      749 CALL                             R45 4 1
      750 SETTABLEKS                       R45 R44 K174 ["Position"]
      752 DUPTABLE                         R45 K182 [{"LinkTextLabel", "LinkText"}]
      753 GETUPVAL                         R46 6
      754 GETTABLEKS                       R46 R46 K67 ["createElement"]
      756 GETUPVAL                         R47 26
      757 DUPTABLE                         R48 K185 [{["Position"], ["Size"], ["Style"] = "Body", ["Text"], ["TextXAlignment"], ["TextYAlignment"]}]
      758 GETIMPORT                        R49 K177 [UDim2.new]
      760 LOADN                            R50 0
      761 GETTABLEKS                       R51 R33 K186 ["X"]
      763 LOADN                            R52 0
      764 LOADN                            R53 0
      765 CALL                             R49 4 1
      766 SETTABLEKS                       R49 R48 K174 ["Position"]
      768 GETIMPORT                        R49 K177 [UDim2.new]
      770 LOADN                            R50 1
      771 GETTABLEKS                       R52 R33 K186 ["X"]
      773 MINUS                            R51 R52
      774 LOADN                            R52 1
      775 LOADN                            R53 0
      776 CALL                             R49 4 1
      777 SETTABLEKS                       R49 R48 K173 ["Size"]
      779 GETUPVAL                         R51 5
      780 LOADK                            R52 K187 ["ChinaRequirements"]
      781 NAMECALL                         R49 R3 K38 ["getText"]
      783 CALL                             R49 3 1
      784 SETTABLEKS                       R49 R48 K26 ["Text"]
      786 GETIMPORT                        R49 K129 [Enum.TextXAlignment.Left]
      788 SETTABLEKS                       R49 R48 K126 ["TextXAlignment"]
      790 GETIMPORT                        R49 K189 [Enum.TextYAlignment.Top]
      792 SETTABLEKS                       R49 R48 K184 ["TextYAlignment"]
      794 CALL                             R46 2 1
      795 SETTABLEKS                       R46 R45 K181 ["LinkTextLabel"]
      797 GETUPVAL                         R46 6
      798 GETTABLEKS                       R46 R46 K67 ["createElement"]
      800 GETUPVAL                         R47 27
      801 DUPTABLE                         R48 K190 [{["OnClick"], ["Size"], ["Style"] = "Body", ["Text"]}]
      802 DUPCLOSURE                       R49 K191 [PROTO_9]
      803 CAPTURE                          UPVAL U28
      804 CAPTURE                          UPVAL U25
      805 CAPTURE                          UPVAL U14
      806 SETTABLEKS                       R49 R48 K137 ["OnClick"]
      808 GETIMPORT                        R49 K177 [UDim2.new]
      810 LOADN                            R50 0
      811 GETTABLEKS                       R51 R33 K186 ["X"]
      813 LOADN                            R52 0
      814 GETTABLEKS                       R53 R33 K192 ["Y"]
      816 CALL                             R49 4 1
      817 SETTABLEKS                       R49 R48 K173 ["Size"]
      819 GETUPVAL                         R51 5
      820 LOADK                            R52 K57 ["RequirementsLinkText"]
      821 NAMECALL                         R49 R3 K38 ["getText"]
      823 CALL                             R49 3 1
      824 SETTABLEKS                       R49 R48 K26 ["Text"]
      826 CALL                             R46 2 1
      827 SETTABLEKS                       R46 R45 K107 ["LinkText"]
      829 CALL                             R42 3 1
      830 SETTABLEKS                       R42 R41 K169 ["LinkTextFrame"]
      832 SETLIST                          R40 R41 1 [1]
      834 SETTABLEKS                       R40 R39 K160 ["Boxes"]
      836 JUMPIFNOTEQKNIL                  R17 ; [+2]
      838 LOADB                            R40 0 +1
      839 LOADB                            R40 1
      840 SETTABLEKS                       R40 R39 K161 ["Enabled"]
      842 NEWCLOSURE                       R40 P10
      843 CAPTURE                          VAL R19
      844 CAPTURE                          VAL R0
      845 CAPTURE                          UPVAL U0
      846 CAPTURE                          VAL R17
      847 CAPTURE                          UPVAL U5
      848 CAPTURE                          UPVAL U29
      849 CAPTURE                          UPVAL U30
      850 CAPTURE                          UPVAL U31
      851 CAPTURE                          UPVAL U32
      852 CAPTURE                          UPVAL U33
      853 CAPTURE                          VAL R18
      854 SETTABLEKS                       R40 R39 K162 ["EntryClicked"]
      856 GETUPVAL                         R40 6
      857 GETTABLEKS                       R40 R40 K67 ["createElement"]
      859 GETUPVAL                         R41 34
      860 DUPTABLE                         R42 K195 [{["Size"], ["Position"], ["Style"] = "TooltipStyle", ["StyleModifier"]}]
      861 GETIMPORT                        R43 K197 [UDim2.fromOffset]
      863 GETTABLEKS                       R44 R2 K198 ["tooltipIcon"]
      865 GETTABLEKS                       R44 R44 K199 ["size"]
      867 GETTABLEKS                       R45 R2 K198 ["tooltipIcon"]
      869 GETTABLEKS                       R45 R45 K199 ["size"]
      871 CALL                             R43 2 1
      872 SETTABLEKS                       R43 R42 K173 ["Size"]
      874 GETIMPORT                        R43 K177 [UDim2.new]
      876 LOADN                            R44 0
      877 LOADN                            R45 0
      878 LOADN                            R46 0
      879 GETTABLEKS                       R47 R2 K198 ["tooltipIcon"]
      881 GETTABLEKS                       R47 R47 K180 ["paddingY"]
      883 CALL                             R43 4 1
      884 SETTABLEKS                       R43 R42 K174 ["Position"]
      886 GETTABLEKS                       R43 R0 K200 ["state"]
      888 GETTABLEKS                       R43 R43 K194 ["StyleModifier"]
      890 SETTABLEKS                       R43 R42 K194 ["StyleModifier"]
      892 NEWTABLE                         R43 0 2
      894 GETUPVAL                         R44 6
      895 GETTABLEKS                       R44 R44 K67 ["createElement"]
      897 GETUPVAL                         R45 35
      898 DUPTABLE                         R46 K201 [{"Text"}]
      899 GETUPVAL                         R49 5
      900 LOADK                            R50 K163 ["Tooltip"]
      901 NAMECALL                         R47 R3 K38 ["getText"]
      903 CALL                             R47 3 1
      904 SETTABLEKS                       R47 R46 K26 ["Text"]
      906 CALL                             R44 2 1
      907 GETUPVAL                         R45 6
      908 GETTABLEKS                       R45 R45 K67 ["createElement"]
      910 GETUPVAL                         R46 36
      911 DUPTABLE                         R47 K206 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      912 GETTABLEKS                       R48 R0 K207 ["onMouseEnter"]
      914 SETTABLEKS                       R48 R47 K204 ["MouseEnter"]
      916 GETTABLEKS                       R48 R0 K208 ["onMouseLeave"]
      918 SETTABLEKS                       R48 R47 K205 ["MouseLeave"]
      920 CALL                             R45 2 -1
      921 SETLIST                          R43 R44 -1 [1]
      923 CALL                             R40 3 1
      924 SETTABLEKS                       R40 R39 K163 ["Tooltip"]
      926 CALL                             R37 2 1
      927 SETTABLEKS                       R37 R34 K16 ["OptInLocations"]
      929 GETUPVAL                         R37 6
      930 GETTABLEKS                       R37 R37 K67 ["createElement"]
      932 GETUPVAL                         R38 37
      933 DUPTABLE                         R39 K216 [{["Enabled"], ["Modal"] = True, ["Title"] = "", ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["ButtonHorizontalAlignment"]}]
      934 GETTABLEKS                       R40 R0 K200 ["state"]
      936 GETTABLEKS                       R40 R40 K217 ["showDialog"]
      938 SETTABLEKS                       R40 R39 K161 ["Enabled"]
      940 GETIMPORT                        R40 K219 [Vector2.new]
      942 GETTABLEKS                       R41 R2 K220 ["dialog"]
      944 GETTABLEKS                       R41 R41 K221 ["minSize"]
      946 GETTABLEKS                       R41 R41 K102 ["width"]
      948 GETTABLEKS                       R42 R2 K220 ["dialog"]
      950 GETTABLEKS                       R42 R42 K221 ["minSize"]
      952 GETTABLEKS                       R42 R42 K167 ["height"]
      954 CALL                             R40 2 1
      955 SETTABLEKS                       R40 R39 K211 ["MinContentSize"]
      957 NEWTABLE                         R40 0 1
      959 DUPTABLE                         R41 K223 [{["Key"] = "OK", ["Text"]}]
      960 LOADK                            R44 K116 ["General"]
      961 LOADK                            R45 K224 ["ReplyOK"]
      962 NAMECALL                         R42 R3 K38 ["getText"]
      964 CALL                             R42 3 1
      965 SETTABLEKS                       R42 R41 K26 ["Text"]
      967 SETLIST                          R40 R41 1 [1]
      969 SETTABLEKS                       R40 R39 K212 ["Buttons"]
      971 NEWCLOSURE                       R40 P11
      972 CAPTURE                          VAL R0
      973 CAPTURE                          UPVAL U38
      974 CAPTURE                          UPVAL U30
      975 CAPTURE                          UPVAL U31
      976 CAPTURE                          UPVAL U32
      977 CAPTURE                          UPVAL U39
      978 SETTABLEKS                       R40 R39 K213 ["OnButtonPressed"]
      980 NEWCLOSURE                       R40 P12
      981 CAPTURE                          VAL R0
      982 CAPTURE                          UPVAL U38
      983 CAPTURE                          UPVAL U30
      984 CAPTURE                          UPVAL U31
      985 CAPTURE                          UPVAL U32
      986 CAPTURE                          UPVAL U39
      987 SETTABLEKS                       R40 R39 K214 ["OnClose"]
      989 GETIMPORT                        R40 K226 [Enum.HorizontalAlignment.Center]
      991 SETTABLEKS                       R40 R39 K215 ["ButtonHorizontalAlignment"]
      993 DUPTABLE                         R40 K228 [{"Layout", "Header", "Body"}]
      994 GETUPVAL                         R41 6
      995 GETTABLEKS                       R41 R41 K67 ["createElement"]
      997 LOADK                            R42 K229 ["UIListLayout"]
      998 DUPTABLE                         R43 K233 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder"}]
      999 GETIMPORT                        R44 K235 [Enum.FillDirection.Vertical]
     1001 SETTABLEKS                       R44 R43 K230 ["FillDirection"]
     1003 GETIMPORT                        R44 K236 [Enum.VerticalAlignment.Center]
     1005 SETTABLEKS                       R44 R43 K231 ["VerticalAlignment"]
     1007 GETIMPORT                        R44 K226 [Enum.HorizontalAlignment.Center]
     1009 SETTABLEKS                       R44 R43 K113 ["HorizontalAlignment"]
     1011 GETIMPORT                        R44 K237 [Enum.SortOrder.LayoutOrder]
     1013 SETTABLEKS                       R44 R43 K232 ["SortOrder"]
     1015 CALL                             R41 2 1
     1016 SETTABLEKS                       R41 R40 K227 ["Layout"]
     1018 GETUPVAL                         R41 6
     1019 GETTABLEKS                       R41 R41 K67 ["createElement"]
     1021 LOADK                            R42 K238 ["TextLabel"]
     1022 GETUPVAL                         R43 0
     1023 GETTABLEKS                       R43 R43 K239 ["Dictionary"]
     1025 GETTABLEKS                       R43 R43 K121 ["join"]
     1027 GETTABLEKS                       R44 R2 K122 ["fontStyle"]
     1029 GETTABLEKS                       R44 R44 K68 ["Title"]
     1031 DUPTABLE                         R45 K241 [{["Position"], ["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True}]
     1032 GETIMPORT                        R46 K177 [UDim2.new]
     1034 LOADK                            R47 K242 [0.5]
     1035 LOADN                            R48 0
     1036 LOADN                            R49 0
     1037 LOADN                            R50 45
     1038 CALL                             R46 4 1
     1039 SETTABLEKS                       R46 R45 K174 ["Position"]
     1041 GETIMPORT                        R46 K219 [Vector2.new]
     1043 LOADK                            R47 K242 [0.5]
     1044 LOADK                            R48 K242 [0.5]
     1045 CALL                             R46 2 1
     1046 SETTABLEKS                       R46 R45 K240 ["AnchorPoint"]
     1048 GETIMPORT                        R46 K177 [UDim2.new]
     1050 LOADN                            R47 1
     1051 LOADN                            R48 0
     1052 LOADN                            R49 0
     1053 LOADN                            R50 60
     1054 CALL                             R46 4 1
     1055 SETTABLEKS                       R46 R45 K173 ["Size"]
     1057 LOADK                            R48 K116 ["General"]
     1058 LOADK                            R49 K243 ["TermsDialogHeader"]
     1059 NAMECALL                         R46 R3 K38 ["getText"]
     1061 CALL                             R46 3 1
     1062 SETTABLEKS                       R46 R45 K26 ["Text"]
     1064 CALL                             R43 2 -1
     1065 CALL                             R41 -1 1
     1066 SETTABLEKS                       R41 R40 K59 ["Header"]
     1068 GETUPVAL                         R41 6
     1069 GETTABLEKS                       R41 R41 K67 ["createElement"]
     1071 GETUPVAL                         R42 13
     1072 DUPTABLE                         R43 K244 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["TextProps"]}]
     1073 DUPCLOSURE                       R44 K245 [PROTO_13]
     1074 CAPTURE                          UPVAL U40
     1075 CAPTURE                          UPVAL U14
     1076 SETTABLEKS                       R44 R43 K106 ["OnLinkClicked"]
     1078 LOADK                            R46 K116 ["General"]
     1079 LOADK                            R47 K246 ["TermsDialogBody"]
     1080 NAMECALL                         R44 R3 K38 ["getText"]
     1082 CALL                             R44 3 1
     1083 SETTABLEKS                       R44 R43 K26 ["Text"]
     1085 LOADK                            R46 K116 ["General"]
     1086 LOADK                            R47 K247 ["TermsDialogBodyLink"]
     1087 NAMECALL                         R44 R3 K38 ["getText"]
     1089 CALL                             R44 3 1
     1090 SETTABLEKS                       R44 R43 K107 ["LinkText"]
     1092 GETTABLEKS                       R44 R2 K119 ["textWithInlineLink"]
     1094 GETTABLEKS                       R44 R44 K120 ["maxWidth"]
     1096 SETTABLEKS                       R44 R43 K110 ["MaxWidth"]
     1098 GETUPVAL                         R44 0
     1099 GETTABLEKS                       R44 R44 K239 ["Dictionary"]
     1101 GETTABLEKS                       R44 R44 K121 ["join"]
     1103 GETTABLEKS                       R45 R2 K122 ["fontStyle"]
     1105 GETTABLEKS                       R45 R45 K248 ["Normal"]
     1107 DUPTABLE                         R46 K249 [{["BackgroundTransparency"] = 1}]
     1108 CALL                             R44 2 1
     1109 SETTABLEKS                       R44 R43 K111 ["TextProps"]
     1111 CALL                             R41 2 1
     1112 SETTABLEKS                       R41 R40 K104 ["Body"]
     1114 CALL                             R37 3 1
     1115 SETTABLEKS                       R37 R34 K250 ["Dialog"]
     1117 RETURN                           R34 1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["NewGameSettings"]
        2 GETTABLEKS                       R2 R2 K1 ["errors"]
        4 GETTABLEKS                       R3 R1 K2 ["GroupsHavePermission"]
        6 GETTABLEKS                       R3 R3 K3 ["groupInfo"]
        8 GETTABLEKS                       R4 R1 K4 ["SelectedGroup"]
       10 GETTABLEKS                       R4 R4 K5 ["selectedGroup"]
       12 MOVE                             R5 R0
       13 LOADK                            R6 K6 ["dataSharingDefault"]
       14 CALL                             R5 1 1
       15 MOVE                             R6 R0
       16 LOADK                            R7 K7 ["dataSharingEnabled"]
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R7 R3 K8 ["ownedGroups"]
       20 DUPTABLE                         R8 K28 [{"NameError", "DescriptionError", "IsCurrentlyActive", "Groups", "SelectedGroup", "OwnedGroups", "Name", "Description", "Genre", "Devices", "RootPlaceId", "IsActive", "IsFriendsOnly", "Audiences", "CreatorId", "OptInLocations", "PlayerAcceptance", "TeamCreateEnabled", "DataSharingDefault", "DataSharingEnabled"}]
       21 GETTABLEKS                       R9 R2 K29 ["name"]
       23 SETTABLEKS                       R9 R8 K9 ["NameError"]
       25 GETTABLEKS                       R9 R2 K30 ["description"]
       27 SETTABLEKS                       R9 R8 K10 ["DescriptionError"]
       29 GETUPVAL                         R10 0
       30 CALL                             R10 0 1
       31 JUMPIFNOT                        R10 ; [+10]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R11 R1 K0 ["NewGameSettings"]
       35 GETTABLEKS                       R11 R11 K31 ["current"]
       37 GETTABLEKS                       R11 R11 K32 ["audiences"]
       39 CALL                             R10 1 1
       40 NOT                              R9 R10
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R9 R1 K0 ["NewGameSettings"]
       44 GETTABLEKS                       R9 R9 K31 ["current"]
       46 GETTABLEKS                       R9 R9 K33 ["isActive"]
       48 SETTABLEKS                       R9 R8 K11 ["IsCurrentlyActive"]
       50 GETTABLEKS                       R9 R3 K34 ["groups"]
       52 SETTABLEKS                       R9 R8 K12 ["Groups"]
       54 SETTABLEKS                       R4 R8 K4 ["SelectedGroup"]
       56 SETTABLEKS                       R7 R8 K13 ["OwnedGroups"]
       58 MOVE                             R9 R0
       59 LOADK                            R10 K29 ["name"]
       60 CALL                             R9 1 1
       61 SETTABLEKS                       R9 R8 K14 ["Name"]
       63 MOVE                             R9 R0
       64 LOADK                            R10 K30 ["description"]
       65 CALL                             R9 1 1
       66 SETTABLEKS                       R9 R8 K15 ["Description"]
       68 MOVE                             R9 R0
       69 LOADK                            R10 K35 ["genre"]
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K16 ["Genre"]
       73 MOVE                             R9 R0
       74 LOADK                            R10 K36 ["playableDevices"]
       75 CALL                             R9 1 1
       76 JUMPIF                           R9 ; [+2]
       77 NEWTABLE                         R9 0 0
       79 SETTABLEKS                       R9 R8 K17 ["Devices"]
       81 MOVE                             R9 R0
       82 LOADK                            R10 K37 ["rootPlaceId"]
       83 CALL                             R9 1 1
       84 SETTABLEKS                       R9 R8 K18 ["RootPlaceId"]
       86 GETUPVAL                         R10 0
       87 CALL                             R10 0 1
       88 JUMPIFNOT                        R10 ; [+2]
       89 LOADNIL                          R9
       90 JUMP                             ; [+3]
       91 MOVE                             R9 R0
       92 LOADK                            R10 K33 ["isActive"]
       93 CALL                             R9 1 1
       94 SETTABLEKS                       R9 R8 K19 ["IsActive"]
       96 GETUPVAL                         R10 0
       97 CALL                             R10 0 1
       98 JUMPIFNOT                        R10 ; [+2]
       99 LOADNIL                          R9
      100 JUMP                             ; [+3]
      101 MOVE                             R9 R0
      102 LOADK                            R10 K38 ["isFriendsOnly"]
      103 CALL                             R9 1 1
      104 SETTABLEKS                       R9 R8 K20 ["IsFriendsOnly"]
      106 GETUPVAL                         R10 0
      107 CALL                             R10 0 1
      108 JUMPIFNOT                        R10 ; [+4]
      109 MOVE                             R9 R0
      110 LOADK                            R10 K32 ["audiences"]
      111 CALL                             R9 1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R9
      114 SETTABLEKS                       R9 R8 K21 ["Audiences"]
      116 MOVE                             R9 R0
      117 LOADK                            R10 K39 ["creatorId"]
      118 CALL                             R9 1 1
      119 SETTABLEKS                       R9 R8 K22 ["CreatorId"]
      121 GETUPVAL                         R10 2
      122 CALL                             R10 0 1
      123 JUMPIFNOT                        R10 ; [+4]
      124 MOVE                             R9 R0
      125 GETUPVAL                         R10 3
      126 CALL                             R9 1 1
      127 JUMPIF                           R9 ; [+2]
      128 NEWTABLE                         R9 0 0
      130 SETTABLEKS                       R9 R8 K23 ["OptInLocations"]
      132 GETTABLEKS                       R9 R1 K40 ["Policy"]
      134 GETTABLEKS                       R9 R9 K24 ["PlayerAcceptance"]
      136 SETTABLEKS                       R9 R8 K24 ["PlayerAcceptance"]
      138 MOVE                             R9 R0
      139 LOADK                            R10 K41 ["teamCreateEnabled"]
      140 CALL                             R9 1 1
      141 SETTABLEKS                       R9 R8 K25 ["TeamCreateEnabled"]
      143 SETTABLEKS                       R5 R8 K26 ["DataSharingDefault"]
      145 SETTABLEKS                       R6 R8 K27 ["DataSharingEnabled"]
      147 RETURN                           R8 1

PROTO_16:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+20]
        3 GETIMPORT                        R2 K2 [utf8.len]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMPIFNOTEQKNIL                  R1 ; [+7]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K5 [{["name"] = "NameInvalidString"}]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 3
       18 LOADK                            R4 K3 ["name"]
       19 MOVE                             R5 R0
       20 CALL                             R3 2 -1
       21 CALL                             R2 -1 0
       22 JUMP                             ; [+11]
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R3 3
       25 LOADK                            R4 K3 ["name"]
       26 MOVE                             R5 R0
       27 CALL                             R3 2 -1
       28 CALL                             R2 -1 0
       29 GETIMPORT                        R2 K2 [utf8.len]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 GETIMPORT                        R2 K8 [string.gsub]
       36 MOVE                             R3 R0
       37 LOADK                            R4 K9 [" "]
       38 LOADK                            R5 K10 [""]
       39 CALL                             R2 3 2
       40 JUMPIFEQKN                       R1 K11 [0] ; [+8]
       42 FASTCALL1                        STRING_LEN R2 ; [+3]
       43 MOVE                             R5 R2
       44 GETIMPORT                        R4 K12 [string.len]
       46 CALL                             R4 1 1
       47 JUMPIFNOTEQKN                    R4 K11 [0] ; [+7]
       49 GETUPVAL                         R4 1
       50 GETUPVAL                         R5 2
       51 DUPTABLE                         R6 K14 [{["name"] = "NameEmpty"}]
       52 CALL                             R5 1 -1
       53 CALL                             R4 -1 0
       54 RETURN                           R0 0
       55 LOADN                            R4 50
       56 JUMPIFNOTLT                      R4 R1 ; [+6]
       58 GETUPVAL                         R4 1
       59 GETUPVAL                         R5 2
       60 DUPTABLE                         R6 K16 [{["name"] = "NameTooLong"}]
       61 CALL                             R5 1 -1
       62 CALL                             R4 -1 0
       63 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+20]
        3 GETIMPORT                        R2 K2 [utf8.len]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMPIFNOTEQKNIL                  R1 ; [+7]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K5 [{["description"] = "DescriptionInvalidString"}]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 3
       18 LOADK                            R4 K3 ["description"]
       19 MOVE                             R5 R0
       20 CALL                             R3 2 -1
       21 CALL                             R2 -1 0
       22 JUMP                             ; [+11]
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R3 3
       25 LOADK                            R4 K3 ["description"]
       26 MOVE                             R5 R0
       27 CALL                             R3 2 -1
       28 CALL                             R2 -1 0
       29 GETIMPORT                        R2 K2 [utf8.len]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 LOADN                            R2 1000
       35 JUMPIFNOTLT                      R2 R1 ; [+6]
       37 GETUPVAL                         R2 1
       38 GETUPVAL                         R3 2
       39 DUPTABLE                         R4 K7 [{["description"] = "DescriptionTooLong"}]
       40 CALL                             R3 1 -1
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["playableDevices"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETIMPORT                        R1 K2 [pairs]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 3
       10 FORGPREP_NEXT                    R1
       11 JUMPIFNOT                        R5 ; [+1]
       12 RETURN                           R0 0
       13 FORGLOOP                         R1 2 ; [-3]
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["teamCreateEnabled"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["dataSharingEnabled"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R2 K13 [{"CreatorChanged", "GenreChanged", "NameChanged", "DescriptionChanged", "DevicesChanged", "OptInLocationsChanged", "IsFriendsOnlyChanged", "IsActiveChanged", "AudiencesChanged", "GetPlayerAcceptances", "TeamCreateEnabledChanged", "DataSharingEnabledChanged", "DispatchSetSelectedGroup"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K14 ["creatorId"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["CreatorChanged"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K15 ["genre"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["GenreChanged"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R3 R2 K2 ["NameChanged"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R3 R2 K3 ["DescriptionChanged"]
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R3 R2 K4 ["DevicesChanged"]
       30 NEWCLOSURE                       R3 P3
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R3 R2 K5 ["OptInLocationsChanged"]
       37 GETUPVAL                         R4 5
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+2]
       40 LOADNIL                          R3
       41 JUMP                             ; [+3]
       42 MOVE                             R3 R0
       43 LOADK                            R4 K16 ["isFriendsOnly"]
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R2 K6 ["IsFriendsOnlyChanged"]
       47 GETUPVAL                         R4 5
       48 CALL                             R4 0 1
       49 JUMPIFNOT                        R4 ; [+2]
       50 LOADNIL                          R3
       51 JUMP                             ; [+3]
       52 MOVE                             R3 R0
       53 LOADK                            R4 K17 ["isActive"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R2 K7 ["IsActiveChanged"]
       57 GETUPVAL                         R4 5
       58 CALL                             R4 0 1
       59 JUMPIFNOT                        R4 ; [+4]
       60 MOVE                             R3 R0
       61 LOADK                            R4 K18 ["audiences"]
       62 CALL                             R3 1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R3
       65 SETTABLEKS                       R3 R2 K8 ["AudiencesChanged"]
       67 NEWCLOSURE                       R3 P4
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U6
       71 SETTABLEKS                       R3 R2 K9 ["GetPlayerAcceptances"]
       73 NEWCLOSURE                       R3 P5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U2
       76 SETTABLEKS                       R3 R2 K10 ["TeamCreateEnabledChanged"]
       78 NEWCLOSURE                       R3 P6
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U2
       81 SETTABLEKS                       R3 R2 K11 ["DataSharingEnabledChanged"]
       83 NEWCLOSURE                       R3 P7
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U7
       86 SETTABLEKS                       R3 R2 K12 ["DispatchSetSelectedGroup"]
       88 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["Content"], ["AddLayout"] = True, ["IsPublish"]}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Content"]
        8 GETTABLEKS                       R4 R0 K4 ["IsPublish"]
       10 SETTABLEKS                       R4 R3 K4 ["IsPublish"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LuobuDevPublishAnalyticsHundredthsPercentage"]
        4 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["TeamCreateLink"]
       10 NAMECALL                         R1 R1 K5 ["GetFastString"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["StudioGenreOverhaulExplainationLink"]
       16 NAMECALL                         R2 R2 K5 ["GetFastString"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["CU1320ExperienceGenre"]
       22 NAMECALL                         R3 R3 K8 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K9 ["COLLAB6850FixTextInputCrash"]
       28 NAMECALL                         R4 R4 K8 ["GetFastFlag"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K10 ["COLLAB9041NewTeamCreateDisabled"]
       34 NAMECALL                         R5 R5 K8 ["GetFastFlag"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K12 [script]
       39 GETTABLEKS                       R6 R6 K13 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["Parent"]
       45 GETIMPORT                        R7 K15 [require]
       47 GETTABLEKS                       R8 R6 K16 ["Packages"]
       49 GETTABLEKS                       R8 R8 K17 ["Roact"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K15 [require]
       54 GETTABLEKS                       R9 R6 K16 ["Packages"]
       56 GETTABLEKS                       R9 R9 K18 ["Cryo"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K15 [require]
       61 GETTABLEKS                       R10 R6 K16 ["Packages"]
       63 GETTABLEKS                       R10 R10 K19 ["Framework"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R9 K20 ["UI"]
       68 GETTABLEKS                       R11 R10 K21 ["HoverArea"]
       70 GETTABLEKS                       R12 R10 K22 ["LinkText"]
       72 GETTABLEKS                       R13 R10 K23 ["SelectInput"]
       74 GETTABLEKS                       R14 R9 K20 ["UI"]
       76 GETTABLEKS                       R14 R14 K24 ["Separator"]
       78 GETTABLEKS                       R15 R10 K25 ["Image"]
       80 GETTABLEKS                       R16 R10 K26 ["StyledDialog"]
       82 GETTABLEKS                       R17 R10 K27 ["TextLabel"]
       84 GETTABLEKS                       R18 R10 K28 ["TextInput"]
       86 GETTABLEKS                       R19 R10 K29 ["TextWithInlineLink"]
       88 GETTABLEKS                       R20 R10 K30 ["Tooltip"]
       90 GETTABLEKS                       R21 R10 K31 ["TitledFrame"]
       92 GETTABLEKS                       R22 R9 K32 ["Dash"]
       94 GETIMPORT                        R23 K15 [require]
       96 GETTABLEKS                       R24 R6 K33 ["Src"]
       98 GETTABLEKS                       R24 R24 K34 ["Components"]
      100 GETTABLEKS                       R24 R24 K35 ["TeachingCallout"]
      102 CALL                             R23 1 1
      103 GETIMPORT                        R24 K15 [require]
      105 GETTABLEKS                       R25 R6 K33 ["Src"]
      107 GETTABLEKS                       R25 R25 K34 ["Components"]
      109 GETTABLEKS                       R25 R25 K36 ["Header"]
      111 CALL                             R24 1 1
      112 GETIMPORT                        R25 K15 [require]
      114 GETTABLEKS                       R26 R6 K33 ["Src"]
      116 GETTABLEKS                       R26 R26 K34 ["Components"]
      118 GETTABLEKS                       R26 R26 K37 ["PlatformSelect"]
      120 CALL                             R25 1 1
      121 GETIMPORT                        R26 K15 [require]
      123 GETTABLEKS                       R27 R6 K33 ["Src"]
      125 GETTABLEKS                       R27 R27 K34 ["Components"]
      127 GETTABLEKS                       R27 R27 K38 ["CheckBoxSet"]
      129 CALL                             R26 1 1
      130 GETIMPORT                        R27 K15 [require]
      132 GETTABLEKS                       R28 R6 K33 ["Src"]
      134 GETTABLEKS                       R28 R28 K34 ["Components"]
      136 GETTABLEKS                       R28 R28 K39 ["ToggleButtonWithTitle"]
      138 CALL                             R27 1 1
      139 GETIMPORT                        R28 K15 [require]
      141 GETTABLEKS                       R29 R6 K33 ["Src"]
      143 GETTABLEKS                       R29 R29 K40 ["Thunks"]
      145 GETTABLEKS                       R29 R29 K41 ["GetPlayerAcceptances"]
      147 CALL                             R28 1 1
      148 GETIMPORT                        R29 K15 [require]
      150 GETTABLEKS                       R30 R6 K33 ["Src"]
      152 GETTABLEKS                       R30 R30 K42 ["Actions"]
      154 GETTABLEKS                       R30 R30 K43 ["AddChange"]
      156 CALL                             R29 1 1
      157 GETIMPORT                        R30 K15 [require]
      159 GETTABLEKS                       R31 R6 K33 ["Src"]
      161 GETTABLEKS                       R31 R31 K42 ["Actions"]
      163 GETTABLEKS                       R31 R31 K44 ["AddErrors"]
      165 CALL                             R30 1 1
      166 GETIMPORT                        R31 K15 [require]
      168 GETTABLEKS                       R32 R6 K33 ["Src"]
      170 GETTABLEKS                       R32 R32 K42 ["Actions"]
      172 GETTABLEKS                       R32 R32 K45 ["SetSelectedGroup"]
      174 CALL                             R31 1 1
      175 GETIMPORT                        R32 K15 [require]
      177 GETTABLEKS                       R33 R6 K33 ["Src"]
      179 GETTABLEKS                       R33 R33 K46 ["Resources"]
      181 GETTABLEKS                       R33 R33 K47 ["Constants"]
      183 CALL                             R32 1 1
      184 GETIMPORT                        R33 K15 [require]
      186 GETTABLEKS                       R34 R6 K33 ["Src"]
      188 GETTABLEKS                       R34 R34 K34 ["Components"]
      190 GETTABLEKS                       R34 R34 K48 ["createMenuPage"]
      192 CALL                             R33 1 1
      193 GETIMPORT                        R34 K1 [game]
      195 LOADK                            R36 K49 ["GuiService"]
      196 NAMECALL                         R34 R34 K50 ["GetService"]
      198 CALL                             R34 2 1
      199 GETIMPORT                        R35 K15 [require]
      201 GETTABLEKS                       R36 R6 K33 ["Src"]
      203 GETTABLEKS                       R36 R36 K51 ["Util"]
      205 GETTABLEKS                       R36 R36 K52 ["PublishPlaceAsUtilities"]
      207 CALL                             R35 1 1
      208 GETTABLEKS                       R35 R35 K53 ["shouldShowDevPublishLocations"]
      210 GETIMPORT                        R36 K15 [require]
      212 GETTABLEKS                       R37 R6 K33 ["Src"]
      214 GETTABLEKS                       R37 R37 K51 ["Util"]
      216 GETTABLEKS                       R37 R37 K54 ["AudienceUtils"]
      218 CALL                             R36 1 1
      219 GETTABLEKS                       R36 R36 K55 ["audiencesAreEditorsOnly"]
      221 GETIMPORT                        R37 K15 [require]
      223 GETTABLEKS                       R38 R6 K33 ["Src"]
      225 GETTABLEKS                       R38 R38 K56 ["Flags"]
      227 GETTABLEKS                       R38 R38 K57 ["getFFlagPublishPlaceAsAudiencesReplacement"]
      229 CALL                             R37 1 1
      230 GETIMPORT                        R38 K15 [require]
      232 GETTABLEKS                       R39 R6 K33 ["Src"]
      234 GETTABLEKS                       R39 R39 K51 ["Util"]
      236 GETTABLEKS                       R39 R39 K52 ["PublishPlaceAsUtilities"]
      238 CALL                             R38 1 1
      239 GETTABLEKS                       R38 R38 K58 ["getOptInLocationsRequirementsLink"]
      241 GETIMPORT                        R39 K15 [require]
      243 GETTABLEKS                       R40 R6 K33 ["Src"]
      245 GETTABLEKS                       R40 R40 K51 ["Util"]
      247 GETTABLEKS                       R40 R40 K52 ["PublishPlaceAsUtilities"]
      249 CALL                             R39 1 1
      250 GETTABLEKS                       R39 R39 K59 ["sendAnalyticsToKibana"]
      252 GETIMPORT                        R40 K15 [require]
      254 GETTABLEKS                       R41 R6 K33 ["Src"]
      256 GETTABLEKS                       R41 R41 K51 ["Util"]
      258 GETTABLEKS                       R41 R41 K52 ["PublishPlaceAsUtilities"]
      260 CALL                             R40 1 1
      261 GETTABLEKS                       R40 R40 K60 ["getPlayerAppDownloadLink"]
      263 GETIMPORT                        R41 K15 [require]
      265 GETTABLEKS                       R42 R6 K33 ["Src"]
      267 GETTABLEKS                       R42 R42 K51 ["Util"]
      269 GETTABLEKS                       R42 R42 K52 ["PublishPlaceAsUtilities"]
      271 CALL                             R41 1 1
      272 GETTABLEKS                       R41 R41 K61 ["calculateTextSize"]
      274 GETIMPORT                        R42 K15 [require]
      276 GETTABLEKS                       R43 R6 K33 ["Src"]
      278 GETTABLEKS                       R43 R43 K51 ["Util"]
      280 GETTABLEKS                       R43 R43 K62 ["KeyProvider"]
      282 CALL                             R42 1 1
      283 GETTABLEKS                       R43 R42 K63 ["getOptInLocationsKeyName"]
      285 CALL                             R43 0 1
      286 GETTABLEKS                       R44 R42 K64 ["getChinaKeyName"]
      288 CALL                             R44 0 1
      289 GETTABLEKS                       R45 R42 K65 ["getLuobuStudioDevPublishKeyName"]
      291 CALL                             R45 0 1
      292 GETTABLEKS                       R46 R42 K66 ["getCheckboxToggleKeyName"]
      294 CALL                             R46 0 1
      295 GETTABLEKS                       R47 R42 K67 ["getSelectedKeyName"]
      297 CALL                             R47 0 1
      298 GETTABLEKS                       R48 R42 K68 ["getTermsOfUseDialogKeyName"]
      300 CALL                             R48 0 1
      301 GETTABLEKS                       R49 R42 K69 ["getButtonClickedKeyName"]
      303 CALL                             R49 0 1
      304 GETTABLEKS                       R50 R9 K51 ["Util"]
      306 GETTABLEKS                       R50 R50 K70 ["LayoutOrderIterator"]
      308 GETIMPORT                        R51 K15 [require]
      310 GETTABLEKS                       R52 R6 K33 ["Src"]
      312 GETTABLEKS                       R52 R52 K34 ["Components"]
      314 GETTABLEKS                       R52 R52 K71 ["DataSharingToggle"]
      316 CALL                             R51 1 1
      317 LOADB                            R52 0
      318 NEWCLOSURE                       R53 P0
      319 CAPTURE                          VAL R8
      320 CAPTURE                          VAL R32
      321 CAPTURE                          REF R52
      322 CAPTURE                          VAL R50
      323 CAPTURE                          VAL R41
      324 CAPTURE                          VAL R43
      325 CAPTURE                          VAL R7
      326 CAPTURE                          VAL R24
      327 CAPTURE                          VAL R21
      328 CAPTURE                          VAL R18
      329 CAPTURE                          VAL R14
      330 CAPTURE                          VAL R13
      331 CAPTURE                          VAL R3
      332 CAPTURE                          VAL R19
      333 CAPTURE                          VAL R34
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R22
      336 CAPTURE                          VAL R25
      337 CAPTURE                          VAL R27
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R5
      340 CAPTURE                          VAL R23
      341 CAPTURE                          VAL R51
      342 CAPTURE                          VAL R35
      343 CAPTURE                          VAL R26
      344 CAPTURE                          VAL R44
      345 CAPTURE                          VAL R17
      346 CAPTURE                          VAL R12
      347 CAPTURE                          VAL R38
      348 CAPTURE                          VAL R47
      349 CAPTURE                          VAL R39
      350 CAPTURE                          VAL R45
      351 CAPTURE                          VAL R0
      352 CAPTURE                          VAL R46
      353 CAPTURE                          VAL R15
      354 CAPTURE                          VAL R20
      355 CAPTURE                          VAL R11
      356 CAPTURE                          VAL R16
      357 CAPTURE                          VAL R49
      358 CAPTURE                          VAL R48
      359 CAPTURE                          VAL R40
      360 DUPCLOSURE                       R54 K72 [PROTO_15]
      361 CAPTURE                          VAL R37
      362 CAPTURE                          VAL R36
      363 CAPTURE                          VAL R35
      364 CAPTURE                          VAL R43
      365 DUPCLOSURE                       R55 K73 [PROTO_24]
      366 CAPTURE                          VAL R4
      367 CAPTURE                          VAL R30
      368 CAPTURE                          VAL R29
      369 CAPTURE                          VAL R35
      370 CAPTURE                          VAL R43
      371 CAPTURE                          VAL R37
      372 CAPTURE                          VAL R28
      373 CAPTURE                          VAL R31
      374 MOVE                             R56 R33
      375 MOVE                             R57 R54
      376 MOVE                             R58 R55
      377 CALL                             R56 2 1
      378 DUPCLOSURE                       R57 K74 [PROTO_25]
      379 CAPTURE                          VAL R7
      380 CAPTURE                          VAL R56
      381 CAPTURE                          VAL R53
      382 CLOSEUPVALS                      R52
      383 RETURN                           R57 1
