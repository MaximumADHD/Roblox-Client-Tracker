PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Activation"]
        3 LOADB                            R2 0
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["_enabled"]
       11 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R1 ; [+7]
        1 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K0 ["PluginController.new() requires a plugin"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 DUPTABLE                         R4 K14 [{"_mock", "_plugin", "_getPlaceId", "_store", "_session", "_placeStore", "_saveSettingsTasks", "Activation", "Compact", "Focused", "PluginWidth"}]
        9 SETTABLEKS                       R1 R4 K3 ["_mock"]
       11 SETTABLEKS                       R0 R4 K4 ["_plugin"]
       13 MOVE                             R5 R2
       14 JUMPIF                           R5 ; [+1]
       15 DUPCLOSURE                       R5 K15 [PROTO_0]
       16 SETTABLEKS                       R5 R4 K5 ["_getPlaceId"]
       18 NEWTABLE                         R5 4 0
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K16 ["SelectionSettings"]
       23 NEWTABLE                         R7 4 0
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K17 ["Size"]
       28 LOADK                            R9 K18 [{64, 32, 64}]
       29 SETTABLE                         R9 R7 R8
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K19 ["SnapToVoxels"]
       33 LOADB                            R9 1
       34 SETTABLE                         R9 R7 R8
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K20 ["Transform"]
       38 GETIMPORT                        R9 K23 [CFrame.new]
       40 CALL                             R9 0 1
       41 SETTABLE                         R9 R7 R8
       42 SETTABLE                         R7 R5 R6
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K24 ["TransformSettings"]
       46 NEWTABLE                         R7 4 0
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K17 ["Size"]
       51 LOADK                            R9 K18 [{64, 32, 64}]
       52 SETTABLE                         R9 R7 R8
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K19 ["SnapToVoxels"]
       56 LOADB                            R9 1
       57 SETTABLE                         R9 R7 R8
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K20 ["Transform"]
       61 GETIMPORT                        R9 K23 [CFrame.new]
       63 CALL                             R9 0 1
       64 SETTABLE                         R9 R7 R8
       65 SETTABLE                         R7 R5 R6
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K25 ["BrushSettings"]
       69 NEWTABLE                         R7 4 0
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K26 ["ManualPlaneLock"]
       74 LOADB                            R9 0
       75 SETTABLE                         R9 R7 R8
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K27 ["PlaneLock"]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R9 R9 K28 ["Off"]
       82 SETTABLE                         R9 R7 R8
       83 GETUPVAL                         R8 3
       84 GETTABLEKS                       R8 R8 K29 ["PlaneTransform"]
       86 GETIMPORT                        R9 K31 [CFrame.Angles]
       88 LOADK                            R10 K32 [1.5707963267949]
       89 LOADN                            R11 0
       90 LOADN                            R12 0
       91 CALL                             R9 3 1
       92 SETTABLE                         R9 R7 R8
       93 SETTABLE                         R7 R5 R6
       94 SETTABLEKS                       R5 R4 K6 ["_store"]
       96 NEWTABLE                         R5 4 0
       98 GETUPVAL                         R6 0
       99 GETTABLEKS                       R6 R6 K25 ["BrushSettings"]
      101 NEWTABLE                         R7 0 0
      103 SETTABLE                         R7 R5 R6
      104 GETUPVAL                         R6 0
      105 GETTABLEKS                       R6 R6 K16 ["SelectionSettings"]
      107 NEWTABLE                         R7 0 0
      109 SETTABLE                         R7 R5 R6
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R6 R6 K24 ["TransformSettings"]
      113 NEWTABLE                         R7 1 0
      115 GETUPVAL                         R8 2
      116 GETTABLEKS                       R8 R8 K33 ["TransformMode"]
      118 GETUPVAL                         R9 5
      119 GETTABLEKS                       R9 R9 K34 ["Move"]
      121 SETTABLE                         R9 R7 R8
      122 SETTABLE                         R7 R5 R6
      123 SETTABLEKS                       R5 R4 K7 ["_session"]
      125 NEWTABLE                         R5 0 0
      127 SETTABLEKS                       R5 R4 K8 ["_placeStore"]
      129 NEWTABLE                         R5 0 0
      131 SETTABLEKS                       R5 R4 K9 ["_saveSettingsTasks"]
      133 GETUPVAL                         R5 6
      134 GETTABLEKS                       R5 R5 K22 ["new"]
      136 CALL                             R5 0 1
      137 SETTABLEKS                       R5 R4 K10 ["Activation"]
      139 GETUPVAL                         R5 6
      140 GETTABLEKS                       R5 R5 K22 ["new"]
      142 CALL                             R5 0 1
      143 SETTABLEKS                       R5 R4 K11 ["Compact"]
      145 GETUPVAL                         R5 6
      146 GETTABLEKS                       R5 R5 K22 ["new"]
      148 CALL                             R5 0 1
      149 SETTABLEKS                       R5 R4 K12 ["Focused"]
      151 GETUPVAL                         R5 6
      152 GETTABLEKS                       R5 R5 K22 ["new"]
      154 CALL                             R5 0 1
      155 SETTABLEKS                       R5 R4 K13 ["PluginWidth"]
      157 GETUPVAL                         R5 7
      158 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      160 GETIMPORT                        R3 K36 [setmetatable]
      162 CALL                             R3 2 1
      163 GETUPVAL                         R4 8
      164 GETTABLEKS                       R4 R4 K37 ["IsDebuggingSavedSettings"]
      166 JUMPIF                           R4 ; [+20]
      167 GETUPVAL                         R4 9
      168 GETTABLEKS                       R5 R3 K4 ["_plugin"]
      170 LOADK                            R7 K38 ["Global"]
      171 NAMECALL                         R5 R5 K39 ["GetSetting"]
      173 CALL                             R5 2 1
      174 JUMPIF                           R5 ; [+2]
      175 NEWTABLE                         R5 0 0
      177 CALL                             R4 1 1
      178 GETUPVAL                         R5 10
      179 GETTABLEKS                       R5 R5 K40 ["join"]
      181 GETTABLEKS                       R6 R3 K6 ["_store"]
      183 MOVE                             R7 R4
      184 CALL                             R5 2 1
      185 SETTABLEKS                       R5 R3 K6 ["_store"]
      187 GETTABLEKS                       R4 R3 K4 ["_plugin"]
      189 GETTABLEKS                       R4 R4 K41 ["Deactivation"]
      191 NEWCLOSURE                       R6 P1
      192 CAPTURE                          VAL R3
      193 NAMECALL                         R4 R4 K42 ["Connect"]
      195 CALL                             R4 2 1
      196 SETTABLEKS                       R4 R3 K43 ["_deactivationListener"]
      198 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 LOADB                            R4 1
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_mock"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_getPlaceId"]
        2 CALL                             R1 0 1
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        5 LOADNIL                          R2
        6 JUMP                             ; [+3]
        7 LOADK                            R3 K2 ["Place"]
        8 MOVE                             R4 R1
        9 CONCAT                           R2 R3 R4
       10 GETTABLEKS                       R3 R0 K3 ["_placeId"]
       12 JUMPIFEQ                         R3 R1 ; [+24]
       14 SETTABLEKS                       R1 R0 K3 ["_placeId"]
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["IsDebuggingSavedSettings"]
       20 JUMPIFNOT                        R4 ; [+3]
       21 NEWTABLE                         R3 0 0
       23 JUMP                             ; [+11]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R4 R0 K5 ["_plugin"]
       27 MOVE                             R6 R2
       28 NAMECALL                         R4 R4 K6 ["GetSetting"]
       30 CALL                             R4 2 1
       31 JUMPIF                           R4 ; [+2]
       32 NEWTABLE                         R4 0 0
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R0 K7 ["_placeStore"]
       37 GETTABLEKS                       R3 R0 K7 ["_placeStore"]
       39 MOVE                             R4 R2
       40 RETURN                           R3 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 CALL                             R3 1 -1
        7 NAMECALL                         R0 R0 K1 ["SetSetting"]
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["_saveSettingsTasks"]
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R0 R1
       16 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R5
        1 LOADNIL                          R6
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["GlobalPersistent"]
        5 JUMPIFNOTEQ                      R4 R7 ; [+5]
        7 GETTABLEKS                       R5 R0 K1 ["_store"]
        9 LOADK                            R6 K2 ["Global"]
       10 JUMP                             ; [+13]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K3 ["PlacePersistent"]
       14 JUMPIFNOTEQ                      R4 R7 ; [+7]
       16 NAMECALL                         R7 R0 K4 ["_getPlaceStore"]
       18 CALL                             R7 1 2
       19 MOVE                             R5 R7
       20 MOVE                             R6 R8
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R5 R0 K5 ["_session"]
       24 GETTABLE                         R7 R5 R1
       25 JUMPIF                           R7 ; [+2]
       26 NEWTABLE                         R7 0 0
       28 SETTABLE                         R7 R5 R1
       29 GETTABLE                         R7 R5 R1
       30 SETTABLE                         R3 R7 R2
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K0 ["GlobalPersistent"]
       34 JUMPIFNOTEQ                      R4 R7 ; [+34]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K6 ["PlaneLock"]
       39 JUMPIFNOTEQ                      R2 R7 ; [+29]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K7 ["Manual"]
       44 JUMPIFNOTEQ                      R3 R7 ; [+24]
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K8 ["CurrentCamera"]
       49 GETTABLEKS                       R7 R7 K9 ["CFrame"]
       51 GETIMPORT                        R8 K11 [CFrame.Angles]
       53 LOADK                            R9 K12 [1.5707963267949]
       54 LOADN                            R10 0
       55 LOADN                            R11 0
       56 CALL                             R8 3 1
       57 GETTABLEKS                       R10 R7 K13 ["Position"]
       59 GETTABLEKS                       R12 R7 K15 ["LookVector"]
       61 MULK                             R11 R12 K14 [64]
       62 ADD                              R9 R10 R11
       63 GETTABLE                         R10 R5 R1
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K16 ["PlaneTransform"]
       67 ADD                              R12 R8 R9
       68 SETTABLE                         R12 R10 R11
       69 JUMPIFNOT                        R6 ; [+22]
       70 GETTABLEKS                       R8 R0 K17 ["_saveSettingsTasks"]
       72 GETTABLE                         R7 R8 R6
       73 JUMPIFNOT                        R7 ; [+6]
       74 GETIMPORT                        R7 K20 [task.cancel]
       76 GETTABLEKS                       R9 R0 K17 ["_saveSettingsTasks"]
       78 GETTABLE                         R8 R9 R6
       79 CALL                             R7 1 0
       80 GETTABLEKS                       R7 R0 K17 ["_saveSettingsTasks"]
       82 GETIMPORT                        R8 K22 [task.delay]
       84 LOADN                            R9 1
       85 NEWCLOSURE                       R10 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          REF R6
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          REF R5
       90 CALL                             R8 2 1
       91 SETTABLE                         R8 R7 R6
       92 CLOSEUPVALS                      R5
       93 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 LOADNIL                          R8
        3 MOVE                             R9 R3
        4 NAMECALL                         R4 R0 K0 ["setGlobal"]
        6 CALL                             R4 5 0
        7 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["GlobalPersistent"]
        4 JUMPIFNOTEQ                      R3 R5 ; [+4]
        6 GETTABLEKS                       R4 R0 K1 ["_store"]
        8 JUMP                             ; [+12]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["PlacePersistent"]
       12 JUMPIFNOTEQ                      R3 R5 ; [+6]
       14 NAMECALL                         R5 R0 K3 ["_getPlaceStore"]
       16 CALL                             R5 1 1
       17 MOVE                             R4 R5
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R4 R0 K4 ["_session"]
       21 GETTABLE                         R5 R4 R1
       22 JUMPIFNOT                        R5 ; [+2]
       23 GETTABLE                         R6 R5 R2
       24 RETURN                           R6 1
       25 LOADNIL                          R6
       26 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R2
        5 CALL                             R6 1 -1
        6 NAMECALL                         R3 R3 K1 ["SetSetting"]
        8 CALL                             R3 -1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K1 ["GetSetting"]
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R1 R0 K1 ["disable"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 NAMECALL                         R1 R0 K2 ["enable"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        7 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        9 NAMECALL                         R1 R1 K2 ["Deactivate"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Focused"]
        2 LOADB                            R3 1
        3 NAMECALL                         R1 R1 K1 ["Fire"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["Activation"]
        8 LOADB                            R3 1
        9 NAMECALL                         R1 R1 K1 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["Focused"]
        2 LOADB                            R3 0
        3 NAMECALL                         R1 R1 K1 ["Fire"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 SETTABLEKS                       R1 R0 K0 ["_root"]
        2 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_root"]
        2 RETURN                           R1 1

PROTO_22:
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

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        2 RETURN                           R1 1

PROTO_24:
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
       85 DUPCLOSURE                       R20 K33 [PROTO_2]
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
       99 DUPCLOSURE                       R20 K35 [PROTO_3]
      100 CAPTURE                          VAL R18
      101 SETTABLEKS                       R20 R18 K36 ["mock"]
      103 DUPCLOSURE                       R20 K37 [PROTO_4]
      104 SETTABLEKS                       R20 R18 K38 ["isMocking"]
      106 DUPCLOSURE                       R20 K39 [PROTO_5]
      107 SETTABLEKS                       R20 R18 K40 ["getPlugin"]
      109 DUPCLOSURE                       R20 K41 [PROTO_6]
      110 SETTABLEKS                       R20 R18 K42 ["getEnabled"]
      112 DUPCLOSURE                       R20 K43 [PROTO_7]
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R20 R18 K44 ["_getPlaceStore"]
      117 DUPCLOSURE                       R20 K45 [PROTO_9]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R15
      123 SETTABLEKS                       R20 R18 K46 ["setGlobal"]
      125 DUPCLOSURE                       R20 K47 [PROTO_10]
      126 SETTABLEKS                       R20 R18 K48 ["clearGlobal"]
      128 DUPCLOSURE                       R20 K49 [PROTO_11]
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R20 R18 K50 ["getGlobal"]
      132 DUPCLOSURE                       R20 K51 [PROTO_12]
      133 CAPTURE                          VAL R15
      134 SETTABLEKS                       R20 R18 K52 ["setSetting"]
      136 DUPCLOSURE                       R20 K53 [PROTO_13]
      137 CAPTURE                          VAL R16
      138 SETTABLEKS                       R20 R18 K54 ["getSetting"]
      140 DUPCLOSURE                       R20 K55 [PROTO_14]
      141 SETTABLEKS                       R20 R18 K56 ["toggle"]
      143 DUPCLOSURE                       R20 K57 [PROTO_15]
      144 SETTABLEKS                       R20 R18 K58 ["enable"]
      146 DUPCLOSURE                       R20 K59 [PROTO_16]
      147 SETTABLEKS                       R20 R18 K60 ["disable"]
      149 DUPCLOSURE                       R20 K61 [PROTO_17]
      150 SETTABLEKS                       R20 R18 K62 ["resume"]
      152 DUPCLOSURE                       R20 K63 [PROTO_18]
      153 SETTABLEKS                       R20 R18 K64 ["pause"]
      155 DUPCLOSURE                       R20 K65 [PROTO_19]
      156 SETTABLEKS                       R20 R18 K66 ["destroy"]
      158 DUPCLOSURE                       R20 K67 [PROTO_20]
      159 SETTABLEKS                       R20 R18 K68 ["setRoot"]
      161 DUPCLOSURE                       R20 K69 [PROTO_21]
      162 SETTABLEKS                       R20 R18 K70 ["getRoot"]
      164 DUPCLOSURE                       R20 K71 [PROTO_22]
      165 SETTABLEKS                       R20 R18 K72 ["setPluginWidth"]
      167 DUPCLOSURE                       R20 K73 [PROTO_23]
      168 SETTABLEKS                       R20 R18 K74 ["getPluginWidth"]
      170 DUPCLOSURE                       R20 K75 [PROTO_24]
      171 CAPTURE                          VAL R17
      172 SETTABLEKS                       R20 R18 K76 ["getShouldBeCompact"]
      174 RETURN                           R18 1
