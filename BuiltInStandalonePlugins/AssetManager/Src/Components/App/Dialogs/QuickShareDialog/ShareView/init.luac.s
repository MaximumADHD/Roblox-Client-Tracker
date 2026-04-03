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
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R3 R4 K6 ["count"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K1 ["omit"]
       41 MOVE                             R5 R0
       42 NEWTABLE                         R6 0 1
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R7 R8 K5 ["Model"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 -1
       50 CALL                             R3 -1 1
       51 LOADN                            R4 0
       52 JUMPIFLT                         R4 R3 ; [+2]
       54 LOADB                            R2 0 +1
       55 LOADB                            R2 1
       56 RETURN                           R1 2

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
       43 GETTABLEKS                       R8 R0 K3 ["TestExperiences"]
       45 JUMPIFNOT                        R8 ; [+4]
       46 GETUPVAL                         R8 7
       47 GETTABLEKS                       R7 R8 K4 ["Experiences"]
       49 JUMP                             ; [+1]
       50 GETUPVAL                         R7 8
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K5 ["useState"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 2
       56 GETUPVAL                         R10 9
       57 CALL                             R10 0 2
       58 LOADB                            R12 1
       59 GETTABLEKS                       R14 R10 K6 ["Selection"]
       61 LENGTH                           R13 R14
       62 LOADN                            R14 0
       63 JUMPIFLT                         R14 R13 ; [+9]
       65 GETTABLEKS                       R14 R11 K6 ["Selection"]
       67 LENGTH                           R13 R14
       68 LOADN                            R14 0
       69 JUMPIFLT                         R14 R13 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 LOADN                            R14 0
       74 GETTABLEKS                       R18 R10 K6 ["Selection"]
       76 LENGTH                           R17 R18
       77 GETTABLEKS                       R19 R11 K6 ["Selection"]
       79 LENGTH                           R18 R19
       80 ADD                              R16 R17 R18
       81 SUBRK                            R15 R7 K16 ["tag"]
       82 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       84 GETIMPORT                        R13 K10 [math.max]
       86 CALL                             R13 2 1
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R14 R15 K5 ["useState"]
       90 LOADB                            R15 0
       91 CALL                             R14 1 2
       92 GETUPVAL                         R17 3
       93 GETTABLEKS                       R16 R17 K11 ["useCallback"]
       95 NEWCLOSURE                       R17 P2
       96 CAPTURE                          VAL R15
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          VAL R1
      104 GETUPVAL                         R19 11
      105 CALL                             R19 0 1
      106 JUMPIFNOT                        R19 ; [+8]
      107 NEWTABLE                         R18 0 2
      109 MOVE                             R19 R4
      110 GETTABLEKS                       R20 R0 K12 ["OnDone"]
      112 SETLIST                          R18 R19 2 [1]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R18
      116 CALL                             R16 2 1
      117 GETUPVAL                         R18 12
      118 GETTABLEKS                       R17 R18 K13 ["new"]
      120 CALL                             R17 0 1
      121 GETUPVAL                         R19 3
      122 GETTABLEKS                       R18 R19 K14 ["createElement"]
      124 GETUPVAL                         R20 13
      125 GETTABLEKS                       R19 R20 K15 ["View"]
      127 DUPTABLE                         R20 K17 [{"tag"}]
      128 LOADK                            R21 K18 ["col size-full padding-medium gap-medium"]
      129 SETTABLEKS                       R21 R20 K16 ["tag"]
      131 DUPTABLE                         R21 K24 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      132 GETTABLEKS                       R24 R0 K2 ["ErrorAssetIds"]
      134 LENGTH                           R23 R24
      135 LOADN                            R24 0
      136 JUMPIFNOTLT                      R24 R23 ; [+17]
      138 GETUPVAL                         R23 3
      139 GETTABLEKS                       R22 R23 K14 ["createElement"]
      141 GETUPVAL                         R23 14
      142 DUPTABLE                         R24 K27 [{"LayoutOrder", "OnViewErrors"}]
      143 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      145 CALL                             R25 1 1
      146 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      148 GETTABLEKS                       R25 R0 K26 ["OnViewErrors"]
      150 SETTABLEKS                       R25 R24 K26 ["OnViewErrors"]
      152 CALL                             R22 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R22
      155 SETTABLEKS                       R22 R21 K19 ["WarningBanner"]
      157 GETUPVAL                         R23 3
      158 GETTABLEKS                       R22 R23 K14 ["createElement"]
      160 GETUPVAL                         R24 13
      161 GETTABLEKS                       R23 R24 K15 ["View"]
      163 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      164 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      166 CALL                             R25 1 1
      167 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      169 LOADK                            R25 K30 ["col size-full-0 auto-y gap-xsmall"]
      170 SETTABLEKS                       R25 R24 K16 ["tag"]
      172 DUPTABLE                         R25 K33 [{"Title", "Description"}]
      173 GETUPVAL                         R27 3
      174 GETTABLEKS                       R26 R27 K14 ["createElement"]
      176 GETUPVAL                         R28 13
      177 GETTABLEKS                       R27 R28 K34 ["Text"]
      179 DUPTABLE                         R28 K35 [{"LayoutOrder", "Text", "tag"}]
      180 LOADN                            R29 1
      181 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      183 LOADK                            R31 K36 ["QuickShare"]
      184 LENGTH                           R33 R4
      185 JUMPIFNOTEQKN                    R33 K37 [1] ; [+3]
      187 LOADK                            R32 K38 ["SharingOne"]
      188 JUMP                             ; [+1]
      189 LOADK                            R32 K39 ["SharingMultiple"]
      190 DUPTABLE                         R33 K41 [{"count"}]
      191 LENGTH                           R35 R4
      192 FASTCALL1                        TOSTRING R35 ; [+2]
      193 GETIMPORT                        R34 K43 [tostring]
      195 CALL                             R34 1 1
      196 SETTABLEKS                       R34 R33 K40 ["count"]
      198 NAMECALL                         R29 R2 K44 ["getText"]
      200 CALL                             R29 4 1
      201 SETTABLEKS                       R29 R28 K34 ["Text"]
      203 LOADK                            R29 K45 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=shareview-title"]
      204 SETTABLEKS                       R29 R28 K16 ["tag"]
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K31 ["Title"]
      209 GETUPVAL                         R27 3
      210 GETTABLEKS                       R26 R27 K14 ["createElement"]
      212 GETUPVAL                         R28 13
      213 GETTABLEKS                       R27 R28 K34 ["Text"]
      215 DUPTABLE                         R28 K35 [{"LayoutOrder", "Text", "tag"}]
      216 LOADN                            R29 2
      217 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      219 LOADK                            R31 K36 ["QuickShare"]
      220 LOADK                            R32 K46 ["DialogDescription"]
      221 NAMECALL                         R29 R2 K44 ["getText"]
      223 CALL                             R29 3 1
      224 SETTABLEKS                       R29 R28 K34 ["Text"]
      226 LOADK                            R29 K47 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      227 SETTABLEKS                       R29 R28 K16 ["tag"]
      229 CALL                             R26 2 1
      230 SETTABLEKS                       R26 R25 K32 ["Description"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K20 ["Header"]
      235 GETUPVAL                         R23 3
      236 GETTABLEKS                       R22 R23 K14 ["createElement"]
      238 GETUPVAL                         R24 13
      239 GETTABLEKS                       R23 R24 K15 ["View"]
      241 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      242 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      244 CALL                             R25 1 1
      245 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      247 LOADK                            R25 K48 ["size-full-0 auto-y"]
      248 SETTABLEKS                       R25 R24 K16 ["tag"]
      250 GETUPVAL                         R26 3
      251 GETTABLEKS                       R25 R26 K14 ["createElement"]
      253 GETUPVAL                         R27 13
      254 GETTABLEKS                       R26 R27 K49 ["Tabs"]
      256 DUPTABLE                         R27 K57 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      257 SETTABLEKS                       R8 R27 K50 ["activeTabId"]
      259 SETTABLEKS                       R9 R27 K51 ["onActivated"]
      261 NEWTABLE                         R28 0 2
      263 DUPTABLE                         R29 K60 [{"id", "text"}]
      264 GETUPVAL                         R31 7
      265 GETTABLEKS                       R30 R31 K61 ["Collaborators"]
      267 SETTABLEKS                       R30 R29 K58 ["id"]
      269 LOADK                            R32 K36 ["QuickShare"]
      270 LOADK                            R33 K62 ["CollaboratorsTab"]
      271 NAMECALL                         R30 R2 K44 ["getText"]
      273 CALL                             R30 3 1
      274 SETTABLEKS                       R30 R29 K59 ["text"]
      276 DUPTABLE                         R30 K60 [{"id", "text"}]
      277 GETUPVAL                         R32 7
      278 GETTABLEKS                       R31 R32 K4 ["Experiences"]
      280 SETTABLEKS                       R31 R30 K58 ["id"]
      282 LOADK                            R33 K36 ["QuickShare"]
      283 LOADK                            R34 K63 ["ExperiencesTab"]
      284 NAMECALL                         R31 R2 K44 ["getText"]
      286 CALL                             R31 3 1
      287 SETTABLEKS                       R31 R30 K59 ["text"]
      289 SETLIST                          R28 R29 2 [1]
      291 SETTABLEKS                       R28 R27 K52 ["tabs"]
      293 SETTABLEKS                       R7 R27 K53 ["defaultActiveTabId"]
      295 GETUPVAL                         R31 13
      296 GETTABLEKS                       R30 R31 K64 ["Enums"]
      298 GETTABLEKS                       R29 R30 K65 ["InputSize"]
      300 GETTABLEKS                       R28 R29 K66 ["Small"]
      302 SETTABLEKS                       R28 R27 K54 ["size"]
      304 GETUPVAL                         R31 13
      305 GETTABLEKS                       R30 R31 K64 ["Enums"]
      307 GETTABLEKS                       R29 R30 K67 ["FillBehavior"]
      309 GETTABLEKS                       R28 R29 K68 ["Fill"]
      311 SETTABLEKS                       R28 R27 K55 ["fillBehavior"]
      313 LOADK                            R28 K69 ["quickshare-tabs"]
      314 SETTABLEKS                       R28 R27 K56 ["testId"]
      316 CALL                             R25 2 -1
      317 CALL                             R22 -1 1
      318 SETTABLEKS                       R22 R21 K21 ["TabButtons"]
      320 GETUPVAL                         R23 3
      321 GETTABLEKS                       R22 R23 K14 ["createElement"]
      323 GETUPVAL                         R24 13
      324 GETTABLEKS                       R23 R24 K15 ["View"]
      326 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      327 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      329 CALL                             R25 1 1
      330 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      332 LOADK                            R25 K70 ["size-full-0 fill"]
      333 SETTABLEKS                       R25 R24 K16 ["tag"]
      335 NEWTABLE                         R25 0 1
      337 GETUPVAL                         R28 7
      338 GETTABLEKS                       R27 R28 K61 ["Collaborators"]
      340 JUMPIFNOTEQ                      R8 R27 ; [+14]
      342 GETUPVAL                         R27 3
      343 GETTABLEKS                       R26 R27 K14 ["createElement"]
      345 GETUPVAL                         R27 15
      346 DUPTABLE                         R28 K74 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      347 SETTABLEKS                       R13 R28 K71 ["MaxCount"]
      349 SETTABLEKS                       R5 R28 K72 ["CanAddEditors"]
      351 SETTABLEKS                       R6 R28 K73 ["HasNonEditTypes"]
      353 CALL                             R26 2 1
      354 JUMP                             ; [+8]
      355 GETUPVAL                         R27 3
      356 GETTABLEKS                       R26 R27 K14 ["createElement"]
      358 GETUPVAL                         R27 16
      359 DUPTABLE                         R28 K75 [{"MaxCount"}]
      360 SETTABLEKS                       R13 R28 K71 ["MaxCount"]
      362 CALL                             R26 2 1
      363 SETLIST                          R25 R26 1 [1]
      365 CALL                             R22 3 1
      366 SETTABLEKS                       R22 R21 K22 ["TabContent"]
      368 GETUPVAL                         R23 3
      369 GETTABLEKS                       R22 R23 K14 ["createElement"]
      371 GETUPVAL                         R24 13
      372 GETTABLEKS                       R23 R24 K15 ["View"]
      374 DUPTABLE                         R24 K29 [{"LayoutOrder", "tag"}]
      375 NAMECALL                         R25 R17 K28 ["getNextOrder"]
      377 CALL                             R25 1 1
      378 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      380 LOADK                            R25 K76 ["row size-full-0 auto-y align-x-right gap-small"]
      381 SETTABLEKS                       R25 R24 K16 ["tag"]
      383 DUPTABLE                         R25 K79 [{"CancelButton", "ShareButton"}]
      384 GETUPVAL                         R27 3
      385 GETTABLEKS                       R26 R27 K14 ["createElement"]
      387 GETUPVAL                         R28 13
      388 GETTABLEKS                       R27 R28 K80 ["Button"]
      390 DUPTABLE                         R28 K83 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size", "testId"}]
      391 LOADN                            R29 1
      392 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      394 LOADK                            R31 K36 ["QuickShare"]
      395 LOADK                            R32 K77 ["CancelButton"]
      396 NAMECALL                         R29 R2 K44 ["getText"]
      398 CALL                             R29 3 1
      399 SETTABLEKS                       R29 R28 K59 ["text"]
      401 SETTABLEKS                       R14 R28 K81 ["isDisabled"]
      403 NEWCLOSURE                       R29 P3
      404 CAPTURE                          VAL R0
      405 SETTABLEKS                       R29 R28 K51 ["onActivated"]
      407 GETUPVAL                         R32 13
      408 GETTABLEKS                       R31 R32 K64 ["Enums"]
      410 GETTABLEKS                       R30 R31 K84 ["ButtonVariant"]
      412 GETTABLEKS                       R29 R30 K85 ["Standard"]
      414 SETTABLEKS                       R29 R28 K82 ["variant"]
      416 GETUPVAL                         R32 13
      417 GETTABLEKS                       R31 R32 K64 ["Enums"]
      419 GETTABLEKS                       R30 R31 K65 ["InputSize"]
      421 GETTABLEKS                       R29 R30 K66 ["Small"]
      423 SETTABLEKS                       R29 R28 K54 ["size"]
      425 LOADK                            R29 K86 ["shareview-cancel-button"]
      426 SETTABLEKS                       R29 R28 K56 ["testId"]
      428 CALL                             R26 2 1
      429 SETTABLEKS                       R26 R25 K77 ["CancelButton"]
      431 GETUPVAL                         R27 3
      432 GETTABLEKS                       R26 R27 K14 ["createElement"]
      434 GETUPVAL                         R28 13
      435 GETTABLEKS                       R27 R28 K80 ["Button"]
      437 DUPTABLE                         R28 K88 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size", "testId"}]
      438 LOADN                            R29 2
      439 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      441 LOADK                            R31 K36 ["QuickShare"]
      442 LOADK                            R32 K78 ["ShareButton"]
      443 NAMECALL                         R29 R2 K44 ["getText"]
      445 CALL                             R29 3 1
      446 SETTABLEKS                       R29 R28 K59 ["text"]
      448 SETTABLEKS                       R14 R28 K87 ["isLoading"]
      450 LOADB                            R29 1
      451 LENGTH                           R30 R4
      452 JUMPIFEQKN                       R30 K89 [0] ; [+2]
      454 NOT                              R29 R12
      455 SETTABLEKS                       R29 R28 K81 ["isDisabled"]
      457 SETTABLEKS                       R16 R28 K51 ["onActivated"]
      459 GETUPVAL                         R32 13
      460 GETTABLEKS                       R31 R32 K64 ["Enums"]
      462 GETTABLEKS                       R30 R31 K84 ["ButtonVariant"]
      464 GETTABLEKS                       R29 R30 K90 ["Emphasis"]
      466 SETTABLEKS                       R29 R28 K82 ["variant"]
      468 GETUPVAL                         R32 13
      469 GETTABLEKS                       R31 R32 K64 ["Enums"]
      471 GETTABLEKS                       R30 R31 K65 ["InputSize"]
      473 GETTABLEKS                       R29 R30 K66 ["Small"]
      475 SETTABLEKS                       R29 R28 K54 ["size"]
      477 LOADK                            R29 K91 ["shareview-share-button"]
      478 SETTABLEKS                       R29 R28 K56 ["testId"]
      480 CALL                             R26 2 1
      481 SETTABLEKS                       R26 R25 K78 ["ShareButton"]
      483 CALL                             R22 3 1
      484 SETTABLEKS                       R22 R21 K23 ["Footer"]
      486 CALL                             R18 3 -1
      487 RETURN                           R18 -1

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
      112 GETTABLEKS                       R18 R19 K29 ["getFFlagAmrUpdatedItemsCache"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K5 [require]
      117 GETTABLEKS                       R21 R0 K17 ["Src"]
      119 GETTABLEKS                       R20 R21 K28 ["Flags"]
      121 GETTABLEKS                       R19 R20 K30 ["getFFlagAmrMiscCallbackFixes"]
      123 CALL                             R18 1 1
      124 DUPTABLE                         R19 K33 [{"Collaborators", "Experiences"}]
      125 LOADN                            R20 1
      126 SETTABLEKS                       R20 R19 K31 ["Collaborators"]
      128 LOADN                            R20 2
      129 SETTABLEKS                       R20 R19 K32 ["Experiences"]
      131 GETTABLEKS                       R20 R19 K31 ["Collaborators"]
      133 DUPCLOSURE                       R21 K34 [PROTO_0]
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R3
      138 DUPCLOSURE                       R22 K35 [PROTO_10]
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R14
      156 RETURN                           R22 1
