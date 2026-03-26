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
       10 GETTABLEKS                       R3 R4 K4 ["Selection"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R3 R4 K4 ["Selection"]
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
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R0 K2 ["ErrorAssetIds"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R5 R6 K1 ["useMemo"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U6
       35 NEWTABLE                         R7 0 2
       37 MOVE                             R8 R4
       38 GETTABLEKS                       R9 R0 K2 ["ErrorAssetIds"]
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 2
       43 GETTABLEKS                       R7 R0 K3 ["StartTab"]
       45 JUMPIF                           R7 ; [+1]
       46 GETUPVAL                         R7 7
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R8 R9 K4 ["useState"]
       50 MOVE                             R9 R7
       51 CALL                             R8 1 2
       52 GETUPVAL                         R10 8
       53 MOVE                             R11 R1
       54 CALL                             R10 1 4
       55 LOADB                            R14 1
       56 GETTABLEKS                       R16 R10 K5 ["Selection"]
       58 LENGTH                           R15 R16
       59 LOADN                            R16 0
       60 JUMPIFLT                         R16 R15 ; [+9]
       62 GETTABLEKS                       R16 R12 K5 ["Selection"]
       64 LENGTH                           R15 R16
       65 LOADN                            R16 0
       66 JUMPIFLT                         R16 R15 ; [+2]
       68 LOADB                            R14 0 +1
       69 LOADB                            R14 1
       70 GETTABLEKS                       R18 R10 K5 ["Selection"]
       72 LENGTH                           R17 R18
       73 GETTABLEKS                       R19 R12 K5 ["Selection"]
       75 LENGTH                           R18 R19
       76 ADD                              R16 R17 R18
       77 LOADN                            R17 10
       78 JUMPIFLT                         R16 R17 ; [+2]
       80 LOADB                            R15 0 +1
       81 LOADB                            R15 1
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R16 R17 K4 ["useState"]
       85 LOADB                            R17 0
       86 CALL                             R16 1 2
       87 GETUPVAL                         R19 3
       88 GETTABLEKS                       R18 R19 K6 ["useCallback"]
       90 NEWCLOSURE                       R19 P2
       91 CAPTURE                          VAL R17
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R12
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 GETUPVAL                         R21 10
      100 CALL                             R21 0 1
      101 JUMPIFNOT                        R21 ; [+8]
      102 NEWTABLE                         R20 0 2
      104 MOVE                             R21 R4
      105 GETTABLEKS                       R22 R0 K7 ["OnDone"]
      107 SETLIST                          R20 R21 2 [1]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R20
      111 CALL                             R18 2 1
      112 GETUPVAL                         R20 11
      113 GETTABLEKS                       R19 R20 K8 ["new"]
      115 CALL                             R19 0 1
      116 GETUPVAL                         R21 3
      117 GETTABLEKS                       R20 R21 K9 ["createElement"]
      119 GETUPVAL                         R21 12
      120 DUPTABLE                         R22 K11 [{"tag"}]
      121 LOADK                            R23 K12 ["col size-full padding-medium gap-medium"]
      122 SETTABLEKS                       R23 R22 K10 ["tag"]
      124 DUPTABLE                         R23 K18 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      125 GETTABLEKS                       R26 R0 K2 ["ErrorAssetIds"]
      127 LENGTH                           R25 R26
      128 LOADN                            R26 0
      129 JUMPIFNOTLT                      R26 R25 ; [+17]
      131 GETUPVAL                         R25 3
      132 GETTABLEKS                       R24 R25 K9 ["createElement"]
      134 GETUPVAL                         R25 13
      135 DUPTABLE                         R26 K21 [{"LayoutOrder", "OnViewErrors"}]
      136 NAMECALL                         R27 R19 K22 ["getNextOrder"]
      138 CALL                             R27 1 1
      139 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      141 GETTABLEKS                       R27 R0 K20 ["OnViewErrors"]
      143 SETTABLEKS                       R27 R26 K20 ["OnViewErrors"]
      145 CALL                             R24 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R24
      148 SETTABLEKS                       R24 R23 K13 ["WarningBanner"]
      150 GETUPVAL                         R25 3
      151 GETTABLEKS                       R24 R25 K9 ["createElement"]
      153 GETUPVAL                         R25 12
      154 DUPTABLE                         R26 K23 [{"LayoutOrder", "tag"}]
      155 NAMECALL                         R27 R19 K22 ["getNextOrder"]
      157 CALL                             R27 1 1
      158 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      160 LOADK                            R27 K24 ["col size-full-0 auto-y gap-xsmall"]
      161 SETTABLEKS                       R27 R26 K10 ["tag"]
      163 DUPTABLE                         R27 K27 [{"Title", "Description"}]
      164 GETUPVAL                         R29 3
      165 GETTABLEKS                       R28 R29 K9 ["createElement"]
      167 GETUPVAL                         R29 14
      168 DUPTABLE                         R30 K29 [{"LayoutOrder", "Text", "tag"}]
      169 LOADN                            R31 1
      170 SETTABLEKS                       R31 R30 K19 ["LayoutOrder"]
      172 LOADK                            R33 K30 ["QuickShare"]
      173 LENGTH                           R35 R4
      174 JUMPIFNOTEQKN                    R35 K31 [1] ; [+3]
      176 LOADK                            R34 K32 ["SharingOne"]
      177 JUMP                             ; [+1]
      178 LOADK                            R34 K33 ["SharingMultiple"]
      179 DUPTABLE                         R35 K35 [{"count"}]
      180 LENGTH                           R37 R4
      181 FASTCALL1                        TOSTRING R37 ; [+2]
      182 GETIMPORT                        R36 K37 [tostring]
      184 CALL                             R36 1 1
      185 SETTABLEKS                       R36 R35 K34 ["count"]
      187 NAMECALL                         R31 R2 K38 ["getText"]
      189 CALL                             R31 4 1
      190 SETTABLEKS                       R31 R30 K28 ["Text"]
      192 LOADK                            R31 K39 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=shareview-title"]
      193 SETTABLEKS                       R31 R30 K10 ["tag"]
      195 CALL                             R28 2 1
      196 SETTABLEKS                       R28 R27 K25 ["Title"]
      198 GETUPVAL                         R29 3
      199 GETTABLEKS                       R28 R29 K9 ["createElement"]
      201 GETUPVAL                         R29 14
      202 DUPTABLE                         R30 K29 [{"LayoutOrder", "Text", "tag"}]
      203 LOADN                            R31 2
      204 SETTABLEKS                       R31 R30 K19 ["LayoutOrder"]
      206 LOADK                            R33 K30 ["QuickShare"]
      207 LOADK                            R34 K40 ["DialogDescription"]
      208 NAMECALL                         R31 R2 K38 ["getText"]
      210 CALL                             R31 3 1
      211 SETTABLEKS                       R31 R30 K28 ["Text"]
      213 LOADK                            R31 K41 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      214 SETTABLEKS                       R31 R30 K10 ["tag"]
      216 CALL                             R28 2 1
      217 SETTABLEKS                       R28 R27 K26 ["Description"]
      219 CALL                             R24 3 1
      220 SETTABLEKS                       R24 R23 K14 ["Header"]
      222 GETUPVAL                         R25 3
      223 GETTABLEKS                       R24 R25 K9 ["createElement"]
      225 GETUPVAL                         R25 12
      226 DUPTABLE                         R26 K23 [{"LayoutOrder", "tag"}]
      227 NAMECALL                         R27 R19 K22 ["getNextOrder"]
      229 CALL                             R27 1 1
      230 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      232 LOADK                            R27 K42 ["size-full-0 auto-y"]
      233 SETTABLEKS                       R27 R26 K10 ["tag"]
      235 GETUPVAL                         R28 3
      236 GETTABLEKS                       R27 R28 K9 ["createElement"]
      238 GETUPVAL                         R28 15
      239 DUPTABLE                         R29 K50 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      240 SETTABLEKS                       R8 R29 K43 ["activeTabId"]
      242 SETTABLEKS                       R9 R29 K44 ["onActivated"]
      244 NEWTABLE                         R30 0 2
      246 DUPTABLE                         R31 K53 [{"id", "text"}]
      247 GETUPVAL                         R33 16
      248 GETTABLEKS                       R32 R33 K54 ["Collaborators"]
      250 SETTABLEKS                       R32 R31 K51 ["id"]
      252 LOADK                            R34 K30 ["QuickShare"]
      253 LOADK                            R35 K55 ["CollaboratorsTab"]
      254 NAMECALL                         R32 R2 K38 ["getText"]
      256 CALL                             R32 3 1
      257 SETTABLEKS                       R32 R31 K52 ["text"]
      259 DUPTABLE                         R32 K53 [{"id", "text"}]
      260 GETUPVAL                         R34 16
      261 GETTABLEKS                       R33 R34 K56 ["Experiences"]
      263 SETTABLEKS                       R33 R32 K51 ["id"]
      265 LOADK                            R35 K30 ["QuickShare"]
      266 LOADK                            R36 K57 ["ExperiencesTab"]
      267 NAMECALL                         R33 R2 K38 ["getText"]
      269 CALL                             R33 3 1
      270 SETTABLEKS                       R33 R32 K52 ["text"]
      272 SETLIST                          R30 R31 2 [1]
      274 SETTABLEKS                       R30 R29 K45 ["tabs"]
      276 SETTABLEKS                       R7 R29 K46 ["defaultActiveTabId"]
      278 GETUPVAL                         R33 17
      279 GETTABLEKS                       R32 R33 K58 ["Enums"]
      281 GETTABLEKS                       R31 R32 K59 ["InputSize"]
      283 GETTABLEKS                       R30 R31 K60 ["Small"]
      285 SETTABLEKS                       R30 R29 K47 ["size"]
      287 GETUPVAL                         R33 17
      288 GETTABLEKS                       R32 R33 K58 ["Enums"]
      290 GETTABLEKS                       R31 R32 K61 ["FillBehavior"]
      292 GETTABLEKS                       R30 R31 K62 ["Fill"]
      294 SETTABLEKS                       R30 R29 K48 ["fillBehavior"]
      296 LOADK                            R30 K63 ["quickshare-tabs"]
      297 SETTABLEKS                       R30 R29 K49 ["testId"]
      299 CALL                             R27 2 -1
      300 CALL                             R24 -1 1
      301 SETTABLEKS                       R24 R23 K15 ["TabButtons"]
      303 GETUPVAL                         R25 3
      304 GETTABLEKS                       R24 R25 K9 ["createElement"]
      306 GETUPVAL                         R25 12
      307 DUPTABLE                         R26 K23 [{"LayoutOrder", "tag"}]
      308 NAMECALL                         R27 R19 K22 ["getNextOrder"]
      310 CALL                             R27 1 1
      311 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      313 LOADK                            R27 K64 ["size-full-0 fill"]
      314 SETTABLEKS                       R27 R26 K10 ["tag"]
      316 NEWTABLE                         R27 0 1
      318 GETUPVAL                         R30 16
      319 GETTABLEKS                       R29 R30 K54 ["Collaborators"]
      321 JUMPIFNOTEQ                      R8 R29 ; [+18]
      323 GETUPVAL                         R29 3
      324 GETTABLEKS                       R28 R29 K9 ["createElement"]
      326 GETUPVAL                         R29 18
      327 DUPTABLE                         R30 K70 [{"State", "SetState", "CanAdd", "CanAddEditors", "HasNonEditTypes"}]
      328 SETTABLEKS                       R10 R30 K65 ["State"]
      330 SETTABLEKS                       R11 R30 K66 ["SetState"]
      332 SETTABLEKS                       R15 R30 K67 ["CanAdd"]
      334 SETTABLEKS                       R5 R30 K68 ["CanAddEditors"]
      336 SETTABLEKS                       R6 R30 K69 ["HasNonEditTypes"]
      338 CALL                             R28 2 1
      339 JUMP                             ; [+12]
      340 GETUPVAL                         R29 3
      341 GETTABLEKS                       R28 R29 K9 ["createElement"]
      343 GETUPVAL                         R29 19
      344 DUPTABLE                         R30 K71 [{"State", "SetState", "CanAdd"}]
      345 SETTABLEKS                       R12 R30 K65 ["State"]
      347 SETTABLEKS                       R13 R30 K66 ["SetState"]
      349 SETTABLEKS                       R15 R30 K67 ["CanAdd"]
      351 CALL                             R28 2 1
      352 SETLIST                          R27 R28 1 [1]
      354 CALL                             R24 3 1
      355 SETTABLEKS                       R24 R23 K16 ["TabContent"]
      357 GETUPVAL                         R25 3
      358 GETTABLEKS                       R24 R25 K9 ["createElement"]
      360 GETUPVAL                         R25 12
      361 DUPTABLE                         R26 K23 [{"LayoutOrder", "tag"}]
      362 NAMECALL                         R27 R19 K22 ["getNextOrder"]
      364 CALL                             R27 1 1
      365 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      367 LOADK                            R27 K72 ["row size-full-0 auto-y align-x-right gap-small"]
      368 SETTABLEKS                       R27 R26 K10 ["tag"]
      370 DUPTABLE                         R27 K75 [{"CancelButton", "ShareButton"}]
      371 GETUPVAL                         R29 3
      372 GETTABLEKS                       R28 R29 K9 ["createElement"]
      374 GETUPVAL                         R29 20
      375 DUPTABLE                         R30 K78 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size"}]
      376 LOADN                            R31 1
      377 SETTABLEKS                       R31 R30 K19 ["LayoutOrder"]
      379 LOADK                            R33 K30 ["QuickShare"]
      380 LOADK                            R34 K73 ["CancelButton"]
      381 NAMECALL                         R31 R2 K38 ["getText"]
      383 CALL                             R31 3 1
      384 SETTABLEKS                       R31 R30 K52 ["text"]
      386 SETTABLEKS                       R16 R30 K76 ["isDisabled"]
      388 NEWCLOSURE                       R31 P3
      389 CAPTURE                          VAL R0
      390 SETTABLEKS                       R31 R30 K44 ["onActivated"]
      392 GETUPVAL                         R34 17
      393 GETTABLEKS                       R33 R34 K58 ["Enums"]
      395 GETTABLEKS                       R32 R33 K79 ["ButtonVariant"]
      397 GETTABLEKS                       R31 R32 K80 ["Standard"]
      399 SETTABLEKS                       R31 R30 K77 ["variant"]
      401 GETUPVAL                         R34 17
      402 GETTABLEKS                       R33 R34 K58 ["Enums"]
      404 GETTABLEKS                       R32 R33 K59 ["InputSize"]
      406 GETTABLEKS                       R31 R32 K60 ["Small"]
      408 SETTABLEKS                       R31 R30 K47 ["size"]
      410 CALL                             R28 2 1
      411 SETTABLEKS                       R28 R27 K73 ["CancelButton"]
      413 GETUPVAL                         R29 3
      414 GETTABLEKS                       R28 R29 K9 ["createElement"]
      416 GETUPVAL                         R29 20
      417 DUPTABLE                         R30 K82 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size"}]
      418 LOADN                            R31 2
      419 SETTABLEKS                       R31 R30 K19 ["LayoutOrder"]
      421 LOADK                            R33 K30 ["QuickShare"]
      422 LOADK                            R34 K74 ["ShareButton"]
      423 NAMECALL                         R31 R2 K38 ["getText"]
      425 CALL                             R31 3 1
      426 SETTABLEKS                       R31 R30 K52 ["text"]
      428 SETTABLEKS                       R16 R30 K81 ["isLoading"]
      430 LOADB                            R31 1
      431 LENGTH                           R32 R4
      432 JUMPIFEQKN                       R32 K83 [0] ; [+2]
      434 NOT                              R31 R14
      435 SETTABLEKS                       R31 R30 K76 ["isDisabled"]
      437 SETTABLEKS                       R18 R30 K44 ["onActivated"]
      439 GETUPVAL                         R34 17
      440 GETTABLEKS                       R33 R34 K58 ["Enums"]
      442 GETTABLEKS                       R32 R33 K79 ["ButtonVariant"]
      444 GETTABLEKS                       R31 R32 K84 ["Emphasis"]
      446 SETTABLEKS                       R31 R30 K77 ["variant"]
      448 GETUPVAL                         R34 17
      449 GETTABLEKS                       R33 R34 K58 ["Enums"]
      451 GETTABLEKS                       R32 R33 K59 ["InputSize"]
      453 GETTABLEKS                       R31 R32 K60 ["Small"]
      455 SETTABLEKS                       R31 R30 K47 ["size"]
      457 CALL                             R28 2 1
      458 SETTABLEKS                       R28 R27 K74 ["ShareButton"]
      460 CALL                             R24 3 1
      461 SETTABLEKS                       R24 R23 K17 ["Footer"]
      463 CALL                             R20 3 -1
      464 RETURN                           R20 -1

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
       84 GETIMPORT                        R20 K1 [script]
       86 GETTABLEKS                       R19 R20 K28 ["CollaboratorsTab"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K5 [require]
       91 GETIMPORT                        R21 K1 [script]
       93 GETTABLEKS                       R20 R21 K29 ["ExperiencesTab"]
       95 CALL                             R19 1 1
       96 GETIMPORT                        R20 K5 [require]
       98 GETIMPORT                        R24 K1 [script]
      100 GETTABLEKS                       R23 R24 K30 ["Parent"]
      102 GETTABLEKS                       R22 R23 K18 ["Util"]
      104 GETTABLEKS                       R21 R22 K31 ["useQuickShareState"]
      106 CALL                             R20 1 1
      107 GETIMPORT                        R21 K5 [require]
      109 GETIMPORT                        R25 K1 [script]
      111 GETTABLEKS                       R24 R25 K30 ["Parent"]
      113 GETTABLEKS                       R23 R24 K18 ["Util"]
      115 GETTABLEKS                       R22 R23 K32 ["grantPermissionsAsync"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K5 [require]
      120 GETTABLEKS                       R25 R0 K22 ["Src"]
      122 GETTABLEKS                       R24 R25 K33 ["Flags"]
      124 GETTABLEKS                       R23 R24 K34 ["getFFlagAmrUpdatedItemsCache"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K5 [require]
      129 GETTABLEKS                       R26 R0 K22 ["Src"]
      131 GETTABLEKS                       R25 R26 K33 ["Flags"]
      133 GETTABLEKS                       R24 R25 K35 ["getFFlagAmrMiscCallbackFixes"]
      135 CALL                             R23 1 1
      136 DUPTABLE                         R24 K38 [{"Collaborators", "Experiences"}]
      137 LOADN                            R25 1
      138 SETTABLEKS                       R25 R24 K36 ["Collaborators"]
      140 LOADN                            R25 2
      141 SETTABLEKS                       R25 R24 K37 ["Experiences"]
      143 GETTABLEKS                       R25 R24 K36 ["Collaborators"]
      145 DUPCLOSURE                       R26 K39 [PROTO_0]
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R5
      153 DUPCLOSURE                       R27 K40 [PROTO_10]
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R25
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R26
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R6
      175 RETURN                           R27 1
