PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Activation"]
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
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K12 ["SelectionSettings"]
       18 NEWTABLE                         R6 4 0
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K13 ["Size"]
       23 LOADK                            R8 K14 [{64, 32, 64}]
       24 SETTABLE                         R8 R6 R7
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K15 ["SnapToVoxels"]
       28 LOADB                            R8 1
       29 SETTABLE                         R8 R6 R7
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K16 ["Transform"]
       33 GETIMPORT                        R8 K19 [CFrame.new]
       35 CALL                             R8 0 1
       36 SETTABLE                         R8 R6 R7
       37 SETTABLE                         R6 R4 R5
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K20 ["TransformSettings"]
       41 NEWTABLE                         R6 4 0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K13 ["Size"]
       46 LOADK                            R8 K14 [{64, 32, 64}]
       47 SETTABLE                         R8 R6 R7
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K15 ["SnapToVoxels"]
       51 LOADB                            R8 1
       52 SETTABLE                         R8 R6 R7
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K16 ["Transform"]
       56 GETIMPORT                        R8 K19 [CFrame.new]
       58 CALL                             R8 0 1
       59 SETTABLE                         R8 R6 R7
       60 SETTABLE                         R6 R4 R5
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K21 ["BrushSettings"]
       64 NEWTABLE                         R6 4 0
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K22 ["ManualPlaneLock"]
       69 LOADB                            R8 0
       70 SETTABLE                         R8 R6 R7
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R7 R7 K23 ["PlaneLock"]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K24 ["Off"]
       77 SETTABLE                         R8 R6 R7
       78 GETUPVAL                         R7 3
       79 GETTABLEKS                       R7 R7 K25 ["PlaneTransform"]
       81 GETIMPORT                        R8 K27 [CFrame.Angles]
       83 LOADK                            R9 K28 [1.5707963267949]
       84 LOADN                            R10 0
       85 LOADN                            R11 0
       86 CALL                             R8 3 1
       87 SETTABLE                         R8 R6 R7
       88 SETTABLE                         R6 R4 R5
       89 SETTABLEKS                       R4 R3 K5 ["_store"]
       91 NEWTABLE                         R4 4 0
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K21 ["BrushSettings"]
       96 NEWTABLE                         R6 0 0
       98 SETTABLE                         R6 R4 R5
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K12 ["SelectionSettings"]
      102 NEWTABLE                         R6 0 0
      104 SETTABLE                         R6 R4 R5
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K20 ["TransformSettings"]
      108 NEWTABLE                         R6 1 0
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K29 ["TransformMode"]
      113 GETUPVAL                         R8 5
      114 GETTABLEKS                       R8 R8 K30 ["Move"]
      116 SETTABLE                         R8 R6 R7
      117 SETTABLE                         R6 R4 R5
      118 SETTABLEKS                       R4 R3 K6 ["_session"]
      120 GETUPVAL                         R4 6
      121 GETTABLEKS                       R4 R4 K18 ["new"]
      123 CALL                             R4 0 1
      124 SETTABLEKS                       R4 R3 K7 ["Activation"]
      126 GETUPVAL                         R4 6
      127 GETTABLEKS                       R4 R4 K18 ["new"]
      129 CALL                             R4 0 1
      130 SETTABLEKS                       R4 R3 K8 ["Compact"]
      132 GETUPVAL                         R4 6
      133 GETTABLEKS                       R4 R4 K18 ["new"]
      135 CALL                             R4 0 1
      136 SETTABLEKS                       R4 R3 K9 ["Focused"]
      138 GETUPVAL                         R4 6
      139 GETTABLEKS                       R4 R4 K18 ["new"]
      141 CALL                             R4 0 1
      142 SETTABLEKS                       R4 R3 K10 ["PluginWidth"]
      144 GETUPVAL                         R4 7
      145 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
      147 GETIMPORT                        R2 K32 [setmetatable]
      149 CALL                             R2 2 1
      150 GETUPVAL                         R3 8
      151 GETTABLEKS                       R3 R3 K33 ["IsDebuggingSavedSettings"]
      153 JUMPIF                           R3 ; [+20]
      154 GETUPVAL                         R3 9
      155 GETTABLEKS                       R4 R2 K4 ["_plugin"]
      157 LOADK                            R6 K34 ["Global"]
      158 NAMECALL                         R4 R4 K35 ["GetSetting"]
      160 CALL                             R4 2 1
      161 JUMPIF                           R4 ; [+2]
      162 NEWTABLE                         R4 0 0
      164 CALL                             R3 1 1
      165 GETUPVAL                         R4 10
      166 GETTABLEKS                       R4 R4 K36 ["join"]
      168 GETTABLEKS                       R5 R2 K5 ["_store"]
      170 MOVE                             R6 R3
      171 CALL                             R4 2 1
      172 SETTABLEKS                       R4 R2 K5 ["_store"]
      174 GETTABLEKS                       R3 R2 K4 ["_plugin"]
      176 GETTABLEKS                       R3 R3 K37 ["Deactivation"]
      178 NEWCLOSURE                       R5 P0
      179 CAPTURE                          VAL R2
      180 NAMECALL                         R3 R3 K38 ["Connect"]
      182 CALL                             R3 2 1
      183 SETTABLEKS                       R3 R2 K39 ["_deactivationListener"]
      185 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 LOADK                            R2 K1 ["Global"]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["_store"]
        8 CALL                             R3 1 -1
        9 NAMECALL                         R0 R0 K3 ["SetSetting"]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K4 ["_saveSettingsTask"]
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["GlobalPersistent"]
        3 JUMPIFNOTEQ                      R4 R6 ; [+4]
        5 GETTABLEKS                       R5 R0 K1 ["_store"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R5 R0 K2 ["_session"]
       10 GETTABLE                         R6 R5 R1
       11 SETTABLE                         R3 R6 R2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["GlobalPersistent"]
       15 JUMPIFNOTEQ                      R4 R6 ; [+54]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K3 ["PlaneLock"]
       20 JUMPIFNOTEQ                      R2 R6 ; [+29]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K4 ["Manual"]
       25 JUMPIFNOTEQ                      R3 R6 ; [+24]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       30 GETTABLEKS                       R6 R6 K6 ["CFrame"]
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
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K13 ["PlaneTransform"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["GlobalPersistent"]
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
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["MinWindowWidth"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["ContextItem"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["BrushSettings"]
       34 GETTABLEKS                       R6 R4 K14 ["Category"]
       36 GETTABLEKS                       R7 R4 K15 ["PlaneLock"]
       38 GETTABLEKS                       R8 R4 K16 ["SelectionSettings"]
       40 GETTABLEKS                       R9 R4 K17 ["Storage"]
       42 GETTABLEKS                       R10 R4 K18 ["TransformMode"]
       44 GETTABLEKS                       R11 R4 K19 ["TransformSettings"]
       46 GETTABLEKS                       R12 R2 K20 ["Util"]
       48 GETTABLEKS                       R13 R12 K21 ["Signal"]
       50 GETTABLEKS                       R14 R0 K11 ["Src"]
       52 GETTABLEKS                       R14 R14 K20 ["Util"]
       54 GETTABLEKS                       R14 R14 K22 ["Serialization"]
       56 GETIMPORT                        R15 K5 [require]
       58 GETTABLEKS                       R16 R14 K23 ["Serialize"]
       60 CALL                             R15 1 1
       61 GETIMPORT                        R16 K5 [require]
       63 GETTABLEKS                       R17 R14 K24 ["Deserialize"]
       65 CALL                             R16 1 1
       66 GETIMPORT                        R17 K5 [require]
       68 GETTABLEKS                       R18 R0 K11 ["Src"]
       70 GETTABLEKS                       R18 R18 K25 ["Resources"]
       72 GETTABLEKS                       R18 R18 K26 ["Constants"]
       74 CALL                             R17 1 1
       75 LOADK                            R20 K27 ["PluginController"]
       76 NAMECALL                         R18 R3 K28 ["extend"]
       78 CALL                             R18 2 1
       79 GETIMPORT                        R19 K30 [game]
       81 LOADK                            R21 K31 ["Workspace"]
       82 NAMECALL                         R19 R19 K32 ["GetService"]
       84 CALL                             R19 2 1
       85 DUPCLOSURE                       R20 K33 [PROTO_1]
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R20 R18 K34 ["new"]
       99 DUPCLOSURE                       R20 K35 [PROTO_2]
      100 CAPTURE                          VAL R18
      101 SETTABLEKS                       R20 R18 K36 ["mock"]
      103 DUPCLOSURE                       R20 K37 [PROTO_3]
      104 SETTABLEKS                       R20 R18 K38 ["isMocking"]
      106 DUPCLOSURE                       R20 K39 [PROTO_4]
      107 SETTABLEKS                       R20 R18 K40 ["getPlugin"]
      109 DUPCLOSURE                       R20 K41 [PROTO_5]
      110 SETTABLEKS                       R20 R18 K42 ["getEnabled"]
      112 DUPCLOSURE                       R20 K43 [PROTO_7]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R19
      117 CAPTURE                          VAL R15
      118 SETTABLEKS                       R20 R18 K44 ["setGlobal"]
      120 DUPCLOSURE                       R20 K45 [PROTO_8]
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R20 R18 K46 ["getGlobal"]
      124 DUPCLOSURE                       R20 K47 [PROTO_9]
      125 CAPTURE                          VAL R15
      126 SETTABLEKS                       R20 R18 K48 ["setSetting"]
      128 DUPCLOSURE                       R20 K49 [PROTO_10]
      129 CAPTURE                          VAL R16
      130 SETTABLEKS                       R20 R18 K50 ["getSetting"]
      132 DUPCLOSURE                       R20 K51 [PROTO_11]
      133 SETTABLEKS                       R20 R18 K52 ["toggle"]
      135 DUPCLOSURE                       R20 K53 [PROTO_12]
      136 SETTABLEKS                       R20 R18 K54 ["enable"]
      138 DUPCLOSURE                       R20 K55 [PROTO_13]
      139 SETTABLEKS                       R20 R18 K56 ["disable"]
      141 DUPCLOSURE                       R20 K57 [PROTO_14]
      142 SETTABLEKS                       R20 R18 K58 ["resume"]
      144 DUPCLOSURE                       R20 K59 [PROTO_15]
      145 SETTABLEKS                       R20 R18 K60 ["pause"]
      147 DUPCLOSURE                       R20 K61 [PROTO_16]
      148 SETTABLEKS                       R20 R18 K62 ["destroy"]
      150 DUPCLOSURE                       R20 K63 [PROTO_17]
      151 SETTABLEKS                       R20 R18 K64 ["setRoot"]
      153 DUPCLOSURE                       R20 K65 [PROTO_18]
      154 SETTABLEKS                       R20 R18 K66 ["getRoot"]
      156 DUPCLOSURE                       R20 K67 [PROTO_19]
      157 SETTABLEKS                       R20 R18 K68 ["setPluginWidth"]
      159 DUPCLOSURE                       R20 K69 [PROTO_20]
      160 SETTABLEKS                       R20 R18 K70 ["getPluginWidth"]
      162 DUPCLOSURE                       R20 K71 [PROTO_21]
      163 CAPTURE                          VAL R17
      164 SETTABLEKS                       R20 R18 K72 ["getShouldBeCompact"]
      166 RETURN                           R18 1
