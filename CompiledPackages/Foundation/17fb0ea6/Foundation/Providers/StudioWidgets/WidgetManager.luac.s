PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_widgetsApi"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_pendingRegisters"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K4 ["_pendingDeregisters"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K5 ["_registeredWidgets"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K6 ["_signals"]
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R1 K7 ["_running"]
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_widgetsApi"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["DeregisterAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Widget"]
        2 LOADK                            R4 K1 ["LayerCollector"]
        3 NAMECALL                         R2 R2 K2 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uri"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uri"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uri"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["Uri"]
        5 NAMECALL                         R2 R2 K1 ["deregister"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_pendingDeregisters"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 GETTABLEKS                       R7 R0 K4 ["_registeredWidgets"]
       16 LOADNIL                          R8
       17 SETTABLE                         R8 R7 R5
       18 FORGLOOP                         R2 2 ; [-12]
       20 LENGTH                           R2 R1
       21 LOADN                            R3 0
       22 JUMPIFNOTLT                      R3 R2 ; [+7]
       24 GETIMPORT                        R2 K6 [pcall]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 0
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R0 K0 ["_pendingDeregisters"]
       34 GETUPVAL                         R2 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R4 R0 K7 ["_pendingRegisters"]
       38 CALL                             R3 1 1
       39 DUPCLOSURE                       R4 K8 [PROTO_3]
       40 CALL                             R2 2 1
       41 MOVE                             R3 R2
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETTABLEKS                       R9 R7 K9 ["Widget"]
       47 GETTABLEKS                       R8 R9 K10 ["AbsolutePosition"]
       49 SETTABLEKS                       R8 R7 K11 ["Position"]
       51 GETTABLEKS                       R9 R7 K9 ["Widget"]
       53 GETTABLEKS                       R8 R9 K12 ["AbsoluteSize"]
       55 SETTABLEKS                       R8 R7 K13 ["Size"]
       57 GETTABLEKS                       R8 R7 K9 ["Widget"]
       59 LOADK                            R10 K14 ["Visible"]
       60 NAMECALL                         R8 R8 K15 ["GetStyled"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K14 ["Visible"]
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R8 R9 K16 ["toString"]
       68 GETTABLEKS                       R9 R7 K17 ["Uri"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R10 R0 K18 ["_signals"]
       73 GETTABLE                         R9 R10 R8
       74 JUMPIFNOT                        R9 ; [+28]
       75 GETTABLEKS                       R10 R9 K9 ["Widget"]
       77 GETTABLEKS                       R11 R7 K9 ["Widget"]
       79 JUMPIFEQ                         R10 R11 ; [+85]
       81 GETTABLEKS                       R10 R9 K19 ["PositionChanged"]
       83 NAMECALL                         R10 R10 K20 ["Disconnect"]
       85 CALL                             R10 1 0
       86 GETTABLEKS                       R10 R9 K21 ["SizeChanged"]
       88 NAMECALL                         R10 R10 K20 ["Disconnect"]
       90 CALL                             R10 1 0
       91 GETTABLEKS                       R10 R9 K22 ["VisibleChanged"]
       93 NAMECALL                         R10 R10 K20 ["Disconnect"]
       95 CALL                             R10 1 0
       96 GETTABLEKS                       R10 R9 K23 ["AncestryChanged"]
       98 NAMECALL                         R10 R10 K20 ["Disconnect"]
      100 CALL                             R10 1 0
      101 JUMP                             ; [+1]
      102 JUMP                             ; [+62]
      103 GETTABLEKS                       R10 R0 K18 ["_signals"]
      105 DUPTABLE                         R11 K24 [{"Widget", "PositionChanged", "SizeChanged", "VisibleChanged", "AncestryChanged"}]
      106 GETTABLEKS                       R12 R7 K9 ["Widget"]
      108 SETTABLEKS                       R12 R11 K9 ["Widget"]
      110 GETTABLEKS                       R12 R7 K9 ["Widget"]
      112 LOADK                            R14 K10 ["AbsolutePosition"]
      113 NAMECALL                         R12 R12 K25 ["GetPropertyChangedSignal"]
      115 CALL                             R12 2 1
      116 NEWCLOSURE                       R14 P2
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R7
      119 NAMECALL                         R12 R12 K26 ["Connect"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K19 ["PositionChanged"]
      124 GETTABLEKS                       R12 R7 K9 ["Widget"]
      126 LOADK                            R14 K12 ["AbsoluteSize"]
      127 NAMECALL                         R12 R12 K25 ["GetPropertyChangedSignal"]
      129 CALL                             R12 2 1
      130 NEWCLOSURE                       R14 P3
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R7
      133 NAMECALL                         R12 R12 K26 ["Connect"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K21 ["SizeChanged"]
      138 GETTABLEKS                       R12 R7 K9 ["Widget"]
      140 LOADK                            R14 K14 ["Visible"]
      141 NAMECALL                         R12 R12 K27 ["GetStyledPropertyChangedSignal"]
      143 CALL                             R12 2 1
      144 NEWCLOSURE                       R14 P4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R7
      147 NAMECALL                         R12 R12 K26 ["Connect"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K22 ["VisibleChanged"]
      152 GETTABLEKS                       R13 R7 K9 ["Widget"]
      154 GETTABLEKS                       R12 R13 K23 ["AncestryChanged"]
      156 NEWCLOSURE                       R14 P5
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R7
      159 NAMECALL                         R12 R12 K26 ["Connect"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K23 ["AncestryChanged"]
      164 SETTABLE                         R11 R10 R8
      165 FORGLOOP                         R3 2 ; [-121]
      167 LENGTH                           R3 R2
      168 LOADN                            R4 0
      169 JUMPIFNOTLT                      R4 R3 ; [+7]
      171 GETTABLEKS                       R3 R0 K28 ["_widgetsApi"]
      173 MOVE                             R5 R2
      174 NAMECALL                         R3 R3 K29 ["RegisterAsync"]
      176 CALL                             R3 2 0
      177 NEWTABLE                         R3 0 0
      179 SETTABLEKS                       R3 R0 K7 ["_pendingRegisters"]
      181 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_running"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["flush"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_running"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_running"]
        7 GETIMPORT                        R1 K3 [task.defer]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R5 K0 ["PluginGui"]
        1 NAMECALL                         R3 R2 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+5]
        5 LOADK                            R6 K2 ["ScreenGui"]
        6 NAMECALL                         R4 R2 K1 ["FindFirstAncestorWhichIsA"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 JUMPIFNOT                        R3 ; [+25]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["toString"]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K4 ["_registeredWidgets"]
       18 SETTABLE                         R2 R5 R4
       19 GETTABLEKS                       R5 R0 K5 ["_pendingRegisters"]
       21 DUPTABLE                         R6 K9 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       22 SETTABLEKS                       R1 R6 K6 ["Uri"]
       24 SETTABLEKS                       R2 R6 K7 ["Widget"]
       26 SETTABLEKS                       R3 R6 K8 ["DEPRECATED_PluginGui"]
       28 SETTABLE                         R6 R5 R4
       29 GETTABLEKS                       R5 R0 K10 ["_pendingDeregisters"]
       31 LOADNIL                          R6
       32 SETTABLE                         R6 R5 R4
       33 NAMECALL                         R5 R0 K11 ["_run"]
       35 CALL                             R5 1 0
       36 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["toString"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_pendingDeregisters"]
        7 SETTABLE                         R1 R4 R3
        8 GETTABLEKS                       R5 R0 K2 ["_signals"]
       10 GETTABLE                         R4 R5 R3
       11 JUMPIFNOT                        R4 ; [+41]
       12 JUMPIFEQKNIL                     R2 ; [+5]
       14 GETTABLEKS                       R5 R4 K3 ["Widget"]
       16 JUMPIFNOTEQ                      R5 R2 ; [+26]
       18 GETTABLEKS                       R5 R4 K4 ["PositionChanged"]
       20 NAMECALL                         R5 R5 K5 ["Disconnect"]
       22 CALL                             R5 1 0
       23 GETTABLEKS                       R5 R4 K6 ["SizeChanged"]
       25 NAMECALL                         R5 R5 K5 ["Disconnect"]
       27 CALL                             R5 1 0
       28 GETTABLEKS                       R5 R4 K7 ["VisibleChanged"]
       30 NAMECALL                         R5 R5 K5 ["Disconnect"]
       32 CALL                             R5 1 0
       33 GETTABLEKS                       R5 R4 K8 ["AncestryChanged"]
       35 NAMECALL                         R5 R5 K5 ["Disconnect"]
       37 CALL                             R5 1 0
       38 GETTABLEKS                       R5 R0 K2 ["_signals"]
       40 LOADNIL                          R6
       41 SETTABLE                         R6 R5 R3
       42 JUMP                             ; [+10]
       43 GETUPVAL                         R5 1
       44 LOADK                            R8 K9 ["WidgetManager:deregister called with mismatched widget for uri %*"]
       45 MOVE                             R10 R3
       46 NAMECALL                         R8 R8 K10 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 NAMECALL                         R5 R5 K11 ["warning"]
       52 CALL                             R5 2 0
       53 NAMECALL                         R5 R0 K12 ["_run"]
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_signals"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["PositionChanged"]
        7 NAMECALL                         R6 R6 K2 ["Disconnect"]
        9 CALL                             R6 1 0
       10 GETTABLEKS                       R6 R5 K3 ["SizeChanged"]
       12 NAMECALL                         R6 R6 K2 ["Disconnect"]
       14 CALL                             R6 1 0
       15 GETTABLEKS                       R6 R5 K4 ["VisibleChanged"]
       17 NAMECALL                         R6 R6 K2 ["Disconnect"]
       19 CALL                             R6 1 0
       20 GETTABLEKS                       R6 R5 K5 ["AncestryChanged"]
       22 NAMECALL                         R6 R6 K2 ["Disconnect"]
       24 CALL                             R6 1 0
       25 FORGLOOP                         R1 2 ; [-21]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K0 ["_signals"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K6 ["_pendingRegisters"]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K7 ["_pendingDeregisters"]
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K8 ["_registeredWidgets"]
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Foundation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K12 ["filter"]
       22 GETTABLEKS                       R5 R3 K13 ["values"]
       24 GETIMPORT                        R6 K10 [require]
       26 GETTABLEKS                       R9 R1 K14 ["Utility"]
       28 GETTABLEKS                       R8 R9 K15 ["Plugin"]
       30 GETTABLEKS                       R7 R8 K16 ["StudioUri"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K10 [require]
       35 GETTABLEKS                       R9 R1 K14 ["Utility"]
       37 GETTABLEKS                       R8 R9 K17 ["Logger"]
       39 CALL                             R7 1 1
       40 NEWTABLE                         R8 8 0
       42 SETTABLEKS                       R8 R8 K18 ["__index"]
       44 DUPCLOSURE                       R9 K19 [PROTO_0]
       45 CAPTURE                          VAL R8
       46 SETTABLEKS                       R9 R8 K20 ["new"]
       48 DUPCLOSURE                       R9 K21 [PROTO_1]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R9 R8 K22 ["nextId"]
       52 DUPCLOSURE                       R9 K23 [PROTO_8]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R9 R8 K24 ["flush"]
       58 DUPCLOSURE                       R9 K25 [PROTO_10]
       59 SETTABLEKS                       R9 R8 K26 ["_run"]
       61 DUPCLOSURE                       R9 K27 [PROTO_11]
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R9 R8 K28 ["register"]
       65 DUPCLOSURE                       R9 K29 [PROTO_12]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R9 R8 K30 ["deregister"]
       70 DUPCLOSURE                       R9 K31 [PROTO_13]
       71 SETTABLEKS                       R9 R8 K32 ["destroy"]
       73 RETURN                           R8 1
