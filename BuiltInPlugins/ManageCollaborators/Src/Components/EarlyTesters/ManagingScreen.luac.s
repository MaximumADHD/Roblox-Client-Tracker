PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["username"]
        2 GETTABLEKS                       R4 R1 K0 ["username"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnOpenRolePicker"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["GroupId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

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
       32 NEWTABLE                         R5 0 0
       34 MOVE                             R6 R2
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 LOADK                            R12 K10 ["Member"]
       39 GETTABLEKS                       R13 R10 K11 ["userId"]
       41 CONCAT                           R11 R12 R13
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K12 ["createElement"]
       45 GETUPVAL                         R13 2
       46 DUPTABLE                         R14 K15 [{"LayoutOrder", "Member", "OnRemoved"}]
       47 SETTABLEKS                       R9 R14 K13 ["LayoutOrder"]
       49 SETTABLEKS                       R10 R14 K10 ["Member"]
       51 GETTABLEKS                       R15 R0 K16 ["OnRemoveMember"]
       53 SETTABLEKS                       R15 R14 K14 ["OnRemoved"]
       55 CALL                             R12 2 1
       56 SETTABLE                         R12 R5 R11
       57 FORGLOOP                         R6 2 ; [-20]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K12 ["createElement"]
       62 GETUPVAL                         R7 3
       63 DUPTABLE                         R8 K19 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       64 GETTABLEKS                       R9 R0 K13 ["LayoutOrder"]
       66 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       68 DUPTABLE                         R9 K23 [{"Header", "ErrorText", "MemberList"}]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K12 ["createElement"]
       72 GETUPVAL                         R11 3
       73 DUPTABLE                         R12 K26 [{["LayoutOrder"] = 1, ["tag"] = "col gap-medium size-full-0 auto-y padding-top-small"}]
       74 DUPTABLE                         R13 K30 [{"Title", "RoleDropdown", "AddFriendsButton"}]
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R14 R14 K12 ["createElement"]
       78 GETUPVAL                         R15 4
       79 DUPTABLE                         R16 K33 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-label-large content-emphasis", ["Text"]}]
       80 LOADK                            R19 K34 ["Heading"]
       81 LOADK                            R20 K35 ["ManageRole"]
       82 NAMECALL                         R17 R1 K36 ["getText"]
       84 CALL                             R17 3 1
       85 SETTABLEKS                       R17 R16 K32 ["Text"]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K27 ["Title"]
       90 GETUPVAL                         R14 1
       91 GETTABLEKS                       R14 R14 K12 ["createElement"]
       93 GETUPVAL                         R15 3
       94 DUPTABLE                         R16 K41 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-y-center gap-small auto-y padding-medium stroke-standard stroke-emphasis radius-medium", ["onActivated"]}]
       95 GETIMPORT                        R17 K44 [UDim2.new]
       97 LOADN                            R18 0
       98 LOADN                            R19 240
       99 LOADN                            R20 0
      100 LOADN                            R21 0
      101 CALL                             R17 4 1
      102 SETTABLEKS                       R17 R16 K38 ["Size"]
      104 NEWCLOSURE                       R17 P1
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R17 R16 K40 ["onActivated"]
      108 DUPTABLE                         R17 K47 [{"Icon", "Text", "Chevron"}]
      109 GETUPVAL                         R18 1
      110 GETTABLEKS                       R18 R18 K12 ["createElement"]
      112 GETUPVAL                         R19 5
      113 DUPTABLE                         R20 K51 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
      114 GETTABLEKS                       R22 R0 K52 ["PendingRoleIsPrivate"]
      116 JUMPIFNOT                        R22 ; [+4]
      117 GETUPVAL                         R21 6
      118 GETTABLEKS                       R21 R21 K53 ["LockClosed"]
      120 JUMP                             ; [+3]
      121 GETUPVAL                         R21 6
      122 GETTABLEKS                       R21 R21 K54 ["PersonRectangleHorizontalLine"]
      124 SETTABLEKS                       R21 R20 K48 ["name"]
      126 GETUPVAL                         R21 7
      127 GETTABLEKS                       R21 R21 K55 ["Small"]
      129 SETTABLEKS                       R21 R20 K49 ["size"]
      131 DUPTABLE                         R21 K59 [{["Color3"], ["Transparency"] = 0}]
      132 GETIMPORT                        R22 K61 [Color3.fromHex]
      134 GETUPVAL                         R23 8
      135 GETTABLEKS                       R24 R0 K62 ["PendingRoleColor"]
      137 CALL                             R23 1 -1
      138 CALL                             R22 -1 1
      139 SETTABLEKS                       R22 R21 K56 ["Color3"]
      141 SETTABLEKS                       R21 R20 K50 ["style"]
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K45 ["Icon"]
      146 GETUPVAL                         R18 1
      147 GETTABLEKS                       R18 R18 K12 ["createElement"]
      149 GETUPVAL                         R19 4
      150 DUPTABLE                         R20 K64 [{["LayoutOrder"] = 2, ["tag"] = "grow auto-y text-body-medium text-align-x-left text-truncate-split content-default", ["Text"]}]
      151 SETTABLEKS                       R3 R20 K32 ["Text"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K32 ["Text"]
      156 GETUPVAL                         R18 1
      157 GETTABLEKS                       R18 R18 K12 ["createElement"]
      159 GETUPVAL                         R19 5
      160 DUPTABLE                         R20 K66 [{["LayoutOrder"] = 3, ["name"], ["size"]}]
      161 GETUPVAL                         R21 6
      162 GETTABLEKS                       R21 R21 K67 ["ChevronLargeDown"]
      164 SETTABLEKS                       R21 R20 K48 ["name"]
      166 GETUPVAL                         R21 7
      167 GETTABLEKS                       R21 R21 K55 ["Small"]
      169 SETTABLEKS                       R21 R20 K49 ["size"]
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K46 ["Chevron"]
      174 CALL                             R14 3 1
      175 SETTABLEKS                       R14 R13 K28 ["RoleDropdown"]
      177 JUMPIFNOT                        R4 ; [+36]
      178 GETUPVAL                         R14 1
      179 GETTABLEKS                       R14 R14 K12 ["createElement"]
      181 GETUPVAL                         R15 9
      182 DUPTABLE                         R16 K71 [{["title"] = "", ["text"], ["LayoutOrder"] = 3}]
      183 LOADK                            R19 K72 ["Error"]
      184 LOADK                            R20 K73 ["EarlyTesterLimit"]
      185 NAMECALL                         R17 R1 K36 ["getText"]
      187 CALL                             R17 3 1
      188 SETTABLEKS                       R17 R16 K70 ["text"]
      190 GETUPVAL                         R17 1
      191 GETTABLEKS                       R17 R17 K12 ["createElement"]
      193 GETUPVAL                         R18 10
      194 DUPTABLE                         R19 K77 [{["text"], ["variant"], ["size"] = "Small", ["isDisabled"] = True, ["onActivated"]}]
      195 LOADK                            R22 K78 ["Button"]
      196 LOADK                            R23 K79 ["AddRoleMembers"]
      197 NAMECALL                         R20 R1 K36 ["getText"]
      199 CALL                             R20 3 1
      200 SETTABLEKS                       R20 R19 K70 ["text"]
      202 GETUPVAL                         R20 11
      203 GETTABLEKS                       R20 R20 K80 ["Standard"]
      205 SETTABLEKS                       R20 R19 K74 ["variant"]
      207 GETTABLEKS                       R20 R0 K81 ["OnOpenAddFriends"]
      209 SETTABLEKS                       R20 R19 K40 ["onActivated"]
      211 CALL                             R17 2 -1
      212 CALL                             R14 -1 1
      213 JUMP                             ; [+22]
      214 GETUPVAL                         R14 1
      215 GETTABLEKS                       R14 R14 K12 ["createElement"]
      217 GETUPVAL                         R15 10
      218 DUPTABLE                         R16 K82 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["size"] = "Small", ["onActivated"]}]
      219 LOADK                            R19 K78 ["Button"]
      220 LOADK                            R20 K79 ["AddRoleMembers"]
      221 NAMECALL                         R17 R1 K36 ["getText"]
      223 CALL                             R17 3 1
      224 SETTABLEKS                       R17 R16 K70 ["text"]
      226 GETUPVAL                         R17 11
      227 GETTABLEKS                       R17 R17 K80 ["Standard"]
      229 SETTABLEKS                       R17 R16 K74 ["variant"]
      231 GETTABLEKS                       R17 R0 K81 ["OnOpenAddFriends"]
      233 SETTABLEKS                       R17 R16 K40 ["onActivated"]
      235 CALL                             R14 2 1
      236 SETTABLEKS                       R14 R13 K29 ["AddFriendsButton"]
      238 CALL                             R10 3 1
      239 SETTABLEKS                       R10 R9 K20 ["Header"]
      241 GETTABLEKS                       R11 R0 K83 ["SaveError"]
      243 JUMPIFEQKNIL                     R11 ; [+19]
      245 GETUPVAL                         R10 1
      246 GETTABLEKS                       R10 R10 K12 ["createElement"]
      248 GETUPVAL                         R11 4
      249 DUPTABLE                         R12 K85 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small text-wrap content-alert", ["Text"]}]
      250 GETTABLEKS                       R15 R0 K83 ["SaveError"]
      252 LOADK                            R17 K86 ["^(.-)%.(.+)$"]
      253 NAMECALL                         R15 R15 K87 ["match"]
      255 CALL                             R15 2 -1
      256 NAMECALL                         R13 R1 K36 ["getText"]
      258 CALL                             R13 -1 1
      259 SETTABLEKS                       R13 R12 K32 ["Text"]
      261 CALL                             R10 2 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R10
      264 SETTABLEKS                       R10 R9 K21 ["ErrorText"]
      266 LENGTH                           R11 R2
      267 LOADN                            R12 0
      268 JUMPIFNOTLT                      R12 R11 ; [+11]
      270 GETUPVAL                         R10 1
      271 GETTABLEKS                       R10 R10 K12 ["createElement"]
      273 GETUPVAL                         R11 12
      274 GETTABLEKS                       R11 R11 K88 ["Root"]
      276 DUPTABLE                         R12 K89 [{["LayoutOrder"] = 3}]
      277 MOVE                             R13 R5
      278 CALL                             R10 3 1
      279 JUMP                             ; [+68]
      280 GETUPVAL                         R10 1
      281 GETTABLEKS                       R10 R10 K12 ["createElement"]
      283 GETUPVAL                         R11 3
      284 DUPTABLE                         R12 K91 [{["LayoutOrder"] = 3, ["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
      285 GETIMPORT                        R13 K44 [UDim2.new]
      287 LOADN                            R14 1
      288 LOADN                            R15 0
      289 LOADN                            R16 0
      290 LOADN                            R17 260
      291 CALL                             R13 4 1
      292 SETTABLEKS                       R13 R12 K38 ["Size"]
      294 DUPTABLE                         R13 K95 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle"}]
      295 GETUPVAL                         R14 1
      296 GETTABLEKS                       R14 R14 K12 ["createElement"]
      298 GETUPVAL                         R15 5
      299 DUPTABLE                         R16 K96 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      300 GETUPVAL                         R17 6
      301 GETTABLEKS                       R17 R17 K97 ["Person"]
      303 SETTABLEKS                       R17 R16 K48 ["name"]
      305 GETUPVAL                         R17 7
      306 GETTABLEKS                       R17 R17 K98 ["XXLarge"]
      308 SETTABLEKS                       R17 R16 K49 ["size"]
      310 CALL                             R14 2 1
      311 SETTABLEKS                       R14 R13 K92 ["EmptyIcon"]
      313 GETUPVAL                         R14 1
      314 GETTABLEKS                       R14 R14 K12 ["createElement"]
      316 GETUPVAL                         R15 4
      317 DUPTABLE                         R16 K100 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
      318 LOADK                            R19 K101 ["AudienceTabs"]
      319 LOADK                            R20 K102 ["NoEarlyTesters"]
      320 NAMECALL                         R17 R1 K36 ["getText"]
      322 CALL                             R17 3 1
      323 SETTABLEKS                       R17 R16 K32 ["Text"]
      325 CALL                             R14 2 1
      326 SETTABLEKS                       R14 R13 K93 ["EmptyTitle"]
      328 GETUPVAL                         R14 1
      329 GETTABLEKS                       R14 R14 K12 ["createElement"]
      331 GETUPVAL                         R15 4
      332 DUPTABLE                         R16 K104 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      333 LOADK                            R19 K101 ["AudienceTabs"]
      334 LOADK                            R20 K105 ["PlayTesterLimit"]
      335 DUPTABLE                         R21 K107 [{"maxNumPlayTesters"}]
      336 GETUPVAL                         R22 0
      337 SETTABLEKS                       R22 R21 K106 ["maxNumPlayTesters"]
      339 NAMECALL                         R17 R1 K36 ["getText"]
      341 CALL                             R17 4 1
      342 SETTABLEKS                       R17 R16 K32 ["Text"]
      344 CALL                             R14 2 1
      345 SETTABLEKS                       R14 R13 K94 ["EmptySubtitle"]
      347 CALL                             R10 3 1
      348 SETTABLEKS                       R10 R9 K22 ["MemberList"]
      350 CALL                             R6 3 -1
      351 RETURN                           R6 -1

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
