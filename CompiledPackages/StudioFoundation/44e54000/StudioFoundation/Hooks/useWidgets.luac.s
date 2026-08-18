PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Widgets"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["DeregisterAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Widget"]
        2 LOADK                            R4 K1 ["LayerCollector"]
        3 NAMECALL                         R2 R2 K2 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Uri"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Uri"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Uri"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["Uri"]
        5 NAMECALL                         R2 R2 K1 ["deregister"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["pendingDeregisters"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETUPVAL                         R7 0
       12 CALL                             R7 2 0
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K1 ["registeredWidgets"]
       16 LOADNIL                          R8
       17 SETTABLE                         R8 R7 R5
       18 FORGLOOP                         R2 2 ; [-12]
       20 LENGTH                           R2 R1
       21 LOADN                            R3 0
       22 JUMPIFNOTLT                      R3 R2 ; [+7]
       24 GETIMPORT                        R2 K3 [pcall]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 0
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R0 K0 ["pendingDeregisters"]
       34 GETUPVAL                         R2 2
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R4 R0 K4 ["pendingRegisters"]
       38 CALL                             R3 1 1
       39 DUPCLOSURE                       R4 K5 [PROTO_1]
       40 CALL                             R2 2 1
       41 MOVE                             R3 R2
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETTABLEKS                       R8 R7 K6 ["Widget"]
       47 GETTABLEKS                       R8 R8 K7 ["AbsolutePosition"]
       49 SETTABLEKS                       R8 R7 K8 ["Position"]
       51 GETTABLEKS                       R8 R7 K6 ["Widget"]
       53 GETTABLEKS                       R8 R8 K9 ["AbsoluteSize"]
       55 SETTABLEKS                       R8 R7 K10 ["Size"]
       57 GETTABLEKS                       R8 R7 K6 ["Widget"]
       59 LOADK                            R10 K11 ["Visible"]
       60 NAMECALL                         R8 R8 K12 ["GetStyled"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K11 ["Visible"]
       65 GETUPVAL                         R8 4
       66 GETTABLEKS                       R8 R8 K13 ["toString"]
       68 GETTABLEKS                       R9 R7 K14 ["Uri"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R10 R0 K15 ["signals"]
       73 GETTABLE                         R9 R10 R8
       74 JUMPIFNOT                        R9 ; [+28]
       75 GETTABLEKS                       R10 R9 K6 ["Widget"]
       77 GETTABLEKS                       R11 R7 K6 ["Widget"]
       79 JUMPIFEQ                         R10 R11 ; [+85]
       81 GETTABLEKS                       R10 R9 K16 ["PositionChanged"]
       83 NAMECALL                         R10 R10 K17 ["Disconnect"]
       85 CALL                             R10 1 0
       86 GETTABLEKS                       R10 R9 K18 ["SizeChanged"]
       88 NAMECALL                         R10 R10 K17 ["Disconnect"]
       90 CALL                             R10 1 0
       91 GETTABLEKS                       R10 R9 K19 ["VisibleChanged"]
       93 NAMECALL                         R10 R10 K17 ["Disconnect"]
       95 CALL                             R10 1 0
       96 GETTABLEKS                       R10 R9 K20 ["AncestryChanged"]
       98 NAMECALL                         R10 R10 K17 ["Disconnect"]
      100 CALL                             R10 1 0
      101 JUMP                             ; [+1]
      102 JUMP                             ; [+62]
      103 GETTABLEKS                       R10 R0 K15 ["signals"]
      105 DUPTABLE                         R11 K21 [{"Widget", "PositionChanged", "SizeChanged", "VisibleChanged", "AncestryChanged"}]
      106 GETTABLEKS                       R12 R7 K6 ["Widget"]
      108 SETTABLEKS                       R12 R11 K6 ["Widget"]
      110 GETTABLEKS                       R12 R7 K6 ["Widget"]
      112 LOADK                            R14 K7 ["AbsolutePosition"]
      113 NAMECALL                         R12 R12 K22 ["GetPropertyChangedSignal"]
      115 CALL                             R12 2 1
      116 NEWCLOSURE                       R14 P2
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R7
      119 NAMECALL                         R12 R12 K23 ["Connect"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K16 ["PositionChanged"]
      124 GETTABLEKS                       R12 R7 K6 ["Widget"]
      126 LOADK                            R14 K9 ["AbsoluteSize"]
      127 NAMECALL                         R12 R12 K22 ["GetPropertyChangedSignal"]
      129 CALL                             R12 2 1
      130 NEWCLOSURE                       R14 P3
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R7
      133 NAMECALL                         R12 R12 K23 ["Connect"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K18 ["SizeChanged"]
      138 GETTABLEKS                       R12 R7 K6 ["Widget"]
      140 LOADK                            R14 K11 ["Visible"]
      141 NAMECALL                         R12 R12 K24 ["GetStyledPropertyChangedSignal"]
      143 CALL                             R12 2 1
      144 NEWCLOSURE                       R14 P4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R7
      147 NAMECALL                         R12 R12 K23 ["Connect"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K19 ["VisibleChanged"]
      152 GETTABLEKS                       R12 R7 K6 ["Widget"]
      154 GETTABLEKS                       R12 R12 K20 ["AncestryChanged"]
      156 NEWCLOSURE                       R14 P5
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R7
      159 NAMECALL                         R12 R12 K23 ["Connect"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K20 ["AncestryChanged"]
      164 SETTABLE                         R11 R10 R8
      165 FORGLOOP                         R3 2 ; [-121]
      167 LENGTH                           R3 R2
      168 LOADN                            R4 0
      169 JUMPIFNOTLT                      R4 R3 ; [+7]
      171 GETTABLEKS                       R3 R0 K25 ["Widgets"]
      173 MOVE                             R5 R2
      174 NAMECALL                         R3 R3 K26 ["RegisterAsync"]
      176 CALL                             R3 2 0
      177 NEWTABLE                         R3 0 0
      179 SETTABLEKS                       R3 R0 K4 ["pendingRegisters"]
      181 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["running"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["flush"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["running"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["running"]
        9 GETIMPORT                        R1 K3 [task.defer]
       11 DUPCLOSURE                       R2 K4 [PROTO_7]
       12 CAPTURE                          UPVAL U0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R5 K0 ["PluginGui"]
        1 NAMECALL                         R3 R2 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+5]
        5 LOADK                            R6 K2 ["ScreenGui"]
        6 NAMECALL                         R4 R2 K1 ["FindFirstAncestorWhichIsA"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 JUMPIFNOT                        R3 ; [+26]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["toString"]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K4 ["registeredWidgets"]
       18 SETTABLE                         R2 R5 R4
       19 GETTABLEKS                       R5 R0 K5 ["pendingRegisters"]
       21 DUPTABLE                         R6 K9 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       22 SETTABLEKS                       R1 R6 K6 ["Uri"]
       24 SETTABLEKS                       R2 R6 K7 ["Widget"]
       26 SETTABLEKS                       R3 R6 K8 ["DEPRECATED_PluginGui"]
       28 SETTABLE                         R6 R5 R4
       29 GETTABLEKS                       R5 R0 K10 ["pendingDeregisters"]
       31 LOADNIL                          R6
       32 SETTABLE                         R6 R5 R4
       33 GETUPVAL                         R5 1
       34 NAMECALL                         R5 R5 K11 ["run"]
       36 CALL                             R5 1 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toString"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["pendingDeregisters"]
        7 SETTABLE                         R1 R4 R3
        8 GETTABLEKS                       R5 R0 K2 ["signals"]
       10 GETTABLE                         R4 R5 R3
       11 JUMPIFNOT                        R4 ; [+28]
       12 GETTABLEKS                       R5 R4 K3 ["Widget"]
       14 JUMPIFNOTEQ                      R5 R2 ; [+25]
       16 GETTABLEKS                       R5 R4 K4 ["PositionChanged"]
       18 NAMECALL                         R5 R5 K5 ["Disconnect"]
       20 CALL                             R5 1 0
       21 GETTABLEKS                       R5 R4 K6 ["SizeChanged"]
       23 NAMECALL                         R5 R5 K5 ["Disconnect"]
       25 CALL                             R5 1 0
       26 GETTABLEKS                       R5 R4 K7 ["VisibleChanged"]
       28 NAMECALL                         R5 R5 K5 ["Disconnect"]
       30 CALL                             R5 1 0
       31 GETTABLEKS                       R5 R4 K8 ["AncestryChanged"]
       33 NAMECALL                         R5 R5 K5 ["Disconnect"]
       35 CALL                             R5 1 0
       36 GETTABLEKS                       R5 R0 K2 ["signals"]
       38 LOADNIL                          R6
       39 SETTABLE                         R6 R5 R3
       40 GETUPVAL                         R5 1
       41 NAMECALL                         R5 R5 K9 ["run"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 LOADK                            R4 K2 ["Widgets"]
        9 NAMECALL                         R2 R0 K3 ["GetPluginComponent"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K2 ["Widgets"]
       14 GETUPVAL                         R1 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["filter"]
       16 GETTABLEKS                       R4 R2 K9 ["values"]
       18 GETIMPORT                        R5 K12 [table.insert]
       20 GETIMPORT                        R6 K6 [require]
       22 GETTABLEKS                       R7 R1 K13 ["Framework"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       27 GETTABLEKS                       R7 R7 K15 ["Plugin"]
       29 GETIMPORT                        R8 K6 [require]
       31 GETTABLEKS                       R9 R0 K16 ["Util"]
       33 GETTABLEKS                       R9 R9 K17 ["StudioUri"]
       35 CALL                             R8 1 1
       36 DUPTABLE                         R9 K26 [{["Widgets"] = , ["pendingRegisters"], ["pendingDeregisters"], ["registeredWidgets"], ["running"] = False, ["signals"]}]
       37 NEWTABLE                         R10 0 0
       39 SETTABLEKS                       R10 R9 K20 ["pendingRegisters"]
       41 NEWTABLE                         R10 0 0
       43 SETTABLEKS                       R10 R9 K21 ["pendingDeregisters"]
       45 NEWTABLE                         R10 0 0
       47 SETTABLEKS                       R10 R9 K22 ["registeredWidgets"]
       49 NEWTABLE                         R10 0 0
       51 SETTABLEKS                       R10 R9 K25 ["signals"]
       53 DUPCLOSURE                       R10 K27 [PROTO_6]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R10 R9 K28 ["flush"]
       61 DUPCLOSURE                       R10 K29 [PROTO_8]
       62 CAPTURE                          VAL R9
       63 SETTABLEKS                       R10 R9 K30 ["run"]
       65 DUPCLOSURE                       R10 K31 [PROTO_9]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R10 R9 K32 ["register"]
       70 DUPCLOSURE                       R10 K33 [PROTO_10]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R10 R9 K34 ["deregister"]
       75 DUPCLOSURE                       R10 K35 [PROTO_11]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 RETURN                           R10 1
