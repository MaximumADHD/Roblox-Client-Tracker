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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["fflagEarlyTestersPolish"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETTABLEKS                       R3 R0 K2 ["OwnerIsNotAgeVerified"]
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R3 R0 K2 ["OwnerIsNotAgeVerified"]
       14 JUMPIFNOT                        R3 ; [+105]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["fflagEarlyTestersPolish"]
       18 JUMPIF                           R3 ; [+101]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["createElement"]
       22 GETUPVAL                         R4 2
       23 DUPTABLE                         R5 K7 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-x-xlarge padding-top-small"}]
       24 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       28 DUPTABLE                         R6 K9 [{"AgeCheckPanel"}]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K3 ["createElement"]
       32 GETUPVAL                         R8 2
       33 DUPTABLE                         R9 K12 [{["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
       34 GETIMPORT                        R10 K15 [UDim2.new]
       36 LOADN                            R11 1
       37 LOADN                            R12 0
       38 LOADN                            R13 0
       39 LOADN                            R14 260
       40 CALL                             R10 4 1
       41 SETTABLEKS                       R10 R9 K10 ["Size"]
       43 DUPTABLE                         R10 K20 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle", "VerifyButton"}]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K3 ["createElement"]
       47 GETUPVAL                         R12 3
       48 DUPTABLE                         R13 K24 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
       49 GETUPVAL                         R14 4
       50 GETTABLEKS                       R14 R14 K25 ["ShieldLock"]
       52 SETTABLEKS                       R14 R13 K22 ["name"]
       54 GETUPVAL                         R14 5
       55 GETTABLEKS                       R14 R14 K26 ["XXLarge"]
       57 SETTABLEKS                       R14 R13 K23 ["size"]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K16 ["EmptyIcon"]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K3 ["createElement"]
       65 GETUPVAL                         R12 6
       66 DUPTABLE                         R13 K30 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
       67 LOADK                            R16 K31 ["Heading"]
       68 LOADK                            R17 K32 ["AgeCheckEarlyTesters"]
       69 NAMECALL                         R14 R1 K33 ["getText"]
       71 CALL                             R14 3 1
       72 SETTABLEKS                       R14 R13 K29 ["Text"]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K17 ["EmptyTitle"]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K3 ["createElement"]
       80 GETUPVAL                         R12 6
       81 DUPTABLE                         R13 K36 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
       82 LOADK                            R16 K37 ["Description"]
       83 LOADK                            R17 K32 ["AgeCheckEarlyTesters"]
       84 NAMECALL                         R14 R1 K33 ["getText"]
       86 CALL                             R14 3 1
       87 SETTABLEKS                       R14 R13 K29 ["Text"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K18 ["EmptySubtitle"]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R11 R11 K3 ["createElement"]
       95 GETUPVAL                         R12 7
       96 DUPTABLE                         R13 K42 [{["LayoutOrder"] = 4, ["text"], ["variant"], ["onActivated"]}]
       97 LOADK                            R16 K43 ["Buttons"]
       98 LOADK                            R17 K44 ["Verify"]
       99 NAMECALL                         R14 R1 K33 ["getText"]
      101 CALL                             R14 3 1
      102 SETTABLEKS                       R14 R13 K39 ["text"]
      104 GETUPVAL                         R14 8
      105 GETTABLEKS                       R14 R14 K45 ["Emphasis"]
      107 SETTABLEKS                       R14 R13 K40 ["variant"]
      109 GETUPVAL                         R14 9
      110 SETTABLEKS                       R14 R13 K41 ["onActivated"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K19 ["VerifyButton"]
      115 CALL                             R7 3 1
      116 SETTABLEKS                       R7 R6 K8 ["AgeCheckPanel"]
      118 CALL                             R3 3 -1
      119 RETURN                           R3 -1
      120 GETTABLEKS                       R3 R0 K46 ["LoadError"]
      122 JUMPIFNOT                        R3 ; [+63]
      123 GETUPVAL                         R3 1
      124 GETTABLEKS                       R3 R3 K3 ["createElement"]
      126 GETUPVAL                         R4 2
      127 DUPTABLE                         R5 K7 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-x-xlarge padding-top-small"}]
      128 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
      130 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
      132 DUPTABLE                         R6 K48 [{"LoadErrorPanel"}]
      133 GETUPVAL                         R7 1
      134 GETTABLEKS                       R7 R7 K3 ["createElement"]
      136 GETUPVAL                         R8 2
      137 DUPTABLE                         R9 K12 [{["Size"], ["tag"] = "col align-x-center align-y-center gap-medium padding-x-large"}]
      138 GETIMPORT                        R10 K15 [UDim2.new]
      140 LOADN                            R11 1
      141 LOADN                            R12 0
      142 LOADN                            R13 0
      143 LOADN                            R14 260
      144 CALL                             R10 4 1
      145 SETTABLEKS                       R10 R9 K10 ["Size"]
      147 DUPTABLE                         R10 K51 [{"ErrorIcon", "ErrorText"}]
      148 GETUPVAL                         R11 1
      149 GETTABLEKS                       R11 R11 K3 ["createElement"]
      151 GETUPVAL                         R12 3
      152 DUPTABLE                         R13 K24 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      153 GETUPVAL                         R14 4
      154 GETTABLEKS                       R14 R14 K52 ["TriangleExclamation"]
      156 SETTABLEKS                       R14 R13 K22 ["name"]
      158 GETUPVAL                         R14 5
      159 GETTABLEKS                       R14 R14 K26 ["XXLarge"]
      161 SETTABLEKS                       R14 R13 K23 ["size"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K49 ["ErrorIcon"]
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R11 R11 K3 ["createElement"]
      169 GETUPVAL                         R12 6
      170 DUPTABLE                         R13 K53 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      171 LOADK                            R16 K54 ["FailureMessage"]
      172 LOADK                            R17 K55 ["LoadFailure"]
      173 NAMECALL                         R14 R1 K33 ["getText"]
      175 CALL                             R14 3 1
      176 SETTABLEKS                       R14 R13 K29 ["Text"]
      178 CALL                             R11 2 1
      179 SETTABLEKS                       R11 R10 K50 ["ErrorText"]
      181 CALL                             R7 3 1
      182 SETTABLEKS                       R7 R6 K47 ["LoadErrorPanel"]
      184 CALL                             R3 3 -1
      185 RETURN                           R3 -1
      186 LOADN                            R3 0
      187 NEWTABLE                         R4 0 0
      189 GETTABLEKS                       R5 R0 K56 ["PendingMembers"]
      191 LOADNIL                          R6
      192 LOADNIL                          R7
      193 FORGPREP                         R5
      194 ADDK                             R3 R3 K21 [1]
      195 LOADB                            R10 1
      196 SETTABLE                         R10 R4 R8
      197 FORGLOOP                         R5 1 ; [-4]
      199 MOVE                             R5 R3
      200 GETTABLEKS                       R6 R0 K57 ["SearchSelection"]
      202 LOADNIL                          R7
      203 LOADNIL                          R8
      204 FORGPREP                         R6
      205 ADDK                             R5 R5 K21 [1]
      206 FORGLOOP                         R6 1 ; [-2]
      208 LOADNIL                          R6
      209 GETTABLEKS                       R7 R0 K58 ["Screen"]
      211 GETUPVAL                         R8 10
      212 GETTABLEKS                       R8 R8 K59 ["RolePicker"]
      214 JUMPIFNOTEQ                      R7 R8 ; [+31]
      216 GETUPVAL                         R7 1
      217 GETTABLEKS                       R7 R7 K3 ["createElement"]
      219 GETUPVAL                         R8 11
      220 DUPTABLE                         R9 K65 [{"Localization", "AllRoles", "PendingRoleId", "PickedRoleId", "OnPickRole", "OnBack"}]
      221 SETTABLEKS                       R1 R9 K0 ["Localization"]
      223 GETTABLEKS                       R10 R0 K60 ["AllRoles"]
      225 SETTABLEKS                       R10 R9 K60 ["AllRoles"]
      227 GETTABLEKS                       R10 R0 K61 ["PendingRoleId"]
      229 SETTABLEKS                       R10 R9 K61 ["PendingRoleId"]
      231 GETTABLEKS                       R10 R0 K62 ["PickedRoleId"]
      233 SETTABLEKS                       R10 R9 K62 ["PickedRoleId"]
      235 GETTABLEKS                       R10 R0 K66 ["PickRole"]
      237 SETTABLEKS                       R10 R9 K63 ["OnPickRole"]
      239 GETTABLEKS                       R10 R0 K67 ["CloseScreen"]
      241 SETTABLEKS                       R10 R9 K64 ["OnBack"]
      243 CALL                             R7 2 1
      244 MOVE                             R6 R7
      245 JUMP                             ; [+214]
      246 GETTABLEKS                       R7 R0 K58 ["Screen"]
      248 GETUPVAL                         R8 10
      249 GETTABLEKS                       R8 R8 K68 ["AddFriends"]
      251 JUMPIFNOTEQ                      R7 R8 ; [+75]
      253 GETUPVAL                         R7 1
      254 GETTABLEKS                       R7 R7 K3 ["createElement"]
      256 GETUPVAL                         R8 12
      257 DUPTABLE                         R9 K84 [{"Localization", "GroupId", "PendingRoleName", "PendingMemberCount", "PendingMemberIds", "GroupMembers", "GroupMembersExhausted", "GroupMembersLoading", "SearchResults", "SearchResultsExhausted", "SearchResultsLoading", "SearchSelection", "MemberEligibility", "OnLoadMore", "OnSearch", "OnLoadMoreSearchResults", "OnToggleSelection", "OnBack"}]
      258 SETTABLEKS                       R1 R9 K0 ["Localization"]
      260 GETTABLEKS                       R10 R0 K69 ["GroupId"]
      262 SETTABLEKS                       R10 R9 K69 ["GroupId"]
      264 GETTABLEKS                       R10 R0 K70 ["PendingRoleName"]
      266 SETTABLEKS                       R10 R9 K70 ["PendingRoleName"]
      268 SETTABLEKS                       R5 R9 K71 ["PendingMemberCount"]
      270 SETTABLEKS                       R4 R9 K72 ["PendingMemberIds"]
      272 GETTABLEKS                       R10 R0 K73 ["GroupMembers"]
      274 SETTABLEKS                       R10 R9 K73 ["GroupMembers"]
      276 GETTABLEKS                       R10 R0 K74 ["GroupMembersExhausted"]
      278 SETTABLEKS                       R10 R9 K74 ["GroupMembersExhausted"]
      280 GETTABLEKS                       R10 R0 K75 ["GroupMembersLoading"]
      282 SETTABLEKS                       R10 R9 K75 ["GroupMembersLoading"]
      284 GETTABLEKS                       R10 R0 K76 ["SearchResults"]
      286 SETTABLEKS                       R10 R9 K76 ["SearchResults"]
      288 GETTABLEKS                       R10 R0 K77 ["SearchResultsExhausted"]
      290 SETTABLEKS                       R10 R9 K77 ["SearchResultsExhausted"]
      292 GETTABLEKS                       R10 R0 K78 ["SearchResultsLoading"]
      294 SETTABLEKS                       R10 R9 K78 ["SearchResultsLoading"]
      296 GETTABLEKS                       R10 R0 K57 ["SearchSelection"]
      298 SETTABLEKS                       R10 R9 K57 ["SearchSelection"]
      300 GETTABLEKS                       R10 R0 K79 ["MemberEligibility"]
      302 SETTABLEKS                       R10 R9 K79 ["MemberEligibility"]
      304 GETTABLEKS                       R10 R0 K85 ["LoadMoreMembers"]
      306 SETTABLEKS                       R10 R9 K80 ["OnLoadMore"]
      308 GETTABLEKS                       R10 R0 K86 ["SearchMembers"]
      310 SETTABLEKS                       R10 R9 K81 ["OnSearch"]
      312 GETTABLEKS                       R10 R0 K87 ["LoadMoreSearchResults"]
      314 SETTABLEKS                       R10 R9 K82 ["OnLoadMoreSearchResults"]
      316 GETTABLEKS                       R10 R0 K88 ["ToggleSelection"]
      318 SETTABLEKS                       R10 R9 K83 ["OnToggleSelection"]
      320 GETTABLEKS                       R10 R0 K67 ["CloseScreen"]
      322 SETTABLEKS                       R10 R9 K64 ["OnBack"]
      324 CALL                             R7 2 1
      325 MOVE                             R6 R7
      326 JUMP                             ; [+133]
      327 GETTABLEKS                       R7 R0 K89 ["Mode"]
      329 GETUPVAL                         R8 13
      330 GETTABLEKS                       R8 R8 K90 ["Unset"]
      332 JUMPIFNOTEQ                      R7 R8 ; [+71]
      334 GETUPVAL                         R7 1
      335 GETTABLEKS                       R7 R7 K3 ["createElement"]
      337 GETUPVAL                         R8 14
      338 DUPTABLE                         R9 K93 [{"Localization", "GroupId", "PendingMemberCount", "GroupMembers", "GroupMembersExhausted", "GroupMembersLoading", "SearchResults", "SearchResultsExhausted", "SearchResultsLoading", "SearchSelection", "MemberEligibility", "OnLoadMore", "OnSearch", "OnLoadMoreSearchResults", "OnToggleSelection", "OnOpenRolePicker", "IsAddDisabled"}]
      339 SETTABLEKS                       R1 R9 K0 ["Localization"]
      341 GETTABLEKS                       R10 R0 K69 ["GroupId"]
      343 SETTABLEKS                       R10 R9 K69 ["GroupId"]
      345 SETTABLEKS                       R5 R9 K71 ["PendingMemberCount"]
      347 GETTABLEKS                       R10 R0 K73 ["GroupMembers"]
      349 SETTABLEKS                       R10 R9 K73 ["GroupMembers"]
      351 GETTABLEKS                       R10 R0 K74 ["GroupMembersExhausted"]
      353 SETTABLEKS                       R10 R9 K74 ["GroupMembersExhausted"]
      355 GETTABLEKS                       R10 R0 K75 ["GroupMembersLoading"]
      357 SETTABLEKS                       R10 R9 K75 ["GroupMembersLoading"]
      359 GETTABLEKS                       R10 R0 K76 ["SearchResults"]
      361 SETTABLEKS                       R10 R9 K76 ["SearchResults"]
      363 GETTABLEKS                       R10 R0 K77 ["SearchResultsExhausted"]
      365 SETTABLEKS                       R10 R9 K77 ["SearchResultsExhausted"]
      367 GETTABLEKS                       R10 R0 K78 ["SearchResultsLoading"]
      369 SETTABLEKS                       R10 R9 K78 ["SearchResultsLoading"]
      371 GETTABLEKS                       R10 R0 K57 ["SearchSelection"]
      373 SETTABLEKS                       R10 R9 K57 ["SearchSelection"]
      375 GETTABLEKS                       R10 R0 K79 ["MemberEligibility"]
      377 SETTABLEKS                       R10 R9 K79 ["MemberEligibility"]
      379 GETTABLEKS                       R10 R0 K85 ["LoadMoreMembers"]
      381 SETTABLEKS                       R10 R9 K80 ["OnLoadMore"]
      383 GETTABLEKS                       R10 R0 K86 ["SearchMembers"]
      385 SETTABLEKS                       R10 R9 K81 ["OnSearch"]
      387 GETTABLEKS                       R10 R0 K87 ["LoadMoreSearchResults"]
      389 SETTABLEKS                       R10 R9 K82 ["OnLoadMoreSearchResults"]
      391 GETTABLEKS                       R10 R0 K88 ["ToggleSelection"]
      393 SETTABLEKS                       R10 R9 K83 ["OnToggleSelection"]
      395 GETTABLEKS                       R10 R0 K94 ["OpenRolePicker"]
      397 SETTABLEKS                       R10 R9 K91 ["OnOpenRolePicker"]
      399 SETTABLEKS                       R2 R9 K92 ["IsAddDisabled"]
      401 CALL                             R7 2 1
      402 MOVE                             R6 R7
      403 JUMP                             ; [+56]
      404 GETUPVAL                         R7 1
      405 GETTABLEKS                       R7 R7 K3 ["createElement"]
      407 GETUPVAL                         R8 15
      408 DUPTABLE                         R9 K100 [{"Localization", "GroupId", "PendingRoleName", "PendingRoleIsPrivate", "PendingRoleColor", "PendingMembers", "MemberEligibility", "SaveError", "OnRemoveMember", "OnOpenRolePicker", "OnOpenAddFriends", "IsAddDisabled"}]
      409 SETTABLEKS                       R1 R9 K0 ["Localization"]
      411 GETTABLEKS                       R10 R0 K69 ["GroupId"]
      413 SETTABLEKS                       R10 R9 K69 ["GroupId"]
      415 GETTABLEKS                       R10 R0 K70 ["PendingRoleName"]
      417 SETTABLEKS                       R10 R9 K70 ["PendingRoleName"]
      419 GETTABLEKS                       R10 R0 K95 ["PendingRoleIsPrivate"]
      421 SETTABLEKS                       R10 R9 K95 ["PendingRoleIsPrivate"]
      423 GETTABLEKS                       R10 R0 K96 ["PendingRoleColor"]
      425 SETTABLEKS                       R10 R9 K96 ["PendingRoleColor"]
      427 GETTABLEKS                       R10 R0 K56 ["PendingMembers"]
      429 SETTABLEKS                       R10 R9 K56 ["PendingMembers"]
      431 GETTABLEKS                       R10 R0 K79 ["MemberEligibility"]
      433 SETTABLEKS                       R10 R9 K79 ["MemberEligibility"]
      435 GETTABLEKS                       R10 R0 K97 ["SaveError"]
      437 SETTABLEKS                       R10 R9 K97 ["SaveError"]
      439 GETTABLEKS                       R10 R0 K101 ["RemoveMember"]
      441 SETTABLEKS                       R10 R9 K98 ["OnRemoveMember"]
      443 GETTABLEKS                       R11 R0 K102 ["IsGroupOwner"]
      445 JUMPIFNOT                        R11 ; [+3]
      446 GETTABLEKS                       R10 R0 K94 ["OpenRolePicker"]
      448 JUMP                             ; [+1]
      449 LOADNIL                          R10
      450 SETTABLEKS                       R10 R9 K91 ["OnOpenRolePicker"]
      452 GETTABLEKS                       R10 R0 K103 ["OpenAddFriends"]
      454 SETTABLEKS                       R10 R9 K99 ["OnOpenAddFriends"]
      456 SETTABLEKS                       R2 R9 K92 ["IsAddDisabled"]
      458 CALL                             R7 2 1
      459 MOVE                             R6 R7
      460 GETUPVAL                         R7 1
      461 GETTABLEKS                       R7 R7 K3 ["createElement"]
      463 GETUPVAL                         R8 2
      464 DUPTABLE                         R9 K7 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y padding-x-xlarge padding-top-small"}]
      465 GETTABLEKS                       R10 R0 K4 ["LayoutOrder"]
      467 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      469 DUPTABLE                         R10 K104 [{"Screen"}]
      470 GETUPVAL                         R11 1
      471 GETTABLEKS                       R11 R11 K3 ["createElement"]
      473 GETUPVAL                         R12 2
      474 DUPTABLE                         R13 K106 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      475 NEWTABLE                         R14 0 1
      477 MOVE                             R15 R6
      478 SETLIST                          R14 R15 1 [1]
      480 CALL                             R11 3 1
      481 SETTABLEKS                       R11 R10 K58 ["Screen"]
      483 CALL                             R7 3 -1
      484 RETURN                           R7 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["EarlyTesters"]
        2 DUPTABLE                         R3 K23 [{"GroupId", "Mode", "Screen", "PendingRoleId", "PendingRoleName", "PendingRoleIsPrivate", "PendingRoleColor", "PendingMembers", "AllRoles", "GroupMembers", "GroupMembersExhausted", "GroupMembersLoading", "SearchResults", "SearchResultsExhausted", "SearchResultsLoading", "SearchSelection", "MemberEligibility", "PickedRoleId", "SaveError", "LoadError", "OwnerIsNotAgeVerified", "IsGroupOwner"}]
        3 GETTABLEKS                       R4 R0 K24 ["GameOwnerMetadata"]
        5 GETTABLEKS                       R4 R4 K25 ["creatorId"]
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
       70 GETTABLEKS                       R4 R2 K17 ["MemberEligibility"]
       72 SETTABLEKS                       R4 R3 K17 ["MemberEligibility"]
       74 GETTABLEKS                       R4 R2 K18 ["PickedRoleId"]
       76 SETTABLEKS                       R4 R3 K18 ["PickedRoleId"]
       78 GETTABLEKS                       R4 R2 K19 ["SaveError"]
       80 SETTABLEKS                       R4 R3 K19 ["SaveError"]
       82 GETTABLEKS                       R4 R2 K20 ["LoadError"]
       84 SETTABLEKS                       R4 R3 K20 ["LoadError"]
       86 GETUPVAL                         R4 1
       87 MOVE                             R5 R0
       88 CALL                             R4 1 1
       89 SETTABLEKS                       R4 R3 K21 ["OwnerIsNotAgeVerified"]
       91 GETUPVAL                         R4 2
       92 MOVE                             R5 R0
       93 CALL                             R4 1 1
       94 SETTABLEKS                       R4 R3 K22 ["IsGroupOwner"]
       96 RETURN                           R3 1

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
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Bin"]
       36 GETTABLEKS                       R5 R5 K10 ["defineLuaFlags"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K11 ["View"]
       41 GETTABLEKS                       R6 R3 K12 ["Icon"]
       43 GETTABLEKS                       R7 R3 K13 ["Text"]
       45 GETTABLEKS                       R8 R3 K14 ["Button"]
       47 GETTABLEKS                       R9 R3 K15 ["Enums"]
       49 GETTABLEKS                       R9 R9 K16 ["ButtonVariant"]
       51 GETTABLEKS                       R10 R3 K15 ["Enums"]
       53 GETTABLEKS                       R10 R10 K17 ["IconName"]
       55 GETTABLEKS                       R11 R3 K15 ["Enums"]
       57 GETTABLEKS                       R11 R11 K18 ["IconSize"]
       59 GETIMPORT                        R12 K20 [game]
       61 LOADK                            R14 K21 ["BrowserService"]
       62 NAMECALL                         R12 R12 K22 ["GetService"]
       64 CALL                             R12 2 1
       65 GETIMPORT                        R13 K20 [game]
       67 LOADK                            R15 K23 ["ContentProvider"]
       68 NAMECALL                         R13 R13 K22 ["GetService"]
       70 CALL                             R13 2 1
       71 DUPCLOSURE                       R14 K24 [PROTO_1]
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 GETIMPORT                        R15 K4 [require]
       76 GETTABLEKS                       R16 R0 K25 ["Src"]
       78 GETTABLEKS                       R16 R16 K26 ["Util"]
       80 GETTABLEKS                       R16 R16 K27 ["EarlyTesterMode"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K4 [require]
       85 GETTABLEKS                       R17 R0 K25 ["Src"]
       87 GETTABLEKS                       R17 R17 K26 ["Util"]
       89 GETTABLEKS                       R17 R17 K28 ["EarlyTesterScreen"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K4 [require]
       94 GETTABLEKS                       R18 R0 K25 ["Src"]
       96 GETTABLEKS                       R18 R18 K29 ["Components"]
       98 GETTABLEKS                       R18 R18 K30 ["EarlyTesters"]
      100 GETTABLEKS                       R18 R18 K31 ["ChooseMembersScreen"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K4 [require]
      105 GETTABLEKS                       R19 R0 K25 ["Src"]
      107 GETTABLEKS                       R19 R19 K29 ["Components"]
      109 GETTABLEKS                       R19 R19 K30 ["EarlyTesters"]
      111 GETTABLEKS                       R19 R19 K32 ["ManagingScreen"]
      113 CALL                             R18 1 1
      114 GETIMPORT                        R19 K4 [require]
      116 GETTABLEKS                       R20 R0 K25 ["Src"]
      118 GETTABLEKS                       R20 R20 K29 ["Components"]
      120 GETTABLEKS                       R20 R20 K30 ["EarlyTesters"]
      122 GETTABLEKS                       R20 R20 K33 ["RolePickerScreen"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K4 [require]
      127 GETTABLEKS                       R21 R0 K25 ["Src"]
      129 GETTABLEKS                       R21 R21 K29 ["Components"]
      131 GETTABLEKS                       R21 R21 K30 ["EarlyTesters"]
      133 GETTABLEKS                       R21 R21 K34 ["AddFriendsScreen"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K4 [require]
      138 GETTABLEKS                       R22 R0 K25 ["Src"]
      140 GETTABLEKS                       R22 R22 K35 ["Thunks"]
      142 GETTABLEKS                       R22 R22 K36 ["OpenEarlyTesterRolePicker"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K4 [require]
      147 GETTABLEKS                       R23 R0 K25 ["Src"]
      149 GETTABLEKS                       R23 R23 K35 ["Thunks"]
      151 GETTABLEKS                       R23 R23 K37 ["OpenAddFriendsScreen"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K4 [require]
      156 GETTABLEKS                       R24 R0 K25 ["Src"]
      158 GETTABLEKS                       R24 R24 K35 ["Thunks"]
      160 GETTABLEKS                       R24 R24 K38 ["CloseEarlyTesterScreen"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K4 [require]
      165 GETTABLEKS                       R25 R0 K25 ["Src"]
      167 GETTABLEKS                       R25 R25 K35 ["Thunks"]
      169 GETTABLEKS                       R25 R25 K39 ["LoadGroupMembersPage"]
      171 CALL                             R24 1 1
      172 GETIMPORT                        R25 K4 [require]
      174 GETTABLEKS                       R26 R0 K25 ["Src"]
      176 GETTABLEKS                       R26 R26 K35 ["Thunks"]
      178 GETTABLEKS                       R26 R26 K40 ["SearchGroupMembers"]
      180 CALL                             R25 1 1
      181 GETIMPORT                        R26 K4 [require]
      183 GETTABLEKS                       R27 R0 K25 ["Src"]
      185 GETTABLEKS                       R27 R27 K35 ["Thunks"]
      187 GETTABLEKS                       R27 R27 K41 ["LoadMoreGroupMemberSearchResults"]
      189 CALL                             R26 1 1
      190 GETIMPORT                        R27 K4 [require]
      192 GETTABLEKS                       R28 R0 K25 ["Src"]
      194 GETTABLEKS                       R28 R28 K42 ["Actions"]
      196 GETTABLEKS                       R28 R28 K43 ["ToggleEarlyTesterSelection"]
      198 CALL                             R27 1 1
      199 GETIMPORT                        R28 K4 [require]
      201 GETTABLEKS                       R29 R0 K25 ["Src"]
      203 GETTABLEKS                       R29 R29 K42 ["Actions"]
      205 GETTABLEKS                       R29 R29 K44 ["SetEarlyTesterPickedRoleId"]
      207 CALL                             R28 1 1
      208 GETIMPORT                        R29 K4 [require]
      210 GETTABLEKS                       R30 R0 K25 ["Src"]
      212 GETTABLEKS                       R30 R30 K35 ["Thunks"]
      214 GETTABLEKS                       R30 R30 K45 ["RemoveEarlyTesterMember"]
      216 CALL                             R29 1 1
      217 GETIMPORT                        R30 K4 [require]
      219 GETTABLEKS                       R31 R0 K25 ["Src"]
      221 GETTABLEKS                       R31 R31 K46 ["Selectors"]
      223 GETTABLEKS                       R31 R31 K47 ["GetEarlyTesterAllRoles"]
      225 CALL                             R30 1 1
      226 GETIMPORT                        R31 K4 [require]
      228 GETTABLEKS                       R32 R0 K25 ["Src"]
      230 GETTABLEKS                       R32 R32 K46 ["Selectors"]
      232 GETTABLEKS                       R32 R32 K48 ["GetOwnerIsNotAgeVerified"]
      234 CALL                             R31 1 1
      235 GETIMPORT                        R32 K4 [require]
      237 GETTABLEKS                       R33 R0 K25 ["Src"]
      239 GETTABLEKS                       R33 R33 K46 ["Selectors"]
      241 GETTABLEKS                       R33 R33 K49 ["IsViewerGroupOwner"]
      243 CALL                             R32 1 1
      244 DUPCLOSURE                       R33 K50 [PROTO_2]
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R14
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R18
      261 GETTABLEKS                       R34 R2 K51 ["connect"]
      263 DUPCLOSURE                       R35 K52 [PROTO_3]
      264 CAPTURE                          VAL R30
      265 CAPTURE                          VAL R31
      266 CAPTURE                          VAL R32
      267 DUPCLOSURE                       R36 K53 [PROTO_13]
      268 CAPTURE                          VAL R21
      269 CAPTURE                          VAL R28
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R23
      272 CAPTURE                          VAL R24
      273 CAPTURE                          VAL R25
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R27
      276 CAPTURE                          VAL R29
      277 CALL                             R34 2 1
      278 MOVE                             R35 R33
      279 CALL                             R34 1 1
      280 MOVE                             R33 R34
      281 RETURN                           R33 1
