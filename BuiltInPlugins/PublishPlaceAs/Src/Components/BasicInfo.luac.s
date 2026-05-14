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
        1 JUMPIF                           R1 ; [+9]
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K1 [{"showDialog"}]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K0 ["showDialog"]
        7 NAMECALL                         R1 R1 K2 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["Dictionary"]
       14 GETTABLEKS                       R1 R1 K4 ["join"]
       16 GETUPVAL                         R2 3
       17 NEWTABLE                         R3 1 0
       19 GETTABLEKS                       R4 R0 K5 ["Id"]
       21 GETTABLEKS                       R6 R0 K6 ["Selected"]
       23 JUMPIFNOT                        R6 ; [+4]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K7 ["None"]
       27 JUMPIF                           R5 ; [+3]
       28 GETTABLEKS                       R6 R0 K6 ["Selected"]
       30 NOT                              R5 R6
       31 SETTABLE                         R5 R3 R4
       32 CALL                             R1 2 1
       33 NEWTABLE                         R2 2 0
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R4 R0 K5 ["Id"]
       38 SETTABLE                         R4 R2 R3
       39 GETUPVAL                         R3 5
       40 GETTABLEKS                       R5 R0 K6 ["Selected"]
       42 NOT                              R4 R5
       43 SETTABLE                         R4 R2 R3
       44 GETUPVAL                         R3 6
       45 GETUPVAL                         R4 7
       46 GETUPVAL                         R5 8
       47 GETUPVAL                         R6 9
       48 MOVE                             R7 R2
       49 CALL                             R3 4 0
       50 GETUPVAL                         R3 10
       51 MOVE                             R4 R1
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showDialog"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showDialog"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 NEWTABLE                         R0 1 0
       10 GETUPVAL                         R1 1
       11 LOADK                            R2 K3 ["OK"]
       12 SETTABLE                         R2 R0 R1
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 5
       17 MOVE                             R5 R0
       18 CALL                             R1 4 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showDialog"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showDialog"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 NEWTABLE                         R0 1 0
       10 GETUPVAL                         R1 1
       11 LOADK                            R2 K3 ["Close"]
       12 SETTABLE                         R2 R0 R1
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 5
       17 MOVE                             R5 R0
       18 CALL                             R1 4 0
       19 RETURN                           R0 0

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
       85 DUPTABLE                         R27 K32 [{"Key", "Type", "Text"}]
       86 LOADN                            R28 0
       87 SETTABLEKS                       R28 R27 K30 ["Key"]
       89 GETUPVAL                         R28 1
       90 GETTABLEKS                       R28 R28 K33 ["SUBJECT_TYPE"]
       92 GETTABLEKS                       R28 R28 K34 ["USER"]
       94 SETTABLEKS                       R28 R27 K31 ["Type"]
       96 LOADK                            R30 K35 ["GroupDropdown"]
       97 LOADK                            R31 K36 ["Me"]
       98 NAMECALL                         R28 R3 K37 ["getText"]
      100 CALL                             R28 3 1
      101 SETTABLEKS                       R28 R27 K26 ["Text"]
      103 SETLIST                          R26 R27 1 [1]
      105 LOADN                            R27 1
      106 NEWCLOSURE                       R28 P2
      107 CAPTURE                          VAL R26
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R1
      110 JUMPIFNOT                        R15 ; [+66]
      111 GETIMPORT                        R29 K39 [next]
      113 MOVE                             R30 R15
      114 CALL                             R29 1 1
      115 JUMPIFEQKNIL                     R29 ; [+61]
      117 GETIMPORT                        R29 K25 [pairs]
      119 MOVE                             R30 R15
      120 CALL                             R29 1 3
      121 FORGPREP_NEXT                    R29
      122 DUPTABLE                         R36 K32 [{"Key", "Type", "Text"}]
      123 GETTABLEKS                       R37 R33 K40 ["groupId"]
      125 SETTABLEKS                       R37 R36 K30 ["Key"]
      127 GETUPVAL                         R37 1
      128 GETTABLEKS                       R37 R37 K33 ["SUBJECT_TYPE"]
      130 GETTABLEKS                       R37 R37 K41 ["GROUP"]
      132 SETTABLEKS                       R37 R36 K31 ["Type"]
      134 GETTABLEKS                       R37 R33 K42 ["name"]
      136 SETTABLEKS                       R37 R36 K26 ["Text"]
      138 FASTCALL2                        TABLE_INSERT R26 R36 ; [+4]
      140 MOVE                             R35 R26
      141 GETIMPORT                        R34 K29 [table.insert]
      143 CALL                             R34 2 0
      144 FORGLOOP                         R29 2 ; [-23]
      146 GETUPVAL                         R29 2
      147 JUMPIF                           R29 ; [+29]
      148 LOADB                            R29 1
      149 SETUPVAL                         R29 2
      150 GETIMPORT                        R29 K44 [ipairs]
      152 MOVE                             R30 R26
      153 CALL                             R29 1 3
      154 FORGPREP_INEXT                   R29
      155 GETIMPORT                        R34 K46 [game]
      157 GETTABLEKS                       R34 R34 K13 ["CreatorId"]
      159 GETTABLEKS                       R35 R33 K30 ["Key"]
      161 JUMPIFNOTEQ                      R34 R35 ; [+13]
      163 GETIMPORT                        R34 K46 [game]
      165 GETTABLEKS                       R34 R34 K47 ["CreatorType"]
      167 GETIMPORT                        R35 K50 [Enum.CreatorType.Group]
      169 JUMPIFNOTEQ                      R34 R35 ; [+5]
      171 MOVE                             R34 R16
      172 GETTABLEKS                       R35 R33 K30 ["Key"]
      174 CALL                             R34 1 0
      175 FORGLOOP                         R29 2 [inext] ; [-21]
      177 NEWTABLE                         R29 0 0
      179 GETIMPORT                        R30 K44 [ipairs]
      181 MOVE                             R31 R26
      182 CALL                             R30 1 3
      183 FORGPREP_INEXT                   R30
      184 GETTABLEKS                       R37 R34 K26 ["Text"]
      186 FASTCALL2                        TABLE_INSERT R29 R37 ; [+4]
      188 MOVE                             R36 R29
      189 GETIMPORT                        R35 K29 [table.insert]
      191 CALL                             R35 2 0
      192 GETTABLEKS                       R35 R34 K30 ["Key"]
      194 JUMPIFNOTEQ                      R14 R35 ; [+2]
      196 MOVE                             R27 R33
      197 FORGLOOP                         R30 2 [inext] ; [-14]
      199 GETIMPORT                        R30 K53 [utf8.len]
      201 MOVE                             R31 R11
      202 CALL                             R30 1 1
      203 GETIMPORT                        R31 K53 [utf8.len]
      205 MOVE                             R32 R4
      206 CALL                             R31 1 1
      207 GETUPVAL                         R32 3
      208 GETTABLEKS                       R32 R32 K54 ["new"]
      210 CALL                             R32 0 1
      211 GETUPVAL                         R33 4
      212 GETUPVAL                         R36 5
      213 LOADK                            R37 K55 ["RequirementsLinkText"]
      214 NAMECALL                         R34 R3 K37 ["getText"]
      216 CALL                             R34 3 1
      217 LOADN                            R35 14
      218 LOADK                            R36 K56 ["SourceSans"]
      219 CALL                             R33 3 1
      220 DUPTABLE                         R34 K64 [{"Header", "Name", "Description", "Separator1", "Creator", "Separator2", "Genre", "Separator4", "Devices", "Separator3", "EnableTeamCreate"}]
      221 GETUPVAL                         R35 6
      222 GETTABLEKS                       R35 R35 K65 ["createElement"]
      224 GETUPVAL                         R36 7
      225 DUPTABLE                         R37 K68 [{"Title", "LayoutOrder"}]
      226 LOADK                            R40 K69 ["MenuItem"]
      227 LOADK                            R41 K70 ["BasicInfo"]
      228 NAMECALL                         R38 R3 K37 ["getText"]
      230 CALL                             R38 3 1
      231 SETTABLEKS                       R38 R37 K66 ["Title"]
      233 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      235 CALL                             R38 1 1
      236 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      238 CALL                             R35 2 1
      239 SETTABLEKS                       R35 R34 K57 ["Header"]
      241 GETUPVAL                         R35 6
      242 GETTABLEKS                       R35 R35 K65 ["createElement"]
      244 GETUPVAL                         R36 8
      245 DUPTABLE                         R37 K72 [{"LayoutOrder", "Title"}]
      246 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      248 CALL                             R38 1 1
      249 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      251 LOADK                            R40 K73 ["PageTitle"]
      252 LOADK                            R41 K10 ["Name"]
      253 NAMECALL                         R38 R3 K37 ["getText"]
      255 CALL                             R38 3 1
      256 SETTABLEKS                       R38 R37 K66 ["Title"]
      258 DUPTABLE                         R38 K75 [{"TextBox"}]
      259 GETUPVAL                         R39 6
      260 GETTABLEKS                       R39 R39 K65 ["createElement"]
      262 GETUPVAL                         R40 9
      263 DUPTABLE                         R41 K79 [{"ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      264 MOVE                             R42 R13
      265 JUMPIFNOT                        R42 ; [+19]
      266 LOADK                            R44 K80 ["Error"]
      267 MOVE                             R45 R13
      268 NEWTABLE                         R46 0 2
      270 FASTCALL1                        TOSTRING R30 ; [+3]
      271 MOVE                             R48 R30
      272 GETIMPORT                        R47 K82 [tostring]
      274 CALL                             R47 1 1
      275 LOADN                            R49 50
      276 FASTCALL1                        TOSTRING R49 ; [+2]
      277 GETIMPORT                        R48 K82 [tostring]
      279 CALL                             R48 1 1
      280 SETLIST                          R46 R47 2 [1]
      282 NAMECALL                         R42 R3 K37 ["getText"]
      284 CALL                             R42 4 1
      285 SETTABLEKS                       R42 R41 K76 ["ErrorText"]
      287 LOADN                            R42 50
      288 SETTABLEKS                       R42 R41 K77 ["MaxLength"]
      290 SETTABLEKS                       R12 R41 K78 ["OnTextChanged"]
      292 SETTABLEKS                       R11 R41 K26 ["Text"]
      294 CALL                             R39 2 1
      295 SETTABLEKS                       R39 R38 K74 ["TextBox"]
      297 CALL                             R35 3 1
      298 SETTABLEKS                       R35 R34 K10 ["Name"]
      300 GETUPVAL                         R35 6
      301 GETTABLEKS                       R35 R35 K65 ["createElement"]
      303 GETUPVAL                         R36 8
      304 DUPTABLE                         R37 K72 [{"LayoutOrder", "Title"}]
      305 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      307 CALL                             R38 1 1
      308 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      310 LOADK                            R40 K73 ["PageTitle"]
      311 LOADK                            R41 K3 ["Description"]
      312 NAMECALL                         R38 R3 K37 ["getText"]
      314 CALL                             R38 3 1
      315 SETTABLEKS                       R38 R37 K66 ["Title"]
      317 DUPTABLE                         R38 K75 [{"TextBox"}]
      318 GETUPVAL                         R39 6
      319 GETTABLEKS                       R39 R39 K65 ["createElement"]
      321 GETUPVAL                         R40 9
      322 DUPTABLE                         R41 K85 [{"ErrorText", "Height", "MaxLength", "MultiLine", "OnTextChanged", "Text"}]
      323 MOVE                             R42 R6
      324 JUMPIFNOT                        R42 ; [+19]
      325 LOADK                            R44 K80 ["Error"]
      326 MOVE                             R45 R6
      327 NEWTABLE                         R46 0 2
      329 FASTCALL1                        TOSTRING R31 ; [+3]
      330 MOVE                             R48 R31
      331 GETIMPORT                        R47 K82 [tostring]
      333 CALL                             R47 1 1
      334 LOADN                            R49 232
      335 FASTCALL1                        TOSTRING R49 ; [+2]
      336 GETIMPORT                        R48 K82 [tostring]
      338 CALL                             R48 1 1
      339 SETLIST                          R46 R47 2 [1]
      341 NAMECALL                         R42 R3 K37 ["getText"]
      343 CALL                             R42 4 1
      344 SETTABLEKS                       R42 R41 K76 ["ErrorText"]
      346 GETTABLEKS                       R42 R2 K86 ["descriptionBox"]
      348 GETTABLEKS                       R42 R42 K87 ["textBoxHeight"]
      350 SETTABLEKS                       R42 R41 K83 ["Height"]
      352 LOADN                            R42 232
      353 SETTABLEKS                       R42 R41 K77 ["MaxLength"]
      355 LOADB                            R42 1
      356 SETTABLEKS                       R42 R41 K84 ["MultiLine"]
      358 SETTABLEKS                       R5 R41 K78 ["OnTextChanged"]
      360 SETTABLEKS                       R4 R41 K26 ["Text"]
      362 CALL                             R39 2 1
      363 SETTABLEKS                       R39 R38 K74 ["TextBox"]
      365 CALL                             R35 3 1
      366 SETTABLEKS                       R35 R34 K3 ["Description"]
      368 GETUPVAL                         R35 6
      369 GETTABLEKS                       R35 R35 K65 ["createElement"]
      371 GETUPVAL                         R36 10
      372 DUPTABLE                         R37 K88 [{"LayoutOrder"}]
      373 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      375 CALL                             R38 1 1
      376 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      378 CALL                             R35 2 1
      379 SETTABLEKS                       R35 R34 K58 ["Separator1"]
      381 GETUPVAL                         R35 6
      382 GETTABLEKS                       R35 R35 K65 ["createElement"]
      384 GETUPVAL                         R36 8
      385 DUPTABLE                         R37 K72 [{"LayoutOrder", "Title"}]
      386 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      388 CALL                             R38 1 1
      389 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      391 LOADK                            R40 K73 ["PageTitle"]
      392 LOADK                            R41 K59 ["Creator"]
      393 NAMECALL                         R38 R3 K37 ["getText"]
      395 CALL                             R38 3 1
      396 SETTABLEKS                       R38 R37 K66 ["Title"]
      398 DUPTABLE                         R38 K90 [{"Selector"}]
      399 GETUPVAL                         R39 6
      400 GETTABLEKS                       R39 R39 K65 ["createElement"]
      402 GETUPVAL                         R40 11
      403 DUPTABLE                         R41 K95 [{"Items", "SelectedIndex", "OnItemActivated", "Width"}]
      404 SETTABLEKS                       R29 R41 K91 ["Items"]
      406 SETTABLEKS                       R27 R41 K92 ["SelectedIndex"]
      408 SETTABLEKS                       R28 R41 K93 ["OnItemActivated"]
      410 GETTABLEKS                       R42 R2 K96 ["selectInput"]
      412 GETTABLEKS                       R42 R42 K97 ["width"]
      414 GETTABLEKS                       R42 R42 K98 ["creator"]
      416 SETTABLEKS                       R42 R41 K94 ["Width"]
      418 CALL                             R39 2 1
      419 SETTABLEKS                       R39 R38 K89 ["Selector"]
      421 CALL                             R35 3 1
      422 SETTABLEKS                       R35 R34 K59 ["Creator"]
      424 GETUPVAL                         R35 6
      425 GETTABLEKS                       R35 R35 K65 ["createElement"]
      427 GETUPVAL                         R36 10
      428 DUPTABLE                         R37 K88 [{"LayoutOrder"}]
      429 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      431 CALL                             R38 1 1
      432 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      434 CALL                             R35 2 1
      435 SETTABLEKS                       R35 R34 K60 ["Separator2"]
      437 GETUPVAL                         R36 12
      438 JUMPIFNOT                        R36 ; [+2]
      439 LOADNIL                          R35
      440 JUMP                             ; [+80]
      441 GETUPVAL                         R35 6
      442 GETTABLEKS                       R35 R35 K65 ["createElement"]
      444 GETUPVAL                         R36 8
      445 DUPTABLE                         R37 K72 [{"LayoutOrder", "Title"}]
      446 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      448 CALL                             R38 1 1
      449 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      451 LOADK                            R40 K73 ["PageTitle"]
      452 LOADK                            R41 K8 ["Genre"]
      453 NAMECALL                         R38 R3 K37 ["getText"]
      455 CALL                             R38 3 1
      456 SETTABLEKS                       R38 R37 K66 ["Title"]
      458 DUPTABLE                         R38 K100 [{"Body"}]
      459 GETUPVAL                         R39 6
      460 GETTABLEKS                       R39 R39 K65 ["createElement"]
      462 GETUPVAL                         R40 13
      463 DUPTABLE                         R41 K108 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps", "TextWrapped", "HorizontalAlignment"}]
      464 DUPCLOSURE                       R42 K109 [PROTO_3]
      465 CAPTURE                          UPVAL U14
      466 CAPTURE                          UPVAL U15
      467 SETTABLEKS                       R42 R41 K101 ["OnLinkClicked"]
      469 LOADK                            R44 K110 ["General"]
      470 LOADK                            R45 K111 ["GenreReplacementMessage"]
      471 NAMECALL                         R42 R3 K37 ["getText"]
      473 CALL                             R42 3 1
      474 SETTABLEKS                       R42 R41 K26 ["Text"]
      476 LOADK                            R44 K110 ["General"]
      477 LOADK                            R45 K112 ["GenreOverhaulMessageLink"]
      478 NAMECALL                         R42 R3 K37 ["getText"]
      480 CALL                             R42 3 1
      481 SETTABLEKS                       R42 R41 K102 ["LinkText"]
      483 LOADK                            R42 K113 ["[link]"]
      484 SETTABLEKS                       R42 R41 K103 ["LinkPlaceholder"]
      486 GETTABLEKS                       R42 R2 K114 ["textWithInlineLink"]
      488 GETTABLEKS                       R42 R42 K115 ["maxWidth"]
      490 SETTABLEKS                       R42 R41 K104 ["MaxWidth"]
      492 GETUPVAL                         R42 16
      493 GETTABLEKS                       R42 R42 K116 ["join"]
      495 GETTABLEKS                       R43 R2 K117 ["fontStyle"]
      497 GETTABLEKS                       R43 R43 K118 ["Subtext"]
      499 DUPTABLE                         R44 K121 [{"BackgroundTransparency", "TextXAlignment"}]
      500 LOADN                            R45 1
      501 SETTABLEKS                       R45 R44 K119 ["BackgroundTransparency"]
      503 GETIMPORT                        R45 K123 [Enum.TextXAlignment.Left]
      505 SETTABLEKS                       R45 R44 K120 ["TextXAlignment"]
      507 CALL                             R42 2 1
      508 SETTABLEKS                       R42 R41 K105 ["TextProps"]
      510 LOADB                            R42 1
      511 SETTABLEKS                       R42 R41 K106 ["TextWrapped"]
      513 GETIMPORT                        R42 K124 [Enum.HorizontalAlignment.Left]
      515 SETTABLEKS                       R42 R41 K107 ["HorizontalAlignment"]
      517 CALL                             R39 2 1
      518 SETTABLEKS                       R39 R38 K99 ["Body"]
      520 CALL                             R35 3 1
      521 SETTABLEKS                       R35 R34 K8 ["Genre"]
      523 GETUPVAL                         R36 12
      524 JUMPIFNOT                        R36 ; [+2]
      525 LOADNIL                          R35
      526 JUMP                             ; [+11]
      527 GETUPVAL                         R35 6
      528 GETTABLEKS                       R35 R35 K65 ["createElement"]
      530 GETUPVAL                         R36 10
      531 DUPTABLE                         R37 K88 [{"LayoutOrder"}]
      532 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      534 CALL                             R38 1 1
      535 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      537 CALL                             R35 2 1
      538 SETTABLEKS                       R35 R34 K61 ["Separator4"]
      540 GETUPVAL                         R35 6
      541 GETTABLEKS                       R35 R35 K65 ["createElement"]
      543 GETUPVAL                         R36 17
      544 DUPTABLE                         R37 K126 [{"LayoutOrder", "Devices", "DeviceSelected"}]
      545 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      547 CALL                             R38 1 1
      548 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      550 SETTABLEKS                       R7 R37 K6 ["Devices"]
      552 NEWCLOSURE                       R38 P4
      553 CAPTURE                          UPVAL U0
      554 CAPTURE                          VAL R7
      555 CAPTURE                          VAL R8
      556 SETTABLEKS                       R38 R37 K125 ["DeviceSelected"]
      558 CALL                             R35 2 1
      559 SETTABLEKS                       R35 R34 K6 ["Devices"]
      561 GETUPVAL                         R35 6
      562 GETTABLEKS                       R35 R35 K65 ["createElement"]
      564 GETUPVAL                         R36 10
      565 DUPTABLE                         R37 K88 [{"LayoutOrder"}]
      566 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      568 CALL                             R38 1 1
      569 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      571 CALL                             R35 2 1
      572 SETTABLEKS                       R35 R34 K62 ["Separator3"]
      574 GETUPVAL                         R35 6
      575 GETTABLEKS                       R35 R35 K65 ["createElement"]
      577 GETUPVAL                         R36 18
      578 DUPTABLE                         R37 K131 [{"Title", "LayoutOrder", "Disabled", "Selected", "LinkProps", "OnClick"}]
      579 LOADK                            R40 K132 ["TeamCreate"]
      580 LOADK                            R41 K66 ["Title"]
      581 NAMECALL                         R38 R3 K37 ["getText"]
      583 CALL                             R38 3 1
      584 SETTABLEKS                       R38 R37 K66 ["Title"]
      586 NAMECALL                         R38 R32 K71 ["getNextOrder"]
      588 CALL                             R38 1 1
      589 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      591 LOADB                            R38 0
      592 SETTABLEKS                       R38 R37 K127 ["Disabled"]
      594 GETTABLEKS                       R38 R1 K133 ["TeamCreateEnabled"]
      596 SETTABLEKS                       R38 R37 K128 ["Selected"]
      598 DUPTABLE                         R38 K134 [{"Text", "LinkText", "OnLinkClicked"}]
      599 LOADK                            R41 K132 ["TeamCreate"]
      600 LOADK                            R42 K135 ["LinkDescription"]
      601 NAMECALL                         R39 R3 K37 ["getText"]
      603 CALL                             R39 3 1
      604 SETTABLEKS                       R39 R38 K26 ["Text"]
      606 LOADK                            R41 K132 ["TeamCreate"]
      607 LOADK                            R42 K102 ["LinkText"]
      608 NAMECALL                         R39 R3 K37 ["getText"]
      610 CALL                             R39 3 1
      611 SETTABLEKS                       R39 R38 K102 ["LinkText"]
      613 DUPCLOSURE                       R39 K136 [PROTO_5]
      614 CAPTURE                          UPVAL U14
      615 CAPTURE                          UPVAL U19
      616 SETTABLEKS                       R39 R38 K101 ["OnLinkClicked"]
      618 SETTABLEKS                       R38 R37 K129 ["LinkProps"]
      620 NEWCLOSURE                       R38 P6
      621 CAPTURE                          VAL R1
      622 SETTABLEKS                       R38 R37 K130 ["OnClick"]
      624 DUPTABLE                         R38 K138 [{"TeachingCallout"}]
      625 GETUPVAL                         R40 20
      626 JUMPIF                           R40 ; [+13]
      627 GETUPVAL                         R39 6
      628 GETTABLEKS                       R39 R39 K65 ["createElement"]
      630 GETUPVAL                         R40 21
      631 DUPTABLE                         R41 K141 [{"DefinitionId", "LocationId"}]
      632 LOADK                            R42 K142 ["PublishPlaceAsTeamCreateToggleCallout"]
      633 SETTABLEKS                       R42 R41 K139 ["DefinitionId"]
      635 LOADK                            R42 K143 ["TeamCreateToggle"]
      636 SETTABLEKS                       R42 R41 K140 ["LocationId"]
      638 CALL                             R39 2 1
      639 JUMP                             ; [+1]
      640 LOADNIL                          R39
      641 SETTABLEKS                       R39 R38 K137 ["TeachingCallout"]
      643 CALL                             R35 3 1
      644 SETTABLEKS                       R35 R34 K63 ["EnableTeamCreate"]
      646 GETUPVAL                         R36 16
      647 GETTABLEKS                       R36 R36 K144 ["find"]
      649 MOVE                             R37 R21
      650 NEWCLOSURE                       R38 P7
      651 CAPTURE                          VAL R14
      652 CALL                             R36 2 1
      653 JUMPIFNOTEQKNIL                  R36 ; [+2]
      655 LOADB                            R35 0 +1
      656 LOADB                            R35 1
      657 LOADB                            R36 1
      658 JUMPIFEQKN                       R14 K145 [0] ; [+2]
      660 MOVE                             R36 R35
      661 GETUPVAL                         R37 6
      662 GETTABLEKS                       R37 R37 K65 ["createElement"]
      664 GETUPVAL                         R38 22
      665 DUPTABLE                         R39 K149 [{"DataSharingEnabled", "DataSharingDefault", "LayoutOrder", "isOwningCreator", "OnClick"}]
      666 GETTABLEKS                       R40 R1 K146 ["DataSharingEnabled"]
      668 SETTABLEKS                       R40 R39 K146 ["DataSharingEnabled"]
      670 GETTABLEKS                       R40 R1 K147 ["DataSharingDefault"]
      672 SETTABLEKS                       R40 R39 K147 ["DataSharingDefault"]
      674 NAMECALL                         R40 R32 K71 ["getNextOrder"]
      676 CALL                             R40 1 1
      677 SETTABLEKS                       R40 R39 K67 ["LayoutOrder"]
      679 SETTABLEKS                       R36 R39 K148 ["isOwningCreator"]
      681 NEWCLOSURE                       R40 P8
      682 CAPTURE                          VAL R1
      683 SETTABLEKS                       R40 R39 K130 ["OnClick"]
      685 CALL                             R37 2 1
      686 SETTABLEKS                       R37 R34 K150 ["DataSharing"]
      688 GETTABLEKS                       R37 R1 K151 ["IsPublish"]
      690 JUMPIFNOT                        R37 ; [+492]
      691 GETUPVAL                         R37 23
      692 CALL                             R37 0 1
      693 JUMPIFNOT                        R37 ; [+489]
      694 GETUPVAL                         R37 6
      695 GETTABLEKS                       R37 R37 K65 ["createElement"]
      697 GETUPVAL                         R38 10
      698 DUPTABLE                         R39 K88 [{"LayoutOrder"}]
      699 NAMECALL                         R40 R32 K71 ["getNextOrder"]
      701 CALL                             R40 1 1
      702 SETTABLEKS                       R40 R39 K67 ["LayoutOrder"]
      704 CALL                             R37 2 1
      705 SETTABLEKS                       R37 R34 K152 ["Separator5"]
      707 GETUPVAL                         R37 6
      708 GETTABLEKS                       R37 R37 K65 ["createElement"]
      710 GETUPVAL                         R38 24
      711 DUPTABLE                         R39 K158 [{"Title", "LayoutOrder", "MaxHeight", "Boxes", "Enabled", "EntryClicked", "Tooltip"}]
      712 GETUPVAL                         R42 5
      713 LOADK                            R43 K159 ["TitleOptInLocations"]
      714 NAMECALL                         R40 R3 K37 ["getText"]
      716 CALL                             R40 3 1
      717 SETTABLEKS                       R40 R39 K66 ["Title"]
      719 NAMECALL                         R40 R32 K71 ["getNextOrder"]
      721 CALL                             R40 1 1
      722 SETTABLEKS                       R40 R39 K67 ["LayoutOrder"]
      724 GETTABLEKS                       R40 R2 K160 ["optInLocations"]
      726 GETTABLEKS                       R40 R40 K161 ["height"]
      728 SETTABLEKS                       R40 R39 K153 ["MaxHeight"]
      730 NEWTABLE                         R40 0 1
      732 DUPTABLE                         R41 K164 [{"Id", "Title", "Selected", "LinkTextFrame"}]
      733 GETUPVAL                         R42 25
      734 SETTABLEKS                       R42 R41 K162 ["Id"]
      736 GETUPVAL                         R44 5
      737 GETUPVAL                         R45 25
      738 NAMECALL                         R42 R3 K37 ["getText"]
      740 CALL                             R42 3 1
      741 SETTABLEKS                       R42 R41 K66 ["Title"]
      743 JUMPIFNOT                        R17 ; [+3]
      744 GETTABLEKS                       R42 R17 K165 ["China"]
      746 JUMP                             ; [+1]
      747 LOADB                            R42 0
      748 SETTABLEKS                       R42 R41 K128 ["Selected"]
      750 GETUPVAL                         R42 6
      751 GETTABLEKS                       R42 R42 K65 ["createElement"]
      753 LOADK                            R43 K166 ["Frame"]
      754 DUPTABLE                         R44 K169 [{"BackgroundTransparency", "Size", "Position"}]
      755 LOADN                            R45 1
      756 SETTABLEKS                       R45 R44 K119 ["BackgroundTransparency"]
      758 GETIMPORT                        R45 K171 [UDim2.new]
      760 LOADN                            R46 0
      761 GETTABLEKS                       R47 R2 K172 ["requirementsLink"]
      763 GETTABLEKS                       R47 R47 K173 ["length"]
      765 LOADN                            R48 0
      766 GETTABLEKS                       R49 R2 K172 ["requirementsLink"]
      768 GETTABLEKS                       R49 R49 K161 ["height"]
      770 CALL                             R45 4 1
      771 SETTABLEKS                       R45 R44 K167 ["Size"]
      773 GETIMPORT                        R45 K171 [UDim2.new]
      775 LOADN                            R46 0
      776 LOADN                            R47 0
      777 LOADN                            R48 0
      778 GETTABLEKS                       R49 R2 K172 ["requirementsLink"]
      780 GETTABLEKS                       R49 R49 K174 ["paddingY"]
      782 CALL                             R45 4 1
      783 SETTABLEKS                       R45 R44 K168 ["Position"]
      785 DUPTABLE                         R45 K176 [{"LinkTextLabel", "LinkText"}]
      786 GETUPVAL                         R46 6
      787 GETTABLEKS                       R46 R46 K65 ["createElement"]
      789 GETUPVAL                         R47 26
      790 DUPTABLE                         R48 K179 [{"Position", "Size", "Style", "Text", "TextXAlignment", "TextYAlignment"}]
      791 GETIMPORT                        R49 K171 [UDim2.new]
      793 LOADN                            R50 0
      794 GETTABLEKS                       R51 R33 K180 ["X"]
      796 LOADN                            R52 0
      797 LOADN                            R53 0
      798 CALL                             R49 4 1
      799 SETTABLEKS                       R49 R48 K168 ["Position"]
      801 GETIMPORT                        R49 K171 [UDim2.new]
      803 LOADN                            R50 1
      804 GETTABLEKS                       R52 R33 K180 ["X"]
      806 MINUS                            R51 R52
      807 LOADN                            R52 1
      808 LOADN                            R53 0
      809 CALL                             R49 4 1
      810 SETTABLEKS                       R49 R48 K167 ["Size"]
      812 LOADK                            R49 K99 ["Body"]
      813 SETTABLEKS                       R49 R48 K177 ["Style"]
      815 GETUPVAL                         R51 5
      816 LOADK                            R52 K181 ["ChinaRequirements"]
      817 NAMECALL                         R49 R3 K37 ["getText"]
      819 CALL                             R49 3 1
      820 SETTABLEKS                       R49 R48 K26 ["Text"]
      822 GETIMPORT                        R49 K123 [Enum.TextXAlignment.Left]
      824 SETTABLEKS                       R49 R48 K120 ["TextXAlignment"]
      826 GETIMPORT                        R49 K183 [Enum.TextYAlignment.Top]
      828 SETTABLEKS                       R49 R48 K178 ["TextYAlignment"]
      830 CALL                             R46 2 1
      831 SETTABLEKS                       R46 R45 K175 ["LinkTextLabel"]
      833 GETUPVAL                         R46 6
      834 GETTABLEKS                       R46 R46 K65 ["createElement"]
      836 GETUPVAL                         R47 27
      837 DUPTABLE                         R48 K184 [{"OnClick", "Size", "Style", "Text"}]
      838 DUPCLOSURE                       R49 K185 [PROTO_9]
      839 CAPTURE                          UPVAL U28
      840 CAPTURE                          UPVAL U25
      841 CAPTURE                          UPVAL U14
      842 SETTABLEKS                       R49 R48 K130 ["OnClick"]
      844 GETIMPORT                        R49 K171 [UDim2.new]
      846 LOADN                            R50 0
      847 GETTABLEKS                       R51 R33 K180 ["X"]
      849 LOADN                            R52 0
      850 GETTABLEKS                       R53 R33 K186 ["Y"]
      852 CALL                             R49 4 1
      853 SETTABLEKS                       R49 R48 K167 ["Size"]
      855 LOADK                            R49 K99 ["Body"]
      856 SETTABLEKS                       R49 R48 K177 ["Style"]
      858 GETUPVAL                         R51 5
      859 LOADK                            R52 K55 ["RequirementsLinkText"]
      860 NAMECALL                         R49 R3 K37 ["getText"]
      862 CALL                             R49 3 1
      863 SETTABLEKS                       R49 R48 K26 ["Text"]
      865 CALL                             R46 2 1
      866 SETTABLEKS                       R46 R45 K102 ["LinkText"]
      868 CALL                             R42 3 1
      869 SETTABLEKS                       R42 R41 K163 ["LinkTextFrame"]
      871 SETLIST                          R40 R41 1 [1]
      873 SETTABLEKS                       R40 R39 K154 ["Boxes"]
      875 JUMPIFNOTEQKNIL                  R17 ; [+2]
      877 LOADB                            R40 0 +1
      878 LOADB                            R40 1
      879 SETTABLEKS                       R40 R39 K155 ["Enabled"]
      881 NEWCLOSURE                       R40 P10
      882 CAPTURE                          VAL R19
      883 CAPTURE                          VAL R0
      884 CAPTURE                          UPVAL U0
      885 CAPTURE                          VAL R17
      886 CAPTURE                          UPVAL U5
      887 CAPTURE                          UPVAL U29
      888 CAPTURE                          UPVAL U30
      889 CAPTURE                          UPVAL U31
      890 CAPTURE                          UPVAL U32
      891 CAPTURE                          UPVAL U33
      892 CAPTURE                          VAL R18
      893 SETTABLEKS                       R40 R39 K156 ["EntryClicked"]
      895 GETUPVAL                         R40 6
      896 GETTABLEKS                       R40 R40 K65 ["createElement"]
      898 GETUPVAL                         R41 34
      899 DUPTABLE                         R42 K188 [{"Size", "Position", "Style", "StyleModifier"}]
      900 GETIMPORT                        R43 K190 [UDim2.fromOffset]
      902 GETTABLEKS                       R44 R2 K191 ["tooltipIcon"]
      904 GETTABLEKS                       R44 R44 K192 ["size"]
      906 GETTABLEKS                       R45 R2 K191 ["tooltipIcon"]
      908 GETTABLEKS                       R45 R45 K192 ["size"]
      910 CALL                             R43 2 1
      911 SETTABLEKS                       R43 R42 K167 ["Size"]
      913 GETIMPORT                        R43 K171 [UDim2.new]
      915 LOADN                            R44 0
      916 LOADN                            R45 0
      917 LOADN                            R46 0
      918 GETTABLEKS                       R47 R2 K191 ["tooltipIcon"]
      920 GETTABLEKS                       R47 R47 K174 ["paddingY"]
      922 CALL                             R43 4 1
      923 SETTABLEKS                       R43 R42 K168 ["Position"]
      925 LOADK                            R43 K193 ["TooltipStyle"]
      926 SETTABLEKS                       R43 R42 K177 ["Style"]
      928 GETTABLEKS                       R43 R0 K194 ["state"]
      930 GETTABLEKS                       R43 R43 K187 ["StyleModifier"]
      932 SETTABLEKS                       R43 R42 K187 ["StyleModifier"]
      934 NEWTABLE                         R43 0 2
      936 GETUPVAL                         R44 6
      937 GETTABLEKS                       R44 R44 K65 ["createElement"]
      939 GETUPVAL                         R45 35
      940 DUPTABLE                         R46 K195 [{"Text"}]
      941 GETUPVAL                         R49 5
      942 LOADK                            R50 K157 ["Tooltip"]
      943 NAMECALL                         R47 R3 K37 ["getText"]
      945 CALL                             R47 3 1
      946 SETTABLEKS                       R47 R46 K26 ["Text"]
      948 CALL                             R44 2 1
      949 GETUPVAL                         R45 6
      950 GETTABLEKS                       R45 R45 K65 ["createElement"]
      952 GETUPVAL                         R46 36
      953 DUPTABLE                         R47 K199 [{"Cursor", "MouseEnter", "MouseLeave"}]
      954 LOADK                            R48 K200 ["PointingHand"]
      955 SETTABLEKS                       R48 R47 K196 ["Cursor"]
      957 GETTABLEKS                       R48 R0 K201 ["onMouseEnter"]
      959 SETTABLEKS                       R48 R47 K197 ["MouseEnter"]
      961 GETTABLEKS                       R48 R0 K202 ["onMouseLeave"]
      963 SETTABLEKS                       R48 R47 K198 ["MouseLeave"]
      965 CALL                             R45 2 -1
      966 SETLIST                          R43 R44 -1 [1]
      968 CALL                             R40 3 1
      969 SETTABLEKS                       R40 R39 K157 ["Tooltip"]
      971 CALL                             R37 2 1
      972 SETTABLEKS                       R37 R34 K16 ["OptInLocations"]
      974 GETUPVAL                         R37 6
      975 GETTABLEKS                       R37 R37 K65 ["createElement"]
      977 GETUPVAL                         R38 37
      978 DUPTABLE                         R39 K209 [{"Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose", "ButtonHorizontalAlignment"}]
      979 GETTABLEKS                       R40 R0 K194 ["state"]
      981 GETTABLEKS                       R40 R40 K210 ["showDialog"]
      983 SETTABLEKS                       R40 R39 K155 ["Enabled"]
      985 LOADB                            R40 1
      986 SETTABLEKS                       R40 R39 K203 ["Modal"]
      988 LOADK                            R40 K211 [""]
      989 SETTABLEKS                       R40 R39 K66 ["Title"]
      991 GETIMPORT                        R40 K213 [Vector2.new]
      993 GETTABLEKS                       R41 R2 K214 ["dialog"]
      995 GETTABLEKS                       R41 R41 K215 ["minSize"]
      997 GETTABLEKS                       R41 R41 K97 ["width"]
      999 GETTABLEKS                       R42 R2 K214 ["dialog"]
     1001 GETTABLEKS                       R42 R42 K215 ["minSize"]
     1003 GETTABLEKS                       R42 R42 K161 ["height"]
     1005 CALL                             R40 2 1
     1006 SETTABLEKS                       R40 R39 K204 ["MinContentSize"]
     1008 NEWTABLE                         R40 0 1
     1010 DUPTABLE                         R41 K216 [{"Key", "Text"}]
     1011 LOADK                            R42 K217 ["OK"]
     1012 SETTABLEKS                       R42 R41 K30 ["Key"]
     1014 LOADK                            R44 K110 ["General"]
     1015 LOADK                            R45 K218 ["ReplyOK"]
     1016 NAMECALL                         R42 R3 K37 ["getText"]
     1018 CALL                             R42 3 1
     1019 SETTABLEKS                       R42 R41 K26 ["Text"]
     1021 SETLIST                          R40 R41 1 [1]
     1023 SETTABLEKS                       R40 R39 K205 ["Buttons"]
     1025 NEWCLOSURE                       R40 P11
     1026 CAPTURE                          VAL R0
     1027 CAPTURE                          UPVAL U38
     1028 CAPTURE                          UPVAL U30
     1029 CAPTURE                          UPVAL U31
     1030 CAPTURE                          UPVAL U32
     1031 CAPTURE                          UPVAL U39
     1032 SETTABLEKS                       R40 R39 K206 ["OnButtonPressed"]
     1034 NEWCLOSURE                       R40 P12
     1035 CAPTURE                          VAL R0
     1036 CAPTURE                          UPVAL U38
     1037 CAPTURE                          UPVAL U30
     1038 CAPTURE                          UPVAL U31
     1039 CAPTURE                          UPVAL U32
     1040 CAPTURE                          UPVAL U39
     1041 SETTABLEKS                       R40 R39 K207 ["OnClose"]
     1043 GETIMPORT                        R40 K220 [Enum.HorizontalAlignment.Center]
     1045 SETTABLEKS                       R40 R39 K208 ["ButtonHorizontalAlignment"]
     1047 DUPTABLE                         R40 K222 [{"Layout", "Header", "Body"}]
     1048 GETUPVAL                         R41 6
     1049 GETTABLEKS                       R41 R41 K65 ["createElement"]
     1051 LOADK                            R42 K223 ["UIListLayout"]
     1052 DUPTABLE                         R43 K227 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder"}]
     1053 GETIMPORT                        R44 K229 [Enum.FillDirection.Vertical]
     1055 SETTABLEKS                       R44 R43 K224 ["FillDirection"]
     1057 GETIMPORT                        R44 K230 [Enum.VerticalAlignment.Center]
     1059 SETTABLEKS                       R44 R43 K225 ["VerticalAlignment"]
     1061 GETIMPORT                        R44 K220 [Enum.HorizontalAlignment.Center]
     1063 SETTABLEKS                       R44 R43 K107 ["HorizontalAlignment"]
     1065 GETIMPORT                        R44 K231 [Enum.SortOrder.LayoutOrder]
     1067 SETTABLEKS                       R44 R43 K226 ["SortOrder"]
     1069 CALL                             R41 2 1
     1070 SETTABLEKS                       R41 R40 K221 ["Layout"]
     1072 GETUPVAL                         R41 6
     1073 GETTABLEKS                       R41 R41 K65 ["createElement"]
     1075 LOADK                            R42 K232 ["TextLabel"]
     1076 GETUPVAL                         R43 0
     1077 GETTABLEKS                       R43 R43 K233 ["Dictionary"]
     1079 GETTABLEKS                       R43 R43 K116 ["join"]
     1081 GETTABLEKS                       R44 R2 K117 ["fontStyle"]
     1083 GETTABLEKS                       R44 R44 K66 ["Title"]
     1085 DUPTABLE                         R45 K235 [{"Position", "AnchorPoint", "Size", "BackgroundTransparency", "Text", "TextWrapped"}]
     1086 GETIMPORT                        R46 K171 [UDim2.new]
     1088 LOADK                            R47 K236 [0.5]
     1089 LOADN                            R48 0
     1090 LOADN                            R49 0
     1091 LOADN                            R50 45
     1092 CALL                             R46 4 1
     1093 SETTABLEKS                       R46 R45 K168 ["Position"]
     1095 GETIMPORT                        R46 K213 [Vector2.new]
     1097 LOADK                            R47 K236 [0.5]
     1098 LOADK                            R48 K236 [0.5]
     1099 CALL                             R46 2 1
     1100 SETTABLEKS                       R46 R45 K234 ["AnchorPoint"]
     1102 GETIMPORT                        R46 K171 [UDim2.new]
     1104 LOADN                            R47 1
     1105 LOADN                            R48 0
     1106 LOADN                            R49 0
     1107 LOADN                            R50 60
     1108 CALL                             R46 4 1
     1109 SETTABLEKS                       R46 R45 K167 ["Size"]
     1111 LOADN                            R46 1
     1112 SETTABLEKS                       R46 R45 K119 ["BackgroundTransparency"]
     1114 LOADK                            R48 K110 ["General"]
     1115 LOADK                            R49 K237 ["TermsDialogHeader"]
     1116 NAMECALL                         R46 R3 K37 ["getText"]
     1118 CALL                             R46 3 1
     1119 SETTABLEKS                       R46 R45 K26 ["Text"]
     1121 LOADB                            R46 1
     1122 SETTABLEKS                       R46 R45 K106 ["TextWrapped"]
     1124 CALL                             R43 2 -1
     1125 CALL                             R41 -1 1
     1126 SETTABLEKS                       R41 R40 K57 ["Header"]
     1128 GETUPVAL                         R41 6
     1129 GETTABLEKS                       R41 R41 K65 ["createElement"]
     1131 GETUPVAL                         R42 13
     1132 DUPTABLE                         R43 K238 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps"}]
     1133 DUPCLOSURE                       R44 K239 [PROTO_13]
     1134 CAPTURE                          UPVAL U40
     1135 CAPTURE                          UPVAL U14
     1136 SETTABLEKS                       R44 R43 K101 ["OnLinkClicked"]
     1138 LOADK                            R46 K110 ["General"]
     1139 LOADK                            R47 K240 ["TermsDialogBody"]
     1140 NAMECALL                         R44 R3 K37 ["getText"]
     1142 CALL                             R44 3 1
     1143 SETTABLEKS                       R44 R43 K26 ["Text"]
     1145 LOADK                            R46 K110 ["General"]
     1146 LOADK                            R47 K241 ["TermsDialogBodyLink"]
     1147 NAMECALL                         R44 R3 K37 ["getText"]
     1149 CALL                             R44 3 1
     1150 SETTABLEKS                       R44 R43 K102 ["LinkText"]
     1152 LOADK                            R44 K113 ["[link]"]
     1153 SETTABLEKS                       R44 R43 K103 ["LinkPlaceholder"]
     1155 GETTABLEKS                       R44 R2 K114 ["textWithInlineLink"]
     1157 GETTABLEKS                       R44 R44 K115 ["maxWidth"]
     1159 SETTABLEKS                       R44 R43 K104 ["MaxWidth"]
     1161 GETUPVAL                         R44 0
     1162 GETTABLEKS                       R44 R44 K233 ["Dictionary"]
     1164 GETTABLEKS                       R44 R44 K116 ["join"]
     1166 GETTABLEKS                       R45 R2 K117 ["fontStyle"]
     1168 GETTABLEKS                       R45 R45 K242 ["Normal"]
     1170 DUPTABLE                         R46 K243 [{"BackgroundTransparency"}]
     1171 LOADN                            R47 1
     1172 SETTABLEKS                       R47 R46 K119 ["BackgroundTransparency"]
     1174 CALL                             R44 2 1
     1175 SETTABLEKS                       R44 R43 K105 ["TextProps"]
     1177 CALL                             R41 2 1
     1178 SETTABLEKS                       R41 R40 K99 ["Body"]
     1180 CALL                             R37 3 1
     1181 SETTABLEKS                       R37 R34 K244 ["Dialog"]
     1183 RETURN                           R34 1

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
       20 DUPTABLE                         R8 K27 [{"NameError", "DescriptionError", "IsCurrentlyActive", "Groups", "SelectedGroup", "OwnedGroups", "Name", "Description", "Genre", "Devices", "RootPlaceId", "IsActive", "IsFriendsOnly", "CreatorId", "OptInLocations", "PlayerAcceptance", "TeamCreateEnabled", "DataSharingDefault", "DataSharingEnabled"}]
       21 GETTABLEKS                       R9 R2 K28 ["name"]
       23 SETTABLEKS                       R9 R8 K9 ["NameError"]
       25 GETTABLEKS                       R9 R2 K29 ["description"]
       27 SETTABLEKS                       R9 R8 K10 ["DescriptionError"]
       29 GETTABLEKS                       R9 R1 K0 ["NewGameSettings"]
       31 GETTABLEKS                       R9 R9 K30 ["current"]
       33 GETTABLEKS                       R9 R9 K31 ["isActive"]
       35 SETTABLEKS                       R9 R8 K11 ["IsCurrentlyActive"]
       37 GETTABLEKS                       R9 R3 K32 ["groups"]
       39 SETTABLEKS                       R9 R8 K12 ["Groups"]
       41 SETTABLEKS                       R4 R8 K4 ["SelectedGroup"]
       43 SETTABLEKS                       R7 R8 K13 ["OwnedGroups"]
       45 MOVE                             R9 R0
       46 LOADK                            R10 K28 ["name"]
       47 CALL                             R9 1 1
       48 SETTABLEKS                       R9 R8 K14 ["Name"]
       50 MOVE                             R9 R0
       51 LOADK                            R10 K29 ["description"]
       52 CALL                             R9 1 1
       53 SETTABLEKS                       R9 R8 K15 ["Description"]
       55 MOVE                             R9 R0
       56 LOADK                            R10 K33 ["genre"]
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R8 K16 ["Genre"]
       60 MOVE                             R9 R0
       61 LOADK                            R10 K34 ["playableDevices"]
       62 CALL                             R9 1 1
       63 JUMPIF                           R9 ; [+2]
       64 NEWTABLE                         R9 0 0
       66 SETTABLEKS                       R9 R8 K17 ["Devices"]
       68 MOVE                             R9 R0
       69 LOADK                            R10 K35 ["rootPlaceId"]
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K18 ["RootPlaceId"]
       73 MOVE                             R9 R0
       74 LOADK                            R10 K31 ["isActive"]
       75 CALL                             R9 1 1
       76 SETTABLEKS                       R9 R8 K19 ["IsActive"]
       78 MOVE                             R9 R0
       79 LOADK                            R10 K36 ["isFriendsOnly"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R9 R8 K20 ["IsFriendsOnly"]
       83 MOVE                             R9 R0
       84 LOADK                            R10 K37 ["creatorId"]
       85 CALL                             R9 1 1
       86 SETTABLEKS                       R9 R8 K21 ["CreatorId"]
       88 GETUPVAL                         R10 0
       89 CALL                             R10 0 1
       90 JUMPIFNOT                        R10 ; [+4]
       91 MOVE                             R9 R0
       92 GETUPVAL                         R10 1
       93 CALL                             R9 1 1
       94 JUMPIF                           R9 ; [+2]
       95 NEWTABLE                         R9 0 0
       97 SETTABLEKS                       R9 R8 K22 ["OptInLocations"]
       99 GETTABLEKS                       R9 R1 K38 ["Policy"]
      101 GETTABLEKS                       R9 R9 K23 ["PlayerAcceptance"]
      103 SETTABLEKS                       R9 R8 K23 ["PlayerAcceptance"]
      105 MOVE                             R9 R0
      106 LOADK                            R10 K39 ["teamCreateEnabled"]
      107 CALL                             R9 1 1
      108 SETTABLEKS                       R9 R8 K24 ["TeamCreateEnabled"]
      110 SETTABLEKS                       R5 R8 K25 ["DataSharingDefault"]
      112 SETTABLEKS                       R6 R8 K26 ["DataSharingEnabled"]
      114 RETURN                           R8 1

PROTO_16:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+23]
        3 GETIMPORT                        R2 K2 [utf8.len]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMPIFNOTEQKNIL                  R1 ; [+10]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K4 [{"name"}]
       13 LOADK                            R5 K5 ["NameInvalidString"]
       14 SETTABLEKS                       R5 R4 K3 ["name"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 3
       21 LOADK                            R4 K3 ["name"]
       22 MOVE                             R5 R0
       23 CALL                             R3 2 -1
       24 CALL                             R2 -1 0
       25 JUMP                             ; [+11]
       26 GETUPVAL                         R2 1
       27 GETUPVAL                         R3 3
       28 LOADK                            R4 K3 ["name"]
       29 MOVE                             R5 R0
       30 CALL                             R3 2 -1
       31 CALL                             R2 -1 0
       32 GETIMPORT                        R2 K2 [utf8.len]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 1
       36 MOVE                             R1 R2
       37 GETIMPORT                        R2 K8 [string.gsub]
       39 MOVE                             R3 R0
       40 LOADK                            R4 K9 [" "]
       41 LOADK                            R5 K10 [""]
       42 CALL                             R2 3 2
       43 JUMPIFEQKN                       R1 K11 [0] ; [+8]
       45 FASTCALL1                        STRING_LEN R2 ; [+3]
       46 MOVE                             R5 R2
       47 GETIMPORT                        R4 K12 [string.len]
       49 CALL                             R4 1 1
       50 JUMPIFNOTEQKN                    R4 K11 [0] ; [+10]
       52 GETUPVAL                         R4 1
       53 GETUPVAL                         R5 2
       54 DUPTABLE                         R6 K4 [{"name"}]
       55 LOADK                            R7 K13 ["NameEmpty"]
       56 SETTABLEKS                       R7 R6 K3 ["name"]
       58 CALL                             R5 1 -1
       59 CALL                             R4 -1 0
       60 RETURN                           R0 0
       61 LOADN                            R4 50
       62 JUMPIFNOTLT                      R4 R1 ; [+9]
       64 GETUPVAL                         R4 1
       65 GETUPVAL                         R5 2
       66 DUPTABLE                         R6 K4 [{"name"}]
       67 LOADK                            R7 K14 ["NameTooLong"]
       68 SETTABLEKS                       R7 R6 K3 ["name"]
       70 CALL                             R5 1 -1
       71 CALL                             R4 -1 0
       72 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+23]
        3 GETIMPORT                        R2 K2 [utf8.len]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMPIFNOTEQKNIL                  R1 ; [+10]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K4 [{"description"}]
       13 LOADK                            R5 K5 ["DescriptionInvalidString"]
       14 SETTABLEKS                       R5 R4 K3 ["description"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 3
       21 LOADK                            R4 K3 ["description"]
       22 MOVE                             R5 R0
       23 CALL                             R3 2 -1
       24 CALL                             R2 -1 0
       25 JUMP                             ; [+11]
       26 GETUPVAL                         R2 1
       27 GETUPVAL                         R3 3
       28 LOADK                            R4 K3 ["description"]
       29 MOVE                             R5 R0
       30 CALL                             R3 2 -1
       31 CALL                             R2 -1 0
       32 GETIMPORT                        R2 K2 [utf8.len]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 1
       36 MOVE                             R1 R2
       37 LOADN                            R2 232
       38 JUMPIFNOTLT                      R2 R1 ; [+9]
       40 GETUPVAL                         R2 1
       41 GETUPVAL                         R3 2
       42 DUPTABLE                         R4 K4 [{"description"}]
       43 LOADK                            R5 K6 ["DescriptionTooLong"]
       44 SETTABLEKS                       R5 R4 K3 ["description"]
       46 CALL                             R3 1 -1
       47 CALL                             R2 -1 0
       48 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K12 [{"CreatorChanged", "GenreChanged", "NameChanged", "DescriptionChanged", "DevicesChanged", "OptInLocationsChanged", "IsFriendsOnlyChanged", "IsActiveChanged", "GetPlayerAcceptances", "TeamCreateEnabledChanged", "DataSharingEnabledChanged", "DispatchSetSelectedGroup"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K13 ["creatorId"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["CreatorChanged"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K14 ["genre"]
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
       37 MOVE                             R3 R0
       38 LOADK                            R4 K15 ["isFriendsOnly"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K6 ["IsFriendsOnlyChanged"]
       42 MOVE                             R3 R0
       43 LOADK                            R4 K16 ["isActive"]
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R2 K7 ["IsActiveChanged"]
       47 NEWCLOSURE                       R3 P4
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U5
       51 SETTABLEKS                       R3 R2 K8 ["GetPlayerAcceptances"]
       53 NEWCLOSURE                       R3 P5
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U2
       56 SETTABLEKS                       R3 R2 K9 ["TeamCreateEnabledChanged"]
       58 NEWCLOSURE                       R3 P6
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U2
       61 SETTABLEKS                       R3 R2 K10 ["DataSharingEnabledChanged"]
       63 NEWCLOSURE                       R3 P7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U6
       66 SETTABLEKS                       R3 R2 K11 ["DispatchSetSelectedGroup"]
       68 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Content", "AddLayout", "IsPublish"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Content"]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["AddLayout"]
       11 GETTABLEKS                       R4 R0 K3 ["IsPublish"]
       13 SETTABLEKS                       R4 R3 K3 ["IsPublish"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

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
      216 GETTABLEKS                       R37 R37 K52 ["PublishPlaceAsUtilities"]
      218 CALL                             R36 1 1
      219 GETTABLEKS                       R36 R36 K54 ["getOptInLocationsRequirementsLink"]
      221 GETIMPORT                        R37 K15 [require]
      223 GETTABLEKS                       R38 R6 K33 ["Src"]
      225 GETTABLEKS                       R38 R38 K51 ["Util"]
      227 GETTABLEKS                       R38 R38 K52 ["PublishPlaceAsUtilities"]
      229 CALL                             R37 1 1
      230 GETTABLEKS                       R37 R37 K55 ["sendAnalyticsToKibana"]
      232 GETIMPORT                        R38 K15 [require]
      234 GETTABLEKS                       R39 R6 K33 ["Src"]
      236 GETTABLEKS                       R39 R39 K51 ["Util"]
      238 GETTABLEKS                       R39 R39 K52 ["PublishPlaceAsUtilities"]
      240 CALL                             R38 1 1
      241 GETTABLEKS                       R38 R38 K56 ["getPlayerAppDownloadLink"]
      243 GETIMPORT                        R39 K15 [require]
      245 GETTABLEKS                       R40 R6 K33 ["Src"]
      247 GETTABLEKS                       R40 R40 K51 ["Util"]
      249 GETTABLEKS                       R40 R40 K52 ["PublishPlaceAsUtilities"]
      251 CALL                             R39 1 1
      252 GETTABLEKS                       R39 R39 K57 ["calculateTextSize"]
      254 GETIMPORT                        R40 K15 [require]
      256 GETTABLEKS                       R41 R6 K33 ["Src"]
      258 GETTABLEKS                       R41 R41 K51 ["Util"]
      260 GETTABLEKS                       R41 R41 K58 ["KeyProvider"]
      262 CALL                             R40 1 1
      263 GETTABLEKS                       R41 R40 K59 ["getOptInLocationsKeyName"]
      265 CALL                             R41 0 1
      266 GETTABLEKS                       R42 R40 K60 ["getChinaKeyName"]
      268 CALL                             R42 0 1
      269 GETTABLEKS                       R43 R40 K61 ["getLuobuStudioDevPublishKeyName"]
      271 CALL                             R43 0 1
      272 GETTABLEKS                       R44 R40 K62 ["getCheckboxToggleKeyName"]
      274 CALL                             R44 0 1
      275 GETTABLEKS                       R45 R40 K63 ["getSelectedKeyName"]
      277 CALL                             R45 0 1
      278 GETTABLEKS                       R46 R40 K64 ["getTermsOfUseDialogKeyName"]
      280 CALL                             R46 0 1
      281 GETTABLEKS                       R47 R40 K65 ["getButtonClickedKeyName"]
      283 CALL                             R47 0 1
      284 GETTABLEKS                       R48 R9 K51 ["Util"]
      286 GETTABLEKS                       R48 R48 K66 ["LayoutOrderIterator"]
      288 GETIMPORT                        R49 K15 [require]
      290 GETTABLEKS                       R50 R6 K33 ["Src"]
      292 GETTABLEKS                       R50 R50 K34 ["Components"]
      294 GETTABLEKS                       R50 R50 K67 ["DataSharingToggle"]
      296 CALL                             R49 1 1
      297 LOADB                            R50 0
      298 NEWCLOSURE                       R51 P0
      299 CAPTURE                          VAL R8
      300 CAPTURE                          VAL R32
      301 CAPTURE                          REF R50
      302 CAPTURE                          VAL R48
      303 CAPTURE                          VAL R39
      304 CAPTURE                          VAL R41
      305 CAPTURE                          VAL R7
      306 CAPTURE                          VAL R24
      307 CAPTURE                          VAL R21
      308 CAPTURE                          VAL R18
      309 CAPTURE                          VAL R14
      310 CAPTURE                          VAL R13
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R19
      313 CAPTURE                          VAL R34
      314 CAPTURE                          VAL R2
      315 CAPTURE                          VAL R22
      316 CAPTURE                          VAL R25
      317 CAPTURE                          VAL R27
      318 CAPTURE                          VAL R1
      319 CAPTURE                          VAL R5
      320 CAPTURE                          VAL R23
      321 CAPTURE                          VAL R49
      322 CAPTURE                          VAL R35
      323 CAPTURE                          VAL R26
      324 CAPTURE                          VAL R42
      325 CAPTURE                          VAL R17
      326 CAPTURE                          VAL R12
      327 CAPTURE                          VAL R36
      328 CAPTURE                          VAL R45
      329 CAPTURE                          VAL R37
      330 CAPTURE                          VAL R43
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R44
      333 CAPTURE                          VAL R15
      334 CAPTURE                          VAL R20
      335 CAPTURE                          VAL R11
      336 CAPTURE                          VAL R16
      337 CAPTURE                          VAL R47
      338 CAPTURE                          VAL R46
      339 CAPTURE                          VAL R38
      340 DUPCLOSURE                       R52 K68 [PROTO_15]
      341 CAPTURE                          VAL R35
      342 CAPTURE                          VAL R41
      343 DUPCLOSURE                       R53 K69 [PROTO_24]
      344 CAPTURE                          VAL R4
      345 CAPTURE                          VAL R30
      346 CAPTURE                          VAL R29
      347 CAPTURE                          VAL R35
      348 CAPTURE                          VAL R41
      349 CAPTURE                          VAL R28
      350 CAPTURE                          VAL R31
      351 MOVE                             R54 R33
      352 MOVE                             R55 R52
      353 MOVE                             R56 R53
      354 CALL                             R54 2 1
      355 DUPCLOSURE                       R55 K70 [PROTO_25]
      356 CAPTURE                          VAL R7
      357 CAPTURE                          VAL R54
      358 CAPTURE                          VAL R51
      359 CLOSEUPVALS                      R50
      360 RETURN                           R55 1
