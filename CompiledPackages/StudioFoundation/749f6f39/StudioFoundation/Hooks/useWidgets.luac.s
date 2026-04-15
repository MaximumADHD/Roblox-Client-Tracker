PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Widgets"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uri"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uri"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Widget"]
        7 NAMECALL                         R0 R0 K2 ["register"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

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
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["Uri"]
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
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K1 ["registeredWidgets"]
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
       45 GETTABLEKS                       R9 R7 K6 ["Widget"]
       47 GETTABLEKS                       R8 R9 K7 ["AbsolutePosition"]
       49 SETTABLEKS                       R8 R7 K8 ["Position"]
       51 GETTABLEKS                       R9 R7 K6 ["Widget"]
       53 GETTABLEKS                       R8 R9 K9 ["AbsoluteSize"]
       55 SETTABLEKS                       R8 R7 K10 ["Size"]
       57 GETUPVAL                         R9 4
       58 JUMPIFNOT                        R9 ; [+7]
       59 GETTABLEKS                       R8 R7 K6 ["Widget"]
       61 LOADK                            R10 K11 ["Visible"]
       62 NAMECALL                         R8 R8 K12 ["GetStyled"]
       64 CALL                             R8 2 1
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R8 R7 K6 ["Widget"]
       68 SETTABLEKS                       R8 R7 K11 ["Visible"]
       70 GETUPVAL                         R9 5
       71 GETTABLEKS                       R8 R9 K13 ["toString"]
       73 GETTABLEKS                       R9 R7 K14 ["Uri"]
       75 CALL                             R8 1 1
       76 GETTABLEKS                       R10 R0 K15 ["signals"]
       78 GETTABLE                         R9 R10 R8
       79 JUMPIFNOT                        R9 ; [+28]
       80 GETTABLEKS                       R10 R9 K6 ["Widget"]
       82 GETTABLEKS                       R11 R7 K6 ["Widget"]
       84 JUMPIFEQ                         R10 R11 ; [+94]
       86 GETTABLEKS                       R10 R9 K16 ["PositionChanged"]
       88 NAMECALL                         R10 R10 K17 ["Disconnect"]
       90 CALL                             R10 1 0
       91 GETTABLEKS                       R10 R9 K18 ["SizeChanged"]
       93 NAMECALL                         R10 R10 K17 ["Disconnect"]
       95 CALL                             R10 1 0
       96 GETTABLEKS                       R10 R9 K19 ["VisibleChanged"]
       98 NAMECALL                         R10 R10 K17 ["Disconnect"]
      100 CALL                             R10 1 0
      101 GETTABLEKS                       R10 R9 K20 ["AncestryChanged"]
      103 NAMECALL                         R10 R10 K17 ["Disconnect"]
      105 CALL                             R10 1 0
      106 JUMP                             ; [+1]
      107 JUMP                             ; [+71]
      108 GETTABLEKS                       R10 R0 K15 ["signals"]
      110 DUPTABLE                         R11 K21 [{"Widget", "PositionChanged", "SizeChanged", "VisibleChanged", "AncestryChanged"}]
      111 GETTABLEKS                       R12 R7 K6 ["Widget"]
      113 SETTABLEKS                       R12 R11 K6 ["Widget"]
      115 GETTABLEKS                       R12 R7 K6 ["Widget"]
      117 LOADK                            R14 K7 ["AbsolutePosition"]
      118 NAMECALL                         R12 R12 K22 ["GetPropertyChangedSignal"]
      120 CALL                             R12 2 1
      121 NEWCLOSURE                       R14 P2
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R7
      124 NAMECALL                         R12 R12 K23 ["Connect"]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K16 ["PositionChanged"]
      129 GETTABLEKS                       R12 R7 K6 ["Widget"]
      131 LOADK                            R14 K9 ["AbsoluteSize"]
      132 NAMECALL                         R12 R12 K22 ["GetPropertyChangedSignal"]
      134 CALL                             R12 2 1
      135 NEWCLOSURE                       R14 P3
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R7
      138 NAMECALL                         R12 R12 K23 ["Connect"]
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K18 ["SizeChanged"]
      143 GETUPVAL                         R13 4
      144 JUMPIFNOT                        R13 ; [+7]
      145 GETTABLEKS                       R12 R7 K6 ["Widget"]
      147 LOADK                            R14 K11 ["Visible"]
      148 NAMECALL                         R12 R12 K24 ["GetStyledPropertyChangedSignal"]
      150 CALL                             R12 2 1
      151 JUMP                             ; [+6]
      152 GETTABLEKS                       R12 R7 K6 ["Widget"]
      154 LOADK                            R14 K11 ["Visible"]
      155 NAMECALL                         R12 R12 K22 ["GetPropertyChangedSignal"]
      157 CALL                             R12 2 1
      158 NEWCLOSURE                       R14 P4
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R7
      161 NAMECALL                         R12 R12 K23 ["Connect"]
      163 CALL                             R12 2 1
      164 SETTABLEKS                       R12 R11 K19 ["VisibleChanged"]
      166 GETTABLEKS                       R13 R7 K6 ["Widget"]
      168 GETTABLEKS                       R12 R13 K20 ["AncestryChanged"]
      170 NEWCLOSURE                       R14 P5
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R7
      173 NAMECALL                         R12 R12 K23 ["Connect"]
      175 CALL                             R12 2 1
      176 SETTABLEKS                       R12 R11 K20 ["AncestryChanged"]
      178 SETTABLE                         R11 R10 R8
      179 FORGLOOP                         R3 2 ; [-135]
      181 LENGTH                           R3 R2
      182 LOADN                            R4 0
      183 JUMPIFNOTLT                      R4 R3 ; [+7]
      185 GETTABLEKS                       R3 R0 K25 ["Widgets"]
      187 MOVE                             R5 R2
      188 NAMECALL                         R3 R3 K26 ["RegisterAsync"]
      190 CALL                             R3 2 0
      191 NEWTABLE                         R3 0 0
      193 SETTABLEKS                       R3 R0 K4 ["pendingRegisters"]
      195 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["running"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["flush"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["running"]
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
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["toString"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["toString"]
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
       22 GETTABLEKS                       R8 R0 K13 ["Util"]
       24 GETTABLEKS                       R7 R8 K14 ["safeGetFastFlag"]
       26 CALL                             R6 1 1
       27 MOVE                             R7 R6
       28 LOADK                            R8 K15 ["EnableInstanceGetStyledAPI"]
       29 CALL                             R7 1 1
       30 GETIMPORT                        R8 K6 [require]
       32 GETTABLEKS                       R9 R1 K16 ["Framework"]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R10 R8 K17 ["ContextServices"]
       37 GETTABLEKS                       R9 R10 K18 ["Plugin"]
       39 GETIMPORT                        R10 K6 [require]
       41 GETTABLEKS                       R12 R0 K13 ["Util"]
       43 GETTABLEKS                       R11 R12 K19 ["StudioUri"]
       45 CALL                             R10 1 1
       46 DUPTABLE                         R11 K26 [{"Widgets", "pendingRegisters", "pendingDeregisters", "registeredWidgets", "running", "signals"}]
       47 LOADNIL                          R12
       48 SETTABLEKS                       R12 R11 K20 ["Widgets"]
       50 NEWTABLE                         R12 0 0
       52 SETTABLEKS                       R12 R11 K21 ["pendingRegisters"]
       54 NEWTABLE                         R12 0 0
       56 SETTABLEKS                       R12 R11 K22 ["pendingDeregisters"]
       58 NEWTABLE                         R12 0 0
       60 SETTABLEKS                       R12 R11 K23 ["registeredWidgets"]
       62 LOADB                            R12 0
       63 SETTABLEKS                       R12 R11 K24 ["running"]
       65 NEWTABLE                         R12 0 0
       67 SETTABLEKS                       R12 R11 K25 ["signals"]
       69 DUPCLOSURE                       R12 K27 [PROTO_6]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R12 R11 K28 ["flush"]
       78 DUPCLOSURE                       R12 K29 [PROTO_8]
       79 CAPTURE                          VAL R11
       80 SETTABLEKS                       R12 R11 K30 ["run"]
       82 DUPCLOSURE                       R12 K31 [PROTO_9]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 SETTABLEKS                       R12 R11 K32 ["register"]
       87 DUPCLOSURE                       R12 K33 [PROTO_10]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R12 R11 K34 ["deregister"]
       92 DUPCLOSURE                       R12 K35 [PROTO_11]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 RETURN                           R12 1
