PROTO_0:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Enabled"]
        7 NOT                              R0 R1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R1 1
       10 ADDK                             R1 R1 K1 [1]
       11 SETUPVAL                         R1 1
       12 GETUPVAL                         R1 0
       13 JUMPIFNOT                        R1 ; [+2]
       14 GETUPVAL                         R1 2
       15 JUMPIF                           R1 ; [+37]
       16 GETUPVAL                         R1 3
       17 LOADK                            R3 K2 ["FlagEditorContent"]
       18 DUPTABLE                         R4 K15 [{["Id"] = "FlagEditorContent", ["InitialEnabled"] = True, ["Modal"] = False, ["StaysOnTop"] = True, ["DisableTitleBar"] = False, ["Resizable"] = True, ["Size"], ["MinSize"], ["Title"] = "Flag Editor"}]
       19 GETIMPORT                        R5 K18 [Vector2.new]
       21 LOADN                            R6 800
       22 LOADN                            R7 480
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K11 ["Size"]
       26 GETIMPORT                        R5 K18 [Vector2.new]
       28 LOADN                            R6 800
       29 LOADN                            R7 480
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K12 ["MinSize"]
       33 NAMECALL                         R1 R1 K19 ["CreateQWidgetPluginGui"]
       35 CALL                             R1 3 1
       36 LOADK                            R2 K14 ["Flag Editor"]
       37 SETTABLEKS                       R2 R1 K20 ["Name"]
       39 LOADK                            R2 K14 ["Flag Editor"]
       40 SETTABLEKS                       R2 R1 K13 ["Title"]
       42 GETIMPORT                        R2 K24 [Enum.ZIndexBehavior.Sibling]
       44 SETTABLEKS                       R2 R1 K22 ["ZIndexBehavior"]
       46 SETUPVAL                         R1 0
       47 GETUPVAL                         R2 4
       48 GETTABLEKS                       R2 R2 K25 ["createRoot"]
       50 MOVE                             R3 R1
       51 CALL                             R2 1 1
       52 SETUPVAL                         R2 2
       53 GETUPVAL                         R1 0
       54 GETUPVAL                         R2 2
       55 LOADB                            R3 1
       56 SETTABLEKS                       R3 R1 K0 ["Enabled"]
       58 GETUPVAL                         R5 5
       59 GETTABLEKS                       R5 R5 K26 ["createElement"]
       61 GETUPVAL                         R6 6
       62 DUPTABLE                         R7 K30 [{"plugin", "widget", "reloadToken"}]
       63 GETUPVAL                         R8 3
       64 SETTABLEKS                       R8 R7 K27 ["plugin"]
       66 SETTABLEKS                       R1 R7 K28 ["widget"]
       68 GETUPVAL                         R8 1
       69 SETTABLEKS                       R8 R7 K29 ["reloadToken"]
       71 CALL                             R5 2 -1
       72 NAMECALL                         R3 R2 K31 ["render"]
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagDebugStudioAllowFlagEditor"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["HasInternalPermission"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R0 K3 [pcall]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 2
       15 JUMPIF                           R0 ; [+5]
       16 GETIMPORT                        R2 K5 [warn]
       18 LOADK                            R3 K6 ["Failed to mount Flag Editor:"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R1 R0 K2 ["BindToActivatedAsync"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 NAMECALL                         R1 R1 K3 ["Connect"]
       15 CALL                             R1 2 1
       16 SETUPVAL                         R1 1
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K1 ["unmount"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K2 ["Destroy"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADN                            R4 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          REF R4
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 GETIMPORT                        R6 K2 [task.spawn]
       14 NEWCLOSURE                       R7 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          REF R3
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R5
       21 CALL                             R6 1 0
       22 GETTABLEKS                       R6 R0 K3 ["Unloading"]
       24 NEWCLOSURE                       R8 P2
       25 CAPTURE                          REF R3
       26 CAPTURE                          REF R2
       27 CAPTURE                          REF R1
       28 NAMECALL                         R6 R6 K4 ["Once"]
       30 CALL                             R6 2 0
       31 CLOSEUPVALS                      R1
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Bin"]
       13 GETTABLEKS                       R3 R3 K8 ["Common"]
       15 GETTABLEKS                       R3 R3 K9 ["defineLuaFlags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K11 [game]
       20 LOADK                            R5 K12 ["StudioService"]
       21 NAMECALL                         R3 R3 K13 ["GetService"]
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K6 [require]
       26 GETTABLEKS                       R5 R1 K14 ["React"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R6 R1 K15 ["ReactRoblox"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R7 R7 K16 ["Parent"]
       40 GETTABLEKS                       R7 R7 K17 ["App"]
       42 CALL                             R6 1 1
       43 DUPTABLE                         R7 K26 [{["DataModel"] = "Standalone", ["PluginId"] = "AppConfiguration", ["Category"] = "Actions", ["ItemId"] = "INTERNAL_FlagEditor"}]
       44 DUPCLOSURE                       R8 K27 [PROTO_5]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 RETURN                           R8 1
