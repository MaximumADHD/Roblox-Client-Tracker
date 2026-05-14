PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Should never call the temporary setAvatarPreset function"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETIMPORT                        R3 K3 [Enum.GameAvatarType.R15]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["createInvokeArgs"]
        8 MOVE                             R5 R0
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K5 ["avatarType"]
       12 CALL                             R4 2 -1
       13 CALL                             R2 -1 1
       14 SETTABLEKS                       R2 R1 K5 ["avatarType"]
       16 DUPCLOSURE                       R2 K6 [PROTO_0]
       17 SETTABLEKS                       R2 R1 K7 ["setAvatarPreset"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K8 ["useState"]
       22 LOADB                            R3 0
       23 CALL                             R2 1 2
       24 SETTABLEKS                       R2 R1 K9 ["previewToggled"]
       26 SETTABLEKS                       R3 R1 K10 ["setPreviewToggled"]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 JUMPIF                           R1 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["currentSettingsPage"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K1 ["Invoke"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 [196.2]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["use"]
        6 CALL                             R2 1 1
        7 NAMECALL                         R2 R2 K2 ["get"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["useState"]
       13 LOADK                            R4 K4 ["General"]
       14 CALL                             R3 1 2
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U3
       19 DUPTABLE                         R6 K6 [{"settings"}]
       20 DUPTABLE                         R7 K17 [{"workspaceGravity", "navigationBarSettings", "currentSettingsPage", "setCurrentSettingsPage", "categoryListExpanded", "bodySettings", "movementSettings", "animationSettings", "accessoriesSettings", "clothingSettings"}]
       21 SETTABLEKS                       R1 R7 K7 ["workspaceGravity"]
       23 GETUPVAL                         R8 4
       24 MOVE                             R9 R2
       25 CALL                             R8 1 1
       26 SETTABLEKS                       R8 R7 K8 ["navigationBarSettings"]
       28 SETTABLEKS                       R3 R7 K9 ["currentSettingsPage"]
       30 SETTABLEKS                       R5 R7 K10 ["setCurrentSettingsPage"]
       32 GETUPVAL                         R8 5
       33 LOADB                            R9 0
       34 CALL                             R8 1 1
       35 SETTABLEKS                       R8 R7 K11 ["categoryListExpanded"]
       37 GETUPVAL                         R8 6
       38 MOVE                             R9 R2
       39 CALL                             R8 1 1
       40 SETTABLEKS                       R8 R7 K12 ["bodySettings"]
       42 GETUPVAL                         R8 7
       43 MOVE                             R9 R2
       44 CALL                             R8 1 1
       45 SETTABLEKS                       R8 R7 K13 ["movementSettings"]
       47 GETUPVAL                         R8 8
       48 MOVE                             R9 R2
       49 CALL                             R8 1 1
       50 SETTABLEKS                       R8 R7 K14 ["animationSettings"]
       52 GETUPVAL                         R8 9
       53 MOVE                             R9 R2
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K15 ["accessoriesSettings"]
       57 GETUPVAL                         R8 10
       58 MOVE                             R9 R2
       59 CALL                             R8 1 1
       60 SETTABLEKS                       R8 R7 K16 ["clothingSettings"]
       62 SETTABLEKS                       R7 R6 K5 ["settings"]
       64 GETTABLEKS                       R9 R6 K5 ["settings"]
       66 JUMPIFNOTEQKNIL                  R9 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 FASTCALL2K                       ASSERT R8 K18 ; [+4]
       72 LOADK                            R9 K18 ["Settings must not be nil in AvatarSettingsContext"]
       73 GETIMPORT                        R7 K20 [assert]
       75 CALL                             R7 2 0
       76 GETTABLEKS                       R7 R6 K5 ["settings"]
       78 GETTABLEKS                       R7 R7 K8 ["navigationBarSettings"]
       80 GETUPVAL                         R8 11
       81 GETTABLEKS                       R8 R8 K21 ["createPresetTypeSetter"]
       83 MOVE                             R9 R6
       84 CALL                             R8 1 1
       85 SETTABLEKS                       R8 R7 K22 ["setAvatarPreset"]
       87 GETUPVAL                         R7 12
       88 MOVE                             R8 R6
       89 MOVE                             R9 R2
       90 CALL                             R7 2 0
       91 GETUPVAL                         R7 13
       92 MOVE                             R8 R6
       93 MOVE                             R9 R2
       94 CALL                             R7 2 0
       95 GETUPVAL                         R7 14
       96 MOVE                             R8 R6
       97 MOVE                             R9 R2
       98 CALL                             R7 2 0
       99 GETUPVAL                         R7 15
      100 MOVE                             R8 R6
      101 MOVE                             R9 R2
      102 CALL                             R7 2 0
      103 GETUPVAL                         R7 16
      104 MOVE                             R8 R6
      105 MOVE                             R9 R2
      106 CALL                             R7 2 0
      107 GETUPVAL                         R7 17
      108 MOVE                             R8 R6
      109 MOVE                             R9 R2
      110 CALL                             R7 2 0
      111 GETUPVAL                         R7 18
      112 MOVE                             R8 R6
      113 MOVE                             R9 R2
      114 CALL                             R7 2 0
      115 GETUPVAL                         R7 19
      116 MOVE                             R8 R6
      117 MOVE                             R9 R2
      118 CALL                             R7 2 0
      119 GETUPVAL                         R7 20
      120 GETUPVAL                         R8 21
      121 GETTABLEKS                       R8 R8 K23 ["Provider"]
      123 DUPTABLE                         R9 K25 [{"value"}]
      124 SETTABLEKS                       R6 R9 K24 ["value"]
      126 GETTABLEKS                       R10 R0 K26 ["children"]
      128 CALL                             R7 3 -1
      129 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsProviderTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R5 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Packages"]
       47 GETTABLEKS                       R6 R6 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K7 ["Util"]
       56 GETTABLEKS                       R7 R7 K16 ["InvokeKeys"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K7 ["Util"]
       65 GETTABLEKS                       R8 R8 K17 ["settingUtil"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K7 ["Util"]
       74 GETTABLEKS                       R9 R9 K18 ["BridgingFiles"]
       76 GETTABLEKS                       R9 R9 K19 ["StandaloneFiles"]
       78 GETTABLEKS                       R9 R9 K20 ["useConnectAccessoriesSettingInvokes"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K6 ["Src"]
       85 GETTABLEKS                       R10 R10 K7 ["Util"]
       87 GETTABLEKS                       R10 R10 K18 ["BridgingFiles"]
       89 GETTABLEKS                       R10 R10 K19 ["StandaloneFiles"]
       91 GETTABLEKS                       R10 R10 K21 ["useConnectAnimationSettingInvokes"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K5 [require]
       96 GETTABLEKS                       R11 R0 K6 ["Src"]
       98 GETTABLEKS                       R11 R11 K7 ["Util"]
      100 GETTABLEKS                       R11 R11 K18 ["BridgingFiles"]
      102 GETTABLEKS                       R11 R11 K19 ["StandaloneFiles"]
      104 GETTABLEKS                       R11 R11 K22 ["useConnectBodySettingInvokes"]
      106 CALL                             R10 1 1
      107 GETIMPORT                        R11 K5 [require]
      109 GETTABLEKS                       R12 R0 K6 ["Src"]
      111 GETTABLEKS                       R12 R12 K7 ["Util"]
      113 GETTABLEKS                       R12 R12 K18 ["BridgingFiles"]
      115 GETTABLEKS                       R12 R12 K19 ["StandaloneFiles"]
      117 GETTABLEKS                       R12 R12 K23 ["useConnectClothingSettingInvokes"]
      119 CALL                             R11 1 1
      120 GETIMPORT                        R12 K5 [require]
      122 GETTABLEKS                       R13 R0 K6 ["Src"]
      124 GETTABLEKS                       R13 R13 K7 ["Util"]
      126 GETTABLEKS                       R13 R13 K18 ["BridgingFiles"]
      128 GETTABLEKS                       R13 R13 K19 ["StandaloneFiles"]
      130 GETTABLEKS                       R13 R13 K24 ["useConnectGeneralInvokes"]
      132 CALL                             R12 1 1
      133 GETIMPORT                        R13 K5 [require]
      135 GETTABLEKS                       R14 R0 K6 ["Src"]
      137 GETTABLEKS                       R14 R14 K7 ["Util"]
      139 GETTABLEKS                       R14 R14 K18 ["BridgingFiles"]
      141 GETTABLEKS                       R14 R14 K19 ["StandaloneFiles"]
      143 GETTABLEKS                       R14 R14 K25 ["useConnectMovementSettingInvokes"]
      145 CALL                             R13 1 1
      146 GETIMPORT                        R14 K5 [require]
      148 GETTABLEKS                       R15 R0 K6 ["Src"]
      150 GETTABLEKS                       R15 R15 K7 ["Util"]
      152 GETTABLEKS                       R15 R15 K18 ["BridgingFiles"]
      154 GETTABLEKS                       R15 R15 K19 ["StandaloneFiles"]
      156 GETTABLEKS                       R15 R15 K26 ["useConnectPreviewFunctionalityInvokes"]
      158 CALL                             R14 1 1
      159 GETIMPORT                        R15 K5 [require]
      161 GETTABLEKS                       R16 R0 K6 ["Src"]
      163 GETTABLEKS                       R16 R16 K7 ["Util"]
      165 GETTABLEKS                       R16 R16 K18 ["BridgingFiles"]
      167 GETTABLEKS                       R16 R16 K19 ["StandaloneFiles"]
      169 GETTABLEKS                       R16 R16 K27 ["useConnectSyncBehavior"]
      171 CALL                             R15 1 1
      172 GETIMPORT                        R16 K5 [require]
      174 GETTABLEKS                       R17 R0 K6 ["Src"]
      176 GETTABLEKS                       R17 R17 K9 ["Components"]
      178 GETTABLEKS                       R17 R17 K28 ["AvatarSettingsProvider"]
      180 GETTABLEKS                       R17 R17 K29 ["useGetAccessoriesSettingStates"]
      182 CALL                             R16 1 1
      183 GETIMPORT                        R17 K5 [require]
      185 GETTABLEKS                       R18 R0 K6 ["Src"]
      187 GETTABLEKS                       R18 R18 K9 ["Components"]
      189 GETTABLEKS                       R18 R18 K28 ["AvatarSettingsProvider"]
      191 GETTABLEKS                       R18 R18 K30 ["useGetAnimationSettingStates"]
      193 CALL                             R17 1 1
      194 GETIMPORT                        R18 K5 [require]
      196 GETTABLEKS                       R19 R0 K6 ["Src"]
      198 GETTABLEKS                       R19 R19 K9 ["Components"]
      200 GETTABLEKS                       R19 R19 K28 ["AvatarSettingsProvider"]
      202 GETTABLEKS                       R19 R19 K31 ["useGetBodySettingStates"]
      204 CALL                             R18 1 1
      205 GETIMPORT                        R19 K5 [require]
      207 GETTABLEKS                       R20 R0 K6 ["Src"]
      209 GETTABLEKS                       R20 R20 K9 ["Components"]
      211 GETTABLEKS                       R20 R20 K28 ["AvatarSettingsProvider"]
      213 GETTABLEKS                       R20 R20 K32 ["useGetClothingSettingStates"]
      215 CALL                             R19 1 1
      216 GETIMPORT                        R20 K5 [require]
      218 GETTABLEKS                       R21 R0 K6 ["Src"]
      220 GETTABLEKS                       R21 R21 K9 ["Components"]
      222 GETTABLEKS                       R21 R21 K28 ["AvatarSettingsProvider"]
      224 GETTABLEKS                       R21 R21 K33 ["useGetMovementSettingStates"]
      226 CALL                             R20 1 1
      227 GETIMPORT                        R21 K5 [require]
      229 GETTABLEKS                       R22 R0 K6 ["Src"]
      231 GETTABLEKS                       R22 R22 K34 ["Hooks"]
      233 GETTABLEKS                       R22 R22 K35 ["useToggleState"]
      235 CALL                             R21 1 1
      236 GETTABLEKS                       R22 R4 K36 ["ContextServices"]
      238 GETTABLEKS                       R23 R22 K37 ["Plugin"]
      240 GETTABLEKS                       R24 R7 K38 ["useSetting"]
      242 GETTABLEKS                       R25 R5 K39 ["createElement"]
      244 DUPCLOSURE                       R26 K40 [PROTO_1]
      245 CAPTURE                          VAL R24
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R5
      249 DUPCLOSURE                       R27 K41 [PROTO_3]
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R5
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R21
      256 CAPTURE                          VAL R18
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R16
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R15
      263 CAPTURE                          VAL R12
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R13
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R8
      268 CAPTURE                          VAL R11
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R2
      272 RETURN                           R27 1
