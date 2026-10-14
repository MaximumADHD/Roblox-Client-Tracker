PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["BaseUrl"]
        4 LOADK                            R4 K1 ["my/account#!/info"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+10]
        7 GETIMPORT                        R2 K4 [warn]
        9 LOADK                            R4 K5 ["OpenUrl failed: "]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K7 [tostring]
       14 CALL                             R5 1 1
       15 CONCAT                           R3 R4 R5
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R2 R0 K1 ["OwnerIsNotAgeVerified"]
        4 JUMPIFNOT                        R2 ; [+101]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K6 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-x-xlarge padding-top-small"}]
       10 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       14 DUPTABLE                         R5 K8 [{"AgeCheckPanel"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["createElement"]
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K11 [{["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
       20 GETIMPORT                        R9 K14 [UDim2.new]
       22 LOADN                            R10 1
       23 LOADN                            R11 0
       24 LOADN                            R12 0
       25 LOADN                            R13 260
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K9 ["Size"]
       29 DUPTABLE                         R9 K19 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle", "VerifyButton"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K2 ["createElement"]
       33 GETUPVAL                         R11 2
       34 DUPTABLE                         R12 K23 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K24 ["ShieldLock"]
       38 SETTABLEKS                       R13 R12 K21 ["name"]
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K25 ["XXLarge"]
       43 SETTABLEKS                       R13 R12 K22 ["size"]
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K15 ["EmptyIcon"]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K2 ["createElement"]
       51 GETUPVAL                         R11 5
       52 DUPTABLE                         R12 K29 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
       53 LOADK                            R15 K30 ["Heading"]
       54 LOADK                            R16 K31 ["AgeCheckEarlyTesters"]
       55 NAMECALL                         R13 R1 K32 ["getText"]
       57 CALL                             R13 3 1
       58 SETTABLEKS                       R13 R12 K28 ["Text"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K16 ["EmptyTitle"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K2 ["createElement"]
       66 GETUPVAL                         R11 5
       67 DUPTABLE                         R12 K35 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
       68 LOADK                            R15 K36 ["Description"]
       69 LOADK                            R16 K31 ["AgeCheckEarlyTesters"]
       70 NAMECALL                         R13 R1 K32 ["getText"]
       72 CALL                             R13 3 1
       73 SETTABLEKS                       R13 R12 K28 ["Text"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K17 ["EmptySubtitle"]
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R10 R10 K2 ["createElement"]
       81 GETUPVAL                         R11 6
       82 DUPTABLE                         R12 K41 [{["LayoutOrder"] = 4, ["text"], ["variant"], ["onActivated"]}]
       83 LOADK                            R15 K42 ["Buttons"]
       84 LOADK                            R16 K43 ["Verify"]
       85 NAMECALL                         R13 R1 K32 ["getText"]
       87 CALL                             R13 3 1
       88 SETTABLEKS                       R13 R12 K38 ["text"]
       90 GETUPVAL                         R13 7
       91 GETTABLEKS                       R13 R13 K44 ["Emphasis"]
       93 SETTABLEKS                       R13 R12 K39 ["variant"]
       95 GETUPVAL                         R13 8
       96 SETTABLEKS                       R13 R12 K40 ["onActivated"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K18 ["VerifyButton"]
      101 CALL                             R6 3 1
      102 SETTABLEKS                       R6 R5 K7 ["AgeCheckPanel"]
      104 CALL                             R2 3 -1
      105 RETURN                           R2 -1
      106 GETTABLEKS                       R2 R0 K45 ["LoadError"]
      108 JUMPIFNOT                        R2 ; [+63]
      109 GETUPVAL                         R2 0
      110 GETTABLEKS                       R2 R2 K2 ["createElement"]
      112 GETUPVAL                         R3 1
      113 DUPTABLE                         R4 K6 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-x-xlarge padding-top-small"}]
      114 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
      116 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
      118 DUPTABLE                         R5 K47 [{"LoadErrorPanel"}]
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R6 R6 K2 ["createElement"]
      122 GETUPVAL                         R7 1
      123 DUPTABLE                         R8 K11 [{["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
      124 GETIMPORT                        R9 K14 [UDim2.new]
      126 LOADN                            R10 1
      127 LOADN                            R11 0
      128 LOADN                            R12 0
      129 LOADN                            R13 260
      130 CALL                             R9 4 1
      131 SETTABLEKS                       R9 R8 K9 ["Size"]
      133 DUPTABLE                         R9 K50 [{"ErrorIcon", "ErrorText"}]
      134 GETUPVAL                         R10 0
      135 GETTABLEKS                       R10 R10 K2 ["createElement"]
      137 GETUPVAL                         R11 2
      138 DUPTABLE                         R12 K23 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      139 GETUPVAL                         R13 3
      140 GETTABLEKS                       R13 R13 K51 ["TriangleExclamation"]
      142 SETTABLEKS                       R13 R12 K21 ["name"]
      144 GETUPVAL                         R13 4
      145 GETTABLEKS                       R13 R13 K25 ["XXLarge"]
      147 SETTABLEKS                       R13 R12 K22 ["size"]
      149 CALL                             R10 2 1
      150 SETTABLEKS                       R10 R9 K48 ["ErrorIcon"]
      152 GETUPVAL                         R10 0
      153 GETTABLEKS                       R10 R10 K2 ["createElement"]
      155 GETUPVAL                         R11 5
      156 DUPTABLE                         R12 K52 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      157 LOADK                            R15 K53 ["FailureMessage"]
      158 LOADK                            R16 K54 ["LoadFailure"]
      159 NAMECALL                         R13 R1 K32 ["getText"]
      161 CALL                             R13 3 1
      162 SETTABLEKS                       R13 R12 K28 ["Text"]
      164 CALL                             R10 2 1
      165 SETTABLEKS                       R10 R9 K49 ["ErrorText"]
      167 CALL                             R6 3 1
      168 SETTABLEKS                       R6 R5 K46 ["LoadErrorPanel"]
      170 CALL                             R2 3 -1
      171 RETURN                           R2 -1
      172 LOADN                            R2 0
      173 NEWTABLE                         R3 0 0
      175 GETTABLEKS                       R4 R0 K55 ["PendingMembers"]
      177 LOADNIL                          R5
      178 LOADNIL                          R6
      179 FORGPREP                         R4
      180 ADDK                             R2 R2 K20 [1]
      181 LOADB                            R9 1
      182 SETTABLE                         R9 R3 R7
      183 FORGLOOP                         R4 1 ; [-4]
      185 MOVE                             R4 R2
      186 GETTABLEKS                       R5 R0 K56 ["SearchSelection"]
      188 LOADNIL                          R6
      189 LOADNIL                          R7
      190 FORGPREP                         R5
      191 ADDK                             R4 R4 K20 [1]
      192 FORGLOOP                         R5 1 ; [-2]
      194 LOADNIL                          R5
      195 GETTABLEKS                       R6 R0 K57 ["Screen"]
      197 GETUPVAL                         R7 9
      198 GETTABLEKS                       R7 R7 K58 ["RolePicker"]
      200 JUMPIFNOTEQ                      R6 R7 ; [+31]
      202 GETUPVAL                         R6 0
      203 GETTABLEKS                       R6 R6 K2 ["createElement"]
      205 GETUPVAL                         R7 10
      206 DUPTABLE                         R8 K64 [{"Localization", "AllRoles", "PendingRoleId", "PickedRoleId", "OnPickRole", "OnBack"}]
      207 SETTABLEKS                       R1 R8 K0 ["Localization"]
      209 GETTABLEKS                       R9 R0 K59 ["AllRoles"]
      211 SETTABLEKS                       R9 R8 K59 ["AllRoles"]
      213 GETTABLEKS                       R9 R0 K60 ["PendingRoleId"]
      215 SETTABLEKS                       R9 R8 K60 ["PendingRoleId"]
      217 GETTABLEKS                       R9 R0 K61 ["PickedRoleId"]
      219 SETTABLEKS                       R9 R8 K61 ["PickedRoleId"]
      221 GETTABLEKS                       R9 R0 K65 ["PickRole"]
      223 SETTABLEKS                       R9 R8 K62 ["OnPickRole"]
      225 GETTABLEKS                       R9 R0 K66 ["CloseScreen"]
      227 SETTABLEKS                       R9 R8 K63 ["OnBack"]
      229 CALL                             R6 2 1
      230 MOVE                             R5 R6
      231 JUMP                             ; [+193]
      232 GETTABLEKS                       R6 R0 K57 ["Screen"]
      234 GETUPVAL                         R7 9
      235 GETTABLEKS                       R7 R7 K67 ["AddFriends"]
      237 JUMPIFNOTEQ                      R6 R7 ; [+71]
      239 GETUPVAL                         R6 0
      240 GETTABLEKS                       R6 R6 K2 ["createElement"]
      242 GETUPVAL                         R7 11
      243 DUPTABLE                         R8 K82 [{"Localization", "GroupId", "PendingRoleName", "PendingMemberCount", "PendingMemberIds", "GroupMembers", "GroupMembersExhausted", "GroupMembersLoading", "SearchResults", "SearchResultsExhausted", "SearchResultsLoading", "SearchSelection", "OnLoadMore", "OnSearch", "OnLoadMoreSearchResults", "OnToggleSelection", "OnBack"}]
      244 SETTABLEKS                       R1 R8 K0 ["Localization"]
      246 GETTABLEKS                       R9 R0 K68 ["GroupId"]
      248 SETTABLEKS                       R9 R8 K68 ["GroupId"]
      250 GETTABLEKS                       R9 R0 K69 ["PendingRoleName"]
      252 SETTABLEKS                       R9 R8 K69 ["PendingRoleName"]
      254 SETTABLEKS                       R4 R8 K70 ["PendingMemberCount"]
      256 SETTABLEKS                       R3 R8 K71 ["PendingMemberIds"]
      258 GETTABLEKS                       R9 R0 K72 ["GroupMembers"]
      260 SETTABLEKS                       R9 R8 K72 ["GroupMembers"]
      262 GETTABLEKS                       R9 R0 K73 ["GroupMembersExhausted"]
      264 SETTABLEKS                       R9 R8 K73 ["GroupMembersExhausted"]
      266 GETTABLEKS                       R9 R0 K74 ["GroupMembersLoading"]
      268 SETTABLEKS                       R9 R8 K74 ["GroupMembersLoading"]
      270 GETTABLEKS                       R9 R0 K75 ["SearchResults"]
      272 SETTABLEKS                       R9 R8 K75 ["SearchResults"]
      274 GETTABLEKS                       R9 R0 K76 ["SearchResultsExhausted"]
      276 SETTABLEKS                       R9 R8 K76 ["SearchResultsExhausted"]
      278 GETTABLEKS                       R9 R0 K77 ["SearchResultsLoading"]
      280 SETTABLEKS                       R9 R8 K77 ["SearchResultsLoading"]
      282 GETTABLEKS                       R9 R0 K56 ["SearchSelection"]
      284 SETTABLEKS                       R9 R8 K56 ["SearchSelection"]
      286 GETTABLEKS                       R9 R0 K83 ["LoadMoreMembers"]
      288 SETTABLEKS                       R9 R8 K78 ["OnLoadMore"]
      290 GETTABLEKS                       R9 R0 K84 ["SearchMembers"]
      292 SETTABLEKS                       R9 R8 K79 ["OnSearch"]
      294 GETTABLEKS                       R9 R0 K85 ["LoadMoreSearchResults"]
      296 SETTABLEKS                       R9 R8 K80 ["OnLoadMoreSearchResults"]
      298 GETTABLEKS                       R9 R0 K86 ["ToggleSelection"]
      300 SETTABLEKS                       R9 R8 K81 ["OnToggleSelection"]
      302 GETTABLEKS                       R9 R0 K66 ["CloseScreen"]
      304 SETTABLEKS                       R9 R8 K63 ["OnBack"]
      306 CALL                             R6 2 1
      307 MOVE                             R5 R6
      308 JUMP                             ; [+116]
      309 GETTABLEKS                       R6 R0 K87 ["Mode"]
      311 GETUPVAL                         R7 12
      312 GETTABLEKS                       R7 R7 K88 ["Unset"]
      314 JUMPIFNOTEQ                      R6 R7 ; [+65]
      316 GETUPVAL                         R6 0
      317 GETTABLEKS                       R6 R6 K2 ["createElement"]
      319 GETUPVAL                         R7 13
      320 DUPTABLE                         R8 K90 [{"Localization", "GroupId", "PendingMemberCount", "GroupMembers", "GroupMembersExhausted", "GroupMembersLoading", "SearchResults", "SearchResultsExhausted", "SearchResultsLoading", "SearchSelection", "OnLoadMore", "OnSearch", "OnLoadMoreSearchResults", "OnToggleSelection", "OnOpenRolePicker"}]
      321 SETTABLEKS                       R1 R8 K0 ["Localization"]
      323 GETTABLEKS                       R9 R0 K68 ["GroupId"]
      325 SETTABLEKS                       R9 R8 K68 ["GroupId"]
      327 SETTABLEKS                       R4 R8 K70 ["PendingMemberCount"]
      329 GETTABLEKS                       R9 R0 K72 ["GroupMembers"]
      331 SETTABLEKS                       R9 R8 K72 ["GroupMembers"]
      333 GETTABLEKS                       R9 R0 K73 ["GroupMembersExhausted"]
      335 SETTABLEKS                       R9 R8 K73 ["GroupMembersExhausted"]
      337 GETTABLEKS                       R9 R0 K74 ["GroupMembersLoading"]
      339 SETTABLEKS                       R9 R8 K74 ["GroupMembersLoading"]
      341 GETTABLEKS                       R9 R0 K75 ["SearchResults"]
      343 SETTABLEKS                       R9 R8 K75 ["SearchResults"]
      345 GETTABLEKS                       R9 R0 K76 ["SearchResultsExhausted"]
      347 SETTABLEKS                       R9 R8 K76 ["SearchResultsExhausted"]
      349 GETTABLEKS                       R9 R0 K77 ["SearchResultsLoading"]
      351 SETTABLEKS                       R9 R8 K77 ["SearchResultsLoading"]
      353 GETTABLEKS                       R9 R0 K56 ["SearchSelection"]
      355 SETTABLEKS                       R9 R8 K56 ["SearchSelection"]
      357 GETTABLEKS                       R9 R0 K83 ["LoadMoreMembers"]
      359 SETTABLEKS                       R9 R8 K78 ["OnLoadMore"]
      361 GETTABLEKS                       R9 R0 K84 ["SearchMembers"]
      363 SETTABLEKS                       R9 R8 K79 ["OnSearch"]
      365 GETTABLEKS                       R9 R0 K85 ["LoadMoreSearchResults"]
      367 SETTABLEKS                       R9 R8 K80 ["OnLoadMoreSearchResults"]
      369 GETTABLEKS                       R9 R0 K86 ["ToggleSelection"]
      371 SETTABLEKS                       R9 R8 K81 ["OnToggleSelection"]
      373 GETTABLEKS                       R9 R0 K91 ["OpenRolePicker"]
      375 SETTABLEKS                       R9 R8 K89 ["OnOpenRolePicker"]
      377 CALL                             R6 2 1
      378 MOVE                             R5 R6
      379 JUMP                             ; [+45]
      380 GETUPVAL                         R6 0
      381 GETTABLEKS                       R6 R6 K2 ["createElement"]
      383 GETUPVAL                         R7 14
      384 DUPTABLE                         R8 K97 [{"Localization", "GroupId", "PendingRoleName", "PendingRoleIsPrivate", "PendingRoleColor", "PendingMembers", "SaveError", "OnRemoveMember", "OnOpenRolePicker", "OnOpenAddFriends"}]
      385 SETTABLEKS                       R1 R8 K0 ["Localization"]
      387 GETTABLEKS                       R9 R0 K68 ["GroupId"]
      389 SETTABLEKS                       R9 R8 K68 ["GroupId"]
      391 GETTABLEKS                       R9 R0 K69 ["PendingRoleName"]
      393 SETTABLEKS                       R9 R8 K69 ["PendingRoleName"]
      395 GETTABLEKS                       R9 R0 K92 ["PendingRoleIsPrivate"]
      397 SETTABLEKS                       R9 R8 K92 ["PendingRoleIsPrivate"]
      399 GETTABLEKS                       R9 R0 K93 ["PendingRoleColor"]
      401 SETTABLEKS                       R9 R8 K93 ["PendingRoleColor"]
      403 GETTABLEKS                       R9 R0 K55 ["PendingMembers"]
      405 SETTABLEKS                       R9 R8 K55 ["PendingMembers"]
      407 GETTABLEKS                       R9 R0 K94 ["SaveError"]
      409 SETTABLEKS                       R9 R8 K94 ["SaveError"]
      411 GETTABLEKS                       R9 R0 K98 ["RemoveMember"]
      413 SETTABLEKS                       R9 R8 K95 ["OnRemoveMember"]
      415 GETTABLEKS                       R9 R0 K91 ["OpenRolePicker"]
      417 SETTABLEKS                       R9 R8 K89 ["OnOpenRolePicker"]
      419 GETTABLEKS                       R9 R0 K99 ["OpenAddFriends"]
      421 SETTABLEKS                       R9 R8 K96 ["OnOpenAddFriends"]
      423 CALL                             R6 2 1
      424 MOVE                             R5 R6
      425 GETUPVAL                         R6 0
      426 GETTABLEKS                       R6 R6 K2 ["createElement"]
      428 GETUPVAL                         R7 1
      429 DUPTABLE                         R8 K6 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-x-xlarge padding-top-small"}]
      430 GETTABLEKS                       R9 R0 K3 ["LayoutOrder"]
      432 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
      434 DUPTABLE                         R9 K100 [{"Screen"}]
      435 GETUPVAL                         R10 0
      436 GETTABLEKS                       R10 R10 K2 ["createElement"]
      438 GETUPVAL                         R11 1
      439 DUPTABLE                         R12 K102 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      440 NEWTABLE                         R13 0 1
      442 MOVE                             R14 R5
      443 SETLIST                          R13 R14 1 [1]
      445 CALL                             R10 3 1
      446 SETTABLEKS                       R10 R9 K57 ["Screen"]
      448 CALL                             R6 3 -1
      449 RETURN                           R6 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["EarlyTesters"]
        2 DUPTABLE                         R3 K21 [{"GroupId", "Mode", "Screen", "PendingRoleId", "PendingRoleName", "PendingRoleIsPrivate", "PendingRoleColor", "PendingMembers", "AllRoles", "GroupMembers", "GroupMembersExhausted", "GroupMembersLoading", "SearchResults", "SearchResultsExhausted", "SearchResultsLoading", "SearchSelection", "PickedRoleId", "SaveError", "LoadError", "OwnerIsNotAgeVerified"}]
        3 GETTABLEKS                       R4 R0 K22 ["GameOwnerMetadata"]
        5 GETTABLEKS                       R4 R4 K23 ["creatorId"]
        7 SETTABLEKS                       R4 R3 K1 ["GroupId"]
        9 GETTABLEKS                       R4 R2 K2 ["Mode"]
       11 SETTABLEKS                       R4 R3 K2 ["Mode"]
       13 GETTABLEKS                       R4 R2 K3 ["Screen"]
       15 SETTABLEKS                       R4 R3 K3 ["Screen"]
       17 GETTABLEKS                       R4 R2 K4 ["PendingRoleId"]
       19 SETTABLEKS                       R4 R3 K4 ["PendingRoleId"]
       21 GETTABLEKS                       R4 R2 K5 ["PendingRoleName"]
       23 SETTABLEKS                       R4 R3 K5 ["PendingRoleName"]
       25 GETTABLEKS                       R4 R2 K6 ["PendingRoleIsPrivate"]
       27 SETTABLEKS                       R4 R3 K6 ["PendingRoleIsPrivate"]
       29 GETTABLEKS                       R4 R2 K7 ["PendingRoleColor"]
       31 SETTABLEKS                       R4 R3 K7 ["PendingRoleColor"]
       33 GETTABLEKS                       R4 R2 K8 ["PendingMembers"]
       35 SETTABLEKS                       R4 R3 K8 ["PendingMembers"]
       37 GETUPVAL                         R4 0
       38 MOVE                             R5 R0
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K9 ["AllRoles"]
       42 GETTABLEKS                       R4 R2 K10 ["GroupMembers"]
       44 SETTABLEKS                       R4 R3 K10 ["GroupMembers"]
       46 GETTABLEKS                       R4 R2 K11 ["GroupMembersExhausted"]
       48 SETTABLEKS                       R4 R3 K11 ["GroupMembersExhausted"]
       50 GETTABLEKS                       R4 R2 K12 ["GroupMembersLoading"]
       52 SETTABLEKS                       R4 R3 K12 ["GroupMembersLoading"]
       54 GETTABLEKS                       R4 R2 K13 ["SearchResults"]
       56 SETTABLEKS                       R4 R3 K13 ["SearchResults"]
       58 GETTABLEKS                       R4 R2 K14 ["SearchResultsExhausted"]
       60 SETTABLEKS                       R4 R3 K14 ["SearchResultsExhausted"]
       62 GETTABLEKS                       R4 R2 K15 ["SearchResultsLoading"]
       64 SETTABLEKS                       R4 R3 K15 ["SearchResultsLoading"]
       66 GETTABLEKS                       R4 R2 K16 ["SearchSelection"]
       68 SETTABLEKS                       R4 R3 K16 ["SearchSelection"]
       70 GETTABLEKS                       R4 R2 K17 ["PickedRoleId"]
       72 SETTABLEKS                       R4 R3 K17 ["PickedRoleId"]
       74 GETTABLEKS                       R4 R2 K18 ["SaveError"]
       76 SETTABLEKS                       R4 R3 K18 ["SaveError"]
       78 GETTABLEKS                       R4 R2 K19 ["LoadError"]
       80 SETTABLEKS                       R4 R3 K19 ["LoadError"]
       82 GETUPVAL                         R4 1
       83 MOVE                             R5 R0
       84 CALL                             R4 1 1
       85 SETTABLEKS                       R4 R3 K20 ["OwnerIsNotAgeVerified"]
       87 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K9 [{"OpenRolePicker", "PickRole", "OpenAddFriends", "CloseScreen", "LoadMoreMembers", "SearchMembers", "LoadMoreSearchResults", "ToggleSelection", "RemoveMember"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OpenRolePicker"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["PickRole"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["OpenAddFriends"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["CloseScreen"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["LoadMoreMembers"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SearchMembers"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["LoadMoreSearchResults"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K7 ["ToggleSelection"]
       41 NEWCLOSURE                       R2 P8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 SETTABLEKS                       R2 R1 K8 ["RemoveMember"]
       46 RETURN                           R1 1

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
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["View"]
       34 GETTABLEKS                       R5 R3 K10 ["Icon"]
       36 GETTABLEKS                       R6 R3 K11 ["Text"]
       38 GETTABLEKS                       R7 R3 K12 ["Button"]
       40 GETTABLEKS                       R8 R3 K13 ["Enums"]
       42 GETTABLEKS                       R8 R8 K14 ["ButtonVariant"]
       44 GETTABLEKS                       R9 R3 K13 ["Enums"]
       46 GETTABLEKS                       R9 R9 K15 ["IconName"]
       48 GETTABLEKS                       R10 R3 K13 ["Enums"]
       50 GETTABLEKS                       R10 R10 K16 ["IconSize"]
       52 GETIMPORT                        R11 K18 [game]
       54 LOADK                            R13 K19 ["BrowserService"]
       55 NAMECALL                         R11 R11 K20 ["GetService"]
       57 CALL                             R11 2 1
       58 GETIMPORT                        R12 K18 [game]
       60 LOADK                            R14 K21 ["ContentProvider"]
       61 NAMECALL                         R12 R12 K20 ["GetService"]
       63 CALL                             R12 2 1
       64 DUPCLOSURE                       R13 K22 [PROTO_1]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R12
       67 GETIMPORT                        R14 K4 [require]
       69 GETTABLEKS                       R15 R0 K23 ["Src"]
       71 GETTABLEKS                       R15 R15 K24 ["Util"]
       73 GETTABLEKS                       R15 R15 K25 ["EarlyTesterMode"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K4 [require]
       78 GETTABLEKS                       R16 R0 K23 ["Src"]
       80 GETTABLEKS                       R16 R16 K24 ["Util"]
       82 GETTABLEKS                       R16 R16 K26 ["EarlyTesterScreen"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K4 [require]
       87 GETTABLEKS                       R17 R0 K23 ["Src"]
       89 GETTABLEKS                       R17 R17 K27 ["Components"]
       91 GETTABLEKS                       R17 R17 K28 ["EarlyTesters"]
       93 GETTABLEKS                       R17 R17 K29 ["ChooseMembersScreen"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K4 [require]
       98 GETTABLEKS                       R18 R0 K23 ["Src"]
      100 GETTABLEKS                       R18 R18 K27 ["Components"]
      102 GETTABLEKS                       R18 R18 K28 ["EarlyTesters"]
      104 GETTABLEKS                       R18 R18 K30 ["ManagingScreen"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K4 [require]
      109 GETTABLEKS                       R19 R0 K23 ["Src"]
      111 GETTABLEKS                       R19 R19 K27 ["Components"]
      113 GETTABLEKS                       R19 R19 K28 ["EarlyTesters"]
      115 GETTABLEKS                       R19 R19 K31 ["RolePickerScreen"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K4 [require]
      120 GETTABLEKS                       R20 R0 K23 ["Src"]
      122 GETTABLEKS                       R20 R20 K27 ["Components"]
      124 GETTABLEKS                       R20 R20 K28 ["EarlyTesters"]
      126 GETTABLEKS                       R20 R20 K32 ["AddFriendsScreen"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K4 [require]
      131 GETTABLEKS                       R21 R0 K23 ["Src"]
      133 GETTABLEKS                       R21 R21 K33 ["Thunks"]
      135 GETTABLEKS                       R21 R21 K34 ["OpenEarlyTesterRolePicker"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K4 [require]
      140 GETTABLEKS                       R22 R0 K23 ["Src"]
      142 GETTABLEKS                       R22 R22 K33 ["Thunks"]
      144 GETTABLEKS                       R22 R22 K35 ["OpenAddFriendsScreen"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K4 [require]
      149 GETTABLEKS                       R23 R0 K23 ["Src"]
      151 GETTABLEKS                       R23 R23 K33 ["Thunks"]
      153 GETTABLEKS                       R23 R23 K36 ["CloseEarlyTesterScreen"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K4 [require]
      158 GETTABLEKS                       R24 R0 K23 ["Src"]
      160 GETTABLEKS                       R24 R24 K33 ["Thunks"]
      162 GETTABLEKS                       R24 R24 K37 ["LoadGroupMembersPage"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K4 [require]
      167 GETTABLEKS                       R25 R0 K23 ["Src"]
      169 GETTABLEKS                       R25 R25 K33 ["Thunks"]
      171 GETTABLEKS                       R25 R25 K38 ["SearchGroupMembers"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K4 [require]
      176 GETTABLEKS                       R26 R0 K23 ["Src"]
      178 GETTABLEKS                       R26 R26 K33 ["Thunks"]
      180 GETTABLEKS                       R26 R26 K39 ["LoadMoreGroupMemberSearchResults"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K4 [require]
      185 GETTABLEKS                       R27 R0 K23 ["Src"]
      187 GETTABLEKS                       R27 R27 K40 ["Actions"]
      189 GETTABLEKS                       R27 R27 K41 ["ToggleEarlyTesterSelection"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K4 [require]
      194 GETTABLEKS                       R28 R0 K23 ["Src"]
      196 GETTABLEKS                       R28 R28 K40 ["Actions"]
      198 GETTABLEKS                       R28 R28 K42 ["SetEarlyTesterPickedRoleId"]
      200 CALL                             R27 1 1
      201 GETIMPORT                        R28 K4 [require]
      203 GETTABLEKS                       R29 R0 K23 ["Src"]
      205 GETTABLEKS                       R29 R29 K33 ["Thunks"]
      207 GETTABLEKS                       R29 R29 K43 ["RemoveEarlyTesterMember"]
      209 CALL                             R28 1 1
      210 GETIMPORT                        R29 K4 [require]
      212 GETTABLEKS                       R30 R0 K23 ["Src"]
      214 GETTABLEKS                       R30 R30 K44 ["Selectors"]
      216 GETTABLEKS                       R30 R30 K45 ["GetEarlyTesterAllRoles"]
      218 CALL                             R29 1 1
      219 GETIMPORT                        R30 K4 [require]
      221 GETTABLEKS                       R31 R0 K23 ["Src"]
      223 GETTABLEKS                       R31 R31 K44 ["Selectors"]
      225 GETTABLEKS                       R31 R31 K46 ["GetOwnerIsNotAgeVerified"]
      227 CALL                             R30 1 1
      228 DUPCLOSURE                       R31 K47 [PROTO_2]
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R18
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R17
      244 GETTABLEKS                       R32 R2 K48 ["connect"]
      246 DUPCLOSURE                       R33 K49 [PROTO_3]
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R30
      249 DUPCLOSURE                       R34 K50 [PROTO_13]
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R24
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R28
      259 CALL                             R32 2 1
      260 MOVE                             R33 R31
      261 CALL                             R32 1 1
      262 MOVE                             R31 R32
      263 RETURN                           R31 1
