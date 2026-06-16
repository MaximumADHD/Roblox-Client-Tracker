PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
        2 NAMECALL                         R1 R0 K4 ["GetColor"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R6 R1 K6 ["r"]
        7 GETTABLEKS                       R7 R1 K7 ["g"]
        9 ADD                              R5 R6 R7
       10 GETTABLEKS                       R6 R1 K8 ["b"]
       12 ADD                              R4 R5 R6
       13 DIVK                             R3 R4 K5 [3]
       14 LOADK                            R4 K9 [0.5]
       15 JUMPIFLT                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{"getTheme", "isDarkerTheme", "themeChanged"}]
        4 DUPCLOSURE                       R2 K5 [PROTO_0]
        5 SETTABLEKS                       R2 R1 K1 ["getTheme"]
        7 DUPCLOSURE                       R2 K6 [PROTO_1]
        8 SETTABLEKS                       R2 R1 K2 ["isDarkerTheme"]
       10 GETIMPORT                        R2 K8 [settings]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R2 R2 K9 ["Studio"]
       15 GETTABLEKS                       R2 R2 K10 ["ThemeChanged"]
       17 SETTABLEKS                       R2 R1 K3 ["themeChanged"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"getTheme", "themeChanged"}]
        4 DUPCLOSURE                       R2 K4 [PROTO_3]
        5 SETTABLEKS                       R2 R1 K1 ["getTheme"]
        7 GETIMPORT                        R2 K6 [settings]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R2 R2 K7 ["Studio"]
       12 GETTABLEKS                       R2 R2 K8 ["ThemeChanged"]
       14 SETTABLEKS                       R2 R1 K2 ["themeChanged"]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R3 R1 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Toolbox"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 MOVE                             R1 R0
        6 JUMPIFNOT                        R1 ; [+4]
        7 LOADK                            R3 K2 ["tabRefresh"]
        8 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 NAMECALL                         R2 R1 K3 ["Fire"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+29]
        2 NEWCLOSURE                       R0 P0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K0 ["Toolbox"]
        6 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 MOVE                             R2 R1
       10 JUMPIFNOT                        R2 ; [+4]
       11 LOADK                            R4 K2 ["tabRefresh"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 NAMECALL                         R3 R2 K3 ["Fire"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K4 ["unmount"]
       22 GETUPVAL                         R2 0
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 0
       26 GETUPVAL                         R1 3
       27 LOADN                            R3 0
       28 NAMECALL                         R1 R1 K5 ["AnimationIdSelected"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R10 0
        1 JUMPIFNOT                        R10 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R10 0 0
        5 NEWTABLE                         R11 0 0
        7 NEWTABLE                         R12 0 0
        9 NEWTABLE                         R13 0 0
       11 NEWTABLE                         R14 0 0
       13 LOADB                            R15 0
       14 LOADNIL                          R16
       15 GETUPVAL                         R17 1
       16 JUMPIFNOT                        R17 ; [+29]
       17 GETUPVAL                         R17 1
       18 NAMECALL                         R17 R17 K0 ["getState"]
       20 CALL                             R17 1 1
       21 MOVE                             R16 R17
       22 GETTABLEKS                       R17 R16 K1 ["roles"]
       24 GETTABLEKS                       R10 R17 K2 ["allowedAssetTypesForRelease"]
       26 GETTABLEKS                       R17 R16 K1 ["roles"]
       28 GETTABLEKS                       R11 R17 K3 ["allowedAssetTypesForUpload"]
       30 GETTABLEKS                       R17 R16 K1 ["roles"]
       32 GETTABLEKS                       R12 R17 K4 ["allowedAssetTypesForFree"]
       34 GETTABLEKS                       R17 R16 K1 ["roles"]
       36 GETTABLEKS                       R13 R17 K5 ["allowedBundleTypeSettings"]
       38 GETTABLEKS                       R17 R16 K6 ["packages"]
       40 GETTABLEKS                       R14 R17 K7 ["permissionsTable"]
       42 GETTABLEKS                       R17 R16 K1 ["roles"]
       44 GETTABLEKS                       R15 R17 K8 ["groupBundlesUploadEnabledForUser"]
       46 LOADNIL                          R17
       47 JUMPIFNOT                        R16 ; [+8]
       48 GETTABLEKS                       R19 R16 K9 ["assets"]
       50 JUMPIFNOT                        R19 ; [+5]
       51 GETTABLEKS                       R18 R16 K9 ["assets"]
       53 GETTABLEKS                       R18 R18 K10 ["idToAssetMap"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R18
       57 JUMPIFNOT                        R18 ; [+15]
       58 GETUPVAL                         R19 2
       59 MOVE                             R20 R18
       60 NEWCLOSURE                       R21 P0
       61 CAPTURE                          VAL R0
       62 CALL                             R19 2 1
       63 JUMPIFNOT                        R19 ; [+8]
       64 GETTABLEKS                       R20 R19 K11 ["Asset"]
       66 JUMPIFNOT                        R20 ; [+5]
       67 GETTABLEKS                       R20 R19 K11 ["Asset"]
       69 GETTABLEKS                       R17 R20 K12 ["AssetMediaIds"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R17
       73 GETUPVAL                         R19 3
       74 GETTABLEKS                       R19 R19 K13 ["getFlowStartScreen"]
       76 MOVE                             R20 R1
       77 MOVE                             R21 R10
       78 CALL                             R19 2 1
       79 JUMPIFNOTEQKNIL                  R7 ; [+6]
       81 GETUPVAL                         R20 4
       82 NAMECALL                         R20 R20 K14 ["getDefaultTab"]
       84 CALL                             R20 1 1
       85 MOVE                             R7 R20
       86 GETUPVAL                         R20 5
       87 GETTABLEKS                       R20 R20 K15 ["FLOW_TYPE"]
       89 GETTABLEKS                       R20 R20 K16 ["DOWNLOAD_FLOW"]
       91 JUMPIFNOTEQ                      R1 R20 ; [+6]
       93 GETUPVAL                         R20 4
       94 NAMECALL                         R20 R20 K17 ["getOverrideTab"]
       96 CALL                             R20 1 1
       97 MOVE                             R7 R20
       98 NEWTABLE                         R20 0 1
      100 GETUPVAL                         R21 6
      101 DUPTABLE                         R22 K19 [{"StudioAssetService"}]
      102 GETUPVAL                         R23 7
      103 SETTABLEKS                       R23 R22 K18 ["StudioAssetService"]
      105 CALL                             R21 1 -1
      106 SETLIST                          R20 R21 -1 [1]
      108 GETUPVAL                         R21 8
      109 GETTABLEKS                       R21 R21 K20 ["Store"]
      111 GETTABLEKS                       R21 R21 K21 ["new"]
      113 GETUPVAL                         R22 9
      114 DUPTABLE                         R23 K41 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "assetSubType", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "animationSectionValid", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      115 SETTABLEKS                       R0 R23 K22 ["assetId"]
      117 SETTABLEKS                       R17 R23 K23 ["assetMediaIds"]
      119 SETTABLEKS                       R1 R23 K24 ["screenFlowType"]
      121 SETTABLEKS                       R19 R23 K25 ["currentScreen"]
      123 SETTABLEKS                       R2 R23 K26 ["instances"]
      125 GETUPVAL                         R25 10
      126 JUMPIF                           R25 ; [+2]
      127 GETUPVAL                         R25 11
      128 JUMPIFNOT                        R25 ; [+2]
      129 MOVE                             R24 R5
      130 JUMPIF                           R24 ; [+1]
      131 LOADNIL                          R24
      132 SETTABLEKS                       R24 R23 K27 ["sourceInstances"]
      134 SETTABLEKS                       R10 R23 K2 ["allowedAssetTypesForRelease"]
      136 SETTABLEKS                       R11 R23 K3 ["allowedAssetTypesForUpload"]
      138 SETTABLEKS                       R12 R23 K4 ["allowedAssetTypesForFree"]
      140 SETTABLEKS                       R13 R23 K5 ["allowedBundleTypeSettings"]
      142 NEWTABLE                         R24 0 0
      144 SETTABLEKS                       R24 R23 K28 ["idToFiatProductMap"]
      146 DUPTABLE                         R24 K44 [{"inProgress", "queued"}]
      147 NEWTABLE                         R25 0 0
      149 SETTABLEKS                       R25 R24 K42 ["inProgress"]
      151 NEWTABLE                         R25 0 0
      153 SETTABLEKS                       R25 R24 K43 ["queued"]
      155 SETTABLEKS                       R24 R23 K29 ["rollingAssetPermissionRequests"]
      157 SETTABLEKS                       R3 R23 K30 ["assetTypeEnum"]
      159 GETUPVAL                         R25 12
      160 CALL                             R25 0 1
      161 JUMPIFNOT                        R25 ; [+2]
      162 MOVE                             R24 R4
      163 JUMP                             ; [+1]
      164 LOADNIL                          R24
      165 SETTABLEKS                       R24 R23 K31 ["assetSubType"]
      167 SETTABLEKS                       R7 R23 K32 ["currentTab"]
      169 SETTABLEKS                       R14 R23 K33 ["packagePermissions"]
      171 NEWTABLE                         R24 0 0
      173 SETTABLEKS                       R24 R23 K34 ["overrideCursor"]
      175 LOADB                            R24 0
      176 SETTABLEKS                       R24 R23 K35 ["deleteLocal"]
      178 GETUPVAL                         R25 13
      179 CALL                             R25 0 1
      180 JUMPIFNOT                        R25 ; [+2]
      181 LOADB                            R24 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R24
      184 SETTABLEKS                       R24 R23 K36 ["animationSectionValid"]
      186 SETTABLEKS                       R6 R23 K37 ["hasSubsequent"]
      188 GETUPVAL                         R25 14
      189 CALL                             R25 0 1
      190 JUMPIFNOT                        R25 ; [+2]
      191 MOVE                             R24 R8
      192 JUMPIF                           R24 ; [+1]
      193 LOADNIL                          R24
      194 SETTABLEKS                       R24 R23 K38 ["avatarAssetCurrentIndex"]
      196 GETUPVAL                         R25 14
      197 CALL                             R25 0 1
      198 JUMPIFNOT                        R25 ; [+2]
      199 MOVE                             R24 R9
      200 JUMPIF                           R24 ; [+1]
      201 LOADNIL                          R24
      202 SETTABLEKS                       R24 R23 K39 ["avatarAssetTotalCount"]
      204 GETUPVAL                         R25 15
      205 CALL                             R25 0 1
      206 JUMPIFNOT                        R25 ; [+3]
      207 NEWTABLE                         R24 0 0
      209 JUMP                             ; [+1]
      210 LOADNIL                          R24
      211 SETTABLEKS                       R24 R23 K40 ["sellerStatusData"]
      213 SETTABLEKS                       R15 R23 K8 ["groupBundlesUploadEnabledForUser"]
      215 MOVE                             R24 R20
      216 CALL                             R21 3 1
      217 GETUPVAL                         R22 16
      218 CALL                             R22 0 1
      219 GETUPVAL                         R23 17
      220 GETTABLEKS                       R23 R23 K21 ["new"]
      222 CALL                             R23 0 1
      223 NEWCLOSURE                       R24 P1
      224 CAPTURE                          UPVAL U0
      225 CAPTURE                          UPVAL U18
      226 CAPTURE                          UPVAL U19
      227 CAPTURE                          UPVAL U20
      228 GETUPVAL                         R26 11
      229 JUMPIFNOT                        R26 ; [+5]
      230 GETUPVAL                         R25 21
      231 GETTABLEKS                       R25 R25 K21 ["new"]
      233 CALL                             R25 0 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R25
      236 GETUPVAL                         R26 19
      237 GETTABLEKS                       R26 R26 K45 ["createElement"]
      239 GETUPVAL                         R27 22
      240 DUPTABLE                         R28 K51 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      241 SETTABLEKS                       R0 R28 K22 ["assetId"]
      243 SETTABLEKS                       R3 R28 K30 ["assetTypeEnum"]
      245 GETUPVAL                         R29 23
      246 SETTABLEKS                       R29 R28 K46 ["plugin"]
      248 SETTABLEKS                       R21 R28 K47 ["store"]
      250 SETTABLEKS                       R22 R28 K48 ["theme"]
      252 SETTABLEKS                       R23 R28 K49 ["networkInterface"]
      254 SETTABLEKS                       R24 R28 K50 ["onAssetConfigDestroy"]
      256 CALL                             R26 2 1
      257 GETUPVAL                         R27 19
      258 GETTABLEKS                       R27 R27 K45 ["createElement"]
      260 GETUPVAL                         R28 24
      261 DUPTABLE                         R29 K55 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      262 GETUPVAL                         R31 11
      263 JUMPIFNOT                        R31 ; [+2]
      264 MOVE                             R30 R25
      265 JUMP                             ; [+1]
      266 LOADNIL                          R30
      267 SETTABLEKS                       R30 R29 K52 ["ixp"]
      269 GETUPVAL                         R30 25
      270 SETTABLEKS                       R30 R29 K53 ["localization"]
      272 GETUPVAL                         R30 23
      273 SETTABLEKS                       R30 R29 K46 ["plugin"]
      275 SETTABLEKS                       R22 R29 K48 ["theme"]
      277 SETTABLEKS                       R21 R29 K47 ["store"]
      279 GETIMPORT                        R30 K56 [settings]
      281 SETTABLEKS                       R30 R29 K54 ["settings"]
      283 NEWTABLE                         R30 0 1
      285 MOVE                             R31 R26
      286 SETLIST                          R30 R31 1 [1]
      288 CALL                             R27 3 1
      289 GETUPVAL                         R28 19
      290 GETTABLEKS                       R28 R28 K57 ["mount"]
      292 MOVE                             R29 R27
      293 CALL                             R28 1 1
      294 SETUPVAL                         R28 0
      295 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R3 R1 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Toolbox"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 MOVE                             R1 R0
        6 JUMPIFNOT                        R1 ; [+4]
        7 LOADK                            R3 K2 ["tabRefresh"]
        8 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 NAMECALL                         R2 R1 K3 ["Fire"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+33]
        2 NEWCLOSURE                       R0 P0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K0 ["Toolbox"]
        6 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 MOVE                             R2 R1
       10 JUMPIFNOT                        R2 ; [+4]
       11 LOADK                            R4 K2 ["tabRefresh"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 NAMECALL                         R3 R2 K3 ["Fire"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K4 ["unmount"]
       22 GETUPVAL                         R2 0
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 0
       26 GETUPVAL                         R1 3
       27 LOADN                            R3 0
       28 NAMECALL                         R1 R1 K5 ["AnimationIdSelected"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 4
       32 JUMPIFNOT                        R1 ; [+2]
       33 GETUPVAL                         R1 4
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R12 0
        1 JUMPIFNOT                        R12 ; [+2]
        2 LOADNIL                          R12
        3 RETURN                           R12 1
        4 NEWTABLE                         R12 0 0
        6 NEWTABLE                         R13 0 0
        8 NEWTABLE                         R14 0 0
       10 NEWTABLE                         R15 0 0
       12 NEWTABLE                         R16 0 0
       14 LOADB                            R17 0
       15 LOADNIL                          R18
       16 GETUPVAL                         R19 1
       17 JUMPIFNOT                        R19 ; [+29]
       18 GETUPVAL                         R19 1
       19 NAMECALL                         R19 R19 K0 ["getState"]
       21 CALL                             R19 1 1
       22 MOVE                             R18 R19
       23 GETTABLEKS                       R19 R18 K1 ["roles"]
       25 GETTABLEKS                       R12 R19 K2 ["allowedAssetTypesForRelease"]
       27 GETTABLEKS                       R19 R18 K1 ["roles"]
       29 GETTABLEKS                       R13 R19 K3 ["allowedAssetTypesForUpload"]
       31 GETTABLEKS                       R19 R18 K1 ["roles"]
       33 GETTABLEKS                       R14 R19 K4 ["allowedAssetTypesForFree"]
       35 GETTABLEKS                       R19 R18 K1 ["roles"]
       37 GETTABLEKS                       R15 R19 K5 ["allowedBundleTypeSettings"]
       39 GETTABLEKS                       R19 R18 K6 ["packages"]
       41 GETTABLEKS                       R16 R19 K7 ["permissionsTable"]
       43 GETTABLEKS                       R19 R18 K1 ["roles"]
       45 GETTABLEKS                       R17 R19 K8 ["groupBundlesUploadEnabledForUser"]
       47 LOADNIL                          R19
       48 JUMPIFNOT                        R18 ; [+8]
       49 GETTABLEKS                       R21 R18 K9 ["assets"]
       51 JUMPIFNOT                        R21 ; [+5]
       52 GETTABLEKS                       R20 R18 K9 ["assets"]
       54 GETTABLEKS                       R20 R20 K10 ["idToAssetMap"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R20
       58 JUMPIFNOT                        R20 ; [+15]
       59 GETUPVAL                         R21 2
       60 MOVE                             R22 R20
       61 NEWCLOSURE                       R23 P0
       62 CAPTURE                          VAL R0
       63 CALL                             R21 2 1
       64 JUMPIFNOT                        R21 ; [+8]
       65 GETTABLEKS                       R22 R21 K11 ["Asset"]
       67 JUMPIFNOT                        R22 ; [+5]
       68 GETTABLEKS                       R22 R21 K11 ["Asset"]
       70 GETTABLEKS                       R19 R22 K12 ["AssetMediaIds"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R19
       74 GETUPVAL                         R21 3
       75 GETTABLEKS                       R21 R21 K13 ["getFlowStartScreen"]
       77 MOVE                             R22 R1
       78 MOVE                             R23 R12
       79 CALL                             R21 2 1
       80 JUMPIFNOTEQKNIL                  R7 ; [+6]
       82 GETUPVAL                         R22 4
       83 NAMECALL                         R22 R22 K14 ["getDefaultTab"]
       85 CALL                             R22 1 1
       86 MOVE                             R7 R22
       87 GETUPVAL                         R22 5
       88 GETTABLEKS                       R22 R22 K15 ["FLOW_TYPE"]
       90 GETTABLEKS                       R22 R22 K16 ["DOWNLOAD_FLOW"]
       92 JUMPIFNOTEQ                      R1 R22 ; [+6]
       94 GETUPVAL                         R22 4
       95 NAMECALL                         R22 R22 K17 ["getOverrideTab"]
       97 CALL                             R22 1 1
       98 MOVE                             R7 R22
       99 NEWTABLE                         R22 0 1
      101 GETUPVAL                         R23 6
      102 DUPTABLE                         R24 K19 [{"StudioAssetService"}]
      103 GETUPVAL                         R25 7
      104 SETTABLEKS                       R25 R24 K18 ["StudioAssetService"]
      106 CALL                             R23 1 -1
      107 SETLIST                          R22 R23 -1 [1]
      109 GETUPVAL                         R23 8
      110 GETTABLEKS                       R23 R23 K20 ["Store"]
      112 GETTABLEKS                       R23 R23 K21 ["new"]
      114 GETUPVAL                         R24 9
      115 DUPTABLE                         R25 K41 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "assetSubType", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "animationSectionValid", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      116 SETTABLEKS                       R0 R25 K22 ["assetId"]
      118 SETTABLEKS                       R19 R25 K23 ["assetMediaIds"]
      120 SETTABLEKS                       R1 R25 K24 ["screenFlowType"]
      122 SETTABLEKS                       R21 R25 K25 ["currentScreen"]
      124 SETTABLEKS                       R2 R25 K26 ["instances"]
      126 GETUPVAL                         R27 10
      127 JUMPIF                           R27 ; [+2]
      128 GETUPVAL                         R27 11
      129 JUMPIFNOT                        R27 ; [+2]
      130 MOVE                             R26 R5
      131 JUMPIF                           R26 ; [+1]
      132 LOADNIL                          R26
      133 SETTABLEKS                       R26 R25 K27 ["sourceInstances"]
      135 SETTABLEKS                       R12 R25 K2 ["allowedAssetTypesForRelease"]
      137 SETTABLEKS                       R13 R25 K3 ["allowedAssetTypesForUpload"]
      139 SETTABLEKS                       R14 R25 K4 ["allowedAssetTypesForFree"]
      141 SETTABLEKS                       R15 R25 K5 ["allowedBundleTypeSettings"]
      143 NEWTABLE                         R26 0 0
      145 SETTABLEKS                       R26 R25 K28 ["idToFiatProductMap"]
      147 DUPTABLE                         R26 K44 [{"inProgress", "queued"}]
      148 NEWTABLE                         R27 0 0
      150 SETTABLEKS                       R27 R26 K42 ["inProgress"]
      152 NEWTABLE                         R27 0 0
      154 SETTABLEKS                       R27 R26 K43 ["queued"]
      156 SETTABLEKS                       R26 R25 K29 ["rollingAssetPermissionRequests"]
      158 SETTABLEKS                       R3 R25 K30 ["assetTypeEnum"]
      160 GETUPVAL                         R27 12
      161 CALL                             R27 0 1
      162 JUMPIFNOT                        R27 ; [+2]
      163 MOVE                             R26 R4
      164 JUMP                             ; [+1]
      165 LOADNIL                          R26
      166 SETTABLEKS                       R26 R25 K31 ["assetSubType"]
      168 SETTABLEKS                       R7 R25 K32 ["currentTab"]
      170 SETTABLEKS                       R16 R25 K33 ["packagePermissions"]
      172 NEWTABLE                         R26 0 0
      174 SETTABLEKS                       R26 R25 K34 ["overrideCursor"]
      176 LOADB                            R26 0
      177 SETTABLEKS                       R26 R25 K35 ["deleteLocal"]
      179 GETUPVAL                         R27 13
      180 CALL                             R27 0 1
      181 JUMPIFNOT                        R27 ; [+2]
      182 LOADB                            R26 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R26
      185 SETTABLEKS                       R26 R25 K36 ["animationSectionValid"]
      187 SETTABLEKS                       R6 R25 K37 ["hasSubsequent"]
      189 GETUPVAL                         R27 14
      190 CALL                             R27 0 1
      191 JUMPIFNOT                        R27 ; [+2]
      192 MOVE                             R26 R9
      193 JUMP                             ; [+1]
      194 LOADNIL                          R26
      195 SETTABLEKS                       R26 R25 K38 ["avatarAssetCurrentIndex"]
      197 GETUPVAL                         R27 14
      198 CALL                             R27 0 1
      199 JUMPIFNOT                        R27 ; [+2]
      200 MOVE                             R26 R10
      201 JUMP                             ; [+1]
      202 LOADNIL                          R26
      203 SETTABLEKS                       R26 R25 K39 ["avatarAssetTotalCount"]
      205 GETUPVAL                         R27 15
      206 CALL                             R27 0 1
      207 JUMPIFNOT                        R27 ; [+3]
      208 NEWTABLE                         R26 0 0
      210 JUMP                             ; [+1]
      211 LOADNIL                          R26
      212 SETTABLEKS                       R26 R25 K40 ["sellerStatusData"]
      214 SETTABLEKS                       R17 R25 K8 ["groupBundlesUploadEnabledForUser"]
      216 MOVE                             R26 R22
      217 CALL                             R23 3 1
      218 GETUPVAL                         R24 16
      219 CALL                             R24 0 1
      220 GETUPVAL                         R25 17
      221 GETTABLEKS                       R25 R25 K21 ["new"]
      223 CALL                             R25 0 1
      224 NEWCLOSURE                       R26 P1
      225 CAPTURE                          UPVAL U0
      226 CAPTURE                          UPVAL U18
      227 CAPTURE                          UPVAL U19
      228 CAPTURE                          UPVAL U20
      229 CAPTURE                          VAL R8
      230 GETUPVAL                         R28 11
      231 JUMPIFNOT                        R28 ; [+5]
      232 GETUPVAL                         R27 21
      233 GETTABLEKS                       R27 R27 K21 ["new"]
      235 CALL                             R27 0 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R27
      238 GETUPVAL                         R28 19
      239 GETTABLEKS                       R28 R28 K45 ["createElement"]
      241 GETUPVAL                         R29 22
      242 DUPTABLE                         R30 K52 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      243 SETTABLEKS                       R0 R30 K22 ["assetId"]
      245 SETTABLEKS                       R3 R30 K30 ["assetTypeEnum"]
      247 GETUPVAL                         R32 23
      248 CALL                             R32 0 1
      249 JUMPIFNOT                        R32 ; [+2]
      250 MOVE                             R31 R11
      251 JUMP                             ; [+1]
      252 LOADNIL                          R31
      253 SETTABLEKS                       R31 R30 K46 ["groupId"]
      255 GETUPVAL                         R31 24
      256 SETTABLEKS                       R31 R30 K47 ["plugin"]
      258 SETTABLEKS                       R23 R30 K48 ["store"]
      260 SETTABLEKS                       R24 R30 K49 ["theme"]
      262 SETTABLEKS                       R25 R30 K50 ["networkInterface"]
      264 SETTABLEKS                       R26 R30 K51 ["onAssetConfigDestroy"]
      266 CALL                             R28 2 1
      267 GETUPVAL                         R29 19
      268 GETTABLEKS                       R29 R29 K45 ["createElement"]
      270 GETUPVAL                         R30 25
      271 DUPTABLE                         R31 K56 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      272 GETUPVAL                         R33 11
      273 JUMPIFNOT                        R33 ; [+2]
      274 MOVE                             R32 R27
      275 JUMP                             ; [+1]
      276 LOADNIL                          R32
      277 SETTABLEKS                       R32 R31 K53 ["ixp"]
      279 GETUPVAL                         R32 26
      280 SETTABLEKS                       R32 R31 K54 ["localization"]
      282 GETUPVAL                         R32 24
      283 SETTABLEKS                       R32 R31 K47 ["plugin"]
      285 SETTABLEKS                       R24 R31 K49 ["theme"]
      287 SETTABLEKS                       R23 R31 K48 ["store"]
      289 GETIMPORT                        R32 K57 [settings]
      291 SETTABLEKS                       R32 R31 K55 ["settings"]
      293 NEWTABLE                         R32 0 1
      295 MOVE                             R33 R28
      296 SETLIST                          R32 R33 1 [1]
      298 CALL                             R29 3 1
      299 GETUPVAL                         R30 19
      300 GETTABLEKS                       R30 R30 K58 ["mount"]
      302 MOVE                             R31 R29
      303 CALL                             R30 1 1
      304 SETUPVAL                         R30 0
      305 RETURN                           R23 1

PROTO_13:
        0 GETUPVAL                         R12 0
        1 CALL                             R12 0 1
        2 JUMPIFNOT                        R12 ; [+35]
        3 GETUPVAL                         R12 1
        4 MOVE                             R13 R0
        5 MOVE                             R14 R1
        6 MOVE                             R15 R2
        7 MOVE                             R16 R3
        8 GETUPVAL                         R18 2
        9 CALL                             R18 0 1
       10 JUMPIFNOT                        R18 ; [+2]
       11 MOVE                             R17 R4
       12 JUMP                             ; [+1]
       13 LOADNIL                          R17
       14 MOVE                             R18 R5
       15 MOVE                             R19 R6
       16 MOVE                             R20 R7
       17 MOVE                             R21 R8
       18 GETUPVAL                         R23 3
       19 CALL                             R23 0 1
       20 JUMPIFNOT                        R23 ; [+2]
       21 MOVE                             R22 R9
       22 JUMP                             ; [+1]
       23 LOADNIL                          R22
       24 GETUPVAL                         R24 3
       25 CALL                             R24 0 1
       26 JUMPIFNOT                        R24 ; [+2]
       27 MOVE                             R23 R10
       28 JUMP                             ; [+1]
       29 LOADNIL                          R23
       30 GETUPVAL                         R25 4
       31 CALL                             R25 0 1
       32 JUMPIFNOT                        R25 ; [+2]
       33 MOVE                             R24 R11
       34 JUMP                             ; [+1]
       35 LOADNIL                          R24
       36 CALL                             R12 12 1
       37 RETURN                           R12 1
       38 GETUPVAL                         R12 5
       39 MOVE                             R13 R0
       40 MOVE                             R14 R1
       41 MOVE                             R15 R2
       42 MOVE                             R16 R3
       43 GETUPVAL                         R18 2
       44 CALL                             R18 0 1
       45 JUMPIFNOT                        R18 ; [+2]
       46 MOVE                             R17 R4
       47 JUMP                             ; [+1]
       48 LOADNIL                          R17
       49 MOVE                             R18 R5
       50 MOVE                             R19 R6
       51 MOVE                             R20 R7
       52 GETUPVAL                         R22 3
       53 CALL                             R22 0 1
       54 JUMPIFNOT                        R22 ; [+2]
       55 MOVE                             R21 R9
       56 JUMP                             ; [+1]
       57 LOADNIL                          R21
       58 GETUPVAL                         R23 3
       59 CALL                             R23 0 1
       60 JUMPIFNOT                        R23 ; [+2]
       61 MOVE                             R22 R10
       62 JUMP                             ; [+1]
       63 LOADNIL                          R22
       64 CALL                             R12 10 0
       65 LOADNIL                          R12
       66 RETURN                           R12 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["destroy"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R3 R3 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K5 [Enum.AssetType.Model]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 GETUPVAL                         R9 2
       14 NAMECALL                         R9 R9 K6 ["getVersionsTab"]
       16 CALL                             R9 1 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 0
        6 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 GETUPVAL                         R5 1
        7 JUMPIFNOT                        R5 ; [+13]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R7 3
       10 GETUPVAL                         R8 4
       11 CALL                             R7 1 -1
       12 NAMECALL                         R5 R5 K0 ["dispatch"]
       14 CALL                             R5 -1 1
       15 MOVE                             R7 R4
       16 MOVE                             R8 R4
       17 NAMECALL                         R5 R5 K1 ["andThen"]
       19 CALL                             R5 3 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R5 2
       22 GETUPVAL                         R7 5
       23 GETUPVAL                         R8 4
       24 CALL                             R7 1 -1
       25 NAMECALL                         R5 R5 K0 ["dispatch"]
       27 CALL                             R5 -1 1
       28 MOVE                             R7 R4
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K1 ["andThen"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 LOADK                            R5 K0 ["User cancelled"]
        7 NAMECALL                         R0 R0 K1 ["ResolveSaveInstanceToRoblox"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["uploadSucceeded"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R2 1
       13 NAMECALL                         R2 R2 K1 ["disconnect"]
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K0 ["uploadSucceeded"]
       18 JUMPIFNOT                        R2 ; [+24]
       19 GETTABLEKS                       R3 R0 K2 ["changed"]
       21 JUMPIFNOT                        R3 ; [+10]
       22 GETTABLEKS                       R3 R0 K2 ["changed"]
       24 GETTABLEKS                       R3 R3 K3 ["AssetConfigName"]
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETTABLEKS                       R2 R0 K2 ["changed"]
       29 GETTABLEKS                       R2 R2 K3 ["AssetConfigName"]
       31 JUMP                             ; [+1]
       32 LOADK                            R2 K4 ["Untitled"]
       33 GETUPVAL                         R3 2
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R6 R0 K5 ["assetId"]
       37 MOVE                             R7 R2
       38 LOADNIL                          R8
       39 NAMECALL                         R3 R3 K6 ["ResolveSaveInstanceToRoblox"]
       41 CALL                             R3 5 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 2
       44 GETUPVAL                         R4 3
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 GETTABLEKS                       R8 R0 K8 ["networkError"]
       49 ORK                              R7 R8 K7 ["Upload failed"]
       50 NAMECALL                         R2 R2 K6 ["ResolveSaveInstanceToRoblox"]
       52 CALL                             R2 5 0
       53 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClonedInstances"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 SETLIST                          R1 R2 1 [1]
        8 CALL                             R0 1 1
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 2
       11 JUMPIFEQKNIL                     R2 ; [+25]
       13 GETUPVAL                         R3 2
       14 FASTCALL1                        TYPEOF R3 ; [+2]
       15 GETIMPORT                        R2 K2 [typeof]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K3 ["EnumItem"] ; [+3]
       20 GETUPVAL                         R1 2
       21 JUMP                             ; [+23]
       22 GETUPVAL                         R3 2
       23 FASTCALL1                        TYPEOF R3 ; [+2]
       24 GETIMPORT                        R2 K2 [typeof]
       26 CALL                             R2 1 1
       27 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+7]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K5 ["UGCBundleTypes"]
       32 GETUPVAL                         R3 2
       33 GETTABLE                         R1 R2 R3
       34 JUMP                             ; [+10]
       35 LOADNIL                          R1
       36 JUMP                             ; [+8]
       37 GETTABLEN                        R2 R0 1
       38 LOADK                            R4 K6 ["AnimationClip"]
       39 NAMECALL                         R2 R2 K7 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+2]
       43 GETIMPORT                        R1 K11 [Enum.AssetType.Animation]
       45 LOADB                            R2 0
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          REF R2
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 GETUPVAL                         R4 6
       51 LOADNIL                          R5
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K12 ["FLOW_TYPE"]
       55 GETTABLEKS                       R6 R6 K13 ["UPLOAD_FLOW"]
       57 MOVE                             R7 R0
       58 MOVE                             R8 R1
       59 LOADNIL                          R9
       60 NEWTABLE                         R10 0 1
       62 GETUPVAL                         R11 1
       63 SETLIST                          R10 R11 1 [1]
       65 LOADB                            R11 0
       66 LOADNIL                          R12
       67 MOVE                             R13 R3
       68 LOADNIL                          R14
       69 LOADNIL                          R15
       70 GETUPVAL                         R16 7
       71 CALL                             R4 12 1
       72 JUMPIF                           R4 ; [+10]
       73 GETUPVAL                         R5 4
       74 GETUPVAL                         R7 5
       75 LOADNIL                          R8
       76 LOADNIL                          R9
       77 LOADK                            R10 K14 ["Asset config dialog already open"]
       78 NAMECALL                         R5 R5 K15 ["ResolveSaveInstanceToRoblox"]
       80 CALL                             R5 5 0
       81 CLOSEUPVALS                      R2
       82 RETURN                           R0 0
       83 LOADNIL                          R5
       84 GETTABLEKS                       R6 R4 K16 ["changed"]
       86 NEWCLOSURE                       R8 P1
       87 CAPTURE                          REF R2
       88 CAPTURE                          REF R5
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U5
       91 NAMECALL                         R6 R6 K17 ["connect"]
       93 CALL                             R6 2 1
       94 MOVE                             R5 R6
       95 CLOSEUPVALS                      R2
       96 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R3
        9 GETUPVAL                         R5 4
       10 JUMPIFNOT                        R5 ; [+13]
       11 GETUPVAL                         R5 5
       12 GETUPVAL                         R7 6
       13 GETUPVAL                         R8 7
       14 CALL                             R7 1 -1
       15 NAMECALL                         R5 R5 K0 ["dispatch"]
       17 CALL                             R5 -1 1
       18 MOVE                             R7 R4
       19 MOVE                             R8 R4
       20 NAMECALL                         R5 R5 K1 ["andThen"]
       22 CALL                             R5 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R5 5
       25 GETUPVAL                         R7 8
       26 GETUPVAL                         R8 7
       27 CALL                             R7 1 -1
       28 NAMECALL                         R5 R5 K0 ["dispatch"]
       30 CALL                             R5 -1 1
       31 MOVE                             R7 R4
       32 MOVE                             R8 R4
       33 NAMECALL                         R5 R5 K1 ["andThen"]
       35 CALL                             R5 3 0
       36 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClonedInstances"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL1                        ASSERT R2 ; [+2]
       11 GETIMPORT                        R1 K2 [assert]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 JUMPIFEQKNIL                     R1 ; [+52]
       17 GETUPVAL                         R1 4
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
       22 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
       24 MOVE                             R4 R0
       25 GETUPVAL                         R7 3
       26 FASTCALL1                        TYPEOF R7 ; [+2]
       27 GETIMPORT                        R6 K6 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K7 ["EnumItem"] ; [+3]
       32 GETUPVAL                         R5 3
       33 JUMP                             ; [+14]
       34 GETUPVAL                         R7 3
       35 FASTCALL1                        TYPEOF R7 ; [+2]
       36 GETIMPORT                        R6 K6 [typeof]
       38 CALL                             R6 1 1
       39 JUMPIFNOTEQKS                    R6 K8 ["string"] ; [+7]
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K9 ["UGCBundleTypes"]
       44 GETUPVAL                         R7 3
       45 GETTABLE                         R5 R6 R7
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 GETUPVAL                         R7 1
       50 GETUPVAL                         R8 2
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 GETUPVAL                         R12 6
       54 CALL                             R12 0 1
       55 JUMPIFNOT                        R12 ; [+2]
       56 GETUPVAL                         R11 7
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 GETUPVAL                         R13 6
       60 CALL                             R13 0 1
       61 JUMPIFNOT                        R13 ; [+2]
       62 GETUPVAL                         R12 8
       63 JUMP                             ; [+1]
       64 LOADNIL                          R12
       65 LOADNIL                          R13
       66 CALL                             R1 12 0
       67 RETURN                           R0 0
       68 LENGTH                           R1 R0
       69 JUMPIFNOTEQKN                    R1 K10 [1] ; [+37]
       71 GETTABLEN                        R1 R0 1
       72 LOADK                            R3 K11 ["AnimationClip"]
       73 NAMECALL                         R1 R1 K12 ["IsA"]
       75 CALL                             R1 2 1
       76 JUMPIFNOT                        R1 ; [+30]
       77 GETUPVAL                         R1 4
       78 LOADNIL                          R2
       79 GETUPVAL                         R3 5
       80 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
       82 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
       84 MOVE                             R4 R0
       85 GETIMPORT                        R5 K16 [Enum.AssetType.Animation]
       87 LOADNIL                          R6
       88 LOADNIL                          R7
       89 GETUPVAL                         R8 2
       90 LOADNIL                          R9
       91 LOADNIL                          R10
       92 GETUPVAL                         R12 6
       93 CALL                             R12 0 1
       94 JUMPIFNOT                        R12 ; [+2]
       95 GETUPVAL                         R11 7
       96 JUMP                             ; [+1]
       97 LOADNIL                          R11
       98 GETUPVAL                         R13 6
       99 CALL                             R13 0 1
      100 JUMPIFNOT                        R13 ; [+2]
      101 GETUPVAL                         R12 8
      102 JUMP                             ; [+1]
      103 LOADNIL                          R12
      104 LOADNIL                          R13
      105 CALL                             R1 12 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R1 4
      108 LOADNIL                          R2
      109 GETUPVAL                         R3 5
      110 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
      112 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
      114 MOVE                             R4 R0
      115 LOADNIL                          R5
      116 LOADNIL                          R6
      117 GETUPVAL                         R7 1
      118 GETUPVAL                         R8 2
      119 LOADNIL                          R9
      120 LOADNIL                          R10
      121 GETUPVAL                         R12 6
      122 CALL                             R12 0 1
      123 JUMPIFNOT                        R12 ; [+2]
      124 GETUPVAL                         R11 7
      125 JUMP                             ; [+1]
      126 LOADNIL                          R11
      127 GETUPVAL                         R13 6
      128 CALL                             R13 0 1
      129 JUMPIFNOT                        R13 ; [+2]
      130 GETUPVAL                         R12 8
      131 JUMP                             ; [+1]
      132 LOADNIL                          R12
      133 LOADNIL                          R13
      134 CALL                             R1 12 0
      135 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+45]
        3 JUMPIFEQKNIL                     R3 ; [+3]
        5 JUMPIFNOTEQKNIL                  R4 ; [+42]
        7 GETIMPORT                        R5 K1 [game]
        9 LOADK                            R7 K2 ["MemStorageService"]
       10 NAMECALL                         R5 R5 K3 ["GetService"]
       12 CALL                             R5 2 1
       13 GETUPVAL                         R8 1
       14 NAMECALL                         R6 R5 K4 ["GetItem"]
       16 CALL                             R6 2 1
       17 FASTCALL1                        TYPE R6 ; [+3]
       18 MOVE                             R8 R6
       19 GETIMPORT                        R7 K6 [type]
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQKS                    R7 K7 ["string"] ; [+25]
       24 JUMPIFEQKS                       R6 K8 [""] ; [+23]
       26 LOADK                            R9 K9 ["^(%d+),(%d+)$"]
       27 NAMECALL                         R7 R6 K10 ["match"]
       29 CALL                             R7 2 2
       30 JUMPIFNOT                        R7 ; [+13]
       31 JUMPIFNOT                        R8 ; [+12]
       32 FASTCALL1                        TONUMBER R7 ; [+3]
       33 MOVE                             R10 R7
       34 GETIMPORT                        R9 K12 [tonumber]
       36 CALL                             R9 1 1
       37 MOVE                             R3 R9
       38 FASTCALL1                        TONUMBER R8 ; [+3]
       39 MOVE                             R10 R8
       40 GETIMPORT                        R9 K12 [tonumber]
       42 CALL                             R9 1 1
       43 MOVE                             R4 R9
       44 GETUPVAL                         R11 1
       45 NAMECALL                         R9 R5 K13 ["RemoveItem"]
       47 CALL                             R9 2 0
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          REF R3
       57 CAPTURE                          REF R4
       58 GETUPVAL                         R6 5
       59 JUMPIFNOT                        R6 ; [+13]
       60 GETUPVAL                         R6 6
       61 GETUPVAL                         R8 7
       62 GETUPVAL                         R9 8
       63 CALL                             R8 1 -1
       64 NAMECALL                         R6 R6 K14 ["dispatch"]
       66 CALL                             R6 -1 1
       67 MOVE                             R8 R5
       68 MOVE                             R9 R5
       69 NAMECALL                         R6 R6 K15 ["andThen"]
       71 CALL                             R6 3 0
       72 JUMP                             ; [+12]
       73 GETUPVAL                         R6 6
       74 GETUPVAL                         R8 9
       75 GETUPVAL                         R9 8
       76 CALL                             R8 1 -1
       77 NAMECALL                         R6 R6 K14 ["dispatch"]
       79 CALL                             R6 -1 1
       80 MOVE                             R8 R5
       81 MOVE                             R9 R5
       82 NAMECALL                         R6 R6 K15 ["andThen"]
       84 CALL                             R6 3 0
       85 CLOSEUPVALS                      R3
       86 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R3 R3 K1 ["DOWNLOAD_FLOW"]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K5 [Enum.AssetType.Animation]
       10 GETUPVAL                         R7 2
       11 CALL                             R7 0 1
       12 JUMPIFNOT                        R7 ; [+4]
       13 JUMPIFNOTEQKS                    R0 K6 ["AnimationGraph"] ; [+3]
       15 LOADK                            R6 K6 ["AnimationGraph"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 CALL                             R1 5 0
       19 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R4 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R5
        8 GETIMPORT                        R6 K5 [Enum.AssetType.Model]
       10 CALL                             R2 4 0
       11 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R2 R2 K1 ["UPLOAD_FLOW"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["getClonedInstances"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETIMPORT                        R4 K6 [Enum.AssetType.Plugin]
       14 CALL                             R0 4 0
       15 RETURN                           R0 0

PROTO_27:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R2 3
        6 JUMPIFNOT                        R2 ; [+13]
        7 GETUPVAL                         R2 4
        8 GETUPVAL                         R4 5
        9 GETUPVAL                         R5 6
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R2 K0 ["dispatch"]
       13 CALL                             R2 -1 1
       14 MOVE                             R4 R1
       15 MOVE                             R5 R1
       16 NAMECALL                         R2 R2 K1 ["andThen"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R4 7
       22 GETUPVAL                         R5 6
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K0 ["dispatch"]
       26 CALL                             R2 -1 1
       27 MOVE                             R4 R1
       28 MOVE                             R5 R1
       29 NAMECALL                         R2 R2 K1 ["andThen"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.MeshPart]
        2 NEWTABLE                         R2 1 0
        4 GETIMPORT                        R3 K5 [Enum.AssetType.Model]
        6 GETTABLEKS                       R3 R3 K6 ["Name"]
        8 LOADB                            R4 1
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R3 0
       11 MOVE                             R5 R0
       12 NAMECALL                         R3 R3 K7 ["JSONDecode"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R3 K8 ["assetType"]
       17 GETTABLE                         R5 R2 R4
       18 JUMPIFNOT                        R5 ; [+3]
       19 GETIMPORT                        R5 K9 [Enum.AssetType]
       21 GETTABLE                         R1 R5 R4
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R6 R3 K10 ["id"]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K11 ["FLOW_TYPE"]
       28 GETTABLEKS                       R7 R7 K12 ["EDIT_FLOW"]
       30 LOADNIL                          R8
       31 MOVE                             R9 R1
       32 CALL                             R5 4 0
       33 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Store"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 2
        6 LOADNIL                          R2
        7 NEWTABLE                         R3 0 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["thunkMiddleware"]
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R0 3 1
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K1 ["new"]
       19 CALL                             R0 0 1
       20 GETUPVAL                         R1 4
       21 CALL                             R1 0 1
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K1 ["new"]
       25 GETUPVAL                         R3 6
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 7
       28 CALL                             R3 0 1
       29 GETUPVAL                         R4 8
       30 GETTABLEKS                       R4 R4 K1 ["new"]
       32 CALL                             R4 0 1
       33 GETUPVAL                         R5 9
       34 GETTABLEKS                       R5 R5 K3 ["BACKGROUNDS"]
       36 GETUPVAL                         R6 10
       37 GETTABLEKS                       R6 R6 K4 ["SUGGESTIONS"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 GETUPVAL                         R9 11
       42 JUMPIFNOT                        R9 ; [+7]
       43 GETUPVAL                         R9 12
       44 GETTABLEKS                       R9 R9 K5 ["forPlugin"]
       46 LOADK                            R10 K6 ["Toolbox"]
       47 GETUPVAL                         R11 6
       48 CALL                             R9 2 1
       49 MOVE                             R8 R9
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          REF R7
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          REF R8
       54 GETUPVAL                         R10 14
       55 GETUPVAL                         R12 0
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          UPVAL U15
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          UPVAL U17
       60 NAMECALL                         R10 R10 K7 ["setup"]
       62 CALL                             R10 3 0
       63 GETUPVAL                         R10 13
       64 GETTABLEKS                       R10 R10 K8 ["createElement"]
       66 GETUPVAL                         R11 18
       67 DUPTABLE                         R12 K19 [{"plugin", "store", "settings", "theme", "networkInterface", "pluginLoaderContext", "backgrounds", "suggestions", "onPluginWillDestroy", "tryOpenAssetConfig"}]
       68 GETUPVAL                         R13 6
       69 SETTABLEKS                       R13 R12 K9 ["plugin"]
       71 GETUPVAL                         R13 0
       72 SETTABLEKS                       R13 R12 K10 ["store"]
       74 SETTABLEKS                       R2 R12 K11 ["settings"]
       76 SETTABLEKS                       R3 R12 K12 ["theme"]
       78 SETTABLEKS                       R4 R12 K13 ["networkInterface"]
       80 GETUPVAL                         R13 19
       81 SETTABLEKS                       R13 R12 K14 ["pluginLoaderContext"]
       83 SETTABLEKS                       R5 R12 K15 ["backgrounds"]
       85 SETTABLEKS                       R6 R12 K16 ["suggestions"]
       87 SETTABLEKS                       R9 R12 K17 ["onPluginWillDestroy"]
       89 NEWCLOSURE                       R13 P2
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          UPVAL U20
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U21
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U22
       96 SETTABLEKS                       R13 R12 K18 ["tryOpenAssetConfig"]
       98 CALL                             R10 2 1
       99 GETUPVAL                         R11 23
      100 GETTABLEKS                       R11 R11 K1 ["new"]
      102 CALL                             R11 0 1
      103 LOADNIL                          R12
      104 GETUPVAL                         R13 13
      105 GETTABLEKS                       R13 R13 K8 ["createElement"]
      107 GETUPVAL                         R14 24
      108 DUPTABLE                         R15 K24 [{"localization", "plugin", "theme", "store", "settings", "assetAnalytics", "analytics", "ixp"}]
      109 GETUPVAL                         R16 25
      110 SETTABLEKS                       R16 R15 K20 ["localization"]
      112 GETUPVAL                         R16 6
      113 SETTABLEKS                       R16 R15 K9 ["plugin"]
      115 SETTABLEKS                       R3 R15 K12 ["theme"]
      117 GETUPVAL                         R16 0
      118 SETTABLEKS                       R16 R15 K10 ["store"]
      120 SETTABLEKS                       R2 R15 K11 ["settings"]
      122 SETTABLEKS                       R0 R15 K21 ["assetAnalytics"]
      124 SETTABLEKS                       R1 R15 K22 ["analytics"]
      126 SETTABLEKS                       R11 R15 K23 ["ixp"]
      128 NEWTABLE                         R16 0 1
      130 MOVE                             R17 R10
      131 SETLIST                          R16 R17 1 [1]
      133 CALL                             R13 3 1
      134 MOVE                             R12 R13
      135 GETUPVAL                         R13 13
      136 GETTABLEKS                       R13 R13 K25 ["mount"]
      138 MOVE                             R14 R12
      139 CALL                             R13 1 1
      140 MOVE                             R7 R13
      141 JUMPIFNOT                        R8 ; [+6]
      142 LOADK                            R15 K26 ["Roact tree"]
      143 MOVE                             R16 R7
      144 GETUPVAL                         R17 13
      145 NAMECALL                         R13 R8 K27 ["addRoactTree"]
      147 CALL                             R13 4 0
      148 GETUPVAL                         R13 26
      149 CALL                             R13 0 1
      150 JUMPIFNOT                        R13 ; [+18]
      151 GETUPVAL                         R14 19
      152 GETTABLEKS                       R14 R14 K29 ["signals"]
      154 GETTABLEKS                       R13 R14 K28 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      156 NEWCLOSURE                       R15 P3
      157 CAPTURE                          UPVAL U27
      158 CAPTURE                          UPVAL U16
      159 CAPTURE                          UPVAL U28
      160 CAPTURE                          UPVAL U15
      161 CAPTURE                          UPVAL U20
      162 CAPTURE                          UPVAL U0
      163 CAPTURE                          UPVAL U21
      164 CAPTURE                          VAL R4
      165 CAPTURE                          UPVAL U22
      166 NAMECALL                         R13 R13 K30 ["Connect"]
      168 CALL                             R13 2 0
      169 GETUPVAL                         R14 29
      170 CALL                             R14 0 1
      171 JUMPIFNOT                        R14 ; [+2]
      172 LOADK                            R13 K31 ["Toolbox.SaveToRobloxProgress"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R13
      175 GETUPVAL                         R15 19
      176 GETTABLEKS                       R15 R15 K29 ["signals"]
      178 GETTABLEKS                       R14 R15 K32 ["StudioAssetService.OnSaveToRoblox"]
      180 NEWCLOSURE                       R16 P4
      181 CAPTURE                          UPVAL U29
      182 CAPTURE                          VAL R13
      183 CAPTURE                          UPVAL U27
      184 CAPTURE                          UPVAL U15
      185 CAPTURE                          UPVAL U16
      186 CAPTURE                          UPVAL U20
      187 CAPTURE                          UPVAL U0
      188 CAPTURE                          UPVAL U21
      189 CAPTURE                          VAL R4
      190 CAPTURE                          UPVAL U22
      191 NAMECALL                         R14 R14 K30 ["Connect"]
      193 CALL                             R14 2 0
      194 GETUPVAL                         R15 19
      195 GETTABLEKS                       R15 R15 K29 ["signals"]
      197 GETTABLEKS                       R14 R15 K33 ["StudioService.OnImportFromRoblox"]
      199 NEWCLOSURE                       R16 P5
      200 CAPTURE                          UPVAL U15
      201 CAPTURE                          UPVAL U16
      202 CAPTURE                          UPVAL U30
      203 NAMECALL                         R14 R14 K30 ["Connect"]
      205 CALL                             R14 2 0
      206 GETUPVAL                         R15 19
      207 GETTABLEKS                       R15 R15 K29 ["signals"]
      209 GETTABLEKS                       R14 R15 K34 ["StudioService.OnOpenManagePackagePlugin"]
      211 NEWCLOSURE                       R16 P6
      212 CAPTURE                          UPVAL U15
      213 CAPTURE                          UPVAL U16
      214 NAMECALL                         R14 R14 K30 ["Connect"]
      216 CALL                             R14 2 0
      217 GETUPVAL                         R15 19
      218 GETTABLEKS                       R15 R15 K29 ["signals"]
      220 GETTABLEKS                       R14 R15 K35 ["StudioService.OnPublishAsPlugin"]
      222 NEWCLOSURE                       R16 P7
      223 CAPTURE                          UPVAL U15
      224 CAPTURE                          UPVAL U16
      225 CAPTURE                          UPVAL U27
      226 CAPTURE                          UPVAL U20
      227 CAPTURE                          UPVAL U0
      228 CAPTURE                          UPVAL U21
      229 CAPTURE                          VAL R4
      230 CAPTURE                          UPVAL U22
      231 NAMECALL                         R14 R14 K30 ["Connect"]
      233 CALL                             R14 2 0
      234 GETUPVAL                         R15 19
      235 GETTABLEKS                       R15 R15 K29 ["signals"]
      237 GETTABLEKS                       R14 R15 K36 ["MemStorageService.OpenAssetConfiguration"]
      239 NEWCLOSURE                       R16 P8
      240 CAPTURE                          UPVAL U31
      241 CAPTURE                          UPVAL U15
      242 CAPTURE                          UPVAL U16
      243 NAMECALL                         R14 R14 K30 ["Connect"]
      245 CALL                             R14 2 0
      246 GETUPVAL                         R14 32
      247 GETTABLEKS                       R14 R14 K37 ["registerLocalization"]
      249 GETUPVAL                         R15 25
      250 CALL                             R14 1 0
      251 GETUPVAL                         R14 32
      252 GETTABLEKS                       R14 R14 K38 ["registerProcessDragHandler"]
      254 GETUPVAL                         R15 6
      255 CALL                             R14 1 0
      256 CLOSEUPVALS                      R7
      257 RETURN                           R0 0

PROTO_30:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [script]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R2 R2 K2 ["Parent"]
        8 GETTABLEKS                       R3 R2 K3 ["Src"]
       10 GETTABLEKS                       R3 R3 K4 ["Util"]
       12 GETIMPORT                        R4 K6 [game]
       14 LOADK                            R6 K7 ["DebugToolboxEnableRoactChecks"]
       15 NAMECALL                         R4 R4 K8 ["GetFastFlag"]
       17 CALL                             R4 2 1
       18 GETIMPORT                        R5 K6 [game]
       20 LOADK                            R7 K9 ["DebugToolboxGetRolesRequest"]
       21 NAMECALL                         R5 R5 K8 ["GetFastFlag"]
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K6 [game]
       26 LOADK                            R8 K10 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       27 NAMECALL                         R6 R6 K8 ["GetFastFlag"]
       29 CALL                             R6 2 1
       30 GETIMPORT                        R7 K6 [game]
       32 LOADK                            R9 K11 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       33 NAMECALL                         R7 R7 K8 ["GetFastFlag"]
       35 CALL                             R7 2 1
       36 GETIMPORT                        R8 K13 [require]
       38 GETTABLEKS                       R9 R2 K3 ["Src"]
       40 GETTABLEKS                       R9 R9 K14 ["Flags"]
       42 GETTABLEKS                       R9 R9 K15 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K13 [require]
       47 GETTABLEKS                       R10 R2 K3 ["Src"]
       49 GETTABLEKS                       R10 R10 K14 ["Flags"]
       51 GETTABLEKS                       R10 R10 K16 ["getFFlagToolboxAssetConfigGroupOwnership"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K13 [require]
       56 GETTABLEKS                       R11 R2 K3 ["Src"]
       58 GETTABLEKS                       R11 R11 K4 ["Util"]
       60 GETTABLEKS                       R11 R11 K17 ["SharedFlags"]
       62 GETTABLEKS                       R11 R11 K18 ["getFFlagToolboxAssetConfigOnboardingLink"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K13 [require]
       67 GETTABLEKS                       R12 R2 K3 ["Src"]
       69 GETTABLEKS                       R12 R12 K14 ["Flags"]
       71 GETTABLEKS                       R12 R12 K19 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K13 [require]
       76 GETTABLEKS                       R13 R2 K3 ["Src"]
       78 GETTABLEKS                       R13 R13 K14 ["Flags"]
       80 GETTABLEKS                       R13 R13 K20 ["getFFlagEnableUploadingAvatarAnimations"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K13 [require]
       85 GETTABLEKS                       R14 R2 K3 ["Src"]
       87 GETTABLEKS                       R14 R14 K14 ["Flags"]
       89 GETTABLEKS                       R14 R14 K21 ["getEngineFeatureToolboxPassThroughAssetType"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K13 [require]
       94 GETTABLEKS                       R15 R3 K22 ["isCli"]
       96 CALL                             R14 1 1
       97 MOVE                             R15 R14
       98 CALL                             R15 0 1
       99 JUMPIFNOT                        R15 ; [+1]
      100 RETURN                           R0 0
      101 GETIMPORT                        R15 K6 [game]
      103 LOADK                            R17 K23 ["StudioService"]
      104 NAMECALL                         R15 R15 K24 ["GetService"]
      106 CALL                             R15 2 1
      107 NAMECALL                         R16 R15 K25 ["HasInternalPermission"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R2 K26 ["Packages"]
      112 GETIMPORT                        R18 K13 [require]
      114 GETTABLEKS                       R19 R17 K27 ["Roact"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K13 [require]
      119 GETTABLEKS                       R20 R17 K28 ["Framework"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K13 [require]
      124 GETTABLEKS                       R21 R17 K29 ["Dev"]
      126 GETTABLEKS                       R21 R21 K30 ["DeveloperTools"]
      128 CALL                             R20 1 1
      129 JUMPIFNOT                        R4 ; [+13]
      130 GETTABLEKS                       R21 R18 K31 ["setGlobalConfig"]
      132 DUPTABLE                         R22 K35 [{"elementTracing", "propValidation", "typeChecks"}]
      133 LOADB                            R23 1
      134 SETTABLEKS                       R23 R22 K32 ["elementTracing"]
      136 LOADB                            R23 1
      137 SETTABLEKS                       R23 R22 K33 ["propValidation"]
      139 LOADB                            R23 1
      140 SETTABLEKS                       R23 R22 K34 ["typeChecks"]
      142 CALL                             R21 1 0
      143 GETIMPORT                        R21 K13 [require]
      145 GETTABLEKS                       R22 R17 K36 ["Rodux"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K13 [require]
      150 GETTABLEKS                       R23 R3 K37 ["InsertAsset"]
      152 CALL                             R22 1 1
      153 GETIMPORT                        R23 K13 [require]
      155 GETTABLEKS                       R24 R3 K38 ["Analytics"]
      157 GETTABLEKS                       R24 R24 K39 ["AssetAnalyticsContextItem"]
      159 CALL                             R23 1 1
      160 GETIMPORT                        R24 K13 [require]
      162 GETTABLEKS                       R25 R3 K40 ["DebugFlags"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K13 [require]
      167 GETTABLEKS                       R26 R3 K41 ["Settings"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K13 [require]
      172 GETTABLEKS                       R27 R3 K42 ["ToolboxTheme"]
      174 CALL                             R26 1 1
      175 GETIMPORT                        R27 K13 [require]
      177 GETTABLEKS                       R28 R3 K43 ["AssetConfigTheme"]
      179 CALL                             R27 1 1
      180 GETIMPORT                        R28 K13 [require]
      182 GETTABLEKS                       R29 R3 K44 ["AssetConfigConstants"]
      184 CALL                             R28 1 1
      185 GETIMPORT                        R29 K13 [require]
      187 GETTABLEKS                       R30 R3 K45 ["AssetConfigUtil"]
      189 CALL                             R29 1 1
      190 GETIMPORT                        R30 K13 [require]
      192 GETTABLEKS                       R31 R3 K38 ["Analytics"]
      194 GETTABLEKS                       R31 R31 K46 ["makeToolboxAnalyticsContext"]
      196 CALL                             R30 1 1
      197 GETIMPORT                        R31 K13 [require]
      199 GETTABLEKS                       R32 R2 K3 ["Src"]
      201 GETTABLEKS                       R32 R32 K47 ["ContextServices"]
      203 GETTABLEKS                       R32 R32 K48 ["IXPContext"]
      205 CALL                             R31 1 1
      206 GETTABLEKS                       R32 R24 K49 ["shouldDebugWarnings"]
      208 CALL                             R32 0 1
      209 JUMPIFNOT                        R32 ; [+13]
      210 GETIMPORT                        R32 K13 [require]
      212 GETTABLEKS                       R33 R17 K28 ["Framework"]
      214 CALL                             R32 1 1
      215 GETTABLEKS                       R32 R32 K4 ["Util"]
      217 GETTABLEKS                       R32 R32 K50 ["Promise"]
      219 GETIMPORT                        R33 K52 [warn]
      221 SETTABLEKS                       R33 R32 K53 ["onUnhandledRejection"]
      223 GETIMPORT                        R32 K13 [require]
      225 GETTABLEKS                       R33 R2 K3 ["Src"]
      227 GETTABLEKS                       R33 R33 K54 ["Types"]
      229 GETTABLEKS                       R33 R33 K55 ["Background"]
      231 CALL                             R32 1 1
      232 GETIMPORT                        R33 K13 [require]
      234 GETTABLEKS                       R34 R2 K3 ["Src"]
      236 GETTABLEKS                       R34 R34 K54 ["Types"]
      238 GETTABLEKS                       R34 R34 K56 ["Suggestion"]
      240 CALL                             R33 1 1
      241 GETIMPORT                        R34 K13 [require]
      243 GETTABLEKS                       R35 R2 K3 ["Src"]
      245 GETTABLEKS                       R35 R35 K54 ["Types"]
      247 GETTABLEKS                       R35 R35 K57 ["ConfigTypes"]
      249 CALL                             R34 1 1
      250 GETIMPORT                        R35 K13 [require]
      252 GETTABLEKS                       R36 R2 K3 ["Src"]
      254 GETTABLEKS                       R36 R36 K58 ["Components"]
      256 GETTABLEKS                       R36 R36 K59 ["ToolboxPlugin"]
      258 CALL                             R35 1 1
      259 GETIMPORT                        R36 K13 [require]
      261 GETTABLEKS                       R37 R2 K3 ["Src"]
      263 GETTABLEKS                       R37 R37 K4 ["Util"]
      265 GETTABLEKS                       R37 R37 K60 ["ToolboxUtilities"]
      267 CALL                             R36 1 1
      268 GETTABLEKS                       R36 R36 K61 ["getToolboxEnabled"]
      270 GETIMPORT                        R37 K13 [require]
      272 GETTABLEKS                       R38 R2 K3 ["Src"]
      274 GETTABLEKS                       R38 R38 K4 ["Util"]
      276 GETTABLEKS                       R38 R38 K62 ["ToolboxCommunication"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K13 [require]
      281 GETTABLEKS                       R39 R2 K3 ["Src"]
      283 GETTABLEKS                       R39 R39 K63 ["Reducers"]
      285 GETTABLEKS                       R39 R39 K64 ["ToolboxReducer"]
      287 CALL                             R38 1 1
      288 GETIMPORT                        R39 K13 [require]
      290 GETTABLEKS                       R40 R2 K3 ["Src"]
      292 GETTABLEKS                       R40 R40 K63 ["Reducers"]
      294 GETTABLEKS                       R40 R40 K65 ["AssetConfigReducer"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K13 [require]
      299 GETTABLEKS                       R41 R2 K3 ["Src"]
      301 GETTABLEKS                       R41 R41 K66 ["Networking"]
      303 GETTABLEKS                       R41 R41 K67 ["NetworkInterface"]
      305 CALL                             R40 1 1
      306 GETIMPORT                        R41 K13 [require]
      308 GETTABLEKS                       R42 R2 K3 ["Src"]
      310 GETTABLEKS                       R42 R42 K58 ["Components"]
      312 GETTABLEKS                       R42 R42 K68 ["AssetConfiguration"]
      314 GETTABLEKS                       R42 R42 K69 ["AssetConfigWrapper"]
      316 CALL                             R41 1 1
      317 GETIMPORT                        R42 K13 [require]
      319 GETTABLEKS                       R43 R2 K3 ["Src"]
      321 GETTABLEKS                       R43 R43 K58 ["Components"]
      323 GETTABLEKS                       R43 R43 K70 ["ToolboxServiceWrapper"]
      325 CALL                             R42 1 1
      326 GETIMPORT                        R43 K13 [require]
      328 GETTABLEKS                       R44 R2 K3 ["Src"]
      330 GETTABLEKS                       R44 R44 K66 ["Networking"]
      332 GETTABLEKS                       R44 R44 K71 ["Requests"]
      334 GETTABLEKS                       R44 R44 K72 ["GetRolesRequest"]
      336 CALL                             R43 1 1
      337 GETIMPORT                        R44 K13 [require]
      339 GETTABLEKS                       R45 R2 K3 ["Src"]
      341 GETTABLEKS                       R45 R45 K66 ["Networking"]
      343 GETTABLEKS                       R45 R45 K71 ["Requests"]
      345 GETTABLEKS                       R45 R45 K73 ["GetRolesDebugRequest"]
      347 CALL                             R44 1 1
      348 GETTABLEKS                       R45 R19 K47 ["ContextServices"]
      350 GETTABLEKS                       R46 R19 K4 ["Util"]
      352 GETTABLEKS                       R46 R46 K74 ["ThunkWithArgsMiddleware"]
      354 GETIMPORT                        R47 K13 [require]
      356 GETTABLEKS                       R48 R17 K75 ["Dash"]
      358 CALL                             R47 1 1
      359 GETTABLEKS                       R48 R47 K76 ["find"]
      361 GETTABLEKS                       R49 R2 K77 ["Resources"]
      363 GETTABLEKS                       R49 R49 K78 ["Localization"]
      365 GETTABLEKS                       R49 R49 K79 ["SourceStrings"]
      367 GETTABLEKS                       R50 R2 K77 ["Resources"]
      369 GETTABLEKS                       R50 R50 K78 ["Localization"]
      371 GETTABLEKS                       R50 R50 K80 ["LocalizedStrings"]
      373 GETIMPORT                        R51 K6 [game]
      375 LOADK                            R53 K81 ["HttpService"]
      376 NAMECALL                         R51 R51 K24 ["GetService"]
      378 CALL                             R51 2 1
      379 GETIMPORT                        R52 K6 [game]
      381 LOADK                            R54 K82 ["RobloxPluginGuiService"]
      382 NAMECALL                         R52 R52 K24 ["GetService"]
      384 CALL                             R52 2 1
      385 GETIMPORT                        R53 K6 [game]
      387 LOADK                            R55 K83 ["StudioAssetService"]
      388 NAMECALL                         R53 R53 K24 ["GetService"]
      390 CALL                             R53 2 1
      391 MOVE                             R54 R36
      392 CALL                             R54 0 1
      393 JUMPIF                           R54 ; [+1]
      394 RETURN                           R0 0
      395 GETTABLEKS                       R54 R45 K78 ["Localization"]
      397 GETTABLEKS                       R54 R54 K84 ["new"]
      399 DUPTABLE                         R55 K89 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
      400 SETTABLEKS                       R49 R55 K85 ["stringResourceTable"]
      402 SETTABLEKS                       R50 R55 K86 ["translationResourceTable"]
      404 LOADK                            R56 K90 ["Toolbox"]
      405 SETTABLEKS                       R56 R55 K87 ["pluginName"]
      407 NEWTABLE                         R56 1 0
      409 GETTABLEKS                       R57 R19 K77 ["Resources"]
      411 GETTABLEKS                       R57 R57 K91 ["LOCALIZATION_PROJECT_NAME"]
      413 DUPTABLE                         R58 K92 [{"stringResourceTable", "translationResourceTable"}]
      414 GETTABLEKS                       R59 R19 K77 ["Resources"]
      416 GETTABLEKS                       R59 R59 K79 ["SourceStrings"]
      418 SETTABLEKS                       R59 R58 K85 ["stringResourceTable"]
      420 GETTABLEKS                       R59 R19 K77 ["Resources"]
      422 GETTABLEKS                       R59 R59 K80 ["LocalizedStrings"]
      424 SETTABLEKS                       R59 R58 K86 ["translationResourceTable"]
      426 SETTABLE                         R58 R56 R57
      427 SETTABLEKS                       R56 R55 K88 ["libraries"]
      429 CALL                             R54 1 1
      430 NEWCLOSURE                       R55 P0
      431 CAPTURE                          VAL R26
      432 NEWCLOSURE                       R56 P1
      433 CAPTURE                          VAL R27
      434 LOADNIL                          R57
      435 LOADNIL                          R58
      436 NEWCLOSURE                       R59 P2
      437 CAPTURE                          REF R58
      438 CAPTURE                          REF R57
      439 CAPTURE                          VAL R48
      440 CAPTURE                          VAL R29
      441 CAPTURE                          VAL R34
      442 CAPTURE                          VAL R28
      443 CAPTURE                          VAL R46
      444 CAPTURE                          VAL R53
      445 CAPTURE                          VAL R21
      446 CAPTURE                          VAL R39
      447 CAPTURE                          VAL R6
      448 CAPTURE                          VAL R7
      449 CAPTURE                          VAL R13
      450 CAPTURE                          VAL R12
      451 CAPTURE                          VAL R11
      452 CAPTURE                          VAL R10
      453 CAPTURE                          VAL R56
      454 CAPTURE                          VAL R40
      455 CAPTURE                          VAL R52
      456 CAPTURE                          VAL R18
      457 CAPTURE                          VAL R15
      458 CAPTURE                          VAL R31
      459 CAPTURE                          VAL R41
      460 CAPTURE                          VAL R0
      461 CAPTURE                          VAL R42
      462 CAPTURE                          VAL R54
      463 NEWCLOSURE                       R60 P3
      464 CAPTURE                          REF R58
      465 CAPTURE                          REF R57
      466 CAPTURE                          VAL R48
      467 CAPTURE                          VAL R29
      468 CAPTURE                          VAL R34
      469 CAPTURE                          VAL R28
      470 CAPTURE                          VAL R46
      471 CAPTURE                          VAL R53
      472 CAPTURE                          VAL R21
      473 CAPTURE                          VAL R39
      474 CAPTURE                          VAL R6
      475 CAPTURE                          VAL R7
      476 CAPTURE                          VAL R13
      477 CAPTURE                          VAL R12
      478 CAPTURE                          VAL R11
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R56
      481 CAPTURE                          VAL R40
      482 CAPTURE                          VAL R52
      483 CAPTURE                          VAL R18
      484 CAPTURE                          VAL R15
      485 CAPTURE                          VAL R31
      486 CAPTURE                          VAL R41
      487 CAPTURE                          VAL R9
      488 CAPTURE                          VAL R0
      489 CAPTURE                          VAL R42
      490 CAPTURE                          VAL R54
      491 NEWCLOSURE                       R61 P4
      492 CAPTURE                          VAL R8
      493 CAPTURE                          VAL R60
      494 CAPTURE                          VAL R13
      495 CAPTURE                          VAL R11
      496 CAPTURE                          VAL R9
      497 CAPTURE                          VAL R59
      498 NEWCLOSURE                       R62 P5
      499 CAPTURE                          REF R57
      500 CAPTURE                          VAL R21
      501 CAPTURE                          VAL R38
      502 CAPTURE                          VAL R23
      503 CAPTURE                          VAL R30
      504 CAPTURE                          VAL R25
      505 CAPTURE                          VAL R0
      506 CAPTURE                          VAL R55
      507 CAPTURE                          VAL R40
      508 CAPTURE                          VAL R32
      509 CAPTURE                          VAL R33
      510 CAPTURE                          VAL R16
      511 CAPTURE                          VAL R20
      512 CAPTURE                          VAL R18
      513 CAPTURE                          VAL R37
      514 CAPTURE                          VAL R61
      515 CAPTURE                          VAL R28
      516 CAPTURE                          VAL R34
      517 CAPTURE                          VAL R35
      518 CAPTURE                          VAL R1
      519 CAPTURE                          VAL R5
      520 CAPTURE                          VAL R44
      521 CAPTURE                          VAL R43
      522 CAPTURE                          VAL R31
      523 CAPTURE                          VAL R42
      524 CAPTURE                          VAL R54
      525 CAPTURE                          VAL R8
      526 CAPTURE                          VAL R29
      527 CAPTURE                          VAL R53
      528 CAPTURE                          VAL R11
      529 CAPTURE                          VAL R13
      530 CAPTURE                          VAL R51
      531 CAPTURE                          VAL R22
      532 MOVE                             R63 R62
      533 CALL                             R63 0 0
      534 CLOSEUPVALS                      R57
      535 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_30]
        2 RETURN                           R0 1
