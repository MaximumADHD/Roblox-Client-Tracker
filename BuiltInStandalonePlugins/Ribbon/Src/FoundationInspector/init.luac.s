PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 1
        5 SETTABLEKS                       R1 R0 K4 ["BackgroundTransparency"]
        7 LOADK                            R1 K5 [∞]
        8 SETTABLEKS                       R1 R0 K6 ["ZIndex"]
       10 GETIMPORT                        R1 K2 [Instance.new]
       12 LOADK                            R2 K7 ["UIStroke"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R0 R1 K8 ["Parent"]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R2 R1 K9 ["Color"]
       19 LOADK                            R2 K10 ["FoundationPicker"]
       20 SETTABLEKS                       R2 R0 K11 ["Name"]
       22 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["Frame"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["watchRoot"]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Frame"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["watchRoot"]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["PluginGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["watchPluginGui"]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K3 ["ChildAdded"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R1 R1 K4 ["Connect"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R2 R1 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["PluginGui"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+14]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K3 ["watchPluginGui"]
       15 MOVE                             R9 R0
       16 MOVE                             R10 R7
       17 CALL                             R8 2 0
       18 GETTABLEKS                       R8 R7 K4 ["ChildAdded"]
       20 NEWCLOSURE                       R10 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R8 R8 K5 ["Connect"]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R3 2 ; [-20]
       28 GETTABLEKS                       R3 R1 K4 ["ChildAdded"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R3 R3 K5 ["Connect"]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["Parent"]
        8 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["SetEnabled"]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R0 K1 ["OnInvoke"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["root"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K3 [{"GuiName", "Views"}]
        6 GETTABLEKS                       R6 R0 K1 ["GuiName"]
        8 SETTABLEKS                       R6 R5 K1 ["GuiName"]
       10 GETTABLEKS                       R6 R0 K2 ["Views"]
       12 SETTABLEKS                       R6 R5 K2 ["Views"]
       14 CALL                             R3 2 -1
       15 NAMECALL                         R1 R1 K4 ["render"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Enabled"]
        4 SETTABLEKS                       R1 R0 K1 ["enabled"]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K2 ["SetEnabled"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["Enabled"]
       11 NAMECALL                         R0 R0 K3 ["Invoke"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K0 ["Enabled"]
       17 JUMPIF                           R0 ; [+4]
       18 GETUPVAL                         R0 3
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K4 ["Parent"]
       22 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [DockWidgetPluginGuiInfo.new]
        2 GETIMPORT                        R2 K6 [Enum.InitialDockState.Left]
        4 LOADB                            R3 1
        5 LOADB                            R4 1
        6 CALL                             R1 3 1
        7 GETIMPORT                        R3 K8 [game]
        9 LOADK                            R5 K9 ["AsyncRenamesUsedInLuaApps"]
       10 NAMECALL                         R3 R3 K10 ["GetEngineFeature"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+6]
       14 LOADK                            R4 K11 ["FoundationInspector"]
       15 MOVE                             R5 R1
       16 NAMECALL                         R2 R0 K12 ["CreateDockWidgetPluginGuiAsync"]
       18 CALL                             R2 3 1
       19 JUMP                             ; [+5]
       20 LOADK                            R4 K11 ["FoundationInspector"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R0 K13 ["CreateDockWidgetPluginGui"]
       24 CALL                             R2 3 1
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K14 ["Enabled"]
       28 LOADK                            R3 K15 ["Foundation Inspector"]
       29 SETTABLEKS                       R3 R2 K16 ["Title"]
       31 GETUPVAL                         R3 0
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K17 ["createRoot"]
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K18 ["root"]
       39 GETUPVAL                         R3 0
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K19 ["enabled"]
       43 LOADK                            R5 K20 ["View"]
       44 DUPCLOSURE                       R6 K21 [PROTO_7]
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 NAMECALL                         R3 R0 K22 ["OnInvoke"]
       50 CALL                             R3 3 0
       51 LOADK                            R5 K14 ["Enabled"]
       52 NAMECALL                         R3 R2 K23 ["GetPropertyChangedSignal"]
       54 CALL                             R3 2 1
       55 NEWCLOSURE                       R5 P1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U4
       60 NAMECALL                         R3 R3 K24 ["Connect"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R4 K0 ["PluginGui"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+17]
        5 NAMECALL                         R2 R1 K2 ["GetChildren"]
        7 CALL                             R2 1 3
        8 FORGPREP                         R2
        9 LOADK                            R9 K3 ["GuiObject"]
       10 NAMECALL                         R7 R6 K1 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+6]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K4 ["watchRoot"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R6
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-12]
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        7 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseMovement]
        9 JUMPIFNOTEQ                      R1 R2 ; [+140]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["intersect"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETTABLEKS                       R3 R0 K7 ["Position"]
       19 NEWTABLE                         R4 0 0
       21 CALL                             R1 3 1
       22 GETTABLEN                        R2 R1 1
       23 JUMPIFNOT                        R2 ; [+67]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["Parent"]
       27 JUMPIF                           R3 ; [+24]
       28 GETIMPORT                        R4 K10 [Instance.new]
       30 LOADK                            R5 K11 ["Frame"]
       31 CALL                             R4 1 1
       32 LOADN                            R5 1
       33 SETTABLEKS                       R5 R4 K12 ["BackgroundTransparency"]
       35 LOADK                            R5 K13 [∞]
       36 SETTABLEKS                       R5 R4 K14 ["ZIndex"]
       38 GETIMPORT                        R5 K10 [Instance.new]
       40 LOADK                            R6 K15 ["UIStroke"]
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R4 R5 K6 ["Parent"]
       44 GETUPVAL                         R6 3
       45 SETTABLEKS                       R6 R5 K16 ["Color"]
       47 LOADK                            R6 K17 ["FoundationPicker"]
       48 SETTABLEKS                       R6 R4 K18 ["Name"]
       50 MOVE                             R3 R4
       51 SETUPVAL                         R3 2
       52 GETUPVAL                         R3 2
       53 GETIMPORT                        R4 K21 [UDim2.fromOffset]
       55 GETTABLEKS                       R6 R2 K7 ["Position"]
       57 GETTABLEKS                       R6 R6 K23 ["X"]
       59 SUBK                             R5 R6 K22 [4]
       60 GETTABLEKS                       R7 R2 K7 ["Position"]
       62 GETTABLEKS                       R7 R7 K24 ["Y"]
       64 SUBK                             R6 R7 K22 [4]
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R3 K7 ["Position"]
       68 GETUPVAL                         R3 2
       69 GETIMPORT                        R4 K21 [UDim2.fromOffset]
       71 GETTABLEKS                       R6 R2 K26 ["Size"]
       73 GETTABLEKS                       R6 R6 K23 ["X"]
       75 ADDK                             R5 R6 K25 [8]
       76 GETTABLEKS                       R7 R2 K26 ["Size"]
       78 GETTABLEKS                       R7 R7 K24 ["Y"]
       80 ADDK                             R6 R7 K25 [8]
       81 CALL                             R4 2 1
       82 SETTABLEKS                       R4 R3 K26 ["Size"]
       84 GETUPVAL                         R3 2
       85 GETUPVAL                         R4 1
       86 GETTABLEKS                       R4 R4 K6 ["Parent"]
       88 SETTABLEKS                       R4 R3 K6 ["Parent"]
       90 JUMP                             ; [+4]
       91 GETUPVAL                         R3 2
       92 LOADNIL                          R4
       93 SETTABLEKS                       R4 R3 K6 ["Parent"]
       95 LENGTH                           R3 R1
       96 JUMPIFNOTEQKN                    R3 K27 [0] ; [+2]
       98 RETURN                           R0 0
       99 GETUPVAL                         R3 1
      100 GETTABLEKS                       R3 R3 K6 ["Parent"]
      102 GETUPVAL                         R4 0
      103 GETTABLEKS                       R4 R4 K28 ["root"]
      105 JUMPIFNOT                        R4 ; [+25]
      106 JUMPIFNOT                        R3 ; [+24]
      107 GETUPVAL                         R4 0
      108 GETTABLEKS                       R4 R4 K28 ["root"]
      110 GETUPVAL                         R6 4
      111 GETUPVAL                         R7 5
      112 DUPTABLE                         R8 K31 [{"GuiName", "Views"}]
      113 GETTABLEKS                       R10 R3 K32 ["Title"]
      115 JUMPIFEQKS                       R10 K33 [""] ; [+4]
      117 GETTABLEKS                       R9 R3 K32 ["Title"]
      119 JUMP                             ; [+2]
      120 GETTABLEKS                       R9 R3 K18 ["Name"]
      122 SETTABLEKS                       R9 R8 K29 ["GuiName"]
      124 SETTABLEKS                       R1 R8 K30 ["Views"]
      126 CALL                             R6 2 -1
      127 NAMECALL                         R4 R4 K34 ["render"]
      129 CALL                             R4 -1 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R4 6
      132 LOADK                            R6 K35 ["View"]
      133 DUPTABLE                         R7 K31 [{"GuiName", "Views"}]
      134 GETTABLEKS                       R9 R3 K32 ["Title"]
      136 JUMPIFEQKS                       R9 K33 [""] ; [+4]
      138 GETTABLEKS                       R8 R3 K32 ["Title"]
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R8 R3 K18 ["Name"]
      143 SETTABLEKS                       R8 R7 K29 ["GuiName"]
      145 SETTABLEKS                       R1 R7 K30 ["Views"]
      147 NAMECALL                         R4 R4 K36 ["Invoke"]
      149 CALL                             R4 3 0
      150 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["InputChanged"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R2 R2 K1 ["Connect"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R3 R0 K2 ["Unloading"]
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          VAL R2
       17 NAMECALL                         R3 R3 K1 ["Connect"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+30]
        5 LOADK                            R4 K0 ["GuiObject"]
        6 NAMECALL                         R2 R1 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+25]
       10 GETTABLEKS                       R2 R0 K2 ["ZIndex"]
       12 GETTABLEKS                       R3 R1 K2 ["ZIndex"]
       14 JUMPIFNOTLT                      R3 R2 ; [+3]
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R0 K2 ["ZIndex"]
       20 GETTABLEKS                       R3 R1 K2 ["ZIndex"]
       22 JUMPIFNOTLT                      R2 R3 ; [+3]
       24 LOADB                            R2 0
       25 RETURN                           R2 1
       26 GETTABLEKS                       R3 R0 K3 ["LayoutOrder"]
       28 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
       30 JUMPIFLT                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1
       35 LOADK                            R4 K0 ["GuiObject"]
       36 NAMECALL                         R2 R0 K1 ["IsA"]
       38 CALL                             R2 2 -1
       39 RETURN                           R2 -1

PROTO_15:
        0 NEWTABLE                         R3 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R2 1
        4 NAMECALL                         R4 R0 K0 ["GetChildren"]
        6 CALL                             R4 1 3
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K1 ["Name"]
       10 JUMPIFEQKS                       R9 K2 ["FoundationPicker"] ; [+53]
       12 LOADK                            R11 K3 ["GuiObject"]
       13 NAMECALL                         R9 R8 K4 ["IsA"]
       15 CALL                             R9 2 1
       16 JUMPIFNOT                        R9 ; [+41]
       17 GETTABLEKS                       R9 R8 K5 ["AbsolutePosition"]
       19 GETTABLEKS                       R10 R8 K6 ["AbsoluteSize"]
       21 GETTABLEKS                       R11 R1 K7 ["X"]
       23 GETTABLEKS                       R12 R9 K7 ["X"]
       25 JUMPIFNOTLT                      R12 R11 ; [+38]
       27 GETTABLEKS                       R11 R1 K8 ["Y"]
       29 GETTABLEKS                       R12 R9 K8 ["Y"]
       31 JUMPIFNOTLT                      R12 R11 ; [+32]
       33 GETTABLEKS                       R11 R1 K7 ["X"]
       35 GETTABLEKS                       R13 R9 K7 ["X"]
       37 GETTABLEKS                       R14 R10 K7 ["X"]
       39 ADD                              R12 R13 R14
       40 JUMPIFNOTLT                      R11 R12 ; [+23]
       42 GETTABLEKS                       R11 R1 K8 ["Y"]
       44 GETTABLEKS                       R13 R9 K8 ["Y"]
       46 GETTABLEKS                       R14 R10 K8 ["Y"]
       48 ADD                              R12 R13 R14
       49 JUMPIFNOTLT                      R11 R12 ; [+14]
       51 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       53 MOVE                             R12 R3
       54 MOVE                             R13 R8
       55 GETUPVAL                         R11 0
       56 CALL                             R11 2 0
       57 JUMP                             ; [+6]
       58 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       60 MOVE                             R10 R3
       61 MOVE                             R11 R8
       62 GETUPVAL                         R9 0
       63 CALL                             R9 2 0
       64 FORGLOOP                         R4 2 ; [-57]
       66 GETUPVAL                         R4 1
       67 MOVE                             R5 R3
       68 DUPCLOSURE                       R6 K9 [PROTO_14]
       69 CALL                             R4 2 0
       70 MOVE                             R4 R3
       71 LOADNIL                          R5
       72 LOADNIL                          R6
       73 FORGPREP                         R4
       74 LOADNIL                          R9
       75 LOADK                            R12 K3 ["GuiObject"]
       76 NAMECALL                         R10 R8 K4 ["IsA"]
       78 CALL                             R10 2 1
       79 JUMPIFNOT                        R10 ; [+9]
       80 GETTABLEKS                       R10 R8 K10 ["Visible"]
       82 JUMPIFNOT                        R10 ; [+20]
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K11 ["processChild"]
       86 MOVE                             R11 R8
       87 CALL                             R10 1 1
       88 MOVE                             R9 R10
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K12 ["intersect"]
       92 MOVE                             R11 R8
       93 MOVE                             R12 R1
       94 MOVE                             R13 R2
       95 CALL                             R10 3 0
       96 JUMPIFNOT                        R9 ; [+6]
       97 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       99 MOVE                             R11 R2
      100 MOVE                             R12 R9
      101 GETUPVAL                         R10 0
      102 CALL                             R10 2 0
      103 FORGLOOP                         R4 2 ; [-30]
      105 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["Scale"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+9]
        4 LOADK                            R2 K2 ["%*px"]
        5 GETTABLEKS                       R4 R0 K3 ["Offset"]
        7 NAMECALL                         R2 R2 K4 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K3 ["Offset"]
       14 JUMPIFNOTEQKN                    R1 K1 [0] ; [+10]
       16 LOADK                            R2 K5 ["%*%%"]
       17 GETTABLEKS                       R5 R0 K0 ["Scale"]
       19 MULK                             R4 R5 K6 [100]
       20 NAMECALL                         R2 R2 K4 ["format"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1
       25 LOADK                            R2 K7 ["%*%% + %*px"]
       26 GETTABLEKS                       R5 R0 K0 ["Scale"]
       28 MULK                             R4 R5 K6 [100]
       29 GETTABLEKS                       R5 R0 K3 ["Offset"]
       31 NAMECALL                         R2 R2 K4 ["format"]
       33 CALL                             R2 3 1
       34 MOVE                             R1 R2
       35 RETURN                           R1 1

PROTO_17:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+2]
        2 RETURN                           R0 0
        3 NAMECALL                         R2 R0 K1 ["ToHex"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R2 R2 K2 ["upper"]
        8 CALL                             R2 1 1
        9 SUBRK                            R5 R0 K1 ["ToHex"]
       10 MULK                             R4 R5 K3 [100]
       11 FASTCALL1                        MATH_ROUND R4 ; [+2]
       12 GETIMPORT                        R3 K6 [math.round]
       14 CALL                             R3 1 1
       15 LOADK                            R5 K7 ["(#%* %*%%)"]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 NAMECALL                         R5 R5 K8 ["format"]
       20 CALL                             R5 3 1
       21 MOVE                             R4 R5
       22 GETUPVAL                         R6 0
       23 GETTABLE                         R5 R6 R2
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETUPVAL                         R6 0
       26 GETTABLE                         R5 R6 R2
       27 RETURN                           R5 1
       28 GETUPVAL                         R5 1
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 MOVE                             R10 R9
       33 LOADNIL                          R11
       34 LOADNIL                          R12
       35 FORGPREP                         R10
       36 NAMECALL                         R15 R14 K1 ["ToHex"]
       38 CALL                             R15 1 1
       39 NAMECALL                         R15 R15 K2 ["upper"]
       41 CALL                             R15 1 1
       42 JUMPIFNOTEQ                      R2 R15 ; [+14]
       44 GETUPVAL                         R15 0
       45 LOADK                            R17 K9 ["%* %* %*"]
       46 MOVE                             R19 R4
       47 MOVE                             R20 R8
       48 MOVE                             R21 R13
       49 NAMECALL                         R17 R17 K8 ["format"]
       51 CALL                             R17 4 1
       52 MOVE                             R16 R17
       53 SETTABLE                         R16 R15 R2
       54 GETUPVAL                         R16 0
       55 GETTABLE                         R15 R16 R2
       56 RETURN                           R15 1
       57 FORGLOOP                         R10 2 ; [-22]
       59 FORGLOOP                         R5 2 ; [-28]
       61 LOADK                            R6 K10 ["%* Unknown"]
       62 MOVE                             R8 R4
       63 NAMECALL                         R6 R6 K8 ["format"]
       65 CALL                             R6 2 1
       66 MOVE                             R5 R6
       67 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 LOADK                            R3 K0 ["TextLabel"]
        5 NAMECALL                         R1 R0 K1 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+9]
        9 LOADK                            R3 K2 ["TextButton"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+4]
       14 LOADK                            R3 K3 ["TextBox"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 LOADK                            R4 K4 ["BackgroundColor3"]
       19 NAMECALL                         R2 R0 K5 ["GetStyled"]
       21 CALL                             R2 2 1
       22 LOADK                            R5 K6 ["BackgroundTransparency"]
       23 NAMECALL                         R3 R0 K5 ["GetStyled"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R1 ; [+5]
       27 LOADK                            R6 K7 ["TextColor3"]
       28 NAMECALL                         R4 R0 K5 ["GetStyled"]
       30 CALL                             R4 2 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 JUMPIFNOT                        R1 ; [+5]
       34 LOADK                            R7 K8 ["TextSize"]
       35 NAMECALL                         R5 R0 K5 ["GetStyled"]
       37 CALL                             R5 2 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R5
       40 JUMPIFNOT                        R1 ; [+5]
       41 LOADK                            R8 K9 ["Font"]
       42 NAMECALL                         R6 R0 K5 ["GetStyled"]
       44 CALL                             R6 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R6
       47 JUMPIFNOT                        R1 ; [+5]
       48 LOADK                            R9 K10 ["TextTransparency"]
       49 NAMECALL                         R7 R0 K5 ["GetStyled"]
       51 CALL                             R7 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 LOADK                            R10 K11 ["UIListLayout"]
       55 NAMECALL                         R8 R0 K12 ["FindFirstChildWhichIsA"]
       57 CALL                             R8 2 1
       58 LOADK                            R11 K13 ["UIPadding"]
       59 NAMECALL                         R9 R0 K12 ["FindFirstChildWhichIsA"]
       61 CALL                             R9 2 1
       62 LOADK                            R12 K14 ["UIStroke"]
       63 NAMECALL                         R10 R0 K12 ["FindFirstChildWhichIsA"]
       65 CALL                             R10 2 1
       66 LOADK                            R13 K15 ["UIGradient"]
       67 NAMECALL                         R11 R0 K12 ["FindFirstChildWhichIsA"]
       69 CALL                             R11 2 1
       70 NAMECALL                         R12 R0 K16 ["GetTags"]
       72 CALL                             R12 1 1
       73 JUMPIFNOTEQKN                    R3 K17 [1] ; [+10]
       75 JUMPIF                           R8 ; [+8]
       76 JUMPIF                           R9 ; [+7]
       77 JUMPIF                           R10 ; [+6]
       78 JUMPIF                           R11 ; [+5]
       79 LENGTH                           R13 R12
       80 JUMPIFNOTEQKN                    R13 K18 [0] ; [+3]
       82 LOADNIL                          R13
       83 RETURN                           R13 1
       84 DUPTABLE                         R13 K31 [{"Name", "ClassName", "Position", "Size", "Styles", "TextColor3", "TextSize", "TextToken", "BackgroundColor3", "BackgroundToken", "FontFace", "Padding", "Layout", "Stroke", "Gradient"}]
       85 GETTABLEKS                       R14 R0 K19 ["Name"]
       87 SETTABLEKS                       R14 R13 K19 ["Name"]
       89 GETTABLEKS                       R14 R0 K20 ["ClassName"]
       91 SETTABLEKS                       R14 R13 K20 ["ClassName"]
       93 GETTABLEKS                       R14 R0 K32 ["AbsolutePosition"]
       95 SETTABLEKS                       R14 R13 K21 ["Position"]
       97 GETTABLEKS                       R14 R0 K33 ["AbsoluteSize"]
       99 SETTABLEKS                       R14 R13 K22 ["Size"]
      101 SETTABLEKS                       R12 R13 K23 ["Styles"]
      103 JUMPIFNOT                        R7 ; [+5]
      104 LOADN                            R15 1
      105 JUMPIFNOTLT                      R7 R15 ; [+3]
      107 MOVE                             R14 R4
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K7 ["TextColor3"]
      112 SETTABLEKS                       R5 R13 K8 ["TextSize"]
      114 JUMPIFNOT                        R4 ; [+5]
      115 GETUPVAL                         R14 1
      116 MOVE                             R15 R4
      117 MOVE                             R16 R7
      118 CALL                             R14 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R14
      121 SETTABLEKS                       R14 R13 K24 ["TextToken"]
      123 LOADN                            R15 1
      124 JUMPIFNOTLT                      R3 R15 ; [+3]
      126 MOVE                             R14 R2
      127 JUMP                             ; [+1]
      128 LOADNIL                          R14
      129 SETTABLEKS                       R14 R13 K4 ["BackgroundColor3"]
      131 GETUPVAL                         R14 1
      132 MOVE                             R15 R2
      133 MOVE                             R16 R3
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K25 ["BackgroundToken"]
      137 SETTABLEKS                       R6 R13 K26 ["FontFace"]
      139 JUMPIFNOT                        R9 ; [+154]
      140 LOADK                            R15 K34 ["(L %*, T %*, R %*, B %*)"]
      141 GETTABLEKS                       R18 R9 K35 ["PaddingLeft"]
      143 GETTABLEKS                       R19 R18 K36 ["Scale"]
      145 JUMPIFNOTEQKN                    R19 K18 [0] ; [+9]
      147 LOADK                            R19 K37 ["%*px"]
      148 GETTABLEKS                       R21 R18 K38 ["Offset"]
      150 NAMECALL                         R19 R19 K39 ["format"]
      152 CALL                             R19 2 1
      153 MOVE                             R17 R19
      154 JUMP                             ; [+23]
      155 GETTABLEKS                       R19 R18 K38 ["Offset"]
      157 JUMPIFNOTEQKN                    R19 K18 [0] ; [+10]
      159 LOADK                            R19 K40 ["%*%%"]
      160 GETTABLEKS                       R22 R18 K36 ["Scale"]
      162 MULK                             R21 R22 K41 [100]
      163 NAMECALL                         R19 R19 K39 ["format"]
      165 CALL                             R19 2 1
      166 MOVE                             R17 R19
      167 JUMP                             ; [+10]
      168 LOADK                            R19 K42 ["%*%% + %*px"]
      169 GETTABLEKS                       R22 R18 K36 ["Scale"]
      171 MULK                             R21 R22 K41 [100]
      172 GETTABLEKS                       R22 R18 K38 ["Offset"]
      174 NAMECALL                         R19 R19 K39 ["format"]
      176 CALL                             R19 3 1
      177 MOVE                             R17 R19
      178 GETTABLEKS                       R19 R9 K43 ["PaddingTop"]
      180 GETTABLEKS                       R20 R19 K36 ["Scale"]
      182 JUMPIFNOTEQKN                    R20 K18 [0] ; [+9]
      184 LOADK                            R20 K37 ["%*px"]
      185 GETTABLEKS                       R22 R19 K38 ["Offset"]
      187 NAMECALL                         R20 R20 K39 ["format"]
      189 CALL                             R20 2 1
      190 MOVE                             R18 R20
      191 JUMP                             ; [+23]
      192 GETTABLEKS                       R20 R19 K38 ["Offset"]
      194 JUMPIFNOTEQKN                    R20 K18 [0] ; [+10]
      196 LOADK                            R20 K40 ["%*%%"]
      197 GETTABLEKS                       R23 R19 K36 ["Scale"]
      199 MULK                             R22 R23 K41 [100]
      200 NAMECALL                         R20 R20 K39 ["format"]
      202 CALL                             R20 2 1
      203 MOVE                             R18 R20
      204 JUMP                             ; [+10]
      205 LOADK                            R20 K42 ["%*%% + %*px"]
      206 GETTABLEKS                       R23 R19 K36 ["Scale"]
      208 MULK                             R22 R23 K41 [100]
      209 GETTABLEKS                       R23 R19 K38 ["Offset"]
      211 NAMECALL                         R20 R20 K39 ["format"]
      213 CALL                             R20 3 1
      214 MOVE                             R18 R20
      215 GETTABLEKS                       R20 R9 K44 ["PaddingRight"]
      217 GETTABLEKS                       R21 R20 K36 ["Scale"]
      219 JUMPIFNOTEQKN                    R21 K18 [0] ; [+9]
      221 LOADK                            R21 K37 ["%*px"]
      222 GETTABLEKS                       R23 R20 K38 ["Offset"]
      224 NAMECALL                         R21 R21 K39 ["format"]
      226 CALL                             R21 2 1
      227 MOVE                             R19 R21
      228 JUMP                             ; [+23]
      229 GETTABLEKS                       R21 R20 K38 ["Offset"]
      231 JUMPIFNOTEQKN                    R21 K18 [0] ; [+10]
      233 LOADK                            R21 K40 ["%*%%"]
      234 GETTABLEKS                       R24 R20 K36 ["Scale"]
      236 MULK                             R23 R24 K41 [100]
      237 NAMECALL                         R21 R21 K39 ["format"]
      239 CALL                             R21 2 1
      240 MOVE                             R19 R21
      241 JUMP                             ; [+10]
      242 LOADK                            R21 K42 ["%*%% + %*px"]
      243 GETTABLEKS                       R24 R20 K36 ["Scale"]
      245 MULK                             R23 R24 K41 [100]
      246 GETTABLEKS                       R24 R20 K38 ["Offset"]
      248 NAMECALL                         R21 R21 K39 ["format"]
      250 CALL                             R21 3 1
      251 MOVE                             R19 R21
      252 GETTABLEKS                       R21 R9 K45 ["PaddingBottom"]
      254 GETTABLEKS                       R22 R21 K36 ["Scale"]
      256 JUMPIFNOTEQKN                    R22 K18 [0] ; [+9]
      258 LOADK                            R22 K37 ["%*px"]
      259 GETTABLEKS                       R24 R21 K38 ["Offset"]
      261 NAMECALL                         R22 R22 K39 ["format"]
      263 CALL                             R22 2 1
      264 MOVE                             R20 R22
      265 JUMP                             ; [+23]
      266 GETTABLEKS                       R22 R21 K38 ["Offset"]
      268 JUMPIFNOTEQKN                    R22 K18 [0] ; [+10]
      270 LOADK                            R22 K40 ["%*%%"]
      271 GETTABLEKS                       R25 R21 K36 ["Scale"]
      273 MULK                             R24 R25 K41 [100]
      274 NAMECALL                         R22 R22 K39 ["format"]
      276 CALL                             R22 2 1
      277 MOVE                             R20 R22
      278 JUMP                             ; [+10]
      279 LOADK                            R22 K42 ["%*%% + %*px"]
      280 GETTABLEKS                       R25 R21 K36 ["Scale"]
      282 MULK                             R24 R25 K41 [100]
      283 GETTABLEKS                       R25 R21 K38 ["Offset"]
      285 NAMECALL                         R22 R22 K39 ["format"]
      287 CALL                             R22 3 1
      288 MOVE                             R20 R22
      289 NAMECALL                         R15 R15 K39 ["format"]
      291 CALL                             R15 5 1
      292 MOVE                             R14 R15
      293 JUMP                             ; [+1]
      294 LOADNIL                          R14
      295 SETTABLEKS                       R14 R13 K27 ["Padding"]
      297 JUMPIFNOT                        R8 ; [+52]
      298 LOADK                            R15 K46 ["%* Spacing (%*)"]
      299 GETTABLEKS                       R18 R8 K47 ["FillDirection"]
      301 GETIMPORT                        R19 K50 [Enum.FillDirection.Horizontal]
      303 JUMPIFNOTEQ                      R18 R19 ; [+3]
      305 LOADK                            R17 K51 ["Row"]
      306 JUMP                             ; [+1]
      307 LOADK                            R17 K52 ["Column"]
      308 GETTABLEKS                       R19 R8 K27 ["Padding"]
      310 GETTABLEKS                       R20 R19 K36 ["Scale"]
      312 JUMPIFNOTEQKN                    R20 K18 [0] ; [+9]
      314 LOADK                            R20 K37 ["%*px"]
      315 GETTABLEKS                       R22 R19 K38 ["Offset"]
      317 NAMECALL                         R20 R20 K39 ["format"]
      319 CALL                             R20 2 1
      320 MOVE                             R18 R20
      321 JUMP                             ; [+23]
      322 GETTABLEKS                       R20 R19 K38 ["Offset"]
      324 JUMPIFNOTEQKN                    R20 K18 [0] ; [+10]
      326 LOADK                            R20 K40 ["%*%%"]
      327 GETTABLEKS                       R23 R19 K36 ["Scale"]
      329 MULK                             R22 R23 K41 [100]
      330 NAMECALL                         R20 R20 K39 ["format"]
      332 CALL                             R20 2 1
      333 MOVE                             R18 R20
      334 JUMP                             ; [+10]
      335 LOADK                            R20 K42 ["%*%% + %*px"]
      336 GETTABLEKS                       R23 R19 K36 ["Scale"]
      338 MULK                             R22 R23 K41 [100]
      339 GETTABLEKS                       R23 R19 K38 ["Offset"]
      341 NAMECALL                         R20 R20 K39 ["format"]
      343 CALL                             R20 3 1
      344 MOVE                             R18 R20
      345 NAMECALL                         R15 R15 K39 ["format"]
      347 CALL                             R15 3 1
      348 MOVE                             R14 R15
      349 JUMP                             ; [+1]
      350 LOADNIL                          R14
      351 SETTABLEKS                       R14 R13 K28 ["Layout"]
      353 JUMPIFNOT                        R10 ; [+7]
      354 GETUPVAL                         R14 1
      355 GETTABLEKS                       R15 R10 K53 ["Color"]
      357 GETTABLEKS                       R16 R10 K54 ["Transparency"]
      359 CALL                             R14 2 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R14
      362 SETTABLEKS                       R14 R13 K29 ["Stroke"]
      364 JUMPIFNOT                        R11 ; [+2]
      365 LOADK                            R14 K30 ["Gradient"]
      366 JUMP                             ; [+1]
      367 LOADNIL                          R14
      368 SETTABLEKS                       R14 R13 K30 ["Gradient"]
      370 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 GETIMPORT                        R4 K11 [game]
       25 LOADK                            R6 K12 ["EnableInstanceGetStyledAPI"]
       26 LOADB                            R7 0
       27 NAMECALL                         R4 R4 K13 ["DefineFastFlag"]
       29 CALL                             R4 3 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K14 ["Display"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K15 ["ViewData"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K18 [table.insert]
       46 GETIMPORT                        R8 K20 [table.sort]
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R0 K6 ["Packages"]
       52 GETTABLEKS                       R10 R10 K21 ["Framework"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K22 ["Style"]
       57 GETTABLEKS                       R10 R10 K23 ["ColorSystem"]
       59 DUPTABLE                         R11 K25 [{"enabled"}]
       60 LOADB                            R12 1
       61 SETTABLEKS                       R12 R11 K24 ["enabled"]
       63 GETIMPORT                        R12 K28 [Color3.fromRGB]
       65 LOADN                            R13 200
       66 LOADN                            R14 255
       67 LOADN                            R15 0
       68 CALL                             R12 3 1
       69 DUPCLOSURE                       R13 K29 [PROTO_0]
       70 CAPTURE                          VAL R12
       71 GETIMPORT                        R15 K32 [Instance.new]
       73 LOADK                            R16 K33 ["Frame"]
       74 CALL                             R15 1 1
       75 LOADN                            R16 1
       76 SETTABLEKS                       R16 R15 K34 ["BackgroundTransparency"]
       78 LOADK                            R16 K35 [∞]
       79 SETTABLEKS                       R16 R15 K36 ["ZIndex"]
       81 GETIMPORT                        R16 K32 [Instance.new]
       83 LOADK                            R17 K37 ["UIStroke"]
       84 CALL                             R16 1 1
       85 SETTABLEKS                       R15 R16 K38 ["Parent"]
       87 SETTABLEKS                       R12 R16 K39 ["Color"]
       89 LOADK                            R17 K40 ["FoundationPicker"]
       90 SETTABLEKS                       R17 R15 K41 ["Name"]
       92 MOVE                             R14 R15
       93 DUPCLOSURE                       R15 K42 [PROTO_4]
       94 CAPTURE                          VAL R11
       95 SETTABLEKS                       R15 R11 K43 ["watchDockWidgets"]
       97 NEWCLOSURE                       R15 P2
       98 CAPTURE                          VAL R11
       99 CAPTURE                          REF R14
      100 SETTABLEKS                       R15 R11 K44 ["watchEnabledState"]
      102 NEWCLOSURE                       R15 P3
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R5
      107 CAPTURE                          REF R14
      108 SETTABLEKS                       R15 R11 K45 ["open"]
      110 DUPCLOSURE                       R15 K46 [PROTO_10]
      111 CAPTURE                          VAL R11
      112 SETTABLEKS                       R15 R11 K47 ["watchPluginGui"]
      114 NEWCLOSURE                       R15 P5
      115 CAPTURE                          VAL R11
      116 CAPTURE                          REF R14
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R5
      120 SETTABLEKS                       R15 R11 K48 ["watchRoot"]
      122 DUPCLOSURE                       R15 K49 [PROTO_15]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R11
      126 SETTABLEKS                       R15 R11 K50 ["intersect"]
      128 DUPCLOSURE                       R15 K51 [PROTO_16]
      129 NEWTABLE                         R16 0 0
      131 DUPCLOSURE                       R17 K52 [PROTO_17]
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R10
      134 DUPCLOSURE                       R18 K53 [PROTO_18]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R17
      137 SETTABLEKS                       R18 R11 K54 ["processChild"]
      139 CLOSEUPVALS                      R14
      140 RETURN                           R11 1
