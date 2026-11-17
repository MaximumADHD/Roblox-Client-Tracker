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
       24 JUMPIF                           R3 ; [+46]
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
       71 GETUPVAL                         R4 9
       72 GETTABLEKS                       R4 R4 K20 ["OnDone"]
       74 JUMPIFNOT                        R3 ; [+2]
       75 LOADN                            R5 0
       76 JUMP                             ; [+2]
       77 GETUPVAL                         R6 4
       78 LENGTH                           R5 R6
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R6 R6 K21 ["keys"]
       82 MOVE                             R7 R2
       83 CALL                             R6 1 -1
       84 CALL                             R4 -1 0
       85 RETURN                           R0 0

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
       24 GETUPVAL                         R2 11
       25 GETUPVAL                         R3 12
       26 GETUPVAL                         R4 8
       27 GETUPVAL                         R5 5
       28 MOVE                             R6 R0
       29 MOVE                             R7 R1
       30 CALL                             R2 5 0
       31 GETUPVAL                         R2 3
       32 LOADB                            R3 1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

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
       55 JUMPIFNOT                        R11 ; [+2]
       56 LOADN                            R10 2
       57 JUMP                             ; [+1]
       58 LOADN                            R10 1
       59 GETUPVAL                         R11 6
       60 GETTABLEKS                       R11 R11 K4 ["useState"]
       62 MOVE                             R12 R10
       63 CALL                             R11 1 2
       64 GETUPVAL                         R13 9
       65 CALL                             R13 0 2
       66 LOADB                            R15 1
       67 GETTABLEKS                       R17 R13 K5 ["Selection"]
       69 LENGTH                           R16 R17
       70 LOADN                            R17 0
       71 JUMPIFLT                         R17 R16 ; [+9]
       73 GETTABLEKS                       R17 R14 K5 ["Selection"]
       75 LENGTH                           R16 R17
       76 LOADN                            R17 0
       77 JUMPIFLT                         R17 R16 ; [+2]
       79 LOADB                            R15 0 +1
       80 LOADB                            R15 1
       81 LOADN                            R17 0
       82 GETTABLEKS                       R21 R13 K5 ["Selection"]
       84 LENGTH                           R20 R21
       85 GETTABLEKS                       R22 R14 K5 ["Selection"]
       87 LENGTH                           R21 R22
       88 ADD                              R19 R20 R21
       89 SUBRK                            R18 K6 [10] R19
       90 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
       92 GETIMPORT                        R16 K9 [math.max]
       94 CALL                             R16 2 1
       95 GETUPVAL                         R17 6
       96 GETTABLEKS                       R17 R17 K4 ["useState"]
       98 LOADB                            R18 0
       99 CALL                             R17 1 2
      100 NEWCLOSURE                       R19 P2
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R18
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U11
      113 CAPTURE                          VAL R1
      114 GETUPVAL                         R20 12
      115 GETTABLEKS                       R20 R20 K10 ["new"]
      117 CALL                             R20 0 1
      118 GETUPVAL                         R21 6
      119 GETTABLEKS                       R21 R21 K11 ["createElement"]
      121 GETUPVAL                         R22 13
      122 GETTABLEKS                       R22 R22 K12 ["View"]
      124 DUPTABLE                         R23 K15 [{["tag"] = "col gap-medium size-full padding-medium"}]
      125 DUPTABLE                         R24 K21 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      126 GETTABLEKS                       R27 R0 K2 ["ErrorAssetIds"]
      128 LENGTH                           R26 R27
      129 LOADN                            R27 0
      130 JUMPIFNOTLT                      R27 R26 ; [+17]
      132 GETUPVAL                         R25 6
      133 GETTABLEKS                       R25 R25 K11 ["createElement"]
      135 GETUPVAL                         R26 14
      136 DUPTABLE                         R27 K24 [{"LayoutOrder", "OnViewErrors"}]
      137 NAMECALL                         R28 R20 K25 ["getNextOrder"]
      139 CALL                             R28 1 1
      140 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      142 GETTABLEKS                       R28 R0 K23 ["OnViewErrors"]
      144 SETTABLEKS                       R28 R27 K23 ["OnViewErrors"]
      146 CALL                             R25 2 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R25
      149 SETTABLEKS                       R25 R24 K16 ["WarningBanner"]
      151 GETUPVAL                         R25 6
      152 GETTABLEKS                       R25 R25 K11 ["createElement"]
      154 GETUPVAL                         R26 13
      155 GETTABLEKS                       R26 R26 K12 ["View"]
      157 DUPTABLE                         R27 K27 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      158 NAMECALL                         R28 R20 K25 ["getNextOrder"]
      160 CALL                             R28 1 1
      161 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      163 DUPTABLE                         R28 K30 [{"Title", "Description"}]
      164 GETUPVAL                         R29 6
      165 GETTABLEKS                       R29 R29 K11 ["createElement"]
      167 GETUPVAL                         R30 13
      168 GETTABLEKS                       R30 R30 K31 ["Text"]
      170 DUPTABLE                         R31 K36 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      171 LOADK                            R34 K37 ["QuickShare"]
      172 LENGTH                           R36 R7
      173 JUMPIFNOTEQKN                    R36 K32 [1] ; [+3]
      175 LOADK                            R35 K38 ["SharingOne"]
      176 JUMP                             ; [+1]
      177 LOADK                            R35 K39 ["SharingMultiple"]
      178 DUPTABLE                         R36 K41 [{"count"}]
      179 LENGTH                           R38 R7
      180 FASTCALL1                        TOSTRING R38 ; [+2]
      181 GETIMPORT                        R37 K43 [tostring]
      183 CALL                             R37 1 1
      184 SETTABLEKS                       R37 R36 K40 ["count"]
      186 NAMECALL                         R32 R2 K44 ["getText"]
      188 CALL                             R32 4 1
      189 SETTABLEKS                       R32 R31 K31 ["Text"]
      191 CALL                             R29 2 1
      192 SETTABLEKS                       R29 R28 K28 ["Title"]
      194 GETUPVAL                         R29 6
      195 GETTABLEKS                       R29 R29 K11 ["createElement"]
      197 GETUPVAL                         R30 13
      198 GETTABLEKS                       R30 R30 K31 ["Text"]
      200 DUPTABLE                         R31 K47 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      201 LOADK                            R34 K37 ["QuickShare"]
      202 LOADK                            R35 K48 ["DialogDescription"]
      203 NAMECALL                         R32 R2 K44 ["getText"]
      205 CALL                             R32 3 1
      206 SETTABLEKS                       R32 R31 K31 ["Text"]
      208 CALL                             R29 2 1
      209 SETTABLEKS                       R29 R28 K29 ["Description"]
      211 CALL                             R25 3 1
      212 SETTABLEKS                       R25 R24 K17 ["Header"]
      214 GETUPVAL                         R25 6
      215 GETTABLEKS                       R25 R25 K11 ["createElement"]
      217 GETUPVAL                         R26 13
      218 GETTABLEKS                       R26 R26 K12 ["View"]
      220 DUPTABLE                         R27 K50 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      221 NAMECALL                         R28 R20 K25 ["getNextOrder"]
      223 CALL                             R28 1 1
      224 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      226 GETUPVAL                         R28 6
      227 GETTABLEKS                       R28 R28 K11 ["createElement"]
      229 GETUPVAL                         R29 13
      230 GETTABLEKS                       R29 R29 K51 ["Tabs"]
      232 DUPTABLE                         R30 K59 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      233 SETTABLEKS                       R11 R30 K52 ["activeTabId"]
      235 SETTABLEKS                       R12 R30 K53 ["onActivated"]
      237 NEWTABLE                         R31 0 2
      239 DUPTABLE                         R32 K62 [{["id"] = 1, ["text"]}]
      240 LOADK                            R35 K37 ["QuickShare"]
      241 LOADK                            R36 K63 ["CollaboratorsTab"]
      242 NAMECALL                         R33 R2 K44 ["getText"]
      244 CALL                             R33 3 1
      245 SETTABLEKS                       R33 R32 K61 ["text"]
      247 DUPTABLE                         R33 K64 [{["id"] = 2, ["text"]}]
      248 LOADK                            R36 K37 ["QuickShare"]
      249 LOADK                            R37 K65 ["ExperiencesTab"]
      250 NAMECALL                         R34 R2 K44 ["getText"]
      252 CALL                             R34 3 1
      253 SETTABLEKS                       R34 R33 K61 ["text"]
      255 SETLIST                          R31 R32 2 [1]
      257 SETTABLEKS                       R31 R30 K54 ["tabs"]
      259 SETTABLEKS                       R10 R30 K55 ["defaultActiveTabId"]
      261 GETUPVAL                         R31 13
      262 GETTABLEKS                       R31 R31 K66 ["Enums"]
      264 GETTABLEKS                       R31 R31 K67 ["InputSize"]
      266 GETTABLEKS                       R31 R31 K68 ["Small"]
      268 SETTABLEKS                       R31 R30 K56 ["size"]
      270 GETUPVAL                         R31 13
      271 GETTABLEKS                       R31 R31 K66 ["Enums"]
      273 GETTABLEKS                       R31 R31 K69 ["FillBehavior"]
      275 GETTABLEKS                       R31 R31 K70 ["Fill"]
      277 SETTABLEKS                       R31 R30 K57 ["fillBehavior"]
      279 CALL                             R28 2 -1
      280 CALL                             R25 -1 1
      281 SETTABLEKS                       R25 R24 K18 ["TabButtons"]
      283 GETUPVAL                         R25 6
      284 GETTABLEKS                       R25 R25 K11 ["createElement"]
      286 GETUPVAL                         R26 13
      287 GETTABLEKS                       R26 R26 K12 ["View"]
      289 DUPTABLE                         R27 K72 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      290 NAMECALL                         R28 R20 K25 ["getNextOrder"]
      292 CALL                             R28 1 1
      293 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      295 NEWTABLE                         R28 0 1
      297 JUMPIFNOTEQKN                    R11 K32 [1] ; [+14]
      299 GETUPVAL                         R29 6
      300 GETTABLEKS                       R29 R29 K11 ["createElement"]
      302 GETUPVAL                         R30 15
      303 DUPTABLE                         R31 K76 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      304 SETTABLEKS                       R16 R31 K73 ["MaxCount"]
      306 SETTABLEKS                       R8 R31 K74 ["CanAddEditors"]
      308 SETTABLEKS                       R9 R31 K75 ["HasNonEditTypes"]
      310 CALL                             R29 2 1
      311 JUMP                             ; [+8]
      312 GETUPVAL                         R29 6
      313 GETTABLEKS                       R29 R29 K11 ["createElement"]
      315 GETUPVAL                         R30 16
      316 DUPTABLE                         R31 K77 [{"MaxCount"}]
      317 SETTABLEKS                       R16 R31 K73 ["MaxCount"]
      319 CALL                             R29 2 1
      320 SETLIST                          R28 R29 1 [1]
      322 CALL                             R25 3 1
      323 SETTABLEKS                       R25 R24 K19 ["TabContent"]
      325 GETUPVAL                         R25 6
      326 GETTABLEKS                       R25 R25 K11 ["createElement"]
      328 GETUPVAL                         R26 13
      329 GETTABLEKS                       R26 R26 K12 ["View"]
      331 DUPTABLE                         R27 K79 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      332 NAMECALL                         R28 R20 K25 ["getNextOrder"]
      334 CALL                             R28 1 1
      335 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      337 DUPTABLE                         R28 K82 [{"CancelButton", "ShareButton"}]
      338 GETUPVAL                         R29 6
      339 GETTABLEKS                       R29 R29 K11 ["createElement"]
      341 GETUPVAL                         R30 13
      342 GETTABLEKS                       R30 R30 K83 ["Button"]
      344 DUPTABLE                         R31 K87 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      345 LOADK                            R34 K37 ["QuickShare"]
      346 LOADK                            R35 K80 ["CancelButton"]
      347 NAMECALL                         R32 R2 K44 ["getText"]
      349 CALL                             R32 3 1
      350 SETTABLEKS                       R32 R31 K61 ["text"]
      352 SETTABLEKS                       R17 R31 K84 ["isDisabled"]
      354 NEWCLOSURE                       R32 P3
      355 CAPTURE                          VAL R0
      356 SETTABLEKS                       R32 R31 K53 ["onActivated"]
      358 GETUPVAL                         R32 13
      359 GETTABLEKS                       R32 R32 K66 ["Enums"]
      361 GETTABLEKS                       R32 R32 K88 ["ButtonVariant"]
      363 GETTABLEKS                       R32 R32 K89 ["Standard"]
      365 SETTABLEKS                       R32 R31 K85 ["variant"]
      367 GETUPVAL                         R32 13
      368 GETTABLEKS                       R32 R32 K66 ["Enums"]
      370 GETTABLEKS                       R32 R32 K67 ["InputSize"]
      372 GETTABLEKS                       R32 R32 K68 ["Small"]
      374 SETTABLEKS                       R32 R31 K56 ["size"]
      376 CALL                             R29 2 1
      377 SETTABLEKS                       R29 R28 K80 ["CancelButton"]
      379 GETUPVAL                         R29 6
      380 GETTABLEKS                       R29 R29 K11 ["createElement"]
      382 GETUPVAL                         R30 13
      383 GETTABLEKS                       R30 R30 K83 ["Button"]
      385 DUPTABLE                         R31 K92 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      386 LOADK                            R34 K37 ["QuickShare"]
      387 LOADK                            R35 K81 ["ShareButton"]
      388 NAMECALL                         R32 R2 K44 ["getText"]
      390 CALL                             R32 3 1
      391 SETTABLEKS                       R32 R31 K61 ["text"]
      393 SETTABLEKS                       R17 R31 K90 ["isLoading"]
      395 LOADB                            R32 1
      396 LENGTH                           R33 R7
      397 JUMPIFEQKN                       R33 K93 [0] ; [+2]
      399 NOT                              R32 R15
      400 SETTABLEKS                       R32 R31 K84 ["isDisabled"]
      402 SETTABLEKS                       R19 R31 K53 ["onActivated"]
      404 GETUPVAL                         R32 13
      405 GETTABLEKS                       R32 R32 K66 ["Enums"]
      407 GETTABLEKS                       R32 R32 K88 ["ButtonVariant"]
      409 GETTABLEKS                       R32 R32 K94 ["Emphasis"]
      411 SETTABLEKS                       R32 R31 K85 ["variant"]
      413 GETUPVAL                         R32 13
      414 GETTABLEKS                       R32 R32 K66 ["Enums"]
      416 GETTABLEKS                       R32 R32 K67 ["InputSize"]
      418 GETTABLEKS                       R32 R32 K68 ["Small"]
      420 SETTABLEKS                       R32 R31 K56 ["size"]
      422 CALL                             R29 2 1
      423 SETTABLEKS                       R29 R28 K81 ["ShareButton"]
      425 CALL                             R25 3 1
      426 SETTABLEKS                       R25 R24 K20 ["Footer"]
      428 CALL                             R21 3 -1
      429 RETURN                           R21 -1

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
       54 GETTABLEKS                       R10 R10 K17 ["Types"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R9 K18 ["AssetType"]
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K15 ["Src"]
       63 GETTABLEKS                       R12 R12 K19 ["Networking"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K15 ["Src"]
       70 GETTABLEKS                       R13 R13 K20 ["Controllers"]
       72 GETTABLEKS                       R13 R13 K21 ["ExplorerController"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R14 R0 K15 ["Src"]
       79 GETTABLEKS                       R14 R14 K20 ["Controllers"]
       81 GETTABLEKS                       R14 R14 K22 ["ItemsController"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R15 R0 K15 ["Src"]
       88 GETTABLEKS                       R15 R15 K20 ["Controllers"]
       90 GETTABLEKS                       R15 R15 K23 ["LayoutController"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K15 ["Src"]
       97 GETTABLEKS                       R16 R16 K20 ["Controllers"]
       99 GETTABLEKS                       R16 R16 K24 ["SearchController"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K5 [require]
      104 GETIMPORT                        R17 K1 [script]
      106 GETTABLEKS                       R17 R17 K25 ["CollaboratorsTab"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K5 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R18 R18 K26 ["ExperiencesTab"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K5 [require]
      118 GETTABLEKS                       R19 R0 K15 ["Src"]
      120 GETTABLEKS                       R19 R19 K11 ["Util"]
      122 GETTABLEKS                       R19 R19 K27 ["Dialogs"]
      124 GETTABLEKS                       R19 R19 K28 ["useQuickShareState"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K5 [require]
      129 GETTABLEKS                       R20 R0 K15 ["Src"]
      131 GETTABLEKS                       R20 R20 K11 ["Util"]
      133 GETTABLEKS                       R20 R20 K29 ["grantPermissionsAsync"]
      135 CALL                             R19 1 1
      136 DUPTABLE                         R20 K34 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      137 DUPCLOSURE                       R21 K35 [PROTO_0]
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R1
      141 DUPCLOSURE                       R22 K36 [PROTO_12]
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R17
      159 RETURN                           R22 1
