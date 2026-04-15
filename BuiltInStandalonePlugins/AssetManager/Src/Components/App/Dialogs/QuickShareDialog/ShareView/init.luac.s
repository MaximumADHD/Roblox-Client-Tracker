PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["createElement"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K2 ["View"]
       12 DUPTABLE                         R5 K5 [{"LayoutOrder", "tag"}]
       13 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       17 LOADK                            R6 K6 ["row size-full-0 auto-y padding-small align-y-center gap-small bg-surface-200 radius-medium stroke-system-warning data-testid=permissions-warning-banner"]
       18 SETTABLEKS                       R6 R5 K4 ["tag"]
       20 DUPTABLE                         R6 K10 [{"Icon", "Text", "ViewButton"}]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K1 ["createElement"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R8 R9 K7 ["Icon"]
       27 DUPTABLE                         R9 K15 [{"LayoutOrder", "name", "size", "style", "variant"}]
       28 LOADN                            R10 1
       29 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       31 GETUPVAL                         R13 3
       32 GETTABLEKS                       R12 R13 K16 ["Enums"]
       34 GETTABLEKS                       R11 R12 K17 ["IconName"]
       36 GETTABLEKS                       R10 R11 K18 ["TriangleExclamation"]
       38 SETTABLEKS                       R10 R9 K11 ["name"]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K16 ["Enums"]
       43 GETTABLEKS                       R11 R12 K19 ["IconSize"]
       45 GETTABLEKS                       R10 R11 K20 ["Large"]
       47 SETTABLEKS                       R10 R9 K12 ["size"]
       49 GETTABLEKS                       R12 R2 K21 ["Color"]
       51 GETTABLEKS                       R11 R12 K22 ["System"]
       53 GETTABLEKS                       R10 R11 K23 ["Warning"]
       55 SETTABLEKS                       R10 R9 K13 ["style"]
       57 GETUPVAL                         R13 3
       58 GETTABLEKS                       R12 R13 K16 ["Enums"]
       60 GETTABLEKS                       R11 R12 K24 ["IconVariant"]
       62 GETTABLEKS                       R10 R11 K25 ["Filled"]
       64 SETTABLEKS                       R10 R9 K14 ["variant"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K7 ["Icon"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R7 R8 K1 ["createElement"]
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R8 R9 K8 ["Text"]
       75 DUPTABLE                         R9 K26 [{"LayoutOrder", "Text", "tag"}]
       76 LOADN                            R10 2
       77 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       79 LOADK                            R12 K27 ["QuickShare"]
       80 LOADK                            R13 K28 ["PermissionBannerTitle"]
       81 NAMECALL                         R10 R1 K29 ["getText"]
       83 CALL                             R10 3 1
       84 SETTABLEKS                       R10 R9 K8 ["Text"]
       86 LOADK                            R10 K30 ["fill auto-y text-title-medium text-align-x-left"]
       87 SETTABLEKS                       R10 R9 K4 ["tag"]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K8 ["Text"]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R7 R8 K1 ["createElement"]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R8 R9 K31 ["Button"]
       98 DUPTABLE                         R9 K34 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
       99 LOADN                            R10 3
      100 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
      102 LOADK                            R12 K27 ["QuickShare"]
      103 LOADK                            R13 K35 ["PermissionBannerButton"]
      104 NAMECALL                         R10 R1 K29 ["getText"]
      106 CALL                             R10 3 1
      107 SETTABLEKS                       R10 R9 K32 ["text"]
      109 GETUPVAL                         R13 3
      110 GETTABLEKS                       R12 R13 K16 ["Enums"]
      112 GETTABLEKS                       R11 R12 K36 ["ButtonVariant"]
      114 GETTABLEKS                       R10 R11 K37 ["Utility"]
      116 SETTABLEKS                       R10 R9 K14 ["variant"]
      118 GETUPVAL                         R13 3
      119 GETTABLEKS                       R12 R13 K16 ["Enums"]
      121 GETTABLEKS                       R11 R12 K38 ["InputSize"]
      123 GETTABLEKS                       R10 R11 K39 ["Small"]
      125 SETTABLEKS                       R10 R9 K12 ["size"]
      127 GETTABLEKS                       R10 R0 K40 ["OnViewErrors"]
      129 SETTABLEKS                       R10 R9 K33 ["onActivated"]
      131 CALL                             R7 2 1
      132 SETTABLEKS                       R7 R6 K9 ["ViewButton"]
      134 CALL                             R3 3 -1
      135 RETURN                           R3 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["values"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["omit"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["AssetIdPaths"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["ErrorAssetIds"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K4 ["getAssetTypes"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K5 ["Model"]
       22 GETTABLE                         R2 R1 R3
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K6 ["count"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K1 ["omit"]
       29 MOVE                             R6 R1
       30 NEWTABLE                         R7 0 1
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R8 R9 K5 ["Model"]
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
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["forEach"]
        8 MOVE                             R4 R1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CALL                             R3 2 0
       13 NOT                              R3 R0
       14 JUMPIFNOT                        R3 ; [+9]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K1 ["count"]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 JUMPIFEQKN                       R4 K2 [0] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K3 ["OnDone"]
       27 JUMPIFNOT                        R3 ; [+2]
       28 LOADN                            R5 0
       29 JUMP                             ; [+2]
       30 GETUPVAL                         R6 3
       31 LENGTH                           R5 R6
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K4 ["keys"]
       35 MOVE                             R7 R2
       36 CALL                             R6 1 -1
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["append"]
        8 GETIMPORT                        R2 K3 [table.clone]
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R3 R4 K4 ["Selection"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 5
       15 GETTABLEKS                       R3 R4 K4 ["Selection"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 6
       19 GETUPVAL                         R3 7
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R1
       22 MOVE                             R6 R0
       23 CALL                             R2 4 0
       24 GETUPVAL                         R2 0
       25 LOADB                            R3 1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

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
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U5
       33 NEWTABLE                         R7 0 2
       35 MOVE                             R8 R4
       36 GETTABLEKS                       R9 R0 K2 ["ErrorAssetIds"]
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 2
       41 GETTABLEKS                       R8 R0 K3 ["TestExperiences"]
       43 JUMPIFNOT                        R8 ; [+4]
       44 GETUPVAL                         R8 6
       45 GETTABLEKS                       R7 R8 K4 ["Experiences"]
       47 JUMP                             ; [+1]
       48 GETUPVAL                         R7 7
       49 GETUPVAL                         R9 3
       50 GETTABLEKS                       R8 R9 K5 ["useState"]
       52 MOVE                             R9 R7
       53 CALL                             R8 1 2
       54 GETUPVAL                         R10 8
       55 CALL                             R10 0 2
       56 LOADB                            R12 1
       57 GETTABLEKS                       R14 R10 K6 ["Selection"]
       59 LENGTH                           R13 R14
       60 LOADN                            R14 0
       61 JUMPIFLT                         R14 R13 ; [+9]
       63 GETTABLEKS                       R14 R11 K6 ["Selection"]
       65 LENGTH                           R13 R14
       66 LOADN                            R14 0
       67 JUMPIFLT                         R14 R13 ; [+2]
       69 LOADB                            R12 0 +1
       70 LOADB                            R12 1
       71 LOADN                            R14 0
       72 GETTABLEKS                       R18 R10 K6 ["Selection"]
       74 LENGTH                           R17 R18
       75 GETTABLEKS                       R19 R11 K6 ["Selection"]
       77 LENGTH                           R18 R19
       78 ADD                              R16 R17 R18
       79 SUBRK                            R15 R7 K16 ["tag"]
       80 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       82 GETIMPORT                        R13 K10 [math.max]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R15 3
       86 GETTABLEKS                       R14 R15 K5 ["useState"]
       88 LOADB                            R15 0
       89 CALL                             R14 1 2
       90 GETUPVAL                         R17 3
       91 GETTABLEKS                       R16 R17 K11 ["useCallback"]
       93 NEWCLOSURE                       R17 P2
       94 CAPTURE                          VAL R15
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          VAL R1
      102 GETUPVAL                         R19 10
      103 CALL                             R19 0 1
      104 JUMPIFNOT                        R19 ; [+8]
      105 NEWTABLE                         R18 0 2
      107 MOVE                             R19 R4
      108 GETTABLEKS                       R20 R0 K12 ["OnDone"]
      110 SETLIST                          R18 R19 2 [1]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R18
      114 CALL                             R16 2 1
      115 GETUPVAL                         R18 11
      116 GETTABLEKS                       R17 R18 K13 ["new"]
      118 CALL                             R17 0 1
      119 GETUPVAL                         R19 3
      120 GETTABLEKS                       R18 R19 K14 ["createElement"]
      122 GETUPVAL                         R20 12
      123 GETTABLEKS                       R19 R20 K15 ["View"]
      125 DUPTABLE                         R20 K17 [{"tag"}]
      126 LOADK                            R21 K18 ["col size-full padding-medium gap-medium"]
      127 SETTABLEKS                       R21 R20 K16 ["tag"]
      129 DUPTABLE                         R21 K24 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      130 GETTABLEKS                       R24 R0 K2 ["ErrorAssetIds"]
      132 LENGTH                           R23 R24
      133 LOADN                            R24 0
      134 JUMPIFNOTLT                      R24 R23 ; [+17]
      136 GETUPVAL                         R23 3
      137 GETTABLEKS                       R22 R23 K14 ["createElement"]
      139 GETUPVAL                         R23 13
      140 DUPTABLE                         R24 K27 [{"LayoutOrder", "OnViewErrors"}]
      141 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      143 CALL                             R25 1 1
      144 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      146 GETTABLEKS                       R25 R0 K26 ["OnViewErrors"]
      148 SETTABLEKS                       R25 R24 K26 ["OnViewErrors"]
      150 CALL                             R22 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R22
      153 SETTABLEKS                       R22 R21 K19 ["WarningBanner"]
      155 GETUPVAL                         R23 3
      156 GETTABLEKS                       R22 R23 K14 ["createElement"]
      158 GETUPVAL                         R24 12
      159 GETTABLEKS                       R23 R24 K15 ["View"]
      161 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      162 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      164 CALL                             R25 1 1
      165 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      167 LOADK                            R25 K30 ["col size-full-0 auto-y gap-xsmall"]
      168 SETTABLEKS                       R25 R24 K16 ["tag"]
      170 DUPTABLE                         R25 K33 [{"Title", "Description"}]
      171 GETUPVAL                         R27 3
      172 GETTABLEKS                       R26 R27 K14 ["createElement"]
      174 GETUPVAL                         R28 12
      175 GETTABLEKS                       R27 R28 K34 ["Text"]
      177 DUPTABLE                         R28 K35 [{"LayoutOrder", "Text", "tag"}]
      178 LOADN                            R29 1
      179 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      181 LOADK                            R31 K36 ["QuickShare"]
      182 LENGTH                           R33 R4
      183 JUMPIFNOTEQKN                    R33 K37 [1] ; [+3]
      185 LOADK                            R32 K38 ["SharingOne"]
      186 JUMP                             ; [+1]
      187 LOADK                            R32 K39 ["SharingMultiple"]
      188 DUPTABLE                         R33 K41 [{"count"}]
      189 LENGTH                           R35 R4
      190 FASTCALL1                        TOSTRING R35 ; [+2]
      191 GETIMPORT                        R34 K43 [tostring]
      193 CALL                             R34 1 1
      194 SETTABLEKS                       R34 R33 K40 ["count"]
      196 NAMECALL                         R29 R2 K44 ["getText"]
      198 CALL                             R29 4 1
      199 SETTABLEKS                       R29 R28 K34 ["Text"]
      201 LOADK                            R29 K45 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=shareview-title"]
      202 SETTABLEKS                       R29 R28 K16 ["tag"]
      204 CALL                             R26 2 1
      205 SETTABLEKS                       R26 R25 K31 ["Title"]
      207 GETUPVAL                         R27 3
      208 GETTABLEKS                       R26 R27 K14 ["createElement"]
      210 GETUPVAL                         R28 12
      211 GETTABLEKS                       R27 R28 K34 ["Text"]
      213 DUPTABLE                         R28 K35 [{"LayoutOrder", "Text", "tag"}]
      214 LOADN                            R29 2
      215 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      217 LOADK                            R31 K36 ["QuickShare"]
      218 LOADK                            R32 K46 ["DialogDescription"]
      219 NAMECALL                         R29 R2 K44 ["getText"]
      221 CALL                             R29 3 1
      222 SETTABLEKS                       R29 R28 K34 ["Text"]
      224 LOADK                            R29 K47 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      225 SETTABLEKS                       R29 R28 K16 ["tag"]
      227 CALL                             R26 2 1
      228 SETTABLEKS                       R26 R25 K32 ["Description"]
      230 CALL                             R22 3 1
      231 SETTABLEKS                       R22 R21 K20 ["Header"]
      233 GETUPVAL                         R23 3
      234 GETTABLEKS                       R22 R23 K14 ["createElement"]
      236 GETUPVAL                         R24 12
      237 GETTABLEKS                       R23 R24 K15 ["View"]
      239 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      240 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      242 CALL                             R25 1 1
      243 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      245 LOADK                            R25 K48 ["size-full-0 auto-y"]
      246 SETTABLEKS                       R25 R24 K16 ["tag"]
      248 GETUPVAL                         R26 3
      249 GETTABLEKS                       R25 R26 K14 ["createElement"]
      251 GETUPVAL                         R27 12
      252 GETTABLEKS                       R26 R27 K49 ["Tabs"]
      254 DUPTABLE                         R27 K57 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      255 SETTABLEKS                       R8 R27 K50 ["activeTabId"]
      257 SETTABLEKS                       R9 R27 K51 ["onActivated"]
      259 NEWTABLE                         R28 0 2
      261 DUPTABLE                         R29 K60 [{"id", "text"}]
      262 GETUPVAL                         R31 6
      263 GETTABLEKS                       R30 R31 K61 ["Collaborators"]
      265 SETTABLEKS                       R30 R29 K58 ["id"]
      267 LOADK                            R32 K36 ["QuickShare"]
      268 LOADK                            R33 K62 ["CollaboratorsTab"]
      269 NAMECALL                         R30 R2 K44 ["getText"]
      271 CALL                             R30 3 1
      272 SETTABLEKS                       R30 R29 K59 ["text"]
      274 DUPTABLE                         R30 K60 [{"id", "text"}]
      275 GETUPVAL                         R32 6
      276 GETTABLEKS                       R31 R32 K4 ["Experiences"]
      278 SETTABLEKS                       R31 R30 K58 ["id"]
      280 LOADK                            R33 K36 ["QuickShare"]
      281 LOADK                            R34 K63 ["ExperiencesTab"]
      282 NAMECALL                         R31 R2 K44 ["getText"]
      284 CALL                             R31 3 1
      285 SETTABLEKS                       R31 R30 K59 ["text"]
      287 SETLIST                          R28 R29 2 [1]
      289 SETTABLEKS                       R28 R27 K52 ["tabs"]
      291 SETTABLEKS                       R7 R27 K53 ["defaultActiveTabId"]
      293 GETUPVAL                         R31 12
      294 GETTABLEKS                       R30 R31 K64 ["Enums"]
      296 GETTABLEKS                       R29 R30 K65 ["InputSize"]
      298 GETTABLEKS                       R28 R29 K66 ["Small"]
      300 SETTABLEKS                       R28 R27 K54 ["size"]
      302 GETUPVAL                         R31 12
      303 GETTABLEKS                       R30 R31 K64 ["Enums"]
      305 GETTABLEKS                       R29 R30 K67 ["FillBehavior"]
      307 GETTABLEKS                       R28 R29 K68 ["Fill"]
      309 SETTABLEKS                       R28 R27 K55 ["fillBehavior"]
      311 LOADK                            R28 K69 ["quickshare-tabs"]
      312 SETTABLEKS                       R28 R27 K56 ["testId"]
      314 CALL                             R25 2 -1
      315 CALL                             R22 -1 1
      316 SETTABLEKS                       R22 R21 K21 ["TabButtons"]
      318 GETUPVAL                         R23 3
      319 GETTABLEKS                       R22 R23 K14 ["createElement"]
      321 GETUPVAL                         R24 12
      322 GETTABLEKS                       R23 R24 K15 ["View"]
      324 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      325 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      327 CALL                             R25 1 1
      328 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      330 LOADK                            R25 K70 ["size-full-0 fill"]
      331 SETTABLEKS                       R25 R24 K16 ["tag"]
      333 NEWTABLE                         R25 0 1
      335 GETUPVAL                         R28 6
      336 GETTABLEKS                       R27 R28 K61 ["Collaborators"]
      338 JUMPIFNOTEQ                      R8 R27 ; [+14]
      340 GETUPVAL                         R27 3
      341 GETTABLEKS                       R26 R27 K14 ["createElement"]
      343 GETUPVAL                         R27 14
      344 DUPTABLE                         R28 K74 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      345 SETTABLEKS                       R13 R28 K71 ["MaxCount"]
      347 SETTABLEKS                       R5 R28 K72 ["CanAddEditors"]
      349 SETTABLEKS                       R6 R28 K73 ["HasNonEditTypes"]
      351 CALL                             R26 2 1
      352 JUMP                             ; [+8]
      353 GETUPVAL                         R27 3
      354 GETTABLEKS                       R26 R27 K14 ["createElement"]
      356 GETUPVAL                         R27 15
      357 DUPTABLE                         R28 K75 [{"MaxCount"}]
      358 SETTABLEKS                       R13 R28 K71 ["MaxCount"]
      360 CALL                             R26 2 1
      361 SETLIST                          R25 R26 1 [1]
      363 CALL                             R22 3 1
      364 SETTABLEKS                       R22 R21 K22 ["TabContent"]
      366 GETUPVAL                         R23 3
      367 GETTABLEKS                       R22 R23 K14 ["createElement"]
      369 GETUPVAL                         R24 12
      370 GETTABLEKS                       R23 R24 K15 ["View"]
      372 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      373 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      375 CALL                             R25 1 1
      376 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      378 LOADK                            R25 K76 ["row size-full-0 auto-y align-x-right gap-small"]
      379 SETTABLEKS                       R25 R24 K16 ["tag"]
      381 DUPTABLE                         R25 K79 [{"CancelButton", "ShareButton"}]
      382 GETUPVAL                         R27 3
      383 GETTABLEKS                       R26 R27 K14 ["createElement"]
      385 GETUPVAL                         R28 12
      386 GETTABLEKS                       R27 R28 K80 ["Button"]
      388 DUPTABLE                         R28 K83 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size", "testId"}]
      389 LOADN                            R29 1
      390 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      392 LOADK                            R31 K36 ["QuickShare"]
      393 LOADK                            R32 K77 ["CancelButton"]
      394 NAMECALL                         R29 R2 K44 ["getText"]
      396 CALL                             R29 3 1
      397 SETTABLEKS                       R29 R28 K59 ["text"]
      399 SETTABLEKS                       R14 R28 K81 ["isDisabled"]
      401 NEWCLOSURE                       R29 P3
      402 CAPTURE                          VAL R0
      403 SETTABLEKS                       R29 R28 K51 ["onActivated"]
      405 GETUPVAL                         R32 12
      406 GETTABLEKS                       R31 R32 K64 ["Enums"]
      408 GETTABLEKS                       R30 R31 K84 ["ButtonVariant"]
      410 GETTABLEKS                       R29 R30 K85 ["Standard"]
      412 SETTABLEKS                       R29 R28 K82 ["variant"]
      414 GETUPVAL                         R32 12
      415 GETTABLEKS                       R31 R32 K64 ["Enums"]
      417 GETTABLEKS                       R30 R31 K65 ["InputSize"]
      419 GETTABLEKS                       R29 R30 K66 ["Small"]
      421 SETTABLEKS                       R29 R28 K54 ["size"]
      423 LOADK                            R29 K86 ["shareview-cancel-button"]
      424 SETTABLEKS                       R29 R28 K56 ["testId"]
      426 CALL                             R26 2 1
      427 SETTABLEKS                       R26 R25 K77 ["CancelButton"]
      429 GETUPVAL                         R27 3
      430 GETTABLEKS                       R26 R27 K14 ["createElement"]
      432 GETUPVAL                         R28 12
      433 GETTABLEKS                       R27 R28 K80 ["Button"]
      435 DUPTABLE                         R28 K88 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size", "testId"}]
      436 LOADN                            R29 2
      437 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      439 LOADK                            R31 K36 ["QuickShare"]
      440 LOADK                            R32 K78 ["ShareButton"]
      441 NAMECALL                         R29 R2 K44 ["getText"]
      443 CALL                             R29 3 1
      444 SETTABLEKS                       R29 R28 K59 ["text"]
      446 SETTABLEKS                       R14 R28 K87 ["isLoading"]
      448 LOADB                            R29 1
      449 LENGTH                           R30 R4
      450 JUMPIFEQKN                       R30 K89 [0] ; [+2]
      452 NOT                              R29 R12
      453 SETTABLEKS                       R29 R28 K81 ["isDisabled"]
      455 SETTABLEKS                       R16 R28 K51 ["onActivated"]
      457 GETUPVAL                         R32 12
      458 GETTABLEKS                       R31 R32 K64 ["Enums"]
      460 GETTABLEKS                       R30 R31 K84 ["ButtonVariant"]
      462 GETTABLEKS                       R29 R30 K90 ["Emphasis"]
      464 SETTABLEKS                       R29 R28 K82 ["variant"]
      466 GETUPVAL                         R32 12
      467 GETTABLEKS                       R31 R32 K64 ["Enums"]
      469 GETTABLEKS                       R30 R31 K65 ["InputSize"]
      471 GETTABLEKS                       R29 R30 K66 ["Small"]
      473 SETTABLEKS                       R29 R28 K54 ["size"]
      475 LOADK                            R29 K91 ["shareview-share-button"]
      476 SETTABLEKS                       R29 R28 K56 ["testId"]
      478 CALL                             R26 2 1
      479 SETTABLEKS                       R26 R25 K78 ["ShareButton"]
      481 CALL                             R22 3 1
      482 SETTABLEKS                       R22 R21 K23 ["Footer"]
      484 CALL                             R18 3 -1
      485 RETURN                           R18 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R5 K11 ["useTokens"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R7 K12 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R7 R5 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["LayoutOrderIterator"]
       43 GETTABLEKS                       R7 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K16 ["Localization"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R11 R0 K17 ["Src"]
       51 GETTABLEKS                       R10 R11 K18 ["Types"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R9 K19 ["AssetType"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R13 R0 K17 ["Src"]
       60 GETTABLEKS                       R12 R13 K20 ["Networking"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R15 R0 K17 ["Src"]
       67 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       69 GETTABLEKS                       R13 R14 K22 ["ItemsController"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETIMPORT                        R15 K1 [script]
       76 GETTABLEKS                       R14 R15 K23 ["CollaboratorsTab"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETIMPORT                        R16 K1 [script]
       83 GETTABLEKS                       R15 R16 K24 ["ExperiencesTab"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R19 R0 K17 ["Src"]
       90 GETTABLEKS                       R18 R19 K13 ["Util"]
       92 GETTABLEKS                       R17 R18 K25 ["Dialogs"]
       94 GETTABLEKS                       R16 R17 K26 ["useQuickShareState"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K5 [require]
       99 GETTABLEKS                       R19 R0 K17 ["Src"]
      101 GETTABLEKS                       R18 R19 K13 ["Util"]
      103 GETTABLEKS                       R17 R18 K27 ["grantPermissionsAsync"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R20 R0 K17 ["Src"]
      110 GETTABLEKS                       R19 R20 K28 ["Flags"]
      112 GETTABLEKS                       R18 R19 K29 ["getFFlagAmrMiscCallbackFixes"]
      114 CALL                             R17 1 1
      115 DUPTABLE                         R18 K32 [{"Collaborators", "Experiences"}]
      116 LOADN                            R19 1
      117 SETTABLEKS                       R19 R18 K30 ["Collaborators"]
      119 LOADN                            R19 2
      120 SETTABLEKS                       R19 R18 K31 ["Experiences"]
      122 GETTABLEKS                       R19 R18 K30 ["Collaborators"]
      124 DUPCLOSURE                       R20 K33 [PROTO_0]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 DUPCLOSURE                       R21 K34 [PROTO_10]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R14
      146 RETURN                           R21 1
