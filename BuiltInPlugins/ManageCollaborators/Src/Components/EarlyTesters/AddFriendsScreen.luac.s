PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R3 R0 K2 ["PendingRoleName"]
        4 ORK                              R2 R3 K1 ["this role"]
        5 GETTABLEKS                       R4 R0 K3 ["PendingMemberCount"]
        7 GETUPVAL                         R5 0
        8 JUMPIFLE                         R5 R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["createElement"]
       15 GETUPVAL                         R5 2
       16 DUPTABLE                         R6 K8 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       17 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       21 DUPTABLE                         R7 K13 [{"BackButton", "Header", "CapacityAlert", "SearchList"}]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K4 ["createElement"]
       25 GETUPVAL                         R9 3
       26 DUPTABLE                         R10 K22 [{["LayoutOrder"] = 1, ["text"], ["icon"] = "chevron-small-left", ["size"] = "Small", ["variant"], ["onActivated"]}]
       27 LOADK                            R13 K23 ["Button"]
       28 LOADK                            R14 K24 ["Back"]
       29 NAMECALL                         R11 R1 K25 ["getText"]
       31 CALL                             R11 3 1
       32 SETTABLEKS                       R11 R10 K15 ["text"]
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R11 R11 K26 ["Utility"]
       37 SETTABLEKS                       R11 R10 K20 ["variant"]
       39 GETTABLEKS                       R11 R0 K27 ["OnBack"]
       41 SETTABLEKS                       R11 R10 K21 ["onActivated"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K9 ["BackButton"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K4 ["createElement"]
       49 GETUPVAL                         R9 2
       50 DUPTABLE                         R10 K30 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
       51 DUPTABLE                         R11 K33 [{"Title", "Description"}]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R12 R12 K4 ["createElement"]
       55 GETUPVAL                         R13 2
       56 DUPTABLE                         R14 K35 [{["LayoutOrder"] = 1, ["tag"] = "row gap-small auto-y"}]
       57 DUPTABLE                         R15 K37 [{"Title", "Badge"}]
       58 GETUPVAL                         R16 1
       59 GETTABLEKS                       R16 R16 K4 ["createElement"]
       61 GETUPVAL                         R17 5
       62 DUPTABLE                         R18 K40 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-title-medium content-emphasis", ["Text"]}]
       63 LOADK                            R21 K41 ["Heading"]
       64 LOADK                            R22 K42 ["AddMembers"]
       65 NAMECALL                         R19 R1 K25 ["getText"]
       67 CALL                             R19 3 1
       68 SETTABLEKS                       R19 R18 K39 ["Text"]
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K31 ["Title"]
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R16 R16 K4 ["createElement"]
       76 GETUPVAL                         R17 6
       77 DUPTABLE                         R18 K45 [{["LayoutOrder"] = 2, ["Count"], ["Max"]}]
       78 GETTABLEKS                       R19 R0 K3 ["PendingMemberCount"]
       80 SETTABLEKS                       R19 R18 K43 ["Count"]
       82 GETUPVAL                         R19 0
       83 SETTABLEKS                       R19 R18 K44 ["Max"]
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K36 ["Badge"]
       88 CALL                             R12 3 1
       89 SETTABLEKS                       R12 R11 K31 ["Title"]
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K4 ["createElement"]
       94 GETUPVAL                         R13 5
       95 DUPTABLE                         R14 K47 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small text-wrap content-default", ["Text"]}]
       96 LOADK                            R17 K32 ["Description"]
       97 LOADK                            R18 K42 ["AddMembers"]
       98 DUPTABLE                         R19 K49 [{"roleName"}]
       99 SETTABLEKS                       R2 R19 K48 ["roleName"]
      101 NAMECALL                         R15 R1 K25 ["getText"]
      103 CALL                             R15 4 1
      104 SETTABLEKS                       R15 R14 K39 ["Text"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K32 ["Description"]
      109 CALL                             R8 3 1
      110 SETTABLEKS                       R8 R7 K10 ["Header"]
      112 JUMPIFNOT                        R3 ; [+19]
      113 GETUPVAL                         R8 1
      114 GETTABLEKS                       R8 R8 K4 ["createElement"]
      116 GETUPVAL                         R9 7
      117 DUPTABLE                         R10 K52 [{["LayoutOrder"] = 3, ["severity"], ["text"]}]
      118 GETUPVAL                         R11 8
      119 GETTABLEKS                       R11 R11 K53 ["Info"]
      121 SETTABLEKS                       R11 R10 K51 ["severity"]
      123 LOADK                            R13 K54 ["Error"]
      124 LOADK                            R14 K55 ["EarlyTesterLimit"]
      125 NAMECALL                         R11 R1 K25 ["getText"]
      127 CALL                             R11 3 1
      128 SETTABLEKS                       R11 R10 K15 ["text"]
      130 CALL                             R8 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K11 ["CapacityAlert"]
      135 GETUPVAL                         R8 1
      136 GETTABLEKS                       R8 R8 K4 ["createElement"]
      138 GETUPVAL                         R9 9
      139 DUPTABLE                         R10 K71 [{["LayoutOrder"] = 4, [2], ["GroupId"], ["GroupMembers"], ["GroupMembersExhausted"], ["GroupMembersLoading"], ["SearchResults"], ["SearchResultsExhausted"], ["SearchResultsLoading"], ["SearchSelection"], ["ExcludeUserIds"], ["IsAtCapacity"], ["OnLoadMore"], ["OnSearch"], ["OnLoadMoreSearchResults"], ["OnToggleSelection"]}]
      140 SETTABLEKS                       R1 R10 K0 ["Localization"]
      142 GETTABLEKS                       R11 R0 K57 ["GroupId"]
      144 SETTABLEKS                       R11 R10 K57 ["GroupId"]
      146 GETTABLEKS                       R11 R0 K58 ["GroupMembers"]
      148 SETTABLEKS                       R11 R10 K58 ["GroupMembers"]
      150 GETTABLEKS                       R11 R0 K59 ["GroupMembersExhausted"]
      152 SETTABLEKS                       R11 R10 K59 ["GroupMembersExhausted"]
      154 GETTABLEKS                       R11 R0 K60 ["GroupMembersLoading"]
      156 SETTABLEKS                       R11 R10 K60 ["GroupMembersLoading"]
      158 GETTABLEKS                       R11 R0 K61 ["SearchResults"]
      160 SETTABLEKS                       R11 R10 K61 ["SearchResults"]
      162 GETTABLEKS                       R11 R0 K62 ["SearchResultsExhausted"]
      164 SETTABLEKS                       R11 R10 K62 ["SearchResultsExhausted"]
      166 GETTABLEKS                       R11 R0 K63 ["SearchResultsLoading"]
      168 SETTABLEKS                       R11 R10 K63 ["SearchResultsLoading"]
      170 GETTABLEKS                       R11 R0 K64 ["SearchSelection"]
      172 SETTABLEKS                       R11 R10 K64 ["SearchSelection"]
      174 GETTABLEKS                       R11 R0 K72 ["PendingMemberIds"]
      176 SETTABLEKS                       R11 R10 K65 ["ExcludeUserIds"]
      178 SETTABLEKS                       R3 R10 K66 ["IsAtCapacity"]
      180 GETTABLEKS                       R11 R0 K67 ["OnLoadMore"]
      182 SETTABLEKS                       R11 R10 K67 ["OnLoadMore"]
      184 GETTABLEKS                       R11 R0 K68 ["OnSearch"]
      186 SETTABLEKS                       R11 R10 K68 ["OnSearch"]
      188 GETTABLEKS                       R11 R0 K69 ["OnLoadMoreSearchResults"]
      190 SETTABLEKS                       R11 R10 K69 ["OnLoadMoreSearchResults"]
      192 GETTABLEKS                       R11 R0 K70 ["OnToggleSelection"]
      194 SETTABLEKS                       R11 R10 K70 ["OnToggleSelection"]
      196 CALL                             R8 2 1
      197 SETTABLEKS                       R8 R7 K12 ["SearchList"]
      199 CALL                             R4 3 -1
      200 RETURN                           R4 -1

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
       29 GETTABLEKS                       R5 R2 K10 ["Button"]
       31 GETTABLEKS                       R6 R2 K11 ["Alert"]
       33 GETTABLEKS                       R7 R2 K12 ["Enums"]
       35 GETTABLEKS                       R7 R7 K13 ["ButtonVariant"]
       37 GETTABLEKS                       R8 R2 K12 ["Enums"]
       39 GETTABLEKS                       R8 R8 K14 ["AlertSeverity"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R0 K15 ["Src"]
       45 GETTABLEKS                       R10 R10 K16 ["Components"]
       47 GETTABLEKS                       R10 R10 K17 ["EarlyTesters"]
       49 GETTABLEKS                       R10 R10 K18 ["GroupMemberSearchList"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K4 [require]
       54 GETTABLEKS                       R11 R0 K15 ["Src"]
       56 GETTABLEKS                       R11 R11 K16 ["Components"]
       58 GETTABLEKS                       R11 R11 K17 ["EarlyTesters"]
       60 GETTABLEKS                       R11 R11 K19 ["MemberCountChip"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K4 [require]
       65 GETTABLEKS                       R12 R0 K15 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       69 GETTABLEKS                       R12 R12 K21 ["EarlyTesterController"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K4 [require]
       74 GETTABLEKS                       R13 R0 K15 ["Src"]
       76 GETTABLEKS                       R13 R13 K22 ["Types"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R11 K23 ["MAX_EARLY_TESTER_MEMBERS"]
       81 DUPCLOSURE                       R14 K24 [PROTO_0]
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 RETURN                           R14 1
