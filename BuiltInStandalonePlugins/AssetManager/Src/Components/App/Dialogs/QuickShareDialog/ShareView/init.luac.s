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
       24 GETUPVAL                         R4 2
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+60]
       27 JUMPIF                           R3 ; [+59]
       28 GETUPVAL                         R4 3
       29 NAMECALL                         R4 R4 K3 ["getScopeAnalyticsContext"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K4 ["map"]
       35 GETUPVAL                         R6 4
       36 DUPCLOSURE                       R7 K5 [PROTO_7]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K4 ["map"]
       41 GETUPVAL                         R7 4
       42 DUPCLOSURE                       R8 K6 [PROTO_8]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K7 ["sendShareEvent"]
       47 DUPTABLE                         R8 K16 [{"shareType", "shareTargetIds", "shareTargetTypes", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R9 R9 K17 ["Enums"]
       51 GETTABLEKS                       R9 R9 K18 ["ShareType"]
       53 GETTABLEKS                       R9 R9 K19 ["Collaborator"]
       55 SETTABLEKS                       R9 R8 K8 ["shareType"]
       57 SETTABLEKS                       R5 R8 K9 ["shareTargetIds"]
       59 SETTABLEKS                       R6 R8 K10 ["shareTargetTypes"]
       61 GETTABLEKS                       R9 R4 K11 ["currentRootId"]
       63 SETTABLEKS                       R9 R8 K11 ["currentRootId"]
       65 GETTABLEKS                       R9 R4 K12 ["currentRootType"]
       67 SETTABLEKS                       R9 R8 K12 ["currentRootType"]
       69 GETTABLEKS                       R9 R4 K13 ["currentFolderId"]
       71 SETTABLEKS                       R9 R8 K13 ["currentFolderId"]
       73 GETUPVAL                         R9 6
       74 SETTABLEKS                       R9 R8 K14 ["assetIds"]
       76 GETUPVAL                         R9 7
       77 GETUPVAL                         R10 8
       78 NAMECALL                         R10 R10 K20 ["getBrowserLayout"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R10 R10 K21 ["ViewType"]
       83 CALL                             R9 1 1
       84 SETTABLEKS                       R9 R8 K15 ["viewMode"]
       86 CALL                             R7 1 0
       87 GETUPVAL                         R4 9
       88 GETTABLEKS                       R4 R4 K22 ["OnDone"]
       90 JUMPIFNOT                        R3 ; [+2]
       91 LOADN                            R5 0
       92 JUMP                             ; [+2]
       93 GETUPVAL                         R6 6
       94 LENGTH                           R5 R6
       95 GETUPVAL                         R6 1
       96 GETTABLEKS                       R6 R6 K23 ["keys"]
       98 MOVE                             R7 R2
       99 CALL                             R6 1 -1
      100 CALL                             R4 -1 0
      101 RETURN                           R0 0

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
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U10
       24 GETUPVAL                         R2 11
       25 GETUPVAL                         R3 12
       26 GETUPVAL                         R4 7
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 CALL                             R2 4 0
       30 GETUPVAL                         R2 3
       31 LOADB                            R3 1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

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
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          VAL R3
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U13
      107 CAPTURE                          VAL R1
      108 GETUPVAL                         R18 14
      109 GETTABLEKS                       R18 R18 K11 ["new"]
      111 CALL                             R18 0 1
      112 GETUPVAL                         R19 4
      113 GETTABLEKS                       R19 R19 K12 ["createElement"]
      115 GETUPVAL                         R20 15
      116 GETTABLEKS                       R20 R20 K13 ["View"]
      118 DUPTABLE                         R21 K16 [{["tag"] = "col gap-medium size-full padding-medium"}]
      119 DUPTABLE                         R22 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      120 GETTABLEKS                       R25 R0 K2 ["ErrorAssetIds"]
      122 LENGTH                           R24 R25
      123 LOADN                            R25 0
      124 JUMPIFNOTLT                      R25 R24 ; [+17]
      126 GETUPVAL                         R23 4
      127 GETTABLEKS                       R23 R23 K12 ["createElement"]
      129 GETUPVAL                         R24 16
      130 DUPTABLE                         R25 K25 [{"LayoutOrder", "OnViewErrors"}]
      131 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      133 CALL                             R26 1 1
      134 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      136 GETTABLEKS                       R26 R0 K24 ["OnViewErrors"]
      138 SETTABLEKS                       R26 R25 K24 ["OnViewErrors"]
      140 CALL                             R23 2 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R23
      143 SETTABLEKS                       R23 R22 K17 ["WarningBanner"]
      145 GETUPVAL                         R23 4
      146 GETTABLEKS                       R23 R23 K12 ["createElement"]
      148 GETUPVAL                         R24 15
      149 GETTABLEKS                       R24 R24 K13 ["View"]
      151 DUPTABLE                         R25 K28 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      152 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      154 CALL                             R26 1 1
      155 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      157 DUPTABLE                         R26 K31 [{"Title", "Description"}]
      158 GETUPVAL                         R27 4
      159 GETTABLEKS                       R27 R27 K12 ["createElement"]
      161 GETUPVAL                         R28 15
      162 GETTABLEKS                       R28 R28 K32 ["Text"]
      164 DUPTABLE                         R29 K37 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      165 LOADK                            R32 K38 ["QuickShare"]
      166 LENGTH                           R34 R5
      167 JUMPIFNOTEQKN                    R34 K33 [1] ; [+3]
      169 LOADK                            R33 K39 ["SharingOne"]
      170 JUMP                             ; [+1]
      171 LOADK                            R33 K40 ["SharingMultiple"]
      172 DUPTABLE                         R34 K42 [{"count"}]
      173 LENGTH                           R36 R5
      174 FASTCALL1                        TOSTRING R36 ; [+2]
      175 GETIMPORT                        R35 K44 [tostring]
      177 CALL                             R35 1 1
      178 SETTABLEKS                       R35 R34 K41 ["count"]
      180 NAMECALL                         R30 R2 K45 ["getText"]
      182 CALL                             R30 4 1
      183 SETTABLEKS                       R30 R29 K32 ["Text"]
      185 CALL                             R27 2 1
      186 SETTABLEKS                       R27 R26 K29 ["Title"]
      188 GETUPVAL                         R27 4
      189 GETTABLEKS                       R27 R27 K12 ["createElement"]
      191 GETUPVAL                         R28 15
      192 GETTABLEKS                       R28 R28 K32 ["Text"]
      194 DUPTABLE                         R29 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      195 LOADK                            R32 K38 ["QuickShare"]
      196 LOADK                            R33 K49 ["DialogDescription"]
      197 NAMECALL                         R30 R2 K45 ["getText"]
      199 CALL                             R30 3 1
      200 SETTABLEKS                       R30 R29 K32 ["Text"]
      202 CALL                             R27 2 1
      203 SETTABLEKS                       R27 R26 K30 ["Description"]
      205 CALL                             R23 3 1
      206 SETTABLEKS                       R23 R22 K18 ["Header"]
      208 GETUPVAL                         R23 4
      209 GETTABLEKS                       R23 R23 K12 ["createElement"]
      211 GETUPVAL                         R24 15
      212 GETTABLEKS                       R24 R24 K13 ["View"]
      214 DUPTABLE                         R25 K51 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      215 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      217 CALL                             R26 1 1
      218 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      220 GETUPVAL                         R26 4
      221 GETTABLEKS                       R26 R26 K12 ["createElement"]
      223 GETUPVAL                         R27 15
      224 GETTABLEKS                       R27 R27 K52 ["Tabs"]
      226 DUPTABLE                         R28 K60 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      227 SETTABLEKS                       R9 R28 K53 ["activeTabId"]
      229 SETTABLEKS                       R10 R28 K54 ["onActivated"]
      231 NEWTABLE                         R29 0 2
      233 DUPTABLE                         R30 K63 [{"id", "text"}]
      234 GETUPVAL                         R31 7
      235 GETTABLEKS                       R31 R31 K64 ["Collaborators"]
      237 SETTABLEKS                       R31 R30 K61 ["id"]
      239 LOADK                            R33 K38 ["QuickShare"]
      240 LOADK                            R34 K65 ["CollaboratorsTab"]
      241 NAMECALL                         R31 R2 K45 ["getText"]
      243 CALL                             R31 3 1
      244 SETTABLEKS                       R31 R30 K62 ["text"]
      246 DUPTABLE                         R31 K63 [{"id", "text"}]
      247 GETUPVAL                         R32 7
      248 GETTABLEKS                       R32 R32 K4 ["Experiences"]
      250 SETTABLEKS                       R32 R31 K61 ["id"]
      252 LOADK                            R34 K38 ["QuickShare"]
      253 LOADK                            R35 K66 ["ExperiencesTab"]
      254 NAMECALL                         R32 R2 K45 ["getText"]
      256 CALL                             R32 3 1
      257 SETTABLEKS                       R32 R31 K62 ["text"]
      259 SETLIST                          R29 R30 2 [1]
      261 SETTABLEKS                       R29 R28 K55 ["tabs"]
      263 SETTABLEKS                       R8 R28 K56 ["defaultActiveTabId"]
      265 GETUPVAL                         R29 15
      266 GETTABLEKS                       R29 R29 K67 ["Enums"]
      268 GETTABLEKS                       R29 R29 K68 ["InputSize"]
      270 GETTABLEKS                       R29 R29 K69 ["Small"]
      272 SETTABLEKS                       R29 R28 K57 ["size"]
      274 GETUPVAL                         R29 15
      275 GETTABLEKS                       R29 R29 K67 ["Enums"]
      277 GETTABLEKS                       R29 R29 K70 ["FillBehavior"]
      279 GETTABLEKS                       R29 R29 K71 ["Fill"]
      281 SETTABLEKS                       R29 R28 K58 ["fillBehavior"]
      283 CALL                             R26 2 -1
      284 CALL                             R23 -1 1
      285 SETTABLEKS                       R23 R22 K19 ["TabButtons"]
      287 GETUPVAL                         R23 4
      288 GETTABLEKS                       R23 R23 K12 ["createElement"]
      290 GETUPVAL                         R24 15
      291 GETTABLEKS                       R24 R24 K13 ["View"]
      293 DUPTABLE                         R25 K73 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      294 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      296 CALL                             R26 1 1
      297 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      299 NEWTABLE                         R26 0 1
      301 GETUPVAL                         R28 7
      302 GETTABLEKS                       R28 R28 K64 ["Collaborators"]
      304 JUMPIFNOTEQ                      R9 R28 ; [+14]
      306 GETUPVAL                         R27 4
      307 GETTABLEKS                       R27 R27 K12 ["createElement"]
      309 GETUPVAL                         R28 17
      310 DUPTABLE                         R29 K77 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      311 SETTABLEKS                       R14 R29 K74 ["MaxCount"]
      313 SETTABLEKS                       R6 R29 K75 ["CanAddEditors"]
      315 SETTABLEKS                       R7 R29 K76 ["HasNonEditTypes"]
      317 CALL                             R27 2 1
      318 JUMP                             ; [+8]
      319 GETUPVAL                         R27 4
      320 GETTABLEKS                       R27 R27 K12 ["createElement"]
      322 GETUPVAL                         R28 18
      323 DUPTABLE                         R29 K78 [{"MaxCount"}]
      324 SETTABLEKS                       R14 R29 K74 ["MaxCount"]
      326 CALL                             R27 2 1
      327 SETLIST                          R26 R27 1 [1]
      329 CALL                             R23 3 1
      330 SETTABLEKS                       R23 R22 K20 ["TabContent"]
      332 GETUPVAL                         R23 4
      333 GETTABLEKS                       R23 R23 K12 ["createElement"]
      335 GETUPVAL                         R24 15
      336 GETTABLEKS                       R24 R24 K13 ["View"]
      338 DUPTABLE                         R25 K80 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      339 NAMECALL                         R26 R18 K26 ["getNextOrder"]
      341 CALL                             R26 1 1
      342 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      344 DUPTABLE                         R26 K83 [{"CancelButton", "ShareButton"}]
      345 GETUPVAL                         R27 4
      346 GETTABLEKS                       R27 R27 K12 ["createElement"]
      348 GETUPVAL                         R28 15
      349 GETTABLEKS                       R28 R28 K84 ["Button"]
      351 DUPTABLE                         R29 K88 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      352 LOADK                            R32 K38 ["QuickShare"]
      353 LOADK                            R33 K81 ["CancelButton"]
      354 NAMECALL                         R30 R2 K45 ["getText"]
      356 CALL                             R30 3 1
      357 SETTABLEKS                       R30 R29 K62 ["text"]
      359 SETTABLEKS                       R15 R29 K85 ["isDisabled"]
      361 NEWCLOSURE                       R30 P3
      362 CAPTURE                          VAL R0
      363 SETTABLEKS                       R30 R29 K54 ["onActivated"]
      365 GETUPVAL                         R30 15
      366 GETTABLEKS                       R30 R30 K67 ["Enums"]
      368 GETTABLEKS                       R30 R30 K89 ["ButtonVariant"]
      370 GETTABLEKS                       R30 R30 K90 ["Standard"]
      372 SETTABLEKS                       R30 R29 K86 ["variant"]
      374 GETUPVAL                         R30 15
      375 GETTABLEKS                       R30 R30 K67 ["Enums"]
      377 GETTABLEKS                       R30 R30 K68 ["InputSize"]
      379 GETTABLEKS                       R30 R30 K69 ["Small"]
      381 SETTABLEKS                       R30 R29 K57 ["size"]
      383 CALL                             R27 2 1
      384 SETTABLEKS                       R27 R26 K81 ["CancelButton"]
      386 GETUPVAL                         R27 4
      387 GETTABLEKS                       R27 R27 K12 ["createElement"]
      389 GETUPVAL                         R28 15
      390 GETTABLEKS                       R28 R28 K84 ["Button"]
      392 DUPTABLE                         R29 K93 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      393 LOADK                            R32 K38 ["QuickShare"]
      394 LOADK                            R33 K82 ["ShareButton"]
      395 NAMECALL                         R30 R2 K45 ["getText"]
      397 CALL                             R30 3 1
      398 SETTABLEKS                       R30 R29 K62 ["text"]
      400 SETTABLEKS                       R15 R29 K91 ["isLoading"]
      402 LOADB                            R30 1
      403 LENGTH                           R31 R5
      404 JUMPIFEQKN                       R31 K94 [0] ; [+2]
      406 NOT                              R30 R13
      407 SETTABLEKS                       R30 R29 K85 ["isDisabled"]
      409 SETTABLEKS                       R17 R29 K54 ["onActivated"]
      411 GETUPVAL                         R30 15
      412 GETTABLEKS                       R30 R30 K67 ["Enums"]
      414 GETTABLEKS                       R30 R30 K89 ["ButtonVariant"]
      416 GETTABLEKS                       R30 R30 K95 ["Emphasis"]
      418 SETTABLEKS                       R30 R29 K86 ["variant"]
      420 GETUPVAL                         R30 15
      421 GETTABLEKS                       R30 R30 K67 ["Enums"]
      423 GETTABLEKS                       R30 R30 K68 ["InputSize"]
      425 GETTABLEKS                       R30 R30 K69 ["Small"]
      427 SETTABLEKS                       R30 R29 K57 ["size"]
      429 CALL                             R27 2 1
      430 SETTABLEKS                       R27 R26 K82 ["ShareButton"]
      432 CALL                             R23 3 1
      433 SETTABLEKS                       R23 R22 K21 ["Footer"]
      435 CALL                             R19 3 -1
      436 RETURN                           R19 -1

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
      131 GETIMPORT                        R20 K5 [require]
      133 GETTABLEKS                       R21 R0 K17 ["Src"]
      135 GETTABLEKS                       R21 R21 K31 ["Flags"]
      137 GETTABLEKS                       R21 R21 K32 ["getFFlagAmrUpdatedAnalytics"]
      139 CALL                             R20 1 1
      140 DUPTABLE                         R21 K37 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      141 GETTABLEKS                       R22 R21 K33 ["Collaborators"]
      143 DUPCLOSURE                       R23 K38 [PROTO_0]
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R3
      148 DUPCLOSURE                       R24 K39 [PROTO_12]
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R16
      168 RETURN                           R24 1
