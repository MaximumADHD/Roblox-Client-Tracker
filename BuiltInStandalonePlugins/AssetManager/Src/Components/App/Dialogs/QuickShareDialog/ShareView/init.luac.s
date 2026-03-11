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
       99 CALL                             R18 1 1
      100 GETUPVAL                         R20 10
      101 GETTABLEKS                       R19 R20 K7 ["new"]
      103 CALL                             R19 0 1
      104 GETUPVAL                         R21 3
      105 GETTABLEKS                       R20 R21 K8 ["createElement"]
      107 GETUPVAL                         R21 11
      108 DUPTABLE                         R22 K10 [{"tag"}]
      109 LOADK                            R23 K11 ["col size-full padding-medium gap-medium"]
      110 SETTABLEKS                       R23 R22 K9 ["tag"]
      112 DUPTABLE                         R23 K17 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      113 GETTABLEKS                       R26 R0 K2 ["ErrorAssetIds"]
      115 LENGTH                           R25 R26
      116 LOADN                            R26 0
      117 JUMPIFNOTLT                      R26 R25 ; [+17]
      119 GETUPVAL                         R25 3
      120 GETTABLEKS                       R24 R25 K8 ["createElement"]
      122 GETUPVAL                         R25 12
      123 DUPTABLE                         R26 K20 [{"LayoutOrder", "OnViewErrors"}]
      124 NAMECALL                         R27 R19 K21 ["getNextOrder"]
      126 CALL                             R27 1 1
      127 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      129 GETTABLEKS                       R27 R0 K19 ["OnViewErrors"]
      131 SETTABLEKS                       R27 R26 K19 ["OnViewErrors"]
      133 CALL                             R24 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R24
      136 SETTABLEKS                       R24 R23 K12 ["WarningBanner"]
      138 GETUPVAL                         R25 3
      139 GETTABLEKS                       R24 R25 K8 ["createElement"]
      141 GETUPVAL                         R25 11
      142 DUPTABLE                         R26 K22 [{"LayoutOrder", "tag"}]
      143 NAMECALL                         R27 R19 K21 ["getNextOrder"]
      145 CALL                             R27 1 1
      146 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      148 LOADK                            R27 K23 ["col size-full-0 auto-y gap-xsmall"]
      149 SETTABLEKS                       R27 R26 K9 ["tag"]
      151 DUPTABLE                         R27 K26 [{"Title", "Description"}]
      152 GETUPVAL                         R29 3
      153 GETTABLEKS                       R28 R29 K8 ["createElement"]
      155 GETUPVAL                         R29 13
      156 DUPTABLE                         R30 K28 [{"LayoutOrder", "Text", "tag"}]
      157 LOADN                            R31 1
      158 SETTABLEKS                       R31 R30 K18 ["LayoutOrder"]
      160 LOADK                            R33 K29 ["QuickShare"]
      161 LENGTH                           R35 R4
      162 JUMPIFNOTEQKN                    R35 K30 [1] ; [+3]
      164 LOADK                            R34 K31 ["SharingOne"]
      165 JUMP                             ; [+1]
      166 LOADK                            R34 K32 ["SharingMultiple"]
      167 DUPTABLE                         R35 K34 [{"count"}]
      168 LENGTH                           R37 R4
      169 FASTCALL1                        TOSTRING R37 ; [+2]
      170 GETIMPORT                        R36 K36 [tostring]
      172 CALL                             R36 1 1
      173 SETTABLEKS                       R36 R35 K33 ["count"]
      175 NAMECALL                         R31 R2 K37 ["getText"]
      177 CALL                             R31 4 1
      178 SETTABLEKS                       R31 R30 K27 ["Text"]
      180 LOADK                            R31 K38 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=shareview-title"]
      181 SETTABLEKS                       R31 R30 K9 ["tag"]
      183 CALL                             R28 2 1
      184 SETTABLEKS                       R28 R27 K24 ["Title"]
      186 GETUPVAL                         R29 3
      187 GETTABLEKS                       R28 R29 K8 ["createElement"]
      189 GETUPVAL                         R29 13
      190 DUPTABLE                         R30 K28 [{"LayoutOrder", "Text", "tag"}]
      191 LOADN                            R31 2
      192 SETTABLEKS                       R31 R30 K18 ["LayoutOrder"]
      194 LOADK                            R33 K29 ["QuickShare"]
      195 LOADK                            R34 K39 ["DialogDescription"]
      196 NAMECALL                         R31 R2 K37 ["getText"]
      198 CALL                             R31 3 1
      199 SETTABLEKS                       R31 R30 K27 ["Text"]
      201 LOADK                            R31 K40 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      202 SETTABLEKS                       R31 R30 K9 ["tag"]
      204 CALL                             R28 2 1
      205 SETTABLEKS                       R28 R27 K25 ["Description"]
      207 CALL                             R24 3 1
      208 SETTABLEKS                       R24 R23 K13 ["Header"]
      210 GETUPVAL                         R25 3
      211 GETTABLEKS                       R24 R25 K8 ["createElement"]
      213 GETUPVAL                         R25 11
      214 DUPTABLE                         R26 K22 [{"LayoutOrder", "tag"}]
      215 NAMECALL                         R27 R19 K21 ["getNextOrder"]
      217 CALL                             R27 1 1
      218 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      220 LOADK                            R27 K41 ["size-full-0 auto-y"]
      221 SETTABLEKS                       R27 R26 K9 ["tag"]
      223 GETUPVAL                         R28 3
      224 GETTABLEKS                       R27 R28 K8 ["createElement"]
      226 GETUPVAL                         R28 14
      227 DUPTABLE                         R29 K49 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      228 SETTABLEKS                       R8 R29 K42 ["activeTabId"]
      230 SETTABLEKS                       R9 R29 K43 ["onActivated"]
      232 NEWTABLE                         R30 0 2
      234 DUPTABLE                         R31 K52 [{"id", "text"}]
      235 GETUPVAL                         R33 15
      236 GETTABLEKS                       R32 R33 K53 ["Collaborators"]
      238 SETTABLEKS                       R32 R31 K50 ["id"]
      240 LOADK                            R34 K29 ["QuickShare"]
      241 LOADK                            R35 K54 ["CollaboratorsTab"]
      242 NAMECALL                         R32 R2 K37 ["getText"]
      244 CALL                             R32 3 1
      245 SETTABLEKS                       R32 R31 K51 ["text"]
      247 DUPTABLE                         R32 K52 [{"id", "text"}]
      248 GETUPVAL                         R34 15
      249 GETTABLEKS                       R33 R34 K55 ["Experiences"]
      251 SETTABLEKS                       R33 R32 K50 ["id"]
      253 LOADK                            R35 K29 ["QuickShare"]
      254 LOADK                            R36 K56 ["ExperiencesTab"]
      255 NAMECALL                         R33 R2 K37 ["getText"]
      257 CALL                             R33 3 1
      258 SETTABLEKS                       R33 R32 K51 ["text"]
      260 SETLIST                          R30 R31 2 [1]
      262 SETTABLEKS                       R30 R29 K44 ["tabs"]
      264 SETTABLEKS                       R7 R29 K45 ["defaultActiveTabId"]
      266 GETUPVAL                         R33 16
      267 GETTABLEKS                       R32 R33 K57 ["Enums"]
      269 GETTABLEKS                       R31 R32 K58 ["InputSize"]
      271 GETTABLEKS                       R30 R31 K59 ["Small"]
      273 SETTABLEKS                       R30 R29 K46 ["size"]
      275 GETUPVAL                         R33 16
      276 GETTABLEKS                       R32 R33 K57 ["Enums"]
      278 GETTABLEKS                       R31 R32 K60 ["FillBehavior"]
      280 GETTABLEKS                       R30 R31 K61 ["Fill"]
      282 SETTABLEKS                       R30 R29 K47 ["fillBehavior"]
      284 LOADK                            R30 K62 ["quickshare-tabs"]
      285 SETTABLEKS                       R30 R29 K48 ["testId"]
      287 CALL                             R27 2 -1
      288 CALL                             R24 -1 1
      289 SETTABLEKS                       R24 R23 K14 ["TabButtons"]
      291 GETUPVAL                         R25 3
      292 GETTABLEKS                       R24 R25 K8 ["createElement"]
      294 GETUPVAL                         R25 11
      295 DUPTABLE                         R26 K22 [{"LayoutOrder", "tag"}]
      296 NAMECALL                         R27 R19 K21 ["getNextOrder"]
      298 CALL                             R27 1 1
      299 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      301 LOADK                            R27 K63 ["size-full-0 fill"]
      302 SETTABLEKS                       R27 R26 K9 ["tag"]
      304 NEWTABLE                         R27 0 1
      306 GETUPVAL                         R30 15
      307 GETTABLEKS                       R29 R30 K53 ["Collaborators"]
      309 JUMPIFNOTEQ                      R8 R29 ; [+18]
      311 GETUPVAL                         R29 3
      312 GETTABLEKS                       R28 R29 K8 ["createElement"]
      314 GETUPVAL                         R29 17
      315 DUPTABLE                         R30 K69 [{"State", "SetState", "CanAdd", "CanAddEditors", "HasNonEditTypes"}]
      316 SETTABLEKS                       R10 R30 K64 ["State"]
      318 SETTABLEKS                       R11 R30 K65 ["SetState"]
      320 SETTABLEKS                       R15 R30 K66 ["CanAdd"]
      322 SETTABLEKS                       R5 R30 K67 ["CanAddEditors"]
      324 SETTABLEKS                       R6 R30 K68 ["HasNonEditTypes"]
      326 CALL                             R28 2 1
      327 JUMP                             ; [+12]
      328 GETUPVAL                         R29 3
      329 GETTABLEKS                       R28 R29 K8 ["createElement"]
      331 GETUPVAL                         R29 18
      332 DUPTABLE                         R30 K70 [{"State", "SetState", "CanAdd"}]
      333 SETTABLEKS                       R12 R30 K64 ["State"]
      335 SETTABLEKS                       R13 R30 K65 ["SetState"]
      337 SETTABLEKS                       R15 R30 K66 ["CanAdd"]
      339 CALL                             R28 2 1
      340 SETLIST                          R27 R28 1 [1]
      342 CALL                             R24 3 1
      343 SETTABLEKS                       R24 R23 K15 ["TabContent"]
      345 GETUPVAL                         R25 3
      346 GETTABLEKS                       R24 R25 K8 ["createElement"]
      348 GETUPVAL                         R25 11
      349 DUPTABLE                         R26 K22 [{"LayoutOrder", "tag"}]
      350 NAMECALL                         R27 R19 K21 ["getNextOrder"]
      352 CALL                             R27 1 1
      353 SETTABLEKS                       R27 R26 K18 ["LayoutOrder"]
      355 LOADK                            R27 K71 ["row size-full-0 auto-y align-x-right gap-small"]
      356 SETTABLEKS                       R27 R26 K9 ["tag"]
      358 DUPTABLE                         R27 K74 [{"CancelButton", "ShareButton"}]
      359 GETUPVAL                         R29 3
      360 GETTABLEKS                       R28 R29 K8 ["createElement"]
      362 GETUPVAL                         R29 19
      363 DUPTABLE                         R30 K77 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size"}]
      364 LOADN                            R31 1
      365 SETTABLEKS                       R31 R30 K18 ["LayoutOrder"]
      367 LOADK                            R33 K29 ["QuickShare"]
      368 LOADK                            R34 K72 ["CancelButton"]
      369 NAMECALL                         R31 R2 K37 ["getText"]
      371 CALL                             R31 3 1
      372 SETTABLEKS                       R31 R30 K51 ["text"]
      374 SETTABLEKS                       R16 R30 K75 ["isDisabled"]
      376 NEWCLOSURE                       R31 P3
      377 CAPTURE                          VAL R0
      378 SETTABLEKS                       R31 R30 K43 ["onActivated"]
      380 GETUPVAL                         R34 16
      381 GETTABLEKS                       R33 R34 K57 ["Enums"]
      383 GETTABLEKS                       R32 R33 K78 ["ButtonVariant"]
      385 GETTABLEKS                       R31 R32 K79 ["Standard"]
      387 SETTABLEKS                       R31 R30 K76 ["variant"]
      389 GETUPVAL                         R34 16
      390 GETTABLEKS                       R33 R34 K57 ["Enums"]
      392 GETTABLEKS                       R32 R33 K58 ["InputSize"]
      394 GETTABLEKS                       R31 R32 K59 ["Small"]
      396 SETTABLEKS                       R31 R30 K46 ["size"]
      398 CALL                             R28 2 1
      399 SETTABLEKS                       R28 R27 K72 ["CancelButton"]
      401 GETUPVAL                         R29 3
      402 GETTABLEKS                       R28 R29 K8 ["createElement"]
      404 GETUPVAL                         R29 19
      405 DUPTABLE                         R30 K81 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size"}]
      406 LOADN                            R31 2
      407 SETTABLEKS                       R31 R30 K18 ["LayoutOrder"]
      409 LOADK                            R33 K29 ["QuickShare"]
      410 LOADK                            R34 K73 ["ShareButton"]
      411 NAMECALL                         R31 R2 K37 ["getText"]
      413 CALL                             R31 3 1
      414 SETTABLEKS                       R31 R30 K51 ["text"]
      416 SETTABLEKS                       R16 R30 K80 ["isLoading"]
      418 LOADB                            R31 1
      419 LENGTH                           R32 R4
      420 JUMPIFEQKN                       R32 K82 [0] ; [+2]
      422 NOT                              R31 R14
      423 SETTABLEKS                       R31 R30 K75 ["isDisabled"]
      425 SETTABLEKS                       R18 R30 K43 ["onActivated"]
      427 GETUPVAL                         R34 16
      428 GETTABLEKS                       R33 R34 K57 ["Enums"]
      430 GETTABLEKS                       R32 R33 K78 ["ButtonVariant"]
      432 GETTABLEKS                       R31 R32 K83 ["Emphasis"]
      434 SETTABLEKS                       R31 R30 K76 ["variant"]
      436 GETUPVAL                         R34 16
      437 GETTABLEKS                       R33 R34 K57 ["Enums"]
      439 GETTABLEKS                       R32 R33 K58 ["InputSize"]
      441 GETTABLEKS                       R31 R32 K59 ["Small"]
      443 SETTABLEKS                       R31 R30 K46 ["size"]
      445 CALL                             R28 2 1
      446 SETTABLEKS                       R28 R27 K73 ["ShareButton"]
      448 CALL                             R24 3 1
      449 SETTABLEKS                       R24 R23 K16 ["Footer"]
      451 CALL                             R20 3 -1
      452 RETURN                           R20 -1

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
      127 DUPTABLE                         R23 K37 [{"Collaborators", "Experiences"}]
      128 LOADN                            R24 1
      129 SETTABLEKS                       R24 R23 K35 ["Collaborators"]
      131 LOADN                            R24 2
      132 SETTABLEKS                       R24 R23 K36 ["Experiences"]
      134 GETTABLEKS                       R24 R23 K35 ["Collaborators"]
      136 DUPCLOSURE                       R25 K38 [PROTO_0]
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R5
      144 DUPCLOSURE                       R26 K39 [PROTO_10]
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R6
      165 RETURN                           R26 1
