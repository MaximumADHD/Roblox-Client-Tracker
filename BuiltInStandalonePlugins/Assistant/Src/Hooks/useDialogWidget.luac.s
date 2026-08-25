PROTO_0:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K7 [{[1], ["InitialEnabled"] = False, ["ToolDialog"] = False, ["Modal"], ["Size"], ["DisableTitleBar"] = False}]
        2 SETTABLEKS                       R1 R6 K0 ["Id"]
        4 GETTABLEKS                       R7 R2 K4 ["Modal"]
        6 SETTABLEKS                       R7 R6 K4 ["Modal"]
        8 GETTABLEKS                       R7 R2 K5 ["Size"]
       10 SETTABLEKS                       R7 R6 K5 ["Size"]
       12 NAMECALL                         R3 R0 K8 ["CreateQWidgetPluginGui"]
       14 CALL                             R3 3 1
       15 GETIMPORT                        R4 K12 [Enum.ZIndexBehavior.Sibling]
       17 SETTABLEKS                       R4 R3 K10 ["ZIndexBehavior"]
       19 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Widgets"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUri"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["PluginId"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K3 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K0 ["Uri"]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K1 ["Widget"]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K2 ["DEPRECATED_PluginGui"]
       13 SETLIST                          R2 R3 1 [1]
       15 NAMECALL                         R0 R0 K4 ["RegisterAsync"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K0 ["current"]
       18 GETTABLEKS                       R1 R0 K1 ["Enabled"]
       20 JUMPIF                           R1 ; [+7]
       21 LOADK                            R3 K1 ["Enabled"]
       22 NAMECALL                         R1 R0 K2 ["GetPropertyChangedSignal"]
       24 CALL                             R1 2 1
       25 NAMECALL                         R1 R1 K3 ["Wait"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["current"]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETUPVAL                         R1 1
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R1 K0 ["current"]
       36 RETURN                           R0 0
       37 GETIMPORT                        R1 K5 [pcall]
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R0
       43 CALL                             R1 1 1
       44 JUMPIFNOT                        R1 ; [+4]
       45 GETUPVAL                         R2 0
       46 LOADB                            R3 1
       47 SETTABLEKS                       R3 R2 K0 ["current"]
       49 GETUPVAL                         R2 1
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K0 ["current"]
       53 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["DeregisterAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["current"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIF                           R0 ; [+2]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R2 4
       16 NAMECALL                         R0 R0 K1 ["FocusAsync"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R5 0 0
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R1
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K1 ["useRef"]
       23 LOADB                            R6 0
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K1 ["useRef"]
       28 LOADB                            R7 0
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       33 NEWCLOSURE                       R8 P2
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R9 0 1
       41 MOVE                             R10 R4
       42 SETLIST                          R9 R10 1 [1]
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       48 NEWCLOSURE                       R9 P3
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R10 0 0
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       58 NEWCLOSURE                       R9 P4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R10 0 2
       66 MOVE                             R11 R4
       67 MOVE                             R12 R7
       68 SETLIST                          R10 R11 2 [1]
       70 CALL                             R8 2 1
       71 RETURN                           R8 1

PROTO_12:
        0 LOADK                            R1 K0 ["Assistant_DialogWidget_"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onHide"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onHide"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R1 K3 [task.defer]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+23]
        4 LOADK                            R3 K1 ["PluginGui"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R1 1
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["GetWidgetFromPluginGui"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["Size"]
       17 GETTABLEKS                       R3 R3 K5 ["X"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["Size"]
       22 GETTABLEKS                       R4 R4 K6 ["Y"]
       24 NAMECALL                         R1 R1 K7 ["SetFixedSize"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["Name"]
        7 LOADK                            R3 K2 ["PluginGui"]
        8 NAMECALL                         R1 R0 K3 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R1 1
       13 SETTABLEKS                       R1 R0 K4 ["Title"]
       15 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["PluginGui"]
        4 NAMECALL                         R0 R0 K1 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["BindToClose"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 LOADK                            R3 K1 ["PluginGui"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R1 R0 K3 ["BindToClose"]
       12 CALL                             R1 2 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InputBegan"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R2 R2 K1 ["Connect"]
        8 CALL                             R2 2 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R0 K4 [table.insert]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["WindowFocused"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R2 R2 K1 ["Connect"]
        8 CALL                             R2 2 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R0 K4 [table.insert]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["onWidgetActivity"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["onWidgetInteraction"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["FFlagAssistantCreditMetering"]
       12 JUMPIFNOT                        R3 ; [+6]
       13 JUMPIFNOT                        R0 ; [+5]
       14 LOADK                            R5 K4 ["PluginGui"]
       15 NAMECALL                         R3 R0 K5 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R0 0
       20 NEWTABLE                         R3 0 0
       22 JUMPIFNOT                        R1 ; [+15]
       23 MOVE                             R5 R3
       24 LOADK                            R8 K6 ["Enabled"]
       25 NAMECALL                         R6 R0 K7 ["GetPropertyChangedSignal"]
       27 CALL                             R6 2 1
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R6 R6 K8 ["Connect"]
       33 CALL                             R6 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R4 K11 [table.insert]
       37 CALL                             R4 -1 0
       38 JUMPIFNOT                        R2 ; [+14]
       39 GETIMPORT                        R4 K13 [pcall]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CALL                             R4 1 0
       46 GETIMPORT                        R4 K13 [pcall]
       48 NEWCLOSURE                       R5 P2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CALL                             R4 1 0
       53 LENGTH                           R4 R3
       54 JUMPIFNOTEQKN                    R4 K14 [0] ; [+2]
       56 RETURN                           R0 0
       57 NEWCLOSURE                       R4 P3
       58 CAPTURE                          VAL R3
       59 RETURN                           R4 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["provide"]
       11 NEWTABLE                         R1 0 1
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K2 ["new"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K0 ["current"]
       19 CALL                             R2 1 -1
       20 SETLIST                          R1 R2 -1 [1]
       22 DUPTABLE                         R2 K5 [{"OverlayProvider", "StyleLink"}]
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K3 ["OverlayProvider"]
       27 DUPTABLE                         R5 K7 [{"gui"}]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K0 ["current"]
       31 SETTABLEKS                       R6 R5 K6 ["gui"]
       33 DUPTABLE                         R6 K9 [{"Contents"}]
       34 GETUPVAL                         R7 6
       35 GETTABLEKS                       R7 R7 K8 ["Contents"]
       37 SETTABLEKS                       R7 R6 K8 ["Contents"]
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R2 K3 ["OverlayProvider"]
       42 GETUPVAL                         R3 4
       43 LOADK                            R4 K4 ["StyleLink"]
       44 DUPTABLE                         R5 K11 [{"StyleSheet"}]
       45 GETUPVAL                         R6 7
       46 SETTABLEKS                       R6 R5 K10 ["StyleSheet"]
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K4 ["StyleLink"]
       51 CALL                             R0 2 1
       52 GETUPVAL                         R1 8
       53 GETTABLEKS                       R1 R1 K12 ["createPortal"]
       55 MOVE                             R2 R0
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K0 ["current"]
       59 CALL                             R1 2 -1
       60 RETURN                           R1 -1

PROTO_31:
        0 DUPTABLE                         R0 K4 [{"root", "show", "hide", "focus"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["root"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["show"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hide"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["focus"]
       13 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["use"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R4 K3 ["get"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K2 ["use"]
       20 CALL                             R6 0 1
       21 NAMECALL                         R6 R6 K3 ["get"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       27 DUPCLOSURE                       R8 K5 [PROTO_12]
       28 CAPTURE                          UPVAL U3
       29 NEWTABLE                         R9 0 0
       31 CALL                             R7 2 1
       32 GETTABLEKS                       R8 R1 K6 ["current"]
       34 JUMPIF                           R8 ; [+22]
       35 MOVE                             R11 R7
       36 DUPTABLE                         R12 K14 [{["Id"], ["InitialEnabled"] = False, ["ToolDialog"] = False, ["Modal"], ["Size"], ["DisableTitleBar"] = False}]
       37 SETTABLEKS                       R7 R12 K7 ["Id"]
       39 GETTABLEKS                       R13 R0 K11 ["Modal"]
       41 SETTABLEKS                       R13 R12 K11 ["Modal"]
       43 GETTABLEKS                       R13 R0 K12 ["Size"]
       45 SETTABLEKS                       R13 R12 K12 ["Size"]
       47 NAMECALL                         R9 R5 K15 ["CreateQWidgetPluginGui"]
       49 CALL                             R9 3 1
       50 GETIMPORT                        R10 K19 [Enum.ZIndexBehavior.Sibling]
       52 SETTABLEKS                       R10 R9 K17 ["ZIndexBehavior"]
       54 MOVE                             R8 R9
       55 SETTABLEKS                       R8 R1 K6 ["current"]
       57 GETUPVAL                         R8 4
       58 MOVE                             R9 R5
       59 MOVE                             R10 R7
       60 MOVE                             R11 R1
       61 CALL                             R8 3 1
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K20 ["useCallback"]
       65 NEWCLOSURE                       R10 P1
       66 CAPTURE                          VAL R3
       67 NEWTABLE                         R11 0 0
       69 CALL                             R9 2 1
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K20 ["useCallback"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R12 0 1
       78 GETTABLEKS                       R13 R0 K21 ["onHide"]
       80 SETLIST                          R12 R13 1 [1]
       82 CALL                             R10 2 1
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K22 ["useEffect"]
       86 NEWCLOSURE                       R12 P3
       87 CAPTURE                          VAL R1
       88 NEWTABLE                         R13 0 0
       90 CALL                             R11 2 0
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K22 ["useEffect"]
       94 NEWCLOSURE                       R12 P4
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 NEWTABLE                         R13 0 1
       99 MOVE                             R14 R2
      100 SETLIST                          R13 R14 1 [1]
      102 CALL                             R11 2 0
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K22 ["useEffect"]
      106 NEWCLOSURE                       R12 P5
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R0
      110 NEWTABLE                         R13 0 1
      112 GETTABLEKS                       R14 R0 K12 ["Size"]
      114 SETLIST                          R13 R14 1 [1]
      116 CALL                             R11 2 0
      117 GETTABLEKS                       R12 R0 K23 ["Title"]
      119 JUMPIFNOT                        R12 ; [+3]
      120 GETTABLEKS                       R11 R0 K23 ["Title"]
      122 JUMP                             ; [+1]
      123 LOADK                            R11 K24 ["Roblox Studio"]
      124 GETUPVAL                         R12 0
      125 GETTABLEKS                       R12 R12 K22 ["useEffect"]
      127 NEWCLOSURE                       R13 P6
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R11
      130 NEWTABLE                         R14 0 1
      132 MOVE                             R15 R11
      133 SETLIST                          R14 R15 1 [1]
      135 CALL                             R12 2 0
      136 GETUPVAL                         R12 0
      137 GETTABLEKS                       R12 R12 K22 ["useEffect"]
      139 NEWCLOSURE                       R13 P7
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R10
      142 NEWTABLE                         R14 0 1
      144 MOVE                             R15 R10
      145 SETLIST                          R14 R15 1 [1]
      147 CALL                             R12 2 0
      148 GETUPVAL                         R12 0
      149 GETTABLEKS                       R12 R12 K22 ["useEffect"]
      151 NEWCLOSURE                       R13 P8
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U6
      155 NEWTABLE                         R14 0 2
      157 GETTABLEKS                       R15 R0 K25 ["onWidgetActivity"]
      159 GETTABLEKS                       R16 R0 K26 ["onWidgetInteraction"]
      161 SETLIST                          R14 R15 2 [1]
      163 CALL                             R12 2 0
      164 GETUPVAL                         R12 0
      165 GETTABLEKS                       R12 R12 K4 ["useMemo"]
      167 NEWCLOSURE                       R13 P9
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R1
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          UPVAL U8
      172 CAPTURE                          UPVAL U9
      173 CAPTURE                          UPVAL U10
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R6
      176 CAPTURE                          UPVAL U11
      177 NEWTABLE                         R14 0 3
      179 MOVE                             R15 R2
      180 GETTABLEKS                       R16 R0 K27 ["Contents"]
      182 MOVE                             R17 R6
      183 SETLIST                          R14 R15 3 [1]
      185 CALL                             R12 2 1
      186 GETUPVAL                         R13 0
      187 GETTABLEKS                       R13 R13 K4 ["useMemo"]
      189 NEWCLOSURE                       R14 P10
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R8
      194 NEWTABLE                         R15 0 4
      196 MOVE                             R16 R12
      197 MOVE                             R17 R9
      198 MOVE                             R18 R10
      199 MOVE                             R19 R8
      200 SETLIST                          R15 R16 4 [1]
      202 CALL                             R13 2 -1
      203 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StudioWidgetsService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["AssistantUI"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Packages"]
       37 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Packages"]
       44 GETTABLEKS                       R7 R7 K16 ["Framework"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Packages"]
       51 GETTABLEKS                       R8 R8 K17 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Packages"]
       58 GETTABLEKS                       R9 R9 K18 ["ReactRoblox"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R6 K19 ["ContextServices"]
       63 GETTABLEKS                       R10 R9 K20 ["Design"]
       65 GETTABLEKS                       R11 R6 K19 ["ContextServices"]
       67 GETTABLEKS                       R11 R11 K21 ["Plugin"]
       69 GETTABLEKS                       R12 R9 K22 ["Focus"]
       71 GETTABLEKS                       R13 R7 K23 ["createElement"]
       73 DUPCLOSURE                       R14 K24 [PROTO_0]
       74 DUPCLOSURE                       R15 K25 [PROTO_11]
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R16 K26 [PROTO_32]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R8
       89 RETURN                           R16 1
