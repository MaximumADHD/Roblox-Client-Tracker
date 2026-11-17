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
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["DispatchSetSelectedGroup"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TeamCreateEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["TeamCreateEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataSharingEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["DataSharingEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["China"]
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Description"]
        8 GETTABLEKS                       R5 R1 K4 ["DescriptionChanged"]
       10 GETTABLEKS                       R6 R1 K5 ["DescriptionError"]
       12 GETTABLEKS                       R7 R1 K6 ["Devices"]
       14 GETTABLEKS                       R8 R1 K7 ["DevicesChanged"]
       16 GETTABLEKS                       R9 R1 K8 ["Genre"]
       18 GETTABLEKS                       R10 R1 K9 ["Name"]
       20 GETTABLEKS                       R11 R1 K10 ["NameChanged"]
       22 GETTABLEKS                       R12 R1 K11 ["NameError"]
       24 GETTABLEKS                       R13 R1 K12 ["CreatorId"]
       26 GETTABLEKS                       R14 R1 K13 ["Groups"]
       28 GETTABLEKS                       R15 R1 K14 ["CreatorChanged"]
       30 GETTABLEKS                       R16 R1 K15 ["OptInLocations"]
       32 GETTABLEKS                       R17 R1 K16 ["OptInLocationsChanged"]
       34 GETTABLEKS                       R18 R1 K17 ["PlayerAcceptance"]
       36 GETTABLEKS                       R19 R1 K18 ["SelectedGroup"]
       38 GETTABLEKS                       R20 R1 K19 ["OwnedGroups"]
       40 JUMPIFNOT                        R19 ; [+3]
       41 MOVE                             R21 R15
       42 MOVE                             R22 R19
       43 CALL                             R21 1 0
       44 GETUPVAL                         R21 0
       45 GETTABLEKS                       R21 R21 K20 ["List"]
       47 GETTABLEKS                       R21 R21 K21 ["map"]
       49 GETUPVAL                         R22 1
       50 GETTABLEKS                       R22 R22 K22 ["GENRE_IDS"]
       52 NEWCLOSURE                       R23 P0
       53 CAPTURE                          VAL R3
       54 CALL                             R21 2 1
       55 NEWTABLE                         R22 0 0
       57 GETIMPORT                        R23 K24 [pairs]
       59 MOVE                             R24 R21
       60 CALL                             R23 1 3
       61 FORGPREP_NEXT                    R23
       62 GETTABLEKS                       R30 R27 K25 ["Text"]
       64 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
       66 MOVE                             R29 R22
       67 GETIMPORT                        R28 K28 [table.insert]
       69 CALL                             R28 2 0
       70 GETTABLEKS                       R28 R27 K29 ["Key"]
       72 JUMPIFNOTEQ                      R9 R28 ; [+1]
       74 FORGLOOP                         R23 2 ; [-13]
       76 NEWTABLE                         R23 0 1
       78 DUPTABLE                         R24 K32 [{["Key"] = 0, ["Type"], ["Text"]}]
       79 GETUPVAL                         R25 1
       80 GETTABLEKS                       R25 R25 K33 ["SUBJECT_TYPE"]
       82 GETTABLEKS                       R25 R25 K34 ["USER"]
       84 SETTABLEKS                       R25 R24 K31 ["Type"]
       86 LOADK                            R27 K35 ["GroupDropdown"]
       87 LOADK                            R28 K36 ["Me"]
       88 NAMECALL                         R25 R3 K37 ["getText"]
       90 CALL                             R25 3 1
       91 SETTABLEKS                       R25 R24 K25 ["Text"]
       93 SETLIST                          R23 R24 1 [1]
       95 LOADN                            R24 1
       96 NEWCLOSURE                       R25 P1
       97 CAPTURE                          VAL R23
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R1
      100 JUMPIFNOT                        R14 ; [+66]
      101 GETIMPORT                        R26 K39 [next]
      103 MOVE                             R27 R14
      104 CALL                             R26 1 1
      105 JUMPIFEQKNIL                     R26 ; [+61]
      107 GETIMPORT                        R26 K24 [pairs]
      109 MOVE                             R27 R14
      110 CALL                             R26 1 3
      111 FORGPREP_NEXT                    R26
      112 DUPTABLE                         R33 K40 [{"Key", "Type", "Text"}]
      113 GETTABLEKS                       R34 R30 K41 ["groupId"]
      115 SETTABLEKS                       R34 R33 K29 ["Key"]
      117 GETUPVAL                         R34 1
      118 GETTABLEKS                       R34 R34 K33 ["SUBJECT_TYPE"]
      120 GETTABLEKS                       R34 R34 K42 ["GROUP"]
      122 SETTABLEKS                       R34 R33 K31 ["Type"]
      124 GETTABLEKS                       R34 R30 K43 ["name"]
      126 SETTABLEKS                       R34 R33 K25 ["Text"]
      128 FASTCALL2                        TABLE_INSERT R23 R33 ; [+4]
      130 MOVE                             R32 R23
      131 GETIMPORT                        R31 K28 [table.insert]
      133 CALL                             R31 2 0
      134 FORGLOOP                         R26 2 ; [-23]
      136 GETUPVAL                         R26 2
      137 JUMPIF                           R26 ; [+29]
      138 LOADB                            R26 1
      139 SETUPVAL                         R26 2
      140 GETIMPORT                        R26 K45 [ipairs]
      142 MOVE                             R27 R23
      143 CALL                             R26 1 3
      144 FORGPREP_INEXT                   R26
      145 GETIMPORT                        R31 K47 [game]
      147 GETTABLEKS                       R31 R31 K12 ["CreatorId"]
      149 GETTABLEKS                       R32 R30 K29 ["Key"]
      151 JUMPIFNOTEQ                      R31 R32 ; [+13]
      153 GETIMPORT                        R31 K47 [game]
      155 GETTABLEKS                       R31 R31 K48 ["CreatorType"]
      157 GETIMPORT                        R32 K51 [Enum.CreatorType.Group]
      159 JUMPIFNOTEQ                      R31 R32 ; [+5]
      161 MOVE                             R31 R15
      162 GETTABLEKS                       R32 R30 K29 ["Key"]
      164 CALL                             R31 1 0
      165 FORGLOOP                         R26 2 [inext] ; [-21]
      167 NEWTABLE                         R26 0 0
      169 GETIMPORT                        R27 K45 [ipairs]
      171 MOVE                             R28 R23
      172 CALL                             R27 1 3
      173 FORGPREP_INEXT                   R27
      174 GETTABLEKS                       R34 R31 K25 ["Text"]
      176 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      178 MOVE                             R33 R26
      179 GETIMPORT                        R32 K28 [table.insert]
      181 CALL                             R32 2 0
      182 GETTABLEKS                       R32 R31 K29 ["Key"]
      184 JUMPIFNOTEQ                      R13 R32 ; [+2]
      186 MOVE                             R24 R30
      187 FORGLOOP                         R27 2 [inext] ; [-14]
      189 GETIMPORT                        R27 K54 [utf8.len]
      191 MOVE                             R28 R10
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K54 [utf8.len]
      195 MOVE                             R29 R4
      196 CALL                             R28 1 1
      197 GETUPVAL                         R29 3
      198 GETTABLEKS                       R29 R29 K55 ["new"]
      200 CALL                             R29 0 1
      201 GETUPVAL                         R30 4
      202 GETUPVAL                         R33 5
      203 LOADK                            R34 K56 ["RequirementsLinkText"]
      204 NAMECALL                         R31 R3 K37 ["getText"]
      206 CALL                             R31 3 1
      207 LOADN                            R32 14
      208 LOADK                            R33 K57 ["SourceSans"]
      209 CALL                             R30 3 1
      210 DUPTABLE                         R31 K64 [{"Header", "Name", "Description", "Separator1", "Creator", "Separator2", "Devices", "Separator3", "EnableTeamCreate"}]
      211 GETUPVAL                         R32 6
      212 GETTABLEKS                       R32 R32 K65 ["createElement"]
      214 GETUPVAL                         R33 7
      215 DUPTABLE                         R34 K68 [{"Title", "LayoutOrder"}]
      216 LOADK                            R37 K69 ["MenuItem"]
      217 LOADK                            R38 K70 ["BasicInfo"]
      218 NAMECALL                         R35 R3 K37 ["getText"]
      220 CALL                             R35 3 1
      221 SETTABLEKS                       R35 R34 K66 ["Title"]
      223 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      225 CALL                             R35 1 1
      226 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      228 CALL                             R32 2 1
      229 SETTABLEKS                       R32 R31 K58 ["Header"]
      231 GETUPVAL                         R32 6
      232 GETTABLEKS                       R32 R32 K65 ["createElement"]
      234 GETUPVAL                         R33 8
      235 DUPTABLE                         R34 K72 [{"LayoutOrder", "Title"}]
      236 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      238 CALL                             R35 1 1
      239 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      241 LOADK                            R37 K73 ["PageTitle"]
      242 LOADK                            R38 K9 ["Name"]
      243 NAMECALL                         R35 R3 K37 ["getText"]
      245 CALL                             R35 3 1
      246 SETTABLEKS                       R35 R34 K66 ["Title"]
      248 DUPTABLE                         R35 K75 [{"TextBox"}]
      249 GETUPVAL                         R36 6
      250 GETTABLEKS                       R36 R36 K65 ["createElement"]
      252 GETUPVAL                         R37 9
      253 DUPTABLE                         R38 K80 [{["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      254 MOVE                             R39 R12
      255 JUMPIFNOT                        R39 ; [+19]
      256 LOADK                            R41 K81 ["Error"]
      257 MOVE                             R42 R12
      258 NEWTABLE                         R43 0 2
      260 FASTCALL1                        TOSTRING R27 ; [+3]
      261 MOVE                             R45 R27
      262 GETIMPORT                        R44 K83 [tostring]
      264 CALL                             R44 1 1
      265 LOADN                            R46 50
      266 FASTCALL1                        TOSTRING R46 ; [+2]
      267 GETIMPORT                        R45 K83 [tostring]
      269 CALL                             R45 1 1
      270 SETLIST                          R43 R44 2 [1]
      272 NAMECALL                         R39 R3 K37 ["getText"]
      274 CALL                             R39 4 1
      275 SETTABLEKS                       R39 R38 K76 ["ErrorText"]
      277 SETTABLEKS                       R11 R38 K79 ["OnTextChanged"]
      279 SETTABLEKS                       R10 R38 K25 ["Text"]
      281 CALL                             R36 2 1
      282 SETTABLEKS                       R36 R35 K74 ["TextBox"]
      284 CALL                             R32 3 1
      285 SETTABLEKS                       R32 R31 K9 ["Name"]
      287 GETUPVAL                         R32 6
      288 GETTABLEKS                       R32 R32 K65 ["createElement"]
      290 GETUPVAL                         R33 8
      291 DUPTABLE                         R34 K72 [{"LayoutOrder", "Title"}]
      292 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      294 CALL                             R35 1 1
      295 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      297 LOADK                            R37 K73 ["PageTitle"]
      298 LOADK                            R38 K3 ["Description"]
      299 NAMECALL                         R35 R3 K37 ["getText"]
      301 CALL                             R35 3 1
      302 SETTABLEKS                       R35 R34 K66 ["Title"]
      304 DUPTABLE                         R35 K75 [{"TextBox"}]
      305 GETUPVAL                         R36 6
      306 GETTABLEKS                       R36 R36 K65 ["createElement"]
      308 GETUPVAL                         R37 9
      309 DUPTABLE                         R38 K88 [{["ErrorText"], ["Height"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Text"]}]
      310 MOVE                             R39 R6
      311 JUMPIFNOT                        R39 ; [+19]
      312 LOADK                            R41 K81 ["Error"]
      313 MOVE                             R42 R6
      314 NEWTABLE                         R43 0 2
      316 FASTCALL1                        TOSTRING R28 ; [+3]
      317 MOVE                             R45 R28
      318 GETIMPORT                        R44 K83 [tostring]
      320 CALL                             R44 1 1
      321 LOADN                            R46 1000
      322 FASTCALL1                        TOSTRING R46 ; [+2]
      323 GETIMPORT                        R45 K83 [tostring]
      325 CALL                             R45 1 1
      326 SETLIST                          R43 R44 2 [1]
      328 NAMECALL                         R39 R3 K37 ["getText"]
      330 CALL                             R39 4 1
      331 SETTABLEKS                       R39 R38 K76 ["ErrorText"]
      333 GETTABLEKS                       R39 R2 K89 ["descriptionBox"]
      335 GETTABLEKS                       R39 R39 K90 ["textBoxHeight"]
      337 SETTABLEKS                       R39 R38 K84 ["Height"]
      339 SETTABLEKS                       R5 R38 K79 ["OnTextChanged"]
      341 SETTABLEKS                       R4 R38 K25 ["Text"]
      343 CALL                             R36 2 1
      344 SETTABLEKS                       R36 R35 K74 ["TextBox"]
      346 CALL                             R32 3 1
      347 SETTABLEKS                       R32 R31 K3 ["Description"]
      349 GETUPVAL                         R32 6
      350 GETTABLEKS                       R32 R32 K65 ["createElement"]
      352 GETUPVAL                         R33 10
      353 DUPTABLE                         R34 K91 [{"LayoutOrder"}]
      354 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      356 CALL                             R35 1 1
      357 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      359 CALL                             R32 2 1
      360 SETTABLEKS                       R32 R31 K59 ["Separator1"]
      362 GETUPVAL                         R32 6
      363 GETTABLEKS                       R32 R32 K65 ["createElement"]
      365 GETUPVAL                         R33 8
      366 DUPTABLE                         R34 K72 [{"LayoutOrder", "Title"}]
      367 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      369 CALL                             R35 1 1
      370 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      372 LOADK                            R37 K73 ["PageTitle"]
      373 LOADK                            R38 K60 ["Creator"]
      374 NAMECALL                         R35 R3 K37 ["getText"]
      376 CALL                             R35 3 1
      377 SETTABLEKS                       R35 R34 K66 ["Title"]
      379 DUPTABLE                         R35 K93 [{"Selector"}]
      380 GETUPVAL                         R36 6
      381 GETTABLEKS                       R36 R36 K65 ["createElement"]
      383 GETUPVAL                         R37 11
      384 DUPTABLE                         R38 K98 [{"Items", "SelectedIndex", "OnItemActivated", "Width"}]
      385 SETTABLEKS                       R26 R38 K94 ["Items"]
      387 SETTABLEKS                       R24 R38 K95 ["SelectedIndex"]
      389 SETTABLEKS                       R25 R38 K96 ["OnItemActivated"]
      391 GETTABLEKS                       R39 R2 K99 ["selectInput"]
      393 GETTABLEKS                       R39 R39 K100 ["width"]
      395 GETTABLEKS                       R39 R39 K101 ["creator"]
      397 SETTABLEKS                       R39 R38 K97 ["Width"]
      399 CALL                             R36 2 1
      400 SETTABLEKS                       R36 R35 K92 ["Selector"]
      402 CALL                             R32 3 1
      403 SETTABLEKS                       R32 R31 K60 ["Creator"]
      405 GETUPVAL                         R32 6
      406 GETTABLEKS                       R32 R32 K65 ["createElement"]
      408 GETUPVAL                         R33 10
      409 DUPTABLE                         R34 K91 [{"LayoutOrder"}]
      410 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      412 CALL                             R35 1 1
      413 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      415 CALL                             R32 2 1
      416 SETTABLEKS                       R32 R31 K61 ["Separator2"]
      418 GETUPVAL                         R32 6
      419 GETTABLEKS                       R32 R32 K65 ["createElement"]
      421 GETUPVAL                         R33 12
      422 DUPTABLE                         R34 K103 [{"LayoutOrder", "Devices", "DeviceSelected"}]
      423 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      425 CALL                             R35 1 1
      426 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      428 SETTABLEKS                       R7 R34 K6 ["Devices"]
      430 NEWCLOSURE                       R35 P2
      431 CAPTURE                          UPVAL U0
      432 CAPTURE                          VAL R7
      433 CAPTURE                          VAL R8
      434 SETTABLEKS                       R35 R34 K102 ["DeviceSelected"]
      436 CALL                             R32 2 1
      437 SETTABLEKS                       R32 R31 K6 ["Devices"]
      439 GETUPVAL                         R32 6
      440 GETTABLEKS                       R32 R32 K65 ["createElement"]
      442 GETUPVAL                         R33 10
      443 DUPTABLE                         R34 K91 [{"LayoutOrder"}]
      444 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      446 CALL                             R35 1 1
      447 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      449 CALL                             R32 2 1
      450 SETTABLEKS                       R32 R31 K62 ["Separator3"]
      452 GETUPVAL                         R32 6
      453 GETTABLEKS                       R32 R32 K65 ["createElement"]
      455 GETUPVAL                         R33 13
      456 DUPTABLE                         R34 K109 [{["Title"], ["LayoutOrder"], ["Disabled"] = False, ["Selected"], ["LinkProps"], ["OnClick"]}]
      457 LOADK                            R37 K110 ["TeamCreate"]
      458 LOADK                            R38 K66 ["Title"]
      459 NAMECALL                         R35 R3 K37 ["getText"]
      461 CALL                             R35 3 1
      462 SETTABLEKS                       R35 R34 K66 ["Title"]
      464 NAMECALL                         R35 R29 K71 ["getNextOrder"]
      466 CALL                             R35 1 1
      467 SETTABLEKS                       R35 R34 K67 ["LayoutOrder"]
      469 GETTABLEKS                       R35 R1 K111 ["TeamCreateEnabled"]
      471 SETTABLEKS                       R35 R34 K106 ["Selected"]
      473 DUPTABLE                         R35 K114 [{"Text", "LinkText", "OnLinkClicked"}]
      474 LOADK                            R38 K110 ["TeamCreate"]
      475 LOADK                            R39 K115 ["LinkDescription"]
      476 NAMECALL                         R36 R3 K37 ["getText"]
      478 CALL                             R36 3 1
      479 SETTABLEKS                       R36 R35 K25 ["Text"]
      481 LOADK                            R38 K110 ["TeamCreate"]
      482 LOADK                            R39 K112 ["LinkText"]
      483 NAMECALL                         R36 R3 K37 ["getText"]
      485 CALL                             R36 3 1
      486 SETTABLEKS                       R36 R35 K112 ["LinkText"]
      488 DUPCLOSURE                       R36 K116 [PROTO_3]
      489 CAPTURE                          UPVAL U14
      490 CAPTURE                          UPVAL U15
      491 SETTABLEKS                       R36 R35 K113 ["OnLinkClicked"]
      493 SETTABLEKS                       R35 R34 K107 ["LinkProps"]
      495 NEWCLOSURE                       R35 P4
      496 CAPTURE                          VAL R1
      497 SETTABLEKS                       R35 R34 K108 ["OnClick"]
      499 DUPTABLE                         R35 K118 [{"TeachingCallout"}]
      500 GETUPVAL                         R37 16
      501 JUMPIF                           R37 ; [+7]
      502 GETUPVAL                         R36 6
      503 GETTABLEKS                       R36 R36 K65 ["createElement"]
      505 GETUPVAL                         R37 17
      506 DUPTABLE                         R38 K123 [{["DefinitionId"] = "PublishPlaceAsTeamCreateToggleCallout", ["LocationId"] = "TeamCreateToggle"}]
      507 CALL                             R36 2 1
      508 JUMP                             ; [+1]
      509 LOADNIL                          R36
      510 SETTABLEKS                       R36 R35 K117 ["TeachingCallout"]
      512 CALL                             R32 3 1
      513 SETTABLEKS                       R32 R31 K63 ["EnableTeamCreate"]
      515 GETUPVAL                         R33 18
      516 GETTABLEKS                       R33 R33 K124 ["find"]
      518 MOVE                             R34 R20
      519 NEWCLOSURE                       R35 P5
      520 CAPTURE                          VAL R13
      521 CALL                             R33 2 1
      522 JUMPIFNOTEQKNIL                  R33 ; [+2]
      524 LOADB                            R32 0 +1
      525 LOADB                            R32 1
      526 LOADB                            R33 1
      527 JUMPIFEQKN                       R13 K30 [0] ; [+2]
      529 MOVE                             R33 R32
      530 GETUPVAL                         R34 6
      531 GETTABLEKS                       R34 R34 K65 ["createElement"]
      533 GETUPVAL                         R35 19
      534 DUPTABLE                         R36 K128 [{"DataSharingEnabled", "DataSharingDefault", "LayoutOrder", "isOwningCreator", "OnClick"}]
      535 GETTABLEKS                       R37 R1 K125 ["DataSharingEnabled"]
      537 SETTABLEKS                       R37 R36 K125 ["DataSharingEnabled"]
      539 GETTABLEKS                       R37 R1 K126 ["DataSharingDefault"]
      541 SETTABLEKS                       R37 R36 K126 ["DataSharingDefault"]
      543 NAMECALL                         R37 R29 K71 ["getNextOrder"]
      545 CALL                             R37 1 1
      546 SETTABLEKS                       R37 R36 K67 ["LayoutOrder"]
      548 SETTABLEKS                       R33 R36 K127 ["isOwningCreator"]
      550 NEWCLOSURE                       R37 P6
      551 CAPTURE                          VAL R1
      552 SETTABLEKS                       R37 R36 K108 ["OnClick"]
      554 CALL                             R34 2 1
      555 SETTABLEKS                       R34 R31 K129 ["DataSharing"]
      557 GETTABLEKS                       R34 R1 K130 ["IsPublish"]
      559 JUMPIFNOT                        R34 ; [+456]
      560 GETUPVAL                         R34 20
      561 CALL                             R34 0 1
      562 JUMPIFNOT                        R34 ; [+453]
      563 GETUPVAL                         R34 6
      564 GETTABLEKS                       R34 R34 K65 ["createElement"]
      566 GETUPVAL                         R35 10
      567 DUPTABLE                         R36 K91 [{"LayoutOrder"}]
      568 NAMECALL                         R37 R29 K71 ["getNextOrder"]
      570 CALL                             R37 1 1
      571 SETTABLEKS                       R37 R36 K67 ["LayoutOrder"]
      573 CALL                             R34 2 1
      574 SETTABLEKS                       R34 R31 K131 ["Separator5"]
      576 GETUPVAL                         R34 6
      577 GETTABLEKS                       R34 R34 K65 ["createElement"]
      579 GETUPVAL                         R35 21
      580 DUPTABLE                         R36 K137 [{"Title", "LayoutOrder", "MaxHeight", "Boxes", "Enabled", "EntryClicked", "Tooltip"}]
      581 GETUPVAL                         R39 5
      582 LOADK                            R40 K138 ["TitleOptInLocations"]
      583 NAMECALL                         R37 R3 K37 ["getText"]
      585 CALL                             R37 3 1
      586 SETTABLEKS                       R37 R36 K66 ["Title"]
      588 NAMECALL                         R37 R29 K71 ["getNextOrder"]
      590 CALL                             R37 1 1
      591 SETTABLEKS                       R37 R36 K67 ["LayoutOrder"]
      593 GETTABLEKS                       R37 R2 K139 ["optInLocations"]
      595 GETTABLEKS                       R37 R37 K140 ["height"]
      597 SETTABLEKS                       R37 R36 K132 ["MaxHeight"]
      599 NEWTABLE                         R37 0 1
      601 DUPTABLE                         R38 K143 [{"Id", "Title", "Selected", "LinkTextFrame"}]
      602 GETUPVAL                         R39 22
      603 SETTABLEKS                       R39 R38 K141 ["Id"]
      605 GETUPVAL                         R41 5
      606 GETUPVAL                         R42 22
      607 NAMECALL                         R39 R3 K37 ["getText"]
      609 CALL                             R39 3 1
      610 SETTABLEKS                       R39 R38 K66 ["Title"]
      612 JUMPIFNOT                        R16 ; [+3]
      613 GETTABLEKS                       R39 R16 K144 ["China"]
      615 JUMP                             ; [+1]
      616 LOADB                            R39 0
      617 SETTABLEKS                       R39 R38 K106 ["Selected"]
      619 GETUPVAL                         R39 6
      620 GETTABLEKS                       R39 R39 K65 ["createElement"]
      622 LOADK                            R40 K145 ["Frame"]
      623 DUPTABLE                         R41 K150 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
      624 GETIMPORT                        R42 K152 [UDim2.new]
      626 LOADN                            R43 0
      627 GETTABLEKS                       R44 R2 K153 ["requirementsLink"]
      629 GETTABLEKS                       R44 R44 K154 ["length"]
      631 LOADN                            R45 0
      632 GETTABLEKS                       R46 R2 K153 ["requirementsLink"]
      634 GETTABLEKS                       R46 R46 K140 ["height"]
      636 CALL                             R42 4 1
      637 SETTABLEKS                       R42 R41 K148 ["Size"]
      639 GETIMPORT                        R42 K152 [UDim2.new]
      641 LOADN                            R43 0
      642 LOADN                            R44 0
      643 LOADN                            R45 0
      644 GETTABLEKS                       R46 R2 K153 ["requirementsLink"]
      646 GETTABLEKS                       R46 R46 K155 ["paddingY"]
      648 CALL                             R42 4 1
      649 SETTABLEKS                       R42 R41 K149 ["Position"]
      651 DUPTABLE                         R42 K157 [{"LinkTextLabel", "LinkText"}]
      652 GETUPVAL                         R43 6
      653 GETTABLEKS                       R43 R43 K65 ["createElement"]
      655 GETUPVAL                         R44 23
      656 DUPTABLE                         R45 K162 [{["Position"], ["Size"], ["Style"] = "Body", ["Text"], ["TextXAlignment"], ["TextYAlignment"]}]
      657 GETIMPORT                        R46 K152 [UDim2.new]
      659 LOADN                            R47 0
      660 GETTABLEKS                       R48 R30 K163 ["X"]
      662 LOADN                            R49 0
      663 LOADN                            R50 0
      664 CALL                             R46 4 1
      665 SETTABLEKS                       R46 R45 K149 ["Position"]
      667 GETIMPORT                        R46 K152 [UDim2.new]
      669 LOADN                            R47 1
      670 GETTABLEKS                       R49 R30 K163 ["X"]
      672 MINUS                            R48 R49
      673 LOADN                            R49 1
      674 LOADN                            R50 0
      675 CALL                             R46 4 1
      676 SETTABLEKS                       R46 R45 K148 ["Size"]
      678 GETUPVAL                         R48 5
      679 LOADK                            R49 K164 ["ChinaRequirements"]
      680 NAMECALL                         R46 R3 K37 ["getText"]
      682 CALL                             R46 3 1
      683 SETTABLEKS                       R46 R45 K25 ["Text"]
      685 GETIMPORT                        R46 K166 [Enum.TextXAlignment.Left]
      687 SETTABLEKS                       R46 R45 K160 ["TextXAlignment"]
      689 GETIMPORT                        R46 K168 [Enum.TextYAlignment.Top]
      691 SETTABLEKS                       R46 R45 K161 ["TextYAlignment"]
      693 CALL                             R43 2 1
      694 SETTABLEKS                       R43 R42 K156 ["LinkTextLabel"]
      696 GETUPVAL                         R43 6
      697 GETTABLEKS                       R43 R43 K65 ["createElement"]
      699 GETUPVAL                         R44 24
      700 DUPTABLE                         R45 K169 [{["OnClick"], ["Size"], ["Style"] = "Body", ["Text"]}]
      701 DUPCLOSURE                       R46 K170 [PROTO_7]
      702 CAPTURE                          UPVAL U25
      703 CAPTURE                          UPVAL U22
      704 CAPTURE                          UPVAL U14
      705 SETTABLEKS                       R46 R45 K108 ["OnClick"]
      707 GETIMPORT                        R46 K152 [UDim2.new]
      709 LOADN                            R47 0
      710 GETTABLEKS                       R48 R30 K163 ["X"]
      712 LOADN                            R49 0
      713 GETTABLEKS                       R50 R30 K171 ["Y"]
      715 CALL                             R46 4 1
      716 SETTABLEKS                       R46 R45 K148 ["Size"]
      718 GETUPVAL                         R48 5
      719 LOADK                            R49 K56 ["RequirementsLinkText"]
      720 NAMECALL                         R46 R3 K37 ["getText"]
      722 CALL                             R46 3 1
      723 SETTABLEKS                       R46 R45 K25 ["Text"]
      725 CALL                             R43 2 1
      726 SETTABLEKS                       R43 R42 K112 ["LinkText"]
      728 CALL                             R39 3 1
      729 SETTABLEKS                       R39 R38 K142 ["LinkTextFrame"]
      731 SETLIST                          R37 R38 1 [1]
      733 SETTABLEKS                       R37 R36 K133 ["Boxes"]
      735 JUMPIFNOTEQKNIL                  R16 ; [+2]
      737 LOADB                            R37 0 +1
      738 LOADB                            R37 1
      739 SETTABLEKS                       R37 R36 K134 ["Enabled"]
      741 NEWCLOSURE                       R37 P8
      742 CAPTURE                          VAL R18
      743 CAPTURE                          VAL R0
      744 CAPTURE                          UPVAL U0
      745 CAPTURE                          VAL R16
      746 CAPTURE                          UPVAL U5
      747 CAPTURE                          UPVAL U26
      748 CAPTURE                          UPVAL U27
      749 CAPTURE                          UPVAL U28
      750 CAPTURE                          UPVAL U29
      751 CAPTURE                          UPVAL U30
      752 CAPTURE                          VAL R17
      753 SETTABLEKS                       R37 R36 K135 ["EntryClicked"]
      755 GETUPVAL                         R37 6
      756 GETTABLEKS                       R37 R37 K65 ["createElement"]
      758 GETUPVAL                         R38 31
      759 DUPTABLE                         R39 K174 [{["Size"], ["Position"], ["Style"] = "TooltipStyle", ["StyleModifier"]}]
      760 GETIMPORT                        R40 K176 [UDim2.fromOffset]
      762 GETTABLEKS                       R41 R2 K177 ["tooltipIcon"]
      764 GETTABLEKS                       R41 R41 K178 ["size"]
      766 GETTABLEKS                       R42 R2 K177 ["tooltipIcon"]
      768 GETTABLEKS                       R42 R42 K178 ["size"]
      770 CALL                             R40 2 1
      771 SETTABLEKS                       R40 R39 K148 ["Size"]
      773 GETIMPORT                        R40 K152 [UDim2.new]
      775 LOADN                            R41 0
      776 LOADN                            R42 0
      777 LOADN                            R43 0
      778 GETTABLEKS                       R44 R2 K177 ["tooltipIcon"]
      780 GETTABLEKS                       R44 R44 K155 ["paddingY"]
      782 CALL                             R40 4 1
      783 SETTABLEKS                       R40 R39 K149 ["Position"]
      785 GETTABLEKS                       R40 R0 K179 ["state"]
      787 GETTABLEKS                       R40 R40 K173 ["StyleModifier"]
      789 SETTABLEKS                       R40 R39 K173 ["StyleModifier"]
      791 NEWTABLE                         R40 0 2
      793 GETUPVAL                         R41 6
      794 GETTABLEKS                       R41 R41 K65 ["createElement"]
      796 GETUPVAL                         R42 32
      797 DUPTABLE                         R43 K180 [{"Text"}]
      798 GETUPVAL                         R46 5
      799 LOADK                            R47 K136 ["Tooltip"]
      800 NAMECALL                         R44 R3 K37 ["getText"]
      802 CALL                             R44 3 1
      803 SETTABLEKS                       R44 R43 K25 ["Text"]
      805 CALL                             R41 2 1
      806 GETUPVAL                         R42 6
      807 GETTABLEKS                       R42 R42 K65 ["createElement"]
      809 GETUPVAL                         R43 33
      810 DUPTABLE                         R44 K185 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      811 GETTABLEKS                       R45 R0 K186 ["onMouseEnter"]
      813 SETTABLEKS                       R45 R44 K183 ["MouseEnter"]
      815 GETTABLEKS                       R45 R0 K187 ["onMouseLeave"]
      817 SETTABLEKS                       R45 R44 K184 ["MouseLeave"]
      819 CALL                             R42 2 -1
      820 SETLIST                          R40 R41 -1 [1]
      822 CALL                             R37 3 1
      823 SETTABLEKS                       R37 R36 K136 ["Tooltip"]
      825 CALL                             R34 2 1
      826 SETTABLEKS                       R34 R31 K15 ["OptInLocations"]
      828 GETUPVAL                         R34 6
      829 GETTABLEKS                       R34 R34 K65 ["createElement"]
      831 GETUPVAL                         R35 34
      832 DUPTABLE                         R36 K195 [{["Enabled"], ["Modal"] = True, ["Title"] = "", ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["ButtonHorizontalAlignment"]}]
      833 GETTABLEKS                       R37 R0 K179 ["state"]
      835 GETTABLEKS                       R37 R37 K196 ["showDialog"]
      837 SETTABLEKS                       R37 R36 K134 ["Enabled"]
      839 GETIMPORT                        R37 K198 [Vector2.new]
      841 GETTABLEKS                       R38 R2 K199 ["dialog"]
      843 GETTABLEKS                       R38 R38 K200 ["minSize"]
      845 GETTABLEKS                       R38 R38 K100 ["width"]
      847 GETTABLEKS                       R39 R2 K199 ["dialog"]
      849 GETTABLEKS                       R39 R39 K200 ["minSize"]
      851 GETTABLEKS                       R39 R39 K140 ["height"]
      853 CALL                             R37 2 1
      854 SETTABLEKS                       R37 R36 K190 ["MinContentSize"]
      856 NEWTABLE                         R37 0 1
      858 DUPTABLE                         R38 K202 [{["Key"] = "OK", ["Text"]}]
      859 LOADK                            R41 K203 ["General"]
      860 LOADK                            R42 K204 ["ReplyOK"]
      861 NAMECALL                         R39 R3 K37 ["getText"]
      863 CALL                             R39 3 1
      864 SETTABLEKS                       R39 R38 K25 ["Text"]
      866 SETLIST                          R37 R38 1 [1]
      868 SETTABLEKS                       R37 R36 K191 ["Buttons"]
      870 NEWCLOSURE                       R37 P9
      871 CAPTURE                          VAL R0
      872 CAPTURE                          UPVAL U35
      873 CAPTURE                          UPVAL U27
      874 CAPTURE                          UPVAL U28
      875 CAPTURE                          UPVAL U29
      876 CAPTURE                          UPVAL U36
      877 SETTABLEKS                       R37 R36 K192 ["OnButtonPressed"]
      879 NEWCLOSURE                       R37 P10
      880 CAPTURE                          VAL R0
      881 CAPTURE                          UPVAL U35
      882 CAPTURE                          UPVAL U27
      883 CAPTURE                          UPVAL U28
      884 CAPTURE                          UPVAL U29
      885 CAPTURE                          UPVAL U36
      886 SETTABLEKS                       R37 R36 K193 ["OnClose"]
      888 GETIMPORT                        R37 K207 [Enum.HorizontalAlignment.Center]
      890 SETTABLEKS                       R37 R36 K194 ["ButtonHorizontalAlignment"]
      892 DUPTABLE                         R37 K209 [{"Layout", "Header", "Body"}]
      893 GETUPVAL                         R38 6
      894 GETTABLEKS                       R38 R38 K65 ["createElement"]
      896 LOADK                            R39 K210 ["UIListLayout"]
      897 DUPTABLE                         R40 K214 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder"}]
      898 GETIMPORT                        R41 K216 [Enum.FillDirection.Vertical]
      900 SETTABLEKS                       R41 R40 K211 ["FillDirection"]
      902 GETIMPORT                        R41 K217 [Enum.VerticalAlignment.Center]
      904 SETTABLEKS                       R41 R40 K212 ["VerticalAlignment"]
      906 GETIMPORT                        R41 K207 [Enum.HorizontalAlignment.Center]
      908 SETTABLEKS                       R41 R40 K205 ["HorizontalAlignment"]
      910 GETIMPORT                        R41 K218 [Enum.SortOrder.LayoutOrder]
      912 SETTABLEKS                       R41 R40 K213 ["SortOrder"]
      914 CALL                             R38 2 1
      915 SETTABLEKS                       R38 R37 K208 ["Layout"]
      917 GETUPVAL                         R38 6
      918 GETTABLEKS                       R38 R38 K65 ["createElement"]
      920 LOADK                            R39 K219 ["TextLabel"]
      921 GETUPVAL                         R40 0
      922 GETTABLEKS                       R40 R40 K220 ["Dictionary"]
      924 GETTABLEKS                       R40 R40 K221 ["join"]
      926 GETTABLEKS                       R41 R2 K222 ["fontStyle"]
      928 GETTABLEKS                       R41 R41 K66 ["Title"]
      930 DUPTABLE                         R42 K225 [{["Position"], ["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True}]
      931 GETIMPORT                        R43 K152 [UDim2.new]
      933 LOADK                            R44 K226 [0.5]
      934 LOADN                            R45 0
      935 LOADN                            R46 0
      936 LOADN                            R47 45
      937 CALL                             R43 4 1
      938 SETTABLEKS                       R43 R42 K149 ["Position"]
      940 GETIMPORT                        R43 K198 [Vector2.new]
      942 LOADK                            R44 K226 [0.5]
      943 LOADK                            R45 K226 [0.5]
      944 CALL                             R43 2 1
      945 SETTABLEKS                       R43 R42 K223 ["AnchorPoint"]
      947 GETIMPORT                        R43 K152 [UDim2.new]
      949 LOADN                            R44 1
      950 LOADN                            R45 0
      951 LOADN                            R46 0
      952 LOADN                            R47 60
      953 CALL                             R43 4 1
      954 SETTABLEKS                       R43 R42 K148 ["Size"]
      956 LOADK                            R45 K203 ["General"]
      957 LOADK                            R46 K227 ["TermsDialogHeader"]
      958 NAMECALL                         R43 R3 K37 ["getText"]
      960 CALL                             R43 3 1
      961 SETTABLEKS                       R43 R42 K25 ["Text"]
      963 CALL                             R40 2 -1
      964 CALL                             R38 -1 1
      965 SETTABLEKS                       R38 R37 K58 ["Header"]
      967 GETUPVAL                         R38 6
      968 GETTABLEKS                       R38 R38 K65 ["createElement"]
      970 GETUPVAL                         R39 37
      971 DUPTABLE                         R40 K232 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["TextProps"]}]
      972 DUPCLOSURE                       R41 K233 [PROTO_11]
      973 CAPTURE                          UPVAL U38
      974 CAPTURE                          UPVAL U14
      975 SETTABLEKS                       R41 R40 K113 ["OnLinkClicked"]
      977 LOADK                            R43 K203 ["General"]
      978 LOADK                            R44 K234 ["TermsDialogBody"]
      979 NAMECALL                         R41 R3 K37 ["getText"]
      981 CALL                             R41 3 1
      982 SETTABLEKS                       R41 R40 K25 ["Text"]
      984 LOADK                            R43 K203 ["General"]
      985 LOADK                            R44 K235 ["TermsDialogBodyLink"]
      986 NAMECALL                         R41 R3 K37 ["getText"]
      988 CALL                             R41 3 1
      989 SETTABLEKS                       R41 R40 K112 ["LinkText"]
      991 GETTABLEKS                       R41 R2 K236 ["textWithInlineLink"]
      993 GETTABLEKS                       R41 R41 K237 ["maxWidth"]
      995 SETTABLEKS                       R41 R40 K230 ["MaxWidth"]
      997 GETUPVAL                         R41 0
      998 GETTABLEKS                       R41 R41 K220 ["Dictionary"]
     1000 GETTABLEKS                       R41 R41 K221 ["join"]
     1002 GETTABLEKS                       R42 R2 K222 ["fontStyle"]
     1004 GETTABLEKS                       R42 R42 K238 ["Normal"]
     1006 DUPTABLE                         R43 K239 [{["BackgroundTransparency"] = 1}]
     1007 CALL                             R41 2 1
     1008 SETTABLEKS                       R41 R40 K231 ["TextProps"]
     1010 CALL                             R38 2 1
     1011 SETTABLEKS                       R38 R37 K159 ["Body"]
     1013 CALL                             R34 3 1
     1014 SETTABLEKS                       R34 R31 K240 ["Dialog"]
     1016 RETURN                           R31 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["teamCreateEnabled"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["dataSharingEnabled"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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
       15 LOADK                            R4 K6 ["COLLAB6850FixTextInputCrash"]
       16 NAMECALL                         R2 R2 K7 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K8 ["COLLAB9041NewTeamCreateDisabled"]
       22 NAMECALL                         R3 R3 K7 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K10 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["Parent"]
       33 GETIMPORT                        R5 K13 [require]
       35 GETTABLEKS                       R6 R4 K14 ["Packages"]
       37 GETTABLEKS                       R6 R6 K15 ["Roact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K13 [require]
       42 GETTABLEKS                       R7 R4 K14 ["Packages"]
       44 GETTABLEKS                       R7 R7 K16 ["Cryo"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K13 [require]
       49 GETTABLEKS                       R8 R4 K14 ["Packages"]
       51 GETTABLEKS                       R8 R8 K17 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K18 ["UI"]
       56 GETTABLEKS                       R9 R8 K19 ["HoverArea"]
       58 GETTABLEKS                       R10 R8 K20 ["LinkText"]
       60 GETTABLEKS                       R11 R8 K21 ["SelectInput"]
       62 GETTABLEKS                       R12 R7 K18 ["UI"]
       64 GETTABLEKS                       R12 R12 K22 ["Separator"]
       66 GETTABLEKS                       R13 R8 K23 ["Image"]
       68 GETTABLEKS                       R14 R8 K24 ["StyledDialog"]
       70 GETTABLEKS                       R15 R8 K25 ["TextLabel"]
       72 GETTABLEKS                       R16 R8 K26 ["TextInput"]
       74 GETTABLEKS                       R17 R8 K27 ["TextWithInlineLink"]
       76 GETTABLEKS                       R18 R8 K28 ["Tooltip"]
       78 GETTABLEKS                       R19 R8 K29 ["TitledFrame"]
       80 GETTABLEKS                       R20 R7 K30 ["Dash"]
       82 GETIMPORT                        R21 K13 [require]
       84 GETTABLEKS                       R22 R4 K31 ["Src"]
       86 GETTABLEKS                       R22 R22 K32 ["Components"]
       88 GETTABLEKS                       R22 R22 K33 ["TeachingCallout"]
       90 CALL                             R21 1 1
       91 GETIMPORT                        R22 K13 [require]
       93 GETTABLEKS                       R23 R4 K31 ["Src"]
       95 GETTABLEKS                       R23 R23 K32 ["Components"]
       97 GETTABLEKS                       R23 R23 K34 ["Header"]
       99 CALL                             R22 1 1
      100 GETIMPORT                        R23 K13 [require]
      102 GETTABLEKS                       R24 R4 K31 ["Src"]
      104 GETTABLEKS                       R24 R24 K32 ["Components"]
      106 GETTABLEKS                       R24 R24 K35 ["PlatformSelect"]
      108 CALL                             R23 1 1
      109 GETIMPORT                        R24 K13 [require]
      111 GETTABLEKS                       R25 R4 K31 ["Src"]
      113 GETTABLEKS                       R25 R25 K32 ["Components"]
      115 GETTABLEKS                       R25 R25 K36 ["CheckBoxSet"]
      117 CALL                             R24 1 1
      118 GETIMPORT                        R25 K13 [require]
      120 GETTABLEKS                       R26 R4 K31 ["Src"]
      122 GETTABLEKS                       R26 R26 K32 ["Components"]
      124 GETTABLEKS                       R26 R26 K37 ["ToggleButtonWithTitle"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K13 [require]
      129 GETTABLEKS                       R27 R4 K31 ["Src"]
      131 GETTABLEKS                       R27 R27 K38 ["Thunks"]
      133 GETTABLEKS                       R27 R27 K39 ["GetPlayerAcceptances"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K13 [require]
      138 GETTABLEKS                       R28 R4 K31 ["Src"]
      140 GETTABLEKS                       R28 R28 K40 ["Actions"]
      142 GETTABLEKS                       R28 R28 K41 ["AddChange"]
      144 CALL                             R27 1 1
      145 GETIMPORT                        R28 K13 [require]
      147 GETTABLEKS                       R29 R4 K31 ["Src"]
      149 GETTABLEKS                       R29 R29 K40 ["Actions"]
      151 GETTABLEKS                       R29 R29 K42 ["AddErrors"]
      153 CALL                             R28 1 1
      154 GETIMPORT                        R29 K13 [require]
      156 GETTABLEKS                       R30 R4 K31 ["Src"]
      158 GETTABLEKS                       R30 R30 K40 ["Actions"]
      160 GETTABLEKS                       R30 R30 K43 ["SetSelectedGroup"]
      162 CALL                             R29 1 1
      163 GETIMPORT                        R30 K13 [require]
      165 GETTABLEKS                       R31 R4 K31 ["Src"]
      167 GETTABLEKS                       R31 R31 K44 ["Resources"]
      169 GETTABLEKS                       R31 R31 K45 ["Constants"]
      171 CALL                             R30 1 1
      172 GETIMPORT                        R31 K13 [require]
      174 GETTABLEKS                       R32 R4 K31 ["Src"]
      176 GETTABLEKS                       R32 R32 K32 ["Components"]
      178 GETTABLEKS                       R32 R32 K46 ["createMenuPage"]
      180 CALL                             R31 1 1
      181 GETIMPORT                        R32 K1 [game]
      183 LOADK                            R34 K47 ["GuiService"]
      184 NAMECALL                         R32 R32 K48 ["GetService"]
      186 CALL                             R32 2 1
      187 GETIMPORT                        R33 K13 [require]
      189 GETTABLEKS                       R34 R4 K31 ["Src"]
      191 GETTABLEKS                       R34 R34 K49 ["Util"]
      193 GETTABLEKS                       R34 R34 K50 ["PublishPlaceAsUtilities"]
      195 CALL                             R33 1 1
      196 GETTABLEKS                       R33 R33 K51 ["shouldShowDevPublishLocations"]
      198 GETIMPORT                        R34 K13 [require]
      200 GETTABLEKS                       R35 R4 K31 ["Src"]
      202 GETTABLEKS                       R35 R35 K49 ["Util"]
      204 GETTABLEKS                       R35 R35 K52 ["AudienceUtils"]
      206 CALL                             R34 1 1
      207 GETTABLEKS                       R34 R34 K53 ["audiencesAreEditorsOnly"]
      209 GETIMPORT                        R35 K13 [require]
      211 GETTABLEKS                       R36 R4 K31 ["Src"]
      213 GETTABLEKS                       R36 R36 K54 ["Flags"]
      215 GETTABLEKS                       R36 R36 K55 ["getFFlagPublishPlaceAsAudiencesReplacement"]
      217 CALL                             R35 1 1
      218 GETIMPORT                        R36 K13 [require]
      220 GETTABLEKS                       R37 R4 K31 ["Src"]
      222 GETTABLEKS                       R37 R37 K49 ["Util"]
      224 GETTABLEKS                       R37 R37 K50 ["PublishPlaceAsUtilities"]
      226 CALL                             R36 1 1
      227 GETTABLEKS                       R36 R36 K56 ["getOptInLocationsRequirementsLink"]
      229 GETIMPORT                        R37 K13 [require]
      231 GETTABLEKS                       R38 R4 K31 ["Src"]
      233 GETTABLEKS                       R38 R38 K49 ["Util"]
      235 GETTABLEKS                       R38 R38 K50 ["PublishPlaceAsUtilities"]
      237 CALL                             R37 1 1
      238 GETTABLEKS                       R37 R37 K57 ["sendAnalyticsToKibana"]
      240 GETIMPORT                        R38 K13 [require]
      242 GETTABLEKS                       R39 R4 K31 ["Src"]
      244 GETTABLEKS                       R39 R39 K49 ["Util"]
      246 GETTABLEKS                       R39 R39 K50 ["PublishPlaceAsUtilities"]
      248 CALL                             R38 1 1
      249 GETTABLEKS                       R38 R38 K58 ["getPlayerAppDownloadLink"]
      251 GETIMPORT                        R39 K13 [require]
      253 GETTABLEKS                       R40 R4 K31 ["Src"]
      255 GETTABLEKS                       R40 R40 K49 ["Util"]
      257 GETTABLEKS                       R40 R40 K50 ["PublishPlaceAsUtilities"]
      259 CALL                             R39 1 1
      260 GETTABLEKS                       R39 R39 K59 ["calculateTextSize"]
      262 GETIMPORT                        R40 K13 [require]
      264 GETTABLEKS                       R41 R4 K31 ["Src"]
      266 GETTABLEKS                       R41 R41 K49 ["Util"]
      268 GETTABLEKS                       R41 R41 K60 ["KeyProvider"]
      270 CALL                             R40 1 1
      271 GETTABLEKS                       R41 R40 K61 ["getOptInLocationsKeyName"]
      273 CALL                             R41 0 1
      274 GETTABLEKS                       R42 R40 K62 ["getChinaKeyName"]
      276 CALL                             R42 0 1
      277 GETTABLEKS                       R43 R40 K63 ["getLuobuStudioDevPublishKeyName"]
      279 CALL                             R43 0 1
      280 GETTABLEKS                       R44 R40 K64 ["getCheckboxToggleKeyName"]
      282 CALL                             R44 0 1
      283 GETTABLEKS                       R45 R40 K65 ["getSelectedKeyName"]
      285 CALL                             R45 0 1
      286 GETTABLEKS                       R46 R40 K66 ["getTermsOfUseDialogKeyName"]
      288 CALL                             R46 0 1
      289 GETTABLEKS                       R47 R40 K67 ["getButtonClickedKeyName"]
      291 CALL                             R47 0 1
      292 GETTABLEKS                       R48 R7 K49 ["Util"]
      294 GETTABLEKS                       R48 R48 K68 ["LayoutOrderIterator"]
      296 GETIMPORT                        R49 K13 [require]
      298 GETTABLEKS                       R50 R4 K31 ["Src"]
      300 GETTABLEKS                       R50 R50 K32 ["Components"]
      302 GETTABLEKS                       R50 R50 K69 ["DataSharingToggle"]
      304 CALL                             R49 1 1
      305 LOADB                            R50 0
      306 NEWCLOSURE                       R51 P0
      307 CAPTURE                          VAL R6
      308 CAPTURE                          VAL R30
      309 CAPTURE                          REF R50
      310 CAPTURE                          VAL R48
      311 CAPTURE                          VAL R39
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R5
      314 CAPTURE                          VAL R22
      315 CAPTURE                          VAL R19
      316 CAPTURE                          VAL R16
      317 CAPTURE                          VAL R12
      318 CAPTURE                          VAL R11
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R25
      321 CAPTURE                          VAL R32
      322 CAPTURE                          VAL R1
      323 CAPTURE                          VAL R3
      324 CAPTURE                          VAL R21
      325 CAPTURE                          VAL R20
      326 CAPTURE                          VAL R49
      327 CAPTURE                          VAL R33
      328 CAPTURE                          VAL R24
      329 CAPTURE                          VAL R42
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R10
      332 CAPTURE                          VAL R36
      333 CAPTURE                          VAL R45
      334 CAPTURE                          VAL R37
      335 CAPTURE                          VAL R43
      336 CAPTURE                          VAL R0
      337 CAPTURE                          VAL R44
      338 CAPTURE                          VAL R13
      339 CAPTURE                          VAL R18
      340 CAPTURE                          VAL R9
      341 CAPTURE                          VAL R14
      342 CAPTURE                          VAL R47
      343 CAPTURE                          VAL R46
      344 CAPTURE                          VAL R17
      345 CAPTURE                          VAL R38
      346 DUPCLOSURE                       R52 K70 [PROTO_13]
      347 CAPTURE                          VAL R35
      348 CAPTURE                          VAL R34
      349 CAPTURE                          VAL R33
      350 CAPTURE                          VAL R41
      351 DUPCLOSURE                       R53 K71 [PROTO_22]
      352 CAPTURE                          VAL R2
      353 CAPTURE                          VAL R28
      354 CAPTURE                          VAL R27
      355 CAPTURE                          VAL R33
      356 CAPTURE                          VAL R41
      357 CAPTURE                          VAL R35
      358 CAPTURE                          VAL R26
      359 CAPTURE                          VAL R29
      360 MOVE                             R54 R31
      361 MOVE                             R55 R52
      362 MOVE                             R56 R53
      363 CALL                             R54 2 1
      364 DUPCLOSURE                       R55 K72 [PROTO_23]
      365 CAPTURE                          VAL R5
      366 CAPTURE                          VAL R54
      367 CAPTURE                          VAL R51
      368 CLOSEUPVALS                      R50
      369 RETURN                           R55 1
