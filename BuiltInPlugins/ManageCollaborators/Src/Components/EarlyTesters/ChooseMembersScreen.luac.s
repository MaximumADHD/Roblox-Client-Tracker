PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnOpenRolePicker"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["GroupId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R3 R0 K1 ["PendingMemberCount"]
        4 GETUPVAL                         R4 0
        5 JUMPIFLE                         R4 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       14 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       16 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       18 DUPTABLE                         R6 K10 [{"Header", "CapacityAlert", "SearchList"}]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K2 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K13 [{["LayoutOrder"] = 1, ["tag"] = "row items-center gap-small size-full-0 auto-y padding-top-small"}]
       24 DUPTABLE                         R10 K16 [{"Text", "ChooseRoleButton"}]
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K2 ["createElement"]
       28 GETUPVAL                         R12 2
       29 DUPTABLE                         R13 K18 [{["LayoutOrder"] = 1, ["tag"] = "col grow gap-xsmall auto-y"}]
       30 DUPTABLE                         R14 K21 [{"Title", "Description"}]
       31 GETUPVAL                         R15 1
       32 GETTABLEKS                       R15 R15 K2 ["createElement"]
       34 GETUPVAL                         R16 2
       35 DUPTABLE                         R17 K23 [{["LayoutOrder"] = 1, ["tag"] = "row items-center gap-small auto-y"}]
       36 DUPTABLE                         R18 K25 [{"Title", "Badge"}]
       37 GETUPVAL                         R19 1
       38 GETTABLEKS                       R19 R19 K2 ["createElement"]
       40 GETUPVAL                         R20 3
       41 DUPTABLE                         R21 K27 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-label-large content-emphasis", ["Text"]}]
       42 LOADK                            R24 K28 ["Heading"]
       43 LOADK                            R25 K29 ["ChooseEarlyTesters"]
       44 NAMECALL                         R22 R1 K30 ["getText"]
       46 CALL                             R22 3 1
       47 SETTABLEKS                       R22 R21 K14 ["Text"]
       49 CALL                             R19 2 1
       50 SETTABLEKS                       R19 R18 K19 ["Title"]
       52 GETUPVAL                         R19 1
       53 GETTABLEKS                       R19 R19 K2 ["createElement"]
       55 GETUPVAL                         R20 4
       56 DUPTABLE                         R21 K34 [{["LayoutOrder"] = 2, ["Count"], ["Max"]}]
       57 GETTABLEKS                       R22 R0 K1 ["PendingMemberCount"]
       59 SETTABLEKS                       R22 R21 K32 ["Count"]
       61 GETUPVAL                         R22 0
       62 SETTABLEKS                       R22 R21 K33 ["Max"]
       64 CALL                             R19 2 1
       65 SETTABLEKS                       R19 R18 K24 ["Badge"]
       67 CALL                             R15 3 1
       68 SETTABLEKS                       R15 R14 K19 ["Title"]
       70 GETUPVAL                         R15 1
       71 GETTABLEKS                       R15 R15 K2 ["createElement"]
       73 GETUPVAL                         R16 3
       74 DUPTABLE                         R17 K36 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default", ["Text"]}]
       75 LOADK                            R20 K20 ["Description"]
       76 LOADK                            R21 K29 ["ChooseEarlyTesters"]
       77 NAMECALL                         R18 R1 K30 ["getText"]
       79 CALL                             R18 3 1
       80 SETTABLEKS                       R18 R17 K14 ["Text"]
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K20 ["Description"]
       85 CALL                             R11 3 1
       86 SETTABLEKS                       R11 R10 K14 ["Text"]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K2 ["createElement"]
       91 GETUPVAL                         R12 5
       92 DUPTABLE                         R13 K45 [{["LayoutOrder"] = 2, ["text"], ["size"] = "XSmall", ["variant"], ["radius"] = "Small", ["isDisabled"], ["onActivated"]}]
       93 LOADK                            R16 K46 ["Button"]
       94 LOADK                            R17 K47 ["ChooseRole"]
       95 NAMECALL                         R14 R1 K30 ["getText"]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K37 ["text"]
      100 GETUPVAL                         R14 6
      101 GETTABLEKS                       R14 R14 K48 ["Standard"]
      103 SETTABLEKS                       R14 R13 K40 ["variant"]
      105 GETTABLEKS                       R14 R0 K49 ["IsAddDisabled"]
      107 SETTABLEKS                       R14 R13 K43 ["isDisabled"]
      109 NEWCLOSURE                       R14 P0
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R14 R13 K44 ["onActivated"]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K15 ["ChooseRoleButton"]
      116 CALL                             R7 3 1
      117 SETTABLEKS                       R7 R6 K7 ["Header"]
      119 JUMPIFNOT                        R2 ; [+19]
      120 GETUPVAL                         R7 1
      121 GETTABLEKS                       R7 R7 K2 ["createElement"]
      123 GETUPVAL                         R8 7
      124 DUPTABLE                         R9 K51 [{["LayoutOrder"] = 2, ["severity"], ["text"]}]
      125 GETUPVAL                         R10 8
      126 GETTABLEKS                       R10 R10 K52 ["Info"]
      128 SETTABLEKS                       R10 R9 K50 ["severity"]
      130 LOADK                            R12 K53 ["Error"]
      131 LOADK                            R13 K54 ["EarlyTesterLimit"]
      132 NAMECALL                         R10 R1 K30 ["getText"]
      134 CALL                             R10 3 1
      135 SETTABLEKS                       R10 R9 K37 ["text"]
      137 CALL                             R7 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R7
      140 SETTABLEKS                       R7 R6 K8 ["CapacityAlert"]
      142 GETUPVAL                         R7 1
      143 GETTABLEKS                       R7 R7 K2 ["createElement"]
      145 GETUPVAL                         R8 9
      146 DUPTABLE                         R9 K70 [{["LayoutOrder"] = 3, [2], ["GroupId"], ["GroupMembers"], ["GroupMembersExhausted"], ["GroupMembersLoading"], ["SearchResults"], ["SearchResultsExhausted"], ["SearchResultsLoading"], ["SearchSelection"], ["MemberEligibility"], ["IsAtCapacity"], ["OnLoadMore"], ["OnSearch"], ["OnLoadMoreSearchResults"], ["OnToggleSelection"]}]
      147 SETTABLEKS                       R1 R9 K0 ["Localization"]
      149 GETTABLEKS                       R10 R0 K56 ["GroupId"]
      151 SETTABLEKS                       R10 R9 K56 ["GroupId"]
      153 GETTABLEKS                       R10 R0 K57 ["GroupMembers"]
      155 SETTABLEKS                       R10 R9 K57 ["GroupMembers"]
      157 GETTABLEKS                       R10 R0 K58 ["GroupMembersExhausted"]
      159 SETTABLEKS                       R10 R9 K58 ["GroupMembersExhausted"]
      161 GETTABLEKS                       R10 R0 K59 ["GroupMembersLoading"]
      163 SETTABLEKS                       R10 R9 K59 ["GroupMembersLoading"]
      165 GETTABLEKS                       R10 R0 K60 ["SearchResults"]
      167 SETTABLEKS                       R10 R9 K60 ["SearchResults"]
      169 GETTABLEKS                       R10 R0 K61 ["SearchResultsExhausted"]
      171 SETTABLEKS                       R10 R9 K61 ["SearchResultsExhausted"]
      173 GETTABLEKS                       R10 R0 K62 ["SearchResultsLoading"]
      175 SETTABLEKS                       R10 R9 K62 ["SearchResultsLoading"]
      177 GETTABLEKS                       R10 R0 K63 ["SearchSelection"]
      179 SETTABLEKS                       R10 R9 K63 ["SearchSelection"]
      181 GETTABLEKS                       R10 R0 K64 ["MemberEligibility"]
      183 SETTABLEKS                       R10 R9 K64 ["MemberEligibility"]
      185 MOVE                             R10 R2
      186 JUMPIF                           R10 ; [+2]
      187 GETTABLEKS                       R10 R0 K49 ["IsAddDisabled"]
      189 SETTABLEKS                       R10 R9 K65 ["IsAtCapacity"]
      191 GETTABLEKS                       R10 R0 K66 ["OnLoadMore"]
      193 SETTABLEKS                       R10 R9 K66 ["OnLoadMore"]
      195 GETTABLEKS                       R10 R0 K67 ["OnSearch"]
      197 SETTABLEKS                       R10 R9 K67 ["OnSearch"]
      199 GETTABLEKS                       R10 R0 K68 ["OnLoadMoreSearchResults"]
      201 SETTABLEKS                       R10 R9 K68 ["OnLoadMoreSearchResults"]
      203 GETTABLEKS                       R10 R0 K69 ["OnToggleSelection"]
      205 SETTABLEKS                       R10 R9 K69 ["OnToggleSelection"]
      207 CALL                             R7 2 1
      208 SETTABLEKS                       R7 R6 K9 ["SearchList"]
      210 CALL                             R3 3 -1
      211 RETURN                           R3 -1

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
       81 DUPCLOSURE                       R14 K24 [PROTO_1]
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 RETURN                           R14 1
