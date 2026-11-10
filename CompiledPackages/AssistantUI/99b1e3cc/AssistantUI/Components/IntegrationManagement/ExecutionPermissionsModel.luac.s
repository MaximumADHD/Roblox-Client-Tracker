PROTO_0:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 LOADN                            R4 1
        7 LENGTH                           R2 R0
        8 LOADN                            R3 1
        9 FORNPREP                         R2
       10 GETTABLE                         R5 R0 R4
       11 GETTABLE                         R6 R1 R4
       12 JUMPIFEQ                         R5 R6 ; [+3]
       14 LOADB                            R5 0
       15 RETURN                           R5 1
       16 FORNLOOP                         R2
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIFEQ                         R7 R6 ; [+3]
        7 LOADB                            R7 0
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLE                         R7 R0 R5
       16 JUMPIFEQ                         R7 R6 ; [+3]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-6]
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingValuesVersion"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_pendingValuesVersion"]
        5 GETTABLEKS                       R1 R0 K0 ["_pendingValuesVersion"]
        7 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_bridge"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_permissions"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K4 ["_categories"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K5 ["_presets"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K6 ["_forcedKeys"]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R1 K7 ["_presetAcceptedSets"]
       30 LOADK                            R2 K8 ["custom"]
       31 SETTABLEKS                       R2 R1 K9 ["_committedPreset"]
       33 LOADK                            R2 K8 ["custom"]
       34 SETTABLEKS                       R2 R1 K10 ["_pendingPreset"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K11 ["_committedValues"]
       40 NEWTABLE                         R2 0 0
       42 SETTABLEKS                       R2 R1 K12 ["_pendingValues"]
       44 NEWTABLE                         R2 0 0
       46 SETTABLEKS                       R2 R1 K13 ["_committedDomains"]
       48 NEWTABLE                         R2 0 0
       50 SETTABLEKS                       R2 R1 K14 ["_pendingDomains"]
       52 LOADB                            R2 0
       53 SETTABLEKS                       R2 R1 K15 ["_saveFailed"]
       55 LOADB                            R2 0
       56 SETTABLEKS                       R2 R1 K16 ["_saving"]
       58 LOADN                            R2 0
       59 SETTABLEKS                       R2 R1 K17 ["_pendingValuesVersion"]
       61 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_permissions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["key"]
        9 GETTABLEKS                       R9 R0 K2 ["_bridge"]
       11 GETTABLEKS                       R11 R6 K1 ["key"]
       13 NAMECALL                         R9 R9 K3 ["GetPermissionAsync"]
       15 CALL                             R9 2 1
       16 JUMPIFEQKS                       R9 K4 ["accept"] ; [+2]
       18 LOADB                            R8 0 +1
       19 LOADB                            R8 1
       20 SETTABLE                         R8 R1 R7
       21 FORGLOOP                         R2 2 ; [-15]
       23 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["_readPermissionStates"]
        2 CALL                             R1 1 1
        3 SETTABLEKS                       R1 R0 K1 ["_committedValues"]
        5 GETTABLEKS                       R1 R0 K2 ["_bridge"]
        7 NAMECALL                         R1 R1 K3 ["GetAllowedHttpDomainsAsync"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 0 0
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 FASTCALL1                        TYPEOF R7 ; [+3]
       17 MOVE                             R9 R7
       18 GETIMPORT                        R8 K5 [typeof]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+8]
       23 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K9 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-15]
       32 SETTABLEKS                       R2 R0 K10 ["_committedDomains"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K11 ["FFlagStudioAssistantPermissionsHideNetwork"]
       37 JUMPIFNOT                        R4 ; [+12]
       38 GETTABLEKS                       R5 R0 K12 ["_forcedKeys"]
       40 LENGTH                           R4 R5
       41 LOADN                            R5 0
       42 JUMPIFNOTLT                      R5 R4 ; [+7]
       44 GETTABLEKS                       R5 R0 K1 ["_committedValues"]
       46 NAMECALL                         R3 R0 K13 ["_derivePreset"]
       48 CALL                             R3 2 1
       49 JUMP                             ; [+5]
       50 GETTABLEKS                       R3 R0 K2 ["_bridge"]
       52 NAMECALL                         R3 R3 K14 ["GetSelectedPresetAsync"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R0 K15 ["_committedPreset"]
       57 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagStudioAssistantPermissionsHideNetwork"]
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["_derivePreset requires FFlagStudioAssistantPermissionsHideNetwork"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K4 ["_presets"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R8 R0 K5 ["_presetAcceptedSets"]
       16 GETTABLEKS                       R9 R6 K6 ["id"]
       18 GETTABLE                         R7 R8 R9
       19 JUMPIFNOT                        R7 ; [+30]
       20 LOADB                            R8 1
       21 GETTABLEKS                       R9 R0 K7 ["_permissions"]
       23 LOADNIL                          R10
       24 LOADNIL                          R11
       25 FORGPREP                         R9
       26 GETTABLEKS                       R16 R13 K8 ["key"]
       28 GETTABLE                         R15 R1 R16
       29 JUMPIFEQKB                       R15 TRUE ; [+2]
       31 LOADB                            R14 0 +1
       32 LOADB                            R14 1
       33 GETTABLEKS                       R17 R13 K8 ["key"]
       35 GETTABLE                         R16 R7 R17
       36 JUMPIFEQKB                       R16 TRUE ; [+2]
       38 LOADB                            R15 0 +1
       39 LOADB                            R15 1
       40 JUMPIFEQ                         R14 R15 ; [+3]
       42 LOADB                            R8 0
       43 JUMP                             ; [+2]
       44 FORGLOOP                         R9 2 ; [-19]
       46 JUMPIFNOT                        R8 ; [+3]
       47 GETTABLEKS                       R9 R6 K6 ["id"]
       49 RETURN                           R9 1
       50 FORGLOOP                         R2 2 ; [-37]
       52 LOADK                            R2 K9 ["custom"]
       53 RETURN                           R2 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_readCommittedFromBridge"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETTABLEKS                       R2 R0 K4 ["_committedValues"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K5 ["_pendingValues"]
       10 GETTABLEKS                       R1 R0 K6 ["_pendingValuesVersion"]
       12 ADDK                             R1 R1 K7 [1]
       13 SETTABLEKS                       R1 R0 K6 ["_pendingValuesVersion"]
       15 GETTABLEKS                       R1 R0 K6 ["_pendingValuesVersion"]
       17 GETIMPORT                        R1 K3 [table.clone]
       19 GETTABLEKS                       R2 R0 K8 ["_committedDomains"]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K9 ["_pendingDomains"]
       24 GETTABLEKS                       R1 R0 K10 ["_committedPreset"]
       26 SETTABLEKS                       R1 R0 K11 ["_pendingPreset"]
       28 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_bridge"]
        2 NAMECALL                         R1 R1 K1 ["GetAvailablePermissionsAsync"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 FASTCALL1                        TYPEOF R8 ; [+3]
       14 MOVE                             R10 R8
       15 GETIMPORT                        R9 K3 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+70]
       20 GETTABLEKS                       R9 R8 K5 ["key"]
       22 JUMPIFNOT                        R9 ; [+66]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K6 ["FFlagStudioAssistantPermissionsHideNetwork"]
       26 JUMPIFNOT                        R9 ; [+16]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K7 ["KEYS"]
       30 GETTABLEKS                       R11 R8 K5 ["key"]
       32 GETTABLE                         R9 R10 R11
       33 JUMPIFNOT                        R9 ; [+9]
       34 GETTABLEKS                       R11 R8 K5 ["key"]
       36 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       38 MOVE                             R10 R3
       39 GETIMPORT                        R9 K9 [table.insert]
       41 CALL                             R9 2 0
       42 JUMP                             ; [+46]
       43 DUPTABLE                         R11 K13 [{"key", "name", "description", "category"}]
       44 GETTABLEKS                       R12 R8 K5 ["key"]
       46 SETTABLEKS                       R12 R11 K5 ["key"]
       48 GETTABLEKS                       R12 R8 K10 ["name"]
       50 JUMPIF                           R12 ; [+2]
       51 GETTABLEKS                       R12 R8 K5 ["key"]
       53 SETTABLEKS                       R12 R11 K10 ["name"]
       55 GETTABLEKS                       R14 R8 K11 ["description"]
       57 FASTCALL1                        TYPEOF R14 ; [+2]
       58 GETIMPORT                        R13 K3 [typeof]
       60 CALL                             R13 1 1
       61 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+4]
       63 GETTABLEKS                       R12 R8 K11 ["description"]
       65 JUMP                             ; [+1]
       66 LOADK                            R12 K15 [""]
       67 SETTABLEKS                       R12 R11 K11 ["description"]
       69 GETTABLEKS                       R14 R8 K12 ["category"]
       71 FASTCALL1                        TYPEOF R14 ; [+2]
       72 GETIMPORT                        R13 K3 [typeof]
       74 CALL                             R13 1 1
       75 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+4]
       77 GETTABLEKS                       R12 R8 K12 ["category"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R12
       81 SETTABLEKS                       R12 R11 K12 ["category"]
       83 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       85 MOVE                             R10 R2
       86 GETIMPORT                        R9 K9 [table.insert]
       88 CALL                             R9 2 0
       89 FORGLOOP                         R4 2 ; [-77]
       91 SETTABLEKS                       R2 R0 K16 ["_permissions"]
       93 SETTABLEKS                       R3 R0 K17 ["_forcedKeys"]
       95 GETTABLEKS                       R4 R0 K0 ["_bridge"]
       97 NAMECALL                         R4 R4 K18 ["GetPermissionCategoriesAsync"]
       99 CALL                             R4 1 1
      100 NEWTABLE                         R5 0 0
      102 MOVE                             R6 R4
      103 LOADNIL                          R7
      104 LOADNIL                          R8
      105 FORGPREP                         R6
      106 FASTCALL1                        TYPEOF R10 ; [+3]
      107 MOVE                             R12 R10
      108 GETIMPORT                        R11 K3 [typeof]
      110 CALL                             R11 1 1
      111 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+59]
      113 GETTABLEKS                       R11 R10 K5 ["key"]
      115 JUMPIFNOT                        R11 ; [+55]
      116 GETTABLEKS                       R13 R10 K19 ["icon"]
      118 FASTCALL1                        TYPEOF R13 ; [+2]
      119 GETIMPORT                        R12 K3 [typeof]
      121 CALL                             R12 1 1
      122 JUMPIFNOTEQKS                    R12 K14 ["string"] ; [+4]
      124 GETTABLEKS                       R11 R10 K19 ["icon"]
      126 JUMP                             ; [+1]
      127 LOADK                            R11 K15 [""]
      128 DUPTABLE                         R14 K20 [{"key", "name", "description", "icon"}]
      129 GETTABLEKS                       R15 R10 K5 ["key"]
      131 SETTABLEKS                       R15 R14 K5 ["key"]
      133 GETTABLEKS                       R15 R10 K10 ["name"]
      135 JUMPIF                           R15 ; [+2]
      136 GETTABLEKS                       R15 R10 K5 ["key"]
      138 SETTABLEKS                       R15 R14 K10 ["name"]
      140 GETTABLEKS                       R17 R10 K11 ["description"]
      142 FASTCALL1                        TYPEOF R17 ; [+2]
      143 GETIMPORT                        R16 K3 [typeof]
      145 CALL                             R16 1 1
      146 JUMPIFNOTEQKS                    R16 K14 ["string"] ; [+4]
      148 GETTABLEKS                       R15 R10 K11 ["description"]
      150 JUMP                             ; [+1]
      151 LOADK                            R15 K15 [""]
      152 SETTABLEKS                       R15 R14 K11 ["description"]
      154 JUMPIFEQKS                       R11 K15 [""] ; [+3]
      156 MOVE                             R15 R11
      157 JUMP                             ; [+5]
      158 GETUPVAL                         R17 2
      159 GETTABLEKS                       R18 R10 K5 ["key"]
      161 GETTABLE                         R16 R17 R18
      162 ORK                              R15 R16 K15 [""]
      163 SETTABLEKS                       R15 R14 K19 ["icon"]
      165 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      167 MOVE                             R13 R5
      168 GETIMPORT                        R12 K9 [table.insert]
      170 CALL                             R12 2 0
      171 FORGLOOP                         R6 2 ; [-66]
      173 SETTABLEKS                       R5 R0 K21 ["_categories"]
      175 GETTABLEKS                       R6 R0 K0 ["_bridge"]
      177 NAMECALL                         R6 R6 K22 ["GetPresetsAsync"]
      179 CALL                             R6 1 1
      180 NEWTABLE                         R7 0 0
      182 MOVE                             R8 R6
      183 LOADNIL                          R9
      184 LOADNIL                          R10
      185 FORGPREP                         R8
      186 FASTCALL1                        TYPEOF R12 ; [+3]
      187 MOVE                             R14 R12
      188 GETIMPORT                        R13 K3 [typeof]
      190 CALL                             R13 1 1
      191 JUMPIFNOTEQKS                    R13 K4 ["table"] ; [+44]
      193 GETTABLEKS                       R13 R12 K23 ["id"]
      195 JUMPIFNOT                        R13 ; [+40]
      196 DUPTABLE                         R15 K25 [{"id", "name", "description", "isSelectable"}]
      197 GETTABLEKS                       R16 R12 K23 ["id"]
      199 SETTABLEKS                       R16 R15 K23 ["id"]
      201 GETTABLEKS                       R16 R12 K10 ["name"]
      203 JUMPIF                           R16 ; [+2]
      204 GETTABLEKS                       R16 R12 K23 ["id"]
      206 SETTABLEKS                       R16 R15 K10 ["name"]
      208 GETTABLEKS                       R18 R12 K11 ["description"]
      210 FASTCALL1                        TYPEOF R18 ; [+2]
      211 GETIMPORT                        R17 K3 [typeof]
      213 CALL                             R17 1 1
      214 JUMPIFNOTEQKS                    R17 K14 ["string"] ; [+4]
      216 GETTABLEKS                       R16 R12 K11 ["description"]
      218 JUMP                             ; [+1]
      219 LOADK                            R16 K15 [""]
      220 SETTABLEKS                       R16 R15 K11 ["description"]
      222 GETTABLEKS                       R17 R12 K23 ["id"]
      224 JUMPIFNOTEQKS                    R17 K26 ["custom"] ; [+2]
      226 LOADB                            R16 0 +1
      227 LOADB                            R16 1
      228 SETTABLEKS                       R16 R15 K24 ["isSelectable"]
      230 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      232 MOVE                             R14 R7
      233 GETIMPORT                        R13 K9 [table.insert]
      235 CALL                             R13 2 0
      236 FORGLOOP                         R8 2 ; [-51]
      238 SETTABLEKS                       R7 R0 K27 ["_presets"]
      240 NEWTABLE                         R8 0 0
      242 GETUPVAL                         R9 0
      243 GETTABLEKS                       R9 R9 K6 ["FFlagStudioAssistantPermissionsHideNetwork"]
      245 JUMPIFNOT                        R9 ; [+40]
      246 LENGTH                           R9 R3
      247 LOADN                            R10 0
      248 JUMPIFNOTLT                      R10 R9 ; [+37]
      250 MOVE                             R9 R7
      251 LOADNIL                          R10
      252 LOADNIL                          R11
      253 FORGPREP                         R9
      254 GETTABLEKS                       R14 R13 K24 ["isSelectable"]
      256 JUMPIFNOT                        R14 ; [+27]
      257 GETTABLEKS                       R14 R0 K0 ["_bridge"]
      259 GETTABLEKS                       R16 R13 K23 ["id"]
      261 NAMECALL                         R14 R14 K28 ["GetPresetPermissionsAsync"]
      263 CALL                             R14 2 1
      264 NEWTABLE                         R15 0 0
      266 MOVE                             R16 R14
      267 LOADNIL                          R17
      268 LOADNIL                          R18
      269 FORGPREP                         R16
      270 FASTCALL1                        TYPEOF R20 ; [+3]
      271 MOVE                             R22 R20
      272 GETIMPORT                        R21 K3 [typeof]
      274 CALL                             R21 1 1
      275 JUMPIFNOTEQKS                    R21 K14 ["string"] ; [+3]
      277 LOADB                            R21 1
      278 SETTABLE                         R21 R15 R20
      279 FORGLOOP                         R16 2 ; [-10]
      281 GETTABLEKS                       R16 R13 K23 ["id"]
      283 SETTABLE                         R15 R8 R16
      284 FORGLOOP                         R9 2 ; [-31]
      286 SETTABLEKS                       R8 R0 K29 ["_presetAcceptedSets"]
      288 NAMECALL                         R9 R0 K30 ["_syncFromBridge"]
      290 CALL                             R9 1 0
      291 GETUPVAL                         R9 0
      292 GETTABLEKS                       R9 R9 K6 ["FFlagStudioAssistantPermissionsHideNetwork"]
      294 JUMPIFNOT                        R9 ; [+3]
      295 NAMECALL                         R9 R0 K31 ["_grantForcedPermissionsAsync"]
      297 CALL                             R9 1 0
      298 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagStudioAssistantPermissionsHideNetwork"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["_grantForcedPermissionsAsync requires FFlagStudioAssistantPermissionsHideNetwork"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K4 ["_forcedKeys"]
       11 LENGTH                           R1 R2
       12 JUMPIFNOTEQKN                    R1 K5 [0] ; [+2]
       14 RETURN                           R0 0
       15 GETIMPORT                        R1 K7 [pcall]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K8 ["grantAsync"]
       20 GETTABLEKS                       R3 R0 K9 ["_bridge"]
       22 CALL                             R1 2 2
       23 JUMPIF                           R1 ; [+13]
       24 GETIMPORT                        R3 K11 [warn]
       26 LOADK                            R4 K12 ["[Assistant] Failed to grant forced execution permissions: %*"]
       27 FASTCALL1                        TOSTRING R2 ; [+3]
       28 MOVE                             R7 R2
       29 GETIMPORT                        R6 K14 [tostring]
       31 CALL                             R6 1 1
       32 NAMECALL                         R4 R4 K15 ["format"]
       34 CALL                             R4 2 1
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 JUMPIFNOT                        R2 ; [+3]
       38 NAMECALL                         R3 R0 K16 ["_syncFromBridge"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_permissions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K5 [{"key", "name", "description", "enabled"}]
        8 GETTABLEKS                       R10 R6 K1 ["key"]
       10 SETTABLEKS                       R10 R9 K1 ["key"]
       12 GETTABLEKS                       R10 R6 K2 ["name"]
       14 SETTABLEKS                       R10 R9 K2 ["name"]
       16 GETTABLEKS                       R10 R6 K3 ["description"]
       18 SETTABLEKS                       R10 R9 K3 ["description"]
       20 GETTABLEKS                       R12 R0 K7 ["_pendingValues"]
       22 GETTABLEKS                       R13 R6 K1 ["key"]
       24 GETTABLE                         R11 R12 R13
       25 ORK                              R10 R11 K6 [False]
       26 SETTABLEKS                       R10 R9 K4 ["enabled"]
       28 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       30 MOVE                             R8 R1
       31 GETIMPORT                        R7 K10 [table.insert]
       33 CALL                             R7 2 0
       34 FORGLOOP                         R2 2 ; [-28]
       36 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R4 K2 [string.lower]
        2 GETTABLEKS                       R5 R0 K3 ["name"]
        4 CALL                             R4 1 1
        5 MOVE                             R2 R4
        6 GETIMPORT                        R3 K2 [string.lower]
        8 GETTABLEKS                       R4 R1 K3 ["name"]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQ                      R2 R3 ; [+10]
       13 GETTABLEKS                       R5 R0 K4 ["key"]
       15 GETTABLEKS                       R6 R1 K4 ["key"]
       17 JUMPIFLT                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1
       22 JUMPIFLT                         R2 R3 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 RETURN                           R4 1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["_permissions"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R9 R7 K2 ["category"]
       11 ORK                              R8 R9 K1 [""]
       12 GETTABLE                         R9 R1 R8
       13 JUMPIF                           R9 ; [+10]
       14 NEWTABLE                         R9 0 0
       16 SETTABLE                         R9 R1 R8
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R11 R2
       20 MOVE                             R12 R8
       21 GETIMPORT                        R10 K5 [table.insert]
       23 CALL                             R10 2 0
       24 DUPTABLE                         R12 K10 [{"key", "name", "description", "enabled"}]
       25 GETTABLEKS                       R13 R7 K6 ["key"]
       27 SETTABLEKS                       R13 R12 K6 ["key"]
       29 GETTABLEKS                       R13 R7 K7 ["name"]
       31 SETTABLEKS                       R13 R12 K7 ["name"]
       33 GETTABLEKS                       R13 R7 K8 ["description"]
       35 SETTABLEKS                       R13 R12 K8 ["description"]
       37 GETTABLEKS                       R15 R0 K12 ["_pendingValues"]
       39 GETTABLEKS                       R16 R7 K6 ["key"]
       41 GETTABLE                         R14 R15 R16
       42 ORK                              R13 R14 K11 [False]
       43 SETTABLEKS                       R13 R12 K9 ["enabled"]
       45 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       47 MOVE                             R11 R9
       48 GETIMPORT                        R10 K5 [table.insert]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R3 2 ; [-43]
       53 DUPCLOSURE                       R3 K13 [PROTO_11]
       54 MOVE                             R4 R1
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 GETIMPORT                        R9 K15 [table.sort]
       60 MOVE                             R10 R8
       61 MOVE                             R11 R3
       62 CALL                             R9 2 0
       63 FORGLOOP                         R4 2 ; [-6]
       65 NEWTABLE                         R4 0 0
       67 NEWTABLE                         R5 0 0
       69 GETTABLEKS                       R6 R0 K16 ["_categories"]
       71 LOADNIL                          R7
       72 LOADNIL                          R8
       73 FORGPREP                         R6
       74 GETTABLEKS                       R12 R10 K6 ["key"]
       76 GETTABLE                         R11 R1 R12
       77 JUMPIFNOT                        R11 ; [+33]
       78 LENGTH                           R12 R11
       79 LOADN                            R13 0
       80 JUMPIFNOTLT                      R13 R12 ; [+30]
       82 DUPTABLE                         R14 K19 [{"key", "name", "description", "icon", "permissions"}]
       83 GETTABLEKS                       R15 R10 K6 ["key"]
       85 SETTABLEKS                       R15 R14 K6 ["key"]
       87 GETTABLEKS                       R15 R10 K7 ["name"]
       89 SETTABLEKS                       R15 R14 K7 ["name"]
       91 GETTABLEKS                       R15 R10 K8 ["description"]
       93 SETTABLEKS                       R15 R14 K8 ["description"]
       95 GETTABLEKS                       R15 R10 K17 ["icon"]
       97 SETTABLEKS                       R15 R14 K17 ["icon"]
       99 SETTABLEKS                       R11 R14 K18 ["permissions"]
      101 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
      103 MOVE                             R13 R4
      104 GETIMPORT                        R12 K5 [table.insert]
      106 CALL                             R12 2 0
      107 GETTABLEKS                       R12 R10 K6 ["key"]
      109 LOADB                            R13 1
      110 SETTABLE                         R13 R5 R12
      111 FORGLOOP                         R6 2 ; [-38]
      113 MOVE                             R6 R2
      114 LOADNIL                          R7
      115 LOADNIL                          R8
      116 FORGPREP                         R6
      117 GETTABLE                         R11 R1 R10
      118 GETTABLE                         R12 R5 R10
      119 JUMPIF                           R12 ; [+28]
      120 JUMPIFNOT                        R11 ; [+27]
      121 LENGTH                           R12 R11
      122 LOADN                            R13 0
      123 JUMPIFNOTLT                      R13 R12 ; [+24]
      125 JUMPIFNOTEQKS                    R10 K1 [""] ; [+8]
      127 GETUPVAL                         R12 0
      128 LOADK                            R14 K20 ["Permissions"]
      129 LOADK                            R15 K21 ["UncategorizedCategory"]
      130 NAMECALL                         R12 R12 K22 ["getText"]
      132 CALL                             R12 3 1
      133 JUMP                             ; [+1]
      134 MOVE                             R12 R10
      135 DUPTABLE                         R15 K23 [{["key"], ["name"], ["description"] = "", ["icon"] = "", ["permissions"]}]
      136 SETTABLEKS                       R10 R15 K6 ["key"]
      138 SETTABLEKS                       R12 R15 K7 ["name"]
      140 SETTABLEKS                       R11 R15 K18 ["permissions"]
      142 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      144 MOVE                             R14 R4
      145 GETIMPORT                        R13 K5 [table.insert]
      147 CALL                             R13 2 0
      148 FORGLOOP                         R6 2 ; [-32]
      150 RETURN                           R4 1

PROTO_13:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_presets"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingPreset"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_pendingValuesVersion"]
        2 ADDK                             R3 R3 K1 [1]
        3 SETTABLEKS                       R3 R0 K0 ["_pendingValuesVersion"]
        5 GETTABLEKS                       R2 R0 K0 ["_pendingValuesVersion"]
        7 GETTABLEKS                       R3 R0 K2 ["_bridge"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K3 ["GetPresetPermissionsAsync"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R0 K0 ["_pendingValuesVersion"]
       15 JUMPIFEQ                         R4 R2 ; [+2]
       17 RETURN                           R0 0
       18 NEWTABLE                         R4 0 0
       20 MOVE                             R5 R3
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 FASTCALL1                        TYPEOF R9 ; [+3]
       25 MOVE                             R11 R9
       26 GETIMPORT                        R10 K5 [typeof]
       28 CALL                             R10 1 1
       29 JUMPIFNOTEQKS                    R10 K6 ["string"] ; [+3]
       31 LOADB                            R10 1
       32 SETTABLE                         R10 R4 R9
       33 FORGLOOP                         R5 2 ; [-10]
       35 NEWTABLE                         R5 0 0
       37 GETTABLEKS                       R6 R0 K7 ["_permissions"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETTABLEKS                       R11 R10 K8 ["key"]
       44 GETTABLEKS                       R14 R10 K8 ["key"]
       46 GETTABLE                         R13 R4 R14
       47 JUMPIFEQKB                       R13 TRUE ; [+2]
       49 LOADB                            R12 0 +1
       50 LOADB                            R12 1
       51 SETTABLE                         R12 R5 R11
       52 FORGLOOP                         R6 2 ; [-11]
       54 SETTABLEKS                       R5 R0 K9 ["_pendingValues"]
       56 SETTABLEKS                       R1 R0 K10 ["_pendingPreset"]
       58 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_pendingValues"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQ                      R3 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K0 ["_pendingValues"]
        8 SETTABLE                         R2 R3 R1
        9 GETTABLEKS                       R3 R0 K1 ["_pendingValuesVersion"]
       11 ADDK                             R3 R3 K2 [1]
       12 SETTABLEKS                       R3 R0 K1 ["_pendingValuesVersion"]
       14 GETTABLEKS                       R3 R0 K1 ["_pendingValuesVersion"]
       16 LOADK                            R3 K3 ["custom"]
       17 SETTABLEKS                       R3 R0 K4 ["_pendingPreset"]
       19 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_permissions"]
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R10 R8 K2 ["category"]
        8 ORK                              R9 R10 K1 [""]
        9 JUMPIFNOTEQ                      R9 R1 ; [+14]
       11 GETTABLEKS                       R10 R0 K3 ["_pendingValues"]
       13 GETTABLEKS                       R11 R8 K4 ["key"]
       15 GETTABLE                         R9 R10 R11
       16 JUMPIFEQ                         R9 R2 ; [+7]
       18 GETTABLEKS                       R9 R0 K3 ["_pendingValues"]
       20 GETTABLEKS                       R10 R8 K4 ["key"]
       22 SETTABLE                         R2 R9 R10
       23 LOADB                            R3 1
       24 FORGLOOP                         R4 2 ; [-19]
       26 JUMPIFNOT                        R3 ; [+10]
       27 GETTABLEKS                       R4 R0 K5 ["_pendingValuesVersion"]
       29 ADDK                             R4 R4 K6 [1]
       30 SETTABLEKS                       R4 R0 K5 ["_pendingValuesVersion"]
       32 GETTABLEKS                       R4 R0 K5 ["_pendingValuesVersion"]
       34 LOADK                            R4 K7 ["custom"]
       35 SETTABLEKS                       R4 R0 K8 ["_pendingPreset"]
       37 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_pendingDomains"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 ["^%s*(.-)%s*$"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 LENGTH                           R3 R2
        7 JUMPIFNOTEQKN                    R3 K4 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K5 ["_pendingDomains"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 JUMPIFNOTEQ                      R7 R2 ; [+2]
       17 RETURN                           R0 0
       18 FORGLOOP                         R3 2 ; [-4]
       20 GETTABLEKS                       R4 R0 K5 ["_pendingDomains"]
       22 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       24 MOVE                             R5 R2
       25 GETIMPORT                        R3 K8 [table.insert]
       27 CALL                             R3 2 0
       28 LOADK                            R3 K9 ["custom"]
       29 SETTABLEKS                       R3 R0 K10 ["_pendingPreset"]
       31 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_pendingDomains"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+11]
        7 GETIMPORT                        R7 K3 [table.remove]
        9 GETTABLEKS                       R8 R0 K0 ["_pendingDomains"]
       11 MOVE                             R9 R5
       12 CALL                             R7 2 0
       13 LOADK                            R7 K4 ["custom"]
       14 SETTABLEKS                       R7 R0 K5 ["_pendingPreset"]
       16 RETURN                           R0 0
       17 FORGLOOP                         R2 2 ; [-13]
       19 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_bridge"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["SavePermissionsAsync"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_saving"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["_saveFailed"]
        7 NAMECALL                         R1 R0 K2 ["hasUnsavedChanges"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K5 [table.clone]
       14 GETTABLEKS                       R2 R0 K6 ["_pendingValues"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K5 [table.clone]
       19 GETTABLEKS                       R3 R0 K7 ["_pendingDomains"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R0 K8 ["_pendingPreset"]
       24 NEWTABLE                         R4 0 0
       26 GETTABLEKS                       R5 R0 K9 ["_permissions"]
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R11 R9 K10 ["key"]
       33 GETTABLE                         R10 R1 R11
       34 JUMPIFNOT                        R10 ; [+8]
       35 GETTABLEKS                       R12 R9 K10 ["key"]
       37 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       39 MOVE                             R11 R4
       40 GETIMPORT                        R10 K12 [table.insert]
       42 CALL                             R10 2 0
       43 FORGLOOP                         R5 2 ; [-13]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K13 ["FFlagStudioAssistantPermissionsHideNetwork"]
       48 JUMPIFNOT                        R5 ; [+14]
       49 GETTABLEKS                       R5 R0 K14 ["_forcedKeys"]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       56 MOVE                             R11 R4
       57 MOVE                             R12 R9
       58 GETIMPORT                        R10 K12 [table.insert]
       60 CALL                             R10 2 0
       61 FORGLOOP                         R5 2 ; [-8]
       63 LOADB                            R5 1
       64 SETTABLEKS                       R5 R0 K0 ["_saving"]
       66 GETIMPORT                        R5 K16 [pcall]
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 CALL                             R5 1 2
       73 LOADB                            R7 0
       74 SETTABLEKS                       R7 R0 K0 ["_saving"]
       76 JUMPIFNOT                        R5 ; [+85]
       77 JUMPIFNOTEQKB                    R6 TRUE ; [+84]
       79 NAMECALL                         R7 R0 K17 ["_readCommittedFromBridge"]
       81 CALL                             R7 1 0
       82 GETTABLEKS                       R8 R0 K6 ["_pendingValues"]
       84 MOVE                             R9 R8
       85 LOADNIL                          R10
       86 LOADNIL                          R11
       87 FORGPREP                         R9
       88 GETTABLE                         R14 R1 R12
       89 JUMPIFEQ                         R14 R13 ; [+3]
       91 LOADB                            R7 0
       92 JUMP                             ; [+14]
       93 FORGLOOP                         R9 2 ; [-6]
       95 MOVE                             R9 R1
       96 LOADNIL                          R10
       97 LOADNIL                          R11
       98 FORGPREP                         R9
       99 GETTABLE                         R14 R8 R12
      100 JUMPIFEQ                         R14 R13 ; [+3]
      102 LOADB                            R7 0
      103 JUMP                             ; [+3]
      104 FORGLOOP                         R9 2 ; [-6]
      106 LOADB                            R7 1
      107 JUMPIFNOT                        R7 ; [+27]
      108 GETTABLEKS                       R8 R0 K7 ["_pendingDomains"]
      110 LENGTH                           R9 R8
      111 LENGTH                           R10 R2
      112 JUMPIFEQ                         R9 R10 ; [+3]
      114 LOADB                            R7 0
      115 JUMP                             ; [+12]
      116 LOADN                            R11 1
      117 LENGTH                           R9 R8
      118 LOADN                            R10 1
      119 FORNPREP                         R9
      120 GETTABLE                         R12 R8 R11
      121 GETTABLE                         R13 R2 R11
      122 JUMPIFEQ                         R12 R13 ; [+3]
      124 LOADB                            R7 0
      125 JUMP                             ; [+2]
      126 FORNLOOP                         R9
      127 LOADB                            R7 1
      128 JUMPIFNOT                        R7 ; [+6]
      129 GETTABLEKS                       R8 R0 K8 ["_pendingPreset"]
      131 JUMPIFEQ                         R8 R3 ; [+2]
      133 LOADB                            R7 0 +1
      134 LOADB                            R7 1
      135 JUMPIFNOT                        R7 ; [+29]
      136 GETIMPORT                        R8 K5 [table.clone]
      138 GETTABLEKS                       R9 R0 K18 ["_committedValues"]
      140 CALL                             R8 1 1
      141 SETTABLEKS                       R8 R0 K6 ["_pendingValues"]
      143 GETTABLEKS                       R8 R0 K19 ["_pendingValuesVersion"]
      145 ADDK                             R8 R8 K20 [1]
      146 SETTABLEKS                       R8 R0 K19 ["_pendingValuesVersion"]
      148 GETTABLEKS                       R8 R0 K19 ["_pendingValuesVersion"]
      150 GETIMPORT                        R8 K5 [table.clone]
      152 GETTABLEKS                       R9 R0 K21 ["_committedDomains"]
      154 CALL                             R8 1 1
      155 SETTABLEKS                       R8 R0 K7 ["_pendingDomains"]
      157 GETTABLEKS                       R8 R0 K22 ["_committedPreset"]
      159 SETTABLEKS                       R8 R0 K8 ["_pendingPreset"]
      161 RETURN                           R0 0
      162 LOADB                            R7 1
      163 SETTABLEKS                       R7 R0 K1 ["_saveFailed"]
      165 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_committedValues"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_pendingValues"]
        7 GETTABLEKS                       R1 R0 K5 ["_pendingValuesVersion"]
        9 ADDK                             R1 R1 K6 [1]
       10 SETTABLEKS                       R1 R0 K5 ["_pendingValuesVersion"]
       12 GETTABLEKS                       R1 R0 K5 ["_pendingValuesVersion"]
       14 GETIMPORT                        R1 K2 [table.clone]
       16 GETTABLEKS                       R2 R0 K7 ["_committedDomains"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K8 ["_pendingDomains"]
       21 GETTABLEKS                       R1 R0 K9 ["_committedPreset"]
       23 SETTABLEKS                       R1 R0 K10 ["_pendingPreset"]
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K11 ["_saveFailed"]
       28 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_saveFailed"]
        2 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_saving"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingPreset"]
        2 GETTABLEKS                       R2 R0 K1 ["_committedPreset"]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K2 ["_pendingValues"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R7 R0 K3 ["_committedValues"]
       15 GETTABLE                         R6 R7 R4
       16 JUMPIFEQ                         R5 R6 ; [+3]
       18 LOADB                            R6 1
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 ; [-8]
       22 GETTABLEKS                       R2 R0 K4 ["_pendingDomains"]
       24 GETTABLEKS                       R3 R0 K5 ["_committedDomains"]
       26 LENGTH                           R4 R2
       27 LENGTH                           R5 R3
       28 JUMPIFEQ                         R4 R5 ; [+3]
       30 LOADB                            R1 0
       31 JUMP                             ; [+12]
       32 LOADN                            R6 1
       33 LENGTH                           R4 R2
       34 LOADN                            R5 1
       35 FORNPREP                         R4
       36 GETTABLE                         R7 R2 R6
       37 GETTABLE                         R8 R3 R6
       38 JUMPIFEQ                         R7 R8 ; [+3]
       40 LOADB                            R1 0
       41 JUMP                             ; [+2]
       42 FORNLOOP                         R4
       43 LOADB                            R1 1
       44 JUMPIF                           R1 ; [+2]
       45 LOADB                            R1 1
       46 RETURN                           R1 1
       47 LOADB                            R1 0
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["IntegrationManagement"]
       18 GETTABLEKS                       R3 R3 K9 ["ForcedExecutionPermissions"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Resources"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R4 R4 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K15 ["Enums"]
       39 GETTABLEKS                       R5 R5 K16 ["IconName"]
       41 NEWTABLE                         R6 1 0
       43 NEWTABLE                         R7 16 0
       45 GETTABLEKS                       R8 R5 K17 ["Eye"]
       47 SETTABLEKS                       R8 R7 K18 ["look-at-your-game"]
       49 GETTABLEKS                       R8 R5 K19 ["Pencil"]
       51 SETTABLEKS                       R8 R7 K20 ["edit-your-game"]
       53 GETTABLEKS                       R8 R5 K21 ["TwoPeople"]
       55 SETTABLEKS                       R8 R7 K22 ["players-and-social"]
       57 GETTABLEKS                       R8 R5 K23 ["FloppyDisk"]
       59 SETTABLEKS                       R8 R7 K24 ["save-and-load-data"]
       61 GETTABLEKS                       R8 R5 K25 ["GlobeSimplified"]
       63 SETTABLEKS                       R8 R7 K26 ["connect-to-the-internet"]
       65 GETTABLEKS                       R8 R5 K27 ["Cloud"]
       67 SETTABLEKS                       R8 R7 K28 ["publish-and-manage-assets"]
       69 GETTABLEKS                       R8 R5 K29 ["Robux"]
       71 SETTABLEKS                       R8 R7 K30 ["money-and-monetization"]
       73 GETTABLEKS                       R8 R5 K31 ["PersonCircleSlash"]
       75 SETTABLEKS                       R8 R7 K32 ["player-consequences"]
       77 GETTABLEKS                       R8 R5 K33 ["ShieldLock"]
       79 SETTABLEKS                       R8 R7 K34 ["security-and-credentials"]
       81 NEWTABLE                         R8 32 0
       83 SETTABLEKS                       R8 R8 K35 ["__index"]
       85 DUPCLOSURE                       R9 K36 [PROTO_0]
       86 DUPCLOSURE                       R10 K37 [PROTO_1]
       87 DUPCLOSURE                       R11 K38 [PROTO_2]
       88 DUPCLOSURE                       R12 K39 [PROTO_3]
       89 CAPTURE                          VAL R8
       90 SETTABLEKS                       R12 R8 K40 ["new"]
       92 DUPCLOSURE                       R12 K41 [PROTO_4]
       93 SETTABLEKS                       R12 R8 K42 ["_readPermissionStates"]
       95 DUPCLOSURE                       R12 K43 [PROTO_5]
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R12 R8 K44 ["_readCommittedFromBridge"]
       99 DUPCLOSURE                       R12 K45 [PROTO_6]
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R12 R8 K46 ["_derivePreset"]
      103 DUPCLOSURE                       R12 K47 [PROTO_7]
      104 SETTABLEKS                       R12 R8 K48 ["_syncFromBridge"]
      106 DUPCLOSURE                       R12 K49 [PROTO_8]
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R12 R8 K50 ["loadAsync"]
      112 DUPCLOSURE                       R12 K51 [PROTO_9]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R12 R8 K52 ["_grantForcedPermissionsAsync"]
      117 DUPCLOSURE                       R12 K53 [PROTO_10]
      118 SETTABLEKS                       R12 R8 K54 ["getCapabilities"]
      120 DUPCLOSURE                       R12 K55 [PROTO_12]
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R12 R8 K56 ["getCategories"]
      124 DUPCLOSURE                       R12 K57 [PROTO_13]
      125 SETTABLEKS                       R12 R8 K58 ["getPresets"]
      127 DUPCLOSURE                       R12 K59 [PROTO_14]
      128 SETTABLEKS                       R12 R8 K60 ["getSelectedPreset"]
      130 DUPCLOSURE                       R12 K61 [PROTO_15]
      131 SETTABLEKS                       R12 R8 K62 ["setPreset"]
      133 DUPCLOSURE                       R12 K63 [PROTO_16]
      134 SETTABLEKS                       R12 R8 K64 ["setPendingValue"]
      136 DUPCLOSURE                       R12 K65 [PROTO_17]
      137 SETTABLEKS                       R12 R8 K66 ["setCategoryValue"]
      139 DUPCLOSURE                       R12 K67 [PROTO_18]
      140 SETTABLEKS                       R12 R8 K68 ["getHttpDomains"]
      142 DUPCLOSURE                       R12 K69 [PROTO_19]
      143 SETTABLEKS                       R12 R8 K70 ["addHttpDomain"]
      145 DUPCLOSURE                       R12 K71 [PROTO_20]
      146 SETTABLEKS                       R12 R8 K72 ["removeHttpDomain"]
      148 DUPCLOSURE                       R12 K73 [PROTO_22]
      149 CAPTURE                          VAL R1
      150 SETTABLEKS                       R12 R8 K74 ["save"]
      152 DUPCLOSURE                       R12 K75 [PROTO_23]
      153 SETTABLEKS                       R12 R8 K76 ["revert"]
      155 DUPCLOSURE                       R12 K77 [PROTO_24]
      156 SETTABLEKS                       R12 R8 K78 ["hasSaveFailed"]
      158 DUPCLOSURE                       R12 K79 [PROTO_25]
      159 SETTABLEKS                       R12 R8 K80 ["isSaving"]
      161 DUPCLOSURE                       R12 K81 [PROTO_26]
      162 SETTABLEKS                       R12 R8 K82 ["hasUnsavedChanges"]
      164 SETTABLEKS                       R8 R6 K83 ["AssistantExecutionPermissionsModel"]
      166 RETURN                           R6 1
