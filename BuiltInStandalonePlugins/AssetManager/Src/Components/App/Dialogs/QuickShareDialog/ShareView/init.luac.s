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
       12 DUPTABLE                         R5 K5 [{"LayoutOrder", "tag"}]
       13 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       17 LOADK                            R6 K6 ["row size-full-0 auto-y padding-small align-y-center gap-small bg-surface-200 radius-medium stroke-system-warning data-testid=permissions-warning-banner"]
       18 SETTABLEKS                       R6 R5 K4 ["tag"]
       20 DUPTABLE                         R6 K10 [{"Icon", "Text", "ViewButton"}]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K1 ["createElement"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K7 ["Icon"]
       27 DUPTABLE                         R9 K15 [{"LayoutOrder", "name", "size", "style", "variant"}]
       28 LOADN                            R10 1
       29 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R10 R10 K16 ["Enums"]
       34 GETTABLEKS                       R10 R10 K17 ["IconName"]
       36 GETTABLEKS                       R10 R10 K18 ["TriangleExclamation"]
       38 SETTABLEKS                       R10 R9 K11 ["name"]
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K16 ["Enums"]
       43 GETTABLEKS                       R10 R10 K19 ["IconSize"]
       45 GETTABLEKS                       R10 R10 K20 ["Large"]
       47 SETTABLEKS                       R10 R9 K12 ["size"]
       49 GETTABLEKS                       R10 R2 K21 ["Color"]
       51 GETTABLEKS                       R10 R10 K22 ["System"]
       53 GETTABLEKS                       R10 R10 K23 ["Warning"]
       55 SETTABLEKS                       R10 R9 K13 ["style"]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K24 ["IconVariant"]
       62 GETTABLEKS                       R10 R10 K25 ["Filled"]
       64 SETTABLEKS                       R10 R9 K14 ["variant"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K7 ["Icon"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K1 ["createElement"]
       72 GETUPVAL                         R8 3
       73 GETTABLEKS                       R8 R8 K8 ["Text"]
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
       92 GETUPVAL                         R7 2
       93 GETTABLEKS                       R7 R7 K1 ["createElement"]
       95 GETUPVAL                         R8 3
       96 GETTABLEKS                       R8 R8 K31 ["Button"]
       98 DUPTABLE                         R9 K34 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
       99 LOADN                            R10 3
      100 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
      102 LOADK                            R12 K27 ["QuickShare"]
      103 LOADK                            R13 K35 ["PermissionBannerButton"]
      104 NAMECALL                         R10 R1 K29 ["getText"]
      106 CALL                             R10 3 1
      107 SETTABLEKS                       R10 R9 K32 ["text"]
      109 GETUPVAL                         R10 3
      110 GETTABLEKS                       R10 R10 K16 ["Enums"]
      112 GETTABLEKS                       R10 R10 K36 ["ButtonVariant"]
      114 GETTABLEKS                       R10 R10 K37 ["Utility"]
      116 SETTABLEKS                       R10 R9 K14 ["variant"]
      118 GETUPVAL                         R10 3
      119 GETTABLEKS                       R10 R10 K16 ["Enums"]
      121 GETTABLEKS                       R10 R10 K38 ["InputSize"]
      123 GETTABLEKS                       R10 R10 K39 ["Small"]
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
       25 GETTABLEKS                       R4 R4 K3 ["OnDone"]
       27 JUMPIFNOT                        R3 ; [+2]
       28 LOADN                            R5 0
       29 JUMP                             ; [+2]
       30 GETUPVAL                         R6 3
       31 LENGTH                           R5 R6
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K4 ["keys"]
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
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["append"]
        8 GETIMPORT                        R2 K3 [table.clone]
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K4 ["Selection"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K4 ["Selection"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
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
       13 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R0 K2 ["ErrorAssetIds"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K1 ["useMemo"]
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
       44 GETUPVAL                         R7 6
       45 GETTABLEKS                       R7 R7 K4 ["Experiences"]
       47 JUMP                             ; [+1]
       48 GETUPVAL                         R7 7
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K5 ["useState"]
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
       79 SUBRK                            R15 R7 K16 ["col size-full padding-medium gap-medium"]
       80 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       82 GETIMPORT                        R13 K10 [math.max]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K5 ["useState"]
       88 LOADB                            R15 0
       89 CALL                             R14 1 2
       90 NEWCLOSURE                       R16 P2
       91 CAPTURE                          VAL R15
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          VAL R1
       99 GETUPVAL                         R17 10
      100 GETTABLEKS                       R17 R17 K11 ["new"]
      102 CALL                             R17 0 1
      103 GETUPVAL                         R18 3
      104 GETTABLEKS                       R18 R18 K12 ["createElement"]
      106 GETUPVAL                         R19 11
      107 GETTABLEKS                       R19 R19 K13 ["View"]
      109 DUPTABLE                         R20 K15 [{"tag"}]
      110 LOADK                            R21 K16 ["col size-full padding-medium gap-medium"]
      111 SETTABLEKS                       R21 R20 K14 ["tag"]
      113 DUPTABLE                         R21 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      114 GETTABLEKS                       R24 R0 K2 ["ErrorAssetIds"]
      116 LENGTH                           R23 R24
      117 LOADN                            R24 0
      118 JUMPIFNOTLT                      R24 R23 ; [+17]
      120 GETUPVAL                         R22 3
      121 GETTABLEKS                       R22 R22 K12 ["createElement"]
      123 GETUPVAL                         R23 12
      124 DUPTABLE                         R24 K25 [{"LayoutOrder", "OnViewErrors"}]
      125 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      127 CALL                             R25 1 1
      128 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      130 GETTABLEKS                       R25 R0 K24 ["OnViewErrors"]
      132 SETTABLEKS                       R25 R24 K24 ["OnViewErrors"]
      134 CALL                             R22 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R22
      137 SETTABLEKS                       R22 R21 K17 ["WarningBanner"]
      139 GETUPVAL                         R22 3
      140 GETTABLEKS                       R22 R22 K12 ["createElement"]
      142 GETUPVAL                         R23 11
      143 GETTABLEKS                       R23 R23 K13 ["View"]
      145 DUPTABLE                         R24 K27 [{"LayoutOrder", "tag"}]
      146 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      148 CALL                             R25 1 1
      149 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      151 LOADK                            R25 K28 ["col size-full-0 auto-y gap-xsmall"]
      152 SETTABLEKS                       R25 R24 K14 ["tag"]
      154 DUPTABLE                         R25 K31 [{"Title", "Description"}]
      155 GETUPVAL                         R26 3
      156 GETTABLEKS                       R26 R26 K12 ["createElement"]
      158 GETUPVAL                         R27 11
      159 GETTABLEKS                       R27 R27 K32 ["Text"]
      161 DUPTABLE                         R28 K33 [{"LayoutOrder", "Text", "tag"}]
      162 LOADN                            R29 1
      163 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      165 LOADK                            R31 K34 ["QuickShare"]
      166 LENGTH                           R33 R4
      167 JUMPIFNOTEQKN                    R33 K35 [1] ; [+3]
      169 LOADK                            R32 K36 ["SharingOne"]
      170 JUMP                             ; [+1]
      171 LOADK                            R32 K37 ["SharingMultiple"]
      172 DUPTABLE                         R33 K39 [{"count"}]
      173 LENGTH                           R35 R4
      174 FASTCALL1                        TOSTRING R35 ; [+2]
      175 GETIMPORT                        R34 K41 [tostring]
      177 CALL                             R34 1 1
      178 SETTABLEKS                       R34 R33 K38 ["count"]
      180 NAMECALL                         R29 R2 K42 ["getText"]
      182 CALL                             R29 4 1
      183 SETTABLEKS                       R29 R28 K32 ["Text"]
      185 LOADK                            R29 K43 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=shareview-title"]
      186 SETTABLEKS                       R29 R28 K14 ["tag"]
      188 CALL                             R26 2 1
      189 SETTABLEKS                       R26 R25 K29 ["Title"]
      191 GETUPVAL                         R26 3
      192 GETTABLEKS                       R26 R26 K12 ["createElement"]
      194 GETUPVAL                         R27 11
      195 GETTABLEKS                       R27 R27 K32 ["Text"]
      197 DUPTABLE                         R28 K33 [{"LayoutOrder", "Text", "tag"}]
      198 LOADN                            R29 2
      199 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      201 LOADK                            R31 K34 ["QuickShare"]
      202 LOADK                            R32 K44 ["DialogDescription"]
      203 NAMECALL                         R29 R2 K42 ["getText"]
      205 CALL                             R29 3 1
      206 SETTABLEKS                       R29 R28 K32 ["Text"]
      208 LOADK                            R29 K45 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      209 SETTABLEKS                       R29 R28 K14 ["tag"]
      211 CALL                             R26 2 1
      212 SETTABLEKS                       R26 R25 K30 ["Description"]
      214 CALL                             R22 3 1
      215 SETTABLEKS                       R22 R21 K18 ["Header"]
      217 GETUPVAL                         R22 3
      218 GETTABLEKS                       R22 R22 K12 ["createElement"]
      220 GETUPVAL                         R23 11
      221 GETTABLEKS                       R23 R23 K13 ["View"]
      223 DUPTABLE                         R24 K27 [{"LayoutOrder", "tag"}]
      224 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      226 CALL                             R25 1 1
      227 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      229 LOADK                            R25 K46 ["size-full-0 auto-y"]
      230 SETTABLEKS                       R25 R24 K14 ["tag"]
      232 GETUPVAL                         R25 3
      233 GETTABLEKS                       R25 R25 K12 ["createElement"]
      235 GETUPVAL                         R26 11
      236 GETTABLEKS                       R26 R26 K47 ["Tabs"]
      238 DUPTABLE                         R27 K55 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      239 SETTABLEKS                       R8 R27 K48 ["activeTabId"]
      241 SETTABLEKS                       R9 R27 K49 ["onActivated"]
      243 NEWTABLE                         R28 0 2
      245 DUPTABLE                         R29 K58 [{"id", "text"}]
      246 GETUPVAL                         R30 6
      247 GETTABLEKS                       R30 R30 K59 ["Collaborators"]
      249 SETTABLEKS                       R30 R29 K56 ["id"]
      251 LOADK                            R32 K34 ["QuickShare"]
      252 LOADK                            R33 K60 ["CollaboratorsTab"]
      253 NAMECALL                         R30 R2 K42 ["getText"]
      255 CALL                             R30 3 1
      256 SETTABLEKS                       R30 R29 K57 ["text"]
      258 DUPTABLE                         R30 K58 [{"id", "text"}]
      259 GETUPVAL                         R31 6
      260 GETTABLEKS                       R31 R31 K4 ["Experiences"]
      262 SETTABLEKS                       R31 R30 K56 ["id"]
      264 LOADK                            R33 K34 ["QuickShare"]
      265 LOADK                            R34 K61 ["ExperiencesTab"]
      266 NAMECALL                         R31 R2 K42 ["getText"]
      268 CALL                             R31 3 1
      269 SETTABLEKS                       R31 R30 K57 ["text"]
      271 SETLIST                          R28 R29 2 [1]
      273 SETTABLEKS                       R28 R27 K50 ["tabs"]
      275 SETTABLEKS                       R7 R27 K51 ["defaultActiveTabId"]
      277 GETUPVAL                         R28 11
      278 GETTABLEKS                       R28 R28 K62 ["Enums"]
      280 GETTABLEKS                       R28 R28 K63 ["InputSize"]
      282 GETTABLEKS                       R28 R28 K64 ["Small"]
      284 SETTABLEKS                       R28 R27 K52 ["size"]
      286 GETUPVAL                         R28 11
      287 GETTABLEKS                       R28 R28 K62 ["Enums"]
      289 GETTABLEKS                       R28 R28 K65 ["FillBehavior"]
      291 GETTABLEKS                       R28 R28 K66 ["Fill"]
      293 SETTABLEKS                       R28 R27 K53 ["fillBehavior"]
      295 LOADK                            R28 K67 ["quickshare-tabs"]
      296 SETTABLEKS                       R28 R27 K54 ["testId"]
      298 CALL                             R25 2 -1
      299 CALL                             R22 -1 1
      300 SETTABLEKS                       R22 R21 K19 ["TabButtons"]
      302 GETUPVAL                         R22 3
      303 GETTABLEKS                       R22 R22 K12 ["createElement"]
      305 GETUPVAL                         R23 11
      306 GETTABLEKS                       R23 R23 K13 ["View"]
      308 DUPTABLE                         R24 K27 [{"LayoutOrder", "tag"}]
      309 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      311 CALL                             R25 1 1
      312 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      314 LOADK                            R25 K68 ["size-full-0 fill"]
      315 SETTABLEKS                       R25 R24 K14 ["tag"]
      317 NEWTABLE                         R25 0 1
      319 GETUPVAL                         R27 6
      320 GETTABLEKS                       R27 R27 K59 ["Collaborators"]
      322 JUMPIFNOTEQ                      R8 R27 ; [+14]
      324 GETUPVAL                         R26 3
      325 GETTABLEKS                       R26 R26 K12 ["createElement"]
      327 GETUPVAL                         R27 13
      328 DUPTABLE                         R28 K72 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      329 SETTABLEKS                       R13 R28 K69 ["MaxCount"]
      331 SETTABLEKS                       R5 R28 K70 ["CanAddEditors"]
      333 SETTABLEKS                       R6 R28 K71 ["HasNonEditTypes"]
      335 CALL                             R26 2 1
      336 JUMP                             ; [+8]
      337 GETUPVAL                         R26 3
      338 GETTABLEKS                       R26 R26 K12 ["createElement"]
      340 GETUPVAL                         R27 14
      341 DUPTABLE                         R28 K73 [{"MaxCount"}]
      342 SETTABLEKS                       R13 R28 K69 ["MaxCount"]
      344 CALL                             R26 2 1
      345 SETLIST                          R25 R26 1 [1]
      347 CALL                             R22 3 1
      348 SETTABLEKS                       R22 R21 K20 ["TabContent"]
      350 GETUPVAL                         R22 3
      351 GETTABLEKS                       R22 R22 K12 ["createElement"]
      353 GETUPVAL                         R23 11
      354 GETTABLEKS                       R23 R23 K13 ["View"]
      356 DUPTABLE                         R24 K27 [{"LayoutOrder", "tag"}]
      357 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      359 CALL                             R25 1 1
      360 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      362 LOADK                            R25 K74 ["row size-full-0 auto-y align-x-right gap-small"]
      363 SETTABLEKS                       R25 R24 K14 ["tag"]
      365 DUPTABLE                         R25 K77 [{"CancelButton", "ShareButton"}]
      366 GETUPVAL                         R26 3
      367 GETTABLEKS                       R26 R26 K12 ["createElement"]
      369 GETUPVAL                         R27 11
      370 GETTABLEKS                       R27 R27 K78 ["Button"]
      372 DUPTABLE                         R28 K81 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size", "testId"}]
      373 LOADN                            R29 1
      374 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      376 LOADK                            R31 K34 ["QuickShare"]
      377 LOADK                            R32 K75 ["CancelButton"]
      378 NAMECALL                         R29 R2 K42 ["getText"]
      380 CALL                             R29 3 1
      381 SETTABLEKS                       R29 R28 K57 ["text"]
      383 SETTABLEKS                       R14 R28 K79 ["isDisabled"]
      385 NEWCLOSURE                       R29 P3
      386 CAPTURE                          VAL R0
      387 SETTABLEKS                       R29 R28 K49 ["onActivated"]
      389 GETUPVAL                         R29 11
      390 GETTABLEKS                       R29 R29 K62 ["Enums"]
      392 GETTABLEKS                       R29 R29 K82 ["ButtonVariant"]
      394 GETTABLEKS                       R29 R29 K83 ["Standard"]
      396 SETTABLEKS                       R29 R28 K80 ["variant"]
      398 GETUPVAL                         R29 11
      399 GETTABLEKS                       R29 R29 K62 ["Enums"]
      401 GETTABLEKS                       R29 R29 K63 ["InputSize"]
      403 GETTABLEKS                       R29 R29 K64 ["Small"]
      405 SETTABLEKS                       R29 R28 K52 ["size"]
      407 LOADK                            R29 K84 ["shareview-cancel-button"]
      408 SETTABLEKS                       R29 R28 K54 ["testId"]
      410 CALL                             R26 2 1
      411 SETTABLEKS                       R26 R25 K75 ["CancelButton"]
      413 GETUPVAL                         R26 3
      414 GETTABLEKS                       R26 R26 K12 ["createElement"]
      416 GETUPVAL                         R27 11
      417 GETTABLEKS                       R27 R27 K78 ["Button"]
      419 DUPTABLE                         R28 K86 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size", "testId"}]
      420 LOADN                            R29 2
      421 SETTABLEKS                       R29 R28 K23 ["LayoutOrder"]
      423 LOADK                            R31 K34 ["QuickShare"]
      424 LOADK                            R32 K76 ["ShareButton"]
      425 NAMECALL                         R29 R2 K42 ["getText"]
      427 CALL                             R29 3 1
      428 SETTABLEKS                       R29 R28 K57 ["text"]
      430 SETTABLEKS                       R14 R28 K85 ["isLoading"]
      432 LOADB                            R29 1
      433 LENGTH                           R30 R4
      434 JUMPIFEQKN                       R30 K87 [0] ; [+2]
      436 NOT                              R29 R12
      437 SETTABLEKS                       R29 R28 K79 ["isDisabled"]
      439 SETTABLEKS                       R16 R28 K49 ["onActivated"]
      441 GETUPVAL                         R29 11
      442 GETTABLEKS                       R29 R29 K62 ["Enums"]
      444 GETTABLEKS                       R29 R29 K82 ["ButtonVariant"]
      446 GETTABLEKS                       R29 R29 K88 ["Emphasis"]
      448 SETTABLEKS                       R29 R28 K80 ["variant"]
      450 GETUPVAL                         R29 11
      451 GETTABLEKS                       R29 R29 K62 ["Enums"]
      453 GETTABLEKS                       R29 R29 K63 ["InputSize"]
      455 GETTABLEKS                       R29 R29 K64 ["Small"]
      457 SETTABLEKS                       R29 R28 K52 ["size"]
      459 LOADK                            R29 K89 ["shareview-share-button"]
      460 SETTABLEKS                       R29 R28 K54 ["testId"]
      462 CALL                             R26 2 1
      463 SETTABLEKS                       R26 R25 K76 ["ShareButton"]
      465 CALL                             R22 3 1
      466 SETTABLEKS                       R22 R21 K21 ["Footer"]
      468 CALL                             R18 3 -1
      469 RETURN                           R18 -1

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
       51 GETTABLEKS                       R10 R10 K18 ["Types"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R9 K19 ["AssetType"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R0 K17 ["Src"]
       60 GETTABLEKS                       R12 R12 K20 ["Networking"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Src"]
       67 GETTABLEKS                       R13 R13 K21 ["Controllers"]
       69 GETTABLEKS                       R13 R13 K22 ["ItemsController"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETIMPORT                        R14 K1 [script]
       76 GETTABLEKS                       R14 R14 K23 ["CollaboratorsTab"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETIMPORT                        R15 K1 [script]
       83 GETTABLEKS                       R15 R15 K24 ["ExperiencesTab"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R0 K17 ["Src"]
       90 GETTABLEKS                       R16 R16 K13 ["Util"]
       92 GETTABLEKS                       R16 R16 K25 ["Dialogs"]
       94 GETTABLEKS                       R16 R16 K26 ["useQuickShareState"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K5 [require]
       99 GETTABLEKS                       R17 R0 K17 ["Src"]
      101 GETTABLEKS                       R17 R17 K13 ["Util"]
      103 GETTABLEKS                       R17 R17 K27 ["grantPermissionsAsync"]
      105 CALL                             R16 1 1
      106 DUPTABLE                         R17 K30 [{"Collaborators", "Experiences"}]
      107 LOADN                            R18 1
      108 SETTABLEKS                       R18 R17 K28 ["Collaborators"]
      110 LOADN                            R18 2
      111 SETTABLEKS                       R18 R17 K29 ["Experiences"]
      113 GETTABLEKS                       R18 R17 K28 ["Collaborators"]
      115 DUPCLOSURE                       R19 K31 [PROTO_0]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R3
      120 DUPCLOSURE                       R20 K32 [PROTO_10]
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R14
      136 RETURN                           R20 1
