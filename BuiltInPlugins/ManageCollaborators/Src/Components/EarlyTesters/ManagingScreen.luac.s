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
       32 GETTABLEKS                       R6 R0 K10 ["IsAddDisabled"]
       34 JUMPIFNOT                        R6 ; [+2]
       35 LOADNIL                          R5
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R5 R0 K11 ["OnOpenRolePicker"]
       39 GETTABLEKS                       R6 R0 K12 ["MemberEligibility"]
       41 JUMPIF                           R6 ; [+2]
       42 NEWTABLE                         R6 0 0
       44 NEWTABLE                         R7 0 0
       46 MOVE                             R8 R2
       47 LOADNIL                          R9
       48 LOADNIL                          R10
       49 FORGPREP                         R8
       50 LOADK                            R14 K13 ["Member"]
       51 GETTABLEKS                       R15 R12 K14 ["userId"]
       53 CONCAT                           R13 R14 R15
       54 GETUPVAL                         R14 1
       55 GETTABLEKS                       R14 R14 K15 ["createElement"]
       57 GETUPVAL                         R15 2
       58 DUPTABLE                         R16 K19 [{"LayoutOrder", "Member", "IsIneligible", "Localization", "OnRemoved"}]
       59 SETTABLEKS                       R11 R16 K16 ["LayoutOrder"]
       61 SETTABLEKS                       R12 R16 K13 ["Member"]
       63 GETTABLEKS                       R19 R12 K14 ["userId"]
       65 GETTABLE                         R18 R6 R19
       66 JUMPIFEQKB                       R18 FALSE ; [+2]
       68 LOADB                            R17 0 +1
       69 LOADB                            R17 1
       70 SETTABLEKS                       R17 R16 K17 ["IsIneligible"]
       72 SETTABLEKS                       R1 R16 K0 ["Localization"]
       74 GETTABLEKS                       R17 R0 K20 ["OnRemoveMember"]
       76 SETTABLEKS                       R17 R16 K18 ["OnRemoved"]
       78 CALL                             R14 2 1
       79 SETTABLE                         R14 R7 R13
       80 FORGLOOP                         R8 2 ; [-31]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K15 ["createElement"]
       85 GETUPVAL                         R9 3
       86 DUPTABLE                         R10 K23 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       87 GETTABLEKS                       R11 R0 K16 ["LayoutOrder"]
       89 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       91 DUPTABLE                         R11 K27 [{"Header", "ErrorText", "MemberList"}]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K15 ["createElement"]
       95 GETUPVAL                         R13 3
       96 DUPTABLE                         R14 K30 [{["LayoutOrder"] = 1, ["tag"] = "col gap-medium size-full-0 auto-y padding-top-small"}]
       97 DUPTABLE                         R15 K34 [{"Title", "RoleDropdown", "AddFriendsButton"}]
       98 GETUPVAL                         R16 1
       99 GETTABLEKS                       R16 R16 K15 ["createElement"]
      101 GETUPVAL                         R17 4
      102 DUPTABLE                         R18 K37 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-label-large content-emphasis", ["Text"]}]
      103 LOADK                            R21 K38 ["Heading"]
      104 LOADK                            R22 K39 ["ManageRole"]
      105 NAMECALL                         R19 R1 K40 ["getText"]
      107 CALL                             R19 3 1
      108 SETTABLEKS                       R19 R18 K36 ["Text"]
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K31 ["Title"]
      113 GETUPVAL                         R16 1
      114 GETTABLEKS                       R16 R16 K15 ["createElement"]
      116 GETUPVAL                         R17 3
      117 DUPTABLE                         R18 K45 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-y-center gap-small auto-y padding-medium stroke-standard stroke-emphasis radius-medium", ["onActivated"]}]
      118 GETIMPORT                        R19 K48 [UDim2.new]
      120 LOADN                            R20 0
      121 LOADN                            R21 240
      122 LOADN                            R22 0
      123 LOADN                            R23 0
      124 CALL                             R19 4 1
      125 SETTABLEKS                       R19 R18 K42 ["Size"]
      127 JUMPIFEQKNIL                     R5 ; [+5]
      129 NEWCLOSURE                       R19 P1
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R0
      132 JUMP                             ; [+1]
      133 LOADNIL                          R19
      134 SETTABLEKS                       R19 R18 K44 ["onActivated"]
      136 DUPTABLE                         R19 K51 [{"Icon", "Text", "Chevron"}]
      137 GETUPVAL                         R20 1
      138 GETTABLEKS                       R20 R20 K15 ["createElement"]
      140 GETUPVAL                         R21 5
      141 DUPTABLE                         R22 K55 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
      142 GETTABLEKS                       R24 R0 K56 ["PendingRoleIsPrivate"]
      144 JUMPIFNOT                        R24 ; [+4]
      145 GETUPVAL                         R23 6
      146 GETTABLEKS                       R23 R23 K57 ["LockClosed"]
      148 JUMP                             ; [+3]
      149 GETUPVAL                         R23 6
      150 GETTABLEKS                       R23 R23 K58 ["PersonRectangleHorizontalLine"]
      152 SETTABLEKS                       R23 R22 K52 ["name"]
      154 GETUPVAL                         R23 7
      155 GETTABLEKS                       R23 R23 K59 ["Small"]
      157 SETTABLEKS                       R23 R22 K53 ["size"]
      159 DUPTABLE                         R23 K63 [{["Color3"], ["Transparency"] = 0}]
      160 GETIMPORT                        R24 K65 [Color3.fromHex]
      162 GETUPVAL                         R25 8
      163 GETTABLEKS                       R26 R0 K66 ["PendingRoleColor"]
      165 CALL                             R25 1 -1
      166 CALL                             R24 -1 1
      167 SETTABLEKS                       R24 R23 K60 ["Color3"]
      169 SETTABLEKS                       R23 R22 K54 ["style"]
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K49 ["Icon"]
      174 GETUPVAL                         R20 1
      175 GETTABLEKS                       R20 R20 K15 ["createElement"]
      177 GETUPVAL                         R21 4
      178 DUPTABLE                         R22 K68 [{["LayoutOrder"] = 2, ["tag"] = "grow auto-y text-body-medium text-align-x-left text-truncate-split content-default", ["Text"]}]
      179 SETTABLEKS                       R3 R22 K36 ["Text"]
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K36 ["Text"]
      184 JUMPIFEQKNIL                     R5 ; [+18]
      186 GETUPVAL                         R20 1
      187 GETTABLEKS                       R20 R20 K15 ["createElement"]
      189 GETUPVAL                         R21 5
      190 DUPTABLE                         R22 K70 [{["LayoutOrder"] = 3, ["name"], ["size"]}]
      191 GETUPVAL                         R23 6
      192 GETTABLEKS                       R23 R23 K71 ["ChevronLargeDown"]
      194 SETTABLEKS                       R23 R22 K52 ["name"]
      196 GETUPVAL                         R23 7
      197 GETTABLEKS                       R23 R23 K59 ["Small"]
      199 SETTABLEKS                       R23 R22 K53 ["size"]
      201 CALL                             R20 2 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R20
      204 SETTABLEKS                       R20 R19 K50 ["Chevron"]
      206 CALL                             R16 3 1
      207 SETTABLEKS                       R16 R15 K32 ["RoleDropdown"]
      209 JUMPIFNOT                        R4 ; [+36]
      210 GETUPVAL                         R16 1
      211 GETTABLEKS                       R16 R16 K15 ["createElement"]
      213 GETUPVAL                         R17 9
      214 DUPTABLE                         R18 K75 [{["title"] = "", ["text"], ["LayoutOrder"] = 3}]
      215 LOADK                            R21 K76 ["Error"]
      216 LOADK                            R22 K77 ["EarlyTesterLimit"]
      217 NAMECALL                         R19 R1 K40 ["getText"]
      219 CALL                             R19 3 1
      220 SETTABLEKS                       R19 R18 K74 ["text"]
      222 GETUPVAL                         R19 1
      223 GETTABLEKS                       R19 R19 K15 ["createElement"]
      225 GETUPVAL                         R20 10
      226 DUPTABLE                         R21 K81 [{["text"], ["variant"], ["size"] = "Small", ["isDisabled"] = True, ["onActivated"]}]
      227 LOADK                            R24 K82 ["Button"]
      228 LOADK                            R25 K83 ["AddRoleMembers"]
      229 NAMECALL                         R22 R1 K40 ["getText"]
      231 CALL                             R22 3 1
      232 SETTABLEKS                       R22 R21 K74 ["text"]
      234 GETUPVAL                         R22 11
      235 GETTABLEKS                       R22 R22 K84 ["Standard"]
      237 SETTABLEKS                       R22 R21 K78 ["variant"]
      239 GETTABLEKS                       R22 R0 K85 ["OnOpenAddFriends"]
      241 SETTABLEKS                       R22 R21 K44 ["onActivated"]
      243 CALL                             R19 2 -1
      244 CALL                             R16 -1 1
      245 JUMP                             ; [+26]
      246 GETUPVAL                         R16 1
      247 GETTABLEKS                       R16 R16 K15 ["createElement"]
      249 GETUPVAL                         R17 10
      250 DUPTABLE                         R18 K86 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["size"] = "Small", ["isDisabled"], ["onActivated"]}]
      251 LOADK                            R21 K82 ["Button"]
      252 LOADK                            R22 K83 ["AddRoleMembers"]
      253 NAMECALL                         R19 R1 K40 ["getText"]
      255 CALL                             R19 3 1
      256 SETTABLEKS                       R19 R18 K74 ["text"]
      258 GETUPVAL                         R19 11
      259 GETTABLEKS                       R19 R19 K84 ["Standard"]
      261 SETTABLEKS                       R19 R18 K78 ["variant"]
      263 GETTABLEKS                       R19 R0 K10 ["IsAddDisabled"]
      265 SETTABLEKS                       R19 R18 K79 ["isDisabled"]
      267 GETTABLEKS                       R19 R0 K85 ["OnOpenAddFriends"]
      269 SETTABLEKS                       R19 R18 K44 ["onActivated"]
      271 CALL                             R16 2 1
      272 SETTABLEKS                       R16 R15 K33 ["AddFriendsButton"]
      274 CALL                             R12 3 1
      275 SETTABLEKS                       R12 R11 K24 ["Header"]
      277 GETTABLEKS                       R13 R0 K87 ["SaveError"]
      279 JUMPIFEQKNIL                     R13 ; [+19]
      281 GETUPVAL                         R12 1
      282 GETTABLEKS                       R12 R12 K15 ["createElement"]
      284 GETUPVAL                         R13 4
      285 DUPTABLE                         R14 K89 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small text-wrap content-alert", ["Text"]}]
      286 GETTABLEKS                       R17 R0 K87 ["SaveError"]
      288 LOADK                            R19 K90 ["^(.-)%.(.+)$"]
      289 NAMECALL                         R17 R17 K91 ["match"]
      291 CALL                             R17 2 -1
      292 NAMECALL                         R15 R1 K40 ["getText"]
      294 CALL                             R15 -1 1
      295 SETTABLEKS                       R15 R14 K36 ["Text"]
      297 CALL                             R12 2 1
      298 JUMP                             ; [+1]
      299 LOADNIL                          R12
      300 SETTABLEKS                       R12 R11 K25 ["ErrorText"]
      302 LENGTH                           R13 R2
      303 LOADN                            R14 0
      304 JUMPIFNOTLT                      R14 R13 ; [+11]
      306 GETUPVAL                         R12 1
      307 GETTABLEKS                       R12 R12 K15 ["createElement"]
      309 GETUPVAL                         R13 12
      310 GETTABLEKS                       R13 R13 K92 ["Root"]
      312 DUPTABLE                         R14 K93 [{["LayoutOrder"] = 3}]
      313 MOVE                             R15 R7
      314 CALL                             R12 3 1
      315 JUMP                             ; [+74]
      316 GETUPVAL                         R12 1
      317 GETTABLEKS                       R12 R12 K15 ["createElement"]
      319 GETUPVAL                         R13 3
      320 DUPTABLE                         R14 K95 [{["LayoutOrder"] = 3, ["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
      321 GETIMPORT                        R15 K48 [UDim2.new]
      323 LOADN                            R16 1
      324 LOADN                            R17 0
      325 LOADN                            R18 0
      326 LOADN                            R19 260
      327 CALL                             R15 4 1
      328 SETTABLEKS                       R15 R14 K42 ["Size"]
      330 DUPTABLE                         R15 K99 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle"}]
      331 GETUPVAL                         R16 1
      332 GETTABLEKS                       R16 R16 K15 ["createElement"]
      334 GETUPVAL                         R17 5
      335 DUPTABLE                         R18 K100 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      336 GETUPVAL                         R19 6
      337 GETTABLEKS                       R19 R19 K101 ["Person"]
      339 SETTABLEKS                       R19 R18 K52 ["name"]
      341 GETUPVAL                         R19 7
      342 GETTABLEKS                       R19 R19 K102 ["XXLarge"]
      344 SETTABLEKS                       R19 R18 K53 ["size"]
      346 CALL                             R16 2 1
      347 SETTABLEKS                       R16 R15 K96 ["EmptyIcon"]
      349 GETUPVAL                         R16 1
      350 GETTABLEKS                       R16 R16 K15 ["createElement"]
      352 GETUPVAL                         R17 4
      353 DUPTABLE                         R18 K104 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
      354 LOADK                            R21 K105 ["AudienceTabs"]
      355 LOADK                            R22 K106 ["NoEarlyTesters"]
      356 NAMECALL                         R19 R1 K40 ["getText"]
      358 CALL                             R19 3 1
      359 SETTABLEKS                       R19 R18 K36 ["Text"]
      361 CALL                             R16 2 1
      362 SETTABLEKS                       R16 R15 K97 ["EmptyTitle"]
      364 GETUPVAL                         R16 1
      365 GETTABLEKS                       R16 R16 K15 ["createElement"]
      367 GETUPVAL                         R17 4
      368 DUPTABLE                         R18 K108 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      369 LOADK                            R21 K105 ["AudienceTabs"]
      370 GETUPVAL                         R23 13
      371 GETTABLEKS                       R23 R23 K109 ["fflagEarlyTestersPolish"]
      373 JUMPIFNOT                        R23 ; [+2]
      374 LOADK                            R22 K110 ["GroupPlayTesterLimit"]
      375 JUMP                             ; [+1]
      376 LOADK                            R22 K111 ["PlayTesterLimit"]
      377 DUPTABLE                         R23 K113 [{"maxNumPlayTesters"}]
      378 GETUPVAL                         R24 0
      379 SETTABLEKS                       R24 R23 K112 ["maxNumPlayTesters"]
      381 NAMECALL                         R19 R1 K40 ["getText"]
      383 CALL                             R19 4 1
      384 SETTABLEKS                       R19 R18 K36 ["Text"]
      386 CALL                             R16 2 1
      387 SETTABLEKS                       R16 R15 K98 ["EmptySubtitle"]
      389 CALL                             R12 3 1
      390 SETTABLEKS                       R12 R11 K26 ["MemberList"]
      392 CALL                             R8 3 -1
      393 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Bin"]
       15 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["View"]
       34 GETTABLEKS                       R5 R3 K11 ["Text"]
       36 GETTABLEKS                       R6 R3 K12 ["Icon"]
       38 GETTABLEKS                       R7 R3 K13 ["Button"]
       40 GETTABLEKS                       R8 R3 K14 ["List"]
       42 GETTABLEKS                       R9 R3 K15 ["Tooltip"]
       44 GETTABLEKS                       R10 R3 K16 ["Enums"]
       46 GETTABLEKS                       R10 R10 K17 ["ButtonVariant"]
       48 GETTABLEKS                       R11 R3 K16 ["Enums"]
       50 GETTABLEKS                       R11 R11 K18 ["IconName"]
       52 GETTABLEKS                       R12 R3 K16 ["Enums"]
       54 GETTABLEKS                       R12 R12 K19 ["IconSize"]
       56 GETIMPORT                        R13 K4 [require]
       58 GETTABLEKS                       R14 R0 K20 ["Src"]
       60 GETTABLEKS                       R14 R14 K21 ["Components"]
       62 GETTABLEKS                       R14 R14 K22 ["EarlyTesters"]
       64 GETTABLEKS                       R14 R14 K23 ["EarlyTesterMemberRow"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K4 [require]
       69 GETTABLEKS                       R15 R0 K20 ["Src"]
       71 GETTABLEKS                       R15 R15 K24 ["Controllers"]
       73 GETTABLEKS                       R15 R15 K25 ["EarlyTesterController"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K4 [require]
       78 GETTABLEKS                       R16 R0 K20 ["Src"]
       80 GETTABLEKS                       R16 R16 K26 ["Types"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K4 [require]
       85 GETTABLEKS                       R17 R0 K20 ["Src"]
       87 GETTABLEKS                       R17 R17 K27 ["Util"]
       89 GETTABLEKS                       R17 R17 K28 ["GetGroupRoleColor"]
       91 CALL                             R16 1 1
       92 GETTABLEKS                       R17 R14 K29 ["MAX_EARLY_TESTER_MEMBERS"]
       94 DUPCLOSURE                       R18 K30 [PROTO_2]
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R1
      109 RETURN                           R18 1
