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

PROTO_8:
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
      115 DUPTABLE                         R25 K44 [{["assetId"], ["assetMediaIds"], ["screenFlowType"], ["currentScreen"], ["instances"], ["sourceInstances"], ["allowedAssetTypesForRelease"], ["allowedAssetTypesForUpload"], ["allowedAssetTypesForFree"], ["allowedBundleTypeSettings"], ["idToFiatProductMap"], ["rollingAssetPermissionRequests"], ["assetTypeEnum"], ["assetSubType"], ["currentTab"], ["packagePermissions"], ["overrideCursor"], ["deleteLocal"] = False, ["animationSectionValid"] = True, ["hasSubsequent"], ["avatarAssetCurrentIndex"], ["avatarAssetTotalCount"], ["sellerStatusData"], ["groupBundlesUploadEnabledForUser"], ["preselectedGroupId"]}]
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
      147 DUPTABLE                         R26 K47 [{"inProgress", "queued"}]
      148 NEWTABLE                         R27 0 0
      150 SETTABLEKS                       R27 R26 K45 ["inProgress"]
      152 NEWTABLE                         R27 0 0
      154 SETTABLEKS                       R27 R26 K46 ["queued"]
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
      176 SETTABLEKS                       R6 R25 K39 ["hasSubsequent"]
      178 SETTABLEKS                       R9 R25 K40 ["avatarAssetCurrentIndex"]
      180 SETTABLEKS                       R10 R25 K41 ["avatarAssetTotalCount"]
      182 GETUPVAL                         R27 13
      183 CALL                             R27 0 1
      184 JUMPIFNOT                        R27 ; [+3]
      185 NEWTABLE                         R26 0 0
      187 JUMP                             ; [+1]
      188 LOADNIL                          R26
      189 SETTABLEKS                       R26 R25 K42 ["sellerStatusData"]
      191 SETTABLEKS                       R17 R25 K8 ["groupBundlesUploadEnabledForUser"]
      193 GETUPVAL                         R27 14
      194 CALL                             R27 0 1
      195 JUMPIFNOT                        R27 ; [+5]
      196 GETUPVAL                         R27 15
      197 CALL                             R27 0 1
      198 JUMPIFNOT                        R27 ; [+2]
      199 MOVE                             R26 R11
      200 JUMP                             ; [+1]
      201 LOADNIL                          R26
      202 SETTABLEKS                       R26 R25 K43 ["preselectedGroupId"]
      204 MOVE                             R26 R22
      205 CALL                             R23 3 1
      206 GETUPVAL                         R24 16
      207 CALL                             R24 0 1
      208 GETUPVAL                         R25 17
      209 GETTABLEKS                       R25 R25 K21 ["new"]
      211 CALL                             R25 0 1
      212 NEWCLOSURE                       R26 P1
      213 CAPTURE                          UPVAL U0
      214 CAPTURE                          UPVAL U18
      215 CAPTURE                          UPVAL U19
      216 CAPTURE                          UPVAL U20
      217 CAPTURE                          VAL R8
      218 GETUPVAL                         R28 11
      219 JUMPIFNOT                        R28 ; [+5]
      220 GETUPVAL                         R27 21
      221 GETTABLEKS                       R27 R27 K21 ["new"]
      223 CALL                             R27 0 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R27
      226 GETUPVAL                         R28 19
      227 GETTABLEKS                       R28 R28 K48 ["createElement"]
      229 GETUPVAL                         R29 22
      230 DUPTABLE                         R30 K55 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      231 SETTABLEKS                       R0 R30 K22 ["assetId"]
      233 SETTABLEKS                       R3 R30 K30 ["assetTypeEnum"]
      235 GETUPVAL                         R32 14
      236 CALL                             R32 0 1
      237 JUMPIFNOT                        R32 ; [+2]
      238 MOVE                             R31 R11
      239 JUMP                             ; [+1]
      240 LOADNIL                          R31
      241 SETTABLEKS                       R31 R30 K49 ["groupId"]
      243 GETUPVAL                         R31 23
      244 SETTABLEKS                       R31 R30 K50 ["plugin"]
      246 SETTABLEKS                       R23 R30 K51 ["store"]
      248 SETTABLEKS                       R24 R30 K52 ["theme"]
      250 SETTABLEKS                       R25 R30 K53 ["networkInterface"]
      252 SETTABLEKS                       R26 R30 K54 ["onAssetConfigDestroy"]
      254 CALL                             R28 2 1
      255 GETUPVAL                         R29 19
      256 GETTABLEKS                       R29 R29 K48 ["createElement"]
      258 GETUPVAL                         R30 24
      259 DUPTABLE                         R31 K59 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      260 GETUPVAL                         R33 11
      261 JUMPIFNOT                        R33 ; [+2]
      262 MOVE                             R32 R27
      263 JUMP                             ; [+1]
      264 LOADNIL                          R32
      265 SETTABLEKS                       R32 R31 K56 ["ixp"]
      267 GETUPVAL                         R32 25
      268 SETTABLEKS                       R32 R31 K57 ["localization"]
      270 GETUPVAL                         R32 23
      271 SETTABLEKS                       R32 R31 K50 ["plugin"]
      273 SETTABLEKS                       R24 R31 K52 ["theme"]
      275 SETTABLEKS                       R23 R31 K51 ["store"]
      277 GETIMPORT                        R32 K60 [settings]
      279 SETTABLEKS                       R32 R31 K58 ["settings"]
      281 NEWTABLE                         R32 0 1
      283 MOVE                             R33 R28
      284 SETLIST                          R32 R33 1 [1]
      286 CALL                             R29 3 1
      287 GETUPVAL                         R30 19
      288 GETTABLEKS                       R30 R30 K61 ["mount"]
      290 MOVE                             R31 R29
      291 CALL                             R30 1 1
      292 SETUPVAL                         R30 0
      293 RETURN                           R23 1

PROTO_9:
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

PROTO_10:
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

PROTO_14:
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

PROTO_15:
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
       45 GETUPVAL                         R3 4
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+8]
       48 GETUPVAL                         R3 1
       49 LOADK                            R5 K12 ["AnimationGraphDefinition"]
       50 NAMECALL                         R3 R3 K7 ["IsA"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+2]
       54 LOADK                            R2 K13 ["AnimationGraph"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R2
       57 LOADB                            R3 0
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          REF R3
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 GETUPVAL                         R5 7
       63 LOADNIL                          R6
       64 GETUPVAL                         R7 3
       65 GETTABLEKS                       R7 R7 K14 ["FLOW_TYPE"]
       67 GETTABLEKS                       R7 R7 K15 ["UPLOAD_FLOW"]
       69 MOVE                             R8 R0
       70 MOVE                             R9 R1
       71 MOVE                             R10 R2
       72 NEWTABLE                         R11 0 1
       74 GETUPVAL                         R12 1
       75 SETLIST                          R11 R12 1 [1]
       77 LOADB                            R12 0
       78 LOADNIL                          R13
       79 MOVE                             R14 R4
       80 LOADNIL                          R15
       81 LOADNIL                          R16
       82 GETUPVAL                         R17 8
       83 CALL                             R5 12 1
       84 JUMPIF                           R5 ; [+10]
       85 GETUPVAL                         R6 5
       86 GETUPVAL                         R8 6
       87 LOADNIL                          R9
       88 LOADNIL                          R10
       89 LOADK                            R11 K16 ["Asset config dialog already open"]
       90 NAMECALL                         R6 R6 K17 ["ResolveSaveInstanceToRoblox"]
       92 CALL                             R6 5 0
       93 CLOSEUPVALS                      R3
       94 RETURN                           R0 0
       95 LOADNIL                          R6
       96 GETTABLEKS                       R7 R5 K18 ["changed"]
       98 NEWCLOSURE                       R9 P1
       99 CAPTURE                          REF R3
      100 CAPTURE                          REF R6
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          UPVAL U6
      103 NAMECALL                         R7 R7 K19 ["connect"]
      105 CALL                             R7 2 1
      106 MOVE                             R6 R7
      107 CLOSEUPVALS                      R3
      108 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R3
       10 GETUPVAL                         R5 5
       11 JUMPIFNOT                        R5 ; [+13]
       12 GETUPVAL                         R5 6
       13 GETUPVAL                         R7 7
       14 GETUPVAL                         R8 8
       15 CALL                             R7 1 -1
       16 NAMECALL                         R5 R5 K0 ["dispatch"]
       18 CALL                             R5 -1 1
       19 MOVE                             R7 R4
       20 MOVE                             R8 R4
       21 NAMECALL                         R5 R5 K1 ["andThen"]
       23 CALL                             R5 3 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R5 6
       26 GETUPVAL                         R7 9
       27 GETUPVAL                         R8 8
       28 CALL                             R7 1 -1
       29 NAMECALL                         R5 R5 K0 ["dispatch"]
       31 CALL                             R5 -1 1
       32 MOVE                             R7 R4
       33 MOVE                             R8 R4
       34 NAMECALL                         R5 R5 K1 ["andThen"]
       36 CALL                             R5 3 0
       37 RETURN                           R0 0

PROTO_17:
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
       14 LOADNIL                          R1
       15 GETUPVAL                         R2 3
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+12]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K3 ["getCreatorTypeAndId"]
       21 CALL                             R2 0 2
       22 GETIMPORT                        R4 K7 [Enum.CreatorType.Group]
       24 JUMPIFNOTEQ                      R2 R4 ; [+5]
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+2]
       29 MOVE                             R1 R3
       30 GETUPVAL                         R2 5
       31 JUMPIFEQKNIL                     R2 ; [+42]
       33 GETUPVAL                         R2 6
       34 LOADNIL                          R3
       35 GETUPVAL                         R4 7
       36 GETTABLEKS                       R4 R4 K8 ["FLOW_TYPE"]
       38 GETTABLEKS                       R4 R4 K9 ["UPLOAD_FLOW"]
       40 MOVE                             R5 R0
       41 GETUPVAL                         R8 5
       42 FASTCALL1                        TYPEOF R8 ; [+2]
       43 GETIMPORT                        R7 K11 [typeof]
       45 CALL                             R7 1 1
       46 JUMPIFNOTEQKS                    R7 K12 ["EnumItem"] ; [+3]
       48 GETUPVAL                         R6 5
       49 JUMP                             ; [+14]
       50 GETUPVAL                         R8 5
       51 FASTCALL1                        TYPEOF R8 ; [+2]
       52 GETIMPORT                        R7 K11 [typeof]
       54 CALL                             R7 1 1
       55 JUMPIFNOTEQKS                    R7 K13 ["string"] ; [+7]
       57 GETUPVAL                         R7 7
       58 GETTABLEKS                       R7 R7 K14 ["UGCBundleTypes"]
       60 GETUPVAL                         R8 5
       61 GETTABLE                         R6 R7 R8
       62 JUMP                             ; [+1]
       63 LOADNIL                          R6
       64 LOADNIL                          R7
       65 GETUPVAL                         R8 1
       66 GETUPVAL                         R9 2
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 GETUPVAL                         R12 8
       70 GETUPVAL                         R13 9
       71 MOVE                             R14 R1
       72 CALL                             R2 12 0
       73 RETURN                           R0 0
       74 LENGTH                           R2 R0
       75 JUMPIFNOTEQKN                    R2 K15 [1] ; [+27]
       77 GETTABLEN                        R2 R0 1
       78 LOADK                            R4 K16 ["AnimationClip"]
       79 NAMECALL                         R2 R2 K17 ["IsA"]
       81 CALL                             R2 2 1
       82 JUMPIFNOT                        R2 ; [+20]
       83 GETUPVAL                         R2 6
       84 LOADNIL                          R3
       85 GETUPVAL                         R4 7
       86 GETTABLEKS                       R4 R4 K8 ["FLOW_TYPE"]
       88 GETTABLEKS                       R4 R4 K9 ["UPLOAD_FLOW"]
       90 MOVE                             R5 R0
       91 GETIMPORT                        R6 K20 [Enum.AssetType.Animation]
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 GETUPVAL                         R9 2
       96 LOADNIL                          R10
       97 LOADNIL                          R11
       98 GETUPVAL                         R12 8
       99 GETUPVAL                         R13 9
      100 MOVE                             R14 R1
      101 CALL                             R2 12 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R2 6
      104 LOADNIL                          R3
      105 GETUPVAL                         R4 7
      106 GETTABLEKS                       R4 R4 K8 ["FLOW_TYPE"]
      108 GETTABLEKS                       R4 R4 K9 ["UPLOAD_FLOW"]
      110 MOVE                             R5 R0
      111 GETUPVAL                         R7 3
      112 CALL                             R7 0 1
      113 JUMPIFNOT                        R7 ; [+3]
      114 GETIMPORT                        R6 K22 [Enum.AssetType.Model]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R6
      118 LOADNIL                          R7
      119 GETUPVAL                         R8 1
      120 GETUPVAL                         R9 2
      121 LOADNIL                          R10
      122 LOADNIL                          R11
      123 GETUPVAL                         R12 8
      124 GETUPVAL                         R13 9
      125 MOVE                             R14 R1
      126 CALL                             R2 12 0
      127 RETURN                           R0 0

PROTO_18:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 JUMPIFNOTEQKNIL                  R4 ; [+42]
        4 GETIMPORT                        R5 K1 [game]
        6 LOADK                            R7 K2 ["MemStorageService"]
        7 NAMECALL                         R5 R5 K3 ["GetService"]
        9 CALL                             R5 2 1
       10 LOADK                            R8 K4 ["Toolbox.SaveToRobloxProgress"]
       11 NAMECALL                         R6 R5 K5 ["GetItem"]
       13 CALL                             R6 2 1
       14 FASTCALL1                        TYPE R6 ; [+3]
       15 MOVE                             R8 R6
       16 GETIMPORT                        R7 K7 [type]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K8 ["string"] ; [+25]
       21 JUMPIFEQKS                       R6 K9 [""] ; [+23]
       23 LOADK                            R9 K10 ["^(%d+),(%d+)$"]
       24 NAMECALL                         R7 R6 K11 ["match"]
       26 CALL                             R7 2 2
       27 JUMPIFNOT                        R7 ; [+13]
       28 JUMPIFNOT                        R8 ; [+12]
       29 FASTCALL1                        TONUMBER R7 ; [+3]
       30 MOVE                             R10 R7
       31 GETIMPORT                        R9 K13 [tonumber]
       33 CALL                             R9 1 1
       34 MOVE                             R3 R9
       35 FASTCALL1                        TONUMBER R8 ; [+3]
       36 MOVE                             R10 R8
       37 GETIMPORT                        R9 K13 [tonumber]
       39 CALL                             R9 1 1
       40 MOVE                             R4 R9
       41 LOADK                            R11 K4 ["Toolbox.SaveToRobloxProgress"]
       42 NAMECALL                         R9 R5 K14 ["RemoveItem"]
       44 CALL                             R9 2 0
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          REF R3
       55 CAPTURE                          REF R4
       56 GETUPVAL                         R6 5
       57 JUMPIFNOT                        R6 ; [+13]
       58 GETUPVAL                         R6 6
       59 GETUPVAL                         R8 7
       60 GETUPVAL                         R9 8
       61 CALL                             R8 1 -1
       62 NAMECALL                         R6 R6 K15 ["dispatch"]
       64 CALL                             R6 -1 1
       65 MOVE                             R8 R5
       66 MOVE                             R9 R5
       67 NAMECALL                         R6 R6 K16 ["andThen"]
       69 CALL                             R6 3 0
       70 JUMP                             ; [+12]
       71 GETUPVAL                         R6 6
       72 GETUPVAL                         R8 9
       73 GETUPVAL                         R9 8
       74 CALL                             R8 1 -1
       75 NAMECALL                         R6 R6 K15 ["dispatch"]
       77 CALL                             R6 -1 1
       78 MOVE                             R8 R5
       79 MOVE                             R9 R5
       80 NAMECALL                         R6 R6 K16 ["andThen"]
       82 CALL                             R6 3 0
       83 CLOSEUPVALS                      R3
       84 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["FLOW_TYPE"]
        5 GETTABLEKS                       R4 R4 K1 ["EDIT_FLOW"]
        7 LOADNIL                          R5
        8 GETIMPORT                        R6 K5 [Enum.AssetType.Model]
       10 CALL                             R2 4 0
       11 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
      148 GETUPVAL                         R14 19
      149 GETTABLEKS                       R14 R14 K29 ["signals"]
      151 GETTABLEKS                       R13 R14 K28 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      153 NEWCLOSURE                       R15 P3
      154 CAPTURE                          UPVAL U26
      155 CAPTURE                          UPVAL U16
      156 CAPTURE                          UPVAL U27
      157 CAPTURE                          UPVAL U28
      158 CAPTURE                          UPVAL U15
      159 CAPTURE                          UPVAL U20
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          UPVAL U21
      162 CAPTURE                          VAL R4
      163 CAPTURE                          UPVAL U22
      164 NAMECALL                         R13 R13 K30 ["Connect"]
      166 CALL                             R13 2 0
      167 GETUPVAL                         R14 19
      168 GETTABLEKS                       R14 R14 K29 ["signals"]
      170 GETTABLEKS                       R13 R14 K31 ["StudioAssetService.OnSaveToRoblox"]
      172 NEWCLOSURE                       R15 P4
      173 CAPTURE                          UPVAL U26
      174 CAPTURE                          UPVAL U29
      175 CAPTURE                          UPVAL U30
      176 CAPTURE                          UPVAL U15
      177 CAPTURE                          UPVAL U16
      178 CAPTURE                          UPVAL U20
      179 CAPTURE                          UPVAL U0
      180 CAPTURE                          UPVAL U21
      181 CAPTURE                          VAL R4
      182 CAPTURE                          UPVAL U22
      183 NAMECALL                         R13 R13 K30 ["Connect"]
      185 CALL                             R13 2 0
      186 GETUPVAL                         R14 19
      187 GETTABLEKS                       R14 R14 K29 ["signals"]
      189 GETTABLEKS                       R13 R14 K32 ["StudioService.OnImportFromRoblox"]
      191 NEWCLOSURE                       R15 P5
      192 CAPTURE                          UPVAL U15
      193 CAPTURE                          UPVAL U16
      194 CAPTURE                          UPVAL U31
      195 NAMECALL                         R13 R13 K30 ["Connect"]
      197 CALL                             R13 2 0
      198 GETUPVAL                         R14 19
      199 GETTABLEKS                       R14 R14 K29 ["signals"]
      201 GETTABLEKS                       R13 R14 K33 ["StudioService.OnOpenManagePackagePlugin"]
      203 NEWCLOSURE                       R15 P6
      204 CAPTURE                          UPVAL U15
      205 CAPTURE                          UPVAL U16
      206 NAMECALL                         R13 R13 K30 ["Connect"]
      208 CALL                             R13 2 0
      209 GETUPVAL                         R14 19
      210 GETTABLEKS                       R14 R14 K29 ["signals"]
      212 GETTABLEKS                       R13 R14 K34 ["StudioService.OnPublishAsPlugin"]
      214 NEWCLOSURE                       R15 P7
      215 CAPTURE                          UPVAL U15
      216 CAPTURE                          UPVAL U16
      217 CAPTURE                          UPVAL U26
      218 CAPTURE                          UPVAL U20
      219 CAPTURE                          UPVAL U0
      220 CAPTURE                          UPVAL U21
      221 CAPTURE                          VAL R4
      222 CAPTURE                          UPVAL U22
      223 NAMECALL                         R13 R13 K30 ["Connect"]
      225 CALL                             R13 2 0
      226 GETUPVAL                         R14 19
      227 GETTABLEKS                       R14 R14 K29 ["signals"]
      229 GETTABLEKS                       R13 R14 K35 ["MemStorageService.OpenAssetConfiguration"]
      231 NEWCLOSURE                       R15 P8
      232 CAPTURE                          UPVAL U32
      233 CAPTURE                          UPVAL U15
      234 CAPTURE                          UPVAL U16
      235 NAMECALL                         R13 R13 K30 ["Connect"]
      237 CALL                             R13 2 0
      238 GETUPVAL                         R13 30
      239 GETTABLEKS                       R13 R13 K36 ["registerLocalization"]
      241 GETUPVAL                         R14 25
      242 CALL                             R13 1 0
      243 GETUPVAL                         R13 30
      244 GETTABLEKS                       R13 R13 K37 ["registerProcessDragHandler"]
      246 GETUPVAL                         R14 6
      247 CALL                             R13 1 0
      248 CLOSEUPVALS                      R7
      249 RETURN                           R0 0

PROTO_25:
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
       42 GETTABLEKS                       R9 R9 K15 ["getFFlagToolboxAssetConfigGroupOwnership"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K13 [require]
       47 GETTABLEKS                       R10 R2 K3 ["Src"]
       49 GETTABLEKS                       R10 R10 K14 ["Flags"]
       51 GETTABLEKS                       R10 R10 K16 ["getFFlagToolboxAssetConfigSaveDefaults"]
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
       71 GETTABLEKS                       R12 R12 K19 ["getEngineFeatureToolboxPassThroughAssetType"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K13 [require]
       76 GETTABLEKS                       R13 R2 K3 ["Src"]
       78 GETTABLEKS                       R13 R13 K14 ["Flags"]
       80 GETTABLEKS                       R13 R13 K20 ["getFFlagToolboxPublishAnimationGraphSubType"]
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
      120 JUMPIFNOT                        R4 ; [+4]
      121 GETTABLEKS                       R20 R17 K30 ["setGlobalConfig"]
      123 DUPTABLE                         R21 K35 [{["elementTracing"] = True, ["propValidation"] = True, ["typeChecks"] = True}]
      124 CALL                             R20 1 0
      125 GETIMPORT                        R20 K13 [require]
      127 GETTABLEKS                       R21 R16 K36 ["Rodux"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K13 [require]
      132 GETTABLEKS                       R22 R3 K37 ["InsertAsset"]
      134 CALL                             R21 1 1
      135 GETIMPORT                        R22 K13 [require]
      137 GETTABLEKS                       R23 R3 K38 ["Analytics"]
      139 GETTABLEKS                       R23 R23 K39 ["AssetAnalyticsContextItem"]
      141 CALL                             R22 1 1
      142 GETIMPORT                        R23 K13 [require]
      144 GETTABLEKS                       R24 R3 K40 ["DebugFlags"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K13 [require]
      149 GETTABLEKS                       R25 R3 K41 ["Settings"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K13 [require]
      154 GETTABLEKS                       R26 R3 K42 ["ToolboxTheme"]
      156 CALL                             R25 1 1
      157 GETIMPORT                        R26 K13 [require]
      159 GETTABLEKS                       R27 R3 K43 ["AssetConfigTheme"]
      161 CALL                             R26 1 1
      162 GETIMPORT                        R27 K13 [require]
      164 GETTABLEKS                       R28 R3 K44 ["AssetConfigConstants"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K13 [require]
      169 GETTABLEKS                       R29 R3 K45 ["AssetConfigUtil"]
      171 CALL                             R28 1 1
      172 GETIMPORT                        R29 K13 [require]
      174 GETTABLEKS                       R30 R3 K38 ["Analytics"]
      176 GETTABLEKS                       R30 R30 K46 ["makeToolboxAnalyticsContext"]
      178 CALL                             R29 1 1
      179 GETIMPORT                        R30 K13 [require]
      181 GETTABLEKS                       R31 R2 K3 ["Src"]
      183 GETTABLEKS                       R31 R31 K47 ["ContextServices"]
      185 GETTABLEKS                       R31 R31 K48 ["IXPContext"]
      187 CALL                             R30 1 1
      188 GETTABLEKS                       R31 R23 K49 ["shouldDebugWarnings"]
      190 CALL                             R31 0 1
      191 JUMPIFNOT                        R31 ; [+13]
      192 GETIMPORT                        R31 K13 [require]
      194 GETTABLEKS                       R32 R16 K27 ["Framework"]
      196 CALL                             R31 1 1
      197 GETTABLEKS                       R31 R31 K4 ["Util"]
      199 GETTABLEKS                       R31 R31 K50 ["Promise"]
      201 GETIMPORT                        R32 K52 [warn]
      203 SETTABLEKS                       R32 R31 K53 ["onUnhandledRejection"]
      205 GETIMPORT                        R31 K13 [require]
      207 GETTABLEKS                       R32 R2 K3 ["Src"]
      209 GETTABLEKS                       R32 R32 K54 ["Types"]
      211 GETTABLEKS                       R32 R32 K55 ["Background"]
      213 CALL                             R31 1 1
      214 GETIMPORT                        R32 K13 [require]
      216 GETTABLEKS                       R33 R2 K3 ["Src"]
      218 GETTABLEKS                       R33 R33 K54 ["Types"]
      220 GETTABLEKS                       R33 R33 K56 ["Suggestion"]
      222 CALL                             R32 1 1
      223 GETIMPORT                        R33 K13 [require]
      225 GETTABLEKS                       R34 R2 K3 ["Src"]
      227 GETTABLEKS                       R34 R34 K54 ["Types"]
      229 GETTABLEKS                       R34 R34 K57 ["ConfigTypes"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K13 [require]
      234 GETTABLEKS                       R35 R2 K3 ["Src"]
      236 GETTABLEKS                       R35 R35 K58 ["Components"]
      238 GETTABLEKS                       R35 R35 K59 ["ToolboxPlugin"]
      240 CALL                             R34 1 1
      241 GETIMPORT                        R35 K13 [require]
      243 GETTABLEKS                       R36 R2 K3 ["Src"]
      245 GETTABLEKS                       R36 R36 K4 ["Util"]
      247 GETTABLEKS                       R36 R36 K60 ["ToolboxUtilities"]
      249 CALL                             R35 1 1
      250 GETTABLEKS                       R35 R35 K61 ["getToolboxEnabled"]
      252 GETIMPORT                        R36 K13 [require]
      254 GETTABLEKS                       R37 R2 K3 ["Src"]
      256 GETTABLEKS                       R37 R37 K4 ["Util"]
      258 GETTABLEKS                       R37 R37 K62 ["ToolboxCommunication"]
      260 CALL                             R36 1 1
      261 GETIMPORT                        R37 K13 [require]
      263 GETTABLEKS                       R38 R2 K3 ["Src"]
      265 GETTABLEKS                       R38 R38 K63 ["Reducers"]
      267 GETTABLEKS                       R38 R38 K64 ["ToolboxReducer"]
      269 CALL                             R37 1 1
      270 GETIMPORT                        R38 K13 [require]
      272 GETTABLEKS                       R39 R2 K3 ["Src"]
      274 GETTABLEKS                       R39 R39 K63 ["Reducers"]
      276 GETTABLEKS                       R39 R39 K65 ["AssetConfigReducer"]
      278 CALL                             R38 1 1
      279 GETIMPORT                        R39 K13 [require]
      281 GETTABLEKS                       R40 R2 K3 ["Src"]
      283 GETTABLEKS                       R40 R40 K66 ["Networking"]
      285 GETTABLEKS                       R40 R40 K67 ["NetworkInterface"]
      287 CALL                             R39 1 1
      288 GETIMPORT                        R40 K13 [require]
      290 GETTABLEKS                       R41 R2 K3 ["Src"]
      292 GETTABLEKS                       R41 R41 K58 ["Components"]
      294 GETTABLEKS                       R41 R41 K68 ["AssetConfiguration"]
      296 GETTABLEKS                       R41 R41 K69 ["AssetConfigWrapper"]
      298 CALL                             R40 1 1
      299 GETIMPORT                        R41 K13 [require]
      301 GETTABLEKS                       R42 R2 K3 ["Src"]
      303 GETTABLEKS                       R42 R42 K58 ["Components"]
      305 GETTABLEKS                       R42 R42 K70 ["ToolboxServiceWrapper"]
      307 CALL                             R41 1 1
      308 GETIMPORT                        R42 K13 [require]
      310 GETTABLEKS                       R43 R2 K3 ["Src"]
      312 GETTABLEKS                       R43 R43 K66 ["Networking"]
      314 GETTABLEKS                       R43 R43 K71 ["Requests"]
      316 GETTABLEKS                       R43 R43 K72 ["GetRolesRequest"]
      318 CALL                             R42 1 1
      319 GETIMPORT                        R43 K13 [require]
      321 GETTABLEKS                       R44 R2 K3 ["Src"]
      323 GETTABLEKS                       R44 R44 K66 ["Networking"]
      325 GETTABLEKS                       R44 R44 K71 ["Requests"]
      327 GETTABLEKS                       R44 R44 K73 ["GetRolesDebugRequest"]
      329 CALL                             R43 1 1
      330 GETTABLEKS                       R44 R18 K47 ["ContextServices"]
      332 GETTABLEKS                       R45 R18 K4 ["Util"]
      334 GETTABLEKS                       R45 R45 K74 ["ThunkWithArgsMiddleware"]
      336 GETIMPORT                        R46 K13 [require]
      338 GETTABLEKS                       R47 R16 K75 ["Dash"]
      340 CALL                             R46 1 1
      341 GETTABLEKS                       R47 R46 K76 ["find"]
      343 GETTABLEKS                       R48 R2 K77 ["Resources"]
      345 GETTABLEKS                       R48 R48 K78 ["Localization"]
      347 GETTABLEKS                       R48 R48 K79 ["SourceStrings"]
      349 GETTABLEKS                       R49 R2 K77 ["Resources"]
      351 GETTABLEKS                       R49 R49 K78 ["Localization"]
      353 GETTABLEKS                       R49 R49 K80 ["LocalizedStrings"]
      355 GETIMPORT                        R50 K6 [game]
      357 LOADK                            R52 K81 ["HttpService"]
      358 NAMECALL                         R50 R50 K23 ["GetService"]
      360 CALL                             R50 2 1
      361 GETIMPORT                        R51 K6 [game]
      363 LOADK                            R53 K82 ["RobloxPluginGuiService"]
      364 NAMECALL                         R51 R51 K23 ["GetService"]
      366 CALL                             R51 2 1
      367 GETIMPORT                        R52 K6 [game]
      369 LOADK                            R54 K83 ["StudioAssetService"]
      370 NAMECALL                         R52 R52 K23 ["GetService"]
      372 CALL                             R52 2 1
      373 MOVE                             R53 R35
      374 CALL                             R53 0 1
      375 JUMPIF                           R53 ; [+1]
      376 RETURN                           R0 0
      377 GETTABLEKS                       R53 R44 K78 ["Localization"]
      379 GETTABLEKS                       R53 R53 K84 ["new"]
      381 DUPTABLE                         R54 K90 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Toolbox", ["libraries"]}]
      382 SETTABLEKS                       R48 R54 K85 ["stringResourceTable"]
      384 SETTABLEKS                       R49 R54 K86 ["translationResourceTable"]
      386 NEWTABLE                         R55 1 0
      388 GETTABLEKS                       R56 R18 K77 ["Resources"]
      390 GETTABLEKS                       R56 R56 K91 ["LOCALIZATION_PROJECT_NAME"]
      392 DUPTABLE                         R57 K92 [{"stringResourceTable", "translationResourceTable"}]
      393 GETTABLEKS                       R58 R18 K77 ["Resources"]
      395 GETTABLEKS                       R58 R58 K79 ["SourceStrings"]
      397 SETTABLEKS                       R58 R57 K85 ["stringResourceTable"]
      399 GETTABLEKS                       R58 R18 K77 ["Resources"]
      401 GETTABLEKS                       R58 R58 K80 ["LocalizedStrings"]
      403 SETTABLEKS                       R58 R57 K86 ["translationResourceTable"]
      405 SETTABLE                         R57 R55 R56
      406 SETTABLEKS                       R55 R54 K89 ["libraries"]
      408 CALL                             R53 1 1
      409 NEWCLOSURE                       R54 P0
      410 CAPTURE                          VAL R25
      411 NEWCLOSURE                       R55 P1
      412 CAPTURE                          VAL R26
      413 LOADNIL                          R56
      414 LOADNIL                          R57
      415 NEWCLOSURE                       R58 P2
      416 CAPTURE                          REF R57
      417 CAPTURE                          REF R56
      418 CAPTURE                          VAL R47
      419 CAPTURE                          VAL R28
      420 CAPTURE                          VAL R33
      421 CAPTURE                          VAL R27
      422 CAPTURE                          VAL R45
      423 CAPTURE                          VAL R52
      424 CAPTURE                          VAL R20
      425 CAPTURE                          VAL R38
      426 CAPTURE                          VAL R6
      427 CAPTURE                          VAL R7
      428 CAPTURE                          VAL R11
      429 CAPTURE                          VAL R10
      430 CAPTURE                          VAL R8
      431 CAPTURE                          VAL R9
      432 CAPTURE                          VAL R55
      433 CAPTURE                          VAL R39
      434 CAPTURE                          VAL R51
      435 CAPTURE                          VAL R17
      436 CAPTURE                          VAL R14
      437 CAPTURE                          VAL R30
      438 CAPTURE                          VAL R40
      439 CAPTURE                          VAL R0
      440 CAPTURE                          VAL R41
      441 CAPTURE                          VAL R53
      442 NEWCLOSURE                       R59 P3
      443 CAPTURE                          REF R56
      444 CAPTURE                          VAL R20
      445 CAPTURE                          VAL R37
      446 CAPTURE                          VAL R22
      447 CAPTURE                          VAL R29
      448 CAPTURE                          VAL R24
      449 CAPTURE                          VAL R0
      450 CAPTURE                          VAL R54
      451 CAPTURE                          VAL R39
      452 CAPTURE                          VAL R31
      453 CAPTURE                          VAL R32
      454 CAPTURE                          VAL R15
      455 CAPTURE                          VAL R19
      456 CAPTURE                          VAL R17
      457 CAPTURE                          VAL R36
      458 CAPTURE                          VAL R58
      459 CAPTURE                          VAL R27
      460 CAPTURE                          VAL R33
      461 CAPTURE                          VAL R34
      462 CAPTURE                          VAL R1
      463 CAPTURE                          VAL R5
      464 CAPTURE                          VAL R43
      465 CAPTURE                          VAL R42
      466 CAPTURE                          VAL R30
      467 CAPTURE                          VAL R41
      468 CAPTURE                          VAL R53
      469 CAPTURE                          VAL R28
      470 CAPTURE                          VAL R12
      471 CAPTURE                          VAL R52
      472 CAPTURE                          VAL R9
      473 CAPTURE                          VAL R21
      474 CAPTURE                          VAL R11
      475 CAPTURE                          VAL R50
      476 MOVE                             R60 R59
      477 CALL                             R60 0 0
      478 CLOSEUPVALS                      R56
      479 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_25]
        2 RETURN                           R0 1
