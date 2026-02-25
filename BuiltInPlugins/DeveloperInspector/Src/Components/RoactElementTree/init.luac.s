PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["props"]
        5 GETTABLEKS                       R4 R5 K2 ["Expansion"]
        7 GETTABLE                         R3 R4 R1
        8 NOT                              R2 R3
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K1 ["props"]
       12 GETTABLEKS                       R3 R4 K3 ["toggleInstance"]
       14 NEWTABLE                         R4 1 0
       16 SETTABLE                         R2 R4 R1
       17 CALL                             R3 1 0
       18 JUMPIFNOT                        R2 ; [+22]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K1 ["props"]
       22 GETTABLEKS                       R3 R4 K4 ["Inspector"]
       24 NAMECALL                         R3 R3 K5 ["get"]
       26 CALL                             R3 1 1
       27 NAMECALL                         R4 R3 K6 ["getTargetApi"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K7 ["isInstance"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 JUMPIFNOT                        R5 ; [+5]
       36 GETTABLEKS                       R7 R1 K8 ["Path"]
       38 NAMECALL                         R5 R4 K9 ["getChildren"]
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["props"]
        5 GETTABLEKS                       R4 R5 K2 ["Expansion"]
        7 GETTABLE                         R3 R4 R1
        8 NOT                              R2 R3
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["onToggleInstance"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K1 ["props"]
       18 GETTABLEKS                       R3 R4 K4 ["selectInstance"]
       20 NEWTABLE                         R4 1 0
       22 LOADB                            R5 1
       23 SETTABLE                         R5 R4 R1
       24 CALL                             R3 1 0
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K1 ["props"]
       28 GETTABLEKS                       R3 R4 K5 ["Inspector"]
       30 NAMECALL                         R3 R3 K6 ["get"]
       32 CALL                             R3 1 1
       33 NAMECALL                         R4 R3 K7 ["getTargetApi"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K8 ["isInstance"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 JUMPIFNOT                        R5 ; [+5]
       42 GETTABLEKS                       R7 R1 K9 ["Path"]
       44 NAMECALL                         R5 R4 K10 ["getBranch"]
       46 CALL                             R5 2 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["item"]
        3 SETTABLEKS                       R2 R1 K1 ["hoveredItem"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["Inspector"]
       10 NAMECALL                         R1 R1 K4 ["get"]
       12 CALL                             R1 1 1
       13 NAMECALL                         R2 R1 K5 ["getTargetApi"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K6 ["isInstance"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+7]
       22 GETTABLEKS                       R6 R0 K0 ["item"]
       24 GETTABLEKS                       R5 R6 K7 ["Path"]
       26 NAMECALL                         R3 R2 K8 ["highlight"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["hoveredItem"]
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["Inspector"]
       13 NAMECALL                         R1 R1 K4 ["get"]
       15 CALL                             R1 1 1
       16 NAMECALL                         R2 R1 K5 ["getTargetApi"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K6 ["isInstance"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 JUMPIFNOT                        R3 ; [+3]
       25 NAMECALL                         R3 R2 K7 ["dehighlight"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["item"]
        5 GETTABLEKS                       R4 R5 K1 ["Path"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["props"]
        3 GETTABLEKS                       R4 R5 K1 ["Stylizer"]
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K0 ["props"]
        9 GETTABLEKS                       R6 R7 K2 ["Flash"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CALL                             R5 2 1
       15 DUPTABLE                         R6 K13 [{"Row", "OnEnterRow", "OnLeaveRow", "OnSelect", "OnToggle", "Position", "Flash", "IsExpanded", "IsSelected", "Size", "Style"}]
       16 SETTABLEKS                       R0 R6 K3 ["Row"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K14 ["onEnterRow"]
       21 SETTABLEKS                       R7 R6 K4 ["OnEnterRow"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K15 ["onLeaveRow"]
       26 SETTABLEKS                       R7 R6 K5 ["OnLeaveRow"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K16 ["onSelectInstance"]
       31 SETTABLEKS                       R7 R6 K6 ["OnSelect"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K17 ["onToggleInstance"]
       36 SETTABLEKS                       R7 R6 K7 ["OnToggle"]
       38 SETTABLEKS                       R2 R6 K8 ["Position"]
       40 SETTABLEKS                       R5 R6 K2 ["Flash"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K0 ["props"]
       45 GETTABLEKS                       R8 R9 K18 ["Expansion"]
       47 GETTABLEKS                       R9 R0 K19 ["item"]
       49 GETTABLE                         R7 R8 R9
       50 SETTABLEKS                       R7 R6 K9 ["IsExpanded"]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K0 ["props"]
       55 GETTABLEKS                       R8 R9 K20 ["Selection"]
       57 GETTABLEKS                       R9 R0 K19 ["item"]
       59 GETTABLE                         R7 R8 R9
       60 SETTABLEKS                       R7 R6 K10 ["IsSelected"]
       62 SETTABLEKS                       R3 R6 K11 ["Size"]
       64 SETTABLEKS                       R4 R6 K12 ["Style"]
       66 RETURN                           R6 1

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onToggleInstance"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["onSelectInstance"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["onEnterRow"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R1 R0 K3 ["onLeaveRow"]
       20 NEWCLOSURE                       R1 P4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 SETTABLEKS                       R1 R0 K4 ["getRowProps"]
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Children"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Children"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 DUPCLOSURE                       R4 K1 [PROTO_7]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K10 [{"Size", "Expansion", "GetRowProps", "RootItems", "RowComponent", "GetChildren", "ScrollingDirection", "Style"}]
        7 GETIMPORT                        R5 K13 [UDim2.new]
        9 LOADN                            R6 1
       10 LOADN                            R7 0
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K2 ["Size"]
       16 GETTABLEKS                       R5 R1 K3 ["Expansion"]
       18 SETTABLEKS                       R5 R4 K3 ["Expansion"]
       20 GETTABLEKS                       R5 R0 K14 ["getRowProps"]
       22 SETTABLEKS                       R5 R4 K4 ["GetRowProps"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R6 R1 K15 ["RootInstance"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K5 ["RootItems"]
       30 GETUPVAL                         R5 3
       31 SETTABLEKS                       R5 R4 K6 ["RowComponent"]
       33 GETUPVAL                         R5 2
       34 SETTABLEKS                       R5 R4 K7 ["GetChildren"]
       36 GETIMPORT                        R5 K18 [Enum.ScrollingDirection.Y]
       38 SETTABLEKS                       R5 R4 K8 ["ScrollingDirection"]
       40 LOADK                            R5 K19 ["BorderBox"]
       41 SETTABLEKS                       R5 R4 K9 ["Style"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

PROTO_10:
        0 DUPTABLE                         R2 K5 [{"SelectedNodeIndex", "RootInstance", "Flash", "Selection", "Expansion"}]
        1 GETTABLEKS                       R4 R0 K6 ["RoactInspector"]
        3 GETTABLEKS                       R3 R4 K7 ["selectedNodeIndex"]
        5 SETTABLEKS                       R3 R2 K0 ["SelectedNodeIndex"]
        7 GETTABLEKS                       R4 R0 K6 ["RoactInspector"]
        9 GETTABLEKS                       R3 R4 K8 ["rootInstance"]
       11 SETTABLEKS                       R3 R2 K1 ["RootInstance"]
       13 GETTABLEKS                       R4 R0 K6 ["RoactInspector"]
       15 GETTABLEKS                       R3 R4 K9 ["flashInstances"]
       17 SETTABLEKS                       R3 R2 K2 ["Flash"]
       19 GETTABLEKS                       R4 R0 K6 ["RoactInspector"]
       21 GETTABLEKS                       R3 R4 K10 ["selectedInstances"]
       23 SETTABLEKS                       R3 R2 K3 ["Selection"]
       25 GETTABLEKS                       R4 R0 K6 ["RoactInspector"]
       27 GETTABLEKS                       R3 R4 K11 ["expandedInstances"]
       29 SETTABLEKS                       R3 R2 K4 ["Expansion"]
       31 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"selectInstance", "toggleInstance"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectInstance"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["toggleInstance"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K11 ["InspectorContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R6 R7 K12 ["RoactElementRow"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R8 R0 K5 ["Packages"]
       50 GETTABLEKS                       R7 R8 K13 ["DeveloperTools"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K14 ["RoactInspectorApi"]
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R10 R0 K5 ["Packages"]
       59 GETTABLEKS                       R9 R10 K15 ["Dash"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K16 ["shallowEqual"]
       64 GETTABLEKS                       R10 R8 K17 ["mapOne"]
       66 GETTABLEKS                       R11 R8 K18 ["values"]
       68 GETIMPORT                        R12 K21 [table.sort]
       70 GETTABLEKS                       R13 R3 K22 ["ContextServices"]
       72 GETTABLEKS                       R14 R13 K23 ["withContext"]
       74 GETTABLEKS                       R15 R3 K24 ["UI"]
       76 GETTABLEKS                       R16 R15 K25 ["TreeView"]
       78 GETTABLEKS                       R18 R0 K9 ["Src"]
       80 GETTABLEKS                       R17 R18 K26 ["Actions"]
       82 GETIMPORT                        R18 K4 [require]
       84 GETTABLEKS                       R20 R17 K27 ["RoactInspector"]
       86 GETTABLEKS                       R19 R20 K28 ["SelectInstance"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K4 [require]
       91 GETTABLEKS                       R21 R17 K27 ["RoactInspector"]
       93 GETTABLEKS                       R20 R21 K29 ["ToggleInstance"]
       95 CALL                             R19 1 1
       96 GETTABLEKS                       R20 R1 K30 ["PureComponent"]
       98 LOADK                            R22 K31 ["RoactElementTree"]
       99 NAMECALL                         R20 R20 K32 ["extend"]
      101 CALL                             R20 2 1
      102 DUPCLOSURE                       R21 K33 [PROTO_6]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R21 R20 K34 ["init"]
      108 DUPCLOSURE                       R21 K35 [PROTO_8]
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 DUPCLOSURE                       R22 K36 [PROTO_9]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R22 R20 K37 ["render"]
      118 MOVE                             R22 R14
      119 DUPTABLE                         R23 K40 [{"Stylizer", "Inspector"}]
      120 GETTABLEKS                       R24 R13 K38 ["Stylizer"]
      122 SETTABLEKS                       R24 R23 K38 ["Stylizer"]
      124 SETTABLEKS                       R4 R23 K39 ["Inspector"]
      126 CALL                             R22 1 1
      127 MOVE                             R23 R20
      128 CALL                             R22 1 1
      129 MOVE                             R20 R22
      130 GETTABLEKS                       R22 R2 K41 ["connect"]
      132 DUPCLOSURE                       R23 K42 [PROTO_10]
      133 DUPCLOSURE                       R24 K43 [PROTO_13]
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R19
      136 CALL                             R22 2 1
      137 MOVE                             R23 R20
      138 CALL                             R22 1 -1
      139 RETURN                           R22 -1
