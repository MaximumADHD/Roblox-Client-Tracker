PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+37]
        4 GETUPVAL                         R0 2
        5 LOADK                            R2 K0 ["FlagEditorContent"]
        6 DUPTABLE                         R3 K13 [{["Id"] = "FlagEditorContent", ["InitialEnabled"] = True, ["Modal"] = False, ["StaysOnTop"] = True, ["DisableTitleBar"] = False, ["Resizable"] = True, ["Size"], ["MinSize"], ["Title"] = "Flag Editor"}]
        7 GETIMPORT                        R4 K16 [Vector2.new]
        9 LOADN                            R5 800
       10 LOADN                            R6 480
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K9 ["Size"]
       14 GETIMPORT                        R4 K16 [Vector2.new]
       16 LOADN                            R5 800
       17 LOADN                            R6 480
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K10 ["MinSize"]
       21 NAMECALL                         R0 R0 K17 ["CreateQWidgetPluginGui"]
       23 CALL                             R0 3 1
       24 LOADK                            R1 K12 ["Flag Editor"]
       25 SETTABLEKS                       R1 R0 K18 ["Name"]
       27 LOADK                            R1 K12 ["Flag Editor"]
       28 SETTABLEKS                       R1 R0 K11 ["Title"]
       30 GETIMPORT                        R1 K22 [Enum.ZIndexBehavior.Sibling]
       32 SETTABLEKS                       R1 R0 K20 ["ZIndexBehavior"]
       34 SETUPVAL                         R0 0
       35 GETUPVAL                         R1 3
       36 GETTABLEKS                       R1 R1 K23 ["createRoot"]
       38 MOVE                             R2 R0
       39 CALL                             R1 1 1
       40 SETUPVAL                         R1 1
       41 GETUPVAL                         R0 0
       42 GETUPVAL                         R1 1
       43 LOADB                            R2 1
       44 SETTABLEKS                       R2 R0 K24 ["Enabled"]
       46 GETUPVAL                         R4 4
       47 GETTABLEKS                       R4 R4 K25 ["createElement"]
       49 GETUPVAL                         R5 5
       50 DUPTABLE                         R6 K28 [{"plugin", "widget"}]
       51 GETUPVAL                         R7 2
       52 SETTABLEKS                       R7 R6 K26 ["plugin"]
       54 SETTABLEKS                       R0 R6 K27 ["widget"]
       56 CALL                             R4 2 -1
       57 NAMECALL                         R2 R1 K29 ["render"]
       59 CALL                             R2 -1 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+5]
        5 GETIMPORT                        R2 K3 [warn]
        7 LOADK                            R3 K4 ["Failed to mount Flag Editor:"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       11 NAMECALL                         R1 R1 K3 ["Connect"]
       13 CALL                             R1 2 1
       14 SETUPVAL                         R1 1
       15 RETURN                           R0 0

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
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 GETIMPORT                        R5 K2 [task.spawn]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R4
       17 CALL                             R5 1 0
       18 GETTABLEKS                       R5 R0 K3 ["Unloading"]
       20 NEWCLOSURE                       R7 P2
       21 CAPTURE                          REF R3
       22 CAPTURE                          REF R2
       23 CAPTURE                          REF R1
       24 NAMECALL                         R5 R5 K4 ["Once"]
       26 CALL                             R5 2 0
       27 CLOSEUPVALS                      R1
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K9 ["Parent"]
       25 GETTABLEKS                       R5 R5 K10 ["App"]
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K19 [{["DataModel"] = "Standalone", ["PluginId"] = "AppConfiguration", ["Category"] = "Actions", ["ItemId"] = "INTERNAL_FlagEditor"}]
       29 DUPCLOSURE                       R6 K20 [PROTO_5]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1
