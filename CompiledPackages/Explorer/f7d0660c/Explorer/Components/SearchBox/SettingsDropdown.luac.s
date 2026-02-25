PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"displayText", "text"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["SettingsDropdown"]
        5 LOADK                            R5 K4 ["IncrementNames_v2"]
        6 NAMECALL                         R2 R2 K5 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K0 ["displayText"]
       11 LOADK                            R2 K6 ["IncrementNames"]
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 DUPTABLE                         R2 K2 [{"displayText", "text"}]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K3 ["SettingsDropdown"]
       17 LOADK                            R6 K7 ["ExpandHierarchy_v2"]
       18 NAMECALL                         R3 R3 K5 ["getText"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K0 ["displayText"]
       23 LOADK                            R3 K8 ["ExpandHierarchy"]
       24 SETTABLEKS                       R3 R2 K1 ["text"]
       26 SETLIST                          R0 R1 2 [1]
       28 GETUPVAL                         R1 1
       29 JUMPIFEQKNIL                     R1 ; [+59]
       31 MOVE                             R1 R0
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 FORGPREP                         R1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R8 R5 K1 ["text"]
       38 GETTABLE                         R6 R7 R8
       39 JUMPIFNOT                        R6 ; [+23]
       40 GETUPVAL                         R8 2
       41 CALL                             R8 0 1
       42 JUMPIFNOT                        R8 ; [+9]
       43 GETUPVAL                         R8 3
       44 GETTABLEKS                       R7 R8 K9 ["themed"]
       46 LOADK                            R8 K10 ["checkBox_checked"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K11 ["theme"]
       50 CALL                             R7 2 1
       51 JUMP                             ; [+5]
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R7 R8 K12 ["standard"]
       55 LOADK                            R8 K13 ["checkBox"]
       56 CALL                             R7 1 1
       57 SETTABLEKS                       R7 R5 K14 ["icon"]
       59 LOADB                            R7 1
       60 SETTABLEKS                       R7 R5 K15 ["keepIconColor"]
       62 JUMP                             ; [+24]
       63 GETUPVAL                         R7 2
       64 CALL                             R7 0 1
       65 JUMPIFNOT                        R7 ; [+14]
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R7 R8 K9 ["themed"]
       69 LOADK                            R8 K16 ["checkBox_unchecked"]
       70 GETUPVAL                         R10 4
       71 GETTABLEKS                       R9 R10 K11 ["theme"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R5 K14 ["icon"]
       76 LOADB                            R7 1
       77 SETTABLEKS                       R7 R5 K15 ["keepIconColor"]
       79 JUMP                             ; [+7]
       80 GETUPVAL                         R8 3
       81 GETTABLEKS                       R7 R8 K12 ["standard"]
       83 LOADK                            R8 K17 ["uncheckedBox"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R5 K14 ["icon"]
       87 FORGLOOP                         R1 2 ; [-53]
       89 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 2 0
        2 DUPTABLE                         R1 K2 [{"getSettingAsync", "setSetting"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K3 ["getIncrementNamesAsync"]
        6 SETTABLEKS                       R2 R1 K0 ["getSettingAsync"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["setIncrementNames"]
       11 SETTABLEKS                       R2 R1 K1 ["setSetting"]
       13 SETTABLEKS                       R1 R0 K5 ["IncrementNames"]
       15 DUPTABLE                         R1 K2 [{"getSettingAsync", "setSetting"}]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K6 ["getExpandHierarchy"]
       19 SETTABLEKS                       R2 R1 K0 ["getSettingAsync"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K7 ["setExpandHierarchy"]
       24 SETTABLEKS                       R2 R1 K1 ["setSetting"]
       26 SETTABLEKS                       R1 R0 K8 ["ExpandHierarchy"]
       28 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R2 R3 R4
        7 NOT                              R1 R2
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R0 R2
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 1
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K3 ["setSetting"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R2 R3 K4 ["logCounter"]
       23 DUPTABLE                         R3 K10 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
       24 LOADK                            R4 K11 ["LuaExplorerSettingsChanged"]
       25 SETTABLEKS                       R4 R3 K5 ["eventName"]
       27 NEWTABLE                         R4 0 1
       29 LOADK                            R5 K12 ["RobloxTelemetryCounter"]
       30 SETLIST                          R4 R5 1 [1]
       32 SETTABLEKS                       R4 R3 K6 ["backends"]
       34 GETIMPORT                        R4 K14 [game]
       36 LOADK                            R6 K15 ["LuaExplorerSettingsChangedTelemetryThrottlingHundredthsPercent"]
       37 LOADN                            R7 16
       38 NAMECALL                         R4 R4 K16 ["DefineFastInt"]
       40 CALL                             R4 3 1
       41 SETTABLEKS                       R4 R3 K7 ["throttlingPercentage"]
       43 LOADK                            R4 K17 ["Fired when a settings item is changed"]
       44 SETTABLEKS                       R4 R3 K8 ["description"]
       46 LOADK                            R4 K18 ["2024-12-03"]
       47 SETTABLEKS                       R4 R3 K9 ["lastUpdated"]
       49 DUPTABLE                         R4 K21 [{"enabled", "setting"}]
       50 SETTABLEKS                       R1 R4 K19 ["enabled"]
       52 GETUPVAL                         R5 1
       53 SETTABLEKS                       R5 R4 K20 ["setting"]
       55 CALL                             R2 2 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["text"]
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R10 R5 K0 ["text"]
       11 GETTABLE                         R8 R9 R10
       12 GETTABLEKS                       R7 R8 K1 ["getSettingAsync"]
       14 CALL                             R7 0 1
       15 SETTABLE                         R7 R0 R6
       16 FORGLOOP                         R1 2 ; [-11]
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["AnalyticsContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["ContextServices"]
       10 GETTABLEKS                       R2 R3 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K4 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K0 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K5 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["useContext"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K5 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K6 ["useState"]
       32 LOADNIL                          R6
       33 CALL                             R5 1 2
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R9 0 2
       45 MOVE                             R10 R5
       46 MOVE                             R11 R2
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R3
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 1
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       64 NEWCLOSURE                       R10 P2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 NEWTABLE                         R11 0 3
       71 MOVE                             R12 R8
       72 MOVE                             R13 R5
       73 GETTABLEKS                       R14 R1 K9 ["logCounter"]
       75 SETLIST                          R11 R12 3 [1]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R10 R11 K10 ["useEffect"]
       81 NEWCLOSURE                       R11 P3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R6
       85 NEWTABLE                         R12 0 0
       87 CALL                             R10 2 0
       88 LOADB                            R10 0
       89 JUMPIFEQKNIL                     R5 ; [+32]
       91 GETUPVAL                         R10 7
       92 GETUPVAL                         R11 8
       93 DUPTABLE                         R12 K19 [{"dropdownRef", "enterPressedSignalRef", "itemData", "onItemClicked", "shouldIgnoreMaxHeight", "selectedItemIndex", "setSelectedItemIndex", "session"}]
       94 GETTABLEKS                       R13 R0 K11 ["dropdownRef"]
       96 SETTABLEKS                       R13 R12 K11 ["dropdownRef"]
       98 GETTABLEKS                       R13 R0 K12 ["enterPressedSignalRef"]
      100 SETTABLEKS                       R13 R12 K12 ["enterPressedSignalRef"]
      102 SETTABLEKS                       R7 R12 K13 ["itemData"]
      104 SETTABLEKS                       R9 R12 K14 ["onItemClicked"]
      106 LOADB                            R13 1
      107 SETTABLEKS                       R13 R12 K15 ["shouldIgnoreMaxHeight"]
      109 GETTABLEKS                       R13 R0 K16 ["selectedItemIndex"]
      111 SETTABLEKS                       R13 R12 K16 ["selectedItemIndex"]
      113 GETTABLEKS                       R13 R0 K17 ["setSelectedItemIndex"]
      115 SETTABLEKS                       R13 R12 K17 ["setSelectedItemIndex"]
      117 GETTABLEKS                       R13 R0 K18 ["session"]
      119 SETTABLEKS                       R13 R12 K18 ["session"]
      121 CALL                             R10 2 1
      122 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["SearchBox"]
       20 GETTABLEKS                       R3 R4 K10 ["Dropdown"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["ImageUrl"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["RpcTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R10 K16 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K17 ["SettingsContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Parent"]
       62 GETTABLEKS                       R9 R10 K18 ["Signal"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K8 ["Components"]
       69 GETTABLEKS                       R11 R12 K16 ["Contexts"]
       71 GETTABLEKS                       R10 R11 K19 ["ThemeContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K20 ["Flags"]
       78 GETTABLEKS                       R11 R12 K21 ["getFFlagExplorerNewCheckBoxIcons"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R5 K22 ["createElement"]
       83 DUPCLOSURE                       R12 K23 [PROTO_6]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R2
       93 RETURN                           R12 1
