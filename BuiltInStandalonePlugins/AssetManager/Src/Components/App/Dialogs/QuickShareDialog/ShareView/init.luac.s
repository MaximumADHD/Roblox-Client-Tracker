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
       79 SUBRK                            R15 K7 [10] R16
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
      109 DUPTABLE                         R20 K16 [{["tag"] = "col gap-medium size-full padding-medium"}]
      110 DUPTABLE                         R21 K22 [{"WarningBanner", "Header", "TabButtons", "TabContent", "Footer"}]
      111 GETTABLEKS                       R24 R0 K2 ["ErrorAssetIds"]
      113 LENGTH                           R23 R24
      114 LOADN                            R24 0
      115 JUMPIFNOTLT                      R24 R23 ; [+17]
      117 GETUPVAL                         R22 3
      118 GETTABLEKS                       R22 R22 K12 ["createElement"]
      120 GETUPVAL                         R23 12
      121 DUPTABLE                         R24 K25 [{"LayoutOrder", "OnViewErrors"}]
      122 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      124 CALL                             R25 1 1
      125 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      127 GETTABLEKS                       R25 R0 K24 ["OnViewErrors"]
      129 SETTABLEKS                       R25 R24 K24 ["OnViewErrors"]
      131 CALL                             R22 2 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R22
      134 SETTABLEKS                       R22 R21 K17 ["WarningBanner"]
      136 GETUPVAL                         R22 3
      137 GETTABLEKS                       R22 R22 K12 ["createElement"]
      139 GETUPVAL                         R23 11
      140 GETTABLEKS                       R23 R23 K13 ["View"]
      142 DUPTABLE                         R24 K28 [{["LayoutOrder"], ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      143 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      145 CALL                             R25 1 1
      146 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      148 DUPTABLE                         R25 K31 [{"Title", "Description"}]
      149 GETUPVAL                         R26 3
      150 GETTABLEKS                       R26 R26 K12 ["createElement"]
      152 GETUPVAL                         R27 11
      153 GETTABLEKS                       R27 R27 K32 ["Text"]
      155 DUPTABLE                         R28 K37 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left text-align-y-top", ["testId"] = "shareview-title"}]
      156 LOADK                            R31 K38 ["QuickShare"]
      157 LENGTH                           R33 R4
      158 JUMPIFNOTEQKN                    R33 K33 [1] ; [+3]
      160 LOADK                            R32 K39 ["SharingOne"]
      161 JUMP                             ; [+1]
      162 LOADK                            R32 K40 ["SharingMultiple"]
      163 DUPTABLE                         R33 K42 [{"count"}]
      164 LENGTH                           R35 R4
      165 FASTCALL1                        TOSTRING R35 ; [+2]
      166 GETIMPORT                        R34 K44 [tostring]
      168 CALL                             R34 1 1
      169 SETTABLEKS                       R34 R33 K41 ["count"]
      171 NAMECALL                         R29 R2 K45 ["getText"]
      173 CALL                             R29 4 1
      174 SETTABLEKS                       R29 R28 K32 ["Text"]
      176 CALL                             R26 2 1
      177 SETTABLEKS                       R26 R25 K29 ["Title"]
      179 GETUPVAL                         R26 3
      180 GETTABLEKS                       R26 R26 K12 ["createElement"]
      182 GETUPVAL                         R27 11
      183 GETTABLEKS                       R27 R27 K32 ["Text"]
      185 DUPTABLE                         R28 K48 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left"}]
      186 LOADK                            R31 K38 ["QuickShare"]
      187 LOADK                            R32 K49 ["DialogDescription"]
      188 NAMECALL                         R29 R2 K45 ["getText"]
      190 CALL                             R29 3 1
      191 SETTABLEKS                       R29 R28 K32 ["Text"]
      193 CALL                             R26 2 1
      194 SETTABLEKS                       R26 R25 K30 ["Description"]
      196 CALL                             R22 3 1
      197 SETTABLEKS                       R22 R21 K18 ["Header"]
      199 GETUPVAL                         R22 3
      200 GETTABLEKS                       R22 R22 K12 ["createElement"]
      202 GETUPVAL                         R23 11
      203 GETTABLEKS                       R23 R23 K13 ["View"]
      205 DUPTABLE                         R24 K51 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      206 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      208 CALL                             R25 1 1
      209 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      211 GETUPVAL                         R25 3
      212 GETTABLEKS                       R25 R25 K12 ["createElement"]
      214 GETUPVAL                         R26 11
      215 GETTABLEKS                       R26 R26 K52 ["Tabs"]
      217 DUPTABLE                         R27 K60 [{["activeTabId"], ["onActivated"], ["tabs"], ["defaultActiveTabId"], ["size"], ["fillBehavior"], ["testId"] = "quickshare-tabs"}]
      218 SETTABLEKS                       R8 R27 K53 ["activeTabId"]
      220 SETTABLEKS                       R9 R27 K54 ["onActivated"]
      222 NEWTABLE                         R28 0 2
      224 DUPTABLE                         R29 K63 [{"id", "text"}]
      225 GETUPVAL                         R30 6
      226 GETTABLEKS                       R30 R30 K64 ["Collaborators"]
      228 SETTABLEKS                       R30 R29 K61 ["id"]
      230 LOADK                            R32 K38 ["QuickShare"]
      231 LOADK                            R33 K65 ["CollaboratorsTab"]
      232 NAMECALL                         R30 R2 K45 ["getText"]
      234 CALL                             R30 3 1
      235 SETTABLEKS                       R30 R29 K62 ["text"]
      237 DUPTABLE                         R30 K63 [{"id", "text"}]
      238 GETUPVAL                         R31 6
      239 GETTABLEKS                       R31 R31 K4 ["Experiences"]
      241 SETTABLEKS                       R31 R30 K61 ["id"]
      243 LOADK                            R33 K38 ["QuickShare"]
      244 LOADK                            R34 K66 ["ExperiencesTab"]
      245 NAMECALL                         R31 R2 K45 ["getText"]
      247 CALL                             R31 3 1
      248 SETTABLEKS                       R31 R30 K62 ["text"]
      250 SETLIST                          R28 R29 2 [1]
      252 SETTABLEKS                       R28 R27 K55 ["tabs"]
      254 SETTABLEKS                       R7 R27 K56 ["defaultActiveTabId"]
      256 GETUPVAL                         R28 11
      257 GETTABLEKS                       R28 R28 K67 ["Enums"]
      259 GETTABLEKS                       R28 R28 K68 ["InputSize"]
      261 GETTABLEKS                       R28 R28 K69 ["Small"]
      263 SETTABLEKS                       R28 R27 K57 ["size"]
      265 GETUPVAL                         R28 11
      266 GETTABLEKS                       R28 R28 K67 ["Enums"]
      268 GETTABLEKS                       R28 R28 K70 ["FillBehavior"]
      270 GETTABLEKS                       R28 R28 K71 ["Fill"]
      272 SETTABLEKS                       R28 R27 K58 ["fillBehavior"]
      274 CALL                             R25 2 -1
      275 CALL                             R22 -1 1
      276 SETTABLEKS                       R22 R21 K19 ["TabButtons"]
      278 GETUPVAL                         R22 3
      279 GETTABLEKS                       R22 R22 K12 ["createElement"]
      281 GETUPVAL                         R23 11
      282 GETTABLEKS                       R23 R23 K13 ["View"]
      284 DUPTABLE                         R24 K73 [{["LayoutOrder"], ["tag"] = "fill size-full-0"}]
      285 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      287 CALL                             R25 1 1
      288 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      290 NEWTABLE                         R25 0 1
      292 GETUPVAL                         R27 6
      293 GETTABLEKS                       R27 R27 K64 ["Collaborators"]
      295 JUMPIFNOTEQ                      R8 R27 ; [+14]
      297 GETUPVAL                         R26 3
      298 GETTABLEKS                       R26 R26 K12 ["createElement"]
      300 GETUPVAL                         R27 13
      301 DUPTABLE                         R28 K77 [{"MaxCount", "CanAddEditors", "HasNonEditTypes"}]
      302 SETTABLEKS                       R13 R28 K74 ["MaxCount"]
      304 SETTABLEKS                       R5 R28 K75 ["CanAddEditors"]
      306 SETTABLEKS                       R6 R28 K76 ["HasNonEditTypes"]
      308 CALL                             R26 2 1
      309 JUMP                             ; [+8]
      310 GETUPVAL                         R26 3
      311 GETTABLEKS                       R26 R26 K12 ["createElement"]
      313 GETUPVAL                         R27 14
      314 DUPTABLE                         R28 K78 [{"MaxCount"}]
      315 SETTABLEKS                       R13 R28 K74 ["MaxCount"]
      317 CALL                             R26 2 1
      318 SETLIST                          R25 R26 1 [1]
      320 CALL                             R22 3 1
      321 SETTABLEKS                       R22 R21 K20 ["TabContent"]
      323 GETUPVAL                         R22 3
      324 GETTABLEKS                       R22 R22 K12 ["createElement"]
      326 GETUPVAL                         R23 11
      327 GETTABLEKS                       R23 R23 K13 ["View"]
      329 DUPTABLE                         R24 K80 [{["LayoutOrder"], ["tag"] = "row align-x-right gap-small size-full-0 auto-y"}]
      330 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      332 CALL                             R25 1 1
      333 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      335 DUPTABLE                         R25 K83 [{"CancelButton", "ShareButton"}]
      336 GETUPVAL                         R26 3
      337 GETTABLEKS                       R26 R26 K12 ["createElement"]
      339 GETUPVAL                         R27 11
      340 GETTABLEKS                       R27 R27 K84 ["Button"]
      342 DUPTABLE                         R28 K88 [{["LayoutOrder"] = 1, ["text"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-cancel-button"}]
      343 LOADK                            R31 K38 ["QuickShare"]
      344 LOADK                            R32 K81 ["CancelButton"]
      345 NAMECALL                         R29 R2 K45 ["getText"]
      347 CALL                             R29 3 1
      348 SETTABLEKS                       R29 R28 K62 ["text"]
      350 SETTABLEKS                       R14 R28 K85 ["isDisabled"]
      352 NEWCLOSURE                       R29 P3
      353 CAPTURE                          VAL R0
      354 SETTABLEKS                       R29 R28 K54 ["onActivated"]
      356 GETUPVAL                         R29 11
      357 GETTABLEKS                       R29 R29 K67 ["Enums"]
      359 GETTABLEKS                       R29 R29 K89 ["ButtonVariant"]
      361 GETTABLEKS                       R29 R29 K90 ["Standard"]
      363 SETTABLEKS                       R29 R28 K86 ["variant"]
      365 GETUPVAL                         R29 11
      366 GETTABLEKS                       R29 R29 K67 ["Enums"]
      368 GETTABLEKS                       R29 R29 K68 ["InputSize"]
      370 GETTABLEKS                       R29 R29 K69 ["Small"]
      372 SETTABLEKS                       R29 R28 K57 ["size"]
      374 CALL                             R26 2 1
      375 SETTABLEKS                       R26 R25 K81 ["CancelButton"]
      377 GETUPVAL                         R26 3
      378 GETTABLEKS                       R26 R26 K12 ["createElement"]
      380 GETUPVAL                         R27 11
      381 GETTABLEKS                       R27 R27 K84 ["Button"]
      383 DUPTABLE                         R28 K93 [{["LayoutOrder"] = 2, ["text"], ["isLoading"], ["isDisabled"], ["onActivated"], ["variant"], ["size"], ["testId"] = "shareview-share-button"}]
      384 LOADK                            R31 K38 ["QuickShare"]
      385 LOADK                            R32 K82 ["ShareButton"]
      386 NAMECALL                         R29 R2 K45 ["getText"]
      388 CALL                             R29 3 1
      389 SETTABLEKS                       R29 R28 K62 ["text"]
      391 SETTABLEKS                       R14 R28 K91 ["isLoading"]
      393 LOADB                            R29 1
      394 LENGTH                           R30 R4
      395 JUMPIFEQKN                       R30 K94 [0] ; [+2]
      397 NOT                              R29 R12
      398 SETTABLEKS                       R29 R28 K85 ["isDisabled"]
      400 SETTABLEKS                       R16 R28 K54 ["onActivated"]
      402 GETUPVAL                         R29 11
      403 GETTABLEKS                       R29 R29 K67 ["Enums"]
      405 GETTABLEKS                       R29 R29 K89 ["ButtonVariant"]
      407 GETTABLEKS                       R29 R29 K95 ["Emphasis"]
      409 SETTABLEKS                       R29 R28 K86 ["variant"]
      411 GETUPVAL                         R29 11
      412 GETTABLEKS                       R29 R29 K67 ["Enums"]
      414 GETTABLEKS                       R29 R29 K68 ["InputSize"]
      416 GETTABLEKS                       R29 R29 K69 ["Small"]
      418 SETTABLEKS                       R29 R28 K57 ["size"]
      420 CALL                             R26 2 1
      421 SETTABLEKS                       R26 R25 K82 ["ShareButton"]
      423 CALL                             R22 3 1
      424 SETTABLEKS                       R22 R21 K21 ["Footer"]
      426 CALL                             R18 3 -1
      427 RETURN                           R18 -1

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
      106 DUPTABLE                         R17 K32 [{["Collaborators"] = 1, ["Experiences"] = 2}]
      107 GETTABLEKS                       R18 R17 K28 ["Collaborators"]
      109 DUPCLOSURE                       R19 K33 [PROTO_0]
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 DUPCLOSURE                       R20 K34 [PROTO_10]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R14
      130 RETURN                           R20 1
