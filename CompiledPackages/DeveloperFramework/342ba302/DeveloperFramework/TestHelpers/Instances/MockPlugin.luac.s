PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [game]
        3 GETTABLEKS                       R1 R1 K2 ["CoreGui"]
        5 SETTABLEKS                       R1 R0 K3 ["Parent"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K5 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 LOADK                            R1 K6 ["PluginMockGui"]
       10 SETTABLEKS                       R1 R0 K7 ["Name"]
       12 GETIMPORT                        R1 K11 [Enum.ZIndexBehavior.Sibling]
       14 SETTABLEKS                       R1 R0 K9 ["ZIndexBehavior"]
       16 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R5 K17 [{[1], ["Name"], ["_plugin"], ["Deactivation"], ["Unloading"], ["_activated"] = False, ["_activatedWithExclusiveMouse"] = False, ["_mouse"], ["_toolbars"], ["_mockedSettings"], ["_mockItems"], ["_mockItemsCallbacks"], ["_mockInvokeCallbacks"], ["_uri"], ["mockComponents"], ["subWindows"]}]
        1 ORK                              R6 R0 K18 [""]
        2 SETTABLEKS                       R6 R5 K0 ["_id"]
        4 ORK                              R6 R0 K19 ["MockPlugin"]
        5 SETTABLEKS                       R6 R5 K1 ["Name"]
        7 SETTABLEKS                       R2 R5 K2 ["_plugin"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K20 ["new"]
       12 CALL                             R6 0 1
       13 SETTABLEKS                       R6 R5 K3 ["Deactivation"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K20 ["new"]
       18 CALL                             R6 0 1
       19 SETTABLEKS                       R6 R5 K4 ["Unloading"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K20 ["new"]
       24 CALL                             R6 0 1
       25 SETTABLEKS                       R6 R5 K8 ["_mouse"]
       27 NEWTABLE                         R6 0 0
       29 SETTABLEKS                       R6 R5 K9 ["_toolbars"]
       31 NEWTABLE                         R6 0 0
       33 SETTABLEKS                       R6 R5 K10 ["_mockedSettings"]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K11 ["_mockItems"]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K12 ["_mockItemsCallbacks"]
       43 NEWTABLE                         R6 0 0
       45 SETTABLEKS                       R6 R5 K13 ["_mockInvokeCallbacks"]
       47 SETTABLEKS                       R3 R5 K14 ["_uri"]
       49 GETUPVAL                         R6 2
       50 CALL                             R6 0 1
       51 SETTABLEKS                       R6 R5 K15 ["mockComponents"]
       53 NEWTABLE                         R6 0 0
       55 SETTABLEKS                       R6 R5 K16 ["subWindows"]
       57 GETUPVAL                         R6 3
       58 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       60 GETIMPORT                        R4 K22 [setmetatable]
       62 CALL                             R4 2 1
       63 JUMPIFNOT                        R1 ; [+6]
       64 SETTABLEKS                       R1 R4 K23 ["_mockedPlugins"]
       66 GETTABLEKS                       R5 R4 K23 ["_mockedPlugins"]
       68 LOADB                            R6 1
       69 SETTABLE                         R6 R5 R4
       70 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_toolbars"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["Destroy"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["_toolbars"]
       15 GETTABLEKS                       R1 R0 K4 ["_mouse"]
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETTABLEKS                       R1 R0 K4 ["_mouse"]
       20 NAMECALL                         R1 R1 K3 ["Destroy"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K4 ["_mouse"]
       26 GETTABLEKS                       R1 R0 K5 ["_mockedPlugins"]
       28 JUMPIFNOT                        R1 ; [+7]
       29 GETTABLEKS                       R1 R0 K5 ["_mockedPlugins"]
       31 LOADNIL                          R2
       32 SETTABLE                         R2 R1 R0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K5 ["_mockedPlugins"]
       36 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_toolbars"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["_toolbars"]
        6 GETTABLE                         R2 R3 R1
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R3 R0 K0 ["_toolbars"]
       16 SETTABLE                         R2 R3 R1
       17 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_activated"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_activatedWithExclusiveMouse"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_mockedPlugins"]
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETIMPORT                        R2 K2 [pairs]
        5 GETTABLEKS                       R3 R0 K0 ["_mockedPlugins"]
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R5 K3 ["_activated"]
       11 JUMPIFNOT                        R7 ; [+3]
       12 NAMECALL                         R7 R5 K4 ["Deactivate"]
       14 CALL                             R7 1 0
       15 FORGLOOP                         R2 2 ; [-7]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R0 K3 ["_activated"]
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADB                            R2 1
       22 JUMP                             ; [+1]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R0 K5 ["_activatedWithExclusiveMouse"]
       26 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"Triggered"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["Triggered"]
        7 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_activated"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_activated"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["_activatedWithExclusiveMouse"]
       10 GETTABLEKS                       R1 R0 K2 ["Deactivation"]
       12 NAMECALL                         R1 R1 K3 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 ADDK                             R3 R2 K2 [1]
        4 GETTABLEKS                       R5 R0 K3 ["subWindows"]
        6 GETTABLE                         R4 R5 R1
        7 JUMPIF                           R4 ; [+14]
        8 GETIMPORT                        R4 K5 [wait]
       10 CALL                             R4 0 0
       11 GETIMPORT                        R4 K1 [tick]
       13 CALL                             R4 0 1
       14 ADD                              R5 R2 R3
       15 JUMPIFNOTLT                      R5 R4 ; [+5]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K8 ["Sub-window has not been created"]
       20 CALL                             R4 1 0
       21 JUMPBACK                         ; [-18]
       22 GETTABLEKS                       R5 R0 K3 ["subWindows"]
       24 GETTABLE                         R4 R5 R1
       25 RETURN                           R4 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["subWindows"]
        5 GETUPVAL                         R3 1
        6 CALL                             R1 2 1
        7 FASTCALL2K                       ASSERT R1 K4 ; [+4]
        9 LOADK                            R2 K4 ["Couldn't find sub window GUI"]
       10 GETIMPORT                        R0 K6 [assert]
       12 CALL                             R0 2 1
       13 GETIMPORT                        R1 K8 [table.remove]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["subWindows"]
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      2
        1 GETIMPORT                        R3 K2 [Instance.new]
        3 LOADK                            R4 K3 ["ScreenGui"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K5 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CALL                             R4 1 0
       10 LOADK                            R4 K6 ["PluginMockGui"]
       11 SETTABLEKS                       R4 R3 K7 ["Name"]
       13 GETIMPORT                        R4 K11 [Enum.ZIndexBehavior.Sibling]
       15 SETTABLEKS                       R4 R3 K9 ["ZIndexBehavior"]
       17 MOVE                             R2 R3
       18 GETTABLEKS                       R4 R0 K12 ["subWindows"]
       20 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       22 MOVE                             R5 R2
       23 GETIMPORT                        R3 K15 [table.insert]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R3 R2 K16 ["Destroying"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R3 R3 K17 ["Connect"]
       33 CALL                             R3 2 0
       34 RETURN                           R2 1

PROTO_14:
        0 PREPVARARGS                      2
        1 MOVE                             R4 R1
        2 GETVARARGS                       R5 -1
        3 NAMECALL                         R2 R0 K0 ["CreateDockWidgetPluginGui"]
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_mockedSettings"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_mockedSettings"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_mockedSettings"]
        2 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_mockItems"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_mockItems"]
        2 SETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R6 R0 K1 ["_mockItemsCallbacks"]
        5 GETTABLE                         R3 R6 R1
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 MOVE                             R8 R7
       13 MOVE                             R9 R2
       14 CALL                             R8 1 0
       15 FORGLOOP                         R3 2 ; [-4]
       17 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_mockItemsCallbacks"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R0 R3 R4
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETUPVAL                         R5 2
        9 JUMPIFNOTEQ                      R4 R5 ; [+11]
       11 GETIMPORT                        R5 K3 [table.remove]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["_mockItemsCallbacks"]
       16 GETUPVAL                         R8 1
       17 GETTABLE                         R6 R7 R8
       18 MOVE                             R7 R3
       19 CALL                             R5 2 0
       20 RETURN                           R0 0
       21 FORGLOOP                         R0 2 ; [-14]
       23 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_mockItemsCallbacks"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+6]
        5 GETTABLEKS                       R3 R0 K0 ["_mockItemsCallbacks"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLE                         R4 R3 R1
       10 GETTABLEKS                       R5 R0 K0 ["_mockItemsCallbacks"]
       12 GETTABLE                         R4 R5 R1
       13 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R3 K3 [table.insert]
       18 CALL                             R3 2 0
       19 DUPTABLE                         R3 K5 [{"Disconnect"}]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K4 ["Disconnect"]
       26 RETURN                           R3 1

PROTO_22:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R5 R0 K0 ["_mockInvokeCallbacks"]
        3 GETTABLE                         R2 R5 R1
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 MOVE                             R7 R6
       11 GETVARARGS                       R8 -1
       12 CALL                             R7 -1 0
       13 FORGLOOP                         R2 2 ; [-4]
       15 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_mockInvokeCallbacks"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R0 R3 R4
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETUPVAL                         R5 2
        9 JUMPIFNOTEQ                      R4 R5 ; [+11]
       11 GETIMPORT                        R5 K3 [table.remove]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["_mockInvokeCallbacks"]
       16 GETUPVAL                         R8 1
       17 GETTABLE                         R6 R7 R8
       18 MOVE                             R7 R3
       19 CALL                             R5 2 0
       20 RETURN                           R0 0
       21 FORGLOOP                         R0 2 ; [-14]
       23 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R4 R0 K0 ["_mockInvokeCallbacks"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+6]
        5 GETTABLEKS                       R3 R0 K0 ["_mockInvokeCallbacks"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLE                         R4 R3 R1
       10 GETTABLEKS                       R5 R0 K0 ["_mockInvokeCallbacks"]
       12 GETTABLE                         R4 R5 R1
       13 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R3 K3 [table.insert]
       18 CALL                             R3 2 0
       19 DUPTABLE                         R3 K5 [{"Disconnect"}]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K4 ["Disconnect"]
       26 RETURN                           R3 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_uri"]
        2 JUMPIF                           R1 ; [+1]
        3 DUPTABLE                         R1 K6 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "MockPlugin"}]
        4 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R3 R0 K0 ["mockComponents"]
        2 GETTABLE                         R2 R3 R1
        3 MOVE                             R4 R2
        4 JUMPIF                           R4 ; [+2]
        5 GETTABLEKS                       R4 R0 K1 ["_plugin"]
        7 LOADK                            R6 K2 ["Cannot mock plugin component: %*"]
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R6 K3 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 FASTCALL2                        ASSERT R4 R5 ; [+3]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 MOVE                             R3 R2
       19 JUMPIF                           R3 ; [+6]
       20 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R3 K6 ["GetPluginComponent"]
       25 CALL                             R3 2 1
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Util"]
       13 GETTABLEKS                       R2 R2 K6 ["Signal"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["MockMouse"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K2 ["Parent"]
       31 GETTABLEKS                       R4 R4 K8 ["MockPluginToolbar"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K2 ["Parent"]
       40 GETTABLEKS                       R5 R5 K9 ["MockPluginComponents"]
       42 CALL                             R4 1 1
       43 NEWTABLE                         R5 32 0
       45 SETTABLEKS                       R5 R5 K10 ["__index"]
       47 DUPCLOSURE                       R6 K11 [PROTO_1]
       48 DUPCLOSURE                       R7 K12 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R7 R5 K13 ["new"]
       55 DUPCLOSURE                       R7 K14 [PROTO_3]
       56 SETTABLEKS                       R7 R5 K15 ["Destroy"]
       58 DUPCLOSURE                       R7 K16 [PROTO_4]
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R7 R5 K17 ["CreateToolbar"]
       62 DUPCLOSURE                       R7 K18 [PROTO_5]
       63 SETTABLEKS                       R7 R5 K19 ["IsActivated"]
       65 DUPCLOSURE                       R7 K20 [PROTO_6]
       66 SETTABLEKS                       R7 R5 K21 ["IsActivatedWithExclusiveMouse"]
       68 DUPCLOSURE                       R7 K22 [PROTO_7]
       69 SETTABLEKS                       R7 R5 K23 ["Activate"]
       71 DUPCLOSURE                       R7 K24 [PROTO_8]
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R7 R5 K25 ["CreatePluginAction"]
       75 DUPCLOSURE                       R7 K26 [PROTO_9]
       76 SETTABLEKS                       R7 R5 K27 ["Deactivate"]
       78 DUPCLOSURE                       R7 K28 [PROTO_10]
       79 SETTABLEKS                       R7 R5 K29 ["GetMouse"]
       81 DUPCLOSURE                       R7 K30 [PROTO_11]
       82 SETTABLEKS                       R7 R5 K31 ["GetSubWindow"]
       84 DUPCLOSURE                       R7 K32 [PROTO_13]
       85 SETTABLEKS                       R7 R5 K33 ["CreateDockWidgetPluginGui"]
       87 DUPCLOSURE                       R7 K34 [PROTO_14]
       88 SETTABLEKS                       R7 R5 K35 ["CreateQWidgetPluginGui"]
       90 DUPCLOSURE                       R7 K36 [PROTO_15]
       91 SETTABLEKS                       R7 R5 K37 ["GetSetting"]
       93 DUPCLOSURE                       R7 K38 [PROTO_16]
       94 SETTABLEKS                       R7 R5 K39 ["SetSetting"]
       96 DUPCLOSURE                       R7 K40 [PROTO_17]
       97 SETTABLEKS                       R7 R5 K41 ["MockSettings"]
       99 DUPCLOSURE                       R7 K42 [PROTO_18]
      100 SETTABLEKS                       R7 R5 K43 ["GetItem"]
      102 DUPCLOSURE                       R7 K44 [PROTO_19]
      103 SETTABLEKS                       R7 R5 K45 ["SetItem"]
      105 DUPCLOSURE                       R7 K46 [PROTO_21]
      106 SETTABLEKS                       R7 R5 K47 ["OnSetItem"]
      108 DUPCLOSURE                       R7 K48 [PROTO_22]
      109 SETTABLEKS                       R7 R5 K49 ["Invoke"]
      111 DUPCLOSURE                       R7 K50 [PROTO_24]
      112 SETTABLEKS                       R7 R5 K51 ["OnInvoke"]
      114 DUPCLOSURE                       R7 K52 [PROTO_25]
      115 SETTABLEKS                       R7 R5 K53 ["GetUri"]
      117 DUPCLOSURE                       R7 K54 [PROTO_26]
      118 SETTABLEKS                       R7 R5 K55 ["GetPluginComponent"]
      120 RETURN                           R5 1
