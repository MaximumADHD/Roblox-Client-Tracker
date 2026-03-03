PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K4 [{"LayoutOrder", "tag"}]
       11 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       13 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       15 LOADK                            R6 K5 ["row size-full-0 auto-y padding-small align-y-center gap-small bg-surface-200 radius-medium stroke-system-warning data-testid=permissions-warning-banner"]
       16 SETTABLEKS                       R6 R5 K3 ["tag"]
       18 DUPTABLE                         R6 K9 [{"Icon", "Text", "ViewButton"}]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K1 ["createElement"]
       22 GETUPVAL                         R8 4
       23 DUPTABLE                         R9 K14 [{"LayoutOrder", "name", "size", "style", "variant"}]
       24 LOADN                            R10 1
       25 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       27 GETUPVAL                         R13 5
       28 GETTABLEKS                       R12 R13 K15 ["Enums"]
       30 GETTABLEKS                       R11 R12 K16 ["IconName"]
       32 GETTABLEKS                       R10 R11 K17 ["TriangleExclamation"]
       34 SETTABLEKS                       R10 R9 K10 ["name"]
       36 GETUPVAL                         R13 5
       37 GETTABLEKS                       R12 R13 K15 ["Enums"]
       39 GETTABLEKS                       R11 R12 K18 ["IconSize"]
       41 GETTABLEKS                       R10 R11 K19 ["Large"]
       43 SETTABLEKS                       R10 R9 K11 ["size"]
       45 GETTABLEKS                       R12 R2 K20 ["Color"]
       47 GETTABLEKS                       R11 R12 K21 ["System"]
       49 GETTABLEKS                       R10 R11 K22 ["Warning"]
       51 SETTABLEKS                       R10 R9 K12 ["style"]
       53 GETUPVAL                         R13 5
       54 GETTABLEKS                       R12 R13 K15 ["Enums"]
       56 GETTABLEKS                       R11 R12 K23 ["IconVariant"]
       58 GETTABLEKS                       R10 R11 K24 ["Filled"]
       60 SETTABLEKS                       R10 R9 K13 ["variant"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K6 ["Icon"]
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R7 R8 K1 ["createElement"]
       68 GETUPVAL                         R8 6
       69 DUPTABLE                         R9 K25 [{"LayoutOrder", "Text", "tag"}]
       70 LOADN                            R10 2
       71 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       73 LOADK                            R12 K26 ["QuickShare"]
       74 LOADK                            R13 K27 ["PermissionBannerTitle"]
       75 NAMECALL                         R10 R1 K28 ["getText"]
       77 CALL                             R10 3 1
       78 SETTABLEKS                       R10 R9 K7 ["Text"]
       80 LOADK                            R10 K29 ["fill auto-y text-title-medium text-align-x-left"]
       81 SETTABLEKS                       R10 R9 K3 ["tag"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K7 ["Text"]
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R7 R8 K1 ["createElement"]
       89 GETUPVAL                         R9 5
       90 GETTABLEKS                       R8 R9 K30 ["Button"]
       92 DUPTABLE                         R9 K33 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
       93 LOADN                            R10 3
       94 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       96 LOADK                            R12 K26 ["QuickShare"]
       97 LOADK                            R13 K34 ["PermissionBannerButton"]
       98 NAMECALL                         R10 R1 K28 ["getText"]
      100 CALL                             R10 3 1
      101 SETTABLEKS                       R10 R9 K31 ["text"]
      103 GETUPVAL                         R13 5
      104 GETTABLEKS                       R12 R13 K15 ["Enums"]
      106 GETTABLEKS                       R11 R12 K35 ["ButtonVariant"]
      108 GETTABLEKS                       R10 R11 K36 ["Utility"]
      110 SETTABLEKS                       R10 R9 K13 ["variant"]
      112 GETUPVAL                         R13 5
      113 GETTABLEKS                       R12 R13 K15 ["Enums"]
      115 GETTABLEKS                       R11 R12 K37 ["InputSize"]
      117 GETTABLEKS                       R10 R11 K38 ["Small"]
      119 SETTABLEKS                       R10 R9 K11 ["size"]
      121 GETTABLEKS                       R10 R0 K39 ["OnViewErrors"]
      123 SETTABLEKS                       R10 R9 K32 ["onActivated"]
      125 CALL                             R7 2 1
      126 SETTABLEKS                       R7 R6 K8 ["ViewButton"]
      128 CALL                             R3 3 -1
      129 RETURN                           R3 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collect"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["ErrorAssetIds"]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["filter"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["AssetIds"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["values"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["omit"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["AssetIdPaths"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["ErrorAssetIds"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 1
       18 GETUPVAL                         R2 3
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R2 K4 ["getAssetTypes"]
       22 CALL                             R2 2 1
       23 MOVE                             R0 R2
       24 JUMP                             ; [+6]
       25 GETUPVAL                         R1 3
       26 GETUPVAL                         R3 4
       27 NAMECALL                         R1 R1 K4 ["getAssetTypes"]
       29 CALL                             R1 2 1
       30 MOVE                             R0 R1
       31 GETUPVAL                         R3 5
       32 GETTABLEKS                       R2 R3 K5 ["Model"]
       34 GETTABLE                         R1 R0 R2
       35 JUMPIF                           R1 ; [+4]
       36 GETUPVAL                         R3 5
       37 GETTABLEKS                       R2 R3 K6 ["Package"]
       39 GETTABLE                         R1 R0 R2
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K7 ["count"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K1 ["omit"]
       46 MOVE                             R5 R0
       47 NEWTABLE                         R6 0 2
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R7 R8 K5 ["Model"]
       52 GETUPVAL                         R9 5
       53 GETTABLEKS                       R8 R9 K6 ["Package"]
       55 SETLIST                          R6 R7 2 [1]
       57 CALL                             R4 2 -1
       58 CALL                             R3 -1 1
       59 LOADN                            R4 0
       60 JUMPIFLT                         R4 R3 ; [+2]
       62 LOADB                            R2 0 +1
       63 LOADB                            R2 1
       64 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["assetId"]
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R2 R3
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["forEach"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["count"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+1]
       11 NEWTABLE                         R2 0 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["forEach"]
       16 MOVE                             R4 R1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R2
       20 CALL                             R3 2 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K3 ["OnDone"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K4 ["keys"]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 -1
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["append"]
        7 GETIMPORT                        R2 K3 [table.clone]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K4 ["selection"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R3 R4 K4 ["selection"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 5
       18 GETUPVAL                         R3 6
       19 GETUPVAL                         R4 7
       20 MOVE                             R5 R1
       21 MOVE                             R6 R0
       22 CALL                             R2 4 0
       23 GETUPVAL                         R2 0
       24 LOADB                            R3 1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnDone"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R6 0 2
       20 GETTABLEKS                       R7 R0 K2 ["AssetIds"]
       22 GETTABLEKS                       R8 R0 K3 ["ErrorAssetIds"]
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K1 ["useMemo"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U6
       37 NEWTABLE                         R7 0 3
       39 MOVE                             R8 R4
       40 GETTABLEKS                       R9 R0 K4 ["AssetIdPaths"]
       42 GETTABLEKS                       R10 R0 K3 ["ErrorAssetIds"]
       44 SETLIST                          R7 R8 3 [1]
       46 CALL                             R5 2 2
       47 GETTABLEKS                       R9 R0 K2 ["AssetIds"]
       49 LENGTH                           R8 R9
       50 LOADN                            R9 0
       51 JUMPIFLT                         R9 R8 ; [+2]
       53 LOADB                            R7 0 +1
       54 LOADB                            R7 1
       55 GETTABLEKS                       R8 R0 K5 ["StartTab"]
       57 JUMPIF                           R8 ; [+1]
       58 GETUPVAL                         R8 7
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R9 R10 K6 ["useState"]
       62 MOVE                             R10 R8
       63 CALL                             R9 1 2
       64 GETUPVAL                         R11 8
       65 MOVE                             R12 R1
       66 MOVE                             R13 R7
       67 CALL                             R11 2 4
       68 LOADB                            R15 1
       69 GETTABLEKS                       R17 R11 K7 ["selection"]
       71 LENGTH                           R16 R17
       72 LOADN                            R17 0
       73 JUMPIFLT                         R17 R16 ; [+9]
       75 GETTABLEKS                       R17 R13 K7 ["selection"]
       77 LENGTH                           R16 R17
       78 LOADN                            R17 0
       79 JUMPIFLT                         R17 R16 ; [+2]
       81 LOADB                            R15 0 +1
       82 LOADB                            R15 1
       83 GETTABLEKS                       R19 R11 K7 ["selection"]
       85 LENGTH                           R18 R19
       86 GETTABLEKS                       R20 R13 K7 ["selection"]
       88 LENGTH                           R19 R20
       89 ADD                              R17 R18 R19
       90 LOADN                            R18 10
       91 JUMPIFLT                         R17 R18 ; [+2]
       93 LOADB                            R16 0 +1
       94 LOADB                            R16 1
       95 GETUPVAL                         R18 3
       96 GETTABLEKS                       R17 R18 K6 ["useState"]
       98 LOADB                            R18 0
       99 CALL                             R17 1 2
      100 GETUPVAL                         R20 3
      101 GETTABLEKS                       R19 R20 K8 ["useCallback"]
      103 NEWCLOSURE                       R20 P2
      104 CAPTURE                          VAL R18
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R13
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R4
      112 CALL                             R19 1 1
      113 GETUPVAL                         R21 10
      114 GETTABLEKS                       R20 R21 K9 ["new"]
      116 CALL                             R20 0 1
      117 GETUPVAL                         R22 3
      118 GETTABLEKS                       R21 R22 K10 ["createElement"]
      120 GETUPVAL                         R22 11
      121 DUPTABLE                         R23 K12 [{"tag"}]
      122 LOADK                            R24 K13 ["col size-full padding-medium gap-medium"]
      123 SETTABLEKS                       R24 R23 K11 ["tag"]
      125 DUPTABLE                         R24 K19 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      126 GETTABLEKS                       R27 R0 K3 ["ErrorAssetIds"]
      128 LENGTH                           R26 R27
      129 LOADN                            R27 0
      130 JUMPIFNOTLT                      R27 R26 ; [+17]
      132 GETUPVAL                         R26 3
      133 GETTABLEKS                       R25 R26 K10 ["createElement"]
      135 GETUPVAL                         R26 12
      136 DUPTABLE                         R27 K22 [{"LayoutOrder", "OnViewErrors"}]
      137 NAMECALL                         R28 R20 K23 ["getNextOrder"]
      139 CALL                             R28 1 1
      140 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      142 GETTABLEKS                       R28 R0 K21 ["OnViewErrors"]
      144 SETTABLEKS                       R28 R27 K21 ["OnViewErrors"]
      146 CALL                             R25 2 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R25
      149 SETTABLEKS                       R25 R24 K14 ["WarningBanner"]
      151 GETUPVAL                         R26 3
      152 GETTABLEKS                       R25 R26 K10 ["createElement"]
      154 GETUPVAL                         R26 11
      155 DUPTABLE                         R27 K24 [{"LayoutOrder", "tag"}]
      156 NAMECALL                         R28 R20 K23 ["getNextOrder"]
      158 CALL                             R28 1 1
      159 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      161 LOADK                            R28 K25 ["col size-full-0 auto-y gap-xsmall"]
      162 SETTABLEKS                       R28 R27 K11 ["tag"]
      164 DUPTABLE                         R28 K28 [{"Title", "Description"}]
      165 GETUPVAL                         R30 3
      166 GETTABLEKS                       R29 R30 K10 ["createElement"]
      168 GETUPVAL                         R30 13
      169 DUPTABLE                         R31 K30 [{"LayoutOrder", "Text", "tag"}]
      170 LOADN                            R32 1
      171 SETTABLEKS                       R32 R31 K20 ["LayoutOrder"]
      173 LOADK                            R34 K31 ["QuickShare"]
      174 LENGTH                           R36 R4
      175 JUMPIFNOTEQKN                    R36 K32 [1] ; [+3]
      177 LOADK                            R35 K33 ["SharingOne"]
      178 JUMP                             ; [+1]
      179 LOADK                            R35 K34 ["SharingMultiple"]
      180 DUPTABLE                         R36 K36 [{"count"}]
      181 LENGTH                           R38 R4
      182 FASTCALL1                        TOSTRING R38 ; [+2]
      183 GETIMPORT                        R37 K38 [tostring]
      185 CALL                             R37 1 1
      186 SETTABLEKS                       R37 R36 K35 ["count"]
      188 NAMECALL                         R32 R2 K39 ["getText"]
      190 CALL                             R32 4 1
      191 SETTABLEKS                       R32 R31 K29 ["Text"]
      193 LOADK                            R32 K40 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=mainview-title"]
      194 SETTABLEKS                       R32 R31 K11 ["tag"]
      196 CALL                             R29 2 1
      197 SETTABLEKS                       R29 R28 K26 ["Title"]
      199 GETUPVAL                         R30 3
      200 GETTABLEKS                       R29 R30 K10 ["createElement"]
      202 GETUPVAL                         R30 13
      203 DUPTABLE                         R31 K30 [{"LayoutOrder", "Text", "tag"}]
      204 LOADN                            R32 2
      205 SETTABLEKS                       R32 R31 K20 ["LayoutOrder"]
      207 LOADK                            R34 K31 ["QuickShare"]
      208 LOADK                            R35 K41 ["DialogDescription"]
      209 NAMECALL                         R32 R2 K39 ["getText"]
      211 CALL                             R32 3 1
      212 SETTABLEKS                       R32 R31 K29 ["Text"]
      214 LOADK                            R32 K42 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      215 SETTABLEKS                       R32 R31 K11 ["tag"]
      217 CALL                             R29 2 1
      218 SETTABLEKS                       R29 R28 K27 ["Description"]
      220 CALL                             R25 3 1
      221 SETTABLEKS                       R25 R24 K15 ["Header"]
      223 GETUPVAL                         R26 3
      224 GETTABLEKS                       R25 R26 K10 ["createElement"]
      226 GETUPVAL                         R26 11
      227 DUPTABLE                         R27 K24 [{"LayoutOrder", "tag"}]
      228 NAMECALL                         R28 R20 K23 ["getNextOrder"]
      230 CALL                             R28 1 1
      231 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      233 LOADK                            R28 K43 ["size-full-0 auto-y"]
      234 SETTABLEKS                       R28 R27 K11 ["tag"]
      236 GETUPVAL                         R29 3
      237 GETTABLEKS                       R28 R29 K10 ["createElement"]
      239 GETUPVAL                         R29 14
      240 DUPTABLE                         R30 K51 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      241 SETTABLEKS                       R9 R30 K44 ["activeTabId"]
      243 SETTABLEKS                       R10 R30 K45 ["onActivated"]
      245 NEWTABLE                         R31 0 2
      247 DUPTABLE                         R32 K54 [{"id", "text"}]
      248 GETUPVAL                         R34 15
      249 GETTABLEKS                       R33 R34 K55 ["Collaborators"]
      251 SETTABLEKS                       R33 R32 K52 ["id"]
      253 LOADK                            R35 K31 ["QuickShare"]
      254 LOADK                            R36 K56 ["CollaboratorsTab"]
      255 NAMECALL                         R33 R2 K39 ["getText"]
      257 CALL                             R33 3 1
      258 SETTABLEKS                       R33 R32 K53 ["text"]
      260 DUPTABLE                         R33 K54 [{"id", "text"}]
      261 GETUPVAL                         R35 15
      262 GETTABLEKS                       R34 R35 K57 ["Experiences"]
      264 SETTABLEKS                       R34 R33 K52 ["id"]
      266 LOADK                            R36 K31 ["QuickShare"]
      267 LOADK                            R37 K58 ["ExperiencesTab"]
      268 NAMECALL                         R34 R2 K39 ["getText"]
      270 CALL                             R34 3 1
      271 SETTABLEKS                       R34 R33 K53 ["text"]
      273 SETLIST                          R31 R32 2 [1]
      275 SETTABLEKS                       R31 R30 K46 ["tabs"]
      277 SETTABLEKS                       R8 R30 K47 ["defaultActiveTabId"]
      279 GETUPVAL                         R34 16
      280 GETTABLEKS                       R33 R34 K59 ["Enums"]
      282 GETTABLEKS                       R32 R33 K60 ["InputSize"]
      284 GETTABLEKS                       R31 R32 K61 ["Small"]
      286 SETTABLEKS                       R31 R30 K48 ["size"]
      288 GETUPVAL                         R34 16
      289 GETTABLEKS                       R33 R34 K59 ["Enums"]
      291 GETTABLEKS                       R32 R33 K62 ["FillBehavior"]
      293 GETTABLEKS                       R31 R32 K63 ["Fill"]
      295 SETTABLEKS                       R31 R30 K49 ["fillBehavior"]
      297 LOADK                            R31 K64 ["quickshare-tabs"]
      298 SETTABLEKS                       R31 R30 K50 ["testId"]
      300 CALL                             R28 2 -1
      301 CALL                             R25 -1 1
      302 SETTABLEKS                       R25 R24 K16 ["TabButtons"]
      304 GETUPVAL                         R26 3
      305 GETTABLEKS                       R25 R26 K10 ["createElement"]
      307 GETUPVAL                         R26 11
      308 DUPTABLE                         R27 K24 [{"LayoutOrder", "tag"}]
      309 NAMECALL                         R28 R20 K23 ["getNextOrder"]
      311 CALL                             R28 1 1
      312 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      314 LOADK                            R28 K65 ["size-full-0 fill"]
      315 SETTABLEKS                       R28 R27 K11 ["tag"]
      317 NEWTABLE                         R28 0 1
      319 GETUPVAL                         R31 15
      320 GETTABLEKS                       R30 R31 K55 ["Collaborators"]
      322 JUMPIFNOTEQ                      R9 R30 ; [+18]
      324 GETUPVAL                         R30 3
      325 GETTABLEKS                       R29 R30 K10 ["createElement"]
      327 GETUPVAL                         R30 17
      328 DUPTABLE                         R31 K71 [{"State", "SetState", "CanAdd", "CanAddEditors", "HasNonEditTypes"}]
      329 SETTABLEKS                       R11 R31 K66 ["State"]
      331 SETTABLEKS                       R12 R31 K67 ["SetState"]
      333 SETTABLEKS                       R16 R31 K68 ["CanAdd"]
      335 SETTABLEKS                       R5 R31 K69 ["CanAddEditors"]
      337 SETTABLEKS                       R6 R31 K70 ["HasNonEditTypes"]
      339 CALL                             R29 2 1
      340 JUMP                             ; [+12]
      341 GETUPVAL                         R30 3
      342 GETTABLEKS                       R29 R30 K10 ["createElement"]
      344 GETUPVAL                         R30 18
      345 DUPTABLE                         R31 K72 [{"State", "SetState", "CanAdd"}]
      346 SETTABLEKS                       R13 R31 K66 ["State"]
      348 SETTABLEKS                       R14 R31 K67 ["SetState"]
      350 SETTABLEKS                       R16 R31 K68 ["CanAdd"]
      352 CALL                             R29 2 1
      353 SETLIST                          R28 R29 1 [1]
      355 CALL                             R25 3 1
      356 SETTABLEKS                       R25 R24 K17 ["TabContent"]
      358 GETUPVAL                         R26 3
      359 GETTABLEKS                       R25 R26 K10 ["createElement"]
      361 GETUPVAL                         R26 11
      362 DUPTABLE                         R27 K24 [{"LayoutOrder", "tag"}]
      363 NAMECALL                         R28 R20 K23 ["getNextOrder"]
      365 CALL                             R28 1 1
      366 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      368 LOADK                            R28 K73 ["row size-full-0 auto-y align-x-right gap-small"]
      369 SETTABLEKS                       R28 R27 K11 ["tag"]
      371 DUPTABLE                         R28 K76 [{"CancelButton", "ShareButton"}]
      372 GETUPVAL                         R30 3
      373 GETTABLEKS                       R29 R30 K10 ["createElement"]
      375 GETUPVAL                         R30 19
      376 DUPTABLE                         R31 K79 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size"}]
      377 LOADN                            R32 1
      378 SETTABLEKS                       R32 R31 K20 ["LayoutOrder"]
      380 LOADK                            R34 K31 ["QuickShare"]
      381 LOADK                            R35 K74 ["CancelButton"]
      382 NAMECALL                         R32 R2 K39 ["getText"]
      384 CALL                             R32 3 1
      385 SETTABLEKS                       R32 R31 K53 ["text"]
      387 SETTABLEKS                       R17 R31 K77 ["isDisabled"]
      389 NEWCLOSURE                       R32 P3
      390 CAPTURE                          VAL R0
      391 SETTABLEKS                       R32 R31 K45 ["onActivated"]
      393 GETUPVAL                         R35 16
      394 GETTABLEKS                       R34 R35 K59 ["Enums"]
      396 GETTABLEKS                       R33 R34 K80 ["ButtonVariant"]
      398 GETTABLEKS                       R32 R33 K81 ["Standard"]
      400 SETTABLEKS                       R32 R31 K78 ["variant"]
      402 GETUPVAL                         R35 16
      403 GETTABLEKS                       R34 R35 K59 ["Enums"]
      405 GETTABLEKS                       R33 R34 K60 ["InputSize"]
      407 GETTABLEKS                       R32 R33 K61 ["Small"]
      409 SETTABLEKS                       R32 R31 K48 ["size"]
      411 CALL                             R29 2 1
      412 SETTABLEKS                       R29 R28 K74 ["CancelButton"]
      414 GETUPVAL                         R30 3
      415 GETTABLEKS                       R29 R30 K10 ["createElement"]
      417 GETUPVAL                         R30 19
      418 DUPTABLE                         R31 K83 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size"}]
      419 LOADN                            R32 2
      420 SETTABLEKS                       R32 R31 K20 ["LayoutOrder"]
      422 LOADK                            R34 K31 ["QuickShare"]
      423 LOADK                            R35 K75 ["ShareButton"]
      424 NAMECALL                         R32 R2 K39 ["getText"]
      426 CALL                             R32 3 1
      427 SETTABLEKS                       R32 R31 K53 ["text"]
      429 SETTABLEKS                       R17 R31 K82 ["isLoading"]
      431 LOADB                            R32 1
      432 LENGTH                           R33 R4
      433 JUMPIFEQKN                       R33 K84 [0] ; [+2]
      435 NOT                              R32 R15
      436 SETTABLEKS                       R32 R31 K77 ["isDisabled"]
      438 SETTABLEKS                       R19 R31 K45 ["onActivated"]
      440 GETUPVAL                         R35 16
      441 GETTABLEKS                       R34 R35 K59 ["Enums"]
      443 GETTABLEKS                       R33 R34 K80 ["ButtonVariant"]
      445 GETTABLEKS                       R32 R33 K85 ["Emphasis"]
      447 SETTABLEKS                       R32 R31 K78 ["variant"]
      449 GETUPVAL                         R35 16
      450 GETTABLEKS                       R34 R35 K59 ["Enums"]
      452 GETTABLEKS                       R33 R34 K60 ["InputSize"]
      454 GETTABLEKS                       R32 R33 K61 ["Small"]
      456 SETTABLEKS                       R32 R31 K48 ["size"]
      458 CALL                             R29 2 1
      459 SETTABLEKS                       R29 R28 K75 ["ShareButton"]
      461 CALL                             R25 3 1
      462 SETTABLEKS                       R25 R24 K18 ["Footer"]
      464 CALL                             R21 3 -1
      465 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["View"]
       30 GETTABLEKS                       R5 R2 K11 ["Text"]
       32 GETTABLEKS                       R6 R2 K12 ["Button"]
       34 GETTABLEKS                       R7 R2 K13 ["Icon"]
       36 GETTABLEKS                       R8 R2 K14 ["Tabs"]
       38 GETTABLEKS                       R10 R2 K15 ["Hooks"]
       40 GETTABLEKS                       R9 R10 K16 ["useTokens"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R12 R0 K6 ["Packages"]
       46 GETTABLEKS                       R11 R12 K17 ["Framework"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R12 R10 K18 ["Util"]
       51 GETTABLEKS                       R11 R12 K19 ["LayoutOrderIterator"]
       53 GETTABLEKS                       R12 R10 K20 ["ContextServices"]
       55 GETTABLEKS                       R13 R12 K21 ["Localization"]
       57 GETIMPORT                        R14 K5 [require]
       59 GETTABLEKS                       R16 R0 K22 ["Src"]
       61 GETTABLEKS                       R15 R16 K23 ["Types"]
       63 CALL                             R14 1 1
       64 GETTABLEKS                       R15 R14 K24 ["AssetType"]
       66 GETIMPORT                        R16 K5 [require]
       68 GETTABLEKS                       R18 R0 K22 ["Src"]
       70 GETTABLEKS                       R17 R18 K25 ["Networking"]
       72 CALL                             R16 1 1
       73 GETIMPORT                        R17 K5 [require]
       75 GETTABLEKS                       R20 R0 K22 ["Src"]
       77 GETTABLEKS                       R19 R20 K26 ["Controllers"]
       79 GETTABLEKS                       R18 R19 K27 ["ItemsController"]
       81 CALL                             R17 1 1
       82 GETIMPORT                        R18 K5 [require]
       84 GETTABLEKS                       R22 R0 K22 ["Src"]
       86 GETTABLEKS                       R21 R22 K28 ["Dialogs"]
       88 GETTABLEKS                       R20 R21 K29 ["QuickShare"]
       90 GETTABLEKS                       R19 R20 K30 ["CollaboratorsTab"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R23 R0 K22 ["Src"]
       97 GETTABLEKS                       R22 R23 K28 ["Dialogs"]
       99 GETTABLEKS                       R21 R22 K29 ["QuickShare"]
      101 GETTABLEKS                       R20 R21 K31 ["ExperiencesTab"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K5 [require]
      106 GETTABLEKS                       R25 R0 K22 ["Src"]
      108 GETTABLEKS                       R24 R25 K28 ["Dialogs"]
      110 GETTABLEKS                       R23 R24 K29 ["QuickShare"]
      112 GETTABLEKS                       R22 R23 K18 ["Util"]
      114 GETTABLEKS                       R21 R22 K32 ["useQuickShareState"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K5 [require]
      119 GETTABLEKS                       R26 R0 K22 ["Src"]
      121 GETTABLEKS                       R25 R26 K28 ["Dialogs"]
      123 GETTABLEKS                       R24 R25 K29 ["QuickShare"]
      125 GETTABLEKS                       R23 R24 K18 ["Util"]
      127 GETTABLEKS                       R22 R23 K33 ["grantPermissionsAsync"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K5 [require]
      132 GETTABLEKS                       R25 R0 K22 ["Src"]
      134 GETTABLEKS                       R24 R25 K34 ["Flags"]
      136 GETTABLEKS                       R23 R24 K35 ["getFFlagAmrUpdatedItemsCache"]
      138 CALL                             R22 1 1
      139 DUPTABLE                         R23 K38 [{"Collaborators", "Experiences"}]
      140 LOADN                            R24 1
      141 SETTABLEKS                       R24 R23 K36 ["Collaborators"]
      143 LOADN                            R24 2
      144 SETTABLEKS                       R24 R23 K37 ["Experiences"]
      146 GETTABLEKS                       R24 R23 K36 ["Collaborators"]
      148 DUPCLOSURE                       R25 K39 [PROTO_0]
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R5
      156 DUPCLOSURE                       R26 K40 [PROTO_10]
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R6
      177 RETURN                           R26 1
