PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioWidgetsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnWidgetFocused"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["widget"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnWidgetFocusReleased"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["widget"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Change"]
        6 GETTABLEKS                       R2 R2 K2 ["Enabled"]
        8 GETTABLE                         R0 R1 R2
        9 JUMPIFNOT                        R0 ; [+21]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["widget"]
       13 JUMPIFNOT                        R1 ; [+17]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["widget"]
       17 GETTABLEKS                       R1 R1 K2 ["Enabled"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["props"]
       22 GETTABLEKS                       R2 R2 K2 ["Enabled"]
       24 JUMPIFEQ                         R1 R2 ; [+6]
       26 MOVE                             R1 R0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K3 ["widget"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["widget"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["isMounted"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["props"]
        9 GETTABLEKS                       R2 R1 K3 ["Title"]
       11 GETTABLEKS                       R3 R1 K4 ["OnClose"]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K1 ["isMounted"]
       18 JUMPIF                           R5 ; [+4]
       19 NAMECALL                         R5 R4 K5 ["Destroy"]
       21 CALL                             R5 1 0
       22 RETURN                           R0 0
       23 ORK                              R5 R2 K6 [""]
       24 SETTABLEKS                       R5 R4 K7 ["Name"]
       26 GETTABLEKS                       R5 R1 K8 ["ZIndexBehavior"]
       28 JUMPIF                           R5 ; [+2]
       29 GETIMPORT                        R5 K11 [Enum.ZIndexBehavior.Sibling]
       31 SETTABLEKS                       R5 R4 K8 ["ZIndexBehavior"]
       33 LOADK                            R7 K12 ["PluginGui"]
       34 NAMECALL                         R5 R4 K13 ["IsA"]
       36 CALL                             R5 2 1
       37 JUMPIFNOT                        R5 ; [+70]
       38 FASTCALL1                        TYPE R3 ; [+3]
       39 MOVE                             R6 R3
       40 GETIMPORT                        R5 K15 [type]
       42 CALL                             R5 1 1
       43 JUMPIFNOTEQKS                    R5 K16 ["function"] ; [+5]
       45 MOVE                             R7 R3
       46 NAMECALL                         R5 R4 K17 ["BindToClose"]
       48 CALL                             R5 2 0
       49 GETTABLEKS                       R5 R0 K2 ["props"]
       51 GETTABLEKS                       R5 R5 K18 ["OnWidgetFocused"]
       53 JUMPIFNOT                        R5 ; [+9]
       54 GETTABLEKS                       R5 R4 K19 ["WindowFocused"]
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R0
       58 NAMECALL                         R5 R5 K20 ["Connect"]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R0 K21 ["windowFocusedConnection"]
       63 GETTABLEKS                       R5 R0 K2 ["props"]
       65 GETTABLEKS                       R5 R5 K22 ["OnWidgetFocusReleased"]
       67 JUMPIFNOT                        R5 ; [+9]
       68 GETTABLEKS                       R5 R4 K23 ["WindowFocusReleased"]
       70 NEWCLOSURE                       R7 P1
       71 CAPTURE                          VAL R0
       72 NAMECALL                         R5 R5 K20 ["Connect"]
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R0 K24 ["windowFocusReleasedConnection"]
       77 LOADK                            R7 K25 ["DockWidgetPluginGui"]
       78 NAMECALL                         R5 R4 K13 ["IsA"]
       80 CALL                             R5 2 1
       81 JUMPIFNOT                        R5 ; [+11]
       82 GETTABLEKS                       R5 R4 K26 ["HostWidgetWasRestored"]
       84 JUMPIFNOT                        R5 ; [+8]
       85 GETTABLEKS                       R5 R1 K27 ["OnWidgetRestored"]
       87 JUMPIFNOT                        R5 ; [+5]
       88 GETTABLEKS                       R5 R1 K27 ["OnWidgetRestored"]
       90 GETTABLEKS                       R6 R4 K28 ["Enabled"]
       92 CALL                             R5 1 0
       93 LOADK                            R7 K25 ["DockWidgetPluginGui"]
       94 NAMECALL                         R5 R4 K13 ["IsA"]
       96 CALL                             R5 2 1
       97 JUMPIFNOT                        R5 ; [+10]
       98 GETTABLEKS                       R5 R1 K29 ["OnWidgetCreated"]
      100 JUMPIFNOT                        R5 ; [+7]
      101 GETTABLEKS                       R5 R1 K29 ["OnWidgetCreated"]
      103 GETTABLEKS                       R6 R4 K28 ["Enabled"]
      105 GETTABLEKS                       R7 R4 K26 ["HostWidgetWasRestored"]
      107 CALL                             R5 2 0
      108 LOADK                            R7 K28 ["Enabled"]
      109 NAMECALL                         R5 R4 K30 ["GetPropertyChangedSignal"]
      111 CALL                             R5 2 1
      112 NEWCLOSURE                       R7 P2
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U1
      115 NAMECALL                         R5 R5 K20 ["Connect"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R0 K31 ["widgetEnabledChangedConnection"]
      120 GETUPVAL                         R5 2
      121 GETTABLEKS                       R5 R5 K32 ["new"]
      123 MOVE                             R6 R4
      124 CALL                             R5 1 1
      125 SETTABLEKS                       R5 R0 K33 ["focus"]
      127 SETTABLEKS                       R4 R0 K0 ["widget"]
      129 DUPTABLE                         R7 K36 [{["_widgetReady"] = True}]
      130 NAMECALL                         R5 R0 K37 ["setState"]
      132 CALL                             R5 2 0
      133 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Enabled"]
        4 GETTABLEKS                       R4 R2 K2 ["OnClose"]
        6 GETTABLEKS                       R5 R2 K3 ["Title"]
        8 GETTABLEKS                       R6 R0 K4 ["widget"]
       10 JUMPIFNOT                        R6 ; [+65]
       11 JUMPIFEQKNIL                     R3 ; [+3]
       13 SETTABLEKS                       R3 R6 K1 ["Enabled"]
       15 JUMPIFEQKNIL                     R5 ; [+8]
       17 LOADK                            R9 K5 ["PluginGui"]
       18 NAMECALL                         R7 R6 K6 ["IsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+2]
       22 SETTABLEKS                       R5 R6 K3 ["Title"]
       24 FASTCALL1                        TYPE R4 ; [+3]
       25 MOVE                             R8 R4
       26 GETIMPORT                        R7 K8 [type]
       28 CALL                             R7 1 1
       29 JUMPIFNOTEQKS                    R7 K9 ["function"] ; [+14]
       31 GETTABLEKS                       R7 R1 K2 ["OnClose"]
       33 JUMPIFEQ                         R4 R7 ; [+10]
       35 LOADK                            R9 K5 ["PluginGui"]
       36 NAMECALL                         R7 R6 K6 ["IsA"]
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+4]
       40 MOVE                             R9 R4
       41 NAMECALL                         R7 R6 K10 ["BindToClose"]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 0
       45 JUMPIFNOT                        R7 ; [+5]
       46 LOADK                            R9 K5 ["PluginGui"]
       47 NAMECALL                         R7 R6 K6 ["IsA"]
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R7 ; [+25]
       51 GETUPVAL                         R7 1
       52 JUMPIFEQKNIL                     R7 ; [+23]
       54 GETTABLEKS                       R7 R2 K11 ["Size"]
       56 GETTABLEKS                       R8 R1 K11 ["Size"]
       58 JUMPIFEQ                         R7 R8 ; [+17]
       60 GETUPVAL                         R7 1
       61 MOVE                             R9 R6
       62 NAMECALL                         R7 R7 K12 ["GetWidgetFromPluginGui"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R9 R2 K11 ["Size"]
       67 GETTABLEKS                       R9 R9 K13 ["X"]
       69 GETTABLEKS                       R10 R2 K11 ["Size"]
       71 GETTABLEKS                       R10 R10 K14 ["Y"]
       73 NAMECALL                         R7 R7 K15 ["SetFixedSize"]
       75 CALL                             R7 3 0
       76 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["createWidget"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["CreateWidgetImmediately"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 NAMECALL                         R1 R0 K3 ["createWidget"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K6 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["updateWidget"]
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["widget"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["focus"]
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["provide"]
       11 NEWTABLE                         R2 0 1
       13 GETTABLEKS                       R3 R0 K1 ["focus"]
       15 SETLIST                          R2 R3 1 [1]
       17 DUPTABLE                         R3 K4 [{"Child"}]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["createElement"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["Portal"]
       24 DUPTABLE                         R6 K8 [{"target"}]
       25 GETTABLEKS                       R7 R0 K0 ["widget"]
       27 SETTABLEKS                       R7 R6 K7 ["target"]
       29 GETUPVAL                         R8 2
       30 JUMPIFNOT                        R8 ; [+42]
       31 GETTABLEKS                       R8 R0 K9 ["props"]
       33 GETTABLEKS                       R8 R8 K10 ["PluginDesign"]
       35 JUMPIFNOT                        R8 ; [+37]
       36 DUPTABLE                         R7 K13 [{"Wrapper", "StyleLink"}]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K5 ["createElement"]
       40 LOADK                            R9 K14 ["Frame"]
       41 DUPTABLE                         R10 K18 [{["Size"], ["BackgroundTransparency"] = 1}]
       42 GETIMPORT                        R11 K21 [UDim2.fromScale]
       44 LOADN                            R12 1
       45 LOADN                            R13 1
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K15 ["Size"]
       49 GETTABLEKS                       R12 R0 K9 ["props"]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K22 ["Children"]
       54 GETTABLE                         R11 R12 R13
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K11 ["Wrapper"]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K5 ["createElement"]
       61 LOADK                            R9 K12 ["StyleLink"]
       62 DUPTABLE                         R10 K24 [{"StyleSheet"}]
       63 GETTABLEKS                       R11 R0 K9 ["props"]
       65 GETTABLEKS                       R11 R11 K10 ["PluginDesign"]
       67 SETTABLEKS                       R11 R10 K23 ["StyleSheet"]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K12 ["StyleLink"]
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R8 R0 K9 ["props"]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K22 ["Children"]
       78 GETTABLE                         R7 R8 R9
       79 CALL                             R4 3 1
       80 SETTABLEKS                       R4 R3 K3 ["Child"]
       82 CALL                             R1 2 -1
       83 RETURN                           R1 -1

PROTO_11:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["widgetEnabledChangedConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["widgetEnabledChangedConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["widgetEnabledChangedConnection"]
       14 GETTABLEKS                       R1 R0 K3 ["windowFocusReleasedConnection"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETTABLEKS                       R1 R0 K3 ["windowFocusReleasedConnection"]
       19 NAMECALL                         R1 R1 K2 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["windowFocusReleasedConnection"]
       25 GETTABLEKS                       R1 R0 K4 ["windowFocusedConnection"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETTABLEKS                       R1 R0 K4 ["windowFocusedConnection"]
       30 NAMECALL                         R1 R1 K2 ["Disconnect"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K4 ["windowFocusedConnection"]
       36 GETTABLEKS                       R1 R0 K5 ["widget"]
       38 JUMPIFNOT                        R1 ; [+8]
       39 GETTABLEKS                       R1 R0 K5 ["widget"]
       41 NAMECALL                         R1 R1 K6 ["Destroy"]
       43 CALL                             R1 1 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K5 ["widget"]
       47 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PureComponent"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["extend"]
        6 CALL                             R2 2 1
        7 DUPCLOSURE                       R3 K2 [PROTO_1]
        8 SETTABLEKS                       R3 R2 K3 ["init"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R3 R2 K4 ["createWidget"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R3 R2 K5 ["updateWidget"]
       21 DUPCLOSURE                       R3 K6 [PROTO_8]
       22 SETTABLEKS                       R3 R2 K7 ["didMount"]
       24 DUPCLOSURE                       R3 K8 [PROTO_9]
       25 SETTABLEKS                       R3 R2 K9 ["didUpdate"]
       27 DUPCLOSURE                       R3 K10 [PROTO_10]
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U5
       31 SETTABLEKS                       R3 R2 K11 ["render"]
       33 DUPCLOSURE                       R3 K12 [PROTO_11]
       34 SETTABLEKS                       R3 R2 K13 ["willUnmount"]
       36 GETUPVAL                         R3 6
       37 DUPTABLE                         R4 K15 [{"Plugin"}]
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K14 ["Plugin"]
       41 SETTABLEKS                       R5 R4 K14 ["Plugin"]
       43 CALL                             R3 1 1
       44 MOVE                             R4 R2
       45 CALL                             R3 1 1
       46 MOVE                             R2 R3
       47 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETIMPORT                        R1 K1 [pcall]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K3 [script]
        9 LOADK                            R3 K4 ["UI"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Parent"]
       19 GETTABLEKS                       R3 R3 K9 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K4 ["UI"]
       26 GETTABLEKS                       R4 R4 K10 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K11 ["withContext"]
       31 GETTABLEKS                       R5 R3 K12 ["Focus"]
       33 GETIMPORT                        R6 K14 [game]
       35 LOADK                            R8 K15 ["DevFrameworkPluginWidgetCheckPluginGui"]
       36 LOADB                            R9 0
       37 NAMECALL                         R6 R6 K16 ["DefineFastFlag"]
       39 CALL                             R6 3 1
       40 GETIMPORT                        R7 K8 [require]
       42 GETTABLEKS                       R8 R1 K17 ["SharedFlags"]
       44 GETTABLEKS                       R8 R8 K18 ["getFFlagDevFrameworkPortalDesignInPlugins"]
       46 CALL                             R7 1 1
       47 CALL                             R7 0 1
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          REF R0
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R4
       56 CLOSEUPVALS                      R0
       57 RETURN                           R8 1
