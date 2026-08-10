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
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+31]
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K6 ["sendShareEvent"]
       43 DUPTABLE                         R7 K11 [{"shareType", "shareTargetIds", "shareTargetTypes", "assetIds"}]
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R8 R8 K12 ["Types"]
       47 GETTABLEKS                       R8 R8 K13 ["ShareType"]
       49 GETTABLEKS                       R8 R8 K14 ["Collaborator"]
       51 SETTABLEKS                       R8 R7 K7 ["shareType"]
       53 SETTABLEKS                       R4 R7 K8 ["shareTargetIds"]
       55 SETTABLEKS                       R5 R7 K9 ["shareTargetTypes"]
       57 GETUPVAL                         R8 5
       58 SETTABLEKS                       R8 R7 K10 ["assetIds"]
       60 DUPTABLE                         R8 K18 [{"ExplorerController", "LayoutController", "ItemsController"}]
       61 GETUPVAL                         R9 6
       62 SETTABLEKS                       R9 R8 K15 ["ExplorerController"]
       64 GETUPVAL                         R9 7
       65 SETTABLEKS                       R9 R8 K16 ["LayoutController"]
       67 GETUPVAL                         R9 8
       68 SETTABLEKS                       R9 R8 K17 ["ItemsController"]
       70 CALL                             R6 2 0
       71 GETUPVAL                         R6 9
       72 CALL                             R6 0 1
       73 JUMPIF                           R6 ; [+47]
       74 GETUPVAL                         R6 8
       75 NAMECALL                         R6 R6 K19 ["getScopeAnalyticsContext"]
       77 CALL                             R6 1 1
       78 GETUPVAL                         R7 10
       79 GETTABLEKS                       R7 R7 K6 ["sendShareEvent"]
       81 DUPTABLE                         R8 K24 [{"shareType", "shareTargetIds", "shareTargetTypes", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       82 GETUPVAL                         R9 10
       83 GETTABLEKS                       R9 R9 K25 ["Enums"]
       85 GETTABLEKS                       R9 R9 K13 ["ShareType"]
       87 GETTABLEKS                       R9 R9 K14 ["Collaborator"]
       89 SETTABLEKS                       R9 R8 K7 ["shareType"]
       91 SETTABLEKS                       R4 R8 K8 ["shareTargetIds"]
       93 SETTABLEKS                       R5 R8 K9 ["shareTargetTypes"]
       95 GETTABLEKS                       R9 R6 K20 ["currentRootId"]
       97 SETTABLEKS                       R9 R8 K20 ["currentRootId"]
       99 GETTABLEKS                       R9 R6 K21 ["currentRootType"]
      101 SETTABLEKS                       R9 R8 K21 ["currentRootType"]
      103 GETTABLEKS                       R9 R6 K22 ["currentFolderId"]
      105 SETTABLEKS                       R9 R8 K22 ["currentFolderId"]
      107 GETUPVAL                         R9 5
      108 SETTABLEKS                       R9 R8 K10 ["assetIds"]
      110 GETUPVAL                         R9 11
      111 GETUPVAL                         R10 7
      112 NAMECALL                         R10 R10 K26 ["getBrowserLayout"]
      114 CALL                             R10 1 1
      115 GETTABLEKS                       R10 R10 K27 ["ViewType"]
      117 CALL                             R9 1 1
      118 SETTABLEKS                       R9 R8 K23 ["viewMode"]
      120 CALL                             R7 1 0
      121 GETUPVAL                         R4 12
      122 GETTABLEKS                       R4 R4 K28 ["OnDone"]
      124 JUMPIFNOT                        R3 ; [+2]
      125 LOADN                            R5 0
      126 JUMP                             ; [+2]
      127 GETUPVAL                         R6 5
      128 LENGTH                           R5 R6
      129 GETUPVAL                         R6 1
      130 GETTABLEKS                       R6 R6 K29 ["keys"]
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
       29 GETUPVAL                         R4 6
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
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R4
      109 CAPTURE                          UPVAL U13
      110 CAPTURE                          UPVAL U14
      111 CAPTURE                          UPVAL U15
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          VAL R1
      115 GETUPVAL                         R19 17
      116 GETTABLEKS                       R19 R19 K11 ["new"]
      118 CALL                             R19 0 1
      119 GETUPVAL                         R20 5
      120 GETTABLEKS                       R20 R20 K12 ["createElement"]
      122 GETUPVAL                         R21 18
      123 GETTABLEKS                       R21 R21 K13 ["View"]
      125 DUPTABLE                         R22 K16 [{["tag"] = "col gap-medium size-full padding-medium"}]
      126 DUPTABLE                         R23 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      127 GETTABLEKS                       R26 R0 K2 ["ErrorAssetIds"]
      129 LENGTH                           R25 R26
      130 LOADN                            R26 0
      131 JUMPIFNOTLT                      R26 R25 ; [+17]
      133 GETUPVAL                         R24 5
      134 GETTABLEKS                       R24 R24 K12 ["createElement"]
      136 GETUPVAL                         R25 19
      137 DUPTABLE                         R26 K25 [{"LayoutOrder", "OnViewErrors"}]
      138 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      140 CALL                             R27 1 1
      141 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      143 GETTABLEKS                       R27 R0 K24 ["OnViewErrors"]
      145 SETTABLEKS                       R27 R26 K24 ["OnViewErrors"]
      147 CALL                             R24 2 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R24
      150 SETTABLEKS                       R24 R23 K17 ["WarningBanner"]
      152 GETUPVAL                         R24 5
      153 GETTABLEKS                       R24 R24 K12 ["createElement"]
      155 GETUPVAL                         R25 18
      156 GETTABLEKS                       R25 R25 K13 ["View"]
      158 DUPTABLE                         R26 K28 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      159 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      161 CALL                             R27 1 1
      162 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      164 DUPTABLE                         R27 K31 [{"Title", "Description"}]
      165 GETUPVAL                         R28 5
      166 GETTABLEKS                       R28 R28 K12 ["createElement"]
      168 GETUPVAL                         R29 18
      169 GETTABLEKS                       R29 R29 K32 ["Text"]
      171 DUPTABLE                         R30 K37 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      172 LOADK                            R33 K38 ["QuickShare"]
      173 LENGTH                           R35 R6
      174 JUMPIFNOTEQKN                    R35 K33 [1] ; [+3]
      176 LOADK                            R34 K39 ["SharingOne"]
      177 JUMP                             ; [+1]
      178 LOADK                            R34 K40 ["SharingMultiple"]
      179 DUPTABLE                         R35 K42 [{"count"}]
      180 LENGTH                           R37 R6
      181 FASTCALL1                        TOSTRING R37 ; [+2]
      182 GETIMPORT                        R36 K44 [tostring]
      184 CALL                             R36 1 1
      185 SETTABLEKS                       R36 R35 K41 ["count"]
      187 NAMECALL                         R31 R2 K45 ["getText"]
      189 CALL                             R31 4 1
      190 SETTABLEKS                       R31 R30 K32 ["Text"]
      192 CALL                             R28 2 1
      193 SETTABLEKS                       R28 R27 K29 ["Title"]
      195 GETUPVAL                         R28 5
      196 GETTABLEKS                       R28 R28 K12 ["createElement"]
      198 GETUPVAL                         R29 18
      199 GETTABLEKS                       R29 R29 K32 ["Text"]
      201 DUPTABLE                         R30 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      202 LOADK                            R33 K38 ["QuickShare"]
      203 LOADK                            R34 K49 ["DialogDescription"]
      204 NAMECALL                         R31 R2 K45 ["getText"]
      206 CALL                             R31 3 1
      207 SETTABLEKS                       R31 R30 K32 ["Text"]
      209 CALL                             R28 2 1
      210 SETTABLEKS                       R28 R27 K30 ["Description"]
      212 CALL                             R24 3 1
      213 SETTABLEKS                       R24 R23 K18 ["Header"]
      215 GETUPVAL                         R24 5
      216 GETTABLEKS                       R24 R24 K12 ["createElement"]
      218 GETUPVAL                         R25 18
      219 GETTABLEKS                       R25 R25 K13 ["View"]
      221 DUPTABLE                         R26 K51 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      222 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      224 CALL                             R27 1 1
      225 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      227 GETUPVAL                         R27 5
      228 GETTABLEKS                       R27 R27 K12 ["createElement"]
      230 GETUPVAL                         R28 18
      231 GETTABLEKS                       R28 R28 K52 ["Tabs"]
      233 DUPTABLE                         R29 K60 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      234 SETTABLEKS                       R10 R29 K53 ["activeTabId"]
      236 SETTABLEKS                       R11 R29 K54 ["onActivated"]
      238 NEWTABLE                         R30 0 2
      240 DUPTABLE                         R31 K63 [{"id", "text"}]
      241 GETUPVAL                         R32 8
      242 GETTABLEKS                       R32 R32 K64 ["Collaborators"]
      244 SETTABLEKS                       R32 R31 K61 ["id"]
      246 LOADK                            R34 K38 ["QuickShare"]
      247 LOADK                            R35 K65 ["CollaboratorsTab"]
      248 NAMECALL                         R32 R2 K45 ["getText"]
      250 CALL                             R32 3 1
      251 SETTABLEKS                       R32 R31 K62 ["text"]
      253 DUPTABLE                         R32 K63 [{"id", "text"}]
      254 GETUPVAL                         R33 8
      255 GETTABLEKS                       R33 R33 K4 ["Experiences"]
      257 SETTABLEKS                       R33 R32 K61 ["id"]
      259 LOADK                            R35 K38 ["QuickShare"]
      260 LOADK                            R36 K66 ["ExperiencesTab"]
      261 NAMECALL                         R33 R2 K45 ["getText"]
      263 CALL                             R33 3 1
      264 SETTABLEKS                       R33 R32 K62 ["text"]
      266 SETLIST                          R30 R31 2 [1]
      268 SETTABLEKS                       R30 R29 K55 ["tabs"]
      270 SETTABLEKS                       R9 R29 K56 ["defaultActiveTabId"]
      272 GETUPVAL                         R30 18
      273 GETTABLEKS                       R30 R30 K67 ["Enums"]
      275 GETTABLEKS                       R30 R30 K68 ["InputSize"]
      277 GETTABLEKS                       R30 R30 K69 ["Small"]
      279 SETTABLEKS                       R30 R29 K57 ["size"]
      281 GETUPVAL                         R30 18
      282 GETTABLEKS                       R30 R30 K67 ["Enums"]
      284 GETTABLEKS                       R30 R30 K70 ["FillBehavior"]
      286 GETTABLEKS                       R30 R30 K71 ["Fill"]
      288 SETTABLEKS                       R30 R29 K58 ["fillBehavior"]
      290 CALL                             R27 2 -1
      291 CALL                             R24 -1 1
      292 SETTABLEKS                       R24 R23 K19 ["TabButtons"]
      294 GETUPVAL                         R24 5
      295 GETTABLEKS                       R24 R24 K12 ["createElement"]
      297 GETUPVAL                         R25 18
      298 GETTABLEKS                       R25 R25 K13 ["View"]
      300 DUPTABLE                         R26 K73 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      301 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      303 CALL                             R27 1 1
      304 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      306 NEWTABLE                         R27 0 1
      308 GETUPVAL                         R29 8
      309 GETTABLEKS                       R29 R29 K64 ["Collaborators"]
      311 JUMPIFNOTEQ                      R10 R29 ; [+14]
      313 GETUPVAL                         R28 5
      314 GETTABLEKS                       R28 R28 K12 ["createElement"]
      316 GETUPVAL                         R29 20
      317 DUPTABLE                         R30 K77 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      318 SETTABLEKS                       R15 R30 K74 ["MaxCount"]
      320 SETTABLEKS                       R7 R30 K75 ["CanAddEditors"]
      322 SETTABLEKS                       R8 R30 K76 ["HasNonEditTypes"]
      324 CALL                             R28 2 1
      325 JUMP                             ; [+8]
      326 GETUPVAL                         R28 5
      327 GETTABLEKS                       R28 R28 K12 ["createElement"]
      329 GETUPVAL                         R29 21
      330 DUPTABLE                         R30 K78 [{"MaxCount"}]
      331 SETTABLEKS                       R15 R30 K74 ["MaxCount"]
      333 CALL                             R28 2 1
      334 SETLIST                          R27 R28 1 [1]
      336 CALL                             R24 3 1
      337 SETTABLEKS                       R24 R23 K20 ["TabContent"]
      339 GETUPVAL                         R24 5
      340 GETTABLEKS                       R24 R24 K12 ["createElement"]
      342 GETUPVAL                         R25 18
      343 GETTABLEKS                       R25 R25 K13 ["View"]
      345 DUPTABLE                         R26 K80 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      346 NAMECALL                         R27 R19 K26 ["getNextOrder"]
      348 CALL                             R27 1 1
      349 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      351 DUPTABLE                         R27 K83 [{"CancelButton", "ShareButton"}]
      352 GETUPVAL                         R28 5
      353 GETTABLEKS                       R28 R28 K12 ["createElement"]
      355 GETUPVAL                         R29 18
      356 GETTABLEKS                       R29 R29 K84 ["Button"]
      358 DUPTABLE                         R30 K88 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      359 LOADK                            R33 K38 ["QuickShare"]
      360 LOADK                            R34 K81 ["CancelButton"]
      361 NAMECALL                         R31 R2 K45 ["getText"]
      363 CALL                             R31 3 1
      364 SETTABLEKS                       R31 R30 K62 ["text"]
      366 SETTABLEKS                       R16 R30 K85 ["isDisabled"]
      368 NEWCLOSURE                       R31 P3
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R31 R30 K54 ["onActivated"]
      372 GETUPVAL                         R31 18
      373 GETTABLEKS                       R31 R31 K67 ["Enums"]
      375 GETTABLEKS                       R31 R31 K89 ["ButtonVariant"]
      377 GETTABLEKS                       R31 R31 K90 ["Standard"]
      379 SETTABLEKS                       R31 R30 K86 ["variant"]
      381 GETUPVAL                         R31 18
      382 GETTABLEKS                       R31 R31 K67 ["Enums"]
      384 GETTABLEKS                       R31 R31 K68 ["InputSize"]
      386 GETTABLEKS                       R31 R31 K69 ["Small"]
      388 SETTABLEKS                       R31 R30 K57 ["size"]
      390 CALL                             R28 2 1
      391 SETTABLEKS                       R28 R27 K81 ["CancelButton"]
      393 GETUPVAL                         R28 5
      394 GETTABLEKS                       R28 R28 K12 ["createElement"]
      396 GETUPVAL                         R29 18
      397 GETTABLEKS                       R29 R29 K84 ["Button"]
      399 DUPTABLE                         R30 K93 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      400 LOADK                            R33 K38 ["QuickShare"]
      401 LOADK                            R34 K82 ["ShareButton"]
      402 NAMECALL                         R31 R2 K45 ["getText"]
      404 CALL                             R31 3 1
      405 SETTABLEKS                       R31 R30 K62 ["text"]
      407 SETTABLEKS                       R16 R30 K91 ["isLoading"]
      409 LOADB                            R31 1
      410 LENGTH                           R32 R6
      411 JUMPIFEQKN                       R32 K94 [0] ; [+2]
      413 NOT                              R31 R14
      414 SETTABLEKS                       R31 R30 K85 ["isDisabled"]
      416 SETTABLEKS                       R18 R30 K54 ["onActivated"]
      418 GETUPVAL                         R31 18
      419 GETTABLEKS                       R31 R31 K67 ["Enums"]
      421 GETTABLEKS                       R31 R31 K89 ["ButtonVariant"]
      423 GETTABLEKS                       R31 R31 K95 ["Emphasis"]
      425 SETTABLEKS                       R31 R30 K86 ["variant"]
      427 GETUPVAL                         R31 18
      428 GETTABLEKS                       R31 R31 K67 ["Enums"]
      430 GETTABLEKS                       R31 R31 K68 ["InputSize"]
      432 GETTABLEKS                       R31 R31 K69 ["Small"]
      434 SETTABLEKS                       R31 R30 K57 ["size"]
      436 CALL                             R28 2 1
      437 SETTABLEKS                       R28 R27 K82 ["ShareButton"]
      439 CALL                             R24 3 1
      440 SETTABLEKS                       R24 R23 K21 ["Footer"]
      442 CALL                             R20 3 -1
      443 RETURN                           R20 -1

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
      153 GETTABLEKS                       R23 R23 K34 ["getFFlagAmrEnableUnifiedEvent"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K5 [require]
      158 GETTABLEKS                       R24 R0 K17 ["Src"]
      160 GETTABLEKS                       R24 R24 K33 ["Flags"]
      162 GETTABLEKS                       R24 R24 K35 ["getFFlagAmrDisableShardedEvent"]
      164 CALL                             R23 1 1
      165 DUPTABLE                         R24 K40 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      166 GETTABLEKS                       R25 R24 K36 ["Collaborators"]
      168 DUPCLOSURE                       R26 K41 [PROTO_0]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R3
      173 DUPCLOSURE                       R27 K42 [PROTO_12]
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R18
      196 RETURN                           R27 1
