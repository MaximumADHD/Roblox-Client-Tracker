PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Activation"]
        3 LOADB                            R2 0
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["_enabled"]
       11 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+7]
        1 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 ["PluginController.new() requires a plugin"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R3 K11 [{"_mock", "_plugin", "_store", "_session", "Activation", "Compact", "Focused", "PluginWidth"}]
        9 SETTABLEKS                       R1 R3 K3 ["_mock"]
       11 SETTABLEKS                       R0 R3 K4 ["_plugin"]
       13 NEWTABLE                         R4 4 0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K12 ["SelectionSettings"]
       18 NEWTABLE                         R6 4 0
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K13 ["Size"]
       23 LOADK                            R8 K14 [{64, 32, 64}]
       24 SETTABLE                         R8 R6 R7
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K15 ["SnapToVoxels"]
       28 LOADB                            R8 1
       29 SETTABLE                         R8 R6 R7
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R7 R8 K16 ["Transform"]
       33 GETIMPORT                        R8 K19 [CFrame.new]
       35 CALL                             R8 0 1
       36 SETTABLE                         R8 R6 R7
       37 SETTABLE                         R6 R4 R5
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K20 ["TransformSettings"]
       41 NEWTABLE                         R6 4 0
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K13 ["Size"]
       46 LOADK                            R8 K14 [{64, 32, 64}]
       47 SETTABLE                         R8 R6 R7
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K15 ["SnapToVoxels"]
       51 LOADB                            R8 1
       52 SETTABLE                         R8 R6 R7
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R7 R8 K16 ["Transform"]
       56 GETIMPORT                        R8 K19 [CFrame.new]
       58 CALL                             R8 0 1
       59 SETTABLE                         R8 R6 R7
       60 SETTABLE                         R6 R4 R5
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K21 ["BrushSettings"]
       64 NEWTABLE                         R6 4 0
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R7 R8 K22 ["ManualPlaneLock"]
       69 LOADB                            R8 0
       70 SETTABLE                         R8 R6 R7
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R7 R8 K23 ["PlaneLock"]
       74 GETUPVAL                         R9 4
       75 GETTABLEKS                       R8 R9 K24 ["Off"]
       77 SETTABLE                         R8 R6 R7
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R7 R8 K25 ["PlaneTransform"]
       81 GETIMPORT                        R8 K27 [CFrame.Angles]
       83 LOADK                            R9 K28 [1.5707963267949]
       84 LOADN                            R10 0
       85 LOADN                            R11 0
       86 CALL                             R8 3 1
       87 SETTABLE                         R8 R6 R7
       88 SETTABLE                         R6 R4 R5
       89 SETTABLEKS                       R4 R3 K5 ["_store"]
       91 NEWTABLE                         R4 4 0
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R5 R6 K29 ["BuildSettings"]
       96 GETUPVAL                         R7 5
       97 CALL                             R7 0 1
       98 JUMPIFNOT                        R7 ; [+10]
       99 NEWTABLE                         R6 1 0
      101 GETUPVAL                         R8 6
      102 GETTABLEKS                       R7 R8 K30 ["TerrainType"]
      104 GETUPVAL                         R9 7
      105 GETTABLEKS                       R8 R9 K31 ["None"]
      107 SETTABLE                         R8 R6 R7
      108 JUMP                             ; [+1]
      109 LOADNIL                          R6
      110 SETTABLE                         R6 R4 R5
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R5 R6 K21 ["BrushSettings"]
      114 NEWTABLE                         R6 0 0
      116 SETTABLE                         R6 R4 R5
      117 GETUPVAL                         R6 0
      118 GETTABLEKS                       R5 R6 K12 ["SelectionSettings"]
      120 NEWTABLE                         R6 0 0
      122 SETTABLE                         R6 R4 R5
      123 GETUPVAL                         R6 0
      124 GETTABLEKS                       R5 R6 K20 ["TransformSettings"]
      126 NEWTABLE                         R6 1 0
      128 GETUPVAL                         R8 2
      129 GETTABLEKS                       R7 R8 K32 ["TransformMode"]
      131 GETUPVAL                         R9 8
      132 GETTABLEKS                       R8 R9 K33 ["Move"]
      134 SETTABLE                         R8 R6 R7
      135 SETTABLE                         R6 R4 R5
      136 SETTABLEKS                       R4 R3 K6 ["_session"]
      138 GETUPVAL                         R5 9
      139 GETTABLEKS                       R4 R5 K18 ["new"]
      141 CALL                             R4 0 1
      142 SETTABLEKS                       R4 R3 K7 ["Activation"]
      144 GETUPVAL                         R5 9
      145 GETTABLEKS                       R4 R5 K18 ["new"]
      147 CALL                             R4 0 1
      148 SETTABLEKS                       R4 R3 K8 ["Compact"]
      150 GETUPVAL                         R5 9
      151 GETTABLEKS                       R4 R5 K18 ["new"]
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K9 ["Focused"]
      156 GETUPVAL                         R5 9
      157 GETTABLEKS                       R4 R5 K18 ["new"]
      159 CALL                             R4 0 1
      160 SETTABLEKS                       R4 R3 K10 ["PluginWidth"]
      162 GETUPVAL                         R4 10
      163 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
      165 GETIMPORT                        R2 K35 [setmetatable]
      167 CALL                             R2 2 1
      168 GETUPVAL                         R4 11
      169 GETTABLEKS                       R3 R4 K36 ["IsDebuggingSavedSettings"]
      171 JUMPIF                           R3 ; [+20]
      172 GETUPVAL                         R3 12
      173 GETTABLEKS                       R4 R2 K4 ["_plugin"]
      175 LOADK                            R6 K37 ["Global"]
      176 NAMECALL                         R4 R4 K38 ["GetSetting"]
      178 CALL                             R4 2 1
      179 JUMPIF                           R4 ; [+2]
      180 NEWTABLE                         R4 0 0
      182 CALL                             R3 1 1
      183 GETUPVAL                         R5 13
      184 GETTABLEKS                       R4 R5 K39 ["join"]
      186 GETTABLEKS                       R5 R2 K5 ["_store"]
      188 MOVE                             R6 R3
      189 CALL                             R4 2 1
      190 SETTABLEKS                       R4 R2 K5 ["_store"]
      192 GETTABLEKS                       R4 R2 K4 ["_plugin"]
      194 GETTABLEKS                       R3 R4 K40 ["Deactivation"]
      196 NEWCLOSURE                       R5 P0
      197 CAPTURE                          VAL R2
      198 NAMECALL                         R3 R3 K41 ["Connect"]
      200 CALL                             R3 2 1
      201 SETTABLEKS                       R3 R2 K42 ["_deactivationListener"]
      203 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_mock"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 LOADK                            R2 K1 ["Global"]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["_store"]
        8 CALL                             R3 1 -1
        9 NAMECALL                         R0 R0 K3 ["SetSetting"]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K4 ["_saveSettingsTask"]
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["GlobalPersistent"]
        3 JUMPIFNOTEQ                      R4 R6 ; [+4]
        5 GETTABLEKS                       R5 R0 K1 ["_store"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R5 R0 K2 ["_session"]
       10 GETTABLE                         R6 R5 R1
       11 SETTABLE                         R3 R6 R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K0 ["GlobalPersistent"]
       15 JUMPIFNOTEQ                      R4 R6 ; [+54]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K3 ["PlaneLock"]
       20 JUMPIFNOTEQ                      R2 R6 ; [+29]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K4 ["Manual"]
       25 JUMPIFNOTEQ                      R3 R6 ; [+24]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K5 ["CurrentCamera"]
       30 GETTABLEKS                       R6 R7 K6 ["CFrame"]
       32 GETIMPORT                        R7 K8 [CFrame.Angles]
       34 LOADK                            R8 K9 [1.5707963267949]
       35 LOADN                            R9 0
       36 LOADN                            R10 0
       37 CALL                             R7 3 1
       38 GETTABLEKS                       R9 R6 K10 ["Position"]
       40 GETTABLEKS                       R11 R6 K12 ["LookVector"]
       42 MULK                             R10 R11 K11 [64]
       43 ADD                              R8 R9 R10
       44 GETTABLE                         R9 R5 R1
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K13 ["PlaneTransform"]
       48 ADD                              R11 R7 R8
       49 SETTABLE                         R11 R9 R10
       50 GETTABLEKS                       R6 R0 K14 ["_saveSettingsTask"]
       52 JUMPIFNOT                        R6 ; [+8]
       53 GETIMPORT                        R6 K17 [task.cancel]
       55 GETTABLEKS                       R7 R0 K14 ["_saveSettingsTask"]
       57 CALL                             R6 1 0
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R0 K14 ["_saveSettingsTask"]
       61 GETIMPORT                        R6 K19 [task.delay]
       63 LOADN                            R7 1
       64 NEWCLOSURE                       R8 P0
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U4
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R0 K14 ["_saveSettingsTask"]
       70 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["GlobalPersistent"]
        3 JUMPIFNOTEQ                      R3 R5 ; [+4]
        5 GETTABLEKS                       R4 R0 K1 ["_store"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R4 R0 K2 ["_session"]
       10 GETTABLE                         R6 R4 R1
       11 GETTABLE                         R5 R6 R2
       12 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R2
        5 CALL                             R6 1 -1
        6 NAMECALL                         R3 R3 K1 ["SetSetting"]
        8 CALL                             R3 -1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K1 ["GetSetting"]
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R1 R0 K1 ["disable"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 NAMECALL                         R1 R0 K2 ["enable"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        7 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        9 LOADB                            R3 1
       10 NAMECALL                         R1 R1 K2 ["Activate"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        7 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        9 NAMECALL                         R1 R1 K2 ["Deactivate"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Focused"]
        2 LOADB                            R3 1
        3 NAMECALL                         R1 R1 K1 ["Fire"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["Activation"]
        8 LOADB                            R3 1
        9 NAMECALL                         R1 R1 K1 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Focused"]
        2 LOADB                            R3 0
        3 NAMECALL                         R1 R1 K1 ["Fire"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_deactivationListener"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_deactivationListener"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_deactivationListener"]
       11 NAMECALL                         R1 R0 K2 ["disable"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_root"]
        2 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_root"]
        2 RETURN                           R1 1

PROTO_19:
        0 NAMECALL                         R2 R0 K0 ["getShouldBeCompact"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_pluginWidth"]
        5 SETTABLEKS                       R1 R0 K1 ["_pluginWidth"]
        7 JUMPIFEQ                         R3 R1 ; [+7]
        9 GETTABLEKS                       R4 R0 K2 ["PluginWidth"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K3 ["Fire"]
       14 CALL                             R4 2 0
       15 NAMECALL                         R4 R0 K0 ["getShouldBeCompact"]
       17 CALL                             R4 1 1
       18 JUMPIFEQ                         R2 R4 ; [+6]
       20 GETTABLEKS                       R4 R0 K4 ["Compact"]
       22 NAMECALL                         R4 R4 K3 ["Fire"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["MinWindowWidth"]
        8 JUMPIFLT                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1
       13 LOADB                            R1 0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R4 K10 ["ContextItem"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R6 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["BrushSettings"]
       34 GETTABLEKS                       R6 R4 K14 ["BuildSettings"]
       36 GETTABLEKS                       R7 R4 K15 ["Category"]
       38 GETTABLEKS                       R8 R4 K16 ["PlaneLock"]
       40 GETTABLEKS                       R9 R4 K17 ["SelectionSettings"]
       42 GETTABLEKS                       R10 R4 K18 ["Storage"]
       44 GETTABLEKS                       R11 R4 K19 ["TerrainType"]
       46 GETTABLEKS                       R12 R4 K20 ["TransformMode"]
       48 GETTABLEKS                       R13 R4 K21 ["TransformSettings"]
       50 GETTABLEKS                       R14 R2 K22 ["Util"]
       52 GETTABLEKS                       R15 R14 K23 ["Signal"]
       54 GETTABLEKS                       R18 R0 K11 ["Src"]
       56 GETTABLEKS                       R17 R18 K22 ["Util"]
       58 GETTABLEKS                       R16 R17 K24 ["Serialization"]
       60 GETIMPORT                        R17 K5 [require]
       62 GETTABLEKS                       R18 R16 K25 ["Serialize"]
       64 CALL                             R17 1 1
       65 GETIMPORT                        R18 K5 [require]
       67 GETTABLEKS                       R19 R16 K26 ["Deserialize"]
       69 CALL                             R18 1 1
       70 GETIMPORT                        R19 K5 [require]
       72 GETTABLEKS                       R22 R0 K11 ["Src"]
       74 GETTABLEKS                       R21 R22 K27 ["Resources"]
       76 GETTABLEKS                       R20 R21 K28 ["Constants"]
       78 CALL                             R19 1 1
       79 GETIMPORT                        R20 K5 [require]
       81 GETTABLEKS                       R23 R0 K11 ["Src"]
       83 GETTABLEKS                       R22 R23 K29 ["Flags"]
       85 GETTABLEKS                       R21 R22 K30 ["getFFlagTerrainEditorGenerationFeature"]
       87 CALL                             R20 1 1
       88 LOADK                            R23 K31 ["PluginController"]
       89 NAMECALL                         R21 R3 K32 ["extend"]
       91 CALL                             R21 2 1
       92 GETIMPORT                        R22 K34 [game]
       94 LOADK                            R24 K35 ["Workspace"]
       95 NAMECALL                         R22 R22 K36 ["GetService"]
       97 CALL                             R22 2 1
       98 DUPCLOSURE                       R23 K37 [PROTO_1]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R20
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R1
      113 SETTABLEKS                       R23 R21 K38 ["new"]
      115 DUPCLOSURE                       R23 K39 [PROTO_2]
      116 CAPTURE                          VAL R21
      117 SETTABLEKS                       R23 R21 K40 ["mock"]
      119 DUPCLOSURE                       R23 K41 [PROTO_3]
      120 SETTABLEKS                       R23 R21 K42 ["isMocking"]
      122 DUPCLOSURE                       R23 K43 [PROTO_4]
      123 SETTABLEKS                       R23 R21 K44 ["getPlugin"]
      125 DUPCLOSURE                       R23 K45 [PROTO_5]
      126 SETTABLEKS                       R23 R21 K46 ["getEnabled"]
      128 DUPCLOSURE                       R23 K47 [PROTO_7]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R17
      134 SETTABLEKS                       R23 R21 K48 ["setGlobal"]
      136 DUPCLOSURE                       R23 K49 [PROTO_8]
      137 CAPTURE                          VAL R10
      138 SETTABLEKS                       R23 R21 K50 ["getGlobal"]
      140 DUPCLOSURE                       R23 K51 [PROTO_9]
      141 CAPTURE                          VAL R17
      142 SETTABLEKS                       R23 R21 K52 ["setSetting"]
      144 DUPCLOSURE                       R23 K53 [PROTO_10]
      145 CAPTURE                          VAL R18
      146 SETTABLEKS                       R23 R21 K54 ["getSetting"]
      148 DUPCLOSURE                       R23 K55 [PROTO_11]
      149 SETTABLEKS                       R23 R21 K56 ["toggle"]
      151 DUPCLOSURE                       R23 K57 [PROTO_12]
      152 SETTABLEKS                       R23 R21 K58 ["enable"]
      154 DUPCLOSURE                       R23 K59 [PROTO_13]
      155 SETTABLEKS                       R23 R21 K60 ["disable"]
      157 DUPCLOSURE                       R23 K61 [PROTO_14]
      158 SETTABLEKS                       R23 R21 K62 ["resume"]
      160 DUPCLOSURE                       R23 K63 [PROTO_15]
      161 SETTABLEKS                       R23 R21 K64 ["pause"]
      163 DUPCLOSURE                       R23 K65 [PROTO_16]
      164 SETTABLEKS                       R23 R21 K66 ["destroy"]
      166 DUPCLOSURE                       R23 K67 [PROTO_17]
      167 SETTABLEKS                       R23 R21 K68 ["setRoot"]
      169 DUPCLOSURE                       R23 K69 [PROTO_18]
      170 SETTABLEKS                       R23 R21 K70 ["getRoot"]
      172 DUPCLOSURE                       R23 K71 [PROTO_19]
      173 SETTABLEKS                       R23 R21 K72 ["setPluginWidth"]
      175 DUPCLOSURE                       R23 K73 [PROTO_20]
      176 SETTABLEKS                       R23 R21 K74 ["getPluginWidth"]
      178 DUPCLOSURE                       R23 K75 [PROTO_21]
      179 CAPTURE                          VAL R19
      180 SETTABLEKS                       R23 R21 K76 ["getShouldBeCompact"]
      182 RETURN                           R21 1
