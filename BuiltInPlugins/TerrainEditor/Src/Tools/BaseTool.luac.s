PROTO_0:
        0 DUPTABLE                         R5 K4 [{"_name", "_category", "_configuration", "_gizmos"}]
        1 SETTABLEKS                       R1 R5 K0 ["_name"]
        3 SETTABLEKS                       R2 R5 K1 ["_category"]
        5 SETTABLEKS                       R3 R5 K2 ["_configuration"]
        7 SETTABLEKS                       R4 R5 K3 ["_gizmos"]
        9 FASTCALL2                        SETMETATABLE R5 R0 ; [+5]
       11 MOVE                             R7 R5
       12 MOVE                             R8 R0
       13 GETIMPORT                        R6 K6 [setmetatable]
       15 CALL                             R6 2 0
       16 SETTABLEKS                       R0 R0 K7 ["__index"]
       18 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["Analytics"]
        2 GETTABLEKS                       R4 R1 K1 ["Localization"]
        4 GETTABLEKS                       R5 R1 K2 ["PluginController"]
        6 GETTABLEKS                       R6 R1 K3 ["ShortcutController"]
        8 GETTABLEKS                       R7 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R8 R1 K5 ["ToolController"]
       12 MOVE                             R11 R5
       13 NAMECALL                         R9 R0 K6 ["registerSettings"]
       15 CALL                             R9 2 2
       16 GETTABLEKS                       R13 R0 K7 ["_name"]
       18 MOVE                             R14 R9
       19 NAMECALL                         R11 R5 K8 ["setSetting"]
       21 CALL                             R11 3 0
       22 SETTABLEKS                       R3 R0 K9 ["_analytics"]
       24 SETTABLEKS                       R4 R0 K10 ["_localization"]
       26 SETTABLEKS                       R5 R0 K11 ["_pluginController"]
       28 SETTABLEKS                       R6 R0 K12 ["_shortcutController"]
       30 SETTABLEKS                       R7 R0 K13 ["_stylizer"]
       32 SETTABLEKS                       R8 R0 K14 ["_toolController"]
       34 SETTABLEKS                       R2 R0 K15 ["_services"]
       36 DUPTABLE                         R11 K18 [{"icon", "name"}]
       37 DUPTABLE                         R12 K20 [{"Image"}]
       38 LOADK                            R14 K21 ["%*.png"]
       39 LOADK                            R17 K22 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/%s/Large/"]
       40 GETTABLEKS                       R18 R0 K7 ["_name"]
       42 CONCAT                           R16 R17 R18
       43 NAMECALL                         R14 R14 K23 ["format"]
       45 CALL                             R14 2 1
       46 MOVE                             R13 R14
       47 SETTABLEKS                       R13 R12 K19 ["Image"]
       49 SETTABLEKS                       R12 R11 K16 ["icon"]
       51 LOADK                            R14 K24 ["BaseTool"]
       52 GETTABLEKS                       R15 R0 K7 ["_name"]
       54 NAMECALL                         R12 R4 K25 ["getText"]
       56 CALL                             R12 3 1
       57 SETTABLEKS                       R12 R11 K17 ["name"]
       59 SETTABLEKS                       R11 R0 K26 ["_tile"]
       61 SETTABLEKS                       R9 R0 K27 ["_persistentUserSettings"]
       63 SETTABLEKS                       R10 R0 K28 ["_sessionUserSettings"]
       65 NEWTABLE                         R11 0 0
       67 SETTABLEKS                       R11 R0 K29 ["_overrides"]
       69 NEWTABLE                         R11 0 0
       71 SETTABLEKS                       R11 R0 K30 ["_errors"]
       73 LOADB                            R11 0
       74 SETTABLEKS                       R11 R0 K31 ["_isRunning"]
       76 NEWTABLE                         R11 0 0
       78 SETTABLEKS                       R11 R0 K32 ["_validateFunctions"]
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K33 ["new"]
       83 CALL                             R11 0 1
       84 SETTABLEKS                       R11 R0 K34 ["OnFormChanged"]
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R11 R11 K33 ["new"]
       89 CALL                             R11 0 1
       90 SETTABLEKS                       R11 R0 K35 ["OnGizmoChanged"]
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K33 ["new"]
       95 CALL                             R11 0 1
       96 SETTABLEKS                       R11 R0 K36 ["OnInternalsChanged"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K33 ["new"]
      101 CALL                             R11 0 1
      102 SETTABLEKS                       R11 R0 K37 ["OnNoteChanged"]
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R11 R11 K33 ["new"]
      107 CALL                             R11 0 1
      108 SETTABLEKS                       R11 R0 K38 ["OnShortcutChanged"]
      110 GETUPVAL                         R11 0
      111 GETTABLEKS                       R11 R11 K33 ["new"]
      113 CALL                             R11 0 1
      114 SETTABLEKS                       R11 R0 K39 ["OnOperationChanged"]
      116 NEWTABLE                         R11 0 0
      118 SETTABLEKS                       R11 R0 K40 ["_shortcutConnections"]
      120 NEWTABLE                         R11 0 0
      122 SETTABLEKS                       R11 R0 K41 ["_shortcuts"]
      124 NAMECALL                         R11 R0 K42 ["registerShortcuts"]
      126 CALL                             R11 1 0
      127 RETURN                           R0 1

PROTO_2:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIF                           R7 ; [+3]
        6 LOADNIL                          R7
        7 SETTABLE                         R7 R0 R5
        8 JUMP                             ; [+12]
        9 FASTCALL1                        TYPEOF R6 ; [+3]
       10 MOVE                             R8 R6
       11 GETIMPORT                        R7 K1 [typeof]
       13 CALL                             R7 1 1
       14 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+6]
       16 GETUPVAL                         R7 0
       17 MOVE                             R8 R6
       18 GETTABLE                         R9 R1 R5
       19 CALL                             R7 2 1
       20 SETTABLE                         R7 R0 R5
       21 FORGLOOP                         R2 2 ; [-18]
       23 RETURN                           R0 1

PROTO_3:
        0 MOVE                             R3 R1
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R9 0
        6 GETTABLE                         R8 R9 R6
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K0 ["LocalPersistent"]
       10 JUMPIFNOTEQ                      R8 R9 ; [+29]
       12 GETTABLE                         R9 R0 R6
       13 FASTCALL1                        TYPEOF R9 ; [+2]
       14 GETIMPORT                        R8 K2 [typeof]
       16 CALL                             R8 1 1
       17 FASTCALL1                        TYPEOF R7 ; [+3]
       18 MOVE                             R10 R7
       19 GETIMPORT                        R9 K2 [typeof]
       21 CALL                             R9 1 1
       22 GETTABLE                         R10 R0 R6
       23 JUMPIFNOT                        R10 ; [+2]
       24 JUMPIFEQ                         R8 R9 ; [+2]
       26 SETTABLE                         R7 R0 R6
       27 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+12]
       29 JUMPIFNOTEQKS                    R9 K3 ["table"] ; [+10]
       31 GETUPVAL                         R11 2
       32 GETTABLE                         R10 R11 R6
       33 JUMPIF                           R10 ; [+6]
       34 GETUPVAL                         R10 3
       35 GETTABLE                         R11 R0 R6
       36 MOVE                             R12 R7
       37 LOADB                            R13 0
       38 CALL                             R10 3 1
       39 SETTABLE                         R10 R0 R6
       40 FORGLOOP                         R3 2 ; [-37]
       42 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["IsDebuggingSavedSettings"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 LOADNIL                          R2
        5 JUMP                             ; [+5]
        6 GETTABLEKS                       R4 R0 K1 ["_name"]
        8 NAMECALL                         R2 R1 K2 ["getSetting"]
       10 CALL                             R2 2 1
       11 MOVE                             R3 R2
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 NEWTABLE                         R4 0 0
       17 DUPTABLE                         R5 K5 [{["MaterialList"] = True}]
       18 GETTABLEKS                       R6 R0 K6 ["_configuration"]
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 DUPCLOSURE                       R11 K7 [PROTO_2]
       24 CAPTURE                          VAL R11
       25 GETTABLEKS                       R13 R10 K8 ["Id"]
       27 GETTABLE                         R12 R3 R13
       28 JUMPIF                           R12 ; [+6]
       29 GETTABLEKS                       R12 R10 K8 ["Id"]
       31 GETTABLEKS                       R13 R10 K9 ["Defaults"]
       33 SETTABLE                         R13 R3 R12
       34 JUMP                             ; [+10]
       35 GETTABLEKS                       R12 R10 K8 ["Id"]
       37 MOVE                             R13 R11
       38 GETTABLEKS                       R15 R10 K8 ["Id"]
       40 GETTABLE                         R14 R3 R15
       41 GETTABLEKS                       R15 R10 K9 ["Defaults"]
       43 CALL                             R13 2 1
       44 SETTABLE                         R13 R3 R12
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R14 R10 K8 ["Id"]
       48 GETTABLE                         R12 R13 R14
       49 GETTABLEKS                       R12 R12 K10 ["Storage"]
       51 GETTABLEKS                       R13 R10 K8 ["Id"]
       53 NEWTABLE                         R14 0 0
       55 SETTABLE                         R14 R4 R13
       56 GETTABLEKS                       R13 R10 K9 ["Defaults"]
       58 LOADNIL                          R14
       59 LOADNIL                          R15
       60 FORGPREP                         R13
       61 GETTABLE                         R18 R12 R16
       62 GETUPVAL                         R19 2
       63 GETTABLEKS                       R19 R19 K11 ["LocalSession"]
       65 JUMPIFNOTEQ                      R18 R19 ; [+5]
       67 GETTABLEKS                       R19 R10 K8 ["Id"]
       69 GETTABLE                         R18 R4 R19
       70 SETTABLE                         R17 R18 R16
       71 FORGLOOP                         R13 2 ; [-11]
       73 NEWCLOSURE                       R13 P1
       74 CAPTURE                          VAL R12
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R13
       78 GETTABLEKS                       R14 R10 K8 ["Id"]
       80 MOVE                             R15 R13
       81 GETTABLEKS                       R17 R10 K8 ["Id"]
       83 GETTABLE                         R16 R3 R17
       84 GETTABLEKS                       R17 R10 K9 ["Defaults"]
       86 LOADB                            R18 1
       87 CALL                             R15 3 1
       88 SETTABLE                         R15 R3 R14
       89 FORGLOOP                         R6 2 ; [-67]
       91 RETURN                           R3 2

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R7 R6
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R0 K1 ["_shortcutController"]
       13 MOVE                             R14 R10
       14 NAMECALL                         R12 R12 K2 ["supportsShortcut"]
       16 CALL                             R12 2 1
       17 JUMPIFNOT                        R12 ; [+18]
       18 GETTABLEKS                       R13 R0 K3 ["_shortcuts"]
       20 GETTABLE                         R12 R13 R5
       21 JUMPIF                           R12 ; [+5]
       22 GETTABLEKS                       R12 R0 K3 ["_shortcuts"]
       24 NEWTABLE                         R13 0 0
       26 SETTABLE                         R13 R12 R5
       27 GETTABLEKS                       R14 R0 K3 ["_shortcuts"]
       29 GETTABLE                         R13 R14 R5
       30 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       32 MOVE                             R14 R10
       33 GETIMPORT                        R12 K6 [table.insert]
       35 CALL                             R12 2 0
       36 FORGLOOP                         R7 2 ; [-26]
       38 FORGLOOP                         R2 2 ; [-32]
       40 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K3 [{[1], ["_name"] = "Empty"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_configuration"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K5 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_configuration"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["Id"]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K2 ["Get"]
       12 GETTABLEKS                       R9 R6 K1 ["Id"]
       14 GETTABLEKS                       R10 R0 K3 ["_pluginController"]
       16 GETTABLEKS                       R12 R0 K4 ["_persistentUserSettings"]
       18 GETTABLEKS                       R13 R6 K1 ["Id"]
       20 GETTABLE                         R11 R12 R13
       21 GETTABLEKS                       R13 R0 K5 ["_sessionUserSettings"]
       23 GETTABLEKS                       R14 R6 K1 ["Id"]
       25 GETTABLE                         R12 R13 R14
       26 CALL                             R8 4 1
       27 SETTABLE                         R8 R1 R7
       28 FORGLOOP                         R2 2 ; [-22]
       30 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["_name"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["_persistentUserSettings"]
        9 NAMECALL                         R0 R0 K3 ["setSetting"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K4 ["_saveSettingsTask"]
       16 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R2 0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETUPVAL                         R9 0
        6 GETTABLE                         R8 R9 R6
        7 JUMPIFNOT                        R8 ; [+49]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K0 ["Set"]
       11 MOVE                             R9 R6
       12 GETTABLEKS                       R10 R0 K1 ["_pluginController"]
       14 MOVE                             R11 R7
       15 CALL                             R8 3 2
       16 GETTABLEKS                       R10 R0 K2 ["_persistentUserSettings"]
       18 GETTABLEKS                       R13 R0 K2 ["_persistentUserSettings"]
       20 GETTABLE                         R12 R13 R6
       21 JUMPIFNOT                        R12 ; [+7]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R13 R0 K2 ["_persistentUserSettings"]
       25 GETTABLE                         R12 R13 R6
       26 MOVE                             R13 R8
       27 CALL                             R11 2 1
       28 JUMP                             ; [+1]
       29 MOVE                             R11 R8
       30 SETTABLE                         R11 R10 R6
       31 GETTABLEKS                       R10 R0 K3 ["_sessionUserSettings"]
       33 GETTABLEKS                       R13 R0 K3 ["_sessionUserSettings"]
       35 GETTABLE                         R12 R13 R6
       36 JUMPIFNOT                        R12 ; [+7]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R13 R0 K3 ["_sessionUserSettings"]
       40 GETTABLE                         R12 R13 R6
       41 MOVE                             R13 R9
       42 CALL                             R11 2 1
       43 JUMP                             ; [+1]
       44 MOVE                             R11 R9
       45 SETTABLE                         R11 R10 R6
       46 MOVE                             R10 R2
       47 JUMPIF                           R10 ; [+8]
       48 GETIMPORT                        R11 K5 [next]
       50 MOVE                             R12 R8
       51 CALL                             R11 1 1
       52 JUMPIFNOTEQKNIL                  R11 ; [+2]
       54 LOADB                            R10 0 +1
       55 LOADB                            R10 1
       56 MOVE                             R2 R10
       57 FORGLOOP                         R3 2 ; [-53]
       59 JUMPIFNOT                        R2 ; [+19]
       60 GETTABLEKS                       R3 R0 K6 ["_saveSettingsTask"]
       62 JUMPIFNOT                        R3 ; [+8]
       63 GETIMPORT                        R3 K9 [task.cancel]
       65 GETTABLEKS                       R4 R0 K6 ["_saveSettingsTask"]
       67 CALL                             R3 1 0
       68 LOADNIL                          R3
       69 SETTABLEKS                       R3 R0 K6 ["_saveSettingsTask"]
       71 GETIMPORT                        R3 K11 [task.delay]
       73 LOADN                            R4 1
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          VAL R0
       76 CALL                             R3 2 1
       77 SETTABLEKS                       R3 R0 K6 ["_saveSettingsTask"]
       79 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getShouldBeCompact"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["Id"]
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R7
       10 DUPTABLE                         R9 K3 [{"Id", "Label", "Children"}]
       11 SETTABLEKS                       R7 R9 K0 ["Id"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K4 ["_localization"]
       16 LOADK                            R12 K5 ["Category"]
       17 GETTABLEKS                       R13 R6 K0 ["Id"]
       19 NAMECALL                         R10 R10 K6 ["getText"]
       21 CALL                             R10 3 1
       22 SETTABLEKS                       R10 R9 K1 ["Label"]
       24 GETTABLEKS                       R10 R8 K7 ["Generator"]
       26 DUPTABLE                         R11 K11 [{"Localization", "Stylizer", "Tool"}]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K4 ["_localization"]
       30 SETTABLEKS                       R12 R11 K8 ["Localization"]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R12 R12 K12 ["_stylizer"]
       35 SETTABLEKS                       R12 R11 K9 ["Stylizer"]
       37 GETUPVAL                         R12 1
       38 SETTABLEKS                       R12 R11 K10 ["Tool"]
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R12 R12 K13 ["Get"]
       43 GETTABLEKS                       R13 R6 K0 ["Id"]
       45 GETUPVAL                         R14 1
       46 GETTABLEKS                       R14 R14 K14 ["_pluginController"]
       48 GETUPVAL                         R16 1
       49 GETTABLEKS                       R16 R16 K15 ["_persistentUserSettings"]
       51 GETTABLEKS                       R17 R6 K0 ["Id"]
       53 GETTABLE                         R15 R16 R17
       54 GETUPVAL                         R17 1
       55 GETTABLEKS                       R17 R17 K16 ["_sessionUserSettings"]
       57 GETTABLEKS                       R18 R6 K0 ["Id"]
       59 GETTABLE                         R16 R17 R18
       60 CALL                             R12 4 1
       61 GETUPVAL                         R13 1
       62 GETTABLEKS                       R13 R13 K17 ["_name"]
       64 GETUPVAL                         R15 1
       65 GETTABLEKS                       R15 R15 K18 ["_overrides"]
       67 GETTABLEKS                       R16 R6 K0 ["Id"]
       69 GETTABLE                         R14 R15 R16
       70 JUMPIF                           R14 ; [+2]
       71 NEWTABLE                         R14 0 0
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R10 R9 K2 ["Children"]
       76 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       78 MOVE                             R11 R1
       79 MOVE                             R12 R9
       80 GETIMPORT                        R10 K21 [table.insert]
       82 CALL                             R10 2 0
       83 FORGLOOP                         R2 2 ; [-78]
       85 RETURN                           R1 1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 MOVE                             R2 R1
        5 GETTABLEKS                       R3 R0 K0 ["_configuration"]
        7 CALL                             R2 1 1
        8 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["getPayload"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["_gizmos"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 DUPTABLE                         R10 K5 [{"Id", "Schema", "Value"}]
       11 GETTABLEKS                       R11 R7 K2 ["Id"]
       13 SETTABLEKS                       R11 R10 K2 ["Id"]
       15 GETTABLEKS                       R11 R7 K3 ["Schema"]
       17 SETTABLEKS                       R11 R10 K3 ["Schema"]
       19 SETTABLEKS                       R2 R10 K4 ["Value"]
       21 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       23 MOVE                             R9 R1
       24 GETIMPORT                        R8 K8 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 ; [-18]
       29 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnFormChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["setPayload"]
        3 CALL                             R2 2 0
        4 NAMECALL                         R2 R0 K1 ["setDisabledState"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [task.spawn]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnGizmoChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["setPayload"]
        3 CALL                             R2 2 0
        4 NAMECALL                         R2 R0 K1 ["setDisabledState"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [task.spawn]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["form"]
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["Children"]
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLEKS                       R12 R11 K2 ["Validate"]
       14 JUMPIFNOT                        R12 ; [+8]
       15 GETTABLEKS                       R12 R11 K3 ["Value"]
       17 JUMPIFNOT                        R12 ; [+5]
       18 GETTABLEKS                       R12 R11 K2 ["Validate"]
       20 GETTABLEKS                       R13 R11 K3 ["Value"]
       22 CALL                             R12 1 0
       23 FORGLOOP                         R7 2 ; [-12]
       25 FORGLOOP                         R2 2 ; [-19]
       27 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_category"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_tile"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnShortcutChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 1 0
        5 GETUPVAL                         R4 1
        6 SETTABLE                         R0 R3 R4
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K0 ["setPayload"]
       12 CALL                             R2 2 0
       13 GETIMPORT                        R2 K3 [task.spawn]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U2
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["deactivateShortcuts"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["activateShortcuts"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["deactivateShortcuts"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["activateShortcuts"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_25:
        0 NAMECALL                         R1 R0 K0 ["getPayload"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_shortcuts"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R7 R6
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLEKS                       R13 R0 K2 ["_shortcutConnections"]
       14 GETTABLEKS                       R14 R0 K3 ["_shortcutController"]
       16 MOVE                             R16 R11
       17 GETTABLE                         R18 R1 R5
       18 GETTABLE                         R17 R18 R11
       19 NEWCLOSURE                       R18 P0
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R11
       22 CAPTURE                          VAL R0
       23 NEWCLOSURE                       R19 P1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R14 R14 K4 ["registerShortcut"]
       27 CALL                             R14 5 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R12 K7 [table.insert]
       31 CALL                             R12 -1 0
       32 FORGLOOP                         R7 2 ; [-21]
       34 FORGLOOP                         R2 2 ; [-27]
       36 GETTABLEKS                       R2 R0 K8 ["OnFormChanged"]
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R2 R2 K9 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R0 K10 ["_refreshShortcuts"]
       45 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_shortcutConnections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 NAMECALL                         R11 R10 K1 ["Disconnect"]
       11 CALL                             R11 1 0
       12 FORGLOOP                         R6 2 ; [-4]
       14 FORGLOOP                         R1 2 ; [-10]
       16 GETTABLEKS                       R1 R0 K2 ["_refreshShortcuts"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K2 ["_refreshShortcuts"]
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_29:
        0 NAMECALL                         R1 R0 K0 ["activateShortcuts"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["setDisabledState"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K2 ["checkDisabledState"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["_pluginController"]
       11 GETTABLEKS                       R1 R1 K4 ["Compact"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K5 ["Connect"]
       17 CALL                             R1 2 1
       18 SETTABLEKS                       R1 R0 K6 ["_compactConnection"]
       20 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 NAMECALL                         R1 R0 K0 ["deactivateShortcuts"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["reportAnalytics"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_compactConnection"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETTABLEKS                       R1 R0 K2 ["_compactConnection"]
       11 NAMECALL                         R1 R1 K3 ["Disconnect"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_32:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_isRunning"]
        3 NAMECALL                         R2 R0 K1 ["setDisabledState"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_33:
        0 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R5 R0 K0 ["_errors"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+5]
        4 GETTABLEKS                       R4 R0 K0 ["_errors"]
        6 NEWTABLE                         R5 0 0
        8 SETTABLE                         R5 R4 R1
        9 GETTABLEKS                       R5 R0 K0 ["_errors"]
       11 GETTABLE                         R4 R5 R1
       12 LOADB                            R5 1
       13 SETTABLE                         R5 R4 R2
       14 NAMECALL                         R4 R0 K1 ["setDisabledState"]
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R4 R0 K0 ["_errors"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K0 ["_errors"]
        7 GETTABLE                         R3 R4 R1
        8 LOADNIL                          R4
        9 SETTABLE                         R4 R3 R2
       10 GETIMPORT                        R3 K2 [next]
       12 GETTABLEKS                       R5 R0 K0 ["_errors"]
       14 GETTABLE                         R4 R5 R1
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+5]
       18 GETTABLEKS                       R3 R0 K0 ["_errors"]
       20 LOADNIL                          R4
       21 SETTABLE                         R4 R3 R1
       22 NAMECALL                         R3 R0 K3 ["setDisabledState"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_36:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K1 [next]
        3 GETTABLEKS                       R3 R0 K2 ["_errors"]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+3]
        8 GETTABLEKS                       R1 R0 K3 ["_isRunning"]
       10 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R5 R0 K0 ["_validateFunctions"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+5]
        4 GETTABLEKS                       R4 R0 K0 ["_validateFunctions"]
        6 NEWTABLE                         R5 0 0
        8 SETTABLE                         R5 R4 R1
        9 GETTABLEKS                       R5 R0 K0 ["_validateFunctions"]
       11 GETTABLE                         R4 R5 R1
       12 SETTABLE                         R3 R4 R2
       13 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R4 R0 K0 ["_validateFunctions"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R5 R0 K0 ["_validateFunctions"]
        7 GETTABLE                         R4 R5 R1
        8 GETTABLE                         R3 R4 R2
        9 RETURN                           R3 1

PROTO_39:
        0 RETURN                           R0 0

PROTO_40:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isRunning"]
        3 GETTABLEKS                       R1 R0 K1 ["_operation"]
        5 NAMECALL                         R1 R1 K2 ["wasCanceled"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+56]
        9 NAMECALL                         R1 R0 K3 ["getPayload"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K4 ["_analytics"]
       14 LOADK                            R4 K5 ["RegionProperties"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K6 ["getRegionPayload"]
       18 MOVE                             R6 R1
       19 GETTABLEKS                       R7 R0 K1 ["_operation"]
       21 NAMECALL                         R7 R7 K7 ["getTimeTaken"]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R8 R0 K8 ["_name"]
       26 CALL                             R5 3 -1
       27 NAMECALL                         R2 R2 K9 ["report"]
       29 CALL                             R2 -1 0
       30 GETTABLEKS                       R2 R0 K4 ["_analytics"]
       32 LOADK                            R4 K10 ["Usage"]
       33 GETTABLEKS                       R5 R0 K8 ["_name"]
       35 LOADN                            R6 1
       36 NAMECALL                         R2 R2 K9 ["report"]
       38 CALL                             R2 4 0
       39 GETTABLEKS                       R2 R0 K1 ["_operation"]
       41 NAMECALL                         R2 R2 K11 ["getTimeStatistic"]
       43 CALL                             R2 1 1
       44 JUMPIFNOT                        R2 ; [+9]
       45 GETTABLEKS                       R3 R0 K4 ["_analytics"]
       47 LOADK                            R5 K12 ["Performance"]
       48 GETTABLEKS                       R6 R0 K8 ["_name"]
       50 MOVE                             R7 R2
       51 NAMECALL                         R3 R3 K9 ["report"]
       53 CALL                             R3 4 0
       54 GETTABLEKS                       R3 R0 K13 ["_operationFinishedConnection"]
       56 JUMPIFNOT                        R3 ; [+8]
       57 GETTABLEKS                       R3 R0 K13 ["_operationFinishedConnection"]
       59 NAMECALL                         R3 R3 K14 ["Disconnect"]
       61 CALL                             R3 1 0
       62 LOADNIL                          R3
       63 SETTABLEKS                       R3 R0 K13 ["_operationFinishedConnection"]
       65 NAMECALL                         R1 R0 K15 ["setDisabledState"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_41:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["Storage"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["SettingsHelper"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["Signal"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K8 ["Src"]
       40 GETTABLEKS                       R7 R7 K14 ["Schemas"]
       42 GETTABLEKS                       R7 R7 K15 ["Settings"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K16 ["Resources"]
       51 GETTABLEKS                       R8 R8 K17 ["Constants"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R0 K8 ["Src"]
       56 GETTABLEKS                       R8 R8 K11 ["Util"]
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R8 K18 ["AnalyticsHelper"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Src"]
       67 GETTABLEKS                       R11 R11 K11 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["deepJoinWithExceptions"]
       71 CALL                             R10 1 1
       72 NEWTABLE                         R11 32 0
       74 SETTABLEKS                       R11 R11 K20 ["__index"]
       76 DUPCLOSURE                       R12 K21 [PROTO_0]
       77 SETTABLEKS                       R12 R11 K22 ["new"]
       79 DUPCLOSURE                       R12 K23 [PROTO_1]
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R12 R11 K24 ["init"]
       83 DUPCLOSURE                       R12 K25 [PROTO_4]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R12 R11 K26 ["registerSettings"]
       89 DUPCLOSURE                       R12 K27 [PROTO_5]
       90 SETTABLEKS                       R12 R11 K28 ["registerShortcuts"]
       92 DUPCLOSURE                       R12 K29 [PROTO_6]
       93 CAPTURE                          VAL R11
       94 SETTABLEKS                       R12 R11 K30 ["empty"]
       96 DUPCLOSURE                       R12 K31 [PROTO_7]
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R12 R11 K32 ["getPayload"]
      100 DUPCLOSURE                       R12 K33 [PROTO_9]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R12 R11 K34 ["setPayload"]
      106 DUPCLOSURE                       R12 K35 [PROTO_10]
      107 SETTABLEKS                       R12 R11 K36 ["getShouldBeCompact"]
      109 DUPCLOSURE                       R12 K37 [PROTO_12]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R12 R11 K38 ["form"]
      114 DUPCLOSURE                       R12 K39 [PROTO_13]
      115 SETTABLEKS                       R12 R11 K40 ["gizmos"]
      117 DUPCLOSURE                       R12 K41 [PROTO_15]
      118 SETTABLEKS                       R12 R11 K42 ["saveForm"]
      120 DUPCLOSURE                       R12 K43 [PROTO_17]
      121 SETTABLEKS                       R12 R11 K44 ["saveGizmos"]
      123 DUPCLOSURE                       R12 K45 [PROTO_18]
      124 SETTABLEKS                       R12 R11 K46 ["checkDisabledState"]
      126 DUPCLOSURE                       R12 K47 [PROTO_19]
      127 SETTABLEKS                       R12 R11 K48 ["getCategory"]
      129 DUPCLOSURE                       R12 K49 [PROTO_20]
      130 SETTABLEKS                       R12 R11 K50 ["getTile"]
      132 DUPCLOSURE                       R12 K51 [PROTO_25]
      133 SETTABLEKS                       R12 R11 K52 ["activateShortcuts"]
      135 DUPCLOSURE                       R12 K53 [PROTO_26]
      136 SETTABLEKS                       R12 R11 K54 ["deactivateShortcuts"]
      138 DUPCLOSURE                       R12 K55 [PROTO_29]
      139 SETTABLEKS                       R12 R11 K56 ["activate"]
      141 DUPCLOSURE                       R12 K57 [PROTO_30]
      142 SETTABLEKS                       R12 R11 K58 ["reportAnalytics"]
      144 DUPCLOSURE                       R12 K59 [PROTO_31]
      145 SETTABLEKS                       R12 R11 K60 ["deactivate"]
      147 DUPCLOSURE                       R12 K61 [PROTO_32]
      148 SETTABLEKS                       R12 R11 K62 ["startOperation"]
      150 DUPCLOSURE                       R12 K63 [PROTO_33]
      151 SETTABLEKS                       R12 R11 K64 ["operation"]
      153 DUPCLOSURE                       R12 K65 [PROTO_34]
      154 SETTABLEKS                       R12 R11 K66 ["reportError"]
      156 DUPCLOSURE                       R12 K67 [PROTO_35]
      157 SETTABLEKS                       R12 R11 K68 ["clearError"]
      159 DUPCLOSURE                       R12 K69 [PROTO_36]
      160 SETTABLEKS                       R12 R11 K70 ["hasError"]
      162 DUPCLOSURE                       R12 K71 [PROTO_37]
      163 SETTABLEKS                       R12 R11 K72 ["setValidateFunction"]
      165 DUPCLOSURE                       R12 K73 [PROTO_38]
      166 SETTABLEKS                       R12 R11 K74 ["getValidateFunction"]
      168 DUPCLOSURE                       R12 K75 [PROTO_39]
      169 SETTABLEKS                       R12 R11 K76 ["setDisabledState"]
      171 DUPCLOSURE                       R12 K77 [PROTO_40]
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R12 R11 K78 ["finishOperation"]
      175 DUPCLOSURE                       R12 K79 [PROTO_41]
      176 SETTABLEKS                       R12 R11 K80 ["note"]
      178 RETURN                           R11 1
