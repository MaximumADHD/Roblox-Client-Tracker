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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R3 R4 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K5 [Enum.AssetType.Model]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 GETUPVAL                         R8 2
       13 NAMECALL                         R8 R8 K6 ["getVersionsTab"]
       15 CALL                             R8 1 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 0
        6 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       15 JUMPIFEQKNIL                     R1 ; [+36]
       17 GETUPVAL                         R1 4
       18 LOADNIL                          R2
       19 GETUPVAL                         R5 5
       20 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
       22 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
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
       41 GETUPVAL                         R7 5
       42 GETTABLEKS                       R6 R7 K9 ["UGCBundleTypes"]
       44 GETUPVAL                         R7 3
       45 GETTABLE                         R5 R6 R7
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 GETUPVAL                         R6 1
       49 GETUPVAL                         R7 2
       50 CALL                             R1 6 0
       51 RETURN                           R0 0
       52 LENGTH                           R1 R0
       53 JUMPIFNOTEQKN                    R1 K10 [1] ; [+21]
       55 GETTABLEN                        R1 R0 1
       56 LOADK                            R3 K11 ["AnimationClip"]
       57 NAMECALL                         R1 R1 K12 ["IsA"]
       59 CALL                             R1 2 1
       60 JUMPIFNOT                        R1 ; [+14]
       61 GETUPVAL                         R1 4
       62 LOADNIL                          R2
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
       66 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
       68 MOVE                             R4 R0
       69 GETIMPORT                        R5 K16 [Enum.AssetType.Animation]
       71 LOADNIL                          R6
       72 GETUPVAL                         R7 2
       73 CALL                             R1 6 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R1 4
       76 LOADNIL                          R2
       77 GETUPVAL                         R5 5
       78 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
       80 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
       82 MOVE                             R4 R0
       83 LOADNIL                          R5
       84 GETUPVAL                         R6 1
       85 GETUPVAL                         R7 2
       86 CALL                             R1 6 0
       87 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R4 3
        8 JUMPIFNOT                        R4 ; [+13]
        9 GETUPVAL                         R4 4
       10 GETUPVAL                         R6 5
       11 GETUPVAL                         R7 6
       12 CALL                             R6 1 -1
       13 NAMECALL                         R4 R4 K0 ["dispatch"]
       15 CALL                             R4 -1 1
       16 MOVE                             R6 R3
       17 MOVE                             R7 R3
       18 NAMECALL                         R4 R4 K1 ["andThen"]
       20 CALL                             R4 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 4
       23 GETUPVAL                         R6 7
       24 GETUPVAL                         R7 6
       25 CALL                             R6 1 -1
       26 NAMECALL                         R4 R4 K0 ["dispatch"]
       28 CALL                             R4 -1 1
       29 MOVE                             R6 R3
       30 MOVE                             R7 R3
       31 NAMECALL                         R4 R4 K1 ["andThen"]
       33 CALL                             R4 3 0
       34 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClonedInstances"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 LENGTH                           R1 R0
        6 JUMPIFNOTEQKN                    R1 K1 [1] ; [+19]
        8 GETTABLEN                        R1 R0 1
        9 LOADK                            R3 K2 ["AnimationClip"]
       10 NAMECALL                         R1 R1 K3 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+12]
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K4 ["FLOW_TYPE"]
       19 GETTABLEKS                       R3 R4 K5 ["UPLOAD_FLOW"]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R5 K9 [Enum.AssetType.Animation]
       24 CALL                             R1 4 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 2
       27 LOADNIL                          R2
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R4 R5 K4 ["FLOW_TYPE"]
       31 GETTABLEKS                       R3 R4 K5 ["UPLOAD_FLOW"]
       33 MOVE                             R4 R0
       34 LOADNIL                          R5
       35 GETUPVAL                         R6 1
       36 CALL                             R1 5 0
       37 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R3 R4 K1 ["DOWNLOAD_FLOW"]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K5 [Enum.AssetType.Animation]
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R5 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R5
        8 GETIMPORT                        R6 K5 [Enum.AssetType.Model]
       10 CALL                             R2 4 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R2 R3 K1 ["UPLOAD_FLOW"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["getClonedInstances"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETIMPORT                        R4 K6 [Enum.AssetType.Plugin]
       14 CALL                             R0 4 0
       15 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R6 R3 K14 ["id"]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K15 ["FLOW_TYPE"]
       40 GETTABLEKS                       R7 R8 K16 ["EDIT_FLOW"]
       42 LOADNIL                          R8
       43 MOVE                             R9 R1
       44 CALL                             R5 4 0
       45 RETURN                           R0 0

PROTO_22:
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
       60 NAMECALL                         R10 R10 K7 ["setup"]
       62 CALL                             R10 3 0
       63 GETUPVAL                         R11 13
       64 GETTABLEKS                       R10 R11 K8 ["createElement"]
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
       99 GETUPVAL                         R12 23
      100 GETTABLEKS                       R11 R12 K1 ["new"]
      102 CALL                             R11 0 1
      103 LOADNIL                          R12
      104 GETUPVAL                         R14 13
      105 GETTABLEKS                       R13 R14 K8 ["createElement"]
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
      135 GETUPVAL                         R14 13
      136 GETTABLEKS                       R13 R14 K25 ["mount"]
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
      149 JUMPIFNOT                        R13 ; [+18]
      150 GETUPVAL                         R15 19
      151 GETTABLEKS                       R14 R15 K29 ["signals"]
      153 GETTABLEKS                       R13 R14 K28 ["StudioAssetService.OnSaveToRoblox"]
      155 NEWCLOSURE                       R15 P3
      156 CAPTURE                          UPVAL U27
      157 CAPTURE                          UPVAL U15
      158 CAPTURE                          UPVAL U16
      159 CAPTURE                          UPVAL U20
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          UPVAL U21
      162 CAPTURE                          VAL R4
      163 CAPTURE                          UPVAL U22
      164 NAMECALL                         R13 R13 K30 ["Connect"]
      166 CALL                             R13 2 0
      167 JUMP                             ; [+17]
      168 GETUPVAL                         R15 19
      169 GETTABLEKS                       R14 R15 K29 ["signals"]
      171 GETTABLEKS                       R13 R14 K31 ["StudioService.OnSaveToRoblox"]
      173 NEWCLOSURE                       R15 P4
      174 CAPTURE                          UPVAL U27
      175 CAPTURE                          UPVAL U15
      176 CAPTURE                          UPVAL U16
      177 CAPTURE                          UPVAL U20
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          UPVAL U21
      180 CAPTURE                          VAL R4
      181 CAPTURE                          UPVAL U22
      182 NAMECALL                         R13 R13 K30 ["Connect"]
      184 CALL                             R13 2 0
      185 GETUPVAL                         R15 19
      186 GETTABLEKS                       R14 R15 K29 ["signals"]
      188 GETTABLEKS                       R13 R14 K32 ["StudioService.OnImportFromRoblox"]
      190 NEWCLOSURE                       R15 P5
      191 CAPTURE                          UPVAL U15
      192 CAPTURE                          UPVAL U16
      193 NAMECALL                         R13 R13 K30 ["Connect"]
      195 CALL                             R13 2 0
      196 GETUPVAL                         R15 19
      197 GETTABLEKS                       R14 R15 K29 ["signals"]
      199 GETTABLEKS                       R13 R14 K33 ["StudioService.OnOpenManagePackagePlugin"]
      201 NEWCLOSURE                       R15 P6
      202 CAPTURE                          UPVAL U15
      203 CAPTURE                          UPVAL U16
      204 NAMECALL                         R13 R13 K30 ["Connect"]
      206 CALL                             R13 2 0
      207 GETUPVAL                         R15 19
      208 GETTABLEKS                       R14 R15 K29 ["signals"]
      210 GETTABLEKS                       R13 R14 K34 ["StudioService.OnPublishAsPlugin"]
      212 NEWCLOSURE                       R15 P7
      213 CAPTURE                          UPVAL U15
      214 CAPTURE                          UPVAL U16
      215 CAPTURE                          UPVAL U27
      216 CAPTURE                          UPVAL U20
      217 CAPTURE                          UPVAL U0
      218 CAPTURE                          UPVAL U21
      219 CAPTURE                          VAL R4
      220 CAPTURE                          UPVAL U22
      221 NAMECALL                         R13 R13 K30 ["Connect"]
      223 CALL                             R13 2 0
      224 GETUPVAL                         R15 19
      225 GETTABLEKS                       R14 R15 K29 ["signals"]
      227 GETTABLEKS                       R13 R14 K35 ["MemStorageService.OpenAssetConfiguration"]
      229 NEWCLOSURE                       R15 P8
      230 CAPTURE                          UPVAL U28
      231 CAPTURE                          UPVAL U15
      232 CAPTURE                          UPVAL U16
      233 NAMECALL                         R13 R13 K30 ["Connect"]
      235 CALL                             R13 2 0
      236 GETUPVAL                         R14 29
      237 GETTABLEKS                       R13 R14 K36 ["registerLocalization"]
      239 GETUPVAL                         R14 25
      240 CALL                             R13 1 0
      241 GETUPVAL                         R14 29
      242 GETTABLEKS                       R13 R14 K37 ["registerProcessDragHandler"]
      244 GETUPVAL                         R14 6
      245 CALL                             R13 1 0
      246 CLOSEUPVALS                      R7
      247 RETURN                           R0 0

PROTO_23:
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
       44 GETTABLEKS                       R13 R2 K3 ["Src"]
       46 GETTABLEKS                       R12 R13 K4 ["Util"]
       48 GETTABLEKS                       R11 R12 K15 ["SharedFlags"]
       50 GETTABLEKS                       R10 R11 K16 ["getFFlagToolboxAssetConfigOnboardingLink"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K14 [require]
       55 GETTABLEKS                       R13 R2 K3 ["Src"]
       57 GETTABLEKS                       R12 R13 K17 ["Flags"]
       59 GETTABLEKS                       R11 R12 K18 ["getFFlagRemoveItemTags"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K14 [require]
       64 GETTABLEKS                       R12 R3 K19 ["isCli"]
       66 CALL                             R11 1 1
       67 MOVE                             R12 R11
       68 CALL                             R12 0 1
       69 JUMPIFNOT                        R12 ; [+1]
       70 RETURN                           R0 0
       71 GETIMPORT                        R12 K6 [game]
       73 LOADK                            R14 K20 ["StudioService"]
       74 NAMECALL                         R12 R12 K21 ["GetService"]
       76 CALL                             R12 2 1
       77 NAMECALL                         R13 R12 K22 ["HasInternalPermission"]
       79 CALL                             R13 1 1
       80 GETTABLEKS                       R14 R2 K23 ["Packages"]
       82 GETIMPORT                        R15 K14 [require]
       84 GETTABLEKS                       R16 R14 K24 ["Roact"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K14 [require]
       89 GETTABLEKS                       R17 R14 K25 ["Framework"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K14 [require]
       94 GETTABLEKS                       R19 R14 K26 ["Dev"]
       96 GETTABLEKS                       R18 R19 K27 ["DeveloperTools"]
       98 CALL                             R17 1 1
       99 JUMPIFNOT                        R4 ; [+13]
      100 GETTABLEKS                       R18 R15 K28 ["setGlobalConfig"]
      102 DUPTABLE                         R19 K32 [{"elementTracing", "propValidation", "typeChecks"}]
      103 LOADB                            R20 1
      104 SETTABLEKS                       R20 R19 K29 ["elementTracing"]
      106 LOADB                            R20 1
      107 SETTABLEKS                       R20 R19 K30 ["propValidation"]
      109 LOADB                            R20 1
      110 SETTABLEKS                       R20 R19 K31 ["typeChecks"]
      112 CALL                             R18 1 0
      113 GETIMPORT                        R18 K14 [require]
      115 GETTABLEKS                       R19 R14 K33 ["Rodux"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K14 [require]
      120 GETTABLEKS                       R20 R3 K34 ["InsertAsset"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K14 [require]
      125 GETTABLEKS                       R22 R3 K35 ["Analytics"]
      127 GETTABLEKS                       R21 R22 K36 ["AssetAnalyticsContextItem"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K14 [require]
      132 GETTABLEKS                       R22 R3 K37 ["DebugFlags"]
      134 CALL                             R21 1 1
      135 GETIMPORT                        R22 K14 [require]
      137 GETTABLEKS                       R23 R3 K38 ["Settings"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K14 [require]
      142 GETTABLEKS                       R24 R3 K39 ["ToolboxTheme"]
      144 CALL                             R23 1 1
      145 GETIMPORT                        R24 K14 [require]
      147 GETTABLEKS                       R25 R3 K40 ["AssetConfigTheme"]
      149 CALL                             R24 1 1
      150 GETIMPORT                        R25 K14 [require]
      152 GETTABLEKS                       R26 R3 K41 ["AssetConfigConstants"]
      154 CALL                             R25 1 1
      155 GETIMPORT                        R26 K14 [require]
      157 GETTABLEKS                       R27 R3 K42 ["AssetConfigUtil"]
      159 CALL                             R26 1 1
      160 GETIMPORT                        R27 K14 [require]
      162 GETTABLEKS                       R29 R3 K35 ["Analytics"]
      164 GETTABLEKS                       R28 R29 K43 ["makeToolboxAnalyticsContext"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K14 [require]
      169 GETTABLEKS                       R31 R2 K3 ["Src"]
      171 GETTABLEKS                       R30 R31 K44 ["ContextServices"]
      173 GETTABLEKS                       R29 R30 K45 ["IXPContext"]
      175 CALL                             R28 1 1
      176 GETTABLEKS                       R29 R21 K46 ["shouldDebugWarnings"]
      178 CALL                             R29 0 1
      179 JUMPIFNOT                        R29 ; [+13]
      180 GETIMPORT                        R31 K14 [require]
      182 GETTABLEKS                       R32 R14 K25 ["Framework"]
      184 CALL                             R31 1 1
      185 GETTABLEKS                       R30 R31 K4 ["Util"]
      187 GETTABLEKS                       R29 R30 K47 ["Promise"]
      189 GETIMPORT                        R30 K49 [warn]
      191 SETTABLEKS                       R30 R29 K50 ["onUnhandledRejection"]
      193 GETIMPORT                        R29 K14 [require]
      195 GETTABLEKS                       R32 R2 K3 ["Src"]
      197 GETTABLEKS                       R31 R32 K51 ["Types"]
      199 GETTABLEKS                       R30 R31 K52 ["Background"]
      201 CALL                             R29 1 1
      202 GETIMPORT                        R30 K14 [require]
      204 GETTABLEKS                       R33 R2 K3 ["Src"]
      206 GETTABLEKS                       R32 R33 K51 ["Types"]
      208 GETTABLEKS                       R31 R32 K53 ["Suggestion"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K14 [require]
      213 GETTABLEKS                       R34 R2 K3 ["Src"]
      215 GETTABLEKS                       R33 R34 K51 ["Types"]
      217 GETTABLEKS                       R32 R33 K54 ["ConfigTypes"]
      219 CALL                             R31 1 1
      220 GETIMPORT                        R32 K14 [require]
      222 GETTABLEKS                       R35 R2 K3 ["Src"]
      224 GETTABLEKS                       R34 R35 K55 ["Components"]
      226 GETTABLEKS                       R33 R34 K56 ["ToolboxPlugin"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R34 K14 [require]
      231 GETTABLEKS                       R37 R2 K3 ["Src"]
      233 GETTABLEKS                       R36 R37 K4 ["Util"]
      235 GETTABLEKS                       R35 R36 K57 ["ToolboxUtilities"]
      237 CALL                             R34 1 1
      238 GETTABLEKS                       R33 R34 K58 ["getToolboxEnabled"]
      240 GETIMPORT                        R34 K14 [require]
      242 GETTABLEKS                       R37 R2 K3 ["Src"]
      244 GETTABLEKS                       R36 R37 K4 ["Util"]
      246 GETTABLEKS                       R35 R36 K59 ["ToolboxCommunication"]
      248 CALL                             R34 1 1
      249 GETIMPORT                        R35 K14 [require]
      251 GETTABLEKS                       R38 R2 K3 ["Src"]
      253 GETTABLEKS                       R37 R38 K60 ["Reducers"]
      255 GETTABLEKS                       R36 R37 K61 ["ToolboxReducer"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K14 [require]
      260 GETTABLEKS                       R39 R2 K3 ["Src"]
      262 GETTABLEKS                       R38 R39 K60 ["Reducers"]
      264 GETTABLEKS                       R37 R38 K62 ["AssetConfigReducer"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K14 [require]
      269 GETTABLEKS                       R40 R2 K3 ["Src"]
      271 GETTABLEKS                       R39 R40 K63 ["Networking"]
      273 GETTABLEKS                       R38 R39 K64 ["NetworkInterface"]
      275 CALL                             R37 1 1
      276 GETIMPORT                        R38 K14 [require]
      278 GETTABLEKS                       R42 R2 K3 ["Src"]
      280 GETTABLEKS                       R41 R42 K55 ["Components"]
      282 GETTABLEKS                       R40 R41 K65 ["AssetConfiguration"]
      284 GETTABLEKS                       R39 R40 K66 ["AssetConfigWrapper"]
      286 CALL                             R38 1 1
      287 GETIMPORT                        R39 K14 [require]
      289 GETTABLEKS                       R42 R2 K3 ["Src"]
      291 GETTABLEKS                       R41 R42 K55 ["Components"]
      293 GETTABLEKS                       R40 R41 K67 ["ToolboxServiceWrapper"]
      295 CALL                             R39 1 1
      296 GETIMPORT                        R40 K14 [require]
      298 GETTABLEKS                       R44 R2 K3 ["Src"]
      300 GETTABLEKS                       R43 R44 K63 ["Networking"]
      302 GETTABLEKS                       R42 R43 K68 ["Requests"]
      304 GETTABLEKS                       R41 R42 K69 ["GetRolesRequest"]
      306 CALL                             R40 1 1
      307 GETIMPORT                        R41 K14 [require]
      309 GETTABLEKS                       R45 R2 K3 ["Src"]
      311 GETTABLEKS                       R44 R45 K63 ["Networking"]
      313 GETTABLEKS                       R43 R44 K68 ["Requests"]
      315 GETTABLEKS                       R42 R43 K70 ["GetRolesDebugRequest"]
      317 CALL                             R41 1 1
      318 GETIMPORT                        R42 K14 [require]
      320 GETTABLEKS                       R45 R2 K3 ["Src"]
      322 GETTABLEKS                       R44 R45 K17 ["Flags"]
      324 GETTABLEKS                       R43 R44 K71 ["getFFlagEnableUploadingGroupBundles"]
      326 CALL                             R42 1 1
      327 GETTABLEKS                       R43 R16 K44 ["ContextServices"]
      329 GETTABLEKS                       R45 R16 K4 ["Util"]
      331 GETTABLEKS                       R44 R45 K72 ["ThunkWithArgsMiddleware"]
      333 GETIMPORT                        R45 K14 [require]
      335 GETTABLEKS                       R46 R14 K73 ["Dash"]
      337 CALL                             R45 1 1
      338 GETTABLEKS                       R46 R45 K74 ["find"]
      340 GETTABLEKS                       R49 R2 K75 ["Resources"]
      342 GETTABLEKS                       R48 R49 K76 ["Localization"]
      344 GETTABLEKS                       R47 R48 K77 ["SourceStrings"]
      346 GETTABLEKS                       R50 R2 K75 ["Resources"]
      348 GETTABLEKS                       R49 R50 K76 ["Localization"]
      350 GETTABLEKS                       R48 R49 K78 ["LocalizedStrings"]
      352 GETIMPORT                        R49 K6 [game]
      354 LOADK                            R51 K79 ["HttpService"]
      355 NAMECALL                         R49 R49 K21 ["GetService"]
      357 CALL                             R49 2 1
      358 GETIMPORT                        R50 K6 [game]
      360 LOADK                            R52 K80 ["RobloxPluginGuiService"]
      361 NAMECALL                         R50 R50 K21 ["GetService"]
      363 CALL                             R50 2 1
      364 GETIMPORT                        R51 K6 [game]
      366 LOADK                            R53 K81 ["StudioAssetService"]
      367 NAMECALL                         R51 R51 K21 ["GetService"]
      369 CALL                             R51 2 1
      370 MOVE                             R52 R33
      371 CALL                             R52 0 1
      372 JUMPIF                           R52 ; [+1]
      373 RETURN                           R0 0
      374 GETTABLEKS                       R53 R43 K76 ["Localization"]
      376 GETTABLEKS                       R52 R53 K82 ["new"]
      378 DUPTABLE                         R53 K87 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
      379 SETTABLEKS                       R47 R53 K83 ["stringResourceTable"]
      381 SETTABLEKS                       R48 R53 K84 ["translationResourceTable"]
      383 LOADK                            R54 K88 ["Toolbox"]
      384 SETTABLEKS                       R54 R53 K85 ["pluginName"]
      386 NEWTABLE                         R54 1 0
      388 GETTABLEKS                       R56 R16 K75 ["Resources"]
      390 GETTABLEKS                       R55 R56 K89 ["LOCALIZATION_PROJECT_NAME"]
      392 DUPTABLE                         R56 K90 [{"stringResourceTable", "translationResourceTable"}]
      393 GETTABLEKS                       R58 R16 K75 ["Resources"]
      395 GETTABLEKS                       R57 R58 K77 ["SourceStrings"]
      397 SETTABLEKS                       R57 R56 K83 ["stringResourceTable"]
      399 GETTABLEKS                       R58 R16 K75 ["Resources"]
      401 GETTABLEKS                       R57 R58 K78 ["LocalizedStrings"]
      403 SETTABLEKS                       R57 R56 K84 ["translationResourceTable"]
      405 SETTABLE                         R56 R54 R55
      406 SETTABLEKS                       R54 R53 K86 ["libraries"]
      408 CALL                             R52 1 1
      409 NEWCLOSURE                       R53 P0
      410 CAPTURE                          VAL R23
      411 NEWCLOSURE                       R54 P1
      412 CAPTURE                          VAL R24
      413 LOADNIL                          R55
      414 LOADNIL                          R56
      415 NEWCLOSURE                       R57 P2
      416 CAPTURE                          REF R56
      417 CAPTURE                          VAL R10
      418 CAPTURE                          REF R55
      419 CAPTURE                          VAL R42
      420 CAPTURE                          VAL R46
      421 CAPTURE                          VAL R26
      422 CAPTURE                          VAL R31
      423 CAPTURE                          VAL R25
      424 CAPTURE                          VAL R44
      425 CAPTURE                          VAL R51
      426 CAPTURE                          VAL R18
      427 CAPTURE                          VAL R36
      428 CAPTURE                          VAL R6
      429 CAPTURE                          VAL R7
      430 CAPTURE                          VAL R9
      431 CAPTURE                          VAL R54
      432 CAPTURE                          VAL R37
      433 CAPTURE                          VAL R50
      434 CAPTURE                          VAL R15
      435 CAPTURE                          VAL R12
      436 CAPTURE                          VAL R28
      437 CAPTURE                          VAL R38
      438 CAPTURE                          VAL R0
      439 CAPTURE                          VAL R39
      440 CAPTURE                          VAL R52
      441 NEWCLOSURE                       R58 P3
      442 CAPTURE                          REF R55
      443 CAPTURE                          VAL R18
      444 CAPTURE                          VAL R35
      445 CAPTURE                          VAL R20
      446 CAPTURE                          VAL R27
      447 CAPTURE                          VAL R22
      448 CAPTURE                          VAL R0
      449 CAPTURE                          VAL R53
      450 CAPTURE                          VAL R37
      451 CAPTURE                          VAL R29
      452 CAPTURE                          VAL R30
      453 CAPTURE                          VAL R13
      454 CAPTURE                          VAL R17
      455 CAPTURE                          VAL R15
      456 CAPTURE                          VAL R34
      457 CAPTURE                          VAL R57
      458 CAPTURE                          VAL R25
      459 CAPTURE                          VAL R31
      460 CAPTURE                          VAL R32
      461 CAPTURE                          VAL R1
      462 CAPTURE                          VAL R5
      463 CAPTURE                          VAL R41
      464 CAPTURE                          VAL R40
      465 CAPTURE                          VAL R28
      466 CAPTURE                          VAL R39
      467 CAPTURE                          VAL R52
      468 CAPTURE                          VAL R8
      469 CAPTURE                          VAL R26
      470 CAPTURE                          VAL R49
      471 CAPTURE                          VAL R19
      472 MOVE                             R59 R58
      473 CALL                             R59 0 0
      474 CLOSEUPVALS                      R55
      475 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_23]
        2 RETURN                           R0 1
