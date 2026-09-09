PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["createElement"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["View"]
       16 DUPTABLE                         R5 K10 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small stroke-system-warning radius-medium bg-surface-200", ["testId"] = "permissions-warning-banner"}]
       17 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       21 DUPTABLE                         R6 K14 [{"Icon", "Text", "ViewButton"}]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K3 ["createElement"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K11 ["Icon"]
       28 DUPTABLE                         R9 K20 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"], ["variant"]}]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K21 ["Enums"]
       32 GETTABLEKS                       R10 R10 K22 ["IconName"]
       34 GETTABLEKS                       R10 R10 K23 ["TriangleExclamation"]
       36 SETTABLEKS                       R10 R9 K16 ["name"]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K21 ["Enums"]
       41 GETTABLEKS                       R10 R10 K24 ["IconSize"]
       43 GETTABLEKS                       R10 R10 K25 ["Large"]
       45 SETTABLEKS                       R10 R9 K17 ["size"]
       47 GETTABLEKS                       R10 R2 K26 ["Color"]
       49 GETTABLEKS                       R10 R10 K27 ["System"]
       51 GETTABLEKS                       R10 R10 K28 ["Warning"]
       53 SETTABLEKS                       R10 R9 K18 ["style"]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K21 ["Enums"]
       58 GETTABLEKS                       R10 R10 K29 ["IconVariant"]
       60 GETTABLEKS                       R10 R10 K30 ["Filled"]
       62 SETTABLEKS                       R10 R9 K19 ["variant"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K11 ["Icon"]
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R7 R7 K3 ["createElement"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K12 ["Text"]
       73 DUPTABLE                         R9 K33 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
       74 LOADK                            R12 K34 ["QuickShare"]
       75 LOADK                            R13 K35 ["PermissionBannerTitle"]
       76 NAMECALL                         R10 R1 K36 ["getText"]
       78 CALL                             R10 3 1
       79 SETTABLEKS                       R10 R9 K12 ["Text"]
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K12 ["Text"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K3 ["createElement"]
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K37 ["Button"]
       90 DUPTABLE                         R9 K41 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["size"], ["onActivated"]}]
       91 LOADK                            R12 K34 ["QuickShare"]
       92 LOADK                            R13 K42 ["PermissionBannerButton"]
       93 NAMECALL                         R10 R1 K36 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K39 ["text"]
       98 GETUPVAL                         R10 1
       99 GETTABLEKS                       R10 R10 K21 ["Enums"]
      101 GETTABLEKS                       R10 R10 K43 ["ButtonVariant"]
      103 GETTABLEKS                       R10 R10 K44 ["Utility"]
      105 SETTABLEKS                       R10 R9 K19 ["variant"]
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K21 ["Enums"]
      110 GETTABLEKS                       R10 R10 K45 ["InputSize"]
      112 GETTABLEKS                       R10 R10 K46 ["Small"]
      114 SETTABLEKS                       R10 R9 K17 ["size"]
      116 GETTABLEKS                       R10 R0 K47 ["OnViewErrors"]
      118 SETTABLEKS                       R10 R9 K40 ["onActivated"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K13 ["ViewButton"]
      123 CALL                             R3 3 -1
      124 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADB                            R3 1
        2 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 NOT                              R2 R3
        3 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["collect"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ErrorAssetIds"]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["filter"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["AssetIds"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["values"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["omit"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["AssetIdPaths"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["ErrorAssetIds"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K4 ["getAssetTypes"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["Model"]
       22 GETTABLE                         R2 R1 R3
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["count"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K1 ["omit"]
       29 MOVE                             R6 R1
       30 NEWTABLE                         R7 0 1
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K5 ["Model"]
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 -1
       38 CALL                             R4 -1 1
       39 LOADN                            R5 0
       40 JUMPIFLT                         R5 R4 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 RETURN                           R2 2

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["assetId"]
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R2 R3
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Subject"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["forEach"]
        8 MOVE                             R4 R1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CALL                             R3 2 0
       13 NOT                              R3 R0
       14 JUMPIFNOT                        R3 ; [+9]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["count"]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 JUMPIFEQKN                       R4 K2 [0] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIF                           R3 ; [+96]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K3 ["map"]
       28 GETUPVAL                         R5 2
       29 DUPCLOSURE                       R6 K4 [PROTO_7]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K3 ["map"]
       34 GETUPVAL                         R6 2
       35 DUPCLOSURE                       R7 K5 [PROTO_8]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K6 ["sendShareEvent"]
       40 DUPTABLE                         R7 K11 [{"shareType", "shareTargetIds", "shareTargetTypes", "assetIds"}]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K12 ["Types"]
       44 GETTABLEKS                       R8 R8 K13 ["ShareType"]
       46 GETTABLEKS                       R8 R8 K14 ["Collaborator"]
       48 SETTABLEKS                       R8 R7 K7 ["shareType"]
       50 SETTABLEKS                       R4 R7 K8 ["shareTargetIds"]
       52 SETTABLEKS                       R5 R7 K9 ["shareTargetTypes"]
       54 GETUPVAL                         R8 4
       55 SETTABLEKS                       R8 R7 K10 ["assetIds"]
       57 DUPTABLE                         R8 K19 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       58 GETUPVAL                         R9 5
       59 SETTABLEKS                       R9 R8 K15 ["ExplorerController"]
       61 GETUPVAL                         R9 6
       62 SETTABLEKS                       R9 R8 K16 ["LayoutController"]
       64 GETUPVAL                         R9 7
       65 SETTABLEKS                       R9 R8 K17 ["ItemsController"]
       67 GETUPVAL                         R9 8
       68 SETTABLEKS                       R9 R8 K18 ["SearchController"]
       70 CALL                             R6 2 0
       71 GETUPVAL                         R6 9
       72 CALL                             R6 0 1
       73 JUMPIF                           R6 ; [+47]
       74 GETUPVAL                         R6 7
       75 NAMECALL                         R6 R6 K20 ["getScopeAnalyticsContext"]
       77 CALL                             R6 1 1
       78 GETUPVAL                         R7 10
       79 GETTABLEKS                       R7 R7 K6 ["sendShareEvent"]
       81 DUPTABLE                         R8 K25 [{"shareType", "shareTargetIds", "shareTargetTypes", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       82 GETUPVAL                         R9 10
       83 GETTABLEKS                       R9 R9 K26 ["Enums"]
       85 GETTABLEKS                       R9 R9 K13 ["ShareType"]
       87 GETTABLEKS                       R9 R9 K14 ["Collaborator"]
       89 SETTABLEKS                       R9 R8 K7 ["shareType"]
       91 SETTABLEKS                       R4 R8 K8 ["shareTargetIds"]
       93 SETTABLEKS                       R5 R8 K9 ["shareTargetTypes"]
       95 GETTABLEKS                       R9 R6 K21 ["currentRootId"]
       97 SETTABLEKS                       R9 R8 K21 ["currentRootId"]
       99 GETTABLEKS                       R9 R6 K22 ["currentRootType"]
      101 SETTABLEKS                       R9 R8 K22 ["currentRootType"]
      103 GETTABLEKS                       R9 R6 K23 ["currentFolderId"]
      105 SETTABLEKS                       R9 R8 K23 ["currentFolderId"]
      107 GETUPVAL                         R9 4
      108 SETTABLEKS                       R9 R8 K10 ["assetIds"]
      110 GETUPVAL                         R9 11
      111 GETUPVAL                         R10 6
      112 NAMECALL                         R10 R10 K27 ["getBrowserLayout"]
      114 CALL                             R10 1 1
      115 GETTABLEKS                       R10 R10 K28 ["ViewType"]
      117 CALL                             R9 1 1
      118 SETTABLEKS                       R9 R8 K24 ["viewMode"]
      120 CALL                             R7 1 0
      121 GETUPVAL                         R4 12
      122 GETTABLEKS                       R4 R4 K29 ["OnDone"]
      124 JUMPIFNOT                        R3 ; [+2]
      125 LOADN                            R5 0
      126 JUMP                             ; [+2]
      127 GETUPVAL                         R6 4
      128 LENGTH                           R5 R6
      129 GETUPVAL                         R6 1
      130 GETTABLEKS                       R6 R6 K30 ["keys"]
      132 MOVE                             R7 R2
      133 CALL                             R6 1 -1
      134 CALL                             R4 -1 0
      135 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["append"]
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["Selection"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K4 ["Selection"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U10
       24 CAPTURE                          UPVAL U11
       25 CAPTURE                          UPVAL U12
       26 CAPTURE                          UPVAL U13
       27 GETUPVAL                         R2 14
       28 GETUPVAL                         R3 15
       29 GETUPVAL                         R4 5
       30 MOVE                             R5 R0
       31 MOVE                             R6 R1
       32 CALL                             R2 4 0
       33 GETUPVAL                         R2 3
       34 LOADB                            R3 1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["use"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K1 ["useMemo"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R9 0 1
       32 GETTABLEKS                       R10 R0 K2 ["ErrorAssetIds"]
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 1
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R8 R8 K1 ["useMemo"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U8
       45 NEWTABLE                         R10 0 2
       47 MOVE                             R11 R7
       48 GETTABLEKS                       R12 R0 K2 ["ErrorAssetIds"]
       50 SETLIST                          R10 R11 2 [1]
       52 CALL                             R8 2 2
       53 GETTABLEKS                       R11 R0 K3 ["TestExperiences"]
       55 JUMPIFNOT                        R11 ; [+4]
       56 GETUPVAL                         R10 9
       57 GETTABLEKS                       R10 R10 K4 ["Experiences"]
       59 JUMP                             ; [+1]
       60 GETUPVAL                         R10 10
       61 GETUPVAL                         R11 6
       62 GETTABLEKS                       R11 R11 K5 ["useState"]
       64 MOVE                             R12 R10
       65 CALL                             R11 1 2
       66 GETUPVAL                         R13 11
       67 CALL                             R13 0 2
       68 LOADB                            R15 1
       69 GETTABLEKS                       R17 R13 K6 ["Selection"]
       71 LENGTH                           R16 R17
       72 LOADN                            R17 0
       73 JUMPIFLT                         R17 R16 ; [+9]
       75 GETTABLEKS                       R17 R14 K6 ["Selection"]
       77 LENGTH                           R16 R17
       78 LOADN                            R17 0
       79 JUMPIFLT                         R17 R16 ; [+2]
       81 LOADB                            R15 0 +1
       82 LOADB                            R15 1
       83 LOADN                            R17 0
       84 GETTABLEKS                       R21 R13 K6 ["Selection"]
       86 LENGTH                           R20 R21
       87 GETTABLEKS                       R22 R14 K6 ["Selection"]
       89 LENGTH                           R21 R22
       90 ADD                              R19 R20 R21
       91 SUBRK                            R18 K7 [10] R19
       92 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
       94 GETIMPORT                        R16 K10 [math.max]
       96 CALL                             R16 2 1
       97 GETUPVAL                         R17 6
       98 GETTABLEKS                       R17 R17 K5 ["useState"]
      100 LOADB                            R18 0
      101 CALL                             R17 1 2
      102 NEWCLOSURE                       R19 P2
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R18
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R6
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          UPVAL U14
      115 CAPTURE                          UPVAL U15
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U16
      118 CAPTURE                          VAL R1
      119 GETUPVAL                         R20 17
      120 GETTABLEKS                       R20 R20 K11 ["new"]
      122 CALL                             R20 0 1
      123 GETUPVAL                         R21 6
      124 GETTABLEKS                       R21 R21 K12 ["createElement"]
      126 GETUPVAL                         R22 18
      127 GETTABLEKS                       R22 R22 K13 ["View"]
      129 DUPTABLE                         R23 K16 [{["tag"] = "col gap-medium size-full padding-medium"}]
      130 DUPTABLE                         R24 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      131 GETTABLEKS                       R27 R0 K2 ["ErrorAssetIds"]
      133 LENGTH                           R26 R27
      134 LOADN                            R27 0
      135 JUMPIFNOTLT                      R27 R26 ; [+17]
      137 GETUPVAL                         R25 6
      138 GETTABLEKS                       R25 R25 K12 ["createElement"]
      140 GETUPVAL                         R26 19
      141 DUPTABLE                         R27 K25 [{"LayoutOrder", "OnViewErrors"}]
      142 NAMECALL                         R28 R20 K26 ["getNextOrder"]
      144 CALL                             R28 1 1
      145 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      147 GETTABLEKS                       R28 R0 K24 ["OnViewErrors"]
      149 SETTABLEKS                       R28 R27 K24 ["OnViewErrors"]
      151 CALL                             R25 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R25
      154 SETTABLEKS                       R25 R24 K17 ["WarningBanner"]
      156 GETUPVAL                         R25 6
      157 GETTABLEKS                       R25 R25 K12 ["createElement"]
      159 GETUPVAL                         R26 18
      160 GETTABLEKS                       R26 R26 K13 ["View"]
      162 DUPTABLE                         R27 K28 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      163 NAMECALL                         R28 R20 K26 ["getNextOrder"]
      165 CALL                             R28 1 1
      166 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      168 DUPTABLE                         R28 K31 [{"Title", "Description"}]
      169 GETUPVAL                         R29 6
      170 GETTABLEKS                       R29 R29 K12 ["createElement"]
      172 GETUPVAL                         R30 18
      173 GETTABLEKS                       R30 R30 K32 ["Text"]
      175 DUPTABLE                         R31 K37 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      176 LOADK                            R34 K38 ["QuickShare"]
      177 LENGTH                           R36 R7
      178 JUMPIFNOTEQKN                    R36 K33 [1] ; [+3]
      180 LOADK                            R35 K39 ["SharingOne"]
      181 JUMP                             ; [+1]
      182 LOADK                            R35 K40 ["SharingMultiple"]
      183 DUPTABLE                         R36 K42 [{"count"}]
      184 LENGTH                           R38 R7
      185 FASTCALL1                        TOSTRING R38 ; [+2]
      186 GETIMPORT                        R37 K44 [tostring]
      188 CALL                             R37 1 1
      189 SETTABLEKS                       R37 R36 K41 ["count"]
      191 NAMECALL                         R32 R2 K45 ["getText"]
      193 CALL                             R32 4 1
      194 SETTABLEKS                       R32 R31 K32 ["Text"]
      196 CALL                             R29 2 1
      197 SETTABLEKS                       R29 R28 K29 ["Title"]
      199 GETUPVAL                         R29 6
      200 GETTABLEKS                       R29 R29 K12 ["createElement"]
      202 GETUPVAL                         R30 18
      203 GETTABLEKS                       R30 R30 K32 ["Text"]
      205 DUPTABLE                         R31 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      206 LOADK                            R34 K38 ["QuickShare"]
      207 LOADK                            R35 K49 ["DialogDescription"]
      208 NAMECALL                         R32 R2 K45 ["getText"]
      210 CALL                             R32 3 1
      211 SETTABLEKS                       R32 R31 K32 ["Text"]
      213 CALL                             R29 2 1
      214 SETTABLEKS                       R29 R28 K30 ["Description"]
      216 CALL                             R25 3 1
      217 SETTABLEKS                       R25 R24 K18 ["Header"]
      219 GETUPVAL                         R25 6
      220 GETTABLEKS                       R25 R25 K12 ["createElement"]
      222 GETUPVAL                         R26 18
      223 GETTABLEKS                       R26 R26 K13 ["View"]
      225 DUPTABLE                         R27 K51 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      226 NAMECALL                         R28 R20 K26 ["getNextOrder"]
      228 CALL                             R28 1 1
      229 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      231 GETUPVAL                         R28 6
      232 GETTABLEKS                       R28 R28 K12 ["createElement"]
      234 GETUPVAL                         R29 18
      235 GETTABLEKS                       R29 R29 K52 ["Tabs"]
      237 DUPTABLE                         R30 K60 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      238 SETTABLEKS                       R11 R30 K53 ["activeTabId"]
      240 SETTABLEKS                       R12 R30 K54 ["onActivated"]
      242 NEWTABLE                         R31 0 2
      244 DUPTABLE                         R32 K63 [{"id", "text"}]
      245 GETUPVAL                         R33 9
      246 GETTABLEKS                       R33 R33 K64 ["Collaborators"]
      248 SETTABLEKS                       R33 R32 K61 ["id"]
      250 LOADK                            R35 K38 ["QuickShare"]
      251 LOADK                            R36 K65 ["CollaboratorsTab"]
      252 NAMECALL                         R33 R2 K45 ["getText"]
      254 CALL                             R33 3 1
      255 SETTABLEKS                       R33 R32 K62 ["text"]
      257 DUPTABLE                         R33 K63 [{"id", "text"}]
      258 GETUPVAL                         R34 9
      259 GETTABLEKS                       R34 R34 K4 ["Experiences"]
      261 SETTABLEKS                       R34 R33 K61 ["id"]
      263 LOADK                            R36 K38 ["QuickShare"]
      264 LOADK                            R37 K66 ["ExperiencesTab"]
      265 NAMECALL                         R34 R2 K45 ["getText"]
      267 CALL                             R34 3 1
      268 SETTABLEKS                       R34 R33 K62 ["text"]
      270 SETLIST                          R31 R32 2 [1]
      272 SETTABLEKS                       R31 R30 K55 ["tabs"]
      274 SETTABLEKS                       R10 R30 K56 ["defaultActiveTabId"]
      276 GETUPVAL                         R31 18
      277 GETTABLEKS                       R31 R31 K67 ["Enums"]
      279 GETTABLEKS                       R31 R31 K68 ["InputSize"]
      281 GETTABLEKS                       R31 R31 K69 ["Small"]
      283 SETTABLEKS                       R31 R30 K57 ["size"]
      285 GETUPVAL                         R31 18
      286 GETTABLEKS                       R31 R31 K67 ["Enums"]
      288 GETTABLEKS                       R31 R31 K70 ["FillBehavior"]
      290 GETTABLEKS                       R31 R31 K71 ["Fill"]
      292 SETTABLEKS                       R31 R30 K58 ["fillBehavior"]
      294 CALL                             R28 2 -1
      295 CALL                             R25 -1 1
      296 SETTABLEKS                       R25 R24 K19 ["TabButtons"]
      298 GETUPVAL                         R25 6
      299 GETTABLEKS                       R25 R25 K12 ["createElement"]
      301 GETUPVAL                         R26 18
      302 GETTABLEKS                       R26 R26 K13 ["View"]
      304 DUPTABLE                         R27 K73 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      305 NAMECALL                         R28 R20 K26 ["getNextOrder"]
      307 CALL                             R28 1 1
      308 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      310 NEWTABLE                         R28 0 1
      312 GETUPVAL                         R30 9
      313 GETTABLEKS                       R30 R30 K64 ["Collaborators"]
      315 JUMPIFNOTEQ                      R11 R30 ; [+14]
      317 GETUPVAL                         R29 6
      318 GETTABLEKS                       R29 R29 K12 ["createElement"]
      320 GETUPVAL                         R30 20
      321 DUPTABLE                         R31 K77 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      322 SETTABLEKS                       R16 R31 K74 ["MaxCount"]
      324 SETTABLEKS                       R8 R31 K75 ["CanAddEditors"]
      326 SETTABLEKS                       R9 R31 K76 ["HasNonEditTypes"]
      328 CALL                             R29 2 1
      329 JUMP                             ; [+8]
      330 GETUPVAL                         R29 6
      331 GETTABLEKS                       R29 R29 K12 ["createElement"]
      333 GETUPVAL                         R30 21
      334 DUPTABLE                         R31 K78 [{"MaxCount"}]
      335 SETTABLEKS                       R16 R31 K74 ["MaxCount"]
      337 CALL                             R29 2 1
      338 SETLIST                          R28 R29 1 [1]
      340 CALL                             R25 3 1
      341 SETTABLEKS                       R25 R24 K20 ["TabContent"]
      343 GETUPVAL                         R25 6
      344 GETTABLEKS                       R25 R25 K12 ["createElement"]
      346 GETUPVAL                         R26 18
      347 GETTABLEKS                       R26 R26 K13 ["View"]
      349 DUPTABLE                         R27 K80 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      350 NAMECALL                         R28 R20 K26 ["getNextOrder"]
      352 CALL                             R28 1 1
      353 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      355 DUPTABLE                         R28 K83 [{"CancelButton", "ShareButton"}]
      356 GETUPVAL                         R29 6
      357 GETTABLEKS                       R29 R29 K12 ["createElement"]
      359 GETUPVAL                         R30 18
      360 GETTABLEKS                       R30 R30 K84 ["Button"]
      362 DUPTABLE                         R31 K88 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      363 LOADK                            R34 K38 ["QuickShare"]
      364 LOADK                            R35 K81 ["CancelButton"]
      365 NAMECALL                         R32 R2 K45 ["getText"]
      367 CALL                             R32 3 1
      368 SETTABLEKS                       R32 R31 K62 ["text"]
      370 SETTABLEKS                       R17 R31 K85 ["isDisabled"]
      372 NEWCLOSURE                       R32 P3
      373 CAPTURE                          VAL R0
      374 SETTABLEKS                       R32 R31 K54 ["onActivated"]
      376 GETUPVAL                         R32 18
      377 GETTABLEKS                       R32 R32 K67 ["Enums"]
      379 GETTABLEKS                       R32 R32 K89 ["ButtonVariant"]
      381 GETTABLEKS                       R32 R32 K90 ["Standard"]
      383 SETTABLEKS                       R32 R31 K86 ["variant"]
      385 GETUPVAL                         R32 18
      386 GETTABLEKS                       R32 R32 K67 ["Enums"]
      388 GETTABLEKS                       R32 R32 K68 ["InputSize"]
      390 GETTABLEKS                       R32 R32 K69 ["Small"]
      392 SETTABLEKS                       R32 R31 K57 ["size"]
      394 CALL                             R29 2 1
      395 SETTABLEKS                       R29 R28 K81 ["CancelButton"]
      397 GETUPVAL                         R29 6
      398 GETTABLEKS                       R29 R29 K12 ["createElement"]
      400 GETUPVAL                         R30 18
      401 GETTABLEKS                       R30 R30 K84 ["Button"]
      403 DUPTABLE                         R31 K93 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      404 LOADK                            R34 K38 ["QuickShare"]
      405 LOADK                            R35 K82 ["ShareButton"]
      406 NAMECALL                         R32 R2 K45 ["getText"]
      408 CALL                             R32 3 1
      409 SETTABLEKS                       R32 R31 K62 ["text"]
      411 SETTABLEKS                       R17 R31 K91 ["isLoading"]
      413 LOADB                            R32 1
      414 LENGTH                           R33 R7
      415 JUMPIFEQKN                       R33 K94 [0] ; [+2]
      417 NOT                              R32 R15
      418 SETTABLEKS                       R32 R31 K85 ["isDisabled"]
      420 SETTABLEKS                       R19 R31 K54 ["onActivated"]
      422 GETUPVAL                         R32 18
      423 GETTABLEKS                       R32 R32 K67 ["Enums"]
      425 GETTABLEKS                       R32 R32 K89 ["ButtonVariant"]
      427 GETTABLEKS                       R32 R32 K95 ["Emphasis"]
      429 SETTABLEKS                       R32 R31 K86 ["variant"]
      431 GETUPVAL                         R32 18
      432 GETTABLEKS                       R32 R32 K67 ["Enums"]
      434 GETTABLEKS                       R32 R32 K68 ["InputSize"]
      436 GETTABLEKS                       R32 R32 K69 ["Small"]
      438 SETTABLEKS                       R32 R31 K57 ["size"]
      440 CALL                             R29 2 1
      441 SETTABLEKS                       R29 R28 K82 ["ShareButton"]
      443 CALL                             R25 3 1
      444 SETTABLEKS                       R25 R24 K21 ["Footer"]
      446 CALL                             R21 3 -1
      447 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       39 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Analytics"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["DEPRECATED_Analytics"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Types"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R10 K19 ["AssetType"]
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K15 ["Src"]
       70 GETTABLEKS                       R13 R13 K20 ["Networking"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K15 ["Src"]
       77 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       79 GETTABLEKS                       R14 R14 K22 ["ExplorerController"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R15 R0 K15 ["Src"]
       86 GETTABLEKS                       R15 R15 K21 ["Controllers"]
       88 GETTABLEKS                       R15 R15 K23 ["ItemsController"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K5 [require]
       93 GETTABLEKS                       R16 R0 K15 ["Src"]
       95 GETTABLEKS                       R16 R16 K21 ["Controllers"]
       97 GETTABLEKS                       R16 R16 K24 ["LayoutController"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K15 ["Src"]
      104 GETTABLEKS                       R17 R17 K21 ["Controllers"]
      106 GETTABLEKS                       R17 R17 K25 ["SearchController"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K5 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R18 R18 K26 ["CollaboratorsTab"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K5 [require]
      118 GETIMPORT                        R19 K1 [script]
      120 GETTABLEKS                       R19 R19 K27 ["ExperiencesTab"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R20 R0 K15 ["Src"]
      127 GETTABLEKS                       R20 R20 K11 ["Util"]
      129 GETTABLEKS                       R20 R20 K28 ["Dialogs"]
      131 GETTABLEKS                       R20 R20 K29 ["useQuickShareState"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K5 [require]
      136 GETTABLEKS                       R21 R0 K15 ["Src"]
      138 GETTABLEKS                       R21 R21 K11 ["Util"]
      140 GETTABLEKS                       R21 R21 K30 ["getViewTypeTelemetryString"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K5 [require]
      145 GETTABLEKS                       R22 R0 K15 ["Src"]
      147 GETTABLEKS                       R22 R22 K11 ["Util"]
      149 GETTABLEKS                       R22 R22 K31 ["grantPermissionsAsync"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K15 ["Src"]
      156 GETTABLEKS                       R23 R23 K32 ["Flags"]
      158 GETTABLEKS                       R23 R23 K33 ["getFFlagAmrDisableShardedEvent"]
      160 CALL                             R22 1 1
      161 DUPTABLE                         R23 K38 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      162 GETTABLEKS                       R24 R23 K34 ["Collaborators"]
      164 DUPCLOSURE                       R25 K39 [PROTO_0]
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R1
      168 DUPCLOSURE                       R26 K40 [PROTO_12]
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 RETURN                           R26 1
