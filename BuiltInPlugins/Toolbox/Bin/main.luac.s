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
        0 GETUPVAL                         R11 0
        1 JUMPIFNOT                        R11 ; [+2]
        2 LOADNIL                          R11
        3 RETURN                           R11 1
        4 NEWTABLE                         R11 0 0
        6 NEWTABLE                         R12 0 0
        8 NEWTABLE                         R13 0 0
       10 NEWTABLE                         R14 0 0
       12 NEWTABLE                         R15 0 0
       14 LOADB                            R16 0
       15 LOADNIL                          R17
       16 GETUPVAL                         R18 1
       17 JUMPIFNOT                        R18 ; [+32]
       18 GETUPVAL                         R18 1
       19 NAMECALL                         R18 R18 K0 ["getState"]
       21 CALL                             R18 1 1
       22 MOVE                             R17 R18
       23 GETTABLEKS                       R18 R17 K1 ["roles"]
       25 GETTABLEKS                       R11 R18 K2 ["allowedAssetTypesForRelease"]
       27 GETTABLEKS                       R18 R17 K1 ["roles"]
       29 GETTABLEKS                       R12 R18 K3 ["allowedAssetTypesForUpload"]
       31 GETTABLEKS                       R18 R17 K1 ["roles"]
       33 GETTABLEKS                       R13 R18 K4 ["allowedAssetTypesForFree"]
       35 GETTABLEKS                       R18 R17 K1 ["roles"]
       37 GETTABLEKS                       R14 R18 K5 ["allowedBundleTypeSettings"]
       39 GETTABLEKS                       R18 R17 K6 ["packages"]
       41 GETTABLEKS                       R15 R18 K7 ["permissionsTable"]
       43 GETUPVAL                         R18 2
       44 CALL                             R18 0 1
       45 JUMPIFNOT                        R18 ; [+4]
       46 GETTABLEKS                       R18 R17 K1 ["roles"]
       48 GETTABLEKS                       R16 R18 K8 ["groupBundlesUploadEnabledForUser"]
       50 LOADNIL                          R18
       51 JUMPIFNOT                        R17 ; [+8]
       52 GETTABLEKS                       R20 R17 K9 ["assets"]
       54 JUMPIFNOT                        R20 ; [+5]
       55 GETTABLEKS                       R20 R17 K9 ["assets"]
       57 GETTABLEKS                       R19 R20 K10 ["idToAssetMap"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R19
       61 JUMPIFNOT                        R19 ; [+15]
       62 GETUPVAL                         R20 3
       63 MOVE                             R21 R19
       64 NEWCLOSURE                       R22 P0
       65 CAPTURE                          VAL R0
       66 CALL                             R20 2 1
       67 JUMPIFNOT                        R20 ; [+8]
       68 GETTABLEKS                       R21 R20 K11 ["Asset"]
       70 JUMPIFNOT                        R21 ; [+5]
       71 GETTABLEKS                       R21 R20 K11 ["Asset"]
       73 GETTABLEKS                       R18 R21 K12 ["AssetMediaIds"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R18
       77 GETUPVAL                         R21 4
       78 GETTABLEKS                       R20 R21 K13 ["getFlowStartScreen"]
       80 MOVE                             R21 R1
       81 MOVE                             R22 R11
       82 CALL                             R20 2 1
       83 JUMPIFNOTEQKNIL                  R6 ; [+6]
       85 GETUPVAL                         R21 5
       86 NAMECALL                         R21 R21 K14 ["getDefaultTab"]
       88 CALL                             R21 1 1
       89 MOVE                             R6 R21
       90 GETUPVAL                         R23 6
       91 GETTABLEKS                       R22 R23 K15 ["FLOW_TYPE"]
       93 GETTABLEKS                       R21 R22 K16 ["DOWNLOAD_FLOW"]
       95 JUMPIFNOTEQ                      R1 R21 ; [+6]
       97 GETUPVAL                         R21 5
       98 NAMECALL                         R21 R21 K17 ["getOverrideTab"]
      100 CALL                             R21 1 1
      101 MOVE                             R6 R21
      102 NEWTABLE                         R21 0 1
      104 GETUPVAL                         R22 7
      105 DUPTABLE                         R23 K19 [{"StudioAssetService"}]
      106 GETUPVAL                         R24 8
      107 SETTABLEKS                       R24 R23 K18 ["StudioAssetService"]
      109 CALL                             R22 1 -1
      110 SETLIST                          R21 R22 -1 [1]
      112 GETUPVAL                         R24 9
      113 GETTABLEKS                       R23 R24 K20 ["Store"]
      115 GETTABLEKS                       R22 R23 K21 ["new"]
      117 GETUPVAL                         R23 10
      118 DUPTABLE                         R24 K39 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
      119 SETTABLEKS                       R0 R24 K22 ["assetId"]
      121 SETTABLEKS                       R18 R24 K23 ["assetMediaIds"]
      123 SETTABLEKS                       R1 R24 K24 ["screenFlowType"]
      125 SETTABLEKS                       R20 R24 K25 ["currentScreen"]
      127 SETTABLEKS                       R2 R24 K26 ["instances"]
      129 GETUPVAL                         R26 11
      130 JUMPIF                           R26 ; [+2]
      131 GETUPVAL                         R26 12
      132 JUMPIFNOT                        R26 ; [+2]
      133 MOVE                             R25 R4
      134 JUMPIF                           R25 ; [+1]
      135 LOADNIL                          R25
      136 SETTABLEKS                       R25 R24 K27 ["sourceInstances"]
      138 SETTABLEKS                       R11 R24 K2 ["allowedAssetTypesForRelease"]
      140 SETTABLEKS                       R12 R24 K3 ["allowedAssetTypesForUpload"]
      142 SETTABLEKS                       R13 R24 K4 ["allowedAssetTypesForFree"]
      144 SETTABLEKS                       R14 R24 K5 ["allowedBundleTypeSettings"]
      146 NEWTABLE                         R25 0 0
      148 SETTABLEKS                       R25 R24 K28 ["idToFiatProductMap"]
      150 DUPTABLE                         R25 K42 [{"inProgress", "queued"}]
      151 NEWTABLE                         R26 0 0
      153 SETTABLEKS                       R26 R25 K40 ["inProgress"]
      155 NEWTABLE                         R26 0 0
      157 SETTABLEKS                       R26 R25 K41 ["queued"]
      159 SETTABLEKS                       R25 R24 K29 ["rollingAssetPermissionRequests"]
      161 SETTABLEKS                       R3 R24 K30 ["assetTypeEnum"]
      163 SETTABLEKS                       R6 R24 K31 ["currentTab"]
      165 SETTABLEKS                       R15 R24 K32 ["packagePermissions"]
      167 NEWTABLE                         R25 0 0
      169 SETTABLEKS                       R25 R24 K33 ["overrideCursor"]
      171 LOADB                            R25 0
      172 SETTABLEKS                       R25 R24 K34 ["deleteLocal"]
      174 SETTABLEKS                       R5 R24 K35 ["hasSubsequent"]
      176 GETUPVAL                         R26 13
      177 CALL                             R26 0 1
      178 JUMPIFNOT                        R26 ; [+2]
      179 MOVE                             R25 R8
      180 JUMP                             ; [+1]
      181 LOADNIL                          R25
      182 SETTABLEKS                       R25 R24 K36 ["avatarAssetCurrentIndex"]
      184 GETUPVAL                         R26 13
      185 CALL                             R26 0 1
      186 JUMPIFNOT                        R26 ; [+2]
      187 MOVE                             R25 R9
      188 JUMP                             ; [+1]
      189 LOADNIL                          R25
      190 SETTABLEKS                       R25 R24 K37 ["avatarAssetTotalCount"]
      192 GETUPVAL                         R26 14
      193 CALL                             R26 0 1
      194 JUMPIFNOT                        R26 ; [+3]
      195 NEWTABLE                         R25 0 0
      197 JUMP                             ; [+1]
      198 LOADNIL                          R25
      199 SETTABLEKS                       R25 R24 K38 ["sellerStatusData"]
      201 GETUPVAL                         R26 2
      202 CALL                             R26 0 1
      203 JUMPIFNOT                        R26 ; [+2]
      204 MOVE                             R25 R16
      205 JUMP                             ; [+1]
      206 LOADNIL                          R25
      207 SETTABLEKS                       R25 R24 K8 ["groupBundlesUploadEnabledForUser"]
      209 MOVE                             R25 R21
      210 CALL                             R22 3 1
      211 GETUPVAL                         R23 15
      212 CALL                             R23 0 1
      213 GETUPVAL                         R25 16
      214 GETTABLEKS                       R24 R25 K21 ["new"]
      216 CALL                             R24 0 1
      217 NEWCLOSURE                       R25 P1
      218 CAPTURE                          UPVAL U0
      219 CAPTURE                          UPVAL U17
      220 CAPTURE                          UPVAL U18
      221 CAPTURE                          UPVAL U19
      222 CAPTURE                          VAL R7
      223 GETUPVAL                         R27 12
      224 JUMPIFNOT                        R27 ; [+5]
      225 GETUPVAL                         R27 20
      226 GETTABLEKS                       R26 R27 K21 ["new"]
      228 CALL                             R26 0 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R26
      231 GETUPVAL                         R28 18
      232 GETTABLEKS                       R27 R28 K43 ["createElement"]
      234 GETUPVAL                         R28 21
      235 DUPTABLE                         R29 K50 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      236 SETTABLEKS                       R0 R29 K22 ["assetId"]
      238 SETTABLEKS                       R3 R29 K30 ["assetTypeEnum"]
      240 GETUPVAL                         R31 22
      241 CALL                             R31 0 1
      242 JUMPIFNOT                        R31 ; [+2]
      243 MOVE                             R30 R10
      244 JUMP                             ; [+1]
      245 LOADNIL                          R30
      246 SETTABLEKS                       R30 R29 K44 ["groupId"]
      248 GETUPVAL                         R30 23
      249 SETTABLEKS                       R30 R29 K45 ["plugin"]
      251 SETTABLEKS                       R22 R29 K46 ["store"]
      253 SETTABLEKS                       R23 R29 K47 ["theme"]
      255 SETTABLEKS                       R24 R29 K48 ["networkInterface"]
      257 SETTABLEKS                       R25 R29 K49 ["onAssetConfigDestroy"]
      259 CALL                             R27 2 1
      260 GETUPVAL                         R29 18
      261 GETTABLEKS                       R28 R29 K43 ["createElement"]
      263 GETUPVAL                         R29 24
      264 DUPTABLE                         R30 K54 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      265 GETUPVAL                         R32 12
      266 JUMPIFNOT                        R32 ; [+2]
      267 MOVE                             R31 R26
      268 JUMP                             ; [+1]
      269 LOADNIL                          R31
      270 SETTABLEKS                       R31 R30 K51 ["ixp"]
      272 GETUPVAL                         R31 25
      273 SETTABLEKS                       R31 R30 K52 ["localization"]
      275 GETUPVAL                         R31 23
      276 SETTABLEKS                       R31 R30 K45 ["plugin"]
      278 SETTABLEKS                       R23 R30 K47 ["theme"]
      280 SETTABLEKS                       R22 R30 K46 ["store"]
      282 GETIMPORT                        R31 K55 [settings]
      284 SETTABLEKS                       R31 R30 K53 ["settings"]
      286 NEWTABLE                         R31 0 1
      288 MOVE                             R32 R27
      289 SETLIST                          R31 R32 1 [1]
      291 CALL                             R28 3 1
      292 GETUPVAL                         R30 18
      293 GETTABLEKS                       R29 R30 K56 ["mount"]
      295 MOVE                             R30 R28
      296 CALL                             R29 1 1
      297 SETUPVAL                         R29 0
      298 RETURN                           R22 1

PROTO_13:
        0 GETUPVAL                         R11 0
        1 CALL                             R11 0 1
        2 JUMPIFNOT                        R11 ; [+29]
        3 GETUPVAL                         R11 1
        4 MOVE                             R12 R0
        5 MOVE                             R13 R1
        6 MOVE                             R14 R2
        7 MOVE                             R15 R3
        8 MOVE                             R16 R4
        9 MOVE                             R17 R5
       10 MOVE                             R18 R6
       11 MOVE                             R19 R7
       12 GETUPVAL                         R21 2
       13 CALL                             R21 0 1
       14 JUMPIFNOT                        R21 ; [+2]
       15 MOVE                             R20 R8
       16 JUMP                             ; [+1]
       17 LOADNIL                          R20
       18 GETUPVAL                         R22 2
       19 CALL                             R22 0 1
       20 JUMPIFNOT                        R22 ; [+2]
       21 MOVE                             R21 R9
       22 JUMP                             ; [+1]
       23 LOADNIL                          R21
       24 GETUPVAL                         R23 3
       25 CALL                             R23 0 1
       26 JUMPIFNOT                        R23 ; [+2]
       27 MOVE                             R22 R10
       28 JUMP                             ; [+1]
       29 LOADNIL                          R22
       30 CALL                             R11 11 1
       31 RETURN                           R11 1
       32 GETUPVAL                         R11 4
       33 MOVE                             R12 R0
       34 MOVE                             R13 R1
       35 MOVE                             R14 R2
       36 MOVE                             R15 R3
       37 MOVE                             R16 R4
       38 MOVE                             R17 R5
       39 MOVE                             R18 R6
       40 GETUPVAL                         R20 2
       41 CALL                             R20 0 1
       42 JUMPIFNOT                        R20 ; [+2]
       43 MOVE                             R19 R8
       44 JUMP                             ; [+1]
       45 LOADNIL                          R19
       46 GETUPVAL                         R21 2
       47 CALL                             R21 0 1
       48 JUMPIFNOT                        R21 ; [+2]
       49 MOVE                             R20 R9
       50 JUMP                             ; [+1]
       51 LOADNIL                          R20
       52 CALL                             R11 9 0
       53 LOADNIL                          R11
       54 RETURN                           R11 1

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
       67 LOADNIL                          R13
       68 LOADNIL                          R14
       69 GETUPVAL                         R15 7
       70 CALL                             R4 11 1
       71 JUMPIF                           R4 ; [+10]
       72 GETUPVAL                         R5 4
       73 GETUPVAL                         R7 5
       74 LOADNIL                          R8
       75 LOADNIL                          R9
       76 LOADK                            R10 K14 ["Asset config dialog already open"]
       77 NAMECALL                         R5 R5 K15 ["ResolveSaveInstanceToRoblox"]
       79 CALL                             R5 5 0
       80 CLOSEUPVALS                      R2
       81 RETURN                           R0 0
       82 LOADNIL                          R5
       83 GETTABLEKS                       R6 R4 K16 ["changed"]
       85 NEWCLOSURE                       R8 P1
       86 CAPTURE                          REF R2
       87 CAPTURE                          REF R5
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U5
       90 NAMECALL                         R6 R6 K17 ["connect"]
       92 CALL                             R6 2 1
       93 MOVE                             R5 R6
       94 CLOSEUPVALS                      R2
       95 RETURN                           R0 0

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
       15 JUMPIFEQKNIL                     R1 ; [+51]
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
       64 LOADNIL                          R12
       65 CALL                             R1 11 0
       66 RETURN                           R0 0
       67 LENGTH                           R1 R0
       68 JUMPIFNOTEQKN                    R1 K10 [1] ; [+36]
       70 GETTABLEN                        R1 R0 1
       71 LOADK                            R3 K11 ["AnimationClip"]
       72 NAMECALL                         R1 R1 K12 ["IsA"]
       74 CALL                             R1 2 1
       75 JUMPIFNOT                        R1 ; [+29]
       76 GETUPVAL                         R1 4
       77 LOADNIL                          R2
       78 GETUPVAL                         R5 5
       79 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
       81 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
       83 MOVE                             R4 R0
       84 GETIMPORT                        R5 K16 [Enum.AssetType.Animation]
       86 LOADNIL                          R6
       87 GETUPVAL                         R7 2
       88 LOADNIL                          R8
       89 LOADNIL                          R9
       90 GETUPVAL                         R11 6
       91 CALL                             R11 0 1
       92 JUMPIFNOT                        R11 ; [+2]
       93 GETUPVAL                         R10 7
       94 JUMP                             ; [+1]
       95 LOADNIL                          R10
       96 GETUPVAL                         R12 6
       97 CALL                             R12 0 1
       98 JUMPIFNOT                        R12 ; [+2]
       99 GETUPVAL                         R11 8
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 LOADNIL                          R12
      103 CALL                             R1 11 0
      104 RETURN                           R0 0
      105 GETUPVAL                         R1 4
      106 LOADNIL                          R2
      107 GETUPVAL                         R5 5
      108 GETTABLEKS                       R4 R5 K3 ["FLOW_TYPE"]
      110 GETTABLEKS                       R3 R4 K4 ["UPLOAD_FLOW"]
      112 MOVE                             R4 R0
      113 LOADNIL                          R5
      114 GETUPVAL                         R6 1
      115 GETUPVAL                         R7 2
      116 LOADNIL                          R8
      117 LOADNIL                          R9
      118 GETUPVAL                         R11 6
      119 CALL                             R11 0 1
      120 JUMPIFNOT                        R11 ; [+2]
      121 GETUPVAL                         R10 7
      122 JUMP                             ; [+1]
      123 LOADNIL                          R10
      124 GETUPVAL                         R12 6
      125 CALL                             R12 0 1
      126 JUMPIFNOT                        R12 ; [+2]
      127 GETUPVAL                         R11 8
      128 JUMP                             ; [+1]
      129 LOADNIL                          R11
      130 LOADNIL                          R12
      131 CALL                             R1 11 0
      132 RETURN                           R0 0

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
      150 JUMPIFNOT                        R13 ; [+18]
      151 GETUPVAL                         R15 19
      152 GETTABLEKS                       R14 R15 K29 ["signals"]
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
      169 GETUPVAL                         R13 29
      170 JUMPIFNOT                        R13 ; [+26]
      171 GETUPVAL                         R14 30
      172 CALL                             R14 0 1
      173 JUMPIFNOT                        R14 ; [+2]
      174 LOADK                            R13 K31 ["Toolbox.SaveToRobloxProgress"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R13
      177 GETUPVAL                         R16 19
      178 GETTABLEKS                       R15 R16 K29 ["signals"]
      180 GETTABLEKS                       R14 R15 K32 ["StudioAssetService.OnSaveToRoblox"]
      182 NEWCLOSURE                       R16 P4
      183 CAPTURE                          UPVAL U30
      184 CAPTURE                          VAL R13
      185 CAPTURE                          UPVAL U27
      186 CAPTURE                          UPVAL U15
      187 CAPTURE                          UPVAL U16
      188 CAPTURE                          UPVAL U20
      189 CAPTURE                          UPVAL U0
      190 CAPTURE                          UPVAL U21
      191 CAPTURE                          VAL R4
      192 CAPTURE                          UPVAL U22
      193 NAMECALL                         R14 R14 K30 ["Connect"]
      195 CALL                             R14 2 0
      196 JUMP                             ; [+17]
      197 GETUPVAL                         R15 19
      198 GETTABLEKS                       R14 R15 K29 ["signals"]
      200 GETTABLEKS                       R13 R14 K33 ["StudioService.OnSaveToRoblox"]
      202 NEWCLOSURE                       R15 P5
      203 CAPTURE                          UPVAL U27
      204 CAPTURE                          UPVAL U15
      205 CAPTURE                          UPVAL U16
      206 CAPTURE                          UPVAL U20
      207 CAPTURE                          UPVAL U0
      208 CAPTURE                          UPVAL U21
      209 CAPTURE                          VAL R4
      210 CAPTURE                          UPVAL U22
      211 NAMECALL                         R13 R13 K30 ["Connect"]
      213 CALL                             R13 2 0
      214 GETUPVAL                         R15 19
      215 GETTABLEKS                       R14 R15 K29 ["signals"]
      217 GETTABLEKS                       R13 R14 K34 ["StudioService.OnImportFromRoblox"]
      219 NEWCLOSURE                       R15 P6
      220 CAPTURE                          UPVAL U15
      221 CAPTURE                          UPVAL U16
      222 NAMECALL                         R13 R13 K30 ["Connect"]
      224 CALL                             R13 2 0
      225 GETUPVAL                         R15 19
      226 GETTABLEKS                       R14 R15 K29 ["signals"]
      228 GETTABLEKS                       R13 R14 K35 ["StudioService.OnOpenManagePackagePlugin"]
      230 NEWCLOSURE                       R15 P7
      231 CAPTURE                          UPVAL U15
      232 CAPTURE                          UPVAL U16
      233 NAMECALL                         R13 R13 K30 ["Connect"]
      235 CALL                             R13 2 0
      236 GETUPVAL                         R15 19
      237 GETTABLEKS                       R14 R15 K29 ["signals"]
      239 GETTABLEKS                       R13 R14 K36 ["StudioService.OnPublishAsPlugin"]
      241 NEWCLOSURE                       R15 P8
      242 CAPTURE                          UPVAL U15
      243 CAPTURE                          UPVAL U16
      244 CAPTURE                          UPVAL U27
      245 CAPTURE                          UPVAL U20
      246 CAPTURE                          UPVAL U0
      247 CAPTURE                          UPVAL U21
      248 CAPTURE                          VAL R4
      249 CAPTURE                          UPVAL U22
      250 NAMECALL                         R13 R13 K30 ["Connect"]
      252 CALL                             R13 2 0
      253 GETUPVAL                         R15 19
      254 GETTABLEKS                       R14 R15 K29 ["signals"]
      256 GETTABLEKS                       R13 R14 K37 ["MemStorageService.OpenAssetConfiguration"]
      258 NEWCLOSURE                       R15 P9
      259 CAPTURE                          UPVAL U31
      260 CAPTURE                          UPVAL U15
      261 CAPTURE                          UPVAL U16
      262 NAMECALL                         R13 R13 K30 ["Connect"]
      264 CALL                             R13 2 0
      265 GETUPVAL                         R14 32
      266 GETTABLEKS                       R13 R14 K38 ["registerLocalization"]
      268 GETUPVAL                         R14 25
      269 CALL                             R13 1 0
      270 GETUPVAL                         R14 32
      271 GETTABLEKS                       R13 R14 K39 ["registerProcessDragHandler"]
      273 GETUPVAL                         R14 6
      274 CALL                             R13 1 0
      275 CLOSEUPVALS                      R7
      276 RETURN                           R0 0

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
       53 GETTABLEKS                       R13 R2 K3 ["Src"]
       55 GETTABLEKS                       R12 R13 K15 ["Flags"]
       57 GETTABLEKS                       R11 R12 K17 ["getFFlagToolboxAssetConfigGroupOwnership"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K14 [require]
       62 GETTABLEKS                       R15 R2 K3 ["Src"]
       64 GETTABLEKS                       R14 R15 K4 ["Util"]
       66 GETTABLEKS                       R13 R14 K18 ["SharedFlags"]
       68 GETTABLEKS                       R12 R13 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K14 [require]
       73 GETTABLEKS                       R15 R2 K3 ["Src"]
       75 GETTABLEKS                       R14 R15 K15 ["Flags"]
       77 GETTABLEKS                       R13 R14 K20 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K14 [require]
       82 GETTABLEKS                       R14 R3 K21 ["isCli"]
       84 CALL                             R13 1 1
       85 MOVE                             R14 R13
       86 CALL                             R14 0 1
       87 JUMPIFNOT                        R14 ; [+1]
       88 RETURN                           R0 0
       89 GETIMPORT                        R14 K6 [game]
       91 LOADK                            R16 K22 ["StudioService"]
       92 NAMECALL                         R14 R14 K23 ["GetService"]
       94 CALL                             R14 2 1
       95 NAMECALL                         R15 R14 K24 ["HasInternalPermission"]
       97 CALL                             R15 1 1
       98 GETTABLEKS                       R16 R2 K25 ["Packages"]
      100 GETIMPORT                        R17 K14 [require]
      102 GETTABLEKS                       R18 R16 K26 ["Roact"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K14 [require]
      107 GETTABLEKS                       R19 R16 K27 ["Framework"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K14 [require]
      112 GETTABLEKS                       R21 R16 K28 ["Dev"]
      114 GETTABLEKS                       R20 R21 K29 ["DeveloperTools"]
      116 CALL                             R19 1 1
      117 JUMPIFNOT                        R4 ; [+13]
      118 GETTABLEKS                       R20 R17 K30 ["setGlobalConfig"]
      120 DUPTABLE                         R21 K34 [{"elementTracing", "propValidation", "typeChecks"}]
      121 LOADB                            R22 1
      122 SETTABLEKS                       R22 R21 K31 ["elementTracing"]
      124 LOADB                            R22 1
      125 SETTABLEKS                       R22 R21 K32 ["propValidation"]
      127 LOADB                            R22 1
      128 SETTABLEKS                       R22 R21 K33 ["typeChecks"]
      130 CALL                             R20 1 0
      131 GETIMPORT                        R20 K14 [require]
      133 GETTABLEKS                       R21 R16 K35 ["Rodux"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K14 [require]
      138 GETTABLEKS                       R22 R3 K36 ["InsertAsset"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K14 [require]
      143 GETTABLEKS                       R24 R3 K37 ["Analytics"]
      145 GETTABLEKS                       R23 R24 K38 ["AssetAnalyticsContextItem"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K14 [require]
      150 GETTABLEKS                       R24 R3 K39 ["DebugFlags"]
      152 CALL                             R23 1 1
      153 GETIMPORT                        R24 K14 [require]
      155 GETTABLEKS                       R25 R3 K40 ["Settings"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K14 [require]
      160 GETTABLEKS                       R26 R3 K41 ["ToolboxTheme"]
      162 CALL                             R25 1 1
      163 GETIMPORT                        R26 K14 [require]
      165 GETTABLEKS                       R27 R3 K42 ["AssetConfigTheme"]
      167 CALL                             R26 1 1
      168 GETIMPORT                        R27 K14 [require]
      170 GETTABLEKS                       R28 R3 K43 ["AssetConfigConstants"]
      172 CALL                             R27 1 1
      173 GETIMPORT                        R28 K14 [require]
      175 GETTABLEKS                       R29 R3 K44 ["AssetConfigUtil"]
      177 CALL                             R28 1 1
      178 GETIMPORT                        R29 K14 [require]
      180 GETTABLEKS                       R31 R3 K37 ["Analytics"]
      182 GETTABLEKS                       R30 R31 K45 ["makeToolboxAnalyticsContext"]
      184 CALL                             R29 1 1
      185 GETIMPORT                        R30 K14 [require]
      187 GETTABLEKS                       R33 R2 K3 ["Src"]
      189 GETTABLEKS                       R32 R33 K46 ["ContextServices"]
      191 GETTABLEKS                       R31 R32 K47 ["IXPContext"]
      193 CALL                             R30 1 1
      194 GETTABLEKS                       R31 R23 K48 ["shouldDebugWarnings"]
      196 CALL                             R31 0 1
      197 JUMPIFNOT                        R31 ; [+13]
      198 GETIMPORT                        R33 K14 [require]
      200 GETTABLEKS                       R34 R16 K27 ["Framework"]
      202 CALL                             R33 1 1
      203 GETTABLEKS                       R32 R33 K4 ["Util"]
      205 GETTABLEKS                       R31 R32 K49 ["Promise"]
      207 GETIMPORT                        R32 K51 [warn]
      209 SETTABLEKS                       R32 R31 K52 ["onUnhandledRejection"]
      211 GETIMPORT                        R31 K14 [require]
      213 GETTABLEKS                       R34 R2 K3 ["Src"]
      215 GETTABLEKS                       R33 R34 K53 ["Types"]
      217 GETTABLEKS                       R32 R33 K54 ["Background"]
      219 CALL                             R31 1 1
      220 GETIMPORT                        R32 K14 [require]
      222 GETTABLEKS                       R35 R2 K3 ["Src"]
      224 GETTABLEKS                       R34 R35 K53 ["Types"]
      226 GETTABLEKS                       R33 R34 K55 ["Suggestion"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K14 [require]
      231 GETTABLEKS                       R36 R2 K3 ["Src"]
      233 GETTABLEKS                       R35 R36 K53 ["Types"]
      235 GETTABLEKS                       R34 R35 K56 ["ConfigTypes"]
      237 CALL                             R33 1 1
      238 GETIMPORT                        R34 K14 [require]
      240 GETTABLEKS                       R37 R2 K3 ["Src"]
      242 GETTABLEKS                       R36 R37 K57 ["Components"]
      244 GETTABLEKS                       R35 R36 K58 ["ToolboxPlugin"]
      246 CALL                             R34 1 1
      247 GETIMPORT                        R36 K14 [require]
      249 GETTABLEKS                       R39 R2 K3 ["Src"]
      251 GETTABLEKS                       R38 R39 K4 ["Util"]
      253 GETTABLEKS                       R37 R38 K59 ["ToolboxUtilities"]
      255 CALL                             R36 1 1
      256 GETTABLEKS                       R35 R36 K60 ["getToolboxEnabled"]
      258 GETIMPORT                        R36 K14 [require]
      260 GETTABLEKS                       R39 R2 K3 ["Src"]
      262 GETTABLEKS                       R38 R39 K4 ["Util"]
      264 GETTABLEKS                       R37 R38 K61 ["ToolboxCommunication"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K14 [require]
      269 GETTABLEKS                       R40 R2 K3 ["Src"]
      271 GETTABLEKS                       R39 R40 K62 ["Reducers"]
      273 GETTABLEKS                       R38 R39 K63 ["ToolboxReducer"]
      275 CALL                             R37 1 1
      276 GETIMPORT                        R38 K14 [require]
      278 GETTABLEKS                       R41 R2 K3 ["Src"]
      280 GETTABLEKS                       R40 R41 K62 ["Reducers"]
      282 GETTABLEKS                       R39 R40 K64 ["AssetConfigReducer"]
      284 CALL                             R38 1 1
      285 GETIMPORT                        R39 K14 [require]
      287 GETTABLEKS                       R42 R2 K3 ["Src"]
      289 GETTABLEKS                       R41 R42 K65 ["Networking"]
      291 GETTABLEKS                       R40 R41 K66 ["NetworkInterface"]
      293 CALL                             R39 1 1
      294 GETIMPORT                        R40 K14 [require]
      296 GETTABLEKS                       R44 R2 K3 ["Src"]
      298 GETTABLEKS                       R43 R44 K57 ["Components"]
      300 GETTABLEKS                       R42 R43 K67 ["AssetConfiguration"]
      302 GETTABLEKS                       R41 R42 K68 ["AssetConfigWrapper"]
      304 CALL                             R40 1 1
      305 GETIMPORT                        R41 K14 [require]
      307 GETTABLEKS                       R44 R2 K3 ["Src"]
      309 GETTABLEKS                       R43 R44 K57 ["Components"]
      311 GETTABLEKS                       R42 R43 K69 ["ToolboxServiceWrapper"]
      313 CALL                             R41 1 1
      314 GETIMPORT                        R42 K14 [require]
      316 GETTABLEKS                       R46 R2 K3 ["Src"]
      318 GETTABLEKS                       R45 R46 K65 ["Networking"]
      320 GETTABLEKS                       R44 R45 K70 ["Requests"]
      322 GETTABLEKS                       R43 R44 K71 ["GetRolesRequest"]
      324 CALL                             R42 1 1
      325 GETIMPORT                        R43 K14 [require]
      327 GETTABLEKS                       R47 R2 K3 ["Src"]
      329 GETTABLEKS                       R46 R47 K65 ["Networking"]
      331 GETTABLEKS                       R45 R46 K70 ["Requests"]
      333 GETTABLEKS                       R44 R45 K72 ["GetRolesDebugRequest"]
      335 CALL                             R43 1 1
      336 GETIMPORT                        R44 K14 [require]
      338 GETTABLEKS                       R47 R2 K3 ["Src"]
      340 GETTABLEKS                       R46 R47 K15 ["Flags"]
      342 GETTABLEKS                       R45 R46 K73 ["getFFlagEnableUploadingGroupBundles"]
      344 CALL                             R44 1 1
      345 GETTABLEKS                       R45 R18 K46 ["ContextServices"]
      347 GETTABLEKS                       R47 R18 K4 ["Util"]
      349 GETTABLEKS                       R46 R47 K74 ["ThunkWithArgsMiddleware"]
      351 GETIMPORT                        R47 K14 [require]
      353 GETTABLEKS                       R48 R16 K75 ["Dash"]
      355 CALL                             R47 1 1
      356 GETTABLEKS                       R48 R47 K76 ["find"]
      358 GETTABLEKS                       R51 R2 K77 ["Resources"]
      360 GETTABLEKS                       R50 R51 K78 ["Localization"]
      362 GETTABLEKS                       R49 R50 K79 ["SourceStrings"]
      364 GETTABLEKS                       R52 R2 K77 ["Resources"]
      366 GETTABLEKS                       R51 R52 K78 ["Localization"]
      368 GETTABLEKS                       R50 R51 K80 ["LocalizedStrings"]
      370 GETIMPORT                        R51 K6 [game]
      372 LOADK                            R53 K81 ["HttpService"]
      373 NAMECALL                         R51 R51 K23 ["GetService"]
      375 CALL                             R51 2 1
      376 GETIMPORT                        R52 K6 [game]
      378 LOADK                            R54 K82 ["RobloxPluginGuiService"]
      379 NAMECALL                         R52 R52 K23 ["GetService"]
      381 CALL                             R52 2 1
      382 GETIMPORT                        R53 K6 [game]
      384 LOADK                            R55 K83 ["StudioAssetService"]
      385 NAMECALL                         R53 R53 K23 ["GetService"]
      387 CALL                             R53 2 1
      388 MOVE                             R54 R35
      389 CALL                             R54 0 1
      390 JUMPIF                           R54 ; [+1]
      391 RETURN                           R0 0
      392 GETTABLEKS                       R55 R45 K78 ["Localization"]
      394 GETTABLEKS                       R54 R55 K84 ["new"]
      396 DUPTABLE                         R55 K89 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
      397 SETTABLEKS                       R49 R55 K85 ["stringResourceTable"]
      399 SETTABLEKS                       R50 R55 K86 ["translationResourceTable"]
      401 LOADK                            R56 K90 ["Toolbox"]
      402 SETTABLEKS                       R56 R55 K87 ["pluginName"]
      404 NEWTABLE                         R56 1 0
      406 GETTABLEKS                       R58 R18 K77 ["Resources"]
      408 GETTABLEKS                       R57 R58 K91 ["LOCALIZATION_PROJECT_NAME"]
      410 DUPTABLE                         R58 K92 [{"stringResourceTable", "translationResourceTable"}]
      411 GETTABLEKS                       R60 R18 K77 ["Resources"]
      413 GETTABLEKS                       R59 R60 K79 ["SourceStrings"]
      415 SETTABLEKS                       R59 R58 K85 ["stringResourceTable"]
      417 GETTABLEKS                       R60 R18 K77 ["Resources"]
      419 GETTABLEKS                       R59 R60 K80 ["LocalizedStrings"]
      421 SETTABLEKS                       R59 R58 K86 ["translationResourceTable"]
      423 SETTABLE                         R58 R56 R57
      424 SETTABLEKS                       R56 R55 K88 ["libraries"]
      426 CALL                             R54 1 1
      427 NEWCLOSURE                       R55 P0
      428 CAPTURE                          VAL R25
      429 NEWCLOSURE                       R56 P1
      430 CAPTURE                          VAL R26
      431 LOADNIL                          R57
      432 LOADNIL                          R58
      433 NEWCLOSURE                       R59 P2
      434 CAPTURE                          REF R58
      435 CAPTURE                          REF R57
      436 CAPTURE                          VAL R44
      437 CAPTURE                          VAL R48
      438 CAPTURE                          VAL R28
      439 CAPTURE                          VAL R33
      440 CAPTURE                          VAL R27
      441 CAPTURE                          VAL R46
      442 CAPTURE                          VAL R53
      443 CAPTURE                          VAL R20
      444 CAPTURE                          VAL R38
      445 CAPTURE                          VAL R6
      446 CAPTURE                          VAL R7
      447 CAPTURE                          VAL R12
      448 CAPTURE                          VAL R11
      449 CAPTURE                          VAL R56
      450 CAPTURE                          VAL R39
      451 CAPTURE                          VAL R52
      452 CAPTURE                          VAL R17
      453 CAPTURE                          VAL R14
      454 CAPTURE                          VAL R30
      455 CAPTURE                          VAL R40
      456 CAPTURE                          VAL R0
      457 CAPTURE                          VAL R41
      458 CAPTURE                          VAL R54
      459 NEWCLOSURE                       R60 P3
      460 CAPTURE                          REF R58
      461 CAPTURE                          REF R57
      462 CAPTURE                          VAL R44
      463 CAPTURE                          VAL R48
      464 CAPTURE                          VAL R28
      465 CAPTURE                          VAL R33
      466 CAPTURE                          VAL R27
      467 CAPTURE                          VAL R46
      468 CAPTURE                          VAL R53
      469 CAPTURE                          VAL R20
      470 CAPTURE                          VAL R38
      471 CAPTURE                          VAL R6
      472 CAPTURE                          VAL R7
      473 CAPTURE                          VAL R12
      474 CAPTURE                          VAL R11
      475 CAPTURE                          VAL R56
      476 CAPTURE                          VAL R39
      477 CAPTURE                          VAL R52
      478 CAPTURE                          VAL R17
      479 CAPTURE                          VAL R14
      480 CAPTURE                          VAL R30
      481 CAPTURE                          VAL R40
      482 CAPTURE                          VAL R10
      483 CAPTURE                          VAL R0
      484 CAPTURE                          VAL R41
      485 CAPTURE                          VAL R54
      486 NEWCLOSURE                       R61 P4
      487 CAPTURE                          VAL R9
      488 CAPTURE                          VAL R60
      489 CAPTURE                          VAL R12
      490 CAPTURE                          VAL R10
      491 CAPTURE                          VAL R59
      492 NEWCLOSURE                       R62 P5
      493 CAPTURE                          REF R57
      494 CAPTURE                          VAL R20
      495 CAPTURE                          VAL R37
      496 CAPTURE                          VAL R22
      497 CAPTURE                          VAL R29
      498 CAPTURE                          VAL R24
      499 CAPTURE                          VAL R0
      500 CAPTURE                          VAL R55
      501 CAPTURE                          VAL R39
      502 CAPTURE                          VAL R31
      503 CAPTURE                          VAL R32
      504 CAPTURE                          VAL R15
      505 CAPTURE                          VAL R19
      506 CAPTURE                          VAL R17
      507 CAPTURE                          VAL R36
      508 CAPTURE                          VAL R61
      509 CAPTURE                          VAL R27
      510 CAPTURE                          VAL R33
      511 CAPTURE                          VAL R34
      512 CAPTURE                          VAL R1
      513 CAPTURE                          VAL R5
      514 CAPTURE                          VAL R43
      515 CAPTURE                          VAL R42
      516 CAPTURE                          VAL R30
      517 CAPTURE                          VAL R41
      518 CAPTURE                          VAL R54
      519 CAPTURE                          VAL R9
      520 CAPTURE                          VAL R28
      521 CAPTURE                          VAL R53
      522 CAPTURE                          VAL R8
      523 CAPTURE                          VAL R12
      524 CAPTURE                          VAL R51
      525 CAPTURE                          VAL R21
      526 MOVE                             R63 R62
      527 CALL                             R63 0 0
      528 CLOSEUPVALS                      R57
      529 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_32]
        2 RETURN                           R0 1
