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
       54 GETTABLEKS                       R17 R15 K9 ["assets"]
       56 GETTABLEKS                       R17 R17 K10 ["idToAssetMap"]
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
       76 GETUPVAL                         R18 4
       77 GETTABLEKS                       R18 R18 K13 ["getFlowStartScreen"]
       79 MOVE                             R19 R1
       80 MOVE                             R20 R9
       81 CALL                             R18 2 1
       82 JUMPIFNOTEQKNIL                  R6 ; [+6]
       84 GETUPVAL                         R19 5
       85 NAMECALL                         R19 R19 K14 ["getDefaultTab"]
       87 CALL                             R19 1 1
       88 MOVE                             R6 R19
       89 GETUPVAL                         R19 6
       90 GETTABLEKS                       R19 R19 K15 ["FLOW_TYPE"]
       92 GETTABLEKS                       R19 R19 K16 ["DOWNLOAD_FLOW"]
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
      111 GETUPVAL                         R20 9
      112 GETTABLEKS                       R20 R20 K20 ["Store"]
      114 GETTABLEKS                       R20 R20 K21 ["new"]
      116 GETUPVAL                         R21 10
      117 DUPTABLE                         R22 K40 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "animationSectionValid", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
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
      149 DUPTABLE                         R23 K43 [{"inProgress", "queued"}]
      150 NEWTABLE                         R24 0 0
      152 SETTABLEKS                       R24 R23 K41 ["inProgress"]
      154 NEWTABLE                         R24 0 0
      156 SETTABLEKS                       R24 R23 K42 ["queued"]
      158 SETTABLEKS                       R23 R22 K29 ["rollingAssetPermissionRequests"]
      160 SETTABLEKS                       R3 R22 K30 ["assetTypeEnum"]
      162 SETTABLEKS                       R6 R22 K31 ["currentTab"]
      164 SETTABLEKS                       R13 R22 K32 ["packagePermissions"]
      166 NEWTABLE                         R23 0 0
      168 SETTABLEKS                       R23 R22 K33 ["overrideCursor"]
      170 LOADB                            R23 0
      171 SETTABLEKS                       R23 R22 K34 ["deleteLocal"]
      173 GETUPVAL                         R24 13
      174 CALL                             R24 0 1
      175 JUMPIFNOT                        R24 ; [+2]
      176 LOADB                            R23 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R23
      179 SETTABLEKS                       R23 R22 K35 ["animationSectionValid"]
      181 SETTABLEKS                       R5 R22 K36 ["hasSubsequent"]
      183 GETUPVAL                         R24 14
      184 CALL                             R24 0 1
      185 JUMPIFNOT                        R24 ; [+2]
      186 MOVE                             R23 R7
      187 JUMPIF                           R23 ; [+1]
      188 LOADNIL                          R23
      189 SETTABLEKS                       R23 R22 K37 ["avatarAssetCurrentIndex"]
      191 GETUPVAL                         R24 14
      192 CALL                             R24 0 1
      193 JUMPIFNOT                        R24 ; [+2]
      194 MOVE                             R23 R8
      195 JUMPIF                           R23 ; [+1]
      196 LOADNIL                          R23
      197 SETTABLEKS                       R23 R22 K38 ["avatarAssetTotalCount"]
      199 GETUPVAL                         R24 15
      200 CALL                             R24 0 1
      201 JUMPIFNOT                        R24 ; [+3]
      202 NEWTABLE                         R23 0 0
      204 JUMP                             ; [+1]
      205 LOADNIL                          R23
      206 SETTABLEKS                       R23 R22 K39 ["sellerStatusData"]
      208 GETUPVAL                         R24 2
      209 CALL                             R24 0 1
      210 JUMPIFNOT                        R24 ; [+2]
      211 MOVE                             R23 R14
      212 JUMP                             ; [+1]
      213 LOADNIL                          R23
      214 SETTABLEKS                       R23 R22 K8 ["groupBundlesUploadEnabledForUser"]
      216 MOVE                             R23 R19
      217 CALL                             R20 3 1
      218 GETUPVAL                         R21 16
      219 CALL                             R21 0 1
      220 GETUPVAL                         R22 17
      221 GETTABLEKS                       R22 R22 K21 ["new"]
      223 CALL                             R22 0 1
      224 NEWCLOSURE                       R23 P1
      225 CAPTURE                          UPVAL U0
      226 CAPTURE                          UPVAL U18
      227 CAPTURE                          UPVAL U19
      228 CAPTURE                          UPVAL U20
      229 GETUPVAL                         R25 12
      230 JUMPIFNOT                        R25 ; [+5]
      231 GETUPVAL                         R24 21
      232 GETTABLEKS                       R24 R24 K21 ["new"]
      234 CALL                             R24 0 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R24
      237 GETUPVAL                         R25 19
      238 GETTABLEKS                       R25 R25 K44 ["createElement"]
      240 GETUPVAL                         R26 22
      241 DUPTABLE                         R27 K50 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      242 SETTABLEKS                       R0 R27 K22 ["assetId"]
      244 SETTABLEKS                       R3 R27 K30 ["assetTypeEnum"]
      246 GETUPVAL                         R28 23
      247 SETTABLEKS                       R28 R27 K45 ["plugin"]
      249 SETTABLEKS                       R20 R27 K46 ["store"]
      251 SETTABLEKS                       R21 R27 K47 ["theme"]
      253 SETTABLEKS                       R22 R27 K48 ["networkInterface"]
      255 SETTABLEKS                       R23 R27 K49 ["onAssetConfigDestroy"]
      257 CALL                             R25 2 1
      258 GETUPVAL                         R26 19
      259 GETTABLEKS                       R26 R26 K44 ["createElement"]
      261 GETUPVAL                         R27 24
      262 DUPTABLE                         R28 K54 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      263 GETUPVAL                         R30 12
      264 JUMPIFNOT                        R30 ; [+2]
      265 MOVE                             R29 R24
      266 JUMP                             ; [+1]
      267 LOADNIL                          R29
      268 SETTABLEKS                       R29 R28 K51 ["ixp"]
      270 GETUPVAL                         R29 25
      271 SETTABLEKS                       R29 R28 K52 ["localization"]
      273 GETUPVAL                         R29 23
      274 SETTABLEKS                       R29 R28 K45 ["plugin"]
      276 SETTABLEKS                       R21 R28 K47 ["theme"]
      278 SETTABLEKS                       R20 R28 K46 ["store"]
      280 GETIMPORT                        R29 K55 [settings]
      282 SETTABLEKS                       R29 R28 K53 ["settings"]
      284 NEWTABLE                         R29 0 1
      286 MOVE                             R30 R25
      287 SETLIST                          R29 R30 1 [1]
      289 CALL                             R26 3 1
      290 GETUPVAL                         R27 19
      291 GETTABLEKS                       R27 R27 K56 ["mount"]
      293 MOVE                             R28 R26
      294 CALL                             R27 1 1
      295 SETUPVAL                         R27 0
      296 RETURN                           R0 0

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
       55 GETTABLEKS                       R19 R17 K9 ["assets"]
       57 GETTABLEKS                       R19 R19 K10 ["idToAssetMap"]
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
       77 GETUPVAL                         R20 4
       78 GETTABLEKS                       R20 R20 K13 ["getFlowStartScreen"]
       80 MOVE                             R21 R1
       81 MOVE                             R22 R11
       82 CALL                             R20 2 1
       83 JUMPIFNOTEQKNIL                  R6 ; [+6]
       85 GETUPVAL                         R21 5
       86 NAMECALL                         R21 R21 K14 ["getDefaultTab"]
       88 CALL                             R21 1 1
       89 MOVE                             R6 R21
       90 GETUPVAL                         R21 6
       91 GETTABLEKS                       R21 R21 K15 ["FLOW_TYPE"]
       93 GETTABLEKS                       R21 R21 K16 ["DOWNLOAD_FLOW"]
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
      112 GETUPVAL                         R22 9
      113 GETTABLEKS                       R22 R22 K20 ["Store"]
      115 GETTABLEKS                       R22 R22 K21 ["new"]
      117 GETUPVAL                         R23 10
      118 DUPTABLE                         R24 K40 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "animationSectionValid", "hasSubsequent", "avatarAssetCurrentIndex", "avatarAssetTotalCount", "sellerStatusData", "groupBundlesUploadEnabledForUser"}]
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
      150 DUPTABLE                         R25 K43 [{"inProgress", "queued"}]
      151 NEWTABLE                         R26 0 0
      153 SETTABLEKS                       R26 R25 K41 ["inProgress"]
      155 NEWTABLE                         R26 0 0
      157 SETTABLEKS                       R26 R25 K42 ["queued"]
      159 SETTABLEKS                       R25 R24 K29 ["rollingAssetPermissionRequests"]
      161 SETTABLEKS                       R3 R24 K30 ["assetTypeEnum"]
      163 SETTABLEKS                       R6 R24 K31 ["currentTab"]
      165 SETTABLEKS                       R15 R24 K32 ["packagePermissions"]
      167 NEWTABLE                         R25 0 0
      169 SETTABLEKS                       R25 R24 K33 ["overrideCursor"]
      171 LOADB                            R25 0
      172 SETTABLEKS                       R25 R24 K34 ["deleteLocal"]
      174 GETUPVAL                         R26 13
      175 CALL                             R26 0 1
      176 JUMPIFNOT                        R26 ; [+2]
      177 LOADB                            R25 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R25
      180 SETTABLEKS                       R25 R24 K35 ["animationSectionValid"]
      182 SETTABLEKS                       R5 R24 K36 ["hasSubsequent"]
      184 GETUPVAL                         R26 14
      185 CALL                             R26 0 1
      186 JUMPIFNOT                        R26 ; [+2]
      187 MOVE                             R25 R8
      188 JUMP                             ; [+1]
      189 LOADNIL                          R25
      190 SETTABLEKS                       R25 R24 K37 ["avatarAssetCurrentIndex"]
      192 GETUPVAL                         R26 14
      193 CALL                             R26 0 1
      194 JUMPIFNOT                        R26 ; [+2]
      195 MOVE                             R25 R9
      196 JUMP                             ; [+1]
      197 LOADNIL                          R25
      198 SETTABLEKS                       R25 R24 K38 ["avatarAssetTotalCount"]
      200 GETUPVAL                         R26 15
      201 CALL                             R26 0 1
      202 JUMPIFNOT                        R26 ; [+3]
      203 NEWTABLE                         R25 0 0
      205 JUMP                             ; [+1]
      206 LOADNIL                          R25
      207 SETTABLEKS                       R25 R24 K39 ["sellerStatusData"]
      209 GETUPVAL                         R26 2
      210 CALL                             R26 0 1
      211 JUMPIFNOT                        R26 ; [+2]
      212 MOVE                             R25 R16
      213 JUMP                             ; [+1]
      214 LOADNIL                          R25
      215 SETTABLEKS                       R25 R24 K8 ["groupBundlesUploadEnabledForUser"]
      217 MOVE                             R25 R21
      218 CALL                             R22 3 1
      219 GETUPVAL                         R23 16
      220 CALL                             R23 0 1
      221 GETUPVAL                         R24 17
      222 GETTABLEKS                       R24 R24 K21 ["new"]
      224 CALL                             R24 0 1
      225 NEWCLOSURE                       R25 P1
      226 CAPTURE                          UPVAL U0
      227 CAPTURE                          UPVAL U18
      228 CAPTURE                          UPVAL U19
      229 CAPTURE                          UPVAL U20
      230 CAPTURE                          VAL R7
      231 GETUPVAL                         R27 12
      232 JUMPIFNOT                        R27 ; [+5]
      233 GETUPVAL                         R26 21
      234 GETTABLEKS                       R26 R26 K21 ["new"]
      236 CALL                             R26 0 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R26
      239 GETUPVAL                         R27 19
      240 GETTABLEKS                       R27 R27 K44 ["createElement"]
      242 GETUPVAL                         R28 22
      243 DUPTABLE                         R29 K51 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      244 SETTABLEKS                       R0 R29 K22 ["assetId"]
      246 SETTABLEKS                       R3 R29 K30 ["assetTypeEnum"]
      248 GETUPVAL                         R31 23
      249 CALL                             R31 0 1
      250 JUMPIFNOT                        R31 ; [+2]
      251 MOVE                             R30 R10
      252 JUMP                             ; [+1]
      253 LOADNIL                          R30
      254 SETTABLEKS                       R30 R29 K45 ["groupId"]
      256 GETUPVAL                         R30 24
      257 SETTABLEKS                       R30 R29 K46 ["plugin"]
      259 SETTABLEKS                       R22 R29 K47 ["store"]
      261 SETTABLEKS                       R23 R29 K48 ["theme"]
      263 SETTABLEKS                       R24 R29 K49 ["networkInterface"]
      265 SETTABLEKS                       R25 R29 K50 ["onAssetConfigDestroy"]
      267 CALL                             R27 2 1
      268 GETUPVAL                         R28 19
      269 GETTABLEKS                       R28 R28 K44 ["createElement"]
      271 GETUPVAL                         R29 25
      272 DUPTABLE                         R30 K55 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      273 GETUPVAL                         R32 12
      274 JUMPIFNOT                        R32 ; [+2]
      275 MOVE                             R31 R26
      276 JUMP                             ; [+1]
      277 LOADNIL                          R31
      278 SETTABLEKS                       R31 R30 K52 ["ixp"]
      280 GETUPVAL                         R31 26
      281 SETTABLEKS                       R31 R30 K53 ["localization"]
      283 GETUPVAL                         R31 24
      284 SETTABLEKS                       R31 R30 K46 ["plugin"]
      286 SETTABLEKS                       R23 R30 K48 ["theme"]
      288 SETTABLEKS                       R22 R30 K47 ["store"]
      290 GETIMPORT                        R31 K56 [settings]
      292 SETTABLEKS                       R31 R30 K54 ["settings"]
      294 NEWTABLE                         R31 0 1
      296 MOVE                             R32 R27
      297 SETLIST                          R31 R32 1 [1]
      299 CALL                             R28 3 1
      300 GETUPVAL                         R29 19
      301 GETTABLEKS                       R29 R29 K57 ["mount"]
      303 MOVE                             R30 R28
      304 CALL                             R29 1 1
      305 SETUPVAL                         R29 0
      306 RETURN                           R22 1

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
       15 JUMPIFEQKNIL                     R1 ; [+51]
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
       78 GETUPVAL                         R3 5
       79 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
       81 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
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
      107 GETUPVAL                         R3 5
      108 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
      110 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
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
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R3 R3 K1 ["DOWNLOAD_FLOW"]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K5 [Enum.AssetType.Animation]
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

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
      202 NAMECALL                         R14 R14 K30 ["Connect"]
      204 CALL                             R14 2 0
      205 GETUPVAL                         R15 19
      206 GETTABLEKS                       R15 R15 K29 ["signals"]
      208 GETTABLEKS                       R14 R15 K34 ["StudioService.OnOpenManagePackagePlugin"]
      210 NEWCLOSURE                       R16 P6
      211 CAPTURE                          UPVAL U15
      212 CAPTURE                          UPVAL U16
      213 NAMECALL                         R14 R14 K30 ["Connect"]
      215 CALL                             R14 2 0
      216 GETUPVAL                         R15 19
      217 GETTABLEKS                       R15 R15 K29 ["signals"]
      219 GETTABLEKS                       R14 R15 K35 ["StudioService.OnPublishAsPlugin"]
      221 NEWCLOSURE                       R16 P7
      222 CAPTURE                          UPVAL U15
      223 CAPTURE                          UPVAL U16
      224 CAPTURE                          UPVAL U27
      225 CAPTURE                          UPVAL U20
      226 CAPTURE                          UPVAL U0
      227 CAPTURE                          UPVAL U21
      228 CAPTURE                          VAL R4
      229 CAPTURE                          UPVAL U22
      230 NAMECALL                         R14 R14 K30 ["Connect"]
      232 CALL                             R14 2 0
      233 GETUPVAL                         R15 19
      234 GETTABLEKS                       R15 R15 K29 ["signals"]
      236 GETTABLEKS                       R14 R15 K36 ["MemStorageService.OpenAssetConfiguration"]
      238 NEWCLOSURE                       R16 P8
      239 CAPTURE                          UPVAL U30
      240 CAPTURE                          UPVAL U15
      241 CAPTURE                          UPVAL U16
      242 NAMECALL                         R14 R14 K30 ["Connect"]
      244 CALL                             R14 2 0
      245 GETUPVAL                         R14 31
      246 GETTABLEKS                       R14 R14 K37 ["registerLocalization"]
      248 GETUPVAL                         R15 25
      249 CALL                             R14 1 0
      250 GETUPVAL                         R14 31
      251 GETTABLEKS                       R14 R14 K38 ["registerProcessDragHandler"]
      253 GETUPVAL                         R15 6
      254 CALL                             R14 1 0
      255 CLOSEUPVALS                      R7
      256 RETURN                           R0 0

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
       85 GETTABLEKS                       R14 R3 K21 ["isCli"]
       87 CALL                             R13 1 1
       88 MOVE                             R14 R13
       89 CALL                             R14 0 1
       90 JUMPIFNOT                        R14 ; [+1]
       91 RETURN                           R0 0
       92 GETIMPORT                        R14 K6 [game]
       94 LOADK                            R16 K22 ["StudioService"]
       95 NAMECALL                         R14 R14 K23 ["GetService"]
       97 CALL                             R14 2 1
       98 NAMECALL                         R15 R14 K24 ["HasInternalPermission"]
      100 CALL                             R15 1 1
      101 GETTABLEKS                       R16 R2 K25 ["Packages"]
      103 GETIMPORT                        R17 K13 [require]
      105 GETTABLEKS                       R18 R16 K26 ["Roact"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K13 [require]
      110 GETTABLEKS                       R19 R16 K27 ["Framework"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K13 [require]
      115 GETTABLEKS                       R20 R16 K28 ["Dev"]
      117 GETTABLEKS                       R20 R20 K29 ["DeveloperTools"]
      119 CALL                             R19 1 1
      120 JUMPIFNOT                        R4 ; [+13]
      121 GETTABLEKS                       R20 R17 K30 ["setGlobalConfig"]
      123 DUPTABLE                         R21 K34 [{"elementTracing", "propValidation", "typeChecks"}]
      124 LOADB                            R22 1
      125 SETTABLEKS                       R22 R21 K31 ["elementTracing"]
      127 LOADB                            R22 1
      128 SETTABLEKS                       R22 R21 K32 ["propValidation"]
      130 LOADB                            R22 1
      131 SETTABLEKS                       R22 R21 K33 ["typeChecks"]
      133 CALL                             R20 1 0
      134 GETIMPORT                        R20 K13 [require]
      136 GETTABLEKS                       R21 R16 K35 ["Rodux"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K13 [require]
      141 GETTABLEKS                       R22 R3 K36 ["InsertAsset"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K13 [require]
      146 GETTABLEKS                       R23 R3 K37 ["Analytics"]
      148 GETTABLEKS                       R23 R23 K38 ["AssetAnalyticsContextItem"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K13 [require]
      153 GETTABLEKS                       R24 R3 K39 ["DebugFlags"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K13 [require]
      158 GETTABLEKS                       R25 R3 K40 ["Settings"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K13 [require]
      163 GETTABLEKS                       R26 R3 K41 ["ToolboxTheme"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K13 [require]
      168 GETTABLEKS                       R27 R3 K42 ["AssetConfigTheme"]
      170 CALL                             R26 1 1
      171 GETIMPORT                        R27 K13 [require]
      173 GETTABLEKS                       R28 R3 K43 ["AssetConfigConstants"]
      175 CALL                             R27 1 1
      176 GETIMPORT                        R28 K13 [require]
      178 GETTABLEKS                       R29 R3 K44 ["AssetConfigUtil"]
      180 CALL                             R28 1 1
      181 GETIMPORT                        R29 K13 [require]
      183 GETTABLEKS                       R30 R3 K37 ["Analytics"]
      185 GETTABLEKS                       R30 R30 K45 ["makeToolboxAnalyticsContext"]
      187 CALL                             R29 1 1
      188 GETIMPORT                        R30 K13 [require]
      190 GETTABLEKS                       R31 R2 K3 ["Src"]
      192 GETTABLEKS                       R31 R31 K46 ["ContextServices"]
      194 GETTABLEKS                       R31 R31 K47 ["IXPContext"]
      196 CALL                             R30 1 1
      197 GETTABLEKS                       R31 R23 K48 ["shouldDebugWarnings"]
      199 CALL                             R31 0 1
      200 JUMPIFNOT                        R31 ; [+13]
      201 GETIMPORT                        R31 K13 [require]
      203 GETTABLEKS                       R32 R16 K27 ["Framework"]
      205 CALL                             R31 1 1
      206 GETTABLEKS                       R31 R31 K4 ["Util"]
      208 GETTABLEKS                       R31 R31 K49 ["Promise"]
      210 GETIMPORT                        R32 K51 [warn]
      212 SETTABLEKS                       R32 R31 K52 ["onUnhandledRejection"]
      214 GETIMPORT                        R31 K13 [require]
      216 GETTABLEKS                       R32 R2 K3 ["Src"]
      218 GETTABLEKS                       R32 R32 K53 ["Types"]
      220 GETTABLEKS                       R32 R32 K54 ["Background"]
      222 CALL                             R31 1 1
      223 GETIMPORT                        R32 K13 [require]
      225 GETTABLEKS                       R33 R2 K3 ["Src"]
      227 GETTABLEKS                       R33 R33 K53 ["Types"]
      229 GETTABLEKS                       R33 R33 K55 ["Suggestion"]
      231 CALL                             R32 1 1
      232 GETIMPORT                        R33 K13 [require]
      234 GETTABLEKS                       R34 R2 K3 ["Src"]
      236 GETTABLEKS                       R34 R34 K53 ["Types"]
      238 GETTABLEKS                       R34 R34 K56 ["ConfigTypes"]
      240 CALL                             R33 1 1
      241 GETIMPORT                        R34 K13 [require]
      243 GETTABLEKS                       R35 R2 K3 ["Src"]
      245 GETTABLEKS                       R35 R35 K57 ["Components"]
      247 GETTABLEKS                       R35 R35 K58 ["ToolboxPlugin"]
      249 CALL                             R34 1 1
      250 GETIMPORT                        R35 K13 [require]
      252 GETTABLEKS                       R36 R2 K3 ["Src"]
      254 GETTABLEKS                       R36 R36 K4 ["Util"]
      256 GETTABLEKS                       R36 R36 K59 ["ToolboxUtilities"]
      258 CALL                             R35 1 1
      259 GETTABLEKS                       R35 R35 K60 ["getToolboxEnabled"]
      261 GETIMPORT                        R36 K13 [require]
      263 GETTABLEKS                       R37 R2 K3 ["Src"]
      265 GETTABLEKS                       R37 R37 K4 ["Util"]
      267 GETTABLEKS                       R37 R37 K61 ["ToolboxCommunication"]
      269 CALL                             R36 1 1
      270 GETIMPORT                        R37 K13 [require]
      272 GETTABLEKS                       R38 R2 K3 ["Src"]
      274 GETTABLEKS                       R38 R38 K62 ["Reducers"]
      276 GETTABLEKS                       R38 R38 K63 ["ToolboxReducer"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K13 [require]
      281 GETTABLEKS                       R39 R2 K3 ["Src"]
      283 GETTABLEKS                       R39 R39 K62 ["Reducers"]
      285 GETTABLEKS                       R39 R39 K64 ["AssetConfigReducer"]
      287 CALL                             R38 1 1
      288 GETIMPORT                        R39 K13 [require]
      290 GETTABLEKS                       R40 R2 K3 ["Src"]
      292 GETTABLEKS                       R40 R40 K65 ["Networking"]
      294 GETTABLEKS                       R40 R40 K66 ["NetworkInterface"]
      296 CALL                             R39 1 1
      297 GETIMPORT                        R40 K13 [require]
      299 GETTABLEKS                       R41 R2 K3 ["Src"]
      301 GETTABLEKS                       R41 R41 K57 ["Components"]
      303 GETTABLEKS                       R41 R41 K67 ["AssetConfiguration"]
      305 GETTABLEKS                       R41 R41 K68 ["AssetConfigWrapper"]
      307 CALL                             R40 1 1
      308 GETIMPORT                        R41 K13 [require]
      310 GETTABLEKS                       R42 R2 K3 ["Src"]
      312 GETTABLEKS                       R42 R42 K57 ["Components"]
      314 GETTABLEKS                       R42 R42 K69 ["ToolboxServiceWrapper"]
      316 CALL                             R41 1 1
      317 GETIMPORT                        R42 K13 [require]
      319 GETTABLEKS                       R43 R2 K3 ["Src"]
      321 GETTABLEKS                       R43 R43 K65 ["Networking"]
      323 GETTABLEKS                       R43 R43 K70 ["Requests"]
      325 GETTABLEKS                       R43 R43 K71 ["GetRolesRequest"]
      327 CALL                             R42 1 1
      328 GETIMPORT                        R43 K13 [require]
      330 GETTABLEKS                       R44 R2 K3 ["Src"]
      332 GETTABLEKS                       R44 R44 K65 ["Networking"]
      334 GETTABLEKS                       R44 R44 K70 ["Requests"]
      336 GETTABLEKS                       R44 R44 K72 ["GetRolesDebugRequest"]
      338 CALL                             R43 1 1
      339 GETIMPORT                        R44 K13 [require]
      341 GETTABLEKS                       R45 R2 K3 ["Src"]
      343 GETTABLEKS                       R45 R45 K14 ["Flags"]
      345 GETTABLEKS                       R45 R45 K73 ["getFFlagEnableUploadingGroupBundles"]
      347 CALL                             R44 1 1
      348 GETTABLEKS                       R45 R18 K46 ["ContextServices"]
      350 GETTABLEKS                       R46 R18 K4 ["Util"]
      352 GETTABLEKS                       R46 R46 K74 ["ThunkWithArgsMiddleware"]
      354 GETIMPORT                        R47 K13 [require]
      356 GETTABLEKS                       R48 R16 K75 ["Dash"]
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
      376 NAMECALL                         R51 R51 K23 ["GetService"]
      378 CALL                             R51 2 1
      379 GETIMPORT                        R52 K6 [game]
      381 LOADK                            R54 K82 ["RobloxPluginGuiService"]
      382 NAMECALL                         R52 R52 K23 ["GetService"]
      384 CALL                             R52 2 1
      385 GETIMPORT                        R53 K6 [game]
      387 LOADK                            R55 K83 ["StudioAssetService"]
      388 NAMECALL                         R53 R53 K23 ["GetService"]
      390 CALL                             R53 2 1
      391 MOVE                             R54 R35
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
      409 GETTABLEKS                       R57 R18 K77 ["Resources"]
      411 GETTABLEKS                       R57 R57 K91 ["LOCALIZATION_PROJECT_NAME"]
      413 DUPTABLE                         R58 K92 [{"stringResourceTable", "translationResourceTable"}]
      414 GETTABLEKS                       R59 R18 K77 ["Resources"]
      416 GETTABLEKS                       R59 R59 K79 ["SourceStrings"]
      418 SETTABLEKS                       R59 R58 K85 ["stringResourceTable"]
      420 GETTABLEKS                       R59 R18 K77 ["Resources"]
      422 GETTABLEKS                       R59 R59 K80 ["LocalizedStrings"]
      424 SETTABLEKS                       R59 R58 K86 ["translationResourceTable"]
      426 SETTABLE                         R58 R56 R57
      427 SETTABLEKS                       R56 R55 K88 ["libraries"]
      429 CALL                             R54 1 1
      430 NEWCLOSURE                       R55 P0
      431 CAPTURE                          VAL R25
      432 NEWCLOSURE                       R56 P1
      433 CAPTURE                          VAL R26
      434 LOADNIL                          R57
      435 LOADNIL                          R58
      436 NEWCLOSURE                       R59 P2
      437 CAPTURE                          REF R58
      438 CAPTURE                          REF R57
      439 CAPTURE                          VAL R44
      440 CAPTURE                          VAL R48
      441 CAPTURE                          VAL R28
      442 CAPTURE                          VAL R33
      443 CAPTURE                          VAL R27
      444 CAPTURE                          VAL R46
      445 CAPTURE                          VAL R53
      446 CAPTURE                          VAL R20
      447 CAPTURE                          VAL R38
      448 CAPTURE                          VAL R6
      449 CAPTURE                          VAL R7
      450 CAPTURE                          VAL R12
      451 CAPTURE                          VAL R11
      452 CAPTURE                          VAL R10
      453 CAPTURE                          VAL R56
      454 CAPTURE                          VAL R39
      455 CAPTURE                          VAL R52
      456 CAPTURE                          VAL R17
      457 CAPTURE                          VAL R14
      458 CAPTURE                          VAL R30
      459 CAPTURE                          VAL R40
      460 CAPTURE                          VAL R0
      461 CAPTURE                          VAL R41
      462 CAPTURE                          VAL R54
      463 NEWCLOSURE                       R60 P3
      464 CAPTURE                          REF R58
      465 CAPTURE                          REF R57
      466 CAPTURE                          VAL R44
      467 CAPTURE                          VAL R48
      468 CAPTURE                          VAL R28
      469 CAPTURE                          VAL R33
      470 CAPTURE                          VAL R27
      471 CAPTURE                          VAL R46
      472 CAPTURE                          VAL R53
      473 CAPTURE                          VAL R20
      474 CAPTURE                          VAL R38
      475 CAPTURE                          VAL R6
      476 CAPTURE                          VAL R7
      477 CAPTURE                          VAL R12
      478 CAPTURE                          VAL R11
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R56
      481 CAPTURE                          VAL R39
      482 CAPTURE                          VAL R52
      483 CAPTURE                          VAL R17
      484 CAPTURE                          VAL R14
      485 CAPTURE                          VAL R30
      486 CAPTURE                          VAL R40
      487 CAPTURE                          VAL R9
      488 CAPTURE                          VAL R0
      489 CAPTURE                          VAL R41
      490 CAPTURE                          VAL R54
      491 NEWCLOSURE                       R61 P4
      492 CAPTURE                          VAL R8
      493 CAPTURE                          VAL R60
      494 CAPTURE                          VAL R11
      495 CAPTURE                          VAL R9
      496 CAPTURE                          VAL R59
      497 NEWCLOSURE                       R62 P5
      498 CAPTURE                          REF R57
      499 CAPTURE                          VAL R20
      500 CAPTURE                          VAL R37
      501 CAPTURE                          VAL R22
      502 CAPTURE                          VAL R29
      503 CAPTURE                          VAL R24
      504 CAPTURE                          VAL R0
      505 CAPTURE                          VAL R55
      506 CAPTURE                          VAL R39
      507 CAPTURE                          VAL R31
      508 CAPTURE                          VAL R32
      509 CAPTURE                          VAL R15
      510 CAPTURE                          VAL R19
      511 CAPTURE                          VAL R17
      512 CAPTURE                          VAL R36
      513 CAPTURE                          VAL R61
      514 CAPTURE                          VAL R27
      515 CAPTURE                          VAL R33
      516 CAPTURE                          VAL R34
      517 CAPTURE                          VAL R1
      518 CAPTURE                          VAL R5
      519 CAPTURE                          VAL R43
      520 CAPTURE                          VAL R42
      521 CAPTURE                          VAL R30
      522 CAPTURE                          VAL R41
      523 CAPTURE                          VAL R54
      524 CAPTURE                          VAL R8
      525 CAPTURE                          VAL R28
      526 CAPTURE                          VAL R53
      527 CAPTURE                          VAL R11
      528 CAPTURE                          VAL R51
      529 CAPTURE                          VAL R21
      530 MOVE                             R63 R62
      531 CALL                             R63 0 0
      532 CLOSEUPVALS                      R57
      533 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_30]
        2 RETURN                           R0 1
