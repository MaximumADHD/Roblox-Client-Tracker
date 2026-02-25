PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["selectNode"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["Inspector"]
       12 NAMECALL                         R1 R1 K3 ["get"]
       14 CALL                             R1 1 1
       15 NAMECALL                         R2 R1 K4 ["getTargetApi"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["isInstance"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+42]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K0 ["props"]
       27 GETTABLEKS                       R5 R6 K6 ["SelectedPath"]
       29 MOVE                             R6 R0
       30 NEWTABLE                         R7 0 1
       32 LOADK                            R8 K0 ["props"]
       33 SETLIST                          R7 R8 1 [1]
       35 NAMECALL                         R3 R2 K7 ["getFields"]
       37 CALL                             R3 4 0
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K0 ["props"]
       41 GETTABLEKS                       R5 R6 K6 ["SelectedPath"]
       43 MOVE                             R6 R0
       44 NEWTABLE                         R7 0 1
       46 LOADK                            R8 K8 ["state"]
       47 SETLIST                          R7 R8 1 [1]
       49 NAMECALL                         R3 R2 K7 ["getFields"]
       51 CALL                             R3 4 0
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K0 ["props"]
       55 GETTABLEKS                       R5 R6 K6 ["SelectedPath"]
       57 MOVE                             R6 R0
       58 NEWTABLE                         R7 0 1
       60 LOADK                            R8 K9 ["_context"]
       61 SETLIST                          R7 R8 1 [1]
       63 NAMECALL                         R3 R2 K7 ["getFields"]
       65 CALL                             R3 4 0
       66 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onSelectNode"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["props"]
        5 GETTABLEKS                       R4 R5 K1 ["SelectedPath"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Flash"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETIMPORT                        R3 K4 [os.clock]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R4 R1 K5 ["time"]
       15 SUB                              R2 R3 R4
       16 LOADN                            R3 1
       17 JUMPIFNOTLT                      R2 R3 ; [+2]
       19 RETURN                           R1 1
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R1
        9 CALL                             R3 1 2
       10 JUMPIFNOT                        R3 ; [+5]
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 NAMECALL                         R5 R2 K3 ["OpenScript"]
       15 CALL                             R5 3 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Source"]
        4 NAMECALL                         R0 R0 K1 ["onSelectLink"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["indexSet"]
        5 GETTABLE                         R2 R3 R0
        6 LOADK                            R4 K1 ["Item "]
        7 MOVE                             R5 R0
        8 CONCAT                           R3 R4 R5
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K12 [{"Index", "Icon", "Name", "Flash", "LinkText", "IsSelected", "OnSelect", "OnClickLink", "Style"}]
       14 SETTABLEKS                       R0 R6 K3 ["Index"]
       16 GETTABLEKS                       R7 R1 K4 ["Icon"]
       18 SETTABLEKS                       R7 R6 K4 ["Icon"]
       20 GETTABLEKS                       R7 R1 K5 ["Name"]
       22 SETTABLEKS                       R7 R6 K5 ["Name"]
       24 JUMPIFNOT                        R2 ; [+2]
       25 GETUPVAL                         R7 0
       26 JUMPIF                           R7 ; [+1]
       27 LOADNIL                          R7
       28 SETTABLEKS                       R7 R6 K6 ["Flash"]
       30 GETTABLEKS                       R7 R1 K13 ["Link"]
       32 SETTABLEKS                       R7 R6 K7 ["LinkText"]
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R8 R9 K14 ["SelectedIndex"]
       37 JUMPIFEQ                         R0 R8 ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K8 ["IsSelected"]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R7 R8 K15 ["onSelectNode"]
       46 SETTABLEKS                       R7 R6 K9 ["OnSelect"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R7 R6 K10 ["OnClickLink"]
       53 GETUPVAL                         R7 5
       54 SETTABLEKS                       R7 R6 K11 ["Style"]
       56 CALL                             R4 2 -1
       57 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 NAMECALL                         R3 R0 K2 ["getFlash"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R1 K3 ["Nodes"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 CALL                             R4 2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K4 ["createElement"]
       21 GETUPVAL                         R6 3
       22 DUPTABLE                         R7 K8 [{"Padding", "Size", "Style"}]
       23 GETTABLEKS                       R8 R2 K5 ["Padding"]
       25 SETTABLEKS                       R8 R7 K5 ["Padding"]
       27 GETTABLEKS                       R8 R1 K6 ["Size"]
       29 SETTABLEKS                       R8 R7 K6 ["Size"]
       31 LOADK                            R8 K9 ["BorderBox"]
       32 SETTABLEKS                       R8 R7 K7 ["Style"]
       34 DUPTABLE                         R8 K11 [{"ScrollingFrame"}]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R9 R10 K4 ["createElement"]
       38 GETUPVAL                         R10 4
       39 DUPTABLE                         R11 K14 [{"Size", "Style", "AutoSizeCanvas", "AutoSizeLayoutOptions"}]
       40 GETIMPORT                        R12 K17 [UDim2.fromScale]
       42 LOADN                            R13 1
       43 LOADN                            R14 1
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K6 ["Size"]
       47 GETTABLEKS                       R12 R2 K10 ["ScrollingFrame"]
       49 SETTABLEKS                       R12 R11 K7 ["Style"]
       51 LOADB                            R12 1
       52 SETTABLEKS                       R12 R11 K12 ["AutoSizeCanvas"]
       54 DUPTABLE                         R12 K19 [{"SortOrder"}]
       55 GETIMPORT                        R13 K22 [Enum.SortOrder.LayoutOrder]
       57 SETTABLEKS                       R13 R12 K18 ["SortOrder"]
       59 SETTABLEKS                       R12 R11 K13 ["AutoSizeLayoutOptions"]
       61 MOVE                             R12 R4
       62 CALL                             R9 3 1
       63 SETTABLEKS                       R9 R8 K10 ["ScrollingFrame"]
       65 CALL                             R5 3 -1
       66 RETURN                           R5 -1

PROTO_8:
        0 DUPTABLE                         R2 K4 [{"Flash", "Nodes", "SelectedPath", "SelectedIndex"}]
        1 GETTABLEKS                       R4 R0 K5 ["RoactInspector"]
        3 GETTABLEKS                       R3 R4 K6 ["flashInstances"]
        5 SETTABLEKS                       R3 R2 K0 ["Flash"]
        7 GETTABLEKS                       R4 R0 K5 ["RoactInspector"]
        9 GETTABLEKS                       R3 R4 K7 ["nodes"]
       11 SETTABLEKS                       R3 R2 K1 ["Nodes"]
       13 GETTABLEKS                       R4 R0 K5 ["RoactInspector"]
       15 GETTABLEKS                       R3 R4 K8 ["selectedPath"]
       17 SETTABLEKS                       R3 R2 K2 ["SelectedPath"]
       19 GETTABLEKS                       R4 R0 K5 ["RoactInspector"]
       21 GETTABLEKS                       R3 R4 K9 ["selectedNodeIndex"]
       23 SETTABLEKS                       R3 R2 K3 ["SelectedIndex"]
       25 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"selectNode"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectNode"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Util"]
       40 GETTABLEKS                       R7 R8 K13 ["InspectorContext"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R9 R0 K5 ["Packages"]
       47 GETTABLEKS                       R8 R9 K14 ["DeveloperTools"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R7 K15 ["RoactInspectorApi"]
       52 GETTABLEKS                       R9 R1 K16 ["UI"]
       54 GETTABLEKS                       R10 R9 K17 ["Pane"]
       56 GETTABLEKS                       R11 R9 K18 ["ScrollingFrame"]
       58 GETIMPORT                        R12 K4 [require]
       60 GETTABLEKS                       R14 R0 K5 ["Packages"]
       62 GETTABLEKS                       R13 R14 K19 ["Dash"]
       64 CALL                             R12 1 1
       65 GETTABLEKS                       R13 R12 K20 ["collect"]
       67 GETTABLEKS                       R14 R12 K21 ["find"]
       69 GETTABLEKS                       R15 R12 K22 ["shallowEqual"]
       71 GETIMPORT                        R16 K4 [require]
       73 GETIMPORT                        R18 K1 [script]
       75 GETTABLEKS                       R17 R18 K23 ["NodeListRow"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K4 [require]
       80 GETTABLEKS                       R20 R0 K11 ["Src"]
       82 GETTABLEKS                       R19 R20 K12 ["Util"]
       84 GETTABLEKS                       R18 R19 K24 ["traceSource"]
       86 CALL                             R17 1 1
       87 GETTABLEKS                       R19 R0 K11 ["Src"]
       89 GETTABLEKS                       R18 R19 K25 ["Actions"]
       91 GETIMPORT                        R19 K4 [require]
       93 GETTABLEKS                       R21 R18 K26 ["RoactInspector"]
       95 GETTABLEKS                       R20 R21 K27 ["SelectNode"]
       97 CALL                             R19 1 1
       98 GETTABLEKS                       R20 R2 K28 ["PureComponent"]
      100 LOADK                            R22 K29 ["NodeList"]
      101 NAMECALL                         R20 R20 K30 ["extend"]
      103 CALL                             R20 2 1
      104 DUPCLOSURE                       R21 K31 [PROTO_1]
      105 CAPTURE                          VAL R8
      106 SETTABLEKS                       R21 R20 K32 ["init"]
      108 DUPCLOSURE                       R21 K33 [PROTO_3]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 SETTABLEKS                       R21 R20 K34 ["getFlash"]
      113 DUPCLOSURE                       R21 K35 [PROTO_4]
      114 CAPTURE                          VAL R17
      115 SETTABLEKS                       R21 R20 K36 ["onSelectLink"]
      117 DUPCLOSURE                       R21 K37 [PROTO_7]
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 SETTABLEKS                       R21 R20 K38 ["render"]
      125 MOVE                             R21 R5
      126 DUPTABLE                         R22 K42 [{"Stylizer", "Plugin", "Inspector"}]
      127 GETTABLEKS                       R23 R4 K39 ["Stylizer"]
      129 SETTABLEKS                       R23 R22 K39 ["Stylizer"]
      131 GETTABLEKS                       R23 R4 K40 ["Plugin"]
      133 SETTABLEKS                       R23 R22 K40 ["Plugin"]
      135 SETTABLEKS                       R6 R22 K41 ["Inspector"]
      137 CALL                             R21 1 1
      138 MOVE                             R22 R20
      139 CALL                             R21 1 1
      140 MOVE                             R20 R21
      141 GETTABLEKS                       R21 R3 K43 ["connect"]
      143 DUPCLOSURE                       R22 K44 [PROTO_8]
      144 DUPCLOSURE                       R23 K45 [PROTO_10]
      145 CAPTURE                          VAL R19
      146 CALL                             R21 2 1
      147 MOVE                             R22 R20
      148 CALL                             R21 1 -1
      149 RETURN                           R21 -1
