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
      160 SETTABLEKS                       R4 R25 K31 ["assetSubType"]
      162 SETTABLEKS                       R7 R25 K32 ["currentTab"]
      164 SETTABLEKS                       R16 R25 K33 ["packagePermissions"]
      166 NEWTABLE                         R26 0 0
      168 SETTABLEKS                       R26 R25 K34 ["overrideCursor"]
      170 SETTABLEKS                       R6 R25 K39 ["hasSubsequent"]
      172 SETTABLEKS                       R9 R25 K40 ["avatarAssetCurrentIndex"]
      174 SETTABLEKS                       R10 R25 K41 ["avatarAssetTotalCount"]
      176 GETUPVAL                         R27 12
      177 CALL                             R27 0 1
      178 JUMPIFNOT                        R27 ; [+3]
      179 NEWTABLE                         R26 0 0
      181 JUMP                             ; [+1]
      182 LOADNIL                          R26
      183 SETTABLEKS                       R26 R25 K42 ["sellerStatusData"]
      185 SETTABLEKS                       R17 R25 K8 ["groupBundlesUploadEnabledForUser"]
      187 GETUPVAL                         R27 13
      188 CALL                             R27 0 1
      189 JUMPIFNOT                        R27 ; [+5]
      190 GETUPVAL                         R27 14
      191 CALL                             R27 0 1
      192 JUMPIFNOT                        R27 ; [+2]
      193 MOVE                             R26 R11
      194 JUMP                             ; [+1]
      195 LOADNIL                          R26
      196 SETTABLEKS                       R26 R25 K43 ["preselectedGroupId"]
      198 MOVE                             R26 R22
      199 CALL                             R23 3 1
      200 GETUPVAL                         R24 15
      201 CALL                             R24 0 1
      202 GETUPVAL                         R25 16
      203 GETTABLEKS                       R25 R25 K21 ["new"]
      205 CALL                             R25 0 1
      206 NEWCLOSURE                       R26 P1
      207 CAPTURE                          UPVAL U0
      208 CAPTURE                          UPVAL U17
      209 CAPTURE                          UPVAL U18
      210 CAPTURE                          UPVAL U19
      211 CAPTURE                          VAL R8
      212 GETUPVAL                         R28 11
      213 JUMPIFNOT                        R28 ; [+5]
      214 GETUPVAL                         R27 20
      215 GETTABLEKS                       R27 R27 K21 ["new"]
      217 CALL                             R27 0 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R27
      220 GETUPVAL                         R28 18
      221 GETTABLEKS                       R28 R28 K48 ["createElement"]
      223 GETUPVAL                         R29 21
      224 DUPTABLE                         R30 K55 [{"assetId", "assetTypeEnum", "groupId", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
      225 SETTABLEKS                       R0 R30 K22 ["assetId"]
      227 SETTABLEKS                       R3 R30 K30 ["assetTypeEnum"]
      229 GETUPVAL                         R32 13
      230 CALL                             R32 0 1
      231 JUMPIFNOT                        R32 ; [+2]
      232 MOVE                             R31 R11
      233 JUMP                             ; [+1]
      234 LOADNIL                          R31
      235 SETTABLEKS                       R31 R30 K49 ["groupId"]
      237 GETUPVAL                         R31 22
      238 SETTABLEKS                       R31 R30 K50 ["plugin"]
      240 SETTABLEKS                       R23 R30 K51 ["store"]
      242 SETTABLEKS                       R24 R30 K52 ["theme"]
      244 SETTABLEKS                       R25 R30 K53 ["networkInterface"]
      246 SETTABLEKS                       R26 R30 K54 ["onAssetConfigDestroy"]
      248 CALL                             R28 2 1
      249 GETUPVAL                         R29 18
      250 GETTABLEKS                       R29 R29 K48 ["createElement"]
      252 GETUPVAL                         R30 23
      253 DUPTABLE                         R31 K59 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
      254 GETUPVAL                         R33 11
      255 JUMPIFNOT                        R33 ; [+2]
      256 MOVE                             R32 R27
      257 JUMP                             ; [+1]
      258 LOADNIL                          R32
      259 SETTABLEKS                       R32 R31 K56 ["ixp"]
      261 GETUPVAL                         R32 24
      262 SETTABLEKS                       R32 R31 K57 ["localization"]
      264 GETUPVAL                         R32 22
      265 SETTABLEKS                       R32 R31 K50 ["plugin"]
      267 SETTABLEKS                       R24 R31 K52 ["theme"]
      269 SETTABLEKS                       R23 R31 K51 ["store"]
      271 GETIMPORT                        R32 K60 [settings]
      273 SETTABLEKS                       R32 R31 K58 ["settings"]
      275 NEWTABLE                         R32 0 1
      277 MOVE                             R33 R28
      278 SETLIST                          R32 R33 1 [1]
      280 CALL                             R29 3 1
      281 GETUPVAL                         R30 18
      282 GETTABLEKS                       R30 R30 K61 ["mount"]
      284 MOVE                             R31 R29
      285 CALL                             R30 1 1
      286 SETUPVAL                         R30 0
      287 RETURN                           R23 1

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
       47 GETUPVAL                         R8 4
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+5]
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R8 R0 K7 ["networkError"]
       53 CALL                             R7 1 1
       54 JUMP                             ; [+3]
       55 GETTABLEKS                       R8 R0 K7 ["networkError"]
       57 ORK                              R7 R8 K8 ["Upload failed"]
       58 NAMECALL                         R2 R2 K6 ["ResolveSaveInstanceToRoblox"]
       60 CALL                             R2 5 0
       61 RETURN                           R0 0

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
      103 CAPTURE                          UPVAL U9
      104 CAPTURE                          UPVAL U10
      105 NAMECALL                         R7 R7 K19 ["connect"]
      107 CALL                             R7 2 1
      108 MOVE                             R6 R7
      109 CLOSEUPVALS                      R3
      110 RETURN                           R0 0

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
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 GETUPVAL                         R5 7
       13 JUMPIFNOT                        R5 ; [+13]
       14 GETUPVAL                         R5 8
       15 GETUPVAL                         R7 9
       16 GETUPVAL                         R8 10
       17 CALL                             R7 1 -1
       18 NAMECALL                         R5 R5 K0 ["dispatch"]
       20 CALL                             R5 -1 1
       21 MOVE                             R7 R4
       22 MOVE                             R8 R4
       23 NAMECALL                         R5 R5 K1 ["andThen"]
       25 CALL                             R5 3 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R5 8
       28 GETUPVAL                         R7 11
       29 GETUPVAL                         R8 10
       30 CALL                             R7 1 -1
       31 NAMECALL                         R5 R5 K0 ["dispatch"]
       33 CALL                             R5 -1 1
       34 MOVE                             R7 R4
       35 MOVE                             R8 R4
       36 NAMECALL                         R5 R5 K1 ["andThen"]
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

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
       10 JUMPIFNOTEQKS                    R0 K6 ["AnimationGraph"] ; [+3]
       12 LOADK                            R6 K6 ["AnimationGraph"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 CALL                             R1 5 0
       16 RETURN                           R0 0

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
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+18]
       13 GETIMPORT                        R3 K8 [Enum.AssetType.Mesh]
       15 GETTABLEKS                       R3 R3 K6 ["Name"]
       17 LOADB                            R4 1
       18 SETTABLE                         R4 R2 R3
       19 GETIMPORT                        R3 K10 [Enum.AssetType.Image]
       21 GETTABLEKS                       R3 R3 K6 ["Name"]
       23 LOADB                            R4 1
       24 SETTABLE                         R4 R2 R3
       25 GETIMPORT                        R3 K12 [Enum.AssetType.Animation]
       27 GETTABLEKS                       R3 R3 K6 ["Name"]
       29 LOADB                            R4 1
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R3 1
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+6]
       34 GETIMPORT                        R3 K14 [Enum.AssetType.TextDocument]
       36 GETTABLEKS                       R3 R3 K6 ["Name"]
       38 LOADB                            R4 1
       39 SETTABLE                         R4 R2 R3
       40 GETUPVAL                         R3 2
       41 MOVE                             R5 R0
       42 NAMECALL                         R3 R3 K15 ["JSONDecode"]
       44 CALL                             R3 2 1
       45 GETTABLEKS                       R4 R3 K16 ["assetType"]
       47 GETTABLE                         R5 R2 R4
       48 JUMPIFNOT                        R5 ; [+3]
       49 GETIMPORT                        R5 K17 [Enum.AssetType]
       51 GETTABLE                         R1 R5 R4
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R6 R3 K18 ["id"]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K19 ["FLOW_TYPE"]
       58 GETTABLEKS                       R7 R7 K20 ["EDIT_FLOW"]
       60 LOADNIL                          R8
       61 MOVE                             R9 R1
       62 CALL                             R5 4 0
       63 RETURN                           R0 0

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
       42 JUMPIFNOT                        R9 ; [+10]
       43 GETUPVAL                         R9 12
       44 CALL                             R9 0 1
       45 JUMPIF                           R9 ; [+7]
       46 GETUPVAL                         R9 13
       47 GETTABLEKS                       R9 R9 K5 ["forPlugin"]
       49 LOADK                            R10 K6 ["Toolbox"]
       50 GETUPVAL                         R11 6
       51 CALL                             R9 2 1
       52 MOVE                             R8 R9
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          REF R7
       55 CAPTURE                          UPVAL U14
       56 CAPTURE                          REF R8
       57 GETUPVAL                         R10 15
       58 GETUPVAL                         R12 0
       59 NEWCLOSURE                       R13 P1
       60 CAPTURE                          UPVAL U16
       61 CAPTURE                          UPVAL U17
       62 CAPTURE                          UPVAL U18
       63 NAMECALL                         R10 R10 K7 ["setup"]
       65 CALL                             R10 3 0
       66 GETUPVAL                         R10 12
       67 CALL                             R10 0 1
       68 JUMPIF                           R10 ; [+85]
       69 GETUPVAL                         R10 14
       70 GETTABLEKS                       R10 R10 K8 ["createElement"]
       72 GETUPVAL                         R11 19
       73 DUPTABLE                         R12 K19 [{"plugin", "store", "settings", "theme", "networkInterface", "pluginLoaderContext", "backgrounds", "suggestions", "onPluginWillDestroy", "tryOpenAssetConfig"}]
       74 GETUPVAL                         R13 6
       75 SETTABLEKS                       R13 R12 K9 ["plugin"]
       77 GETUPVAL                         R13 0
       78 SETTABLEKS                       R13 R12 K10 ["store"]
       80 SETTABLEKS                       R2 R12 K11 ["settings"]
       82 SETTABLEKS                       R3 R12 K12 ["theme"]
       84 SETTABLEKS                       R4 R12 K13 ["networkInterface"]
       86 GETUPVAL                         R13 20
       87 SETTABLEKS                       R13 R12 K14 ["pluginLoaderContext"]
       89 SETTABLEKS                       R5 R12 K15 ["backgrounds"]
       91 SETTABLEKS                       R6 R12 K16 ["suggestions"]
       93 SETTABLEKS                       R9 R12 K17 ["onPluginWillDestroy"]
       95 NEWCLOSURE                       R13 P2
       96 CAPTURE                          UPVAL U16
       97 CAPTURE                          UPVAL U21
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U22
      100 CAPTURE                          VAL R4
      101 CAPTURE                          UPVAL U23
      102 SETTABLEKS                       R13 R12 K18 ["tryOpenAssetConfig"]
      104 CALL                             R10 2 1
      105 GETUPVAL                         R11 24
      106 GETTABLEKS                       R11 R11 K1 ["new"]
      108 CALL                             R11 0 1
      109 LOADNIL                          R12
      110 GETUPVAL                         R13 14
      111 GETTABLEKS                       R13 R13 K8 ["createElement"]
      113 GETUPVAL                         R14 25
      114 DUPTABLE                         R15 K24 [{"localization", "plugin", "theme", "store", "settings", "assetAnalytics", "analytics", "ixp"}]
      115 GETUPVAL                         R16 26
      116 SETTABLEKS                       R16 R15 K20 ["localization"]
      118 GETUPVAL                         R16 6
      119 SETTABLEKS                       R16 R15 K9 ["plugin"]
      121 SETTABLEKS                       R3 R15 K12 ["theme"]
      123 GETUPVAL                         R16 0
      124 SETTABLEKS                       R16 R15 K10 ["store"]
      126 SETTABLEKS                       R2 R15 K11 ["settings"]
      128 SETTABLEKS                       R0 R15 K21 ["assetAnalytics"]
      130 SETTABLEKS                       R1 R15 K22 ["analytics"]
      132 SETTABLEKS                       R11 R15 K23 ["ixp"]
      134 NEWTABLE                         R16 0 1
      136 MOVE                             R17 R10
      137 SETLIST                          R16 R17 1 [1]
      139 CALL                             R13 3 1
      140 MOVE                             R12 R13
      141 GETUPVAL                         R13 14
      142 GETTABLEKS                       R13 R13 K25 ["mount"]
      144 MOVE                             R14 R12
      145 CALL                             R13 1 1
      146 MOVE                             R7 R13
      147 JUMPIFNOT                        R8 ; [+6]
      148 LOADK                            R15 K26 ["Roact tree"]
      149 MOVE                             R16 R7
      150 GETUPVAL                         R17 14
      151 NAMECALL                         R13 R8 K27 ["addRoactTree"]
      153 CALL                             R13 4 0
      154 GETUPVAL                         R11 20
      155 GETTABLEKS                       R11 R11 K29 ["signals"]
      157 GETTABLEKS                       R10 R11 K28 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      159 NEWCLOSURE                       R12 P3
      160 CAPTURE                          UPVAL U27
      161 CAPTURE                          UPVAL U17
      162 CAPTURE                          UPVAL U28
      163 CAPTURE                          UPVAL U29
      164 CAPTURE                          UPVAL U16
      165 CAPTURE                          UPVAL U30
      166 CAPTURE                          UPVAL U31
      167 CAPTURE                          UPVAL U21
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          UPVAL U22
      170 CAPTURE                          VAL R4
      171 CAPTURE                          UPVAL U23
      172 NAMECALL                         R10 R10 K30 ["Connect"]
      174 CALL                             R10 2 0
      175 GETUPVAL                         R11 20
      176 GETTABLEKS                       R11 R11 K29 ["signals"]
      178 GETTABLEKS                       R10 R11 K31 ["StudioAssetService.OnSaveToRoblox"]
      180 NEWCLOSURE                       R12 P4
      181 CAPTURE                          UPVAL U27
      182 CAPTURE                          UPVAL U32
      183 CAPTURE                          UPVAL U33
      184 CAPTURE                          UPVAL U16
      185 CAPTURE                          UPVAL U17
      186 CAPTURE                          UPVAL U21
      187 CAPTURE                          UPVAL U0
      188 CAPTURE                          UPVAL U22
      189 CAPTURE                          VAL R4
      190 CAPTURE                          UPVAL U23
      191 NAMECALL                         R10 R10 K30 ["Connect"]
      193 CALL                             R10 2 0
      194 GETUPVAL                         R11 20
      195 GETTABLEKS                       R11 R11 K29 ["signals"]
      197 GETTABLEKS                       R10 R11 K32 ["StudioService.OnImportFromRoblox"]
      199 NEWCLOSURE                       R12 P5
      200 CAPTURE                          UPVAL U16
      201 CAPTURE                          UPVAL U17
      202 NAMECALL                         R10 R10 K30 ["Connect"]
      204 CALL                             R10 2 0
      205 GETUPVAL                         R11 20
      206 GETTABLEKS                       R11 R11 K29 ["signals"]
      208 GETTABLEKS                       R10 R11 K33 ["StudioService.OnOpenManagePackagePlugin"]
      210 NEWCLOSURE                       R12 P6
      211 CAPTURE                          UPVAL U16
      212 CAPTURE                          UPVAL U17
      213 NAMECALL                         R10 R10 K30 ["Connect"]
      215 CALL                             R10 2 0
      216 GETUPVAL                         R11 20
      217 GETTABLEKS                       R11 R11 K29 ["signals"]
      219 GETTABLEKS                       R10 R11 K34 ["StudioService.OnPublishAsPlugin"]
      221 NEWCLOSURE                       R12 P7
      222 CAPTURE                          UPVAL U16
      223 CAPTURE                          UPVAL U17
      224 CAPTURE                          UPVAL U27
      225 CAPTURE                          UPVAL U21
      226 CAPTURE                          UPVAL U0
      227 CAPTURE                          UPVAL U22
      228 CAPTURE                          VAL R4
      229 CAPTURE                          UPVAL U23
      230 NAMECALL                         R10 R10 K30 ["Connect"]
      232 CALL                             R10 2 0
      233 GETUPVAL                         R11 20
      234 GETTABLEKS                       R11 R11 K29 ["signals"]
      236 GETTABLEKS                       R10 R11 K35 ["MemStorageService.OpenAssetConfiguration"]
      238 NEWCLOSURE                       R12 P8
      239 CAPTURE                          UPVAL U34
      240 CAPTURE                          UPVAL U35
      241 CAPTURE                          UPVAL U36
      242 CAPTURE                          UPVAL U16
      243 CAPTURE                          UPVAL U17
      244 NAMECALL                         R10 R10 K30 ["Connect"]
      246 CALL                             R10 2 0
      247 GETUPVAL                         R10 33
      248 GETTABLEKS                       R10 R10 K36 ["registerLocalization"]
      250 GETUPVAL                         R11 26
      251 CALL                             R10 1 0
      252 GETUPVAL                         R10 33
      253 GETTABLEKS                       R10 R10 K37 ["registerProcessDragHandler"]
      255 GETUPVAL                         R11 6
      256 CALL                             R10 1 0
      257 CLOSEUPVALS                      R7
      258 RETURN                           R0 0

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
       71 GETTABLEKS                       R12 R12 K19 ["getEngineFeatureEnableCreatorStorePlugin"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K13 [require]
       76 GETTABLEKS                       R13 R2 K3 ["Src"]
       78 GETTABLEKS                       R13 R13 K14 ["Flags"]
       80 GETTABLEKS                       R13 R13 K20 ["getFFlagToolboxEnableExtendedVersioning"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K13 [require]
       85 GETTABLEKS                       R14 R2 K3 ["Src"]
       87 GETTABLEKS                       R14 R14 K14 ["Flags"]
       89 GETTABLEKS                       R14 R14 K21 ["getEngineFeatureStudioTextDocumentUploadAsset"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K13 [require]
       94 GETTABLEKS                       R15 R2 K3 ["Src"]
       96 GETTABLEKS                       R15 R15 K14 ["Flags"]
       98 GETTABLEKS                       R15 R15 K22 ["getFFlagToolboxSaveInstanceErrorMessage"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K13 [require]
      103 GETTABLEKS                       R16 R2 K3 ["Src"]
      105 GETTABLEKS                       R16 R16 K4 ["Util"]
      107 GETTABLEKS                       R16 R16 K23 ["getSaveInstanceErrorMessage"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K13 [require]
      112 GETTABLEKS                       R17 R2 K3 ["Src"]
      114 GETTABLEKS                       R17 R17 K14 ["Flags"]
      116 GETTABLEKS                       R17 R17 K24 ["getFFlagToolboxPublishAnimationGraphSubType"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K13 [require]
      121 GETTABLEKS                       R18 R3 K25 ["isCli"]
      123 CALL                             R17 1 1
      124 MOVE                             R18 R17
      125 CALL                             R18 0 1
      126 JUMPIFNOT                        R18 ; [+1]
      127 RETURN                           R0 0
      128 GETIMPORT                        R18 K6 [game]
      130 LOADK                            R20 K26 ["StudioService"]
      131 NAMECALL                         R18 R18 K27 ["GetService"]
      133 CALL                             R18 2 1
      134 NAMECALL                         R19 R18 K28 ["HasInternalPermission"]
      136 CALL                             R19 1 1
      137 GETTABLEKS                       R20 R2 K29 ["Packages"]
      139 GETIMPORT                        R21 K13 [require]
      141 GETTABLEKS                       R22 R20 K30 ["Roact"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K13 [require]
      146 GETTABLEKS                       R23 R20 K31 ["Framework"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K13 [require]
      151 GETTABLEKS                       R24 R20 K32 ["Dev"]
      153 GETTABLEKS                       R24 R24 K33 ["DeveloperTools"]
      155 CALL                             R23 1 1
      156 JUMPIFNOT                        R4 ; [+4]
      157 GETTABLEKS                       R24 R21 K34 ["setGlobalConfig"]
      159 DUPTABLE                         R25 K39 [{["elementTracing"] = True, ["propValidation"] = True, ["typeChecks"] = True}]
      160 CALL                             R24 1 0
      161 GETIMPORT                        R24 K13 [require]
      163 GETTABLEKS                       R25 R20 K40 ["Rodux"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K13 [require]
      168 GETTABLEKS                       R26 R3 K41 ["InsertAsset"]
      170 CALL                             R25 1 1
      171 GETIMPORT                        R26 K13 [require]
      173 GETTABLEKS                       R27 R3 K42 ["Analytics"]
      175 GETTABLEKS                       R27 R27 K43 ["AssetAnalyticsContextItem"]
      177 CALL                             R26 1 1
      178 GETIMPORT                        R27 K13 [require]
      180 GETTABLEKS                       R28 R3 K44 ["DebugFlags"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K13 [require]
      185 GETTABLEKS                       R29 R3 K45 ["Settings"]
      187 CALL                             R28 1 1
      188 GETIMPORT                        R29 K13 [require]
      190 GETTABLEKS                       R30 R3 K46 ["ToolboxTheme"]
      192 CALL                             R29 1 1
      193 GETIMPORT                        R30 K13 [require]
      195 GETTABLEKS                       R31 R3 K47 ["AssetConfigTheme"]
      197 CALL                             R30 1 1
      198 GETIMPORT                        R31 K13 [require]
      200 GETTABLEKS                       R32 R3 K48 ["AssetConfigConstants"]
      202 CALL                             R31 1 1
      203 GETIMPORT                        R32 K13 [require]
      205 GETTABLEKS                       R33 R3 K49 ["AssetConfigUtil"]
      207 CALL                             R32 1 1
      208 GETIMPORT                        R33 K13 [require]
      210 GETTABLEKS                       R34 R3 K42 ["Analytics"]
      212 GETTABLEKS                       R34 R34 K50 ["makeToolboxAnalyticsContext"]
      214 CALL                             R33 1 1
      215 GETIMPORT                        R34 K13 [require]
      217 GETTABLEKS                       R35 R2 K3 ["Src"]
      219 GETTABLEKS                       R35 R35 K51 ["ContextServices"]
      221 GETTABLEKS                       R35 R35 K52 ["IXPContext"]
      223 CALL                             R34 1 1
      224 GETTABLEKS                       R35 R27 K53 ["shouldDebugWarnings"]
      226 CALL                             R35 0 1
      227 JUMPIFNOT                        R35 ; [+13]
      228 GETIMPORT                        R35 K13 [require]
      230 GETTABLEKS                       R36 R20 K31 ["Framework"]
      232 CALL                             R35 1 1
      233 GETTABLEKS                       R35 R35 K4 ["Util"]
      235 GETTABLEKS                       R35 R35 K54 ["Promise"]
      237 GETIMPORT                        R36 K56 [warn]
      239 SETTABLEKS                       R36 R35 K57 ["onUnhandledRejection"]
      241 GETIMPORT                        R35 K13 [require]
      243 GETTABLEKS                       R36 R2 K3 ["Src"]
      245 GETTABLEKS                       R36 R36 K58 ["Types"]
      247 GETTABLEKS                       R36 R36 K59 ["Background"]
      249 CALL                             R35 1 1
      250 GETIMPORT                        R36 K13 [require]
      252 GETTABLEKS                       R37 R2 K3 ["Src"]
      254 GETTABLEKS                       R37 R37 K58 ["Types"]
      256 GETTABLEKS                       R37 R37 K60 ["Suggestion"]
      258 CALL                             R36 1 1
      259 GETIMPORT                        R37 K13 [require]
      261 GETTABLEKS                       R38 R2 K3 ["Src"]
      263 GETTABLEKS                       R38 R38 K58 ["Types"]
      265 GETTABLEKS                       R38 R38 K61 ["ConfigTypes"]
      267 CALL                             R37 1 1
      268 GETIMPORT                        R38 K13 [require]
      270 GETTABLEKS                       R39 R2 K3 ["Src"]
      272 GETTABLEKS                       R39 R39 K62 ["Components"]
      274 GETTABLEKS                       R39 R39 K63 ["ToolboxPlugin"]
      276 CALL                             R38 1 1
      277 GETIMPORT                        R39 K13 [require]
      279 GETTABLEKS                       R40 R2 K3 ["Src"]
      281 GETTABLEKS                       R40 R40 K4 ["Util"]
      283 GETTABLEKS                       R40 R40 K64 ["ToolboxUtilities"]
      285 CALL                             R39 1 1
      286 GETTABLEKS                       R39 R39 K65 ["getToolboxEnabled"]
      288 GETIMPORT                        R40 K13 [require]
      290 GETTABLEKS                       R41 R2 K3 ["Src"]
      292 GETTABLEKS                       R41 R41 K4 ["Util"]
      294 GETTABLEKS                       R41 R41 K66 ["ToolboxCommunication"]
      296 CALL                             R40 1 1
      297 GETIMPORT                        R41 K13 [require]
      299 GETTABLEKS                       R42 R2 K3 ["Src"]
      301 GETTABLEKS                       R42 R42 K67 ["Reducers"]
      303 GETTABLEKS                       R42 R42 K68 ["ToolboxReducer"]
      305 CALL                             R41 1 1
      306 GETIMPORT                        R42 K13 [require]
      308 GETTABLEKS                       R43 R2 K3 ["Src"]
      310 GETTABLEKS                       R43 R43 K67 ["Reducers"]
      312 GETTABLEKS                       R43 R43 K69 ["AssetConfigReducer"]
      314 CALL                             R42 1 1
      315 GETIMPORT                        R43 K13 [require]
      317 GETTABLEKS                       R44 R2 K3 ["Src"]
      319 GETTABLEKS                       R44 R44 K70 ["Networking"]
      321 GETTABLEKS                       R44 R44 K71 ["NetworkInterface"]
      323 CALL                             R43 1 1
      324 GETIMPORT                        R44 K13 [require]
      326 GETTABLEKS                       R45 R2 K3 ["Src"]
      328 GETTABLEKS                       R45 R45 K62 ["Components"]
      330 GETTABLEKS                       R45 R45 K72 ["AssetConfiguration"]
      332 GETTABLEKS                       R45 R45 K73 ["AssetConfigWrapper"]
      334 CALL                             R44 1 1
      335 GETIMPORT                        R45 K13 [require]
      337 GETTABLEKS                       R46 R2 K3 ["Src"]
      339 GETTABLEKS                       R46 R46 K62 ["Components"]
      341 GETTABLEKS                       R46 R46 K74 ["ToolboxServiceWrapper"]
      343 CALL                             R45 1 1
      344 GETIMPORT                        R46 K13 [require]
      346 GETTABLEKS                       R47 R2 K3 ["Src"]
      348 GETTABLEKS                       R47 R47 K70 ["Networking"]
      350 GETTABLEKS                       R47 R47 K75 ["Requests"]
      352 GETTABLEKS                       R47 R47 K76 ["GetRolesRequest"]
      354 CALL                             R46 1 1
      355 GETIMPORT                        R47 K13 [require]
      357 GETTABLEKS                       R48 R2 K3 ["Src"]
      359 GETTABLEKS                       R48 R48 K70 ["Networking"]
      361 GETTABLEKS                       R48 R48 K75 ["Requests"]
      363 GETTABLEKS                       R48 R48 K77 ["GetRolesDebugRequest"]
      365 CALL                             R47 1 1
      366 GETTABLEKS                       R48 R22 K51 ["ContextServices"]
      368 GETTABLEKS                       R49 R22 K4 ["Util"]
      370 GETTABLEKS                       R49 R49 K78 ["ThunkWithArgsMiddleware"]
      372 GETIMPORT                        R50 K13 [require]
      374 GETTABLEKS                       R51 R20 K79 ["Dash"]
      376 CALL                             R50 1 1
      377 GETTABLEKS                       R51 R50 K80 ["find"]
      379 GETTABLEKS                       R52 R2 K81 ["Resources"]
      381 GETTABLEKS                       R52 R52 K82 ["Localization"]
      383 GETTABLEKS                       R52 R52 K83 ["SourceStrings"]
      385 GETTABLEKS                       R53 R2 K81 ["Resources"]
      387 GETTABLEKS                       R53 R53 K82 ["Localization"]
      389 GETTABLEKS                       R53 R53 K84 ["LocalizedStrings"]
      391 GETIMPORT                        R54 K6 [game]
      393 LOADK                            R56 K85 ["HttpService"]
      394 NAMECALL                         R54 R54 K27 ["GetService"]
      396 CALL                             R54 2 1
      397 GETIMPORT                        R55 K6 [game]
      399 LOADK                            R57 K86 ["RobloxPluginGuiService"]
      400 NAMECALL                         R55 R55 K27 ["GetService"]
      402 CALL                             R55 2 1
      403 GETIMPORT                        R56 K6 [game]
      405 LOADK                            R58 K87 ["StudioAssetService"]
      406 NAMECALL                         R56 R56 K27 ["GetService"]
      408 CALL                             R56 2 1
      409 MOVE                             R57 R39
      410 CALL                             R57 0 1
      411 JUMPIF                           R57 ; [+1]
      412 RETURN                           R0 0
      413 GETTABLEKS                       R57 R48 K82 ["Localization"]
      415 GETTABLEKS                       R57 R57 K88 ["new"]
      417 DUPTABLE                         R58 K94 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Toolbox", ["libraries"]}]
      418 SETTABLEKS                       R52 R58 K89 ["stringResourceTable"]
      420 SETTABLEKS                       R53 R58 K90 ["translationResourceTable"]
      422 NEWTABLE                         R59 1 0
      424 GETTABLEKS                       R60 R22 K81 ["Resources"]
      426 GETTABLEKS                       R60 R60 K95 ["LOCALIZATION_PROJECT_NAME"]
      428 DUPTABLE                         R61 K96 [{"stringResourceTable", "translationResourceTable"}]
      429 GETTABLEKS                       R62 R22 K81 ["Resources"]
      431 GETTABLEKS                       R62 R62 K83 ["SourceStrings"]
      433 SETTABLEKS                       R62 R61 K89 ["stringResourceTable"]
      435 GETTABLEKS                       R62 R22 K81 ["Resources"]
      437 GETTABLEKS                       R62 R62 K84 ["LocalizedStrings"]
      439 SETTABLEKS                       R62 R61 K90 ["translationResourceTable"]
      441 SETTABLE                         R61 R59 R60
      442 SETTABLEKS                       R59 R58 K93 ["libraries"]
      444 CALL                             R57 1 1
      445 NEWCLOSURE                       R58 P0
      446 CAPTURE                          VAL R29
      447 NEWCLOSURE                       R59 P1
      448 CAPTURE                          VAL R30
      449 LOADNIL                          R60
      450 LOADNIL                          R61
      451 NEWCLOSURE                       R62 P2
      452 CAPTURE                          REF R61
      453 CAPTURE                          REF R60
      454 CAPTURE                          VAL R51
      455 CAPTURE                          VAL R32
      456 CAPTURE                          VAL R37
      457 CAPTURE                          VAL R31
      458 CAPTURE                          VAL R49
      459 CAPTURE                          VAL R56
      460 CAPTURE                          VAL R24
      461 CAPTURE                          VAL R42
      462 CAPTURE                          VAL R6
      463 CAPTURE                          VAL R7
      464 CAPTURE                          VAL R10
      465 CAPTURE                          VAL R8
      466 CAPTURE                          VAL R9
      467 CAPTURE                          VAL R59
      468 CAPTURE                          VAL R43
      469 CAPTURE                          VAL R55
      470 CAPTURE                          VAL R21
      471 CAPTURE                          VAL R18
      472 CAPTURE                          VAL R34
      473 CAPTURE                          VAL R44
      474 CAPTURE                          VAL R0
      475 CAPTURE                          VAL R45
      476 CAPTURE                          VAL R57
      477 NEWCLOSURE                       R63 P3
      478 CAPTURE                          REF R60
      479 CAPTURE                          VAL R24
      480 CAPTURE                          VAL R41
      481 CAPTURE                          VAL R26
      482 CAPTURE                          VAL R33
      483 CAPTURE                          VAL R28
      484 CAPTURE                          VAL R0
      485 CAPTURE                          VAL R58
      486 CAPTURE                          VAL R43
      487 CAPTURE                          VAL R35
      488 CAPTURE                          VAL R36
      489 CAPTURE                          VAL R19
      490 CAPTURE                          VAL R11
      491 CAPTURE                          VAL R23
      492 CAPTURE                          VAL R21
      493 CAPTURE                          VAL R40
      494 CAPTURE                          VAL R62
      495 CAPTURE                          VAL R31
      496 CAPTURE                          VAL R37
      497 CAPTURE                          VAL R38
      498 CAPTURE                          VAL R1
      499 CAPTURE                          VAL R5
      500 CAPTURE                          VAL R47
      501 CAPTURE                          VAL R46
      502 CAPTURE                          VAL R34
      503 CAPTURE                          VAL R45
      504 CAPTURE                          VAL R57
      505 CAPTURE                          VAL R32
      506 CAPTURE                          VAL R16
      507 CAPTURE                          VAL R56
      508 CAPTURE                          VAL R14
      509 CAPTURE                          VAL R15
      510 CAPTURE                          VAL R9
      511 CAPTURE                          VAL R25
      512 CAPTURE                          VAL R12
      513 CAPTURE                          VAL R13
      514 CAPTURE                          VAL R54
      515 MOVE                             R64 R63
      516 CALL                             R64 0 0
      517 CLOSEUPVALS                      R60
      518 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_25]
        2 RETURN                           R0 1
