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
      114 DUPTABLE                         R23 K42 [{["assetId"], ["assetMediaIds"], ["screenFlowType"], ["currentScreen"], ["instances"], ["sourceInstances"], ["allowedAssetTypesForRelease"], ["allowedAssetTypesForUpload"], ["allowedAssetTypesForFree"], ["allowedBundleTypeSettings"], ["idToFiatProductMap"], ["rollingAssetPermissionRequests"], ["assetTypeEnum"], ["assetSubType"], ["currentTab"], ["packagePermissions"], ["overrideCursor"], ["deleteLocal"] = False, ["animationSectionValid"], ["hasSubsequent"], ["avatarAssetCurrentIndex"], ["avatarAssetTotalCount"], ["sellerStatusData"], ["groupBundlesUploadEnabledForUser"]}]
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
      146 DUPTABLE                         R24 K45 [{"inProgress", "queued"}]
      147 NEWTABLE                         R25 0 0
      149 SETTABLEKS                       R25 R24 K43 ["inProgress"]
      151 NEWTABLE                         R25 0 0
      153 SETTABLEKS                       R25 R24 K44 ["queued"]
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
      175 GETUPVAL                         R25 13
      176 CALL                             R25 0 1
      177 JUMPIFNOT                        R25 ; [+2]
      178 LOADB                            R24 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R24
      181 SETTABLEKS                       R24 R23 K37 ["animationSectionValid"]
      183 SETTABLEKS                       R6 R23 K38 ["hasSubsequent"]
      185 GETUPVAL                         R25 14
      186 CALL                             R25 0 1
      187 JUMPIFNOT                        R25 ; [+2]
      188 MOVE                             R24 R8
      189 JUMPIF                           R24 ; [+1]
      190 LOADNIL                          R24
      191 SETTABLEKS                       R24 R23 K39 ["avatarAssetCurrentIndex"]
      193 GETUPVAL                         R25 14
      194 CALL                             R25 0 1
      195 JUMPIFNOT                        R25 ; [+2]
      196 MOVE                             R24 R9
      197 JUMPIF                           R24 ; [+1]
      198 LOADNIL                          R24
      199 SETTABLEKS                       R24 R23 K40 ["avatarAssetTotalCount"]
      201 GETUPVAL                         R25 15
      202 CALL                             R25 0 1
      203 JUMPIFNOT                        R25 ; [+3]
      204 NEWTABLE                         R24 0 0
      206 JUMP                             ; [+1]
      207 LOADNIL                          R24
      208 SETTABLEKS                       R24 R23 K41 ["sellerStatusData"]
      210 SETTABLEKS                       R15 R23 K8 ["groupBundlesUploadEnabledForUser"]
      212 MOVE                             R24 R20
      213 CALL                             R21 3 1
      214 GETUPVAL                         R22 16
      215 CALL                             R22 0 1
      216 GETUPVAL                         R23 17
      217 GETTABLEKS                       R23 R23 K21 ["new"]
      219 CALL                             R23 0 1
      220 NEWCLOSURE                       R24 P1
      221 CAPTURE                          UPVAL U0
      222 CAPTURE                          UPVAL U18
      223 CAPTURE                          UPVAL U19
      224 CAPTURE                          UPVAL U20
      225 GETUPVAL                         R26 11
      226 JUMPIFNOT                        R26 ; [+5]
      227 GETUPVAL                         R25 21
      228 GETTABLEKS                       R25 R25 K21 ["new"]
      230 CALL                             R25 0 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R25
      233 GETUPVAL                         R26 19
      234 GETTABLEKS                       R26 R26 K46 ["createElement"]
      236 GETUPVAL                         R27 22
      237 DUPTABLE                         R28 K52 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      238 SETTABLEKS                       R0 R28 K22 ["assetId"]
      240 SETTABLEKS                       R3 R28 K30 ["assetTypeEnum"]
      242 GETUPVAL                         R29 23
      243 SETTABLEKS                       R29 R28 K47 ["plugin"]
      245 SETTABLEKS                       R21 R28 K48 ["store"]
      247 SETTABLEKS                       R22 R28 K49 ["theme"]
      249 SETTABLEKS                       R23 R28 K50 ["networkInterface"]
      251 SETTABLEKS                       R24 R28 K51 ["onAssetConfigDestroy"]
      253 CALL                             R26 2 1
      254 GETUPVAL                         R27 19
      255 GETTABLEKS                       R27 R27 K46 ["createElement"]
      257 GETUPVAL                         R28 24
      258 DUPTABLE                         R29 K56 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      259 GETUPVAL                         R31 11
      260 JUMPIFNOT                        R31 ; [+2]
      261 MOVE                             R30 R25
      262 JUMP                             ; [+1]
      263 LOADNIL                          R30
      264 SETTABLEKS                       R30 R29 K53 ["ixp"]
      266 GETUPVAL                         R30 25
      267 SETTABLEKS                       R30 R29 K54 ["localization"]
      269 GETUPVAL                         R30 23
      270 SETTABLEKS                       R30 R29 K47 ["plugin"]
      272 SETTABLEKS                       R22 R29 K49 ["theme"]
      274 SETTABLEKS                       R21 R29 K48 ["store"]
      276 GETIMPORT                        R30 K57 [settings]
      278 SETTABLEKS                       R30 R29 K55 ["settings"]
      280 NEWTABLE                         R30 0 1
      282 MOVE                             R31 R26
      283 SETLIST                          R30 R31 1 [1]
      285 CALL                             R27 3 1
      286 GETUPVAL                         R28 19
      287 GETTABLEKS                       R28 R28 K58 ["mount"]
      289 MOVE                             R29 R27
      290 CALL                             R28 1 1
      291 SETUPVAL                         R28 0
      292 RETURN                           R0 0

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
      115 DUPTABLE                         R25 K42 [{["assetId"], ["assetMediaIds"], ["screenFlowType"], ["currentScreen"], ["instances"], ["sourceInstances"], ["allowedAssetTypesForRelease"], ["allowedAssetTypesForUpload"], ["allowedAssetTypesForFree"], ["allowedBundleTypeSettings"], ["idToFiatProductMap"], ["rollingAssetPermissionRequests"], ["assetTypeEnum"], ["assetSubType"], ["currentTab"], ["packagePermissions"], ["overrideCursor"], ["deleteLocal"] = False, ["animationSectionValid"], ["hasSubsequent"], ["avatarAssetCurrentIndex"], ["avatarAssetTotalCount"], ["sellerStatusData"], ["groupBundlesUploadEnabledForUser"]}]
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
      147 DUPTABLE                         R26 K45 [{"inProgress", "queued"}]
      148 NEWTABLE                         R27 0 0
      150 SETTABLEKS                       R27 R26 K43 ["inProgress"]
      152 NEWTABLE                         R27 0 0
      154 SETTABLEKS                       R27 R26 K44 ["queued"]
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
      176 GETUPVAL                         R27 13
      177 CALL                             R27 0 1
      178 JUMPIFNOT                        R27 ; [+2]
      179 LOADB                            R26 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R26
      182 SETTABLEKS                       R26 R25 K37 ["animationSectionValid"]
      184 SETTABLEKS                       R6 R25 K38 ["hasSubsequent"]
      186 GETUPVAL                         R27 14
      187 CALL                             R27 0 1
      188 JUMPIFNOT                        R27 ; [+2]
      189 MOVE                             R26 R9
      190 JUMP                             ; [+1]
      191 LOADNIL                          R26
      192 SETTABLEKS                       R26 R25 K39 ["avatarAssetCurrentIndex"]
      194 GETUPVAL                         R27 14
      195 CALL                             R27 0 1
      196 JUMPIFNOT                        R27 ; [+2]
      197 MOVE                             R26 R10
      198 JUMP                             ; [+1]
      199 LOADNIL                          R26
      200 SETTABLEKS                       R26 R25 K40 ["avatarAssetTotalCount"]
      202 GETUPVAL                         R27 15
      203 CALL                             R27 0 1
      204 JUMPIFNOT                        R27 ; [+3]
      205 NEWTABLE                         R26 0 0
      207 JUMP                             ; [+1]
      208 LOADNIL                          R26
      209 SETTABLEKS                       R26 R25 K41 ["sellerStatusData"]
      211 SETTABLEKS                       R17 R25 K8 ["groupBundlesUploadEnabledForUser"]
      213 MOVE                             R26 R22
      214 CALL                             R23 3 1
      215 GETUPVAL                         R24 16
      216 CALL                             R24 0 1
      217 GETUPVAL                         R25 17
      218 GETTABLEKS                       R25 R25 K21 ["new"]
      220 CALL                             R25 0 1
      221 NEWCLOSURE                       R26 P1
      222 CAPTURE                          UPVAL U0
      223 CAPTURE                          UPVAL U18
      224 CAPTURE                          UPVAL U19
      225 CAPTURE                          UPVAL U20
      226 CAPTURE                          VAL R8
      227 GETUPVAL                         R28 11
      228 JUMPIFNOT                        R28 ; [+5]
      229 GETUPVAL                         R27 21
      230 GETTABLEKS                       R27 R27 K21 ["new"]
      232 CALL                             R27 0 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R27
      235 GETUPVAL                         R28 19
      236 GETTABLEKS                       R28 R28 K46 ["createElement"]
      238 GETUPVAL                         R29 22
      239 DUPTABLE                         R30 K53 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      240 SETTABLEKS                       R0 R30 K22 ["assetId"]
      242 SETTABLEKS                       R3 R30 K30 ["assetTypeEnum"]
      244 GETUPVAL                         R32 23
      245 CALL                             R32 0 1
      246 JUMPIFNOT                        R32 ; [+2]
      247 MOVE                             R31 R11
      248 JUMP                             ; [+1]
      249 LOADNIL                          R31
      250 SETTABLEKS                       R31 R30 K47 ["groupId"]
      252 GETUPVAL                         R31 24
      253 SETTABLEKS                       R31 R30 K48 ["plugin"]
      255 SETTABLEKS                       R23 R30 K49 ["store"]
      257 SETTABLEKS                       R24 R30 K50 ["theme"]
      259 SETTABLEKS                       R25 R30 K51 ["networkInterface"]
      261 SETTABLEKS                       R26 R30 K52 ["onAssetConfigDestroy"]
      263 CALL                             R28 2 1
      264 GETUPVAL                         R29 19
      265 GETTABLEKS                       R29 R29 K46 ["createElement"]
      267 GETUPVAL                         R30 25
      268 DUPTABLE                         R31 K57 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      269 GETUPVAL                         R33 11
      270 JUMPIFNOT                        R33 ; [+2]
      271 MOVE                             R32 R27
      272 JUMP                             ; [+1]
      273 LOADNIL                          R32
      274 SETTABLEKS                       R32 R31 K54 ["ixp"]
      276 GETUPVAL                         R32 26
      277 SETTABLEKS                       R32 R31 K55 ["localization"]
      279 GETUPVAL                         R32 24
      280 SETTABLEKS                       R32 R31 K48 ["plugin"]
      282 SETTABLEKS                       R24 R31 K50 ["theme"]
      284 SETTABLEKS                       R23 R31 K49 ["store"]
      286 GETIMPORT                        R32 K58 [settings]
      288 SETTABLEKS                       R32 R31 K56 ["settings"]
      290 NEWTABLE                         R32 0 1
      292 MOVE                             R33 R28
      293 SETLIST                          R32 R33 1 [1]
      295 CALL                             R29 3 1
      296 GETUPVAL                         R30 19
      297 GETTABLEKS                       R30 R30 K59 ["mount"]
      299 MOVE                             R31 R29
      300 CALL                             R30 1 1
      301 SETUPVAL                         R30 0
      302 RETURN                           R23 1

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
      129 JUMPIFNOT                        R4 ; [+4]
      130 GETTABLEKS                       R21 R18 K31 ["setGlobalConfig"]
      132 DUPTABLE                         R22 K36 [{["elementTracing"] = True, ["propValidation"] = True, ["typeChecks"] = True}]
      133 CALL                             R21 1 0
      134 GETIMPORT                        R21 K13 [require]
      136 GETTABLEKS                       R22 R17 K37 ["Rodux"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K13 [require]
      141 GETTABLEKS                       R23 R3 K38 ["InsertAsset"]
      143 CALL                             R22 1 1
      144 GETIMPORT                        R23 K13 [require]
      146 GETTABLEKS                       R24 R3 K39 ["Analytics"]
      148 GETTABLEKS                       R24 R24 K40 ["AssetAnalyticsContextItem"]
      150 CALL                             R23 1 1
      151 GETIMPORT                        R24 K13 [require]
      153 GETTABLEKS                       R25 R3 K41 ["DebugFlags"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K13 [require]
      158 GETTABLEKS                       R26 R3 K42 ["Settings"]
      160 CALL                             R25 1 1
      161 GETIMPORT                        R26 K13 [require]
      163 GETTABLEKS                       R27 R3 K43 ["ToolboxTheme"]
      165 CALL                             R26 1 1
      166 GETIMPORT                        R27 K13 [require]
      168 GETTABLEKS                       R28 R3 K44 ["AssetConfigTheme"]
      170 CALL                             R27 1 1
      171 GETIMPORT                        R28 K13 [require]
      173 GETTABLEKS                       R29 R3 K45 ["AssetConfigConstants"]
      175 CALL                             R28 1 1
      176 GETIMPORT                        R29 K13 [require]
      178 GETTABLEKS                       R30 R3 K46 ["AssetConfigUtil"]
      180 CALL                             R29 1 1
      181 GETIMPORT                        R30 K13 [require]
      183 GETTABLEKS                       R31 R3 K39 ["Analytics"]
      185 GETTABLEKS                       R31 R31 K47 ["makeToolboxAnalyticsContext"]
      187 CALL                             R30 1 1
      188 GETIMPORT                        R31 K13 [require]
      190 GETTABLEKS                       R32 R2 K3 ["Src"]
      192 GETTABLEKS                       R32 R32 K48 ["ContextServices"]
      194 GETTABLEKS                       R32 R32 K49 ["IXPContext"]
      196 CALL                             R31 1 1
      197 GETTABLEKS                       R32 R24 K50 ["shouldDebugWarnings"]
      199 CALL                             R32 0 1
      200 JUMPIFNOT                        R32 ; [+13]
      201 GETIMPORT                        R32 K13 [require]
      203 GETTABLEKS                       R33 R17 K28 ["Framework"]
      205 CALL                             R32 1 1
      206 GETTABLEKS                       R32 R32 K4 ["Util"]
      208 GETTABLEKS                       R32 R32 K51 ["Promise"]
      210 GETIMPORT                        R33 K53 [warn]
      212 SETTABLEKS                       R33 R32 K54 ["onUnhandledRejection"]
      214 GETIMPORT                        R32 K13 [require]
      216 GETTABLEKS                       R33 R2 K3 ["Src"]
      218 GETTABLEKS                       R33 R33 K55 ["Types"]
      220 GETTABLEKS                       R33 R33 K56 ["Background"]
      222 CALL                             R32 1 1
      223 GETIMPORT                        R33 K13 [require]
      225 GETTABLEKS                       R34 R2 K3 ["Src"]
      227 GETTABLEKS                       R34 R34 K55 ["Types"]
      229 GETTABLEKS                       R34 R34 K57 ["Suggestion"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K13 [require]
      234 GETTABLEKS                       R35 R2 K3 ["Src"]
      236 GETTABLEKS                       R35 R35 K55 ["Types"]
      238 GETTABLEKS                       R35 R35 K58 ["ConfigTypes"]
      240 CALL                             R34 1 1
      241 GETIMPORT                        R35 K13 [require]
      243 GETTABLEKS                       R36 R2 K3 ["Src"]
      245 GETTABLEKS                       R36 R36 K59 ["Components"]
      247 GETTABLEKS                       R36 R36 K60 ["ToolboxPlugin"]
      249 CALL                             R35 1 1
      250 GETIMPORT                        R36 K13 [require]
      252 GETTABLEKS                       R37 R2 K3 ["Src"]
      254 GETTABLEKS                       R37 R37 K4 ["Util"]
      256 GETTABLEKS                       R37 R37 K61 ["ToolboxUtilities"]
      258 CALL                             R36 1 1
      259 GETTABLEKS                       R36 R36 K62 ["getToolboxEnabled"]
      261 GETIMPORT                        R37 K13 [require]
      263 GETTABLEKS                       R38 R2 K3 ["Src"]
      265 GETTABLEKS                       R38 R38 K4 ["Util"]
      267 GETTABLEKS                       R38 R38 K63 ["ToolboxCommunication"]
      269 CALL                             R37 1 1
      270 GETIMPORT                        R38 K13 [require]
      272 GETTABLEKS                       R39 R2 K3 ["Src"]
      274 GETTABLEKS                       R39 R39 K64 ["Reducers"]
      276 GETTABLEKS                       R39 R39 K65 ["ToolboxReducer"]
      278 CALL                             R38 1 1
      279 GETIMPORT                        R39 K13 [require]
      281 GETTABLEKS                       R40 R2 K3 ["Src"]
      283 GETTABLEKS                       R40 R40 K64 ["Reducers"]
      285 GETTABLEKS                       R40 R40 K66 ["AssetConfigReducer"]
      287 CALL                             R39 1 1
      288 GETIMPORT                        R40 K13 [require]
      290 GETTABLEKS                       R41 R2 K3 ["Src"]
      292 GETTABLEKS                       R41 R41 K67 ["Networking"]
      294 GETTABLEKS                       R41 R41 K68 ["NetworkInterface"]
      296 CALL                             R40 1 1
      297 GETIMPORT                        R41 K13 [require]
      299 GETTABLEKS                       R42 R2 K3 ["Src"]
      301 GETTABLEKS                       R42 R42 K59 ["Components"]
      303 GETTABLEKS                       R42 R42 K69 ["AssetConfiguration"]
      305 GETTABLEKS                       R42 R42 K70 ["AssetConfigWrapper"]
      307 CALL                             R41 1 1
      308 GETIMPORT                        R42 K13 [require]
      310 GETTABLEKS                       R43 R2 K3 ["Src"]
      312 GETTABLEKS                       R43 R43 K59 ["Components"]
      314 GETTABLEKS                       R43 R43 K71 ["ToolboxServiceWrapper"]
      316 CALL                             R42 1 1
      317 GETIMPORT                        R43 K13 [require]
      319 GETTABLEKS                       R44 R2 K3 ["Src"]
      321 GETTABLEKS                       R44 R44 K67 ["Networking"]
      323 GETTABLEKS                       R44 R44 K72 ["Requests"]
      325 GETTABLEKS                       R44 R44 K73 ["GetRolesRequest"]
      327 CALL                             R43 1 1
      328 GETIMPORT                        R44 K13 [require]
      330 GETTABLEKS                       R45 R2 K3 ["Src"]
      332 GETTABLEKS                       R45 R45 K67 ["Networking"]
      334 GETTABLEKS                       R45 R45 K72 ["Requests"]
      336 GETTABLEKS                       R45 R45 K74 ["GetRolesDebugRequest"]
      338 CALL                             R44 1 1
      339 GETTABLEKS                       R45 R19 K48 ["ContextServices"]
      341 GETTABLEKS                       R46 R19 K4 ["Util"]
      343 GETTABLEKS                       R46 R46 K75 ["ThunkWithArgsMiddleware"]
      345 GETIMPORT                        R47 K13 [require]
      347 GETTABLEKS                       R48 R17 K76 ["Dash"]
      349 CALL                             R47 1 1
      350 GETTABLEKS                       R48 R47 K77 ["find"]
      352 GETTABLEKS                       R49 R2 K78 ["Resources"]
      354 GETTABLEKS                       R49 R49 K79 ["Localization"]
      356 GETTABLEKS                       R49 R49 K80 ["SourceStrings"]
      358 GETTABLEKS                       R50 R2 K78 ["Resources"]
      360 GETTABLEKS                       R50 R50 K79 ["Localization"]
      362 GETTABLEKS                       R50 R50 K81 ["LocalizedStrings"]
      364 GETIMPORT                        R51 K6 [game]
      366 LOADK                            R53 K82 ["HttpService"]
      367 NAMECALL                         R51 R51 K24 ["GetService"]
      369 CALL                             R51 2 1
      370 GETIMPORT                        R52 K6 [game]
      372 LOADK                            R54 K83 ["RobloxPluginGuiService"]
      373 NAMECALL                         R52 R52 K24 ["GetService"]
      375 CALL                             R52 2 1
      376 GETIMPORT                        R53 K6 [game]
      378 LOADK                            R55 K84 ["StudioAssetService"]
      379 NAMECALL                         R53 R53 K24 ["GetService"]
      381 CALL                             R53 2 1
      382 MOVE                             R54 R36
      383 CALL                             R54 0 1
      384 JUMPIF                           R54 ; [+1]
      385 RETURN                           R0 0
      386 GETTABLEKS                       R54 R45 K79 ["Localization"]
      388 GETTABLEKS                       R54 R54 K85 ["new"]
      390 DUPTABLE                         R55 K91 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Toolbox", ["libraries"]}]
      391 SETTABLEKS                       R49 R55 K86 ["stringResourceTable"]
      393 SETTABLEKS                       R50 R55 K87 ["translationResourceTable"]
      395 NEWTABLE                         R56 1 0
      397 GETTABLEKS                       R57 R19 K78 ["Resources"]
      399 GETTABLEKS                       R57 R57 K92 ["LOCALIZATION_PROJECT_NAME"]
      401 DUPTABLE                         R58 K93 [{"stringResourceTable", "translationResourceTable"}]
      402 GETTABLEKS                       R59 R19 K78 ["Resources"]
      404 GETTABLEKS                       R59 R59 K80 ["SourceStrings"]
      406 SETTABLEKS                       R59 R58 K86 ["stringResourceTable"]
      408 GETTABLEKS                       R59 R19 K78 ["Resources"]
      410 GETTABLEKS                       R59 R59 K81 ["LocalizedStrings"]
      412 SETTABLEKS                       R59 R58 K87 ["translationResourceTable"]
      414 SETTABLE                         R58 R56 R57
      415 SETTABLEKS                       R56 R55 K90 ["libraries"]
      417 CALL                             R54 1 1
      418 NEWCLOSURE                       R55 P0
      419 CAPTURE                          VAL R26
      420 NEWCLOSURE                       R56 P1
      421 CAPTURE                          VAL R27
      422 LOADNIL                          R57
      423 LOADNIL                          R58
      424 NEWCLOSURE                       R59 P2
      425 CAPTURE                          REF R58
      426 CAPTURE                          REF R57
      427 CAPTURE                          VAL R48
      428 CAPTURE                          VAL R29
      429 CAPTURE                          VAL R34
      430 CAPTURE                          VAL R28
      431 CAPTURE                          VAL R46
      432 CAPTURE                          VAL R53
      433 CAPTURE                          VAL R21
      434 CAPTURE                          VAL R39
      435 CAPTURE                          VAL R6
      436 CAPTURE                          VAL R7
      437 CAPTURE                          VAL R13
      438 CAPTURE                          VAL R12
      439 CAPTURE                          VAL R11
      440 CAPTURE                          VAL R10
      441 CAPTURE                          VAL R56
      442 CAPTURE                          VAL R40
      443 CAPTURE                          VAL R52
      444 CAPTURE                          VAL R18
      445 CAPTURE                          VAL R15
      446 CAPTURE                          VAL R31
      447 CAPTURE                          VAL R41
      448 CAPTURE                          VAL R0
      449 CAPTURE                          VAL R42
      450 CAPTURE                          VAL R54
      451 NEWCLOSURE                       R60 P3
      452 CAPTURE                          REF R58
      453 CAPTURE                          REF R57
      454 CAPTURE                          VAL R48
      455 CAPTURE                          VAL R29
      456 CAPTURE                          VAL R34
      457 CAPTURE                          VAL R28
      458 CAPTURE                          VAL R46
      459 CAPTURE                          VAL R53
      460 CAPTURE                          VAL R21
      461 CAPTURE                          VAL R39
      462 CAPTURE                          VAL R6
      463 CAPTURE                          VAL R7
      464 CAPTURE                          VAL R13
      465 CAPTURE                          VAL R12
      466 CAPTURE                          VAL R11
      467 CAPTURE                          VAL R10
      468 CAPTURE                          VAL R56
      469 CAPTURE                          VAL R40
      470 CAPTURE                          VAL R52
      471 CAPTURE                          VAL R18
      472 CAPTURE                          VAL R15
      473 CAPTURE                          VAL R31
      474 CAPTURE                          VAL R41
      475 CAPTURE                          VAL R9
      476 CAPTURE                          VAL R0
      477 CAPTURE                          VAL R42
      478 CAPTURE                          VAL R54
      479 NEWCLOSURE                       R61 P4
      480 CAPTURE                          VAL R8
      481 CAPTURE                          VAL R60
      482 CAPTURE                          VAL R13
      483 CAPTURE                          VAL R11
      484 CAPTURE                          VAL R9
      485 CAPTURE                          VAL R59
      486 NEWCLOSURE                       R62 P5
      487 CAPTURE                          REF R57
      488 CAPTURE                          VAL R21
      489 CAPTURE                          VAL R38
      490 CAPTURE                          VAL R23
      491 CAPTURE                          VAL R30
      492 CAPTURE                          VAL R25
      493 CAPTURE                          VAL R0
      494 CAPTURE                          VAL R55
      495 CAPTURE                          VAL R40
      496 CAPTURE                          VAL R32
      497 CAPTURE                          VAL R33
      498 CAPTURE                          VAL R16
      499 CAPTURE                          VAL R20
      500 CAPTURE                          VAL R18
      501 CAPTURE                          VAL R37
      502 CAPTURE                          VAL R61
      503 CAPTURE                          VAL R28
      504 CAPTURE                          VAL R34
      505 CAPTURE                          VAL R35
      506 CAPTURE                          VAL R1
      507 CAPTURE                          VAL R5
      508 CAPTURE                          VAL R44
      509 CAPTURE                          VAL R43
      510 CAPTURE                          VAL R31
      511 CAPTURE                          VAL R42
      512 CAPTURE                          VAL R54
      513 CAPTURE                          VAL R8
      514 CAPTURE                          VAL R29
      515 CAPTURE                          VAL R53
      516 CAPTURE                          VAL R11
      517 CAPTURE                          VAL R13
      518 CAPTURE                          VAL R51
      519 CAPTURE                          VAL R22
      520 MOVE                             R63 R62
      521 CALL                             R63 0 0
      522 CLOSEUPVALS                      R57
      523 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_30]
        2 RETURN                           R0 1
