PROTO_0:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Studio"]
        5 GETTABLEKS                       R0 R1 K3 ["Theme"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{"getTheme", "isDarkerTheme", "themeChanged"}]
        4 DUPCLOSURE                       R2 K5 [PROTO_0]
        5 SETTABLEKS                       R2 R1 K1 ["getTheme"]
        7 DUPCLOSURE                       R2 K6 [PROTO_1]
        8 SETTABLEKS                       R2 R1 K2 ["isDarkerTheme"]
       10 GETIMPORT                        R4 K8 [settings]
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R3 R4 K9 ["Studio"]
       15 GETTABLEKS                       R2 R3 K10 ["ThemeChanged"]
       17 SETTABLEKS                       R2 R1 K3 ["themeChanged"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Studio"]
        5 GETTABLEKS                       R0 R1 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"getTheme", "themeChanged"}]
        4 DUPCLOSURE                       R2 K4 [PROTO_3]
        5 SETTABLEKS                       R2 R1 K1 ["getTheme"]
        7 GETIMPORT                        R4 K6 [settings]
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R3 R4 K7 ["Studio"]
       12 GETTABLEKS                       R2 R3 K8 ["ThemeChanged"]
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
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K4 ["unmount"]
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
        0 GETUPVAL                         R7 0
        1 JUMPIFNOT                        R7 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R7 0 0
        5 NEWTABLE                         R8 0 0
        7 NEWTABLE                         R9 0 0
        9 NEWTABLE                         R10 0 0
       11 NEWTABLE                         R11 0 0
       13 GETUPVAL                         R13 1
       14 CALL                             R13 0 1
       15 JUMPIFNOT                        R13 ; [+2]
       16 LOADNIL                          R12
       17 JUMP                             ; [+1]
       18 LOADB                            R12 0
       19 GETUPVAL                         R14 1
       20 CALL                             R14 0 1
       21 JUMPIFNOT                        R14 ; [+2]
       22 LOADNIL                          R13
       23 JUMP                             ; [+2]
       24 NEWTABLE                         R13 0 0
       26 GETUPVAL                         R15 1
       27 CALL                             R15 0 1
       28 JUMPIFNOT                        R15 ; [+2]
       29 LOADNIL                          R14
       30 JUMP                             ; [+1]
       31 LOADN                            R14 0
       32 LOADB                            R15 0
       33 LOADNIL                          R16
       34 GETUPVAL                         R17 2
       35 JUMPIFNOT                        R17 ; [+47]
       36 GETUPVAL                         R17 2
       37 NAMECALL                         R17 R17 K0 ["getState"]
       39 CALL                             R17 1 1
       40 MOVE                             R16 R17
       41 GETTABLEKS                       R17 R16 K1 ["roles"]
       43 GETTABLEKS                       R7 R17 K2 ["allowedAssetTypesForRelease"]
       45 GETTABLEKS                       R17 R16 K1 ["roles"]
       47 GETTABLEKS                       R8 R17 K3 ["allowedAssetTypesForUpload"]
       49 GETTABLEKS                       R17 R16 K1 ["roles"]
       51 GETTABLEKS                       R9 R17 K4 ["allowedAssetTypesForFree"]
       53 GETTABLEKS                       R17 R16 K1 ["roles"]
       55 GETTABLEKS                       R10 R17 K5 ["allowedBundleTypeSettings"]
       57 GETTABLEKS                       R17 R16 K6 ["packages"]
       59 GETTABLEKS                       R11 R17 K7 ["permissionsTable"]
       61 GETUPVAL                         R17 1
       62 CALL                             R17 0 1
       63 JUMPIF                           R17 ; [+12]
       64 GETTABLEKS                       R17 R16 K8 ["itemTags"]
       66 GETTABLEKS                       R12 R17 K9 ["isItemTagsFeatureEnabled"]
       68 GETTABLEKS                       R17 R16 K8 ["itemTags"]
       70 GETTABLEKS                       R13 R17 K10 ["enabledAssetTypesForItemTags"]
       72 GETTABLEKS                       R17 R16 K8 ["itemTags"]
       74 GETTABLEKS                       R14 R17 K11 ["maximumItemTagsPerItem"]
       76 GETUPVAL                         R17 3
       77 CALL                             R17 0 1
       78 JUMPIFNOT                        R17 ; [+4]
       79 GETTABLEKS                       R17 R16 K1 ["roles"]
       81 GETTABLEKS                       R15 R17 K12 ["groupBundlesUploadEnabledForUser"]
       83 LOADNIL                          R17
       84 JUMPIFNOT                        R16 ; [+8]
       85 GETTABLEKS                       R19 R16 K13 ["assets"]
       87 JUMPIFNOT                        R19 ; [+5]
       88 GETTABLEKS                       R19 R16 K13 ["assets"]
       90 GETTABLEKS                       R18 R19 K14 ["idToAssetMap"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R18
       94 JUMPIFNOT                        R18 ; [+15]
       95 GETUPVAL                         R19 4
       96 MOVE                             R20 R18
       97 NEWCLOSURE                       R21 P0
       98 CAPTURE                          VAL R0
       99 CALL                             R19 2 1
      100 JUMPIFNOT                        R19 ; [+8]
      101 GETTABLEKS                       R20 R19 K15 ["Asset"]
      103 JUMPIFNOT                        R20 ; [+5]
      104 GETTABLEKS                       R20 R19 K15 ["Asset"]
      106 GETTABLEKS                       R17 R20 K16 ["AssetMediaIds"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R17
      110 GETUPVAL                         R20 5
      111 GETTABLEKS                       R19 R20 K17 ["getFlowStartScreen"]
      113 MOVE                             R20 R1
      114 MOVE                             R21 R7
      115 CALL                             R19 2 1
      116 JUMPIFNOTEQKNIL                  R6 ; [+6]
      118 GETUPVAL                         R20 6
      119 NAMECALL                         R20 R20 K18 ["getDefaultTab"]
      121 CALL                             R20 1 1
      122 MOVE                             R6 R20
      123 GETUPVAL                         R22 7
      124 GETTABLEKS                       R21 R22 K19 ["FLOW_TYPE"]
      126 GETTABLEKS                       R20 R21 K20 ["DOWNLOAD_FLOW"]
      128 JUMPIFNOTEQ                      R1 R20 ; [+6]
      130 GETUPVAL                         R20 6
      131 NAMECALL                         R20 R20 K21 ["getOverrideTab"]
      133 CALL                             R20 1 1
      134 MOVE                             R6 R20
      135 NEWTABLE                         R20 0 1
      137 GETUPVAL                         R21 8
      138 DUPTABLE                         R22 K23 [{"StudioAssetService"}]
      139 GETUPVAL                         R23 9
      140 SETTABLEKS                       R23 R22 K22 ["StudioAssetService"]
      142 CALL                             R21 1 -1
      143 SETLIST                          R20 R21 -1 [1]
      145 GETUPVAL                         R23 10
      146 GETTABLEKS                       R22 R23 K24 ["Store"]
      148 GETTABLEKS                       R21 R22 K25 ["new"]
      150 GETUPVAL                         R22 11
      151 DUPTABLE                         R23 K41 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      152 SETTABLEKS                       R0 R23 K26 ["assetId"]
      154 SETTABLEKS                       R17 R23 K27 ["assetMediaIds"]
      156 SETTABLEKS                       R1 R23 K28 ["screenFlowType"]
      158 SETTABLEKS                       R19 R23 K29 ["currentScreen"]
      160 SETTABLEKS                       R2 R23 K30 ["instances"]
      162 GETUPVAL                         R25 12
      163 JUMPIF                           R25 ; [+2]
      164 GETUPVAL                         R25 13
      165 JUMPIFNOT                        R25 ; [+2]
      166 MOVE                             R24 R4
      167 JUMPIF                           R24 ; [+1]
      168 LOADNIL                          R24
      169 SETTABLEKS                       R24 R23 K31 ["sourceInstances"]
      171 SETTABLEKS                       R7 R23 K2 ["allowedAssetTypesForRelease"]
      173 SETTABLEKS                       R8 R23 K3 ["allowedAssetTypesForUpload"]
      175 SETTABLEKS                       R9 R23 K4 ["allowedAssetTypesForFree"]
      177 SETTABLEKS                       R10 R23 K5 ["allowedBundleTypeSettings"]
      179 NEWTABLE                         R24 0 0
      181 SETTABLEKS                       R24 R23 K32 ["idToFiatProductMap"]
      183 GETUPVAL                         R25 1
      184 CALL                             R25 0 1
      185 JUMPIFNOT                        R25 ; [+2]
      186 LOADNIL                          R24
      187 JUMP                             ; [+1]
      188 MOVE                             R24 R12
      189 SETTABLEKS                       R24 R23 K9 ["isItemTagsFeatureEnabled"]
      191 GETUPVAL                         R25 1
      192 CALL                             R25 0 1
      193 JUMPIFNOT                        R25 ; [+2]
      194 LOADNIL                          R24
      195 JUMP                             ; [+1]
      196 MOVE                             R24 R13
      197 SETTABLEKS                       R24 R23 K10 ["enabledAssetTypesForItemTags"]
      199 GETUPVAL                         R25 1
      200 CALL                             R25 0 1
      201 JUMPIFNOT                        R25 ; [+2]
      202 LOADNIL                          R24
      203 JUMP                             ; [+1]
      204 MOVE                             R24 R14
      205 SETTABLEKS                       R24 R23 K11 ["maximumItemTagsPerItem"]
      207 DUPTABLE                         R24 K44 [{"inProgress", "queued"}]
      208 NEWTABLE                         R25 0 0
      210 SETTABLEKS                       R25 R24 K42 ["inProgress"]
      212 NEWTABLE                         R25 0 0
      214 SETTABLEKS                       R25 R24 K43 ["queued"]
      216 SETTABLEKS                       R24 R23 K33 ["rollingAssetPermissionRequests"]
      218 SETTABLEKS                       R3 R23 K34 ["assetTypeEnum"]
      220 SETTABLEKS                       R6 R23 K35 ["currentTab"]
      222 SETTABLEKS                       R11 R23 K36 ["packagePermissions"]
      224 NEWTABLE                         R24 0 0
      226 SETTABLEKS                       R24 R23 K37 ["overrideCursor"]
      228 LOADB                            R24 0
      229 SETTABLEKS                       R24 R23 K38 ["deleteLocal"]
      231 SETTABLEKS                       R5 R23 K39 ["hasSubsequent"]
      233 GETUPVAL                         R25 14
      234 CALL                             R25 0 1
      235 JUMPIFNOT                        R25 ; [+3]
      236 NEWTABLE                         R24 0 0
      238 JUMP                             ; [+1]
      239 LOADNIL                          R24
      240 SETTABLEKS                       R24 R23 K40 ["sellerStatusData"]
      242 GETUPVAL                         R25 3
      243 CALL                             R25 0 1
      244 JUMPIFNOT                        R25 ; [+2]
      245 MOVE                             R24 R15
      246 JUMP                             ; [+1]
      247 LOADNIL                          R24
      248 SETTABLEKS                       R24 R23 K12 ["groupBundlesUploadEnabledForUser"]
      250 MOVE                             R24 R20
      251 CALL                             R21 3 1
      252 GETUPVAL                         R22 15
      253 CALL                             R22 0 1
      254 GETUPVAL                         R24 16
      255 GETTABLEKS                       R23 R24 K25 ["new"]
      257 CALL                             R23 0 1
      258 NEWCLOSURE                       R24 P1
      259 CAPTURE                          UPVAL U0
      260 CAPTURE                          UPVAL U17
      261 CAPTURE                          UPVAL U18
      262 CAPTURE                          UPVAL U19
      263 GETUPVAL                         R26 13
      264 JUMPIFNOT                        R26 ; [+5]
      265 GETUPVAL                         R26 20
      266 GETTABLEKS                       R25 R26 K25 ["new"]
      268 CALL                             R25 0 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R25
      271 GETUPVAL                         R27 18
      272 GETTABLEKS                       R26 R27 K45 ["createElement"]
      274 GETUPVAL                         R27 21
      275 DUPTABLE                         R28 K51 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      276 SETTABLEKS                       R0 R28 K26 ["assetId"]
      278 SETTABLEKS                       R3 R28 K34 ["assetTypeEnum"]
      280 GETUPVAL                         R29 22
      281 SETTABLEKS                       R29 R28 K46 ["plugin"]
      283 SETTABLEKS                       R21 R28 K47 ["store"]
      285 SETTABLEKS                       R22 R28 K48 ["theme"]
      287 SETTABLEKS                       R23 R28 K49 ["networkInterface"]
      289 SETTABLEKS                       R24 R28 K50 ["onAssetConfigDestroy"]
      291 CALL                             R26 2 1
      292 GETUPVAL                         R28 18
      293 GETTABLEKS                       R27 R28 K45 ["createElement"]
      295 GETUPVAL                         R28 23
      296 DUPTABLE                         R29 K55 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      297 GETUPVAL                         R31 13
      298 JUMPIFNOT                        R31 ; [+2]
      299 MOVE                             R30 R25
      300 JUMP                             ; [+1]
      301 LOADNIL                          R30
      302 SETTABLEKS                       R30 R29 K52 ["ixp"]
      304 GETUPVAL                         R30 24
      305 SETTABLEKS                       R30 R29 K53 ["localization"]
      307 GETUPVAL                         R30 22
      308 SETTABLEKS                       R30 R29 K46 ["plugin"]
      310 SETTABLEKS                       R22 R29 K48 ["theme"]
      312 SETTABLEKS                       R21 R29 K47 ["store"]
      314 GETIMPORT                        R30 K56 [settings]
      316 SETTABLEKS                       R30 R29 K54 ["settings"]
      318 NEWTABLE                         R30 0 1
      320 MOVE                             R31 R26
      321 SETLIST                          R30 R31 1 [1]
      323 CALL                             R27 3 1
      324 GETUPVAL                         R29 18
      325 GETTABLEKS                       R28 R29 K57 ["mount"]
      327 MOVE                             R29 R27
      328 CALL                             R28 1 1
      329 SETUPVAL                         R28 0
      330 RETURN                           R0 0

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
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K4 ["unmount"]
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
        0 GETUPVAL                         R8 0
        1 JUMPIFNOT                        R8 ; [+2]
        2 LOADNIL                          R8
        3 RETURN                           R8 1
        4 NEWTABLE                         R8 0 0
        6 NEWTABLE                         R9 0 0
        8 NEWTABLE                         R10 0 0
       10 NEWTABLE                         R11 0 0
       12 NEWTABLE                         R12 0 0
       14 GETUPVAL                         R14 1
       15 CALL                             R14 0 1
       16 JUMPIFNOT                        R14 ; [+2]
       17 LOADNIL                          R13
       18 JUMP                             ; [+1]
       19 LOADB                            R13 0
       20 GETUPVAL                         R15 1
       21 CALL                             R15 0 1
       22 JUMPIFNOT                        R15 ; [+2]
       23 LOADNIL                          R14
       24 JUMP                             ; [+2]
       25 NEWTABLE                         R14 0 0
       27 GETUPVAL                         R16 1
       28 CALL                             R16 0 1
       29 JUMPIFNOT                        R16 ; [+2]
       30 LOADNIL                          R15
       31 JUMP                             ; [+1]
       32 LOADN                            R15 0
       33 LOADB                            R16 0
       34 LOADNIL                          R17
       35 GETUPVAL                         R18 2
       36 JUMPIFNOT                        R18 ; [+47]
       37 GETUPVAL                         R18 2
       38 NAMECALL                         R18 R18 K0 ["getState"]
       40 CALL                             R18 1 1
       41 MOVE                             R17 R18
       42 GETTABLEKS                       R18 R17 K1 ["roles"]
       44 GETTABLEKS                       R8 R18 K2 ["allowedAssetTypesForRelease"]
       46 GETTABLEKS                       R18 R17 K1 ["roles"]
       48 GETTABLEKS                       R9 R18 K3 ["allowedAssetTypesForUpload"]
       50 GETTABLEKS                       R18 R17 K1 ["roles"]
       52 GETTABLEKS                       R10 R18 K4 ["allowedAssetTypesForFree"]
       54 GETTABLEKS                       R18 R17 K1 ["roles"]
       56 GETTABLEKS                       R11 R18 K5 ["allowedBundleTypeSettings"]
       58 GETTABLEKS                       R18 R17 K6 ["packages"]
       60 GETTABLEKS                       R12 R18 K7 ["permissionsTable"]
       62 GETUPVAL                         R18 1
       63 CALL                             R18 0 1
       64 JUMPIF                           R18 ; [+12]
       65 GETTABLEKS                       R18 R17 K8 ["itemTags"]
       67 GETTABLEKS                       R13 R18 K9 ["isItemTagsFeatureEnabled"]
       69 GETTABLEKS                       R18 R17 K8 ["itemTags"]
       71 GETTABLEKS                       R14 R18 K10 ["enabledAssetTypesForItemTags"]
       73 GETTABLEKS                       R18 R17 K8 ["itemTags"]
       75 GETTABLEKS                       R15 R18 K11 ["maximumItemTagsPerItem"]
       77 GETUPVAL                         R18 3
       78 CALL                             R18 0 1
       79 JUMPIFNOT                        R18 ; [+4]
       80 GETTABLEKS                       R18 R17 K1 ["roles"]
       82 GETTABLEKS                       R16 R18 K12 ["groupBundlesUploadEnabledForUser"]
       84 LOADNIL                          R18
       85 JUMPIFNOT                        R17 ; [+8]
       86 GETTABLEKS                       R20 R17 K13 ["assets"]
       88 JUMPIFNOT                        R20 ; [+5]
       89 GETTABLEKS                       R20 R17 K13 ["assets"]
       91 GETTABLEKS                       R19 R20 K14 ["idToAssetMap"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R19
       95 JUMPIFNOT                        R19 ; [+15]
       96 GETUPVAL                         R20 4
       97 MOVE                             R21 R19
       98 NEWCLOSURE                       R22 P0
       99 CAPTURE                          VAL R0
      100 CALL                             R20 2 1
      101 JUMPIFNOT                        R20 ; [+8]
      102 GETTABLEKS                       R21 R20 K15 ["Asset"]
      104 JUMPIFNOT                        R21 ; [+5]
      105 GETTABLEKS                       R21 R20 K15 ["Asset"]
      107 GETTABLEKS                       R18 R21 K16 ["AssetMediaIds"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R18
      111 GETUPVAL                         R21 5
      112 GETTABLEKS                       R20 R21 K17 ["getFlowStartScreen"]
      114 MOVE                             R21 R1
      115 MOVE                             R22 R8
      116 CALL                             R20 2 1
      117 JUMPIFNOTEQKNIL                  R6 ; [+6]
      119 GETUPVAL                         R21 6
      120 NAMECALL                         R21 R21 K18 ["getDefaultTab"]
      122 CALL                             R21 1 1
      123 MOVE                             R6 R21
      124 GETUPVAL                         R23 7
      125 GETTABLEKS                       R22 R23 K19 ["FLOW_TYPE"]
      127 GETTABLEKS                       R21 R22 K20 ["DOWNLOAD_FLOW"]
      129 JUMPIFNOTEQ                      R1 R21 ; [+6]
      131 GETUPVAL                         R21 6
      132 NAMECALL                         R21 R21 K21 ["getOverrideTab"]
      134 CALL                             R21 1 1
      135 MOVE                             R6 R21
      136 NEWTABLE                         R21 0 1
      138 GETUPVAL                         R22 8
      139 DUPTABLE                         R23 K23 [{"StudioAssetService"}]
      140 GETUPVAL                         R24 9
      141 SETTABLEKS                       R24 R23 K22 ["StudioAssetService"]
      143 CALL                             R22 1 -1
      144 SETLIST                          R21 R22 -1 [1]
      146 GETUPVAL                         R24 10
      147 GETTABLEKS                       R23 R24 K24 ["Store"]
      149 GETTABLEKS                       R22 R23 K25 ["new"]
      151 GETUPVAL                         R23 11
      152 DUPTABLE                         R24 K41 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      153 SETTABLEKS                       R0 R24 K26 ["assetId"]
      155 SETTABLEKS                       R18 R24 K27 ["assetMediaIds"]
      157 SETTABLEKS                       R1 R24 K28 ["screenFlowType"]
      159 SETTABLEKS                       R20 R24 K29 ["currentScreen"]
      161 SETTABLEKS                       R2 R24 K30 ["instances"]
      163 GETUPVAL                         R26 12
      164 JUMPIF                           R26 ; [+2]
      165 GETUPVAL                         R26 13
      166 JUMPIFNOT                        R26 ; [+2]
      167 MOVE                             R25 R4
      168 JUMPIF                           R25 ; [+1]
      169 LOADNIL                          R25
      170 SETTABLEKS                       R25 R24 K31 ["sourceInstances"]
      172 SETTABLEKS                       R8 R24 K2 ["allowedAssetTypesForRelease"]
      174 SETTABLEKS                       R9 R24 K3 ["allowedAssetTypesForUpload"]
      176 SETTABLEKS                       R10 R24 K4 ["allowedAssetTypesForFree"]
      178 SETTABLEKS                       R11 R24 K5 ["allowedBundleTypeSettings"]
      180 NEWTABLE                         R25 0 0
      182 SETTABLEKS                       R25 R24 K32 ["idToFiatProductMap"]
      184 GETUPVAL                         R26 1
      185 CALL                             R26 0 1
      186 JUMPIFNOT                        R26 ; [+2]
      187 LOADNIL                          R25
      188 JUMP                             ; [+1]
      189 MOVE                             R25 R13
      190 SETTABLEKS                       R25 R24 K9 ["isItemTagsFeatureEnabled"]
      192 GETUPVAL                         R26 1
      193 CALL                             R26 0 1
      194 JUMPIFNOT                        R26 ; [+2]
      195 LOADNIL                          R25
      196 JUMP                             ; [+1]
      197 MOVE                             R25 R14
      198 SETTABLEKS                       R25 R24 K10 ["enabledAssetTypesForItemTags"]
      200 GETUPVAL                         R26 1
      201 CALL                             R26 0 1
      202 JUMPIFNOT                        R26 ; [+2]
      203 LOADNIL                          R25
      204 JUMP                             ; [+1]
      205 MOVE                             R25 R15
      206 SETTABLEKS                       R25 R24 K11 ["maximumItemTagsPerItem"]
      208 DUPTABLE                         R25 K44 [{"inProgress", "queued"}]
      209 NEWTABLE                         R26 0 0
      211 SETTABLEKS                       R26 R25 K42 ["inProgress"]
      213 NEWTABLE                         R26 0 0
      215 SETTABLEKS                       R26 R25 K43 ["queued"]
      217 SETTABLEKS                       R25 R24 K33 ["rollingAssetPermissionRequests"]
      219 SETTABLEKS                       R3 R24 K34 ["assetTypeEnum"]
      221 SETTABLEKS                       R6 R24 K35 ["currentTab"]
      223 SETTABLEKS                       R12 R24 K36 ["packagePermissions"]
      225 NEWTABLE                         R25 0 0
      227 SETTABLEKS                       R25 R24 K37 ["overrideCursor"]
      229 LOADB                            R25 0
      230 SETTABLEKS                       R25 R24 K38 ["deleteLocal"]
      232 SETTABLEKS                       R5 R24 K39 ["hasSubsequent"]
      234 GETUPVAL                         R26 14
      235 CALL                             R26 0 1
      236 JUMPIFNOT                        R26 ; [+3]
      237 NEWTABLE                         R25 0 0
      239 JUMP                             ; [+1]
      240 LOADNIL                          R25
      241 SETTABLEKS                       R25 R24 K40 ["sellerStatusData"]
      243 GETUPVAL                         R26 3
      244 CALL                             R26 0 1
      245 JUMPIFNOT                        R26 ; [+2]
      246 MOVE                             R25 R16
      247 JUMP                             ; [+1]
      248 LOADNIL                          R25
      249 SETTABLEKS                       R25 R24 K12 ["groupBundlesUploadEnabledForUser"]
      251 MOVE                             R25 R21
      252 CALL                             R22 3 1
      253 GETUPVAL                         R23 15
      254 CALL                             R23 0 1
      255 GETUPVAL                         R25 16
      256 GETTABLEKS                       R24 R25 K25 ["new"]
      258 CALL                             R24 0 1
      259 NEWCLOSURE                       R25 P1
      260 CAPTURE                          UPVAL U0
      261 CAPTURE                          UPVAL U17
      262 CAPTURE                          UPVAL U18
      263 CAPTURE                          UPVAL U19
      264 CAPTURE                          VAL R7
      265 GETUPVAL                         R27 13
      266 JUMPIFNOT                        R27 ; [+5]
      267 GETUPVAL                         R27 20
      268 GETTABLEKS                       R26 R27 K25 ["new"]
      270 CALL                             R26 0 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R26
      273 GETUPVAL                         R28 18
      274 GETTABLEKS                       R27 R28 K45 ["createElement"]
      276 GETUPVAL                         R28 21
      277 DUPTABLE                         R29 K51 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      278 SETTABLEKS                       R0 R29 K26 ["assetId"]
      280 SETTABLEKS                       R3 R29 K34 ["assetTypeEnum"]
      282 GETUPVAL                         R30 22
      283 SETTABLEKS                       R30 R29 K46 ["plugin"]
      285 SETTABLEKS                       R22 R29 K47 ["store"]
      287 SETTABLEKS                       R23 R29 K48 ["theme"]
      289 SETTABLEKS                       R24 R29 K49 ["networkInterface"]
      291 SETTABLEKS                       R25 R29 K50 ["onAssetConfigDestroy"]
      293 CALL                             R27 2 1
      294 GETUPVAL                         R29 18
      295 GETTABLEKS                       R28 R29 K45 ["createElement"]
      297 GETUPVAL                         R29 23
      298 DUPTABLE                         R30 K55 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      299 GETUPVAL                         R32 13
      300 JUMPIFNOT                        R32 ; [+2]
      301 MOVE                             R31 R26
      302 JUMP                             ; [+1]
      303 LOADNIL                          R31
      304 SETTABLEKS                       R31 R30 K52 ["ixp"]
      306 GETUPVAL                         R31 24
      307 SETTABLEKS                       R31 R30 K53 ["localization"]
      309 GETUPVAL                         R31 22
      310 SETTABLEKS                       R31 R30 K46 ["plugin"]
      312 SETTABLEKS                       R23 R30 K48 ["theme"]
      314 SETTABLEKS                       R22 R30 K47 ["store"]
      316 GETIMPORT                        R31 K56 [settings]
      318 SETTABLEKS                       R31 R30 K54 ["settings"]
      320 NEWTABLE                         R31 0 1
      322 MOVE                             R32 R27
      323 SETLIST                          R31 R32 1 [1]
      325 CALL                             R28 3 1
      326 GETUPVAL                         R30 18
      327 GETTABLEKS                       R29 R30 K57 ["mount"]
      329 MOVE                             R30 R28
      330 CALL                             R29 1 1
      331 SETUPVAL                         R29 0
      332 RETURN                           R22 1

PROTO_13:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 JUMPIFNOT                        R8 ; [+11]
        3 GETUPVAL                         R8 1
        4 MOVE                             R9 R0
        5 MOVE                             R10 R1
        6 MOVE                             R11 R2
        7 MOVE                             R12 R3
        8 MOVE                             R13 R4
        9 MOVE                             R14 R5
       10 MOVE                             R15 R6
       11 MOVE                             R16 R7
       12 CALL                             R8 8 1
       13 RETURN                           R8 1
       14 GETUPVAL                         R8 2
       15 MOVE                             R9 R0
       16 MOVE                             R10 R1
       17 MOVE                             R11 R2
       18 MOVE                             R12 R3
       19 MOVE                             R13 R4
       20 MOVE                             R14 R5
       21 MOVE                             R15 R6
       22 CALL                             R8 7 0
       23 LOADNIL                          R8
       24 RETURN                           R8 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["destroy"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FLOW_TYPE"]
        3 GETTABLEKS                       R1 R2 K1 ["EDIT_FLOW"]
        5 GETIMPORT                        R2 K5 [Enum.AssetType.Model]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R3 R3 K6 ["getVersionsTab"]
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 2
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+11]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 LOADNIL                          R8
       18 MOVE                             R9 R2
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 MOVE                             R12 R3
       22 MOVE                             R13 R4
       23 CALL                             R5 8 1
       24 RETURN                           R0 0
       25 GETUPVAL                         R5 4
       26 MOVE                             R6 R0
       27 MOVE                             R7 R1
       28 LOADNIL                          R8
       29 MOVE                             R9 R2
       30 LOADNIL                          R10
       31 LOADNIL                          R11
       32 MOVE                             R12 R3
       33 CALL                             R5 7 0
       34 RETURN                           R0 0
       35 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+11]
        7 GETUPVAL                         R4 5
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 MOVE                             R8 R3
       12 LOADNIL                          R9
       13 LOADNIL                          R10
       14 LOADNIL                          R11
       15 LOADNIL                          R12
       16 CALL                             R4 8 1
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 6
       19 MOVE                             R5 R0
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 MOVE                             R8 R3
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 CALL                             R4 7 0
       27 RETURN                           R0 0
       28 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 GETUPVAL                         R5 3
        9 JUMPIFNOT                        R5 ; [+13]
       10 GETUPVAL                         R5 4
       11 GETUPVAL                         R7 5
       12 GETUPVAL                         R8 6
       13 CALL                             R7 1 -1
       14 NAMECALL                         R5 R5 K0 ["dispatch"]
       16 CALL                             R5 -1 1
       17 MOVE                             R7 R4
       18 MOVE                             R8 R4
       19 NAMECALL                         R5 R5 K1 ["andThen"]
       21 CALL                             R5 3 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R5 4
       24 GETUPVAL                         R7 7
       25 GETUPVAL                         R8 6
       26 CALL                             R7 1 -1
       27 NAMECALL                         R5 R5 K0 ["dispatch"]
       29 CALL                             R5 -1 1
       30 MOVE                             R7 R4
       31 MOVE                             R8 R4
       32 NAMECALL                         R5 R5 K1 ["andThen"]
       34 CALL                             R5 3 0
       35 RETURN                           R0 0

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
       22 GETTABLEKS                       R4 R0 K2 ["changed"]
       24 GETTABLEKS                       R3 R4 K3 ["AssetConfigName"]
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETTABLEKS                       R3 R0 K2 ["changed"]
       29 GETTABLEKS                       R2 R3 K3 ["AssetConfigName"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClonedInstances"]
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
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R2 R3 K5 ["UGCBundleTypes"]
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
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R6 R7 K12 ["FLOW_TYPE"]
       53 GETTABLEKS                       R5 R6 K13 ["UPLOAD_FLOW"]
       55 MOVE                             R6 R1
       56 NEWTABLE                         R7 0 1
       58 GETUPVAL                         R8 1
       59 SETLIST                          R7 R8 1 [1]
       61 GETUPVAL                         R8 6
       62 CALL                             R8 0 1
       63 JUMPIFNOT                        R8 ; [+12]
       64 GETUPVAL                         R8 7
       65 LOADNIL                          R9
       66 MOVE                             R10 R5
       67 MOVE                             R11 R0
       68 MOVE                             R12 R6
       69 MOVE                             R13 R7
       70 LOADB                            R14 0
       71 LOADNIL                          R15
       72 MOVE                             R16 R3
       73 CALL                             R8 8 1
       74 MOVE                             R4 R8
       75 JUMP                             ; [+11]
       76 GETUPVAL                         R8 8
       77 LOADNIL                          R9
       78 MOVE                             R10 R5
       79 MOVE                             R11 R0
       80 MOVE                             R12 R6
       81 MOVE                             R13 R7
       82 LOADB                            R14 0
       83 LOADNIL                          R15
       84 CALL                             R8 7 0
       85 LOADNIL                          R4
       86 JUMP                             ; [0]
       87 JUMPIF                           R4 ; [+10]
       88 GETUPVAL                         R5 4
       89 GETUPVAL                         R7 5
       90 LOADNIL                          R8
       91 LOADNIL                          R9
       92 LOADK                            R10 K14 ["Asset config dialog already open"]
       93 NAMECALL                         R5 R5 K15 ["ResolveSaveInstanceToRoblox"]
       95 CALL                             R5 5 0
       96 CLOSEUPVALS                      R2
       97 RETURN                           R0 0
       98 LOADNIL                          R5
       99 GETTABLEKS                       R6 R4 K16 ["changed"]
      101 NEWCLOSURE                       R8 P1
      102 CAPTURE                          REF R2
      103 CAPTURE                          REF R5
      104 CAPTURE                          UPVAL U4
      105 CAPTURE                          UPVAL U5
      106 NAMECALL                         R6 R6 K17 ["connect"]
      108 CALL                             R6 2 1
      109 MOVE                             R5 R6
      110 CLOSEUPVALS                      R2
      111 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 GETUPVAL                         R4 6
       11 JUMPIFNOT                        R4 ; [+13]
       12 GETUPVAL                         R4 7
       13 GETUPVAL                         R6 8
       14 GETUPVAL                         R7 9
       15 CALL                             R6 1 -1
       16 NAMECALL                         R4 R4 K0 ["dispatch"]
       18 CALL                             R4 -1 1
       19 MOVE                             R6 R3
       20 MOVE                             R7 R3
       21 NAMECALL                         R4 R4 K1 ["andThen"]
       23 CALL                             R4 3 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 7
       26 GETUPVAL                         R6 10
       27 GETUPVAL                         R7 9
       28 CALL                             R6 1 -1
       29 NAMECALL                         R4 R4 K0 ["dispatch"]
       31 CALL                             R4 -1 1
       32 MOVE                             R6 R3
       33 MOVE                             R7 R3
       34 NAMECALL                         R4 R4 K1 ["andThen"]
       36 CALL                             R4 3 0
       37 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClonedInstances"]
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
       15 JUMPIFEQKNIL                     R1 ; [+56]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K3 ["FLOW_TYPE"]
       20 GETTABLEKS                       R1 R2 K4 ["UPLOAD_FLOW"]
       22 GETUPVAL                         R4 3
       23 FASTCALL1                        TYPEOF R4 ; [+2]
       24 GETIMPORT                        R3 K6 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K7 ["EnumItem"] ; [+3]
       29 GETUPVAL                         R2 3
       30 JUMP                             ; [+14]
       31 GETUPVAL                         R4 3
       32 FASTCALL1                        TYPEOF R4 ; [+2]
       33 GETIMPORT                        R3 K6 [typeof]
       35 CALL                             R3 1 1
       36 JUMPIFNOTEQKS                    R3 K8 ["string"] ; [+7]
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R3 R4 K9 ["UGCBundleTypes"]
       41 GETUPVAL                         R4 3
       42 GETTABLE                         R2 R3 R4
       43 JUMP                             ; [+1]
       44 LOADNIL                          R2
       45 GETUPVAL                         R3 1
       46 GETUPVAL                         R4 2
       47 GETUPVAL                         R5 5
       48 CALL                             R5 0 1
       49 JUMPIFNOT                        R5 ; [+11]
       50 GETUPVAL                         R5 6
       51 LOADNIL                          R6
       52 MOVE                             R7 R1
       53 MOVE                             R8 R0
       54 MOVE                             R9 R2
       55 MOVE                             R10 R3
       56 MOVE                             R11 R4
       57 LOADNIL                          R12
       58 LOADNIL                          R13
       59 CALL                             R5 8 1
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 7
       62 LOADNIL                          R6
       63 MOVE                             R7 R1
       64 MOVE                             R8 R0
       65 MOVE                             R9 R2
       66 MOVE                             R10 R3
       67 MOVE                             R11 R4
       68 LOADNIL                          R12
       69 CALL                             R5 7 0
       70 RETURN                           R0 0
       71 RETURN                           R0 0
       72 LENGTH                           R1 R0
       73 JUMPIFNOTEQKN                    R1 K10 [1] ; [+40]
       75 GETTABLEN                        R1 R0 1
       76 LOADK                            R3 K11 ["AnimationClip"]
       77 NAMECALL                         R1 R1 K12 ["IsA"]
       79 CALL                             R1 2 1
       80 JUMPIFNOT                        R1 ; [+33]
       81 GETUPVAL                         R3 4
       82 GETTABLEKS                       R2 R3 K3 ["FLOW_TYPE"]
       84 GETTABLEKS                       R1 R2 K4 ["UPLOAD_FLOW"]
       86 GETIMPORT                        R2 K16 [Enum.AssetType.Animation]
       88 GETUPVAL                         R3 2
       89 GETUPVAL                         R4 5
       90 CALL                             R4 0 1
       91 JUMPIFNOT                        R4 ; [+11]
       92 GETUPVAL                         R4 6
       93 LOADNIL                          R5
       94 MOVE                             R6 R1
       95 MOVE                             R7 R0
       96 MOVE                             R8 R2
       97 LOADNIL                          R9
       98 MOVE                             R10 R3
       99 LOADNIL                          R11
      100 LOADNIL                          R12
      101 CALL                             R4 8 1
      102 RETURN                           R0 0
      103 GETUPVAL                         R4 7
      104 LOADNIL                          R5
      105 MOVE                             R6 R1
      106 MOVE                             R7 R0
      107 MOVE                             R8 R2
      108 LOADNIL                          R9
      109 MOVE                             R10 R3
      110 LOADNIL                          R11
      111 CALL                             R4 7 0
      112 RETURN                           R0 0
      113 RETURN                           R0 0
      114 GETUPVAL                         R3 4
      115 GETTABLEKS                       R2 R3 K3 ["FLOW_TYPE"]
      117 GETTABLEKS                       R1 R2 K4 ["UPLOAD_FLOW"]
      119 GETUPVAL                         R2 1
      120 GETUPVAL                         R3 2
      121 GETUPVAL                         R4 5
      122 CALL                             R4 0 1
      123 JUMPIFNOT                        R4 ; [+11]
      124 GETUPVAL                         R4 6
      125 LOADNIL                          R5
      126 MOVE                             R6 R1
      127 MOVE                             R7 R0
      128 LOADNIL                          R8
      129 MOVE                             R9 R2
      130 MOVE                             R10 R3
      131 LOADNIL                          R11
      132 LOADNIL                          R12
      133 CALL                             R4 8 1
      134 RETURN                           R0 0
      135 GETUPVAL                         R4 7
      136 LOADNIL                          R5
      137 MOVE                             R6 R1
      138 MOVE                             R7 R0
      139 LOADNIL                          R8
      140 MOVE                             R9 R2
      141 MOVE                             R10 R3
      142 LOADNIL                          R11
      143 CALL                             R4 7 0
      144 RETURN                           R0 0
      145 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 GETUPVAL                         R4 5
       10 JUMPIFNOT                        R4 ; [+13]
       11 GETUPVAL                         R4 6
       12 GETUPVAL                         R6 7
       13 GETUPVAL                         R7 8
       14 CALL                             R6 1 -1
       15 NAMECALL                         R4 R4 K0 ["dispatch"]
       17 CALL                             R4 -1 1
       18 MOVE                             R6 R3
       19 MOVE                             R7 R3
       20 NAMECALL                         R4 R4 K1 ["andThen"]
       22 CALL                             R4 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R4 6
       25 GETUPVAL                         R6 9
       26 GETUPVAL                         R7 8
       27 CALL                             R6 1 -1
       28 NAMECALL                         R4 R4 K0 ["dispatch"]
       30 CALL                             R4 -1 1
       31 MOVE                             R6 R3
       32 MOVE                             R7 R3
       33 NAMECALL                         R4 R4 K1 ["andThen"]
       35 CALL                             R4 3 0
       36 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClonedInstances"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 LENGTH                           R1 R0
        6 JUMPIFNOTEQKN                    R1 K1 [1] ; [+39]
        8 GETTABLEN                        R1 R0 1
        9 LOADK                            R3 K2 ["AnimationClip"]
       10 NAMECALL                         R1 R1 K3 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+32]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K4 ["FLOW_TYPE"]
       17 GETTABLEKS                       R1 R2 K5 ["UPLOAD_FLOW"]
       19 GETIMPORT                        R2 K9 [Enum.AssetType.Animation]
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+11]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 MOVE                             R5 R1
       27 MOVE                             R6 R0
       28 MOVE                             R7 R2
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 CALL                             R3 8 1
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 5
       36 LOADNIL                          R4
       37 MOVE                             R5 R1
       38 MOVE                             R6 R0
       39 MOVE                             R7 R2
       40 LOADNIL                          R8
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 CALL                             R3 7 0
       44 RETURN                           R0 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K4 ["FLOW_TYPE"]
       49 GETTABLEKS                       R1 R2 K5 ["UPLOAD_FLOW"]
       51 GETUPVAL                         R2 1
       52 GETUPVAL                         R3 3
       53 CALL                             R3 0 1
       54 JUMPIFNOT                        R3 ; [+11]
       55 GETUPVAL                         R3 4
       56 LOADNIL                          R4
       57 MOVE                             R5 R1
       58 MOVE                             R6 R0
       59 LOADNIL                          R7
       60 MOVE                             R8 R2
       61 LOADNIL                          R9
       62 LOADNIL                          R10
       63 LOADNIL                          R11
       64 CALL                             R3 8 1
       65 RETURN                           R0 0
       66 GETUPVAL                         R3 5
       67 LOADNIL                          R4
       68 MOVE                             R5 R1
       69 MOVE                             R6 R0
       70 LOADNIL                          R7
       71 MOVE                             R8 R2
       72 LOADNIL                          R9
       73 LOADNIL                          R10
       74 CALL                             R3 7 0
       75 RETURN                           R0 0
       76 RETURN                           R0 0

PROTO_25:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 GETUPVAL                         R2 5
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R2 6
       10 GETUPVAL                         R4 7
       11 GETUPVAL                         R5 8
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K0 ["dispatch"]
       15 CALL                             R2 -1 1
       16 MOVE                             R4 R1
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K1 ["andThen"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 6
       23 GETUPVAL                         R4 9
       24 GETUPVAL                         R5 8
       25 CALL                             R4 1 -1
       26 NAMECALL                         R2 R2 K0 ["dispatch"]
       28 CALL                             R2 -1 1
       29 MOVE                             R4 R1
       30 MOVE                             R5 R1
       31 NAMECALL                         R2 R2 K1 ["andThen"]
       33 CALL                             R2 3 0
       34 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FLOW_TYPE"]
        3 GETTABLEKS                       R1 R2 K1 ["DOWNLOAD_FLOW"]
        5 GETIMPORT                        R2 K5 [Enum.AssetType.Animation]
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+11]
       10 GETUPVAL                         R3 2
       11 LOADNIL                          R4
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 MOVE                             R7 R2
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 LOADNIL                          R11
       19 CALL                             R3 8 1
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 3
       22 LOADNIL                          R4
       23 MOVE                             R5 R1
       24 LOADNIL                          R6
       25 MOVE                             R7 R2
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 CALL                             R3 7 0
       30 RETURN                           R0 0
       31 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
        3 GETTABLEKS                       R2 R3 K1 ["EDIT_FLOW"]
        5 GETIMPORT                        R3 K5 [Enum.AssetType.Model]
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+11]
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 LOADNIL                          R7
       14 MOVE                             R8 R3
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 LOADNIL                          R11
       18 LOADNIL                          R12
       19 CALL                             R4 8 1
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 3
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 LOADNIL                          R7
       25 MOVE                             R8 R3
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 CALL                             R4 7 0
       30 RETURN                           R0 0
       31 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FLOW_TYPE"]
        3 GETTABLEKS                       R0 R1 K1 ["UPLOAD_FLOW"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["getClonedInstances"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K6 [Enum.AssetType.Plugin]
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+11]
       15 GETUPVAL                         R3 4
       16 LOADNIL                          R4
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 LOADNIL                          R11
       24 CALL                             R3 8 1
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 5
       27 LOADNIL                          R4
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 MOVE                             R7 R2
       31 LOADNIL                          R8
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 CALL                             R3 7 0
       35 RETURN                           R0 0
       36 RETURN                           R0 0

PROTO_29:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 GETUPVAL                         R2 5
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R2 6
       10 GETUPVAL                         R4 7
       11 GETUPVAL                         R5 8
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K0 ["dispatch"]
       15 CALL                             R2 -1 1
       16 MOVE                             R4 R1
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K1 ["andThen"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 6
       23 GETUPVAL                         R4 9
       24 GETUPVAL                         R5 8
       25 CALL                             R4 1 -1
       26 NAMECALL                         R2 R2 K0 ["dispatch"]
       28 CALL                             R2 -1 1
       29 MOVE                             R4 R1
       30 MOVE                             R5 R1
       31 NAMECALL                         R2 R2 K1 ["andThen"]
       33 CALL                             R2 3 0
       34 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.MeshPart]
        2 NEWTABLE                         R2 4 0
        4 GETIMPORT                        R4 K5 [Enum.AssetType.Image]
        6 GETTABLEKS                       R3 R4 K6 ["Name"]
        8 LOADB                            R4 1
        9 SETTABLE                         R4 R2 R3
       10 GETIMPORT                        R4 K8 [Enum.AssetType.Model]
       12 GETTABLEKS                       R3 R4 K6 ["Name"]
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R2 R3
       16 GETIMPORT                        R4 K10 [Enum.AssetType.Package]
       18 GETTABLEKS                       R3 R4 K6 ["Name"]
       20 LOADB                            R4 1
       21 SETTABLE                         R4 R2 R3
       22 GETUPVAL                         R3 0
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R3 K11 ["JSONDecode"]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R3 K12 ["assetType"]
       29 GETTABLE                         R5 R2 R4
       30 JUMPIFNOT                        R5 ; [+3]
       31 GETIMPORT                        R5 K13 [Enum.AssetType]
       33 GETTABLE                         R1 R5 R4
       34 GETTABLEKS                       R5 R3 K14 ["id"]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R7 R8 K15 ["FLOW_TYPE"]
       39 GETTABLEKS                       R6 R7 K16 ["EDIT_FLOW"]
       41 MOVE                             R7 R1
       42 GETUPVAL                         R8 2
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+11]
       45 GETUPVAL                         R8 3
       46 MOVE                             R9 R5
       47 MOVE                             R10 R6
       48 LOADNIL                          R11
       49 MOVE                             R12 R7
       50 LOADNIL                          R13
       51 LOADNIL                          R14
       52 LOADNIL                          R15
       53 LOADNIL                          R16
       54 CALL                             R8 8 1
       55 RETURN                           R0 0
       56 GETUPVAL                         R8 4
       57 MOVE                             R9 R5
       58 MOVE                             R10 R6
       59 LOADNIL                          R11
       60 MOVE                             R12 R7
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 LOADNIL                          R15
       64 CALL                             R8 7 0
       65 RETURN                           R0 0
       66 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R1 R2 K0 ["Store"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 2
        6 LOADNIL                          R2
        7 NEWTABLE                         R3 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["thunkMiddleware"]
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R0 3 1
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R0 R1 K1 ["new"]
       19 CALL                             R0 0 1
       20 GETUPVAL                         R1 4
       21 CALL                             R1 0 1
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R2 R3 K1 ["new"]
       25 GETUPVAL                         R3 6
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 7
       28 CALL                             R3 0 1
       29 GETUPVAL                         R5 8
       30 GETTABLEKS                       R4 R5 K1 ["new"]
       32 CALL                             R4 0 1
       33 GETUPVAL                         R6 9
       34 GETTABLEKS                       R5 R6 K3 ["BACKGROUNDS"]
       36 GETUPVAL                         R7 10
       37 GETTABLEKS                       R6 R7 K4 ["SUGGESTIONS"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 GETUPVAL                         R9 11
       42 JUMPIFNOT                        R9 ; [+7]
       43 GETUPVAL                         R10 12
       44 GETTABLEKS                       R9 R10 K5 ["forPlugin"]
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
       60 CAPTURE                          UPVAL U18
       61 CAPTURE                          UPVAL U19
       62 NAMECALL                         R10 R10 K7 ["setup"]
       64 CALL                             R10 3 0
       65 GETUPVAL                         R11 13
       66 GETTABLEKS                       R10 R11 K8 ["createElement"]
       68 GETUPVAL                         R11 20
       69 DUPTABLE                         R12 K19 [{"plugin", "store", "settings", "theme", "networkInterface", "pluginLoaderContext", "backgrounds", "suggestions", "onPluginWillDestroy", "tryOpenAssetConfig"}]
       70 GETUPVAL                         R13 6
       71 SETTABLEKS                       R13 R12 K9 ["plugin"]
       73 GETUPVAL                         R13 0
       74 SETTABLEKS                       R13 R12 K10 ["store"]
       76 SETTABLEKS                       R2 R12 K11 ["settings"]
       78 SETTABLEKS                       R3 R12 K12 ["theme"]
       80 SETTABLEKS                       R4 R12 K13 ["networkInterface"]
       82 GETUPVAL                         R13 21
       83 SETTABLEKS                       R13 R12 K14 ["pluginLoaderContext"]
       85 SETTABLEKS                       R5 R12 K15 ["backgrounds"]
       87 SETTABLEKS                       R6 R12 K16 ["suggestions"]
       89 SETTABLEKS                       R9 R12 K17 ["onPluginWillDestroy"]
       91 NEWCLOSURE                       R13 P2
       92 CAPTURE                          UPVAL U17
       93 CAPTURE                          UPVAL U18
       94 CAPTURE                          UPVAL U19
       95 CAPTURE                          UPVAL U22
       96 CAPTURE                          UPVAL U0
       97 CAPTURE                          UPVAL U23
       98 CAPTURE                          VAL R4
       99 CAPTURE                          UPVAL U24
      100 SETTABLEKS                       R13 R12 K18 ["tryOpenAssetConfig"]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R12 25
      104 GETTABLEKS                       R11 R12 K1 ["new"]
      106 CALL                             R11 0 1
      107 LOADNIL                          R12
      108 GETUPVAL                         R14 13
      109 GETTABLEKS                       R13 R14 K8 ["createElement"]
      111 GETUPVAL                         R14 26
      112 DUPTABLE                         R15 K24 [{"localization", "plugin", "theme", "store", "settings", "assetAnalytics", "analytics", "ixp"}]
      113 GETUPVAL                         R16 27
      114 SETTABLEKS                       R16 R15 K20 ["localization"]
      116 GETUPVAL                         R16 6
      117 SETTABLEKS                       R16 R15 K9 ["plugin"]
      119 SETTABLEKS                       R3 R15 K12 ["theme"]
      121 GETUPVAL                         R16 0
      122 SETTABLEKS                       R16 R15 K10 ["store"]
      124 SETTABLEKS                       R2 R15 K11 ["settings"]
      126 SETTABLEKS                       R0 R15 K21 ["assetAnalytics"]
      128 SETTABLEKS                       R1 R15 K22 ["analytics"]
      130 SETTABLEKS                       R11 R15 K23 ["ixp"]
      132 NEWTABLE                         R16 0 1
      134 MOVE                             R17 R10
      135 SETLIST                          R16 R17 1 [1]
      137 CALL                             R13 3 1
      138 MOVE                             R12 R13
      139 GETUPVAL                         R14 13
      140 GETTABLEKS                       R13 R14 K25 ["mount"]
      142 MOVE                             R14 R12
      143 CALL                             R13 1 1
      144 MOVE                             R7 R13
      145 JUMPIFNOT                        R8 ; [+6]
      146 LOADK                            R15 K26 ["Roact tree"]
      147 MOVE                             R16 R7
      148 GETUPVAL                         R17 13
      149 NAMECALL                         R13 R8 K27 ["addRoactTree"]
      151 CALL                             R13 4 0
      152 GETUPVAL                         R13 17
      153 CALL                             R13 0 1
      154 JUMPIFNOT                        R13 ; [+20]
      155 GETUPVAL                         R15 21
      156 GETTABLEKS                       R14 R15 K29 ["signals"]
      158 GETTABLEKS                       R13 R14 K28 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      160 NEWCLOSURE                       R15 P3
      161 CAPTURE                          UPVAL U28
      162 CAPTURE                          UPVAL U15
      163 CAPTURE                          UPVAL U29
      164 CAPTURE                          UPVAL U17
      165 CAPTURE                          UPVAL U18
      166 CAPTURE                          UPVAL U19
      167 CAPTURE                          UPVAL U22
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          UPVAL U23
      170 CAPTURE                          VAL R4
      171 CAPTURE                          UPVAL U24
      172 NAMECALL                         R13 R13 K30 ["Connect"]
      174 CALL                             R13 2 0
      175 GETUPVAL                         R13 30
      176 JUMPIFNOT                        R13 ; [+20]
      177 GETUPVAL                         R15 21
      178 GETTABLEKS                       R14 R15 K29 ["signals"]
      180 GETTABLEKS                       R13 R14 K31 ["StudioAssetService.OnSaveToRoblox"]
      182 NEWCLOSURE                       R15 P4
      183 CAPTURE                          UPVAL U28
      184 CAPTURE                          UPVAL U15
      185 CAPTURE                          UPVAL U17
      186 CAPTURE                          UPVAL U18
      187 CAPTURE                          UPVAL U19
      188 CAPTURE                          UPVAL U22
      189 CAPTURE                          UPVAL U0
      190 CAPTURE                          UPVAL U23
      191 CAPTURE                          VAL R4
      192 CAPTURE                          UPVAL U24
      193 NAMECALL                         R13 R13 K30 ["Connect"]
      195 CALL                             R13 2 0
      196 JUMP                             ; [+19]
      197 GETUPVAL                         R15 21
      198 GETTABLEKS                       R14 R15 K29 ["signals"]
      200 GETTABLEKS                       R13 R14 K32 ["StudioService.OnSaveToRoblox"]
      202 NEWCLOSURE                       R15 P5
      203 CAPTURE                          UPVAL U28
      204 CAPTURE                          UPVAL U15
      205 CAPTURE                          UPVAL U17
      206 CAPTURE                          UPVAL U18
      207 CAPTURE                          UPVAL U19
      208 CAPTURE                          UPVAL U22
      209 CAPTURE                          UPVAL U0
      210 CAPTURE                          UPVAL U23
      211 CAPTURE                          VAL R4
      212 CAPTURE                          UPVAL U24
      213 NAMECALL                         R13 R13 K30 ["Connect"]
      215 CALL                             R13 2 0
      216 GETUPVAL                         R15 21
      217 GETTABLEKS                       R14 R15 K29 ["signals"]
      219 GETTABLEKS                       R13 R14 K33 ["StudioService.OnImportFromRoblox"]
      221 NEWCLOSURE                       R15 P6
      222 CAPTURE                          UPVAL U15
      223 CAPTURE                          UPVAL U17
      224 CAPTURE                          UPVAL U18
      225 CAPTURE                          UPVAL U19
      226 NAMECALL                         R13 R13 K30 ["Connect"]
      228 CALL                             R13 2 0
      229 GETUPVAL                         R15 21
      230 GETTABLEKS                       R14 R15 K29 ["signals"]
      232 GETTABLEKS                       R13 R14 K34 ["StudioService.OnOpenManagePackagePlugin"]
      234 NEWCLOSURE                       R15 P7
      235 CAPTURE                          UPVAL U15
      236 CAPTURE                          UPVAL U17
      237 CAPTURE                          UPVAL U18
      238 CAPTURE                          UPVAL U19
      239 NAMECALL                         R13 R13 K30 ["Connect"]
      241 CALL                             R13 2 0
      242 GETUPVAL                         R15 21
      243 GETTABLEKS                       R14 R15 K29 ["signals"]
      245 GETTABLEKS                       R13 R14 K35 ["StudioService.OnPublishAsPlugin"]
      247 NEWCLOSURE                       R15 P8
      248 CAPTURE                          UPVAL U15
      249 CAPTURE                          UPVAL U28
      250 CAPTURE                          UPVAL U17
      251 CAPTURE                          UPVAL U18
      252 CAPTURE                          UPVAL U19
      253 CAPTURE                          UPVAL U22
      254 CAPTURE                          UPVAL U0
      255 CAPTURE                          UPVAL U23
      256 CAPTURE                          VAL R4
      257 CAPTURE                          UPVAL U24
      258 NAMECALL                         R13 R13 K30 ["Connect"]
      260 CALL                             R13 2 0
      261 GETUPVAL                         R15 21
      262 GETTABLEKS                       R14 R15 K29 ["signals"]
      264 GETTABLEKS                       R13 R14 K36 ["MemStorageService.OpenAssetConfiguration"]
      266 NEWCLOSURE                       R15 P9
      267 CAPTURE                          UPVAL U31
      268 CAPTURE                          UPVAL U15
      269 CAPTURE                          UPVAL U17
      270 CAPTURE                          UPVAL U18
      271 CAPTURE                          UPVAL U19
      272 NAMECALL                         R13 R13 K30 ["Connect"]
      274 CALL                             R13 2 0
      275 GETUPVAL                         R14 32
      276 GETTABLEKS                       R13 R14 K37 ["registerLocalization"]
      278 GETUPVAL                         R14 27
      279 CALL                             R13 1 0
      280 GETUPVAL                         R14 32
      281 GETTABLEKS                       R13 R14 K38 ["registerProcessDragHandler"]
      283 GETUPVAL                         R14 6
      284 CALL                             R13 1 0
      285 CLOSEUPVALS                      R7
      286 RETURN                           R0 0

PROTO_32:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R4 K1 [script]
        4 GETTABLEKS                       R3 R4 K2 ["Parent"]
        6 GETTABLEKS                       R2 R3 K2 ["Parent"]
        8 GETTABLEKS                       R4 R2 K3 ["Src"]
       10 GETTABLEKS                       R3 R4 K4 ["Util"]
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
       36 GETIMPORT                        R8 K6 [game]
       38 LOADK                            R10 K12 ["ShowSaveToRobloxOnStudioAssetService"]
       39 NAMECALL                         R8 R8 K8 ["GetFastFlag"]
       41 CALL                             R8 2 1
       42 GETIMPORT                        R9 K14 [require]
       44 GETTABLEKS                       R12 R2 K3 ["Src"]
       46 GETTABLEKS                       R11 R12 K15 ["Flags"]
       48 GETTABLEKS                       R10 R11 K16 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K14 [require]
       53 GETTABLEKS                       R14 R2 K3 ["Src"]
       55 GETTABLEKS                       R13 R14 K4 ["Util"]
       57 GETTABLEKS                       R12 R13 K17 ["SharedFlags"]
       59 GETTABLEKS                       R11 R12 K18 ["getFFlagToolboxAssetConfigOnboardingLink"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K14 [require]
       64 GETTABLEKS                       R14 R2 K3 ["Src"]
       66 GETTABLEKS                       R13 R14 K15 ["Flags"]
       68 GETTABLEKS                       R12 R13 K19 ["getFFlagRemoveItemTags"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K14 [require]
       73 GETTABLEKS                       R13 R3 K20 ["isCli"]
       75 CALL                             R12 1 1
       76 MOVE                             R13 R12
       77 CALL                             R13 0 1
       78 JUMPIFNOT                        R13 ; [+1]
       79 RETURN                           R0 0
       80 GETIMPORT                        R13 K6 [game]
       82 LOADK                            R15 K21 ["StudioService"]
       83 NAMECALL                         R13 R13 K22 ["GetService"]
       85 CALL                             R13 2 1
       86 NAMECALL                         R14 R13 K23 ["HasInternalPermission"]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R2 K24 ["Packages"]
       91 GETIMPORT                        R16 K14 [require]
       93 GETTABLEKS                       R17 R15 K25 ["Roact"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K14 [require]
       98 GETTABLEKS                       R18 R15 K26 ["Framework"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K14 [require]
      103 GETTABLEKS                       R20 R15 K27 ["Dev"]
      105 GETTABLEKS                       R19 R20 K28 ["DeveloperTools"]
      107 CALL                             R18 1 1
      108 JUMPIFNOT                        R4 ; [+13]
      109 GETTABLEKS                       R19 R16 K29 ["setGlobalConfig"]
      111 DUPTABLE                         R20 K33 [{"elementTracing", "propValidation", "typeChecks"}]
      112 LOADB                            R21 1
      113 SETTABLEKS                       R21 R20 K30 ["elementTracing"]
      115 LOADB                            R21 1
      116 SETTABLEKS                       R21 R20 K31 ["propValidation"]
      118 LOADB                            R21 1
      119 SETTABLEKS                       R21 R20 K32 ["typeChecks"]
      121 CALL                             R19 1 0
      122 GETIMPORT                        R19 K14 [require]
      124 GETTABLEKS                       R20 R15 K34 ["Rodux"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K14 [require]
      129 GETTABLEKS                       R21 R3 K35 ["InsertAsset"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K14 [require]
      134 GETTABLEKS                       R23 R3 K36 ["Analytics"]
      136 GETTABLEKS                       R22 R23 K37 ["AssetAnalyticsContextItem"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K14 [require]
      141 GETTABLEKS                       R23 R3 K38 ["DebugFlags"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K14 [require]
      146 GETTABLEKS                       R24 R3 K39 ["Settings"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K14 [require]
      151 GETTABLEKS                       R25 R3 K40 ["ToolboxTheme"]
      153 CALL                             R24 1 1
      154 GETIMPORT                        R25 K14 [require]
      156 GETTABLEKS                       R26 R3 K41 ["AssetConfigTheme"]
      158 CALL                             R25 1 1
      159 GETIMPORT                        R26 K14 [require]
      161 GETTABLEKS                       R27 R3 K42 ["AssetConfigConstants"]
      163 CALL                             R26 1 1
      164 GETIMPORT                        R27 K14 [require]
      166 GETTABLEKS                       R28 R3 K43 ["AssetConfigUtil"]
      168 CALL                             R27 1 1
      169 GETIMPORT                        R28 K14 [require]
      171 GETTABLEKS                       R30 R3 K36 ["Analytics"]
      173 GETTABLEKS                       R29 R30 K44 ["makeToolboxAnalyticsContext"]
      175 CALL                             R28 1 1
      176 GETIMPORT                        R29 K14 [require]
      178 GETTABLEKS                       R32 R2 K3 ["Src"]
      180 GETTABLEKS                       R31 R32 K45 ["ContextServices"]
      182 GETTABLEKS                       R30 R31 K46 ["IXPContext"]
      184 CALL                             R29 1 1
      185 GETTABLEKS                       R30 R22 K47 ["shouldDebugWarnings"]
      187 CALL                             R30 0 1
      188 JUMPIFNOT                        R30 ; [+13]
      189 GETIMPORT                        R32 K14 [require]
      191 GETTABLEKS                       R33 R15 K26 ["Framework"]
      193 CALL                             R32 1 1
      194 GETTABLEKS                       R31 R32 K4 ["Util"]
      196 GETTABLEKS                       R30 R31 K48 ["Promise"]
      198 GETIMPORT                        R31 K50 [warn]
      200 SETTABLEKS                       R31 R30 K51 ["onUnhandledRejection"]
      202 GETIMPORT                        R30 K14 [require]
      204 GETTABLEKS                       R33 R2 K3 ["Src"]
      206 GETTABLEKS                       R32 R33 K52 ["Types"]
      208 GETTABLEKS                       R31 R32 K53 ["Background"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K14 [require]
      213 GETTABLEKS                       R34 R2 K3 ["Src"]
      215 GETTABLEKS                       R33 R34 K52 ["Types"]
      217 GETTABLEKS                       R32 R33 K54 ["Suggestion"]
      219 CALL                             R31 1 1
      220 GETIMPORT                        R32 K14 [require]
      222 GETTABLEKS                       R35 R2 K3 ["Src"]
      224 GETTABLEKS                       R34 R35 K52 ["Types"]
      226 GETTABLEKS                       R33 R34 K55 ["ConfigTypes"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K14 [require]
      231 GETTABLEKS                       R36 R2 K3 ["Src"]
      233 GETTABLEKS                       R35 R36 K56 ["Components"]
      235 GETTABLEKS                       R34 R35 K57 ["ToolboxPlugin"]
      237 CALL                             R33 1 1
      238 GETIMPORT                        R35 K14 [require]
      240 GETTABLEKS                       R38 R2 K3 ["Src"]
      242 GETTABLEKS                       R37 R38 K4 ["Util"]
      244 GETTABLEKS                       R36 R37 K58 ["ToolboxUtilities"]
      246 CALL                             R35 1 1
      247 GETTABLEKS                       R34 R35 K59 ["getToolboxEnabled"]
      249 GETIMPORT                        R35 K14 [require]
      251 GETTABLEKS                       R38 R2 K3 ["Src"]
      253 GETTABLEKS                       R37 R38 K4 ["Util"]
      255 GETTABLEKS                       R36 R37 K60 ["ToolboxCommunication"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K14 [require]
      260 GETTABLEKS                       R39 R2 K3 ["Src"]
      262 GETTABLEKS                       R38 R39 K61 ["Reducers"]
      264 GETTABLEKS                       R37 R38 K62 ["ToolboxReducer"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K14 [require]
      269 GETTABLEKS                       R40 R2 K3 ["Src"]
      271 GETTABLEKS                       R39 R40 K61 ["Reducers"]
      273 GETTABLEKS                       R38 R39 K63 ["AssetConfigReducer"]
      275 CALL                             R37 1 1
      276 GETIMPORT                        R38 K14 [require]
      278 GETTABLEKS                       R41 R2 K3 ["Src"]
      280 GETTABLEKS                       R40 R41 K64 ["Networking"]
      282 GETTABLEKS                       R39 R40 K65 ["NetworkInterface"]
      284 CALL                             R38 1 1
      285 GETIMPORT                        R39 K14 [require]
      287 GETTABLEKS                       R43 R2 K3 ["Src"]
      289 GETTABLEKS                       R42 R43 K56 ["Components"]
      291 GETTABLEKS                       R41 R42 K66 ["AssetConfiguration"]
      293 GETTABLEKS                       R40 R41 K67 ["AssetConfigWrapper"]
      295 CALL                             R39 1 1
      296 GETIMPORT                        R40 K14 [require]
      298 GETTABLEKS                       R43 R2 K3 ["Src"]
      300 GETTABLEKS                       R42 R43 K56 ["Components"]
      302 GETTABLEKS                       R41 R42 K68 ["ToolboxServiceWrapper"]
      304 CALL                             R40 1 1
      305 GETIMPORT                        R41 K14 [require]
      307 GETTABLEKS                       R45 R2 K3 ["Src"]
      309 GETTABLEKS                       R44 R45 K64 ["Networking"]
      311 GETTABLEKS                       R43 R44 K69 ["Requests"]
      313 GETTABLEKS                       R42 R43 K70 ["GetRolesRequest"]
      315 CALL                             R41 1 1
      316 GETIMPORT                        R42 K14 [require]
      318 GETTABLEKS                       R46 R2 K3 ["Src"]
      320 GETTABLEKS                       R45 R46 K64 ["Networking"]
      322 GETTABLEKS                       R44 R45 K69 ["Requests"]
      324 GETTABLEKS                       R43 R44 K71 ["GetRolesDebugRequest"]
      326 CALL                             R42 1 1
      327 GETIMPORT                        R43 K14 [require]
      329 GETTABLEKS                       R46 R2 K3 ["Src"]
      331 GETTABLEKS                       R45 R46 K15 ["Flags"]
      333 GETTABLEKS                       R44 R45 K72 ["getFFlagEnableUploadingGroupBundles"]
      335 CALL                             R43 1 1
      336 GETTABLEKS                       R44 R17 K45 ["ContextServices"]
      338 GETTABLEKS                       R46 R17 K4 ["Util"]
      340 GETTABLEKS                       R45 R46 K73 ["ThunkWithArgsMiddleware"]
      342 GETIMPORT                        R46 K14 [require]
      344 GETTABLEKS                       R47 R15 K74 ["Dash"]
      346 CALL                             R46 1 1
      347 GETTABLEKS                       R47 R46 K75 ["find"]
      349 GETTABLEKS                       R50 R2 K76 ["Resources"]
      351 GETTABLEKS                       R49 R50 K77 ["Localization"]
      353 GETTABLEKS                       R48 R49 K78 ["SourceStrings"]
      355 GETTABLEKS                       R51 R2 K76 ["Resources"]
      357 GETTABLEKS                       R50 R51 K77 ["Localization"]
      359 GETTABLEKS                       R49 R50 K79 ["LocalizedStrings"]
      361 GETIMPORT                        R50 K6 [game]
      363 LOADK                            R52 K80 ["HttpService"]
      364 NAMECALL                         R50 R50 K22 ["GetService"]
      366 CALL                             R50 2 1
      367 GETIMPORT                        R51 K6 [game]
      369 LOADK                            R53 K81 ["RobloxPluginGuiService"]
      370 NAMECALL                         R51 R51 K22 ["GetService"]
      372 CALL                             R51 2 1
      373 GETIMPORT                        R52 K6 [game]
      375 LOADK                            R54 K82 ["StudioAssetService"]
      376 NAMECALL                         R52 R52 K22 ["GetService"]
      378 CALL                             R52 2 1
      379 MOVE                             R53 R34
      380 CALL                             R53 0 1
      381 JUMPIF                           R53 ; [+1]
      382 RETURN                           R0 0
      383 GETTABLEKS                       R54 R44 K77 ["Localization"]
      385 GETTABLEKS                       R53 R54 K83 ["new"]
      387 DUPTABLE                         R54 K88 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
      388 SETTABLEKS                       R48 R54 K84 ["stringResourceTable"]
      390 SETTABLEKS                       R49 R54 K85 ["translationResourceTable"]
      392 LOADK                            R55 K89 ["Toolbox"]
      393 SETTABLEKS                       R55 R54 K86 ["pluginName"]
      395 NEWTABLE                         R55 1 0
      397 GETTABLEKS                       R57 R17 K76 ["Resources"]
      399 GETTABLEKS                       R56 R57 K90 ["LOCALIZATION_PROJECT_NAME"]
      401 DUPTABLE                         R57 K91 [{"stringResourceTable", "translationResourceTable"}]
      402 GETTABLEKS                       R59 R17 K76 ["Resources"]
      404 GETTABLEKS                       R58 R59 K78 ["SourceStrings"]
      406 SETTABLEKS                       R58 R57 K84 ["stringResourceTable"]
      408 GETTABLEKS                       R59 R17 K76 ["Resources"]
      410 GETTABLEKS                       R58 R59 K79 ["LocalizedStrings"]
      412 SETTABLEKS                       R58 R57 K85 ["translationResourceTable"]
      414 SETTABLE                         R57 R55 R56
      415 SETTABLEKS                       R55 R54 K87 ["libraries"]
      417 CALL                             R53 1 1
      418 NEWCLOSURE                       R54 P0
      419 CAPTURE                          VAL R24
      420 NEWCLOSURE                       R55 P1
      421 CAPTURE                          VAL R25
      422 LOADNIL                          R56
      423 LOADNIL                          R57
      424 NEWCLOSURE                       R58 P2
      425 CAPTURE                          REF R57
      426 CAPTURE                          VAL R11
      427 CAPTURE                          REF R56
      428 CAPTURE                          VAL R43
      429 CAPTURE                          VAL R47
      430 CAPTURE                          VAL R27
      431 CAPTURE                          VAL R32
      432 CAPTURE                          VAL R26
      433 CAPTURE                          VAL R45
      434 CAPTURE                          VAL R52
      435 CAPTURE                          VAL R19
      436 CAPTURE                          VAL R37
      437 CAPTURE                          VAL R6
      438 CAPTURE                          VAL R7
      439 CAPTURE                          VAL R10
      440 CAPTURE                          VAL R55
      441 CAPTURE                          VAL R38
      442 CAPTURE                          VAL R51
      443 CAPTURE                          VAL R16
      444 CAPTURE                          VAL R13
      445 CAPTURE                          VAL R29
      446 CAPTURE                          VAL R39
      447 CAPTURE                          VAL R0
      448 CAPTURE                          VAL R40
      449 CAPTURE                          VAL R53
      450 NEWCLOSURE                       R59 P3
      451 CAPTURE                          REF R57
      452 CAPTURE                          VAL R11
      453 CAPTURE                          REF R56
      454 CAPTURE                          VAL R43
      455 CAPTURE                          VAL R47
      456 CAPTURE                          VAL R27
      457 CAPTURE                          VAL R32
      458 CAPTURE                          VAL R26
      459 CAPTURE                          VAL R45
      460 CAPTURE                          VAL R52
      461 CAPTURE                          VAL R19
      462 CAPTURE                          VAL R37
      463 CAPTURE                          VAL R6
      464 CAPTURE                          VAL R7
      465 CAPTURE                          VAL R10
      466 CAPTURE                          VAL R55
      467 CAPTURE                          VAL R38
      468 CAPTURE                          VAL R51
      469 CAPTURE                          VAL R16
      470 CAPTURE                          VAL R13
      471 CAPTURE                          VAL R29
      472 CAPTURE                          VAL R39
      473 CAPTURE                          VAL R0
      474 CAPTURE                          VAL R40
      475 CAPTURE                          VAL R53
      476 NEWCLOSURE                       R60 P4
      477 CAPTURE                          VAL R9
      478 CAPTURE                          VAL R59
      479 CAPTURE                          VAL R58
      480 NEWCLOSURE                       R61 P5
      481 CAPTURE                          REF R56
      482 CAPTURE                          VAL R19
      483 CAPTURE                          VAL R36
      484 CAPTURE                          VAL R21
      485 CAPTURE                          VAL R28
      486 CAPTURE                          VAL R23
      487 CAPTURE                          VAL R0
      488 CAPTURE                          VAL R54
      489 CAPTURE                          VAL R38
      490 CAPTURE                          VAL R30
      491 CAPTURE                          VAL R31
      492 CAPTURE                          VAL R14
      493 CAPTURE                          VAL R18
      494 CAPTURE                          VAL R16
      495 CAPTURE                          VAL R35
      496 CAPTURE                          VAL R26
      497 CAPTURE                          VAL R32
      498 CAPTURE                          VAL R9
      499 CAPTURE                          VAL R59
      500 CAPTURE                          VAL R58
      501 CAPTURE                          VAL R33
      502 CAPTURE                          VAL R1
      503 CAPTURE                          VAL R5
      504 CAPTURE                          VAL R42
      505 CAPTURE                          VAL R41
      506 CAPTURE                          VAL R29
      507 CAPTURE                          VAL R40
      508 CAPTURE                          VAL R53
      509 CAPTURE                          VAL R27
      510 CAPTURE                          VAL R52
      511 CAPTURE                          VAL R8
      512 CAPTURE                          VAL R50
      513 CAPTURE                          VAL R20
      514 MOVE                             R62 R61
      515 CALL                             R62 0 0
      516 CLOSEUPVALS                      R56
      517 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_32]
        2 RETURN                           R0 1
