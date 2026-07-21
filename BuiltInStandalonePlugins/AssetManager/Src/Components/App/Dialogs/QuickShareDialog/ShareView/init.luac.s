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
       24 JUMPIF                           R3 ; [+59]
       25 GETUPVAL                         R4 2
       26 NAMECALL                         R4 R4 K3 ["getScopeAnalyticsContext"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K4 ["map"]
       32 GETUPVAL                         R6 3
       33 DUPCLOSURE                       R7 K5 [PROTO_7]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K4 ["map"]
       38 GETUPVAL                         R7 3
       39 DUPCLOSURE                       R8 K6 [PROTO_8]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R7 R7 K7 ["sendShareEvent"]
       44 DUPTABLE                         R8 K16 [{"shareType", "shareTargetIds", "shareTargetTypes", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K17 ["Enums"]
       48 GETTABLEKS                       R9 R9 K18 ["ShareType"]
       50 GETTABLEKS                       R9 R9 K19 ["Collaborator"]
       52 SETTABLEKS                       R9 R8 K8 ["shareType"]
       54 SETTABLEKS                       R5 R8 K9 ["shareTargetIds"]
       56 SETTABLEKS                       R6 R8 K10 ["shareTargetTypes"]
       58 GETTABLEKS                       R9 R4 K11 ["currentRootId"]
       60 SETTABLEKS                       R9 R8 K11 ["currentRootId"]
       62 GETTABLEKS                       R9 R4 K12 ["currentRootType"]
       64 SETTABLEKS                       R9 R8 K12 ["currentRootType"]
       66 GETTABLEKS                       R9 R4 K13 ["currentFolderId"]
       68 SETTABLEKS                       R9 R8 K13 ["currentFolderId"]
       70 GETUPVAL                         R9 5
       71 SETTABLEKS                       R9 R8 K14 ["assetIds"]
       73 GETUPVAL                         R9 6
       74 GETUPVAL                         R10 7
       75 NAMECALL                         R10 R10 K20 ["getBrowserLayout"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R10 R10 K21 ["ViewType"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R9 R8 K15 ["viewMode"]
       83 CALL                             R7 1 0
       84 GETUPVAL                         R4 8
       85 GETTABLEKS                       R4 R4 K22 ["OnDone"]
       87 JUMPIFNOT                        R3 ; [+2]
       88 LOADN                            R5 0
       89 JUMP                             ; [+2]
       90 GETUPVAL                         R6 5
       91 LENGTH                           R5 R6
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R6 R6 K23 ["keys"]
       95 MOVE                             R7 R2
       96 CALL                             R6 1 -1
       97 CALL                             R4 -1 0
       98 RETURN                           R0 0

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
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 GETUPVAL                         R2 10
       24 GETUPVAL                         R3 11
       25 GETUPVAL                         R4 6
       26 MOVE                             R5 R0
       27 MOVE                             R6 R1
       28 CALL                             R2 4 0
       29 GETUPVAL                         R2 3
       30 LOADB                            R3 1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

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
       17 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R7 0 1
       24 GETTABLEKS                       R8 R0 K2 ["ErrorAssetIds"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U6
       37 NEWTABLE                         R8 0 2
       39 MOVE                             R9 R5
       40 GETTABLEKS                       R10 R0 K2 ["ErrorAssetIds"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 2
       45 GETTABLEKS                       R9 R0 K3 ["TestExperiences"]
       47 JUMPIFNOT                        R9 ; [+4]
       48 GETUPVAL                         R8 7
       49 GETTABLEKS                       R8 R8 K4 ["Experiences"]
       51 JUMP                             ; [+1]
       52 GETUPVAL                         R8 8
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K5 ["useState"]
       56 MOVE                             R10 R8
       57 CALL                             R9 1 2
       58 GETUPVAL                         R11 9
       59 CALL                             R11 0 2
       60 LOADB                            R13 1
       61 GETTABLEKS                       R15 R11 K6 ["Selection"]
       63 LENGTH                           R14 R15
       64 LOADN                            R15 0
       65 JUMPIFLT                         R15 R14 ; [+9]
       67 GETTABLEKS                       R15 R12 K6 ["Selection"]
       69 LENGTH                           R14 R15
       70 LOADN                            R15 0
       71 JUMPIFLT                         R15 R14 ; [+2]
       73 LOADB                            R13 0 +1
       74 LOADB                            R13 1
       75 LOADN                            R15 0
       76 GETTABLEKS                       R19 R11 K6 ["Selection"]
       78 LENGTH                           R18 R19
       79 GETTABLEKS                       R20 R12 K6 ["Selection"]
       81 LENGTH                           R19 R20
       82 ADD                              R17 R18 R19
       83 SUBRK                            R16 K7 [10] R17
       84 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
       86 GETIMPORT                        R14 K10 [math.max]
       88 CALL                             R14 2 1
       89 GETUPVAL                         R15 4
       90 GETTABLEKS                       R15 R15 K5 ["useState"]
       92 LOADB                            R16 0
       93 CALL                             R15 1 2
       94 NEWCLOSURE                       R17 P2
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U10
      101 CAPTURE                          VAL R5
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          VAL R1
      107 GETUPVAL                         R18 13
      108 GETTABLEKS                       R18 R18 K11 ["new"]
      110 CALL                             R18 0 1
      111 GETUPVAL                         R19 4
      112 GETTABLEKS                       R19 R19 K12 ["createElement"]
      114 GETUPVAL                         R20 14
      115 GETTABLEKS                       R20 R20 K13 ["View"]
      117 DUPTABLE                         R21 K16 [{["tag"] = "col gap-medium size-full padding-medium"}]
      118 DUPTABLE                         R22 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      119 GETTABLEKS                       R25 R0 K2 ["ErrorAssetIds"]
      121 LENGTH                           R24 R25
      122 LOADN                            R25 0
      123 JUMPIFNOTLT                      R25 R24 ; [+17]
      125 GETUPVAL                         R23 4
      126 GETTABLEKS                       R23 R23 K12 ["createElement"]
      128 GETUPVAL                         R24 15
      129 DUPTABLE                         R25 K25 [{"LayoutOrder", "OnViewErrors"}]
      130 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      132 CALL                             R26 1 1
      133 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      135 GETTABLEKS                       R26 R0 K24 ["OnViewErrors"]
      137 SETTABLEKS                       R26 R25 K24 ["OnViewErrors"]
      139 CALL                             R23 2 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R23
      142 SETTABLEKS                       R23 R22 K17 ["WarningBanner"]
      144 GETUPVAL                         R23 4
      145 GETTABLEKS                       R23 R23 K12 ["createElement"]
      147 GETUPVAL                         R24 14
      148 GETTABLEKS                       R24 R24 K13 ["View"]
      150 DUPTABLE                         R25 K28 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      151 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      153 CALL                             R26 1 1
      154 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      156 DUPTABLE                         R26 K31 [{"Title", "Description"}]
      157 GETUPVAL                         R27 4
      158 GETTABLEKS                       R27 R27 K12 ["createElement"]
      160 GETUPVAL                         R28 14
      161 GETTABLEKS                       R28 R28 K32 ["Text"]
      163 DUPTABLE                         R29 K37 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      164 LOADK                            R32 K38 ["QuickShare"]
      165 LENGTH                           R34 R5
      166 JUMPIFNOTEQKN                    R34 K33 [1] ; [+3]
      168 LOADK                            R33 K39 ["SharingOne"]
      169 JUMP                             ; [+1]
      170 LOADK                            R33 K40 ["SharingMultiple"]
      171 DUPTABLE                         R34 K42 [{"count"}]
      172 LENGTH                           R36 R5
      173 FASTCALL1                        TOSTRING R36 ; [+2]
      174 GETIMPORT                        R35 K44 [tostring]
      176 CALL                             R35 1 1
      177 SETTABLEKS                       R35 R34 K41 ["count"]
      179 NAMECALL                         R30 R2 K45 ["getText"]
      181 CALL                             R30 4 1
      182 SETTABLEKS                       R30 R29 K32 ["Text"]
      184 CALL                             R27 2 1
      185 SETTABLEKS                       R27 R26 K29 ["Title"]
      187 GETUPVAL                         R27 4
      188 GETTABLEKS                       R27 R27 K12 ["createElement"]
      190 GETUPVAL                         R28 14
      191 GETTABLEKS                       R28 R28 K32 ["Text"]
      193 DUPTABLE                         R29 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      194 LOADK                            R32 K38 ["QuickShare"]
      195 LOADK                            R33 K49 ["DialogDescription"]
      196 NAMECALL                         R30 R2 K45 ["getText"]
      198 CALL                             R30 3 1
      199 SETTABLEKS                       R30 R29 K32 ["Text"]
      201 CALL                             R27 2 1
      202 SETTABLEKS                       R27 R26 K30 ["Description"]
      204 CALL                             R23 3 1
      205 SETTABLEKS                       R23 R22 K18 ["Header"]
      207 GETUPVAL                         R23 4
      208 GETTABLEKS                       R23 R23 K12 ["createElement"]
      210 GETUPVAL                         R24 14
      211 GETTABLEKS                       R24 R24 K13 ["View"]
      213 DUPTABLE                         R25 K51 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      214 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      216 CALL                             R26 1 1
      217 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      219 GETUPVAL                         R26 4
      220 GETTABLEKS                       R26 R26 K12 ["createElement"]
      222 GETUPVAL                         R27 14
      223 GETTABLEKS                       R27 R27 K52 ["Tabs"]
      225 DUPTABLE                         R28 K60 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      226 SETTABLEKS                       R9 R28 K53 ["activeTabId"]
      228 SETTABLEKS                       R10 R28 K54 ["onActivated"]
      230 NEWTABLE                         R29 0 2
      232 DUPTABLE                         R30 K63 [{"id", "text"}]
      233 GETUPVAL                         R31 7
      234 GETTABLEKS                       R31 R31 K64 ["Collaborators"]
      236 SETTABLEKS                       R31 R30 K61 ["id"]
      238 LOADK                            R33 K38 ["QuickShare"]
      239 LOADK                            R34 K65 ["CollaboratorsTab"]
      240 NAMECALL                         R31 R2 K45 ["getText"]
      242 CALL                             R31 3 1
      243 SETTABLEKS                       R31 R30 K62 ["text"]
      245 DUPTABLE                         R31 K63 [{"id", "text"}]
      246 GETUPVAL                         R32 7
      247 GETTABLEKS                       R32 R32 K4 ["Experiences"]
      249 SETTABLEKS                       R32 R31 K61 ["id"]
      251 LOADK                            R34 K38 ["QuickShare"]
      252 LOADK                            R35 K66 ["ExperiencesTab"]
      253 NAMECALL                         R32 R2 K45 ["getText"]
      255 CALL                             R32 3 1
      256 SETTABLEKS                       R32 R31 K62 ["text"]
      258 SETLIST                          R29 R30 2 [1]
      260 SETTABLEKS                       R29 R28 K55 ["tabs"]
      262 SETTABLEKS                       R8 R28 K56 ["defaultActiveTabId"]
      264 GETUPVAL                         R29 14
      265 GETTABLEKS                       R29 R29 K67 ["Enums"]
      267 GETTABLEKS                       R29 R29 K68 ["InputSize"]
      269 GETTABLEKS                       R29 R29 K69 ["Small"]
      271 SETTABLEKS                       R29 R28 K57 ["size"]
      273 GETUPVAL                         R29 14
      274 GETTABLEKS                       R29 R29 K67 ["Enums"]
      276 GETTABLEKS                       R29 R29 K70 ["FillBehavior"]
      278 GETTABLEKS                       R29 R29 K71 ["Fill"]
      280 SETTABLEKS                       R29 R28 K58 ["fillBehavior"]
      282 CALL                             R26 2 -1
      283 CALL                             R23 -1 1
      284 SETTABLEKS                       R23 R22 K19 ["TabButtons"]
      286 GETUPVAL                         R23 4
      287 GETTABLEKS                       R23 R23 K12 ["createElement"]
      289 GETUPVAL                         R24 14
      290 GETTABLEKS                       R24 R24 K13 ["View"]
      292 DUPTABLE                         R25 K73 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      293 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      295 CALL                             R26 1 1
      296 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      298 NEWTABLE                         R26 0 1
      300 GETUPVAL                         R28 7
      301 GETTABLEKS                       R28 R28 K64 ["Collaborators"]
      303 JUMPIFNOTEQ                      R9 R28 ; [+14]
      305 GETUPVAL                         R27 4
      306 GETTABLEKS                       R27 R27 K12 ["createElement"]
      308 GETUPVAL                         R28 16
      309 DUPTABLE                         R29 K77 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      310 SETTABLEKS                       R14 R29 K74 ["MaxCount"]
      312 SETTABLEKS                       R6 R29 K75 ["CanAddEditors"]
      314 SETTABLEKS                       R7 R29 K76 ["HasNonEditTypes"]
      316 CALL                             R27 2 1
      317 JUMP                             ; [+8]
      318 GETUPVAL                         R27 4
      319 GETTABLEKS                       R27 R27 K12 ["createElement"]
      321 GETUPVAL                         R28 17
      322 DUPTABLE                         R29 K78 [{"MaxCount"}]
      323 SETTABLEKS                       R14 R29 K74 ["MaxCount"]
      325 CALL                             R27 2 1
      326 SETLIST                          R26 R27 1 [1]
      328 CALL                             R23 3 1
      329 SETTABLEKS                       R23 R22 K20 ["TabContent"]
      331 GETUPVAL                         R23 4
      332 GETTABLEKS                       R23 R23 K12 ["createElement"]
      334 GETUPVAL                         R24 14
      335 GETTABLEKS                       R24 R24 K13 ["View"]
      337 DUPTABLE                         R25 K80 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      338 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      340 CALL                             R26 1 1
      341 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      343 DUPTABLE                         R26 K83 [{"CancelButton", "ShareButton"}]
      344 GETUPVAL                         R27 4
      345 GETTABLEKS                       R27 R27 K12 ["createElement"]
      347 GETUPVAL                         R28 14
      348 GETTABLEKS                       R28 R28 K84 ["Button"]
      350 DUPTABLE                         R29 K88 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      351 LOADK                            R32 K38 ["QuickShare"]
      352 LOADK                            R33 K81 ["CancelButton"]
      353 NAMECALL                         R30 R2 K45 ["getText"]
      355 CALL                             R30 3 1
      356 SETTABLEKS                       R30 R29 K62 ["text"]
      358 SETTABLEKS                       R15 R29 K85 ["isDisabled"]
      360 NEWCLOSURE                       R30 P3
      361 CAPTURE                          VAL R0
      362 SETTABLEKS                       R30 R29 K54 ["onActivated"]
      364 GETUPVAL                         R30 14
      365 GETTABLEKS                       R30 R30 K67 ["Enums"]
      367 GETTABLEKS                       R30 R30 K89 ["ButtonVariant"]
      369 GETTABLEKS                       R30 R30 K90 ["Standard"]
      371 SETTABLEKS                       R30 R29 K86 ["variant"]
      373 GETUPVAL                         R30 14
      374 GETTABLEKS                       R30 R30 K67 ["Enums"]
      376 GETTABLEKS                       R30 R30 K68 ["InputSize"]
      378 GETTABLEKS                       R30 R30 K69 ["Small"]
      380 SETTABLEKS                       R30 R29 K57 ["size"]
      382 CALL                             R27 2 1
      383 SETTABLEKS                       R27 R26 K81 ["CancelButton"]
      385 GETUPVAL                         R27 4
      386 GETTABLEKS                       R27 R27 K12 ["createElement"]
      388 GETUPVAL                         R28 14
      389 GETTABLEKS                       R28 R28 K84 ["Button"]
      391 DUPTABLE                         R29 K93 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      392 LOADK                            R32 K38 ["QuickShare"]
      393 LOADK                            R33 K82 ["ShareButton"]
      394 NAMECALL                         R30 R2 K45 ["getText"]
      396 CALL                             R30 3 1
      397 SETTABLEKS                       R30 R29 K62 ["text"]
      399 SETTABLEKS                       R15 R29 K91 ["isLoading"]
      401 LOADB                            R30 1
      402 LENGTH                           R31 R5
      403 JUMPIFEQKN                       R31 K94 [0] ; [+2]
      405 NOT                              R30 R13
      406 SETTABLEKS                       R30 R29 K85 ["isDisabled"]
      408 SETTABLEKS                       R17 R29 K54 ["onActivated"]
      410 GETUPVAL                         R30 14
      411 GETTABLEKS                       R30 R30 K67 ["Enums"]
      413 GETTABLEKS                       R30 R30 K89 ["ButtonVariant"]
      415 GETTABLEKS                       R30 R30 K95 ["Emphasis"]
      417 SETTABLEKS                       R30 R29 K86 ["variant"]
      419 GETUPVAL                         R30 14
      420 GETTABLEKS                       R30 R30 K67 ["Enums"]
      422 GETTABLEKS                       R30 R30 K68 ["InputSize"]
      424 GETTABLEKS                       R30 R30 K69 ["Small"]
      426 SETTABLEKS                       R30 R29 K57 ["size"]
      428 CALL                             R27 2 1
      429 SETTABLEKS                       R27 R26 K82 ["ShareButton"]
      431 CALL                             R23 3 1
      432 SETTABLEKS                       R23 R22 K21 ["Footer"]
      434 CALL                             R19 3 -1
      435 RETURN                           R19 -1

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
       51 GETTABLEKS                       R10 R10 K18 ["DEPRECATED_Analytics"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K17 ["Src"]
       58 GETTABLEKS                       R11 R11 K19 ["Types"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R10 K20 ["AssetType"]
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Src"]
       67 GETTABLEKS                       R13 R13 K21 ["Networking"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R0 K17 ["Src"]
       74 GETTABLEKS                       R14 R14 K22 ["Controllers"]
       76 GETTABLEKS                       R14 R14 K23 ["ItemsController"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R0 K17 ["Src"]
       83 GETTABLEKS                       R15 R15 K22 ["Controllers"]
       85 GETTABLEKS                       R15 R15 K24 ["LayoutController"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K5 [require]
       90 GETIMPORT                        R16 K1 [script]
       92 GETTABLEKS                       R16 R16 K25 ["CollaboratorsTab"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K5 [require]
       97 GETIMPORT                        R17 K1 [script]
       99 GETTABLEKS                       R17 R17 K26 ["ExperiencesTab"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R18 R0 K17 ["Src"]
      106 GETTABLEKS                       R18 R18 K13 ["Util"]
      108 GETTABLEKS                       R18 R18 K27 ["Dialogs"]
      110 GETTABLEKS                       R18 R18 K28 ["useQuickShareState"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K5 [require]
      115 GETTABLEKS                       R19 R0 K17 ["Src"]
      117 GETTABLEKS                       R19 R19 K13 ["Util"]
      119 GETTABLEKS                       R19 R19 K29 ["getViewTypeTelemetryString"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K5 [require]
      124 GETTABLEKS                       R20 R0 K17 ["Src"]
      126 GETTABLEKS                       R20 R20 K13 ["Util"]
      128 GETTABLEKS                       R20 R20 K30 ["grantPermissionsAsync"]
      130 CALL                             R19 1 1
      131 DUPTABLE                         R20 K35 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      132 GETTABLEKS                       R21 R20 K31 ["Collaborators"]
      134 DUPCLOSURE                       R22 K36 [PROTO_0]
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R3
      139 DUPCLOSURE                       R23 K37 [PROTO_12]
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R16
      158 RETURN                           R23 1
