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
        0 GETUPVAL                         R9 0
        1 JUMPIFNOT                        R9 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R9 0 0
        5 NEWTABLE                         R10 0 0
        7 NEWTABLE                         R11 0 0
        9 NEWTABLE                         R12 0 0
       11 NEWTABLE                         R13 0 0
       13 LOADB                            R14 0
       14 LOADNIL                          R15
       15 GETUPVAL                         R16 1
       16 JUMPIFNOT                        R16 ; [+32]
       17 GETUPVAL                         R16 1
       18 NAMECALL                         R16 R16 K0 ["getState"]
       20 CALL                             R16 1 1
       21 MOVE                             R15 R16
       22 GETTABLEKS                       R16 R15 K1 ["roles"]
       24 GETTABLEKS                       R9 R16 K2 ["allowedAssetTypesForRelease"]
       26 GETTABLEKS                       R16 R15 K1 ["roles"]
       28 GETTABLEKS                       R10 R16 K3 ["allowedAssetTypesForUpload"]
       30 GETTABLEKS                       R16 R15 K1 ["roles"]
       32 GETTABLEKS                       R11 R16 K4 ["allowedAssetTypesForFree"]
       34 GETTABLEKS                       R16 R15 K1 ["roles"]
       36 GETTABLEKS                       R12 R16 K5 ["allowedBundleTypeSettings"]
       38 GETTABLEKS                       R16 R15 K6 ["packages"]
       40 GETTABLEKS                       R13 R16 K7 ["permissionsTable"]
       42 GETUPVAL                         R16 2
       43 CALL                             R16 0 1
       44 JUMPIFNOT                        R16 ; [+4]
       45 GETTABLEKS                       R16 R15 K1 ["roles"]
       47 GETTABLEKS                       R14 R16 K8 ["groupBundlesUploadEnabledForUser"]
       49 LOADNIL                          R16
       50 JUMPIFNOT                        R15 ; [+8]
       51 GETTABLEKS                       R18 R15 K9 ["assets"]
       53 JUMPIFNOT                        R18 ; [+5]
       54 GETTABLEKS                       R18 R15 K9 ["assets"]
       56 GETTABLEKS                       R17 R18 K10 ["idToAssetMap"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R17
       60 JUMPIFNOT                        R17 ; [+15]
       61 GETUPVAL                         R18 3
       62 MOVE                             R19 R17
       63 NEWCLOSURE                       R20 P0
       64 CAPTURE                          VAL R0
       65 CALL                             R18 2 1
       66 JUMPIFNOT                        R18 ; [+8]
       67 GETTABLEKS                       R19 R18 K11 ["Asset"]
       69 JUMPIFNOT                        R19 ; [+5]
       70 GETTABLEKS                       R19 R18 K11 ["Asset"]
       72 GETTABLEKS                       R16 R19 K12 ["AssetMediaIds"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R16
       76 GETUPVAL                         R19 4
       77 GETTABLEKS                       R18 R19 K13 ["getFlowStartScreen"]
       79 MOVE                             R19 R1
       80 MOVE                             R20 R9
       81 CALL                             R18 2 1
       82 JUMPIFNOTEQKNIL                  R6 ; [+6]
       84 GETUPVAL                         R19 5
       85 NAMECALL                         R19 R19 K14 ["getDefaultTab"]
       87 CALL                             R19 1 1
       88 MOVE                             R6 R19
       89 GETUPVAL                         R21 6
       90 GETTABLEKS                       R20 R21 K15 ["FLOW_TYPE"]
       92 GETTABLEKS                       R19 R20 K16 ["DOWNLOAD_FLOW"]
       94 JUMPIFNOTEQ                      R1 R19 ; [+6]
       96 GETUPVAL                         R19 5
       97 NAMECALL                         R19 R19 K17 ["getOverrideTab"]
       99 CALL                             R19 1 1
      100 MOVE                             R6 R19
      101 NEWTABLE                         R19 0 1
      103 GETUPVAL                         R20 7
      104 DUPTABLE                         R21 K19 [{"StudioAssetService"}]
      105 GETUPVAL                         R22 8
      106 SETTABLEKS                       R22 R21 K18 ["StudioAssetService"]
      108 CALL                             R20 1 -1
      109 SETLIST                          R19 R20 -1 [1]
      111 GETUPVAL                         R22 9
      112 GETTABLEKS                       R21 R22 K20 ["Store"]
      114 GETTABLEKS                       R20 R21 K21 ["new"]
      116 GETUPVAL                         R21 10
      117 DUPTABLE                         R22 K39 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      118 SETTABLEKS                       R0 R22 K22 ["assetId"]
      120 SETTABLEKS                       R16 R22 K23 ["assetMediaIds"]
      122 SETTABLEKS                       R1 R22 K24 ["screenFlowType"]
      124 SETTABLEKS                       R18 R22 K25 ["currentScreen"]
      126 SETTABLEKS                       R2 R22 K26 ["instances"]
      128 GETUPVAL                         R24 11
      129 JUMPIF                           R24 ; [+2]
      130 GETUPVAL                         R24 12
      131 JUMPIFNOT                        R24 ; [+2]
      132 MOVE                             R23 R4
      133 JUMPIF                           R23 ; [+1]
      134 LOADNIL                          R23
      135 SETTABLEKS                       R23 R22 K27 ["sourceInstances"]
      137 SETTABLEKS                       R9 R22 K2 ["allowedAssetTypesForRelease"]
      139 SETTABLEKS                       R10 R22 K3 ["allowedAssetTypesForUpload"]
      141 SETTABLEKS                       R11 R22 K4 ["allowedAssetTypesForFree"]
      143 SETTABLEKS                       R12 R22 K5 ["allowedBundleTypeSettings"]
      145 NEWTABLE                         R23 0 0
      147 SETTABLEKS                       R23 R22 K28 ["idToFiatProductMap"]
      149 DUPTABLE                         R23 K42 [{"inProgress", "queued"}]
      150 NEWTABLE                         R24 0 0
      152 SETTABLEKS                       R24 R23 K40 ["inProgress"]
      154 NEWTABLE                         R24 0 0
      156 SETTABLEKS                       R24 R23 K41 ["queued"]
      158 SETTABLEKS                       R23 R22 K29 ["rollingAssetPermissionRequests"]
      160 SETTABLEKS                       R3 R22 K30 ["assetTypeEnum"]
      162 SETTABLEKS                       R6 R22 K31 ["currentTab"]
      164 SETTABLEKS                       R13 R22 K32 ["packagePermissions"]
      166 NEWTABLE                         R23 0 0
      168 SETTABLEKS                       R23 R22 K33 ["overrideCursor"]
      170 LOADB                            R23 0
      171 SETTABLEKS                       R23 R22 K34 ["deleteLocal"]
      173 SETTABLEKS                       R5 R22 K35 ["hasSubsequent"]
      175 GETUPVAL                         R24 13
      176 CALL                             R24 0 1
      177 JUMPIFNOT                        R24 ; [+2]
      178 MOVE                             R23 R7
      179 JUMPIF                           R23 ; [+1]
      180 LOADNIL                          R23
      181 SETTABLEKS                       R23 R22 K36 ["avatarAssetCurrentIndex"]
      183 GETUPVAL                         R24 13
      184 CALL                             R24 0 1
      185 JUMPIFNOT                        R24 ; [+2]
      186 MOVE                             R23 R8
      187 JUMPIF                           R23 ; [+1]
      188 LOADNIL                          R23
      189 SETTABLEKS                       R23 R22 K37 ["avatarAssetTotalCount"]
      191 GETUPVAL                         R24 14
      192 CALL                             R24 0 1
      193 JUMPIFNOT                        R24 ; [+3]
      194 NEWTABLE                         R23 0 0
      196 JUMP                             ; [+1]
      197 LOADNIL                          R23
      198 SETTABLEKS                       R23 R22 K38 ["sellerStatusData"]
      200 GETUPVAL                         R24 2
      201 CALL                             R24 0 1
      202 JUMPIFNOT                        R24 ; [+2]
      203 MOVE                             R23 R14
      204 JUMP                             ; [+1]
      205 LOADNIL                          R23
      206 SETTABLEKS                       R23 R22 K8 ["groupBundlesUploadEnabledForUser"]
      208 MOVE                             R23 R19
      209 CALL                             R20 3 1
      210 GETUPVAL                         R21 15
      211 CALL                             R21 0 1
      212 GETUPVAL                         R23 16
      213 GETTABLEKS                       R22 R23 K21 ["new"]
      215 CALL                             R22 0 1
      216 NEWCLOSURE                       R23 P1
      217 CAPTURE                          UPVAL U0
      218 CAPTURE                          UPVAL U17
      219 CAPTURE                          UPVAL U18
      220 CAPTURE                          UPVAL U19
      221 GETUPVAL                         R25 12
      222 JUMPIFNOT                        R25 ; [+5]
      223 GETUPVAL                         R25 20
      224 GETTABLEKS                       R24 R25 K21 ["new"]
      226 CALL                             R24 0 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R24
      229 GETUPVAL                         R26 18
      230 GETTABLEKS                       R25 R26 K43 ["createElement"]
      232 GETUPVAL                         R26 21
      233 DUPTABLE                         R27 K49 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      234 SETTABLEKS                       R0 R27 K22 ["assetId"]
      236 SETTABLEKS                       R3 R27 K30 ["assetTypeEnum"]
      238 GETUPVAL                         R28 22
      239 SETTABLEKS                       R28 R27 K44 ["plugin"]
      241 SETTABLEKS                       R20 R27 K45 ["store"]
      243 SETTABLEKS                       R21 R27 K46 ["theme"]
      245 SETTABLEKS                       R22 R27 K47 ["networkInterface"]
      247 SETTABLEKS                       R23 R27 K48 ["onAssetConfigDestroy"]
      249 CALL                             R25 2 1
      250 GETUPVAL                         R27 18
      251 GETTABLEKS                       R26 R27 K43 ["createElement"]
      253 GETUPVAL                         R27 23
      254 DUPTABLE                         R28 K53 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      255 GETUPVAL                         R30 12
      256 JUMPIFNOT                        R30 ; [+2]
      257 MOVE                             R29 R24
      258 JUMP                             ; [+1]
      259 LOADNIL                          R29
      260 SETTABLEKS                       R29 R28 K50 ["ixp"]
      262 GETUPVAL                         R29 24
      263 SETTABLEKS                       R29 R28 K51 ["localization"]
      265 GETUPVAL                         R29 22
      266 SETTABLEKS                       R29 R28 K44 ["plugin"]
      268 SETTABLEKS                       R21 R28 K46 ["theme"]
      270 SETTABLEKS                       R20 R28 K45 ["store"]
      272 GETIMPORT                        R29 K54 [settings]
      274 SETTABLEKS                       R29 R28 K52 ["settings"]
      276 NEWTABLE                         R29 0 1
      278 MOVE                             R30 R25
      279 SETLIST                          R29 R30 1 [1]
      281 CALL                             R26 3 1
      282 GETUPVAL                         R28 18
      283 GETTABLEKS                       R27 R28 K55 ["mount"]
      285 MOVE                             R28 R26
      286 CALL                             R27 1 1
      287 SETUPVAL                         R27 0
      288 RETURN                           R0 0

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
        0 GETUPVAL                         R10 0
        1 JUMPIFNOT                        R10 ; [+2]
        2 LOADNIL                          R10
        3 RETURN                           R10 1
        4 NEWTABLE                         R10 0 0
        6 NEWTABLE                         R11 0 0
        8 NEWTABLE                         R12 0 0
       10 NEWTABLE                         R13 0 0
       12 NEWTABLE                         R14 0 0
       14 LOADB                            R15 0
       15 LOADNIL                          R16
       16 GETUPVAL                         R17 1
       17 JUMPIFNOT                        R17 ; [+32]
       18 GETUPVAL                         R17 1
       19 NAMECALL                         R17 R17 K0 ["getState"]
       21 CALL                             R17 1 1
       22 MOVE                             R16 R17
       23 GETTABLEKS                       R17 R16 K1 ["roles"]
       25 GETTABLEKS                       R10 R17 K2 ["allowedAssetTypesForRelease"]
       27 GETTABLEKS                       R17 R16 K1 ["roles"]
       29 GETTABLEKS                       R11 R17 K3 ["allowedAssetTypesForUpload"]
       31 GETTABLEKS                       R17 R16 K1 ["roles"]
       33 GETTABLEKS                       R12 R17 K4 ["allowedAssetTypesForFree"]
       35 GETTABLEKS                       R17 R16 K1 ["roles"]
       37 GETTABLEKS                       R13 R17 K5 ["allowedBundleTypeSettings"]
       39 GETTABLEKS                       R17 R16 K6 ["packages"]
       41 GETTABLEKS                       R14 R17 K7 ["permissionsTable"]
       43 GETUPVAL                         R17 2
       44 CALL                             R17 0 1
       45 JUMPIFNOT                        R17 ; [+4]
       46 GETTABLEKS                       R17 R16 K1 ["roles"]
       48 GETTABLEKS                       R15 R17 K8 ["groupBundlesUploadEnabledForUser"]
       50 LOADNIL                          R17
       51 JUMPIFNOT                        R16 ; [+8]
       52 GETTABLEKS                       R19 R16 K9 ["assets"]
       54 JUMPIFNOT                        R19 ; [+5]
       55 GETTABLEKS                       R19 R16 K9 ["assets"]
       57 GETTABLEKS                       R18 R19 K10 ["idToAssetMap"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R18
       61 JUMPIFNOT                        R18 ; [+15]
       62 GETUPVAL                         R19 3
       63 MOVE                             R20 R18
       64 NEWCLOSURE                       R21 P0
       65 CAPTURE                          VAL R0
       66 CALL                             R19 2 1
       67 JUMPIFNOT                        R19 ; [+8]
       68 GETTABLEKS                       R20 R19 K11 ["Asset"]
       70 JUMPIFNOT                        R20 ; [+5]
       71 GETTABLEKS                       R20 R19 K11 ["Asset"]
       73 GETTABLEKS                       R17 R20 K12 ["AssetMediaIds"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R17
       77 GETUPVAL                         R20 4
       78 GETTABLEKS                       R19 R20 K13 ["getFlowStartScreen"]
       80 MOVE                             R20 R1
       81 MOVE                             R21 R10
       82 CALL                             R19 2 1
       83 JUMPIFNOTEQKNIL                  R6 ; [+6]
       85 GETUPVAL                         R20 5
       86 NAMECALL                         R20 R20 K14 ["getDefaultTab"]
       88 CALL                             R20 1 1
       89 MOVE                             R6 R20
       90 GETUPVAL                         R22 6
       91 GETTABLEKS                       R21 R22 K15 ["FLOW_TYPE"]
       93 GETTABLEKS                       R20 R21 K16 ["DOWNLOAD_FLOW"]
       95 JUMPIFNOTEQ                      R1 R20 ; [+6]
       97 GETUPVAL                         R20 5
       98 NAMECALL                         R20 R20 K17 ["getOverrideTab"]
      100 CALL                             R20 1 1
      101 MOVE                             R6 R20
      102 NEWTABLE                         R20 0 1
      104 GETUPVAL                         R21 7
      105 DUPTABLE                         R22 K19 [{"StudioAssetService"}]
      106 GETUPVAL                         R23 8
      107 SETTABLEKS                       R23 R22 K18 ["StudioAssetService"]
      109 CALL                             R21 1 -1
      110 SETLIST                          R20 R21 -1 [1]
      112 GETUPVAL                         R23 9
      113 GETTABLEKS                       R22 R23 K20 ["Store"]
      115 GETTABLEKS                       R21 R22 K21 ["new"]
      117 GETUPVAL                         R22 10
      118 DUPTABLE                         R23 K39 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      119 SETTABLEKS                       R0 R23 K22 ["assetId"]
      121 SETTABLEKS                       R17 R23 K23 ["assetMediaIds"]
      123 SETTABLEKS                       R1 R23 K24 ["screenFlowType"]
      125 SETTABLEKS                       R19 R23 K25 ["currentScreen"]
      127 SETTABLEKS                       R2 R23 K26 ["instances"]
      129 GETUPVAL                         R25 11
      130 JUMPIF                           R25 ; [+2]
      131 GETUPVAL                         R25 12
      132 JUMPIFNOT                        R25 ; [+2]
      133 MOVE                             R24 R4
      134 JUMPIF                           R24 ; [+1]
      135 LOADNIL                          R24
      136 SETTABLEKS                       R24 R23 K27 ["sourceInstances"]
      138 SETTABLEKS                       R10 R23 K2 ["allowedAssetTypesForRelease"]
      140 SETTABLEKS                       R11 R23 K3 ["allowedAssetTypesForUpload"]
      142 SETTABLEKS                       R12 R23 K4 ["allowedAssetTypesForFree"]
      144 SETTABLEKS                       R13 R23 K5 ["allowedBundleTypeSettings"]
      146 NEWTABLE                         R24 0 0
      148 SETTABLEKS                       R24 R23 K28 ["idToFiatProductMap"]
      150 DUPTABLE                         R24 K42 [{"inProgress", "queued"}]
      151 NEWTABLE                         R25 0 0
      153 SETTABLEKS                       R25 R24 K40 ["inProgress"]
      155 NEWTABLE                         R25 0 0
      157 SETTABLEKS                       R25 R24 K41 ["queued"]
      159 SETTABLEKS                       R24 R23 K29 ["rollingAssetPermissionRequests"]
      161 SETTABLEKS                       R3 R23 K30 ["assetTypeEnum"]
      163 SETTABLEKS                       R6 R23 K31 ["currentTab"]
      165 SETTABLEKS                       R14 R23 K32 ["packagePermissions"]
      167 NEWTABLE                         R24 0 0
      169 SETTABLEKS                       R24 R23 K33 ["overrideCursor"]
      171 LOADB                            R24 0
      172 SETTABLEKS                       R24 R23 K34 ["deleteLocal"]
      174 SETTABLEKS                       R5 R23 K35 ["hasSubsequent"]
      176 GETUPVAL                         R25 13
      177 CALL                             R25 0 1
      178 JUMPIFNOT                        R25 ; [+2]
      179 MOVE                             R24 R8
      180 JUMP                             ; [+1]
      181 LOADNIL                          R24
      182 SETTABLEKS                       R24 R23 K36 ["avatarAssetCurrentIndex"]
      184 GETUPVAL                         R25 13
      185 CALL                             R25 0 1
      186 JUMPIFNOT                        R25 ; [+2]
      187 MOVE                             R24 R9
      188 JUMP                             ; [+1]
      189 LOADNIL                          R24
      190 SETTABLEKS                       R24 R23 K37 ["avatarAssetTotalCount"]
      192 GETUPVAL                         R25 14
      193 CALL                             R25 0 1
      194 JUMPIFNOT                        R25 ; [+3]
      195 NEWTABLE                         R24 0 0
      197 JUMP                             ; [+1]
      198 LOADNIL                          R24
      199 SETTABLEKS                       R24 R23 K38 ["sellerStatusData"]
      201 GETUPVAL                         R25 2
      202 CALL                             R25 0 1
      203 JUMPIFNOT                        R25 ; [+2]
      204 MOVE                             R24 R15
      205 JUMP                             ; [+1]
      206 LOADNIL                          R24
      207 SETTABLEKS                       R24 R23 K8 ["groupBundlesUploadEnabledForUser"]
      209 MOVE                             R24 R20
      210 CALL                             R21 3 1
      211 GETUPVAL                         R22 15
      212 CALL                             R22 0 1
      213 GETUPVAL                         R24 16
      214 GETTABLEKS                       R23 R24 K21 ["new"]
      216 CALL                             R23 0 1
      217 NEWCLOSURE                       R24 P1
      218 CAPTURE                          UPVAL U0
      219 CAPTURE                          UPVAL U17
      220 CAPTURE                          UPVAL U18
      221 CAPTURE                          UPVAL U19
      222 CAPTURE                          VAL R7
      223 GETUPVAL                         R26 12
      224 JUMPIFNOT                        R26 ; [+5]
      225 GETUPVAL                         R26 20
      226 GETTABLEKS                       R25 R26 K21 ["new"]
      228 CALL                             R25 0 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R25
      231 GETUPVAL                         R27 18
      232 GETTABLEKS                       R26 R27 K43 ["createElement"]
      234 GETUPVAL                         R27 21
      235 DUPTABLE                         R28 K49 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      236 SETTABLEKS                       R0 R28 K22 ["assetId"]
      238 SETTABLEKS                       R3 R28 K30 ["assetTypeEnum"]
      240 GETUPVAL                         R29 22
      241 SETTABLEKS                       R29 R28 K44 ["plugin"]
      243 SETTABLEKS                       R21 R28 K45 ["store"]
      245 SETTABLEKS                       R22 R28 K46 ["theme"]
      247 SETTABLEKS                       R23 R28 K47 ["networkInterface"]
      249 SETTABLEKS                       R24 R28 K48 ["onAssetConfigDestroy"]
      251 CALL                             R26 2 1
      252 GETUPVAL                         R28 18
      253 GETTABLEKS                       R27 R28 K43 ["createElement"]
      255 GETUPVAL                         R28 23
      256 DUPTABLE                         R29 K53 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      257 GETUPVAL                         R31 12
      258 JUMPIFNOT                        R31 ; [+2]
      259 MOVE                             R30 R25
      260 JUMP                             ; [+1]
      261 LOADNIL                          R30
      262 SETTABLEKS                       R30 R29 K50 ["ixp"]
      264 GETUPVAL                         R30 24
      265 SETTABLEKS                       R30 R29 K51 ["localization"]
      267 GETUPVAL                         R30 22
      268 SETTABLEKS                       R30 R29 K44 ["plugin"]
      270 SETTABLEKS                       R22 R29 K46 ["theme"]
      272 SETTABLEKS                       R21 R29 K45 ["store"]
      274 GETIMPORT                        R30 K54 [settings]
      276 SETTABLEKS                       R30 R29 K52 ["settings"]
      278 NEWTABLE                         R30 0 1
      280 MOVE                             R31 R26
      281 SETLIST                          R30 R31 1 [1]
      283 CALL                             R27 3 1
      284 GETUPVAL                         R29 18
      285 GETTABLEKS                       R28 R29 K55 ["mount"]
      287 MOVE                             R29 R27
      288 CALL                             R28 1 1
      289 SETUPVAL                         R28 0
      290 RETURN                           R21 1

PROTO_13:
        0 GETUPVAL                         R10 0
        1 CALL                             R10 0 1
        2 JUMPIFNOT                        R10 ; [+23]
        3 GETUPVAL                         R10 1
        4 MOVE                             R11 R0
        5 MOVE                             R12 R1
        6 MOVE                             R13 R2
        7 MOVE                             R14 R3
        8 MOVE                             R15 R4
        9 MOVE                             R16 R5
       10 MOVE                             R17 R6
       11 MOVE                             R18 R7
       12 GETUPVAL                         R20 2
       13 CALL                             R20 0 1
       14 JUMPIFNOT                        R20 ; [+2]
       15 MOVE                             R19 R8
       16 JUMP                             ; [+1]
       17 LOADNIL                          R19
       18 GETUPVAL                         R21 2
       19 CALL                             R21 0 1
       20 JUMPIFNOT                        R21 ; [+2]
       21 MOVE                             R20 R9
       22 JUMP                             ; [+1]
       23 LOADNIL                          R20
       24 CALL                             R10 10 1
       25 RETURN                           R10 1
       26 GETUPVAL                         R10 3
       27 MOVE                             R11 R0
       28 MOVE                             R12 R1
       29 MOVE                             R13 R2
       30 MOVE                             R14 R3
       31 MOVE                             R15 R4
       32 MOVE                             R16 R5
       33 MOVE                             R17 R6
       34 GETUPVAL                         R19 2
       35 CALL                             R19 0 1
       36 JUMPIFNOT                        R19 ; [+2]
       37 MOVE                             R18 R8
       38 JUMP                             ; [+1]
       39 LOADNIL                          R18
       40 GETUPVAL                         R20 2
       41 CALL                             R20 0 1
       42 JUMPIFNOT                        R20 ; [+2]
       43 MOVE                             R19 R9
       44 JUMP                             ; [+1]
       45 LOADNIL                          R19
       46 CALL                             R10 9 0
       47 LOADNIL                          R10
       48 RETURN                           R10 1

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
       50 GETUPVAL                         R4 6
       51 LOADNIL                          R5
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R7 R8 K12 ["FLOW_TYPE"]
       55 GETTABLEKS                       R6 R7 K13 ["UPLOAD_FLOW"]
       57 MOVE                             R7 R0
       58 MOVE                             R8 R1
       59 NEWTABLE                         R9 0 1
       61 GETUPVAL                         R10 1
       62 SETLIST                          R9 R10 1 [1]
       64 LOADB                            R10 0
       65 LOADNIL                          R11
       66 MOVE                             R12 R3
       67 GETUPVAL                         R14 7
       68 CALL                             R14 0 1
       69 JUMPIFNOT                        R14 ; [+2]
       70 GETUPVAL                         R13 8
       71 JUMP                             ; [+1]
       72 LOADNIL                          R13
       73 GETUPVAL                         R15 7
       74 CALL                             R15 0 1
       75 JUMPIFNOT                        R15 ; [+2]
       76 GETUPVAL                         R14 9
       77 JUMP                             ; [+1]
       78 LOADNIL                          R14
       79 CALL                             R4 10 1
       80 JUMPIF                           R4 ; [+10]
       81 GETUPVAL                         R5 4
       82 GETUPVAL                         R7 5
       83 LOADNIL                          R8
       84 LOADNIL                          R9
       85 LOADK                            R10 K14 ["Asset config dialog already open"]
       86 NAMECALL                         R5 R5 K15 ["ResolveSaveInstanceToRoblox"]
       88 CALL                             R5 5 0
       89 CLOSEUPVALS                      R2
       90 RETURN                           R0 0
       91 LOADNIL                          R5
       92 GETTABLEKS                       R6 R4 K16 ["changed"]
       94 NEWCLOSURE                       R8 P1
       95 CAPTURE                          REF R2
       96 CAPTURE                          REF R5
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          UPVAL U5
       99 NAMECALL                         R6 R6 K17 ["connect"]
      101 CALL                             R6 2 1
      102 MOVE                             R5 R6
      103 CLOSEUPVALS                      R2
      104 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 GETUPVAL                         R6 5
       12 JUMPIFNOT                        R6 ; [+13]
       13 GETUPVAL                         R6 6
       14 GETUPVAL                         R8 7
       15 GETUPVAL                         R9 8
       16 CALL                             R8 1 -1
       17 NAMECALL                         R6 R6 K0 ["dispatch"]
       19 CALL                             R6 -1 1
       20 MOVE                             R8 R5
       21 MOVE                             R9 R5
       22 NAMECALL                         R6 R6 K1 ["andThen"]
       24 CALL                             R6 3 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R6 6
       27 GETUPVAL                         R8 9
       28 GETUPVAL                         R9 8
       29 CALL                             R8 1 -1
       30 NAMECALL                         R6 R6 K0 ["dispatch"]
       32 CALL                             R6 -1 1
       33 MOVE                             R8 R5
       34 MOVE                             R9 R5
       35 NAMECALL                         R6 R6 K1 ["andThen"]
       37 CALL                             R6 3 0
       38 RETURN                           R0 0

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
       15 JUMPIFEQKNIL                     R1 ; [+50]
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
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 GETUPVAL                         R11 6
       53 CALL                             R11 0 1
       54 JUMPIFNOT                        R11 ; [+2]
       55 GETUPVAL                         R10 7
       56 JUMP                             ; [+1]
       57 LOADNIL                          R10
       58 GETUPVAL                         R12 6
       59 CALL                             R12 0 1
       60 JUMPIFNOT                        R12 ; [+2]
       61 GETUPVAL                         R11 8
       62 JUMP                             ; [+1]
       63 LOADNIL                          R11
       64 CALL                             R1 10 0
       65 RETURN                           R0 0
       66 LENGTH                           R1 R0
       67 JUMPIFNOTEQKN                    R1 K10 [1] ; [+35]
       69 GETTABLEN                        R1 R0 1
       70 LOADK                            R3 K11 ["AnimationClip"]
       71 NAMECALL                         R1 R1 K12 ["IsA"]
       73 CALL                             R1 2 1
       74 JUMPIFNOT                        R1 ; [+28]
       75 GETUPVAL                         R1 4
       76 LOADNIL                          R2
       77 GETUPVAL                         R5 5
       78 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
       80 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
       82 MOVE                             R4 R0
       83 GETIMPORT                        R5 K16 [Enum.AssetType.Animation]
       85 LOADNIL                          R6
       86 GETUPVAL                         R7 2
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 GETUPVAL                         R11 6
       90 CALL                             R11 0 1
       91 JUMPIFNOT                        R11 ; [+2]
       92 GETUPVAL                         R10 7
       93 JUMP                             ; [+1]
       94 LOADNIL                          R10
       95 GETUPVAL                         R12 6
       96 CALL                             R12 0 1
       97 JUMPIFNOT                        R12 ; [+2]
       98 GETUPVAL                         R11 8
       99 JUMP                             ; [+1]
      100 LOADNIL                          R11
      101 CALL                             R1 10 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R1 4
      104 LOADNIL                          R2
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
      108 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
      110 MOVE                             R4 R0
      111 LOADNIL                          R5
      112 GETUPVAL                         R6 1
      113 GETUPVAL                         R7 2
      114 LOADNIL                          R8
      115 LOADNIL                          R9
      116 GETUPVAL                         R11 6
      117 CALL                             R11 0 1
      118 JUMPIFNOT                        R11 ; [+2]
      119 GETUPVAL                         R10 7
      120 JUMP                             ; [+1]
      121 LOADNIL                          R10
      122 GETUPVAL                         R12 6
      123 CALL                             R12 0 1
      124 JUMPIFNOT                        R12 ; [+2]
      125 GETUPVAL                         R11 8
      126 JUMP                             ; [+1]
      127 LOADNIL                          R11
      128 CALL                             R1 10 0
      129 RETURN                           R0 0

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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R3 R4 K1 ["DOWNLOAD_FLOW"]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K5 [Enum.AssetType.Animation]
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R5 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R5
        8 GETIMPORT                        R6 K5 [Enum.AssetType.Model]
       10 CALL                             R2 4 0
       11 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R6 R3 K14 ["id"]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K15 ["FLOW_TYPE"]
       40 GETTABLEKS                       R7 R8 K16 ["EDIT_FLOW"]
       42 LOADNIL                          R8
       43 MOVE                             R9 R1
       44 CALL                             R5 4 0
       45 RETURN                           R0 0

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
      149 CALL                             R13 0 1
      150 JUMPIFNOT                        R13 ; [+19]
      151 GETUPVAL                         R15 19
      152 GETTABLEKS                       R14 R15 K29 ["signals"]
      154 GETTABLEKS                       R13 R14 K28 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      156 NEWCLOSURE                       R15 P3
      157 CAPTURE                          UPVAL U27
      158 CAPTURE                          UPVAL U16
      159 CAPTURE                          UPVAL U28
      160 CAPTURE                          UPVAL U15
      161 CAPTURE                          UPVAL U29
      162 CAPTURE                          UPVAL U20
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          UPVAL U21
      165 CAPTURE                          VAL R4
      166 CAPTURE                          UPVAL U22
      167 NAMECALL                         R13 R13 K30 ["Connect"]
      169 CALL                             R13 2 0
      170 GETUPVAL                         R13 30
      171 JUMPIFNOT                        R13 ; [+26]
      172 GETUPVAL                         R14 29
      173 CALL                             R14 0 1
      174 JUMPIFNOT                        R14 ; [+2]
      175 LOADK                            R13 K31 ["Toolbox.SaveToRobloxProgress"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R13
      178 GETUPVAL                         R16 19
      179 GETTABLEKS                       R15 R16 K29 ["signals"]
      181 GETTABLEKS                       R14 R15 K32 ["StudioAssetService.OnSaveToRoblox"]
      183 NEWCLOSURE                       R16 P4
      184 CAPTURE                          UPVAL U29
      185 CAPTURE                          VAL R13
      186 CAPTURE                          UPVAL U27
      187 CAPTURE                          UPVAL U15
      188 CAPTURE                          UPVAL U16
      189 CAPTURE                          UPVAL U20
      190 CAPTURE                          UPVAL U0
      191 CAPTURE                          UPVAL U21
      192 CAPTURE                          VAL R4
      193 CAPTURE                          UPVAL U22
      194 NAMECALL                         R14 R14 K30 ["Connect"]
      196 CALL                             R14 2 0
      197 JUMP                             ; [+17]
      198 GETUPVAL                         R15 19
      199 GETTABLEKS                       R14 R15 K29 ["signals"]
      201 GETTABLEKS                       R13 R14 K33 ["StudioService.OnSaveToRoblox"]
      203 NEWCLOSURE                       R15 P5
      204 CAPTURE                          UPVAL U27
      205 CAPTURE                          UPVAL U15
      206 CAPTURE                          UPVAL U16
      207 CAPTURE                          UPVAL U20
      208 CAPTURE                          UPVAL U0
      209 CAPTURE                          UPVAL U21
      210 CAPTURE                          VAL R4
      211 CAPTURE                          UPVAL U22
      212 NAMECALL                         R13 R13 K30 ["Connect"]
      214 CALL                             R13 2 0
      215 GETUPVAL                         R15 19
      216 GETTABLEKS                       R14 R15 K29 ["signals"]
      218 GETTABLEKS                       R13 R14 K34 ["StudioService.OnImportFromRoblox"]
      220 NEWCLOSURE                       R15 P6
      221 CAPTURE                          UPVAL U15
      222 CAPTURE                          UPVAL U16
      223 NAMECALL                         R13 R13 K30 ["Connect"]
      225 CALL                             R13 2 0
      226 GETUPVAL                         R15 19
      227 GETTABLEKS                       R14 R15 K29 ["signals"]
      229 GETTABLEKS                       R13 R14 K35 ["StudioService.OnOpenManagePackagePlugin"]
      231 NEWCLOSURE                       R15 P7
      232 CAPTURE                          UPVAL U15
      233 CAPTURE                          UPVAL U16
      234 NAMECALL                         R13 R13 K30 ["Connect"]
      236 CALL                             R13 2 0
      237 GETUPVAL                         R15 19
      238 GETTABLEKS                       R14 R15 K29 ["signals"]
      240 GETTABLEKS                       R13 R14 K36 ["StudioService.OnPublishAsPlugin"]
      242 NEWCLOSURE                       R15 P8
      243 CAPTURE                          UPVAL U15
      244 CAPTURE                          UPVAL U16
      245 CAPTURE                          UPVAL U27
      246 CAPTURE                          UPVAL U20
      247 CAPTURE                          UPVAL U0
      248 CAPTURE                          UPVAL U21
      249 CAPTURE                          VAL R4
      250 CAPTURE                          UPVAL U22
      251 NAMECALL                         R13 R13 K30 ["Connect"]
      253 CALL                             R13 2 0
      254 GETUPVAL                         R15 19
      255 GETTABLEKS                       R14 R15 K29 ["signals"]
      257 GETTABLEKS                       R13 R14 K37 ["MemStorageService.OpenAssetConfiguration"]
      259 NEWCLOSURE                       R15 P9
      260 CAPTURE                          UPVAL U31
      261 CAPTURE                          UPVAL U15
      262 CAPTURE                          UPVAL U16
      263 NAMECALL                         R13 R13 K30 ["Connect"]
      265 CALL                             R13 2 0
      266 GETUPVAL                         R14 32
      267 GETTABLEKS                       R13 R14 K38 ["registerLocalization"]
      269 GETUPVAL                         R14 25
      270 CALL                             R13 1 0
      271 GETUPVAL                         R14 32
      272 GETTABLEKS                       R13 R14 K39 ["registerProcessDragHandler"]
      274 GETUPVAL                         R14 6
      275 CALL                             R13 1 0
      276 CLOSEUPVALS                      R7
      277 RETURN                           R0 0

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
       68 GETTABLEKS                       R12 R13 K19 ["getFFlagAvatarPreviewerUpdateDialogUI"]
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
      426 CAPTURE                          REF R56
      427 CAPTURE                          VAL R43
      428 CAPTURE                          VAL R47
      429 CAPTURE                          VAL R27
      430 CAPTURE                          VAL R32
      431 CAPTURE                          VAL R26
      432 CAPTURE                          VAL R45
      433 CAPTURE                          VAL R52
      434 CAPTURE                          VAL R19
      435 CAPTURE                          VAL R37
      436 CAPTURE                          VAL R6
      437 CAPTURE                          VAL R7
      438 CAPTURE                          VAL R11
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
      452 CAPTURE                          REF R56
      453 CAPTURE                          VAL R43
      454 CAPTURE                          VAL R47
      455 CAPTURE                          VAL R27
      456 CAPTURE                          VAL R32
      457 CAPTURE                          VAL R26
      458 CAPTURE                          VAL R45
      459 CAPTURE                          VAL R52
      460 CAPTURE                          VAL R19
      461 CAPTURE                          VAL R37
      462 CAPTURE                          VAL R6
      463 CAPTURE                          VAL R7
      464 CAPTURE                          VAL R11
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
      479 CAPTURE                          VAL R11
      480 CAPTURE                          VAL R58
      481 NEWCLOSURE                       R61 P5
      482 CAPTURE                          REF R56
      483 CAPTURE                          VAL R19
      484 CAPTURE                          VAL R36
      485 CAPTURE                          VAL R21
      486 CAPTURE                          VAL R28
      487 CAPTURE                          VAL R23
      488 CAPTURE                          VAL R0
      489 CAPTURE                          VAL R54
      490 CAPTURE                          VAL R38
      491 CAPTURE                          VAL R30
      492 CAPTURE                          VAL R31
      493 CAPTURE                          VAL R14
      494 CAPTURE                          VAL R18
      495 CAPTURE                          VAL R16
      496 CAPTURE                          VAL R35
      497 CAPTURE                          VAL R60
      498 CAPTURE                          VAL R26
      499 CAPTURE                          VAL R32
      500 CAPTURE                          VAL R33
      501 CAPTURE                          VAL R1
      502 CAPTURE                          VAL R5
      503 CAPTURE                          VAL R42
      504 CAPTURE                          VAL R41
      505 CAPTURE                          VAL R29
      506 CAPTURE                          VAL R40
      507 CAPTURE                          VAL R53
      508 CAPTURE                          VAL R9
      509 CAPTURE                          VAL R27
      510 CAPTURE                          VAL R52
      511 CAPTURE                          VAL R11
      512 CAPTURE                          VAL R8
      513 CAPTURE                          VAL R50
      514 CAPTURE                          VAL R20
      515 MOVE                             R62 R61
      516 CALL                             R62 0 0
      517 CLOSEUPVALS                      R56
      518 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_32]
        2 RETURN                           R0 1
