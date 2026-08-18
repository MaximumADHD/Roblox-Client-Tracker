PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["View"]
       12 DUPTABLE                         R5 K8 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small stroke-system-warning radius-medium bg-surface-200", ["testId"] = "permissions-warning-banner"}]
       13 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       17 DUPTABLE                         R6 K12 [{"Icon", "Text", "ViewButton"}]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K1 ["createElement"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K9 ["Icon"]
       24 DUPTABLE                         R9 K18 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"], ["variant"]}]
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K19 ["Enums"]
       28 GETTABLEKS                       R10 R10 K20 ["IconName"]
       30 GETTABLEKS                       R10 R10 K21 ["TriangleExclamation"]
       32 SETTABLEKS                       R10 R9 K14 ["name"]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R10 R10 K19 ["Enums"]
       37 GETTABLEKS                       R10 R10 K22 ["IconSize"]
       39 GETTABLEKS                       R10 R10 K23 ["Large"]
       41 SETTABLEKS                       R10 R9 K15 ["size"]
       43 GETTABLEKS                       R10 R2 K24 ["Color"]
       45 GETTABLEKS                       R10 R10 K25 ["System"]
       47 GETTABLEKS                       R10 R10 K26 ["Warning"]
       49 SETTABLEKS                       R10 R9 K16 ["style"]
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K19 ["Enums"]
       54 GETTABLEKS                       R10 R10 K27 ["IconVariant"]
       56 GETTABLEKS                       R10 R10 K28 ["Filled"]
       58 SETTABLEKS                       R10 R9 K17 ["variant"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K9 ["Icon"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K1 ["createElement"]
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R8 R8 K10 ["Text"]
       69 DUPTABLE                         R9 K31 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
       70 LOADK                            R12 K32 ["QuickShare"]
       71 LOADK                            R13 K33 ["PermissionBannerTitle"]
       72 NAMECALL                         R10 R1 K34 ["getText"]
       74 CALL                             R10 3 1
       75 SETTABLEKS                       R10 R9 K10 ["Text"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K10 ["Text"]
       80 GETUPVAL                         R7 2
       81 GETTABLEKS                       R7 R7 K1 ["createElement"]
       83 GETUPVAL                         R8 3
       84 GETTABLEKS                       R8 R8 K35 ["Button"]
       86 DUPTABLE                         R9 K39 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["size"], ["onActivated"]}]
       87 LOADK                            R12 K32 ["QuickShare"]
       88 LOADK                            R13 K40 ["PermissionBannerButton"]
       89 NAMECALL                         R10 R1 K34 ["getText"]
       91 CALL                             R10 3 1
       92 SETTABLEKS                       R10 R9 K37 ["text"]
       94 GETUPVAL                         R10 3
       95 GETTABLEKS                       R10 R10 K19 ["Enums"]
       97 GETTABLEKS                       R10 R10 K41 ["ButtonVariant"]
       99 GETTABLEKS                       R10 R10 K42 ["Utility"]
      101 SETTABLEKS                       R10 R9 K17 ["variant"]
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K19 ["Enums"]
      106 GETTABLEKS                       R10 R10 K43 ["InputSize"]
      108 GETTABLEKS                       R10 R10 K44 ["Small"]
      110 SETTABLEKS                       R10 R9 K15 ["size"]
      112 GETTABLEKS                       R10 R0 K45 ["OnViewErrors"]
      114 SETTABLEKS                       R10 R9 K38 ["onActivated"]
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K11 ["ViewButton"]
      119 CALL                             R3 3 -1
      120 RETURN                           R3 -1

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
       24 JUMPIF                           R3 ; [+93]
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
       57 DUPTABLE                         R8 K18 [{"ExplorerController", "LayoutController", "ItemsController"}]
       58 GETUPVAL                         R9 5
       59 SETTABLEKS                       R9 R8 K15 ["ExplorerController"]
       61 GETUPVAL                         R9 6
       62 SETTABLEKS                       R9 R8 K16 ["LayoutController"]
       64 GETUPVAL                         R9 7
       65 SETTABLEKS                       R9 R8 K17 ["ItemsController"]
       67 CALL                             R6 2 0
       68 GETUPVAL                         R6 8
       69 CALL                             R6 0 1
       70 JUMPIF                           R6 ; [+47]
       71 GETUPVAL                         R6 7
       72 NAMECALL                         R6 R6 K19 ["getScopeAnalyticsContext"]
       74 CALL                             R6 1 1
       75 GETUPVAL                         R7 9
       76 GETTABLEKS                       R7 R7 K6 ["sendShareEvent"]
       78 DUPTABLE                         R8 K24 [{"shareType", "shareTargetIds", "shareTargetTypes", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       79 GETUPVAL                         R9 9
       80 GETTABLEKS                       R9 R9 K25 ["Enums"]
       82 GETTABLEKS                       R9 R9 K13 ["ShareType"]
       84 GETTABLEKS                       R9 R9 K14 ["Collaborator"]
       86 SETTABLEKS                       R9 R8 K7 ["shareType"]
       88 SETTABLEKS                       R4 R8 K8 ["shareTargetIds"]
       90 SETTABLEKS                       R5 R8 K9 ["shareTargetTypes"]
       92 GETTABLEKS                       R9 R6 K20 ["currentRootId"]
       94 SETTABLEKS                       R9 R8 K20 ["currentRootId"]
       96 GETTABLEKS                       R9 R6 K21 ["currentRootType"]
       98 SETTABLEKS                       R9 R8 K21 ["currentRootType"]
      100 GETTABLEKS                       R9 R6 K22 ["currentFolderId"]
      102 SETTABLEKS                       R9 R8 K22 ["currentFolderId"]
      104 GETUPVAL                         R9 4
      105 SETTABLEKS                       R9 R8 K10 ["assetIds"]
      107 GETUPVAL                         R9 10
      108 GETUPVAL                         R10 6
      109 NAMECALL                         R10 R10 K26 ["getBrowserLayout"]
      111 CALL                             R10 1 1
      112 GETTABLEKS                       R10 R10 K27 ["ViewType"]
      114 CALL                             R9 1 1
      115 SETTABLEKS                       R9 R8 K23 ["viewMode"]
      117 CALL                             R7 1 0
      118 GETUPVAL                         R4 11
      119 GETTABLEKS                       R4 R4 K28 ["OnDone"]
      121 JUMPIFNOT                        R3 ; [+2]
      122 LOADN                            R5 0
      123 JUMP                             ; [+2]
      124 GETUPVAL                         R6 4
      125 LENGTH                           R5 R6
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R6 R6 K29 ["keys"]
      129 MOVE                             R7 R2
      130 CALL                             R6 1 -1
      131 CALL                             R4 -1 0
      132 RETURN                           R0 0

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
       26 GETUPVAL                         R2 13
       27 GETUPVAL                         R3 14
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R0
       30 MOVE                             R6 R1
       31 CALL                             R2 4 0
       32 GETUPVAL                         R2 3
       33 LOADB                            R3 1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

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
       21 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R8 0 1
       28 GETTABLEKS                       R9 R0 K2 ["ErrorAssetIds"]
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K1 ["useMemo"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U7
       41 NEWTABLE                         R9 0 2
       43 MOVE                             R10 R6
       44 GETTABLEKS                       R11 R0 K2 ["ErrorAssetIds"]
       46 SETLIST                          R9 R10 2 [1]
       48 CALL                             R7 2 2
       49 GETTABLEKS                       R10 R0 K3 ["TestExperiences"]
       51 JUMPIFNOT                        R10 ; [+4]
       52 GETUPVAL                         R9 8
       53 GETTABLEKS                       R9 R9 K4 ["Experiences"]
       55 JUMP                             ; [+1]
       56 GETUPVAL                         R9 9
       57 GETUPVAL                         R10 5
       58 GETTABLEKS                       R10 R10 K5 ["useState"]
       60 MOVE                             R11 R9
       61 CALL                             R10 1 2
       62 GETUPVAL                         R12 10
       63 CALL                             R12 0 2
       64 LOADB                            R14 1
       65 GETTABLEKS                       R16 R12 K6 ["Selection"]
       67 LENGTH                           R15 R16
       68 LOADN                            R16 0
       69 JUMPIFLT                         R16 R15 ; [+9]
       71 GETTABLEKS                       R16 R13 K6 ["Selection"]
       73 LENGTH                           R15 R16
       74 LOADN                            R16 0
       75 JUMPIFLT                         R16 R15 ; [+2]
       77 LOADB                            R14 0 +1
       78 LOADB                            R14 1
       79 LOADN                            R16 0
       80 GETTABLEKS                       R20 R12 K6 ["Selection"]
       82 LENGTH                           R19 R20
       83 GETTABLEKS                       R21 R13 K6 ["Selection"]
       85 LENGTH                           R20 R21
       86 ADD                              R18 R19 R20
       87 SUBRK                            R17 K7 [10] R18
       88 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       90 GETIMPORT                        R15 K10 [math.max]
       92 CALL                             R15 2 1
       93 GETUPVAL                         R16 5
       94 GETTABLEKS                       R16 R16 K5 ["useState"]
       96 LOADB                            R17 0
       97 CALL                             R16 1 2
       98 NEWCLOSURE                       R18 P2
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R17
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R4
      108 CAPTURE                          UPVAL U12
      109 CAPTURE                          UPVAL U13
      110 CAPTURE                          UPVAL U14
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U15
      113 CAPTURE                          VAL R1
      114 GETUPVAL                         R19 16
      115 GETTABLEKS                       R19 R19 K11 ["new"]
      117 CALL                             R19 0 1
      118 GETUPVAL                         R20 5
      119 GETTABLEKS                       R20 R20 K12 ["createElement"]
      121 GETUPVAL                         R21 17
      122 GETTABLEKS                       R21 R21 K13 ["View"]
      124 DUPTABLE                         R22 K16 [{["tag"] = "col gap-medium size-full padding-medium"}]
      125 DUPTABLE                         R23 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      126 GETTABLEKS                       R26 R0 K2 ["ErrorAssetIds"]
      128 LENGTH                           R25 R26
      129 LOADN                            R26 0
      130 JUMPIFNOTLT                      R26 R25 ; [+17]
      132 GETUPVAL                         R24 5
      133 GETTABLEKS                       R24 R24 K12 ["createElement"]
      135 GETUPVAL                         R25 18
      136 DUPTABLE                         R26 K25 [{"LayoutOrder", "OnViewErrors"}]
      137 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      139 CALL                             R27 1 1
      140 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      142 GETTABLEKS                       R27 R0 K24 ["OnViewErrors"]
      144 SETTABLEKS                       R27 R26 K24 ["OnViewErrors"]
      146 CALL                             R24 2 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R24
      149 SETTABLEKS                       R24 R23 K17 ["WarningBanner"]
      151 GETUPVAL                         R24 5
      152 GETTABLEKS                       R24 R24 K12 ["createElement"]
      154 GETUPVAL                         R25 17
      155 GETTABLEKS                       R25 R25 K13 ["View"]
      157 DUPTABLE                         R26 K28 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      158 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      160 CALL                             R27 1 1
      161 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      163 DUPTABLE                         R27 K31 [{"Title", "Description"}]
      164 GETUPVAL                         R28 5
      165 GETTABLEKS                       R28 R28 K12 ["createElement"]
      167 GETUPVAL                         R29 17
      168 GETTABLEKS                       R29 R29 K32 ["Text"]
      170 DUPTABLE                         R30 K37 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      171 LOADK                            R33 K38 ["QuickShare"]
      172 LENGTH                           R35 R6
      173 JUMPIFNOTEQKN                    R35 K33 [1] ; [+3]
      175 LOADK                            R34 K39 ["SharingOne"]
      176 JUMP                             ; [+1]
      177 LOADK                            R34 K40 ["SharingMultiple"]
      178 DUPTABLE                         R35 K42 [{"count"}]
      179 LENGTH                           R37 R6
      180 FASTCALL1                        TOSTRING R37 ; [+2]
      181 GETIMPORT                        R36 K44 [tostring]
      183 CALL                             R36 1 1
      184 SETTABLEKS                       R36 R35 K41 ["count"]
      186 NAMECALL                         R31 R2 K45 ["getText"]
      188 CALL                             R31 4 1
      189 SETTABLEKS                       R31 R30 K32 ["Text"]
      191 CALL                             R28 2 1
      192 SETTABLEKS                       R28 R27 K29 ["Title"]
      194 GETUPVAL                         R28 5
      195 GETTABLEKS                       R28 R28 K12 ["createElement"]
      197 GETUPVAL                         R29 17
      198 GETTABLEKS                       R29 R29 K32 ["Text"]
      200 DUPTABLE                         R30 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      201 LOADK                            R33 K38 ["QuickShare"]
      202 LOADK                            R34 K49 ["DialogDescription"]
      203 NAMECALL                         R31 R2 K45 ["getText"]
      205 CALL                             R31 3 1
      206 SETTABLEKS                       R31 R30 K32 ["Text"]
      208 CALL                             R28 2 1
      209 SETTABLEKS                       R28 R27 K30 ["Description"]
      211 CALL                             R24 3 1
      212 SETTABLEKS                       R24 R23 K18 ["Header"]
      214 GETUPVAL                         R24 5
      215 GETTABLEKS                       R24 R24 K12 ["createElement"]
      217 GETUPVAL                         R25 17
      218 GETTABLEKS                       R25 R25 K13 ["View"]
      220 DUPTABLE                         R26 K51 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      221 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      223 CALL                             R27 1 1
      224 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      226 GETUPVAL                         R27 5
      227 GETTABLEKS                       R27 R27 K12 ["createElement"]
      229 GETUPVAL                         R28 17
      230 GETTABLEKS                       R28 R28 K52 ["Tabs"]
      232 DUPTABLE                         R29 K60 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      233 SETTABLEKS                       R10 R29 K53 ["activeTabId"]
      235 SETTABLEKS                       R11 R29 K54 ["onActivated"]
      237 NEWTABLE                         R30 0 2
      239 DUPTABLE                         R31 K63 [{"id", "text"}]
      240 GETUPVAL                         R32 8
      241 GETTABLEKS                       R32 R32 K64 ["Collaborators"]
      243 SETTABLEKS                       R32 R31 K61 ["id"]
      245 LOADK                            R34 K38 ["QuickShare"]
      246 LOADK                            R35 K65 ["CollaboratorsTab"]
      247 NAMECALL                         R32 R2 K45 ["getText"]
      249 CALL                             R32 3 1
      250 SETTABLEKS                       R32 R31 K62 ["text"]
      252 DUPTABLE                         R32 K63 [{"id", "text"}]
      253 GETUPVAL                         R33 8
      254 GETTABLEKS                       R33 R33 K4 ["Experiences"]
      256 SETTABLEKS                       R33 R32 K61 ["id"]
      258 LOADK                            R35 K38 ["QuickShare"]
      259 LOADK                            R36 K66 ["ExperiencesTab"]
      260 NAMECALL                         R33 R2 K45 ["getText"]
      262 CALL                             R33 3 1
      263 SETTABLEKS                       R33 R32 K62 ["text"]
      265 SETLIST                          R30 R31 2 [1]
      267 SETTABLEKS                       R30 R29 K55 ["tabs"]
      269 SETTABLEKS                       R9 R29 K56 ["defaultActiveTabId"]
      271 GETUPVAL                         R30 17
      272 GETTABLEKS                       R30 R30 K67 ["Enums"]
      274 GETTABLEKS                       R30 R30 K68 ["InputSize"]
      276 GETTABLEKS                       R30 R30 K69 ["Small"]
      278 SETTABLEKS                       R30 R29 K57 ["size"]
      280 GETUPVAL                         R30 17
      281 GETTABLEKS                       R30 R30 K67 ["Enums"]
      283 GETTABLEKS                       R30 R30 K70 ["FillBehavior"]
      285 GETTABLEKS                       R30 R30 K71 ["Fill"]
      287 SETTABLEKS                       R30 R29 K58 ["fillBehavior"]
      289 CALL                             R27 2 -1
      290 CALL                             R24 -1 1
      291 SETTABLEKS                       R24 R23 K19 ["TabButtons"]
      293 GETUPVAL                         R24 5
      294 GETTABLEKS                       R24 R24 K12 ["createElement"]
      296 GETUPVAL                         R25 17
      297 GETTABLEKS                       R25 R25 K13 ["View"]
      299 DUPTABLE                         R26 K73 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      300 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      302 CALL                             R27 1 1
      303 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      305 NEWTABLE                         R27 0 1
      307 GETUPVAL                         R29 8
      308 GETTABLEKS                       R29 R29 K64 ["Collaborators"]
      310 JUMPIFNOTEQ                      R10 R29 ; [+14]
      312 GETUPVAL                         R28 5
      313 GETTABLEKS                       R28 R28 K12 ["createElement"]
      315 GETUPVAL                         R29 19
      316 DUPTABLE                         R30 K77 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      317 SETTABLEKS                       R15 R30 K74 ["MaxCount"]
      319 SETTABLEKS                       R7 R30 K75 ["CanAddEditors"]
      321 SETTABLEKS                       R8 R30 K76 ["HasNonEditTypes"]
      323 CALL                             R28 2 1
      324 JUMP                             ; [+8]
      325 GETUPVAL                         R28 5
      326 GETTABLEKS                       R28 R28 K12 ["createElement"]
      328 GETUPVAL                         R29 20
      329 DUPTABLE                         R30 K78 [{"MaxCount"}]
      330 SETTABLEKS                       R15 R30 K74 ["MaxCount"]
      332 CALL                             R28 2 1
      333 SETLIST                          R27 R28 1 [1]
      335 CALL                             R24 3 1
      336 SETTABLEKS                       R24 R23 K20 ["TabContent"]
      338 GETUPVAL                         R24 5
      339 GETTABLEKS                       R24 R24 K12 ["createElement"]
      341 GETUPVAL                         R25 17
      342 GETTABLEKS                       R25 R25 K13 ["View"]
      344 DUPTABLE                         R26 K80 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      345 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      347 CALL                             R27 1 1
      348 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      350 DUPTABLE                         R27 K83 [{"CancelButton", "ShareButton"}]
      351 GETUPVAL                         R28 5
      352 GETTABLEKS                       R28 R28 K12 ["createElement"]
      354 GETUPVAL                         R29 17
      355 GETTABLEKS                       R29 R29 K84 ["Button"]
      357 DUPTABLE                         R30 K88 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      358 LOADK                            R33 K38 ["QuickShare"]
      359 LOADK                            R34 K81 ["CancelButton"]
      360 NAMECALL                         R31 R2 K45 ["getText"]
      362 CALL                             R31 3 1
      363 SETTABLEKS                       R31 R30 K62 ["text"]
      365 SETTABLEKS                       R16 R30 K85 ["isDisabled"]
      367 NEWCLOSURE                       R31 P3
      368 CAPTURE                          VAL R0
      369 SETTABLEKS                       R31 R30 K54 ["onActivated"]
      371 GETUPVAL                         R31 17
      372 GETTABLEKS                       R31 R31 K67 ["Enums"]
      374 GETTABLEKS                       R31 R31 K89 ["ButtonVariant"]
      376 GETTABLEKS                       R31 R31 K90 ["Standard"]
      378 SETTABLEKS                       R31 R30 K86 ["variant"]
      380 GETUPVAL                         R31 17
      381 GETTABLEKS                       R31 R31 K67 ["Enums"]
      383 GETTABLEKS                       R31 R31 K68 ["InputSize"]
      385 GETTABLEKS                       R31 R31 K69 ["Small"]
      387 SETTABLEKS                       R31 R30 K57 ["size"]
      389 CALL                             R28 2 1
      390 SETTABLEKS                       R28 R27 K81 ["CancelButton"]
      392 GETUPVAL                         R28 5
      393 GETTABLEKS                       R28 R28 K12 ["createElement"]
      395 GETUPVAL                         R29 17
      396 GETTABLEKS                       R29 R29 K84 ["Button"]
      398 DUPTABLE                         R30 K93 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      399 LOADK                            R33 K38 ["QuickShare"]
      400 LOADK                            R34 K82 ["ShareButton"]
      401 NAMECALL                         R31 R2 K45 ["getText"]
      403 CALL                             R31 3 1
      404 SETTABLEKS                       R31 R30 K62 ["text"]
      406 SETTABLEKS                       R16 R30 K91 ["isLoading"]
      408 LOADB                            R31 1
      409 LENGTH                           R32 R6
      410 JUMPIFEQKN                       R32 K94 [0] ; [+2]
      412 NOT                              R31 R14
      413 SETTABLEKS                       R31 R30 K85 ["isDisabled"]
      415 SETTABLEKS                       R18 R30 K54 ["onActivated"]
      417 GETUPVAL                         R31 17
      418 GETTABLEKS                       R31 R31 K67 ["Enums"]
      420 GETTABLEKS                       R31 R31 K89 ["ButtonVariant"]
      422 GETTABLEKS                       R31 R31 K95 ["Emphasis"]
      424 SETTABLEKS                       R31 R30 K86 ["variant"]
      426 GETUPVAL                         R31 17
      427 GETTABLEKS                       R31 R31 K67 ["Enums"]
      429 GETTABLEKS                       R31 R31 K68 ["InputSize"]
      431 GETTABLEKS                       R31 R31 K69 ["Small"]
      433 SETTABLEKS                       R31 R30 K57 ["size"]
      435 CALL                             R28 2 1
      436 SETTABLEKS                       R28 R27 K82 ["ShareButton"]
      438 CALL                             R24 3 1
      439 SETTABLEKS                       R24 R23 K21 ["Footer"]
      441 CALL                             R20 3 -1
      442 RETURN                           R20 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["LayoutOrderIterator"]
       43 GETTABLEKS                       R7 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K16 ["Localization"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Analytics"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K17 ["Src"]
       58 GETTABLEKS                       R11 R11 K19 ["DEPRECATED_Analytics"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K17 ["Src"]
       65 GETTABLEKS                       R12 R12 K20 ["Types"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R11 K21 ["AssetType"]
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R0 K17 ["Src"]
       74 GETTABLEKS                       R14 R14 K22 ["Networking"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R15 R0 K17 ["Src"]
       81 GETTABLEKS                       R15 R15 K23 ["Controllers"]
       83 GETTABLEKS                       R15 R15 K24 ["ExplorerController"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R0 K17 ["Src"]
       90 GETTABLEKS                       R16 R16 K23 ["Controllers"]
       92 GETTABLEKS                       R16 R16 K25 ["ItemsController"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K5 [require]
       97 GETTABLEKS                       R17 R0 K17 ["Src"]
       99 GETTABLEKS                       R17 R17 K23 ["Controllers"]
      101 GETTABLEKS                       R17 R17 K26 ["LayoutController"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K5 [require]
      106 GETIMPORT                        R18 K1 [script]
      108 GETTABLEKS                       R18 R18 K27 ["CollaboratorsTab"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETIMPORT                        R19 K1 [script]
      115 GETTABLEKS                       R19 R19 K28 ["ExperiencesTab"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K5 [require]
      120 GETTABLEKS                       R20 R0 K17 ["Src"]
      122 GETTABLEKS                       R20 R20 K13 ["Util"]
      124 GETTABLEKS                       R20 R20 K29 ["Dialogs"]
      126 GETTABLEKS                       R20 R20 K30 ["useQuickShareState"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K5 [require]
      131 GETTABLEKS                       R21 R0 K17 ["Src"]
      133 GETTABLEKS                       R21 R21 K13 ["Util"]
      135 GETTABLEKS                       R21 R21 K31 ["getViewTypeTelemetryString"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K5 [require]
      140 GETTABLEKS                       R22 R0 K17 ["Src"]
      142 GETTABLEKS                       R22 R22 K13 ["Util"]
      144 GETTABLEKS                       R22 R22 K32 ["grantPermissionsAsync"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K5 [require]
      149 GETTABLEKS                       R23 R0 K17 ["Src"]
      151 GETTABLEKS                       R23 R23 K33 ["Flags"]
      153 GETTABLEKS                       R23 R23 K34 ["getFFlagAmrDisableShardedEvent"]
      155 CALL                             R22 1 1
      156 DUPTABLE                         R23 K39 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      157 GETTABLEKS                       R24 R23 K35 ["Collaborators"]
      159 DUPCLOSURE                       R25 K40 [PROTO_0]
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R3
      164 DUPCLOSURE                       R26 K41 [PROTO_12]
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R18
      186 RETURN                           R26 1
