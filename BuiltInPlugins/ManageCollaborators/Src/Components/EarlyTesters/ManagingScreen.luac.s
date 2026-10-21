PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["username"]
        2 GETTABLEKS                       R4 R1 K0 ["username"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["GroupId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K1 ["PendingMembers"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       11 MOVE                             R9 R2
       12 MOVE                             R10 R7
       13 GETIMPORT                        R8 K4 [table.insert]
       15 CALL                             R8 2 0
       16 FORGLOOP                         R3 2 ; [-8]
       18 GETIMPORT                        R3 K6 [table.sort]
       20 MOVE                             R4 R2
       21 DUPCLOSURE                       R5 K7 [PROTO_0]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R4 R0 K9 ["PendingRoleName"]
       25 ORK                              R3 R4 K8 ["this role"]
       26 LENGTH                           R5 R2
       27 GETUPVAL                         R6 0
       28 JUMPIFLE                         R6 R5 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 GETTABLEKS                       R5 R0 K10 ["OnOpenRolePicker"]
       34 GETTABLEKS                       R6 R0 K11 ["MemberEligibility"]
       36 JUMPIF                           R6 ; [+2]
       37 NEWTABLE                         R6 0 0
       39 NEWTABLE                         R7 0 0
       41 MOVE                             R8 R2
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 FORGPREP                         R8
       45 LOADK                            R14 K12 ["Member"]
       46 GETTABLEKS                       R15 R12 K13 ["userId"]
       48 CONCAT                           R13 R14 R15
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R14 R14 K14 ["createElement"]
       52 GETUPVAL                         R15 2
       53 DUPTABLE                         R16 K18 [{"LayoutOrder", "Member", "IsIneligible", "Localization", "OnRemoved"}]
       54 SETTABLEKS                       R11 R16 K15 ["LayoutOrder"]
       56 SETTABLEKS                       R12 R16 K12 ["Member"]
       58 GETTABLEKS                       R19 R12 K13 ["userId"]
       60 GETTABLE                         R18 R6 R19
       61 JUMPIFEQKB                       R18 FALSE ; [+2]
       63 LOADB                            R17 0 +1
       64 LOADB                            R17 1
       65 SETTABLEKS                       R17 R16 K16 ["IsIneligible"]
       67 SETTABLEKS                       R1 R16 K0 ["Localization"]
       69 GETTABLEKS                       R17 R0 K19 ["OnRemoveMember"]
       71 SETTABLEKS                       R17 R16 K17 ["OnRemoved"]
       73 CALL                             R14 2 1
       74 SETTABLE                         R14 R7 R13
       75 FORGLOOP                         R8 2 ; [-31]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K14 ["createElement"]
       80 GETUPVAL                         R9 3
       81 DUPTABLE                         R10 K22 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       82 GETTABLEKS                       R11 R0 K15 ["LayoutOrder"]
       84 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       86 DUPTABLE                         R11 K26 [{"Header", "ErrorText", "MemberList"}]
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R12 R12 K14 ["createElement"]
       90 GETUPVAL                         R13 3
       91 DUPTABLE                         R14 K29 [{["LayoutOrder"] = 1, ["tag"] = "col gap-medium size-full-0 auto-y padding-top-small"}]
       92 DUPTABLE                         R15 K33 [{"Title", "RoleDropdown", "AddFriendsButton"}]
       93 GETUPVAL                         R16 1
       94 GETTABLEKS                       R16 R16 K14 ["createElement"]
       96 GETUPVAL                         R17 4
       97 DUPTABLE                         R18 K36 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-label-large content-emphasis", ["Text"]}]
       98 LOADK                            R21 K37 ["Heading"]
       99 LOADK                            R22 K38 ["ManageRole"]
      100 NAMECALL                         R19 R1 K39 ["getText"]
      102 CALL                             R19 3 1
      103 SETTABLEKS                       R19 R18 K35 ["Text"]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K30 ["Title"]
      108 GETUPVAL                         R16 1
      109 GETTABLEKS                       R16 R16 K14 ["createElement"]
      111 GETUPVAL                         R17 3
      112 DUPTABLE                         R18 K44 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-y-center gap-small auto-y padding-medium stroke-standard stroke-emphasis radius-medium", ["onActivated"]}]
      113 GETIMPORT                        R19 K47 [UDim2.new]
      115 LOADN                            R20 0
      116 LOADN                            R21 240
      117 LOADN                            R22 0
      118 LOADN                            R23 0
      119 CALL                             R19 4 1
      120 SETTABLEKS                       R19 R18 K41 ["Size"]
      122 JUMPIFEQKNIL                     R5 ; [+5]
      124 NEWCLOSURE                       R19 P1
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R0
      127 JUMP                             ; [+1]
      128 LOADNIL                          R19
      129 SETTABLEKS                       R19 R18 K43 ["onActivated"]
      131 DUPTABLE                         R19 K50 [{"Icon", "Text", "Chevron"}]
      132 GETUPVAL                         R20 1
      133 GETTABLEKS                       R20 R20 K14 ["createElement"]
      135 GETUPVAL                         R21 5
      136 DUPTABLE                         R22 K54 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
      137 GETTABLEKS                       R24 R0 K55 ["PendingRoleIsPrivate"]
      139 JUMPIFNOT                        R24 ; [+4]
      140 GETUPVAL                         R23 6
      141 GETTABLEKS                       R23 R23 K56 ["LockClosed"]
      143 JUMP                             ; [+3]
      144 GETUPVAL                         R23 6
      145 GETTABLEKS                       R23 R23 K57 ["PersonRectangleHorizontalLine"]
      147 SETTABLEKS                       R23 R22 K51 ["name"]
      149 GETUPVAL                         R23 7
      150 GETTABLEKS                       R23 R23 K58 ["Small"]
      152 SETTABLEKS                       R23 R22 K52 ["size"]
      154 DUPTABLE                         R23 K62 [{["Color3"], ["Transparency"] = 0}]
      155 GETIMPORT                        R24 K64 [Color3.fromHex]
      157 GETUPVAL                         R25 8
      158 GETTABLEKS                       R26 R0 K65 ["PendingRoleColor"]
      160 CALL                             R25 1 -1
      161 CALL                             R24 -1 1
      162 SETTABLEKS                       R24 R23 K59 ["Color3"]
      164 SETTABLEKS                       R23 R22 K53 ["style"]
      166 CALL                             R20 2 1
      167 SETTABLEKS                       R20 R19 K48 ["Icon"]
      169 GETUPVAL                         R20 1
      170 GETTABLEKS                       R20 R20 K14 ["createElement"]
      172 GETUPVAL                         R21 4
      173 DUPTABLE                         R22 K67 [{["LayoutOrder"] = 2, ["tag"] = "grow auto-y text-body-medium text-align-x-left text-truncate-split content-default", ["Text"]}]
      174 SETTABLEKS                       R3 R22 K35 ["Text"]
      176 CALL                             R20 2 1
      177 SETTABLEKS                       R20 R19 K35 ["Text"]
      179 JUMPIFEQKNIL                     R5 ; [+18]
      181 GETUPVAL                         R20 1
      182 GETTABLEKS                       R20 R20 K14 ["createElement"]
      184 GETUPVAL                         R21 5
      185 DUPTABLE                         R22 K69 [{["LayoutOrder"] = 3, ["name"], ["size"]}]
      186 GETUPVAL                         R23 6
      187 GETTABLEKS                       R23 R23 K70 ["ChevronLargeDown"]
      189 SETTABLEKS                       R23 R22 K51 ["name"]
      191 GETUPVAL                         R23 7
      192 GETTABLEKS                       R23 R23 K58 ["Small"]
      194 SETTABLEKS                       R23 R22 K52 ["size"]
      196 CALL                             R20 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R20
      199 SETTABLEKS                       R20 R19 K49 ["Chevron"]
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K31 ["RoleDropdown"]
      204 JUMPIFNOT                        R4 ; [+36]
      205 GETUPVAL                         R16 1
      206 GETTABLEKS                       R16 R16 K14 ["createElement"]
      208 GETUPVAL                         R17 9
      209 DUPTABLE                         R18 K74 [{["title"] = "", ["text"], ["LayoutOrder"] = 3}]
      210 LOADK                            R21 K75 ["Error"]
      211 LOADK                            R22 K76 ["EarlyTesterLimit"]
      212 NAMECALL                         R19 R1 K39 ["getText"]
      214 CALL                             R19 3 1
      215 SETTABLEKS                       R19 R18 K73 ["text"]
      217 GETUPVAL                         R19 1
      218 GETTABLEKS                       R19 R19 K14 ["createElement"]
      220 GETUPVAL                         R20 10
      221 DUPTABLE                         R21 K80 [{["text"], ["variant"], ["size"] = "Small", ["isDisabled"] = True, ["onActivated"]}]
      222 LOADK                            R24 K81 ["Button"]
      223 LOADK                            R25 K82 ["AddRoleMembers"]
      224 NAMECALL                         R22 R1 K39 ["getText"]
      226 CALL                             R22 3 1
      227 SETTABLEKS                       R22 R21 K73 ["text"]
      229 GETUPVAL                         R22 11
      230 GETTABLEKS                       R22 R22 K83 ["Standard"]
      232 SETTABLEKS                       R22 R21 K77 ["variant"]
      234 GETTABLEKS                       R22 R0 K84 ["OnOpenAddFriends"]
      236 SETTABLEKS                       R22 R21 K43 ["onActivated"]
      238 CALL                             R19 2 -1
      239 CALL                             R16 -1 1
      240 JUMP                             ; [+22]
      241 GETUPVAL                         R16 1
      242 GETTABLEKS                       R16 R16 K14 ["createElement"]
      244 GETUPVAL                         R17 10
      245 DUPTABLE                         R18 K85 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["size"] = "Small", ["onActivated"]}]
      246 LOADK                            R21 K81 ["Button"]
      247 LOADK                            R22 K82 ["AddRoleMembers"]
      248 NAMECALL                         R19 R1 K39 ["getText"]
      250 CALL                             R19 3 1
      251 SETTABLEKS                       R19 R18 K73 ["text"]
      253 GETUPVAL                         R19 11
      254 GETTABLEKS                       R19 R19 K83 ["Standard"]
      256 SETTABLEKS                       R19 R18 K77 ["variant"]
      258 GETTABLEKS                       R19 R0 K84 ["OnOpenAddFriends"]
      260 SETTABLEKS                       R19 R18 K43 ["onActivated"]
      262 CALL                             R16 2 1
      263 SETTABLEKS                       R16 R15 K32 ["AddFriendsButton"]
      265 CALL                             R12 3 1
      266 SETTABLEKS                       R12 R11 K23 ["Header"]
      268 GETTABLEKS                       R13 R0 K86 ["SaveError"]
      270 JUMPIFEQKNIL                     R13 ; [+19]
      272 GETUPVAL                         R12 1
      273 GETTABLEKS                       R12 R12 K14 ["createElement"]
      275 GETUPVAL                         R13 4
      276 DUPTABLE                         R14 K88 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small text-wrap content-alert", ["Text"]}]
      277 GETTABLEKS                       R17 R0 K86 ["SaveError"]
      279 LOADK                            R19 K89 ["^(.-)%.(.+)$"]
      280 NAMECALL                         R17 R17 K90 ["match"]
      282 CALL                             R17 2 -1
      283 NAMECALL                         R15 R1 K39 ["getText"]
      285 CALL                             R15 -1 1
      286 SETTABLEKS                       R15 R14 K35 ["Text"]
      288 CALL                             R12 2 1
      289 JUMP                             ; [+1]
      290 LOADNIL                          R12
      291 SETTABLEKS                       R12 R11 K24 ["ErrorText"]
      293 LENGTH                           R13 R2
      294 LOADN                            R14 0
      295 JUMPIFNOTLT                      R14 R13 ; [+11]
      297 GETUPVAL                         R12 1
      298 GETTABLEKS                       R12 R12 K14 ["createElement"]
      300 GETUPVAL                         R13 12
      301 GETTABLEKS                       R13 R13 K91 ["Root"]
      303 DUPTABLE                         R14 K92 [{["LayoutOrder"] = 3}]
      304 MOVE                             R15 R7
      305 CALL                             R12 3 1
      306 JUMP                             ; [+68]
      307 GETUPVAL                         R12 1
      308 GETTABLEKS                       R12 R12 K14 ["createElement"]
      310 GETUPVAL                         R13 3
      311 DUPTABLE                         R14 K94 [{["LayoutOrder"] = 3, ["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
      312 GETIMPORT                        R15 K47 [UDim2.new]
      314 LOADN                            R16 1
      315 LOADN                            R17 0
      316 LOADN                            R18 0
      317 LOADN                            R19 260
      318 CALL                             R15 4 1
      319 SETTABLEKS                       R15 R14 K41 ["Size"]
      321 DUPTABLE                         R15 K98 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle"}]
      322 GETUPVAL                         R16 1
      323 GETTABLEKS                       R16 R16 K14 ["createElement"]
      325 GETUPVAL                         R17 5
      326 DUPTABLE                         R18 K99 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      327 GETUPVAL                         R19 6
      328 GETTABLEKS                       R19 R19 K100 ["Person"]
      330 SETTABLEKS                       R19 R18 K51 ["name"]
      332 GETUPVAL                         R19 7
      333 GETTABLEKS                       R19 R19 K101 ["XXLarge"]
      335 SETTABLEKS                       R19 R18 K52 ["size"]
      337 CALL                             R16 2 1
      338 SETTABLEKS                       R16 R15 K95 ["EmptyIcon"]
      340 GETUPVAL                         R16 1
      341 GETTABLEKS                       R16 R16 K14 ["createElement"]
      343 GETUPVAL                         R17 4
      344 DUPTABLE                         R18 K103 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
      345 LOADK                            R21 K104 ["AudienceTabs"]
      346 LOADK                            R22 K105 ["NoEarlyTesters"]
      347 NAMECALL                         R19 R1 K39 ["getText"]
      349 CALL                             R19 3 1
      350 SETTABLEKS                       R19 R18 K35 ["Text"]
      352 CALL                             R16 2 1
      353 SETTABLEKS                       R16 R15 K96 ["EmptyTitle"]
      355 GETUPVAL                         R16 1
      356 GETTABLEKS                       R16 R16 K14 ["createElement"]
      358 GETUPVAL                         R17 4
      359 DUPTABLE                         R18 K107 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      360 LOADK                            R21 K104 ["AudienceTabs"]
      361 LOADK                            R22 K108 ["PlayTesterLimit"]
      362 DUPTABLE                         R23 K110 [{"maxNumPlayTesters"}]
      363 GETUPVAL                         R24 0
      364 SETTABLEKS                       R24 R23 K109 ["maxNumPlayTesters"]
      366 NAMECALL                         R19 R1 K39 ["getText"]
      368 CALL                             R19 4 1
      369 SETTABLEKS                       R19 R18 K35 ["Text"]
      371 CALL                             R16 2 1
      372 SETTABLEKS                       R16 R15 K97 ["EmptySubtitle"]
      374 CALL                             R12 3 1
      375 SETTABLEKS                       R12 R11 K25 ["MemberList"]
      377 CALL                             R8 3 -1
      378 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["View"]
       27 GETTABLEKS                       R4 R2 K9 ["Text"]
       29 GETTABLEKS                       R5 R2 K10 ["Icon"]
       31 GETTABLEKS                       R6 R2 K11 ["Button"]
       33 GETTABLEKS                       R7 R2 K12 ["List"]
       35 GETTABLEKS                       R8 R2 K13 ["Tooltip"]
       37 GETTABLEKS                       R9 R2 K14 ["Enums"]
       39 GETTABLEKS                       R9 R9 K15 ["ButtonVariant"]
       41 GETTABLEKS                       R10 R2 K14 ["Enums"]
       43 GETTABLEKS                       R10 R10 K16 ["IconName"]
       45 GETTABLEKS                       R11 R2 K14 ["Enums"]
       47 GETTABLEKS                       R11 R11 K17 ["IconSize"]
       49 GETIMPORT                        R12 K4 [require]
       51 GETTABLEKS                       R13 R0 K18 ["Src"]
       53 GETTABLEKS                       R13 R13 K19 ["Components"]
       55 GETTABLEKS                       R13 R13 K20 ["EarlyTesters"]
       57 GETTABLEKS                       R13 R13 K21 ["EarlyTesterMemberRow"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K4 [require]
       62 GETTABLEKS                       R14 R0 K18 ["Src"]
       64 GETTABLEKS                       R14 R14 K22 ["Controllers"]
       66 GETTABLEKS                       R14 R14 K23 ["EarlyTesterController"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K4 [require]
       71 GETTABLEKS                       R15 R0 K18 ["Src"]
       73 GETTABLEKS                       R15 R15 K24 ["Types"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K4 [require]
       78 GETTABLEKS                       R16 R0 K18 ["Src"]
       80 GETTABLEKS                       R16 R16 K25 ["Util"]
       82 GETTABLEKS                       R16 R16 K26 ["GetGroupRoleColor"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R13 K27 ["MAX_EARLY_TESTER_MEMBERS"]
       87 DUPCLOSURE                       R17 K28 [PROTO_2]
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R7
      101 RETURN                           R17 1
