PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["props"]
        5 GETTABLEKS                       R4 R4 K2 ["Expansion"]
        7 GETTABLE                         R3 R4 R1
        8 NOT                              R2 R3
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["props"]
       12 GETTABLEKS                       R3 R3 K3 ["toggleField"]
       14 NEWTABLE                         R4 1 0
       16 SETTABLE                         R2 R4 R1
       17 CALL                             R3 1 0
       18 JUMPIFNOT                        R2 ; [+32]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K1 ["props"]
       22 GETTABLEKS                       R3 R3 K4 ["Inspector"]
       24 NAMECALL                         R3 R3 K5 ["get"]
       26 CALL                             R3 1 1
       27 NAMECALL                         R4 R3 K6 ["getTargetApi"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K7 ["isInstance"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 JUMPIFNOT                        R5 ; [+15]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K1 ["props"]
       39 GETTABLEKS                       R7 R7 K8 ["SelectedPath"]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K1 ["props"]
       44 GETTABLEKS                       R8 R8 K9 ["SelectedNodeIndex"]
       46 GETTABLEKS                       R9 R1 K10 ["Path"]
       48 NAMECALL                         R5 R4 K11 ["getFields"]
       50 CALL                             R5 4 0
       51 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Stylizer"]
        5 DUPTABLE                         R5 K11 [{["Row"], ["OnSelect"], ["OnToggle"], ["IsExpanded"], ["IsSelected"] = False, ["Position"], ["Style"], ["Size"]}]
        6 SETTABLEKS                       R0 R5 K2 ["Row"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K12 ["onSelectField"]
       11 SETTABLEKS                       R6 R5 K3 ["OnSelect"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K13 ["onToggleField"]
       16 SETTABLEKS                       R6 R5 K4 ["OnToggle"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K0 ["props"]
       21 GETTABLEKS                       R7 R7 K14 ["Expansion"]
       23 GETTABLEKS                       R8 R0 K15 ["item"]
       25 GETTABLE                         R6 R7 R8
       26 SETTABLEKS                       R6 R5 K5 ["IsExpanded"]
       28 SETTABLEKS                       R2 R5 K8 ["Position"]
       30 SETTABLEKS                       R4 R5 K9 ["Style"]
       32 SETTABLEKS                       R3 R5 K10 ["Size"]
       34 RETURN                           R5 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onToggleField"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K2 ["onSelectField"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K3 ["getRowProps"]
       12 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 GETTABLEKS                       R3 R0 K2 ["Name"]
       14 GETTABLEKS                       R4 R1 K2 ["Name"]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R4 R0 K2 ["Name"]
       23 FASTCALL1                        TOSTRING R4 ; [+2]
       24 GETIMPORT                        R3 K4 [tostring]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R1 K2 ["Name"]
       29 FASTCALL1                        TOSTRING R5 ; [+2]
       30 GETIMPORT                        R4 K4 [tostring]
       32 CALL                             R4 1 1
       33 JUMPIFLT                         R3 R4 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 DUPCLOSURE                       R4 K1 [PROTO_4]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Root"]
        4 GETTABLEKS                       R2 R2 K2 ["Children"]
        6 GETUPVAL                         R3 0
        7 NEWTABLE                         R4 0 6
        9 NEWTABLE                         R5 0 1
       11 DUPTABLE                         R6 K7 [{["Name"] = "Props", ["IsHeading"] = True}]
       12 SETLIST                          R5 R6 1 [1]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R7 R2 K0 ["props"]
       17 CALL                             R6 1 1
       18 NEWTABLE                         R7 0 1
       20 DUPTABLE                         R8 K9 [{["Name"] = "State", ["IsHeading"] = True}]
       21 SETLIST                          R7 R8 1 [1]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R9 R2 K10 ["state"]
       26 CALL                             R8 1 1
       27 NEWTABLE                         R9 0 1
       29 DUPTABLE                         R10 K12 [{["Name"] = "Context", ["IsHeading"] = True}]
       30 SETLIST                          R9 R10 1 [1]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R11 R2 K13 ["_context"]
       35 CALL                             R10 1 1
       36 SETLIST                          R4 R5 6 [1]
       38 CALL                             R3 1 1
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K14 ["createElement"]
       42 GETUPVAL                         R5 3
       43 DUPTABLE                         R6 K24 [{["Size"], ["Expansion"], ["RootItems"], ["RowComponent"], ["GetChildren"], ["GetRowProps"], ["ScrollingDirection"], ["Style"] = "BorderBox"}]
       44 GETIMPORT                        R7 K27 [UDim2.new]
       46 LOADN                            R8 1
       47 LOADN                            R9 0
       48 LOADN                            R10 1
       49 LOADN                            R11 0
       50 CALL                             R7 4 1
       51 SETTABLEKS                       R7 R6 K15 ["Size"]
       53 GETTABLEKS                       R7 R0 K0 ["props"]
       55 GETTABLEKS                       R7 R7 K16 ["Expansion"]
       57 SETTABLEKS                       R7 R6 K16 ["Expansion"]
       59 SETTABLEKS                       R3 R6 K17 ["RootItems"]
       61 GETUPVAL                         R7 4
       62 SETTABLEKS                       R7 R6 K18 ["RowComponent"]
       64 GETUPVAL                         R7 1
       65 SETTABLEKS                       R7 R6 K19 ["GetChildren"]
       67 GETTABLEKS                       R7 R0 K28 ["getRowProps"]
       69 SETTABLEKS                       R7 R6 K20 ["GetRowProps"]
       71 GETIMPORT                        R7 K31 [Enum.ScrollingDirection.Y]
       73 SETTABLEKS                       R7 R6 K21 ["ScrollingDirection"]
       75 CALL                             R4 2 -1
       76 RETURN                           R4 -1

PROTO_7:
        0 DUPTABLE                         R2 K5 [{"SelectedPath", "SelectedNodeIndex", "Root", "Selection", "Expansion"}]
        1 GETTABLEKS                       R3 R0 K6 ["RoactInspector"]
        3 GETTABLEKS                       R3 R3 K7 ["selectedPath"]
        5 SETTABLEKS                       R3 R2 K0 ["SelectedPath"]
        7 GETTABLEKS                       R3 R0 K6 ["RoactInspector"]
        9 GETTABLEKS                       R3 R3 K8 ["selectedNodeIndex"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedNodeIndex"]
       13 GETTABLEKS                       R3 R0 K6 ["RoactInspector"]
       15 GETTABLEKS                       R3 R3 K9 ["fields"]
       17 SETTABLEKS                       R3 R2 K2 ["Root"]
       19 GETTABLEKS                       R3 R0 K6 ["RoactInspector"]
       21 GETTABLEKS                       R3 R3 K10 ["selectedFields"]
       23 SETTABLEKS                       R3 R2 K3 ["Selection"]
       25 GETTABLEKS                       R3 R0 K6 ["RoactInspector"]
       27 GETTABLEKS                       R3 R3 K11 ["expandedFields"]
       29 SETTABLEKS                       R3 R2 K4 ["Expansion"]
       31 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"selectField", "toggleField"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectField"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["toggleField"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K11 ["InspectorContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K12 ["FieldTreeRow"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R7 R0 K5 ["Packages"]
       50 GETTABLEKS                       R7 R7 K13 ["DeveloperTools"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K14 ["RoactInspectorApi"]
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R9 R0 K5 ["Packages"]
       59 GETTABLEKS                       R9 R9 K15 ["Dash"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K16 ["flat"]
       64 GETTABLEKS                       R10 R8 K17 ["values"]
       66 GETIMPORT                        R11 K20 [table.sort]
       68 GETTABLEKS                       R12 R3 K21 ["ContextServices"]
       70 GETTABLEKS                       R13 R12 K22 ["withContext"]
       72 GETTABLEKS                       R14 R3 K23 ["UI"]
       74 GETTABLEKS                       R15 R14 K24 ["TreeView"]
       76 GETTABLEKS                       R16 R0 K9 ["Src"]
       78 GETTABLEKS                       R16 R16 K25 ["Actions"]
       80 GETIMPORT                        R17 K4 [require]
       82 GETTABLEKS                       R18 R16 K26 ["RoactInspector"]
       84 GETTABLEKS                       R18 R18 K27 ["SelectField"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K4 [require]
       89 GETTABLEKS                       R19 R16 K26 ["RoactInspector"]
       91 GETTABLEKS                       R19 R19 K28 ["ToggleField"]
       93 CALL                             R18 1 1
       94 GETTABLEKS                       R19 R1 K29 ["PureComponent"]
       96 LOADK                            R21 K30 ["FieldsTable"]
       97 NAMECALL                         R19 R19 K31 ["extend"]
       99 CALL                             R19 2 1
      100 DUPCLOSURE                       R20 K32 [PROTO_3]
      101 CAPTURE                          VAL R7
      102 SETTABLEKS                       R20 R19 K33 ["init"]
      104 DUPCLOSURE                       R20 K34 [PROTO_5]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 DUPCLOSURE                       R21 K35 [PROTO_6]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R20
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R5
      113 SETTABLEKS                       R21 R19 K36 ["render"]
      115 MOVE                             R21 R13
      116 DUPTABLE                         R22 K39 [{"Stylizer", "Inspector"}]
      117 GETTABLEKS                       R23 R12 K37 ["Stylizer"]
      119 SETTABLEKS                       R23 R22 K37 ["Stylizer"]
      121 SETTABLEKS                       R4 R22 K38 ["Inspector"]
      123 CALL                             R21 1 1
      124 MOVE                             R22 R19
      125 CALL                             R21 1 1
      126 MOVE                             R19 R21
      127 GETTABLEKS                       R21 R2 K40 ["connect"]
      129 DUPCLOSURE                       R22 K41 [PROTO_7]
      130 DUPCLOSURE                       R23 K42 [PROTO_10]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R18
      133 CALL                             R21 2 1
      134 MOVE                             R22 R19
      135 CALL                             R21 1 -1
      136 RETURN                           R21 -1
