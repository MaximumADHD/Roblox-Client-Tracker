PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+6]
        3 LOADK                            R3 K0 ["Dialog"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K1 ["GenerateGUID"]
        7 CALL                             R4 1 1
        8 CONCAT                           R1 R3 R4
        9 MOVE                             R5 R1
       10 DUPTABLE                         R6 K8 [{"Id", "InitialEnabled", "ToolDialog", "Modal", "Size", "DisableTitleBar"}]
       11 SETTABLEKS                       R1 R6 K2 ["Id"]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K3 ["InitialEnabled"]
       16 LOADB                            R7 0
       17 SETTABLEKS                       R7 R6 K4 ["ToolDialog"]
       19 GETTABLEKS                       R7 R2 K5 ["Modal"]
       21 SETTABLEKS                       R7 R6 K5 ["Modal"]
       23 GETTABLEKS                       R7 R2 K6 ["Size"]
       25 SETTABLEKS                       R7 R6 K6 ["Size"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K7 ["DisableTitleBar"]
       30 NAMECALL                         R3 R0 K9 ["CreateQWidgetPluginGui"]
       32 CALL                             R3 3 1
       33 GETIMPORT                        R4 K13 [Enum.ZIndexBehavior.Sibling]
       35 SETTABLEKS                       R4 R3 K11 ["ZIndexBehavior"]
       37 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K0 ["current"]
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
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R1 R2 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIF                           R0 ; [+2]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["useFocusWidget should only be used when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R5 0 0
       15 CALL                             R3 2 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R1
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K4 ["useRef"]
       31 LOADB                            R6 0
       32 CALL                             R5 1 1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K4 ["useRef"]
       36 LOADB                            R7 0
       37 CALL                             R6 1 1
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R7 R8 K5 ["useCallback"]
       41 NEWCLOSURE                       R8 P2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R9 0 1
       49 MOVE                             R10 R4
       50 SETLIST                          R9 R10 1 [1]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       56 NEWCLOSURE                       R9 P3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 NEWTABLE                         R10 0 0
       62 CALL                             R8 2 0
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       66 NEWCLOSURE                       R9 P4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 NEWTABLE                         R10 0 2
       74 MOVE                             R11 R4
       75 MOVE                             R12 R7
       76 SETLIST                          R10 R11 2 [1]
       78 CALL                             R8 2 1
       79 RETURN                           R8 1

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
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["onHide"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K0 ["onHide"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+23]
        4 LOADK                            R3 K1 ["PluginGui"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R1 1
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["GetWidgetFromPluginGui"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K4 ["Size"]
       17 GETTABLEKS                       R3 R4 K5 ["X"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K4 ["Size"]
       22 GETTABLEKS                       R4 R5 K6 ["Y"]
       24 NAMECALL                         R1 R1 K7 ["SetFixedSize"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["provide"]
       11 NEWTABLE                         R1 0 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K2 ["new"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K0 ["current"]
       19 CALL                             R2 1 -1
       20 SETLIST                          R1 R2 -1 [1]
       22 DUPTABLE                         R2 K5 [{"OverlayProvider", "StyleLink"}]
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R5 5
       25 GETTABLEKS                       R4 R5 K3 ["OverlayProvider"]
       27 DUPTABLE                         R5 K7 [{"gui"}]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K0 ["current"]
       31 SETTABLEKS                       R6 R5 K6 ["gui"]
       33 DUPTABLE                         R6 K9 [{"Contents"}]
       34 GETUPVAL                         R8 6
       35 GETTABLEKS                       R7 R8 K8 ["Contents"]
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
       52 GETUPVAL                         R2 8
       53 GETTABLEKS                       R1 R2 K12 ["createPortal"]
       55 MOVE                             R2 R0
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R3 R4 K0 ["current"]
       59 CALL                             R1 2 -1
       60 RETURN                           R1 -1

PROTO_24:
        0 DUPTABLE                         R0 K4 [{"root", "show", "hide", "focus"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["root"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["show"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hide"]
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 GETUPVAL                         R1 4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["focus"]
       18 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["use"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R4 K3 ["get"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K2 ["use"]
       20 CALL                             R6 0 1
       21 NAMECALL                         R6 R6 K3 ["get"]
       23 CALL                             R6 1 1
       24 LOADNIL                          R7
       25 GETUPVAL                         R8 3
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+9]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K4 ["useMemo"]
       31 DUPCLOSURE                       R9 K5 [PROTO_12]
       32 CAPTURE                          UPVAL U4
       33 NEWTABLE                         R10 0 0
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 GETTABLEKS                       R8 R1 K6 ["current"]
       39 JUMPIF                           R8 ; [+7]
       40 GETUPVAL                         R8 5
       41 MOVE                             R9 R5
       42 MOVE                             R10 R7
       43 MOVE                             R11 R0
       44 CALL                             R8 3 1
       45 SETTABLEKS                       R8 R1 K6 ["current"]
       47 LOADNIL                          R8
       48 GETUPVAL                         R9 3
       49 CALL                             R9 0 1
       50 JUMPIFNOT                        R9 ; [+6]
       51 GETUPVAL                         R9 6
       52 MOVE                             R10 R5
       53 MOVE                             R11 R7
       54 MOVE                             R12 R1
       55 CALL                             R9 3 1
       56 MOVE                             R8 R9
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K7 ["useCallback"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R11 0 0
       64 CALL                             R9 2 1
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       68 NEWCLOSURE                       R11 P2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R12 0 1
       74 GETUPVAL                         R14 3
       75 CALL                             R14 0 1
       76 JUMPIFNOT                        R14 ; [+3]
       77 GETTABLEKS                       R13 R0 K8 ["onHide"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R13
       81 SETLIST                          R12 R13 1 [1]
       83 CALL                             R10 2 1
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R11 R12 K9 ["useEffect"]
       87 NEWCLOSURE                       R12 P3
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R13 0 0
       91 CALL                             R11 2 0
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R11 R12 K9 ["useEffect"]
       95 NEWCLOSURE                       R12 P4
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R2
       98 NEWTABLE                         R13 0 1
      100 MOVE                             R14 R2
      101 SETLIST                          R13 R14 1 [1]
      103 CALL                             R11 2 0
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R11 R12 K9 ["useEffect"]
      107 NEWCLOSURE                       R12 P5
      108 CAPTURE                          VAL R1
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R13 0 1
      113 GETTABLEKS                       R14 R0 K10 ["Size"]
      115 SETLIST                          R13 R14 1 [1]
      117 CALL                             R11 2 0
      118 GETTABLEKS                       R12 R0 K11 ["Title"]
      120 JUMPIFNOT                        R12 ; [+3]
      121 GETTABLEKS                       R11 R0 K11 ["Title"]
      123 JUMP                             ; [+1]
      124 LOADK                            R11 K12 ["Roblox Studio"]
      125 GETUPVAL                         R13 0
      126 GETTABLEKS                       R12 R13 K9 ["useEffect"]
      128 NEWCLOSURE                       R13 P6
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R11
      131 NEWTABLE                         R14 0 1
      133 MOVE                             R15 R11
      134 SETLIST                          R14 R15 1 [1]
      136 CALL                             R12 2 0
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R12 R13 K9 ["useEffect"]
      140 NEWCLOSURE                       R13 P7
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R10
      143 NEWTABLE                         R14 0 1
      145 MOVE                             R15 R10
      146 SETLIST                          R14 R15 1 [1]
      148 CALL                             R12 2 0
      149 GETUPVAL                         R13 0
      150 GETTABLEKS                       R12 R13 K4 ["useMemo"]
      152 NEWCLOSURE                       R13 P8
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R1
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          UPVAL U9
      157 CAPTURE                          UPVAL U10
      158 CAPTURE                          UPVAL U11
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R6
      161 CAPTURE                          UPVAL U12
      162 NEWTABLE                         R14 0 3
      164 MOVE                             R15 R2
      165 GETTABLEKS                       R16 R0 K13 ["Contents"]
      167 MOVE                             R17 R6
      168 SETLIST                          R14 R15 3 [1]
      170 CALL                             R12 2 1
      171 GETUPVAL                         R14 0
      172 GETTABLEKS                       R13 R14 K4 ["useMemo"]
      174 NEWCLOSURE                       R14 P9
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R10
      178 CAPTURE                          UPVAL U3
      179 CAPTURE                          REF R8
      180 NEWTABLE                         R15 0 4
      182 MOVE                             R16 R12
      183 MOVE                             R17 R9
      184 MOVE                             R18 R10
      185 GETUPVAL                         R20 3
      186 CALL                             R20 0 1
      187 JUMPIFNOT                        R20 ; [+2]
      188 MOVE                             R19 R8
      189 JUMP                             ; [+1]
      190 LOADNIL                          R19
      191 SETLIST                          R15 R16 4 [1]
      193 CALL                             R13 2 -1
      194 CLOSEUPVALS                      R8
      195 RETURN                           R13 -1

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
       21 GETTABLEKS                       R5 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["AssistantUI"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Packages"]
       30 GETTABLEKS                       R5 R6 K13 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Packages"]
       37 GETTABLEKS                       R6 R7 K14 ["Framework"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Packages"]
       44 GETTABLEKS                       R7 R8 K15 ["React"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Packages"]
       51 GETTABLEKS                       R8 R9 K16 ["ReactRoblox"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R10 R3 K17 ["Flags"]
       56 GETTABLEKS                       R9 R10 K18 ["Shared"]
       58 GETTABLEKS                       R8 R9 K19 ["FFlagAssistantMultipleChatPersistence"]
       60 GETTABLEKS                       R9 R5 K20 ["ContextServices"]
       62 GETTABLEKS                       R10 R9 K21 ["Design"]
       64 GETTABLEKS                       R12 R5 K20 ["ContextServices"]
       66 GETTABLEKS                       R11 R12 K22 ["Plugin"]
       68 GETTABLEKS                       R12 R9 K23 ["Focus"]
       70 GETTABLEKS                       R13 R6 K24 ["createElement"]
       72 DUPCLOSURE                       R14 K25 [PROTO_0]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R15 K26 [PROTO_11]
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R6
       78 DUPCLOSURE                       R16 K27 [PROTO_25]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 RETURN                           R16 1
