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
      115 DUPTABLE                         R25 K43 [{["assetId"], ["assetMediaIds"], ["screenFlowType"], ["currentScreen"], ["instances"], ["sourceInstances"], ["allowedAssetTypesForRelease"], ["allowedAssetTypesForUpload"], ["allowedAssetTypesForFree"], ["allowedBundleTypeSettings"], ["idToFiatProductMap"], ["rollingAssetPermissionRequests"], ["assetTypeEnum"], ["assetSubType"], ["currentTab"], ["packagePermissions"], ["overrideCursor"], ["deleteLocal"] = False, ["animationSectionValid"] = True, ["hasSubsequent"], ["avatarAssetCurrentIndex"], ["avatarAssetTotalCount"], ["sellerStatusData"], ["groupBundlesUploadEnabledForUser"]}]
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
      147 DUPTABLE                         R26 K46 [{"inProgress", "queued"}]
      148 NEWTABLE                         R27 0 0
      150 SETTABLEKS                       R27 R26 K44 ["inProgress"]
      152 NEWTABLE                         R27 0 0
      154 SETTABLEKS                       R27 R26 K45 ["queued"]
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
      193 MOVE                             R26 R22
      194 CALL                             R23 3 1
      195 GETUPVAL                         R24 14
      196 CALL                             R24 0 1
      197 GETUPVAL                         R25 15
      198 GETTABLEKS                       R25 R25 K21 ["new"]
      200 CALL                             R25 0 1
      201 NEWCLOSURE                       R26 P1
      202 CAPTURE                          UPVAL U0
      203 CAPTURE                          UPVAL U16
      204 CAPTURE                          UPVAL U17
      205 CAPTURE                          UPVAL U18
      206 CAPTURE                          VAL R8
      207 GETUPVAL                         R28 11
      208 JUMPIFNOT                        R28 ; [+5]
      209 GETUPVAL                         R27 19
      210 GETTABLEKS                       R27 R27 K21 ["new"]
      212 CALL                             R27 0 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R27
      215 GETUPVAL                         R28 17
      216 GETTABLEKS                       R28 R28 K47 ["createElement"]
      218 GETUPVAL                         R29 20
      219 DUPTABLE                         R30 K54 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      220 SETTABLEKS                       R0 R30 K22 ["assetId"]
      222 SETTABLEKS                       R3 R30 K30 ["assetTypeEnum"]
      224 GETUPVAL                         R32 21
      225 CALL                             R32 0 1
      226 JUMPIFNOT                        R32 ; [+2]
      227 MOVE                             R31 R11
      228 JUMP                             ; [+1]
      229 LOADNIL                          R31
      230 SETTABLEKS                       R31 R30 K48 ["groupId"]
      232 GETUPVAL                         R31 22
      233 SETTABLEKS                       R31 R30 K49 ["plugin"]
      235 SETTABLEKS                       R23 R30 K50 ["store"]
      237 SETTABLEKS                       R24 R30 K51 ["theme"]
      239 SETTABLEKS                       R25 R30 K52 ["networkInterface"]
      241 SETTABLEKS                       R26 R30 K53 ["onAssetConfigDestroy"]
      243 CALL                             R28 2 1
      244 GETUPVAL                         R29 17
      245 GETTABLEKS                       R29 R29 K47 ["createElement"]
      247 GETUPVAL                         R30 23
      248 DUPTABLE                         R31 K58 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      249 GETUPVAL                         R33 11
      250 JUMPIFNOT                        R33 ; [+2]
      251 MOVE                             R32 R27
      252 JUMP                             ; [+1]
      253 LOADNIL                          R32
      254 SETTABLEKS                       R32 R31 K55 ["ixp"]
      256 GETUPVAL                         R32 24
      257 SETTABLEKS                       R32 R31 K56 ["localization"]
      259 GETUPVAL                         R32 22
      260 SETTABLEKS                       R32 R31 K49 ["plugin"]
      262 SETTABLEKS                       R24 R31 K51 ["theme"]
      264 SETTABLEKS                       R23 R31 K50 ["store"]
      266 GETIMPORT                        R32 K59 [settings]
      268 SETTABLEKS                       R32 R31 K57 ["settings"]
      270 NEWTABLE                         R32 0 1
      272 MOVE                             R33 R28
      273 SETLIST                          R32 R33 1 [1]
      275 CALL                             R29 3 1
      276 GETUPVAL                         R30 17
      277 GETTABLEKS                       R30 R30 K60 ["mount"]
      279 MOVE                             R31 R29
      280 CALL                             R30 1 1
      281 SETUPVAL                         R30 0
      282 RETURN                           R23 1

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

PROTO_16:
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
       14 GETUPVAL                         R1 3
       15 JUMPIFEQKNIL                     R1 ; [+42]
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
       53 GETUPVAL                         R11 6
       54 GETUPVAL                         R12 7
       55 LOADNIL                          R13
       56 CALL                             R1 12 0
       57 RETURN                           R0 0
       58 LENGTH                           R1 R0
       59 JUMPIFNOTEQKN                    R1 K10 [1] ; [+27]
       61 GETTABLEN                        R1 R0 1
       62 LOADK                            R3 K11 ["AnimationClip"]
       63 NAMECALL                         R1 R1 K12 ["IsA"]
       65 CALL                             R1 2 1
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETUPVAL                         R1 4
       68 LOADNIL                          R2
       69 GETUPVAL                         R3 5
       70 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
       72 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
       74 MOVE                             R4 R0
       75 GETIMPORT                        R5 K16 [Enum.AssetType.Animation]
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 GETUPVAL                         R8 2
       80 LOADNIL                          R9
       81 LOADNIL                          R10
       82 GETUPVAL                         R11 6
       83 GETUPVAL                         R12 7
       84 LOADNIL                          R13
       85 CALL                             R1 12 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R1 4
       88 LOADNIL                          R2
       89 GETUPVAL                         R3 5
       90 GETTABLEKS                       R3 R3 K3 ["FLOW_TYPE"]
       92 GETTABLEKS                       R3 R3 K4 ["UPLOAD_FLOW"]
       94 MOVE                             R4 R0
       95 LOADNIL                          R5
       96 LOADNIL                          R6
       97 GETUPVAL                         R7 1
       98 GETUPVAL                         R8 2
       99 LOADNIL                          R9
      100 LOADNIL                          R10
      101 GETUPVAL                         R11 6
      102 GETUPVAL                         R12 7
      103 LOADNIL                          R13
      104 CALL                             R1 12 0
      105 RETURN                           R0 0

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
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          REF R3
       53 CAPTURE                          REF R4
       54 GETUPVAL                         R6 3
       55 JUMPIFNOT                        R6 ; [+13]
       56 GETUPVAL                         R6 4
       57 GETUPVAL                         R8 5
       58 GETUPVAL                         R9 6
       59 CALL                             R8 1 -1
       60 NAMECALL                         R6 R6 K15 ["dispatch"]
       62 CALL                             R6 -1 1
       63 MOVE                             R8 R5
       64 MOVE                             R9 R5
       65 NAMECALL                         R6 R6 K16 ["andThen"]
       67 CALL                             R6 3 0
       68 JUMP                             ; [+12]
       69 GETUPVAL                         R6 4
       70 GETUPVAL                         R8 7
       71 GETUPVAL                         R9 6
       72 CALL                             R8 1 -1
       73 NAMECALL                         R6 R6 K15 ["dispatch"]
       75 CALL                             R6 -1 1
       76 MOVE                             R8 R5
       77 MOVE                             R9 R5
       78 NAMECALL                         R6 R6 K16 ["andThen"]
       80 CALL                             R6 3 0
       81 CLOSEUPVALS                      R3
       82 RETURN                           R0 0

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
      157 CAPTURE                          UPVAL U15
      158 CAPTURE                          UPVAL U20
      159 CAPTURE                          UPVAL U0
      160 CAPTURE                          UPVAL U21
      161 CAPTURE                          VAL R4
      162 CAPTURE                          UPVAL U22
      163 NAMECALL                         R13 R13 K30 ["Connect"]
      165 CALL                             R13 2 0
      166 GETUPVAL                         R14 19
      167 GETTABLEKS                       R14 R14 K29 ["signals"]
      169 GETTABLEKS                       R13 R14 K31 ["StudioAssetService.OnSaveToRoblox"]
      171 NEWCLOSURE                       R15 P4
      172 CAPTURE                          UPVAL U26
      173 CAPTURE                          UPVAL U15
      174 CAPTURE                          UPVAL U16
      175 CAPTURE                          UPVAL U20
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          UPVAL U21
      178 CAPTURE                          VAL R4
      179 CAPTURE                          UPVAL U22
      180 NAMECALL                         R13 R13 K30 ["Connect"]
      182 CALL                             R13 2 0
      183 GETUPVAL                         R14 19
      184 GETTABLEKS                       R14 R14 K29 ["signals"]
      186 GETTABLEKS                       R13 R14 K32 ["StudioService.OnImportFromRoblox"]
      188 NEWCLOSURE                       R15 P5
      189 CAPTURE                          UPVAL U15
      190 CAPTURE                          UPVAL U16
      191 CAPTURE                          UPVAL U28
      192 NAMECALL                         R13 R13 K30 ["Connect"]
      194 CALL                             R13 2 0
      195 GETUPVAL                         R14 19
      196 GETTABLEKS                       R14 R14 K29 ["signals"]
      198 GETTABLEKS                       R13 R14 K33 ["StudioService.OnOpenManagePackagePlugin"]
      200 NEWCLOSURE                       R15 P6
      201 CAPTURE                          UPVAL U15
      202 CAPTURE                          UPVAL U16
      203 NAMECALL                         R13 R13 K30 ["Connect"]
      205 CALL                             R13 2 0
      206 GETUPVAL                         R14 19
      207 GETTABLEKS                       R14 R14 K29 ["signals"]
      209 GETTABLEKS                       R13 R14 K34 ["StudioService.OnPublishAsPlugin"]
      211 NEWCLOSURE                       R15 P7
      212 CAPTURE                          UPVAL U15
      213 CAPTURE                          UPVAL U16
      214 CAPTURE                          UPVAL U26
      215 CAPTURE                          UPVAL U20
      216 CAPTURE                          UPVAL U0
      217 CAPTURE                          UPVAL U21
      218 CAPTURE                          VAL R4
      219 CAPTURE                          UPVAL U22
      220 NAMECALL                         R13 R13 K30 ["Connect"]
      222 CALL                             R13 2 0
      223 GETUPVAL                         R14 19
      224 GETTABLEKS                       R14 R14 K29 ["signals"]
      226 GETTABLEKS                       R13 R14 K35 ["MemStorageService.OpenAssetConfiguration"]
      228 NEWCLOSURE                       R15 P8
      229 CAPTURE                          UPVAL U29
      230 CAPTURE                          UPVAL U15
      231 CAPTURE                          UPVAL U16
      232 NAMECALL                         R13 R13 K30 ["Connect"]
      234 CALL                             R13 2 0
      235 GETUPVAL                         R13 30
      236 GETTABLEKS                       R13 R13 K36 ["registerLocalization"]
      238 GETUPVAL                         R14 25
      239 CALL                             R13 1 0
      240 GETUPVAL                         R13 30
      241 GETTABLEKS                       R13 R13 K37 ["registerProcessDragHandler"]
      243 GETUPVAL                         R14 6
      244 CALL                             R13 1 0
      245 CLOSEUPVALS                      R7
      246 RETURN                           R0 0

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
       49 GETTABLEKS                       R10 R10 K4 ["Util"]
       51 GETTABLEKS                       R10 R10 K16 ["SharedFlags"]
       53 GETTABLEKS                       R10 R10 K17 ["getFFlagToolboxAssetConfigOnboardingLink"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K13 [require]
       58 GETTABLEKS                       R11 R2 K3 ["Src"]
       60 GETTABLEKS                       R11 R11 K14 ["Flags"]
       62 GETTABLEKS                       R11 R11 K18 ["getEngineFeatureToolboxPassThroughAssetType"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K13 [require]
       67 GETTABLEKS                       R12 R3 K19 ["isCli"]
       69 CALL                             R11 1 1
       70 MOVE                             R12 R11
       71 CALL                             R12 0 1
       72 JUMPIFNOT                        R12 ; [+1]
       73 RETURN                           R0 0
       74 GETIMPORT                        R12 K6 [game]
       76 LOADK                            R14 K20 ["StudioService"]
       77 NAMECALL                         R12 R12 K21 ["GetService"]
       79 CALL                             R12 2 1
       80 NAMECALL                         R13 R12 K22 ["HasInternalPermission"]
       82 CALL                             R13 1 1
       83 GETTABLEKS                       R14 R2 K23 ["Packages"]
       85 GETIMPORT                        R15 K13 [require]
       87 GETTABLEKS                       R16 R14 K24 ["Roact"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K13 [require]
       92 GETTABLEKS                       R17 R14 K25 ["Framework"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K13 [require]
       97 GETTABLEKS                       R18 R14 K26 ["Dev"]
       99 GETTABLEKS                       R18 R18 K27 ["DeveloperTools"]
      101 CALL                             R17 1 1
      102 JUMPIFNOT                        R4 ; [+4]
      103 GETTABLEKS                       R18 R15 K28 ["setGlobalConfig"]
      105 DUPTABLE                         R19 K33 [{["elementTracing"] = True, ["propValidation"] = True, ["typeChecks"] = True}]
      106 CALL                             R18 1 0
      107 GETIMPORT                        R18 K13 [require]
      109 GETTABLEKS                       R19 R14 K34 ["Rodux"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K13 [require]
      114 GETTABLEKS                       R20 R3 K35 ["InsertAsset"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K13 [require]
      119 GETTABLEKS                       R21 R3 K36 ["Analytics"]
      121 GETTABLEKS                       R21 R21 K37 ["AssetAnalyticsContextItem"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K13 [require]
      126 GETTABLEKS                       R22 R3 K38 ["DebugFlags"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K13 [require]
      131 GETTABLEKS                       R23 R3 K39 ["Settings"]
      133 CALL                             R22 1 1
      134 GETIMPORT                        R23 K13 [require]
      136 GETTABLEKS                       R24 R3 K40 ["ToolboxTheme"]
      138 CALL                             R23 1 1
      139 GETIMPORT                        R24 K13 [require]
      141 GETTABLEKS                       R25 R3 K41 ["AssetConfigTheme"]
      143 CALL                             R24 1 1
      144 GETIMPORT                        R25 K13 [require]
      146 GETTABLEKS                       R26 R3 K42 ["AssetConfigConstants"]
      148 CALL                             R25 1 1
      149 GETIMPORT                        R26 K13 [require]
      151 GETTABLEKS                       R27 R3 K43 ["AssetConfigUtil"]
      153 CALL                             R26 1 1
      154 GETIMPORT                        R27 K13 [require]
      156 GETTABLEKS                       R28 R3 K36 ["Analytics"]
      158 GETTABLEKS                       R28 R28 K44 ["makeToolboxAnalyticsContext"]
      160 CALL                             R27 1 1
      161 GETIMPORT                        R28 K13 [require]
      163 GETTABLEKS                       R29 R2 K3 ["Src"]
      165 GETTABLEKS                       R29 R29 K45 ["ContextServices"]
      167 GETTABLEKS                       R29 R29 K46 ["IXPContext"]
      169 CALL                             R28 1 1
      170 GETTABLEKS                       R29 R21 K47 ["shouldDebugWarnings"]
      172 CALL                             R29 0 1
      173 JUMPIFNOT                        R29 ; [+13]
      174 GETIMPORT                        R29 K13 [require]
      176 GETTABLEKS                       R30 R14 K25 ["Framework"]
      178 CALL                             R29 1 1
      179 GETTABLEKS                       R29 R29 K4 ["Util"]
      181 GETTABLEKS                       R29 R29 K48 ["Promise"]
      183 GETIMPORT                        R30 K50 [warn]
      185 SETTABLEKS                       R30 R29 K51 ["onUnhandledRejection"]
      187 GETIMPORT                        R29 K13 [require]
      189 GETTABLEKS                       R30 R2 K3 ["Src"]
      191 GETTABLEKS                       R30 R30 K52 ["Types"]
      193 GETTABLEKS                       R30 R30 K53 ["Background"]
      195 CALL                             R29 1 1
      196 GETIMPORT                        R30 K13 [require]
      198 GETTABLEKS                       R31 R2 K3 ["Src"]
      200 GETTABLEKS                       R31 R31 K52 ["Types"]
      202 GETTABLEKS                       R31 R31 K54 ["Suggestion"]
      204 CALL                             R30 1 1
      205 GETIMPORT                        R31 K13 [require]
      207 GETTABLEKS                       R32 R2 K3 ["Src"]
      209 GETTABLEKS                       R32 R32 K52 ["Types"]
      211 GETTABLEKS                       R32 R32 K55 ["ConfigTypes"]
      213 CALL                             R31 1 1
      214 GETIMPORT                        R32 K13 [require]
      216 GETTABLEKS                       R33 R2 K3 ["Src"]
      218 GETTABLEKS                       R33 R33 K56 ["Components"]
      220 GETTABLEKS                       R33 R33 K57 ["ToolboxPlugin"]
      222 CALL                             R32 1 1
      223 GETIMPORT                        R33 K13 [require]
      225 GETTABLEKS                       R34 R2 K3 ["Src"]
      227 GETTABLEKS                       R34 R34 K4 ["Util"]
      229 GETTABLEKS                       R34 R34 K58 ["ToolboxUtilities"]
      231 CALL                             R33 1 1
      232 GETTABLEKS                       R33 R33 K59 ["getToolboxEnabled"]
      234 GETIMPORT                        R34 K13 [require]
      236 GETTABLEKS                       R35 R2 K3 ["Src"]
      238 GETTABLEKS                       R35 R35 K4 ["Util"]
      240 GETTABLEKS                       R35 R35 K60 ["ToolboxCommunication"]
      242 CALL                             R34 1 1
      243 GETIMPORT                        R35 K13 [require]
      245 GETTABLEKS                       R36 R2 K3 ["Src"]
      247 GETTABLEKS                       R36 R36 K61 ["Reducers"]
      249 GETTABLEKS                       R36 R36 K62 ["ToolboxReducer"]
      251 CALL                             R35 1 1
      252 GETIMPORT                        R36 K13 [require]
      254 GETTABLEKS                       R37 R2 K3 ["Src"]
      256 GETTABLEKS                       R37 R37 K61 ["Reducers"]
      258 GETTABLEKS                       R37 R37 K63 ["AssetConfigReducer"]
      260 CALL                             R36 1 1
      261 GETIMPORT                        R37 K13 [require]
      263 GETTABLEKS                       R38 R2 K3 ["Src"]
      265 GETTABLEKS                       R38 R38 K64 ["Networking"]
      267 GETTABLEKS                       R38 R38 K65 ["NetworkInterface"]
      269 CALL                             R37 1 1
      270 GETIMPORT                        R38 K13 [require]
      272 GETTABLEKS                       R39 R2 K3 ["Src"]
      274 GETTABLEKS                       R39 R39 K56 ["Components"]
      276 GETTABLEKS                       R39 R39 K66 ["AssetConfiguration"]
      278 GETTABLEKS                       R39 R39 K67 ["AssetConfigWrapper"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K13 [require]
      283 GETTABLEKS                       R40 R2 K3 ["Src"]
      285 GETTABLEKS                       R40 R40 K56 ["Components"]
      287 GETTABLEKS                       R40 R40 K68 ["ToolboxServiceWrapper"]
      289 CALL                             R39 1 1
      290 GETIMPORT                        R40 K13 [require]
      292 GETTABLEKS                       R41 R2 K3 ["Src"]
      294 GETTABLEKS                       R41 R41 K64 ["Networking"]
      296 GETTABLEKS                       R41 R41 K69 ["Requests"]
      298 GETTABLEKS                       R41 R41 K70 ["GetRolesRequest"]
      300 CALL                             R40 1 1
      301 GETIMPORT                        R41 K13 [require]
      303 GETTABLEKS                       R42 R2 K3 ["Src"]
      305 GETTABLEKS                       R42 R42 K64 ["Networking"]
      307 GETTABLEKS                       R42 R42 K69 ["Requests"]
      309 GETTABLEKS                       R42 R42 K71 ["GetRolesDebugRequest"]
      311 CALL                             R41 1 1
      312 GETTABLEKS                       R42 R16 K45 ["ContextServices"]
      314 GETTABLEKS                       R43 R16 K4 ["Util"]
      316 GETTABLEKS                       R43 R43 K72 ["ThunkWithArgsMiddleware"]
      318 GETIMPORT                        R44 K13 [require]
      320 GETTABLEKS                       R45 R14 K73 ["Dash"]
      322 CALL                             R44 1 1
      323 GETTABLEKS                       R45 R44 K74 ["find"]
      325 GETTABLEKS                       R46 R2 K75 ["Resources"]
      327 GETTABLEKS                       R46 R46 K76 ["Localization"]
      329 GETTABLEKS                       R46 R46 K77 ["SourceStrings"]
      331 GETTABLEKS                       R47 R2 K75 ["Resources"]
      333 GETTABLEKS                       R47 R47 K76 ["Localization"]
      335 GETTABLEKS                       R47 R47 K78 ["LocalizedStrings"]
      337 GETIMPORT                        R48 K6 [game]
      339 LOADK                            R50 K79 ["HttpService"]
      340 NAMECALL                         R48 R48 K21 ["GetService"]
      342 CALL                             R48 2 1
      343 GETIMPORT                        R49 K6 [game]
      345 LOADK                            R51 K80 ["RobloxPluginGuiService"]
      346 NAMECALL                         R49 R49 K21 ["GetService"]
      348 CALL                             R49 2 1
      349 GETIMPORT                        R50 K6 [game]
      351 LOADK                            R52 K81 ["StudioAssetService"]
      352 NAMECALL                         R50 R50 K21 ["GetService"]
      354 CALL                             R50 2 1
      355 MOVE                             R51 R33
      356 CALL                             R51 0 1
      357 JUMPIF                           R51 ; [+1]
      358 RETURN                           R0 0
      359 GETTABLEKS                       R51 R42 K76 ["Localization"]
      361 GETTABLEKS                       R51 R51 K82 ["new"]
      363 DUPTABLE                         R52 K88 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Toolbox", ["libraries"]}]
      364 SETTABLEKS                       R46 R52 K83 ["stringResourceTable"]
      366 SETTABLEKS                       R47 R52 K84 ["translationResourceTable"]
      368 NEWTABLE                         R53 1 0
      370 GETTABLEKS                       R54 R16 K75 ["Resources"]
      372 GETTABLEKS                       R54 R54 K89 ["LOCALIZATION_PROJECT_NAME"]
      374 DUPTABLE                         R55 K90 [{"stringResourceTable", "translationResourceTable"}]
      375 GETTABLEKS                       R56 R16 K75 ["Resources"]
      377 GETTABLEKS                       R56 R56 K77 ["SourceStrings"]
      379 SETTABLEKS                       R56 R55 K83 ["stringResourceTable"]
      381 GETTABLEKS                       R56 R16 K75 ["Resources"]
      383 GETTABLEKS                       R56 R56 K78 ["LocalizedStrings"]
      385 SETTABLEKS                       R56 R55 K84 ["translationResourceTable"]
      387 SETTABLE                         R55 R53 R54
      388 SETTABLEKS                       R53 R52 K87 ["libraries"]
      390 CALL                             R51 1 1
      391 NEWCLOSURE                       R52 P0
      392 CAPTURE                          VAL R23
      393 NEWCLOSURE                       R53 P1
      394 CAPTURE                          VAL R24
      395 LOADNIL                          R54
      396 LOADNIL                          R55
      397 NEWCLOSURE                       R56 P2
      398 CAPTURE                          REF R55
      399 CAPTURE                          REF R54
      400 CAPTURE                          VAL R45
      401 CAPTURE                          VAL R26
      402 CAPTURE                          VAL R31
      403 CAPTURE                          VAL R25
      404 CAPTURE                          VAL R43
      405 CAPTURE                          VAL R50
      406 CAPTURE                          VAL R18
      407 CAPTURE                          VAL R36
      408 CAPTURE                          VAL R6
      409 CAPTURE                          VAL R7
      410 CAPTURE                          VAL R10
      411 CAPTURE                          VAL R9
      412 CAPTURE                          VAL R53
      413 CAPTURE                          VAL R37
      414 CAPTURE                          VAL R49
      415 CAPTURE                          VAL R15
      416 CAPTURE                          VAL R12
      417 CAPTURE                          VAL R28
      418 CAPTURE                          VAL R38
      419 CAPTURE                          VAL R8
      420 CAPTURE                          VAL R0
      421 CAPTURE                          VAL R39
      422 CAPTURE                          VAL R51
      423 NEWCLOSURE                       R57 P3
      424 CAPTURE                          REF R54
      425 CAPTURE                          VAL R18
      426 CAPTURE                          VAL R35
      427 CAPTURE                          VAL R20
      428 CAPTURE                          VAL R27
      429 CAPTURE                          VAL R22
      430 CAPTURE                          VAL R0
      431 CAPTURE                          VAL R52
      432 CAPTURE                          VAL R37
      433 CAPTURE                          VAL R29
      434 CAPTURE                          VAL R30
      435 CAPTURE                          VAL R13
      436 CAPTURE                          VAL R17
      437 CAPTURE                          VAL R15
      438 CAPTURE                          VAL R34
      439 CAPTURE                          VAL R56
      440 CAPTURE                          VAL R25
      441 CAPTURE                          VAL R31
      442 CAPTURE                          VAL R32
      443 CAPTURE                          VAL R1
      444 CAPTURE                          VAL R5
      445 CAPTURE                          VAL R41
      446 CAPTURE                          VAL R40
      447 CAPTURE                          VAL R28
      448 CAPTURE                          VAL R39
      449 CAPTURE                          VAL R51
      450 CAPTURE                          VAL R26
      451 CAPTURE                          VAL R50
      452 CAPTURE                          VAL R10
      453 CAPTURE                          VAL R48
      454 CAPTURE                          VAL R19
      455 MOVE                             R58 R57
      456 CALL                             R58 0 0
      457 CLOSEUPVALS                      R54
      458 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_25]
        2 RETURN                           R0 1
