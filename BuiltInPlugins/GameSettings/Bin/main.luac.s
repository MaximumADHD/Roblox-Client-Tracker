PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K2 ["GetDescendants"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 3
        9 FORGPREP_NEXT                    R1
       10 LOADK                            R8 K3 ["GuiObject"]
       11 NAMECALL                         R6 R5 K4 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+2]
       15 SETTABLEKS                       R0 R5 K5 ["Active"]
       17 FORGLOOP                         R1 2 ; [-8]
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["unmount"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["Destroy"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 LOADB                            R2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["Destroy"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 LOADNIL                          R0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["Size"]
        7 JUMPIF                           R1 ; [+5]
        8 GETIMPORT                        R1 K3 [Vector2.new]
       10 LOADN                            R2 217
       11 LOADN                            R3 197
       12 CALL                             R1 2 1
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K4 ["Title"]
       18 GETUPVAL                         R7 3
       19 NAMECALL                         R7 R7 K5 ["GenerateGUID"]
       21 CALL                             R7 1 1
       22 CONCAT                           R5 R6 R7
       23 DUPTABLE                         R6 K7 [{"Size", "Modal"}]
       24 SETTABLEKS                       R1 R6 K0 ["Size"]
       26 GETUPVAL                         R8 4
       27 NOT                              R7 R8
       28 SETTABLEKS                       R7 R6 K6 ["Modal"]
       30 NAMECALL                         R3 R3 K8 ["CreateQWidgetPluginGui"]
       32 CALL                             R3 3 1
       33 MOVE                             R2 R3
       34 LOADB                            R3 1
       35 SETTABLEKS                       R3 R2 K9 ["Enabled"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K4 ["Title"]
       40 SETTABLEKS                       R3 R2 K4 ["Title"]
       42 GETUPVAL                         R3 5
       43 GETTABLEKS                       R3 R3 K10 ["createElement"]
       45 GETUPVAL                         R4 6
       46 DUPTABLE                         R5 K16 [{"theme", "mouse", "localization", "pluginGui", "plugin"}]
       47 GETUPVAL                         R6 7
       48 CALL                             R6 0 1
       49 SETTABLEKS                       R6 R5 K11 ["theme"]
       51 GETUPVAL                         R6 2
       52 NAMECALL                         R6 R6 K17 ["GetMouse"]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K12 ["mouse"]
       57 GETUPVAL                         R6 8
       58 SETTABLEKS                       R6 R5 K13 ["localization"]
       60 GETUPVAL                         R6 9
       61 SETTABLEKS                       R6 R5 K14 ["pluginGui"]
       63 GETUPVAL                         R6 2
       64 SETTABLEKS                       R6 R5 K15 ["plugin"]
       66 DUPTABLE                         R6 K19 [{"Content"}]
       67 GETUPVAL                         R7 5
       68 GETTABLEKS                       R7 R7 K10 ["createElement"]
       70 GETUPVAL                         R8 10
       71 GETUPVAL                         R9 11
       72 GETTABLEKS                       R9 R9 K20 ["Dictionary"]
       74 GETTABLEKS                       R9 R9 K21 ["join"]
       76 GETUPVAL                         R10 1
       77 DUPTABLE                         R11 K23 [{"OnResult"}]
       78 NEWCLOSURE                       R12 P0
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          REF R0
       81 CAPTURE                          REF R2
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U12
       84 SETTABLEKS                       R12 R11 K22 ["OnResult"]
       86 CALL                             R9 2 -1
       87 CALL                             R7 -1 1
       88 SETTABLEKS                       R7 R6 K18 ["Content"]
       90 CALL                             R3 3 1
       91 NEWCLOSURE                       R6 P1
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          REF R0
       94 CAPTURE                          REF R2
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U12
       97 NAMECALL                         R4 R2 K24 ["BindToClose"]
       99 CALL                             R4 2 0
      100 GETUPVAL                         R4 5
      101 GETTABLEKS                       R4 R4 K25 ["mount"]
      103 MOVE                             R5 R3
      104 MOVE                             R6 R2
      105 CALL                             R4 2 1
      106 MOVE                             R0 R4
      107 CLOSEUPVALS                      R0
      108 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U10
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETIMPORT                        R2 K1 [tick]
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 0
        6 SUB                              R1 R2 R3
        7 LOADNIL                          R2
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["onCloseEvent"]
       12 JUMPIFNOT                        R0 ; [+2]
       13 LOADK                            R3 K3 ["Save"]
       14 JUMP                             ; [+1]
       15 LOADK                            R3 K4 ["Cancel"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["Closed"]
       11 CALL                             R2 1 -1
       12 NAMECALL                         R0 R0 K0 ["dispatch"]
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 4
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       19 GETUPVAL                         R0 5
       20 GETTABLEKS                       R0 R0 K3 ["unmount"]
       22 GETUPVAL                         R1 6
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 7
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 8
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 8
       29 NAMECALL                         R0 R0 K4 ["destroy"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 9
       33 GETUPVAL                         R1 10
       34 JUMPIFNOT                        R1 ; [+16]
       35 GETIMPORT                        R2 K6 [tick]
       37 CALL                             R2 0 1
       38 GETUPVAL                         R3 10
       39 SUB                              R1 R2 R3
       40 LOADNIL                          R2
       41 SETUPVAL                         R2 10
       42 GETUPVAL                         R2 11
       43 GETTABLEKS                       R2 R2 K7 ["onCloseEvent"]
       45 JUMPIFNOT                        R0 ; [+2]
       46 LOADK                            R3 K8 ["Save"]
       47 JUMP                             ; [+1]
       48 LOADK                            R3 K9 ["Cancel"]
       49 MOVE                             R4 R1
       50 CALL                             R2 2 0
       51 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["Open"]
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K1 ["dispatch"]
       12 CALL                             R1 -1 0
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K2 ["Enabled"]
       16 JUMPIF                           R1 ; [+4]
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getState"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K1 ["Status"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Working"]
       22 JUMPIFNOTEQ                      R2 R4 ; [+5]
       24 JUMPIF                           R0 ; [+3]
       25 MOVE                             R4 R3
       26 CALL                             R4 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K3 ["Closed"]
       31 JUMPIFEQ                         R2 R4 ; [+147]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K4 ["Error"]
       36 JUMPIFNOTEQ                      R2 R4 ; [+12]
       38 JUMPIFNOT                        R0 ; [+10]
       39 GETUPVAL                         R4 0
       40 GETUPVAL                         R6 2
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K5 ["Open"]
       44 CALL                             R6 1 -1
       45 NAMECALL                         R4 R4 K6 ["dispatch"]
       47 CALL                             R4 -1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R4 R1 K7 ["Settings"]
       51 GETTABLEKS                       R4 R4 K8 ["Changed"]
       53 MOVE                             R5 R4
       54 JUMPIFNOT                        R5 ; [+4]
       55 GETUPVAL                         R6 11
       56 MOVE                             R7 R4
       57 CALL                             R6 1 1
       58 NOT                              R5 R6
       59 JUMPIFNOT                        R5 ; [+75]
       60 JUMPIF                           R0 ; [+74]
       61 LOADNIL                          R6
       62 DUPTABLE                         R7 K13 [{"Size", "Title", "Header", "Buttons"}]
       63 GETIMPORT                        R8 K16 [Vector2.new]
       65 LOADN                            R9 87
       66 LOADN                            R10 145
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K9 ["Size"]
       70 GETUPVAL                         R8 12
       71 LOADK                            R10 K17 ["General"]
       72 LOADK                            R11 K18 ["CancelDialogHeader"]
       73 NAMECALL                         R8 R8 K19 ["getText"]
       75 CALL                             R8 3 1
       76 SETTABLEKS                       R8 R7 K10 ["Title"]
       78 GETUPVAL                         R8 12
       79 LOADK                            R10 K17 ["General"]
       80 LOADK                            R11 K20 ["CancelDialogBody"]
       81 NAMECALL                         R8 R8 K19 ["getText"]
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K11 ["Header"]
       86 NEWTABLE                         R8 0 2
       88 GETUPVAL                         R9 12
       89 LOADK                            R11 K17 ["General"]
       90 LOADK                            R12 K21 ["ReplyNo"]
       91 NAMECALL                         R9 R9 K19 ["getText"]
       93 CALL                             R9 3 1
       94 GETUPVAL                         R10 12
       95 LOADK                            R12 K17 ["General"]
       96 LOADK                            R13 K22 ["ReplyYes"]
       97 NAMECALL                         R10 R10 K19 ["getText"]
       99 CALL                             R10 3 -1
      100 SETLIST                          R8 R9 -1 [1]
      102 SETTABLEKS                       R8 R7 K12 ["Buttons"]
      104 MOVE                             R6 R7
      105 GETUPVAL                         R8 13
      106 MOVE                             R9 R6
      107 GETUPVAL                         R10 14
      108 GETTABLEKS                       R10 R10 K15 ["new"]
      110 NEWCLOSURE                       R11 P1
      111 CAPTURE                          UPVAL U15
      112 CAPTURE                          VAL R9
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          UPVAL U17
      115 CAPTURE                          UPVAL U18
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          UPVAL U19
      118 CAPTURE                          UPVAL U20
      119 CAPTURE                          UPVAL U12
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R8
      122 CAPTURE                          UPVAL U21
      123 CALL                             R10 1 1
      124 MOVE                             R7 R10
      125 NEWCLOSURE                       R9 P2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U4
      131 NAMECALL                         R7 R7 K23 ["andThen"]
      133 CALL                             R7 2 0
      134 RETURN                           R0 0
      135 GETUPVAL                         R6 0
      136 GETUPVAL                         R8 2
      137 GETUPVAL                         R9 3
      138 GETTABLEKS                       R9 R9 K3 ["Closed"]
      140 CALL                             R8 1 -1
      141 NAMECALL                         R6 R6 K6 ["dispatch"]
      143 CALL                             R6 -1 0
      144 GETUPVAL                         R6 4
      145 LOADB                            R7 0
      146 SETTABLEKS                       R7 R6 K24 ["Enabled"]
      148 GETUPVAL                         R6 5
      149 GETTABLEKS                       R6 R6 K25 ["unmount"]
      151 GETUPVAL                         R7 6
      152 CALL                             R6 1 0
      153 GETUPVAL                         R6 7
      154 JUMPIFNOT                        R6 ; [+6]
      155 GETUPVAL                         R6 8
      156 JUMPIFNOT                        R6 ; [+4]
      157 GETUPVAL                         R6 8
      158 NAMECALL                         R6 R6 K26 ["destroy"]
      160 CALL                             R6 1 0
      161 GETUPVAL                         R6 9
      162 JUMPIFNOT                        R6 ; [+16]
      163 GETIMPORT                        R7 K28 [tick]
      165 CALL                             R7 0 1
      166 GETUPVAL                         R8 9
      167 SUB                              R6 R7 R8
      168 LOADNIL                          R7
      169 SETUPVAL                         R7 9
      170 GETUPVAL                         R7 10
      171 GETTABLEKS                       R7 R7 K29 ["onCloseEvent"]
      173 JUMPIFNOT                        R0 ; [+2]
      174 LOADK                            R8 K30 ["Save"]
      175 JUMP                             ; [+1]
      176 LOADK                            R8 K31 ["Cancel"]
      177 MOVE                             R9 R6
      178 CALL                             R7 2 0
      179 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADN                            R2 192
        6 LOADN                            R3 88
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K9 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
       11 SETTABLEKS                       R1 R5 K4 ["Size"]
       13 SETTABLEKS                       R1 R5 K5 ["MinSize"]
       15 LOADB                            R6 1
       16 SETTABLEKS                       R6 R5 K6 ["Resizable"]
       18 GETUPVAL                         R7 3
       19 NOT                              R6 R7
       20 SETTABLEKS                       R6 R5 K7 ["Modal"]
       22 LOADB                            R6 0
       23 SETTABLEKS                       R6 R5 K8 ["InitialEnabled"]
       25 NAMECALL                         R2 R2 K10 ["CreateQWidgetPluginGui"]
       27 CALL                             R2 3 1
       28 SETUPVAL                         R2 1
       29 GETUPVAL                         R2 1
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K0 ["Name"]
       33 SETTABLEKS                       R3 R2 K0 ["Name"]
       35 GETUPVAL                         R2 1
       36 GETUPVAL                         R4 4
       37 JUMPIFNOT                        R4 ; [+7]
       38 GETUPVAL                         R3 5
       39 LOADK                            R5 K11 ["General"]
       40 LOADK                            R6 K12 ["PluginNameExp"]
       41 NAMECALL                         R3 R3 K13 ["getText"]
       43 CALL                             R3 3 1
       44 JUMP                             ; [+6]
       45 GETUPVAL                         R3 5
       46 LOADK                            R5 K11 ["General"]
       47 LOADK                            R6 K14 ["PluginName"]
       48 NAMECALL                         R3 R3 K13 ["getText"]
       50 CALL                             R3 3 1
       51 SETTABLEKS                       R3 R2 K15 ["Title"]
       53 GETUPVAL                         R2 1
       54 GETIMPORT                        R3 K19 [Enum.ZIndexBehavior.Sibling]
       56 SETTABLEKS                       R3 R2 K17 ["ZIndexBehavior"]
       58 GETUPVAL                         R2 1
       59 NEWCLOSURE                       R4 P0
       60 CAPTURE                          UPVAL U6
       61 NAMECALL                         R2 R2 K20 ["BindToClose"]
       63 CALL                             R2 2 0
       64 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+9]
        2 GETIMPORT                        R3 K1 [game]
        4 LOADK                            R5 K2 ["TeamCreateService"]
        5 NAMECALL                         R3 R3 K3 ["GetService"]
        7 CALL                             R3 2 1
        8 NAMECALL                         R3 R3 K4 ["CloseGameIfUserDoesntHavePerms"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R3 ; [+12]
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K5 ["getState"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K6 ["Status"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K7 ["Closed"]
       22 JUMPIFEQ                         R4 R5 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K8 ["createElement"]
       28 GETUPVAL                         R4 4
       29 DUPTABLE                         R5 K17 [{"store", "showDialog", "theme", "mouse", "localization", "pluginGui", "plugin", "worldRootPhysics"}]
       30 GETUPVAL                         R6 1
       31 SETTABLEKS                       R6 R5 K9 ["store"]
       33 GETUPVAL                         R6 5
       34 SETTABLEKS                       R6 R5 K10 ["showDialog"]
       36 GETUPVAL                         R6 6
       37 CALL                             R6 0 1
       38 SETTABLEKS                       R6 R5 K11 ["theme"]
       40 GETUPVAL                         R6 7
       41 NAMECALL                         R6 R6 K18 ["GetMouse"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K12 ["mouse"]
       46 GETUPVAL                         R6 8
       47 SETTABLEKS                       R6 R5 K13 ["localization"]
       49 GETUPVAL                         R6 9
       50 SETTABLEKS                       R6 R5 K14 ["pluginGui"]
       52 GETUPVAL                         R6 7
       53 SETTABLEKS                       R6 R5 K15 ["plugin"]
       55 GETUPVAL                         R6 10
       56 SETTABLEKS                       R6 R5 K16 ["worldRootPhysics"]
       58 DUPTABLE                         R6 K20 [{"mainView"}]
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R7 R7 K8 ["createElement"]
       62 GETUPVAL                         R8 11
       63 DUPTABLE                         R9 K23 [{"OnClose", "FirstSelectedId"}]
       64 GETUPVAL                         R10 12
       65 SETTABLEKS                       R10 R9 K21 ["OnClose"]
       67 SETTABLEKS                       R2 R9 K22 ["FirstSelectedId"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K19 ["mainView"]
       72 CALL                             R3 3 1
       73 GETUPVAL                         R4 1
       74 GETUPVAL                         R6 13
       75 CALL                             R6 0 -1
       76 NAMECALL                         R4 R4 K24 ["dispatch"]
       78 CALL                             R4 -1 0
       79 GETUPVAL                         R4 1
       80 GETUPVAL                         R6 14
       81 MOVE                             R7 R0
       82 CALL                             R6 1 -1
       83 NAMECALL                         R4 R4 K24 ["dispatch"]
       85 CALL                             R4 -1 0
       86 GETUPVAL                         R4 1
       87 GETUPVAL                         R6 15
       88 MOVE                             R7 R1
       89 CALL                             R6 1 -1
       90 NAMECALL                         R4 R4 K24 ["dispatch"]
       92 CALL                             R4 -1 0
       93 GETUPVAL                         R4 1
       94 GETUPVAL                         R6 16
       95 GETUPVAL                         R7 2
       96 GETTABLEKS                       R7 R7 K25 ["Open"]
       98 CALL                             R6 1 -1
       99 NAMECALL                         R4 R4 K24 ["dispatch"]
      101 CALL                             R4 -1 0
      102 GETUPVAL                         R4 3
      103 GETTABLEKS                       R4 R4 K26 ["mount"]
      105 MOVE                             R5 R3
      106 GETUPVAL                         R6 9
      107 CALL                             R4 2 1
      108 SETUPVAL                         R4 17
      109 GETUPVAL                         R4 9
      110 LOADB                            R5 1
      111 SETTABLEKS                       R5 R4 K27 ["Enabled"]
      113 GETUPVAL                         R4 18
      114 JUMPIFNOT                        R4 ; [+28]
      115 GETIMPORT                        R4 K1 [game]
      117 LOADK                            R6 K28 ["StudioService"]
      118 NAMECALL                         R4 R4 K3 ["GetService"]
      120 CALL                             R4 2 1
      121 NAMECALL                         R4 R4 K29 ["HasInternalPermission"]
      123 CALL                             R4 1 1
      124 JUMPIFNOT                        R4 ; [+18]
      125 GETUPVAL                         R4 20
      126 GETTABLEKS                       R4 R4 K30 ["Packages"]
      128 GETTABLEKS                       R4 R4 K31 ["DeveloperTools"]
      130 GETTABLEKS                       R4 R4 K32 ["forPlugin"]
      132 LOADK                            R5 K33 ["Game Settings"]
      133 GETUPVAL                         R6 7
      134 CALL                             R4 2 1
      135 SETUPVAL                         R4 19
      136 GETUPVAL                         R4 19
      137 LOADK                            R6 K34 ["Roact tree"]
      138 GETUPVAL                         R7 17
      139 GETUPVAL                         R8 3
      140 NAMECALL                         R4 R4 K35 ["addRoactTree"]
      142 CALL                             R4 4 0
      143 GETUPVAL                         R4 21
      144 GETTABLEKS                       R4 R4 K36 ["onOpenEvent"]
      146 GETUPVAL                         R5 7
      147 NAMECALL                         R5 R5 K37 ["GetStudioUserId"]
      149 CALL                             R5 1 1
      150 MOVE                             R6 R0
      151 CALL                             R4 2 0
      152 GETIMPORT                        R4 K39 [tick]
      154 CALL                             R4 0 1
      155 SETUPVAL                         R4 22
      156 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [game]
        3 GETTABLEKS                       R1 R1 K2 ["GameId"]
        5 GETIMPORT                        R2 K1 [game]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+28]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R4 R0 K0 ["Status"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["Closed"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 NAMECALL                         R1 R1 K2 ["SetActive"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R3 R0 K0 ["Status"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K3 ["Working"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K0 ["Status"]
       31 SETUPVAL                         R1 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [game]
        3 GETTABLEKS                       R2 R2 K2 ["GameId"]
        5 GETIMPORT                        R3 K1 [game]
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["mainButton"]
        9 GETUPVAL                         R1 3
       10 NAMECALL                         R1 R1 K2 ["IsEdit"]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+38]
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 0
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K3 ["ClickableWhenViewportHidden"]
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K5 ["mainButtonClickedSignal"]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U5
       27 NAMECALL                         R1 R1 K6 ["Connect"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 6
       31 GETTABLEKS                       R1 R1 K7 ["changed"]
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 NAMECALL                         R1 R1 K8 ["connect"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K10 ["signals"]
       44 GETTABLEKS                       R1 R2 K9 ["StudioService.OnOpenGameSettings"]
       46 NEWCLOSURE                       R3 P2
       47 CAPTURE                          UPVAL U5
       48 NAMECALL                         R1 R1 K6 ["Connect"]
       50 CALL                             R1 2 0
       51 RETURN                           R0 0
       52 LOADB                            R1 0
       53 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       55 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [script]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R2 R2 K2 ["Parent"]
        8 GETIMPORT                        R3 K4 [game]
       10 LOADK                            R5 K5 ["DebugBuiltInPluginModalsNotBlocking"]
       11 NAMECALL                         R3 R3 K6 ["GetFastFlag"]
       13 CALL                             R3 2 1
       14 GETIMPORT                        R4 K4 [game]
       16 LOADK                            R6 K7 ["DeveloperSubscriptionsEnabled"]
       17 NAMECALL                         R4 R4 K6 ["GetFastFlag"]
       19 CALL                             R4 2 1
       20 GETIMPORT                        R5 K4 [game]
       22 LOADK                            R7 K8 ["GameSettingsRoactInspector"]
       23 LOADB                            R8 0
       24 NAMECALL                         R5 R5 K9 ["DefineFastFlag"]
       26 CALL                             R5 3 1
       27 GETIMPORT                        R6 K4 [game]
       29 LOADK                            R8 K10 ["TranslateGameModeratedErrors"]
       30 LOADB                            R9 0
       31 NAMECALL                         R6 R6 K9 ["DefineFastFlag"]
       33 CALL                             R6 3 1
       34 GETIMPORT                        R7 K4 [game]
       36 LOADK                            R9 K11 ["GameSettingsEvictIfLostPerms"]
       37 NAMECALL                         R7 R7 K6 ["GetFastFlag"]
       39 CALL                             R7 2 1
       40 GETIMPORT                        R8 K4 [game]
       42 LOADK                            R10 K12 ["RemoveGameSettingsMonetizationPage"]
       43 NAMECALL                         R8 R8 K6 ["GetFastFlag"]
       45 CALL                             R8 2 1
       46 GETIMPORT                        R9 K4 [game]
       48 LOADK                            R11 K13 ["RemoveGameSettingsAvatarPage"]
       49 NAMECALL                         R9 R9 K6 ["GetFastFlag"]
       51 CALL                             R9 2 1
       52 GETIMPORT                        R10 K15 [require]
       54 GETTABLEKS                       R11 R2 K16 ["Src"]
       56 GETTABLEKS                       R11 R11 K17 ["Flags"]
       58 GETTABLEKS                       R11 R11 K18 ["getFFlagGameSettingsGameToExperience"]
       60 CALL                             R10 1 1
       61 CALL                             R10 0 1
       62 GETIMPORT                        R11 K4 [game]
       64 LOADK                            R13 K19 ["RunService"]
       65 NAMECALL                         R11 R11 K20 ["GetService"]
       67 CALL                             R11 2 1
       68 GETIMPORT                        R12 K4 [game]
       70 LOADK                            R14 K21 ["HttpService"]
       71 NAMECALL                         R12 R12 K20 ["GetService"]
       73 CALL                             R12 2 1
       74 GETIMPORT                        R13 K15 [require]
       76 GETTABLEKS                       R14 R2 K22 ["Packages"]
       78 GETTABLEKS                       R14 R14 K23 ["Roact"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K15 [require]
       83 GETTABLEKS                       R15 R2 K22 ["Packages"]
       85 GETTABLEKS                       R15 R15 K24 ["Rodux"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K15 [require]
       90 GETTABLEKS                       R16 R2 K22 ["Packages"]
       92 GETTABLEKS                       R16 R16 K25 ["Cryo"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K15 [require]
       97 GETTABLEKS                       R17 R2 K22 ["Packages"]
       99 GETTABLEKS                       R17 R17 K26 ["Framework"]
      101 CALL                             R16 1 1
      102 GETTABLEKS                       R17 R16 K27 ["ContextServices"]
      104 GETTABLEKS                       R18 R16 K28 ["Util"]
      106 GETTABLEKS                       R19 R18 K29 ["Promise"]
      108 GETIMPORT                        R20 K15 [require]
      110 GETTABLEKS                       R21 R2 K16 ["Src"]
      112 GETTABLEKS                       R21 R21 K30 ["Components"]
      114 GETTABLEKS                       R21 R21 K31 ["MainView"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K15 [require]
      119 GETTABLEKS                       R22 R2 K16 ["Src"]
      121 GETTABLEKS                       R22 R22 K30 ["Components"]
      123 GETTABLEKS                       R22 R22 K32 ["Dialog"]
      125 GETTABLEKS                       R22 R22 K33 ["SimpleDialog"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K15 [require]
      130 GETTABLEKS                       R23 R2 K16 ["Src"]
      132 GETTABLEKS                       R23 R23 K34 ["Reducers"]
      134 GETTABLEKS                       R23 R23 K35 ["MainReducer"]
      136 CALL                             R22 1 1
      137 GETIMPORT                        R23 K15 [require]
      139 GETTABLEKS                       R24 R2 K16 ["Src"]
      141 GETTABLEKS                       R24 R24 K30 ["Components"]
      143 GETTABLEKS                       R24 R24 K36 ["ExternalServicesWrapper"]
      145 CALL                             R23 1 1
      146 GETIMPORT                        R24 K15 [require]
      148 GETTABLEKS                       R25 R2 K16 ["Src"]
      150 GETTABLEKS                       R25 R25 K28 ["Util"]
      152 GETTABLEKS                       R25 R25 K37 ["MakeTheme"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K15 [require]
      157 GETTABLEKS                       R26 R2 K16 ["Src"]
      159 GETTABLEKS                       R26 R26 K27 ["ContextServices"]
      161 GETTABLEKS                       R26 R26 K38 ["Networking"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K15 [require]
      166 GETTABLEKS                       R27 R2 K39 ["Pages"]
      168 GETTABLEKS                       R27 R27 K40 ["WorldPage"]
      170 GETTABLEKS                       R27 R27 K27 ["ContextServices"]
      172 GETTABLEKS                       R27 R27 K41 ["WorldRootPhysics"]
      174 CALL                             R26 1 1
      175 GETIMPORT                        R27 K15 [require]
      177 GETTABLEKS                       R28 R2 K16 ["Src"]
      179 GETTABLEKS                       R28 R28 K42 ["Controllers"]
      181 GETTABLEKS                       R28 R28 K43 ["GameInfoController"]
      183 CALL                             R27 1 1
      184 GETIMPORT                        R28 K15 [require]
      186 GETTABLEKS                       R29 R2 K16 ["Src"]
      188 GETTABLEKS                       R29 R29 K42 ["Controllers"]
      190 GETTABLEKS                       R29 R29 K44 ["GameMetadataController"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K15 [require]
      195 GETTABLEKS                       R30 R2 K16 ["Src"]
      197 GETTABLEKS                       R30 R30 K42 ["Controllers"]
      199 GETTABLEKS                       R30 R30 K45 ["GroupMetadataController"]
      201 CALL                             R29 1 1
      202 GETIMPORT                        R30 K15 [require]
      204 GETTABLEKS                       R31 R2 K39 ["Pages"]
      206 GETTABLEKS                       R31 R31 K46 ["PermissionsPage"]
      208 GETTABLEKS                       R31 R31 K42 ["Controllers"]
      210 GETTABLEKS                       R31 R31 K47 ["GamePermissionsController"]
      212 CALL                             R30 1 1
      213 GETIMPORT                        R31 K15 [require]
      215 GETTABLEKS                       R32 R2 K39 ["Pages"]
      217 GETTABLEKS                       R32 R32 K48 ["OptionsPage"]
      219 GETTABLEKS                       R32 R32 K42 ["Controllers"]
      221 GETTABLEKS                       R32 R32 K49 ["GameOptionsController"]
      223 CALL                             R31 1 1
      224 GETIMPORT                        R32 K15 [require]
      226 GETTABLEKS                       R33 R2 K39 ["Pages"]
      228 GETTABLEKS                       R33 R33 K50 ["CommunicationPage"]
      230 GETTABLEKS                       R33 R33 K42 ["Controllers"]
      232 GETTABLEKS                       R33 R33 K51 ["CommunicationController"]
      234 CALL                             R32 1 1
      235 GETIMPORT                        R33 K15 [require]
      237 GETTABLEKS                       R34 R2 K39 ["Pages"]
      239 GETTABLEKS                       R34 R34 K52 ["MonetizationPage"]
      241 GETTABLEKS                       R34 R34 K42 ["Controllers"]
      243 GETTABLEKS                       R34 R34 K53 ["MonetizationController"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K15 [require]
      248 GETTABLEKS                       R35 R2 K39 ["Pages"]
      250 GETTABLEKS                       R35 R35 K52 ["MonetizationPage"]
      252 GETTABLEKS                       R35 R35 K42 ["Controllers"]
      254 GETTABLEKS                       R35 R35 K54 ["DevSubsController"]
      256 CALL                             R34 1 1
      257 GETIMPORT                        R35 K15 [require]
      259 GETTABLEKS                       R36 R2 K39 ["Pages"]
      261 GETTABLEKS                       R36 R36 K55 ["PlacesPage"]
      263 GETTABLEKS                       R36 R36 K42 ["Controllers"]
      265 GETTABLEKS                       R36 R36 K56 ["PlacesController"]
      267 CALL                             R35 1 1
      268 GETIMPORT                        R36 K15 [require]
      270 GETTABLEKS                       R37 R2 K16 ["Src"]
      272 GETTABLEKS                       R37 R37 K42 ["Controllers"]
      274 GETTABLEKS                       R37 R37 K57 ["PolicyInfoController"]
      276 CALL                             R36 1 1
      277 GETIMPORT                        R37 K15 [require]
      279 GETTABLEKS                       R38 R2 K39 ["Pages"]
      281 GETTABLEKS                       R38 R38 K58 ["SecurityPage"]
      283 GETTABLEKS                       R38 R38 K42 ["Controllers"]
      285 GETTABLEKS                       R38 R38 K59 ["SecurityController"]
      287 CALL                             R37 1 1
      288 GETIMPORT                        R38 K15 [require]
      290 GETTABLEKS                       R39 R2 K39 ["Pages"]
      292 GETTABLEKS                       R39 R39 K60 ["AvatarPage"]
      294 GETTABLEKS                       R39 R39 K42 ["Controllers"]
      296 GETTABLEKS                       R39 R39 K61 ["UniverseAvatarController"]
      298 CALL                             R38 1 1
      299 GETIMPORT                        R39 K15 [require]
      301 GETTABLEKS                       R40 R2 K39 ["Pages"]
      303 GETTABLEKS                       R40 R40 K62 ["LocalizationPage"]
      305 GETTABLEKS                       R40 R40 K42 ["Controllers"]
      307 GETTABLEKS                       R40 R40 K63 ["LocalizationPageController"]
      309 CALL                             R39 1 1
      310 GETIMPORT                        R40 K15 [require]
      312 GETTABLEKS                       R41 R2 K16 ["Src"]
      314 GETTABLEKS                       R41 R41 K28 ["Util"]
      316 GETTABLEKS                       R41 R41 K64 ["CurrentStatus"]
      318 CALL                             R40 1 1
      319 GETIMPORT                        R41 K15 [require]
      321 GETTABLEKS                       R42 R2 K16 ["Src"]
      323 GETTABLEKS                       R42 R42 K65 ["Actions"]
      325 GETTABLEKS                       R42 R42 K66 ["ResetStore"]
      327 CALL                             R41 1 1
      328 GETIMPORT                        R42 K15 [require]
      330 GETTABLEKS                       R43 R2 K16 ["Src"]
      332 GETTABLEKS                       R43 R43 K65 ["Actions"]
      334 GETTABLEKS                       R43 R43 K67 ["SetCurrentStatus"]
      336 CALL                             R42 1 1
      337 GETIMPORT                        R43 K15 [require]
      339 GETTABLEKS                       R44 R2 K16 ["Src"]
      341 GETTABLEKS                       R44 R44 K65 ["Actions"]
      343 GETTABLEKS                       R44 R44 K68 ["DiscardChanges"]
      345 CALL                             R43 1 1
      346 GETIMPORT                        R44 K15 [require]
      348 GETTABLEKS                       R45 R2 K16 ["Src"]
      350 GETTABLEKS                       R45 R45 K65 ["Actions"]
      352 GETTABLEKS                       R45 R45 K69 ["SetGameId"]
      354 CALL                             R44 1 1
      355 GETIMPORT                        R45 K15 [require]
      357 GETTABLEKS                       R46 R2 K16 ["Src"]
      359 GETTABLEKS                       R46 R46 K65 ["Actions"]
      361 GETTABLEKS                       R46 R46 K70 ["SetGame"]
      363 CALL                             R45 1 1
      364 GETIMPORT                        R46 K15 [require]
      366 GETTABLEKS                       R47 R2 K16 ["Src"]
      368 GETTABLEKS                       R47 R47 K28 ["Util"]
      370 GETTABLEKS                       R47 R47 K71 ["isEmpty"]
      372 CALL                             R46 1 1
      373 GETIMPORT                        R47 K15 [require]
      375 GETTABLEKS                       R48 R2 K16 ["Src"]
      377 GETTABLEKS                       R48 R48 K28 ["Util"]
      379 GETTABLEKS                       R48 R48 K72 ["Analytics"]
      381 CALL                             R47 1 1
      382 LOADNIL                          R48
      383 LOADNIL                          R49
      384 LOADNIL                          R50
      385 LOADNIL                          R51
      386 GETTABLEKS                       R52 R26 K73 ["new"]
      388 CALL                             R52 0 1
      389 NEWTABLE                         R53 16 0
      391 GETTABLEKS                       R54 R25 K73 ["new"]
      393 CALL                             R54 0 1
      394 GETTABLEKS                       R55 R27 K73 ["new"]
      396 NAMECALL                         R56 R54 K74 ["get"]
      398 CALL                             R56 1 -1
      399 CALL                             R55 -1 1
      400 GETTABLEKS                       R56 R28 K73 ["new"]
      402 NAMECALL                         R57 R54 K74 ["get"]
      404 CALL                             R57 1 -1
      405 CALL                             R56 -1 1
      406 GETTABLEKS                       R57 R29 K73 ["new"]
      408 NAMECALL                         R58 R54 K74 ["get"]
      410 CALL                             R58 1 -1
      411 CALL                             R57 -1 1
      412 JUMPIFNOT                        R8 ; [+2]
      413 LOADNIL                          R58
      414 JUMP                             ; [+6]
      415 GETTABLEKS                       R58 R30 K73 ["new"]
      417 NAMECALL                         R59 R54 K74 ["get"]
      419 CALL                             R59 1 -1
      420 CALL                             R58 -1 1
      421 JUMPIFNOT                        R8 ; [+2]
      422 LOADNIL                          R59
      423 JUMP                             ; [+6]
      424 GETTABLEKS                       R59 R33 K73 ["new"]
      426 NAMECALL                         R60 R54 K74 ["get"]
      428 CALL                             R60 1 -1
      429 CALL                             R59 -1 1
      430 JUMPIFNOT                        R8 ; [+2]
      431 LOADNIL                          R60
      432 JUMP                             ; [+9]
      433 JUMPIFNOT                        R4 ; [+7]
      434 GETTABLEKS                       R60 R34 K73 ["new"]
      436 NAMECALL                         R61 R54 K74 ["get"]
      438 CALL                             R61 1 -1
      439 CALL                             R60 -1 1
      440 JUMPIF                           R60 ; [+1]
      441 LOADNIL                          R60
      442 GETTABLEKS                       R61 R31 K73 ["new"]
      444 NAMECALL                         R62 R54 K74 ["get"]
      446 CALL                             R62 1 -1
      447 CALL                             R61 -1 1
      448 GETTABLEKS                       R62 R32 K73 ["new"]
      450 NAMECALL                         R63 R54 K74 ["get"]
      452 CALL                             R63 1 -1
      453 CALL                             R62 -1 1
      454 GETTABLEKS                       R63 R37 K73 ["new"]
      456 NAMECALL                         R64 R54 K74 ["get"]
      458 CALL                             R64 1 -1
      459 CALL                             R63 -1 1
      460 JUMPIFNOT                        R9 ; [+2]
      461 LOADNIL                          R64
      462 JUMP                             ; [+6]
      463 GETTABLEKS                       R64 R38 K73 ["new"]
      465 NAMECALL                         R65 R54 K74 ["get"]
      467 CALL                             R65 1 -1
      468 CALL                             R64 -1 1
      469 GETTABLEKS                       R65 R35 K73 ["new"]
      471 NAMECALL                         R66 R54 K74 ["get"]
      473 CALL                             R66 1 -1
      474 CALL                             R65 -1 1
      475 GETTABLEKS                       R66 R39 K73 ["new"]
      477 NAMECALL                         R67 R54 K74 ["get"]
      479 CALL                             R67 1 -1
      480 CALL                             R66 -1 1
      481 GETTABLEKS                       R67 R36 K73 ["new"]
      483 NAMECALL                         R68 R54 K74 ["get"]
      485 CALL                             R68 1 -1
      486 CALL                             R67 -1 1
      487 NAMECALL                         R68 R54 K74 ["get"]
      489 CALL                             R68 1 1
      490 SETTABLEKS                       R68 R53 K75 ["networking"]
      492 NAMECALL                         R68 R52 K74 ["get"]
      494 CALL                             R68 1 1
      495 SETTABLEKS                       R68 R53 K76 ["worldRootPhysicsController"]
      497 SETTABLEKS                       R55 R53 K77 ["gameInfoController"]
      499 SETTABLEKS                       R56 R53 K78 ["gameMetadataController"]
      501 SETTABLEKS                       R57 R53 K79 ["groupMetadataController"]
      503 SETTABLEKS                       R58 R53 K80 ["gamePermissionsController"]
      505 SETTABLEKS                       R61 R53 K81 ["gameOptionsController"]
      507 SETTABLEKS                       R62 R53 K82 ["communicationController"]
      509 SETTABLEKS                       R59 R53 K83 ["monetizationController"]
      511 SETTABLEKS                       R60 R53 K84 ["devSubsController"]
      513 SETTABLEKS                       R63 R53 K85 ["universePermissionsController"]
      515 SETTABLEKS                       R64 R53 K86 ["universeAvatarController"]
      517 SETTABLEKS                       R65 R53 K87 ["placesController"]
      519 SETTABLEKS                       R66 R53 K88 ["localizationPageController"]
      521 SETTABLEKS                       R67 R53 K89 ["policyInfoController"]
      523 GETTABLEKS                       R68 R18 K90 ["ThunkWithArgsMiddleware"]
      525 MOVE                             R69 R53
      526 CALL                             R68 1 1
      527 NEWTABLE                         R69 0 1
      529 MOVE                             R70 R68
      530 SETLIST                          R69 R70 1 [1]
      532 GETTABLEKS                       R70 R14 K91 ["Store"]
      534 GETTABLEKS                       R70 R70 K73 ["new"]
      536 MOVE                             R71 R22
      537 LOADNIL                          R72
      538 MOVE                             R73 R69
      539 CALL                             R70 3 1
      540 GETTABLEKS                       R71 R40 K92 ["Open"]
      542 GETTABLEKS                       R72 R2 K16 ["Src"]
      544 GETTABLEKS                       R72 R72 K93 ["Resources"]
      546 GETTABLEKS                       R72 R72 K94 ["SourceStrings"]
      548 GETTABLEKS                       R73 R2 K16 ["Src"]
      550 GETTABLEKS                       R73 R73 K93 ["Resources"]
      552 GETTABLEKS                       R73 R73 K95 ["LocalizedStrings"]
      554 GETTABLEKS                       R74 R17 K96 ["Localization"]
      556 GETTABLEKS                       R74 R74 K73 ["new"]
      558 DUPTABLE                         R75 K101 [{"pluginName", "stringResourceTable", "translationResourceTable", "libraries"}]
      559 LOADK                            R76 K102 ["GameSettings"]
      560 SETTABLEKS                       R76 R75 K97 ["pluginName"]
      562 SETTABLEKS                       R72 R75 K98 ["stringResourceTable"]
      564 SETTABLEKS                       R73 R75 K99 ["translationResourceTable"]
      566 NEWTABLE                         R76 1 0
      568 GETTABLEKS                       R77 R16 K93 ["Resources"]
      570 GETTABLEKS                       R77 R77 K103 ["LOCALIZATION_PROJECT_NAME"]
      572 DUPTABLE                         R78 K104 [{"stringResourceTable", "translationResourceTable"}]
      573 GETTABLEKS                       R79 R16 K93 ["Resources"]
      575 GETTABLEKS                       R79 R79 K94 ["SourceStrings"]
      577 SETTABLEKS                       R79 R78 K98 ["stringResourceTable"]
      579 GETTABLEKS                       R79 R16 K93 ["Resources"]
      581 GETTABLEKS                       R79 R79 K95 ["LocalizedStrings"]
      583 SETTABLEKS                       R79 R78 K99 ["translationResourceTable"]
      585 SETTABLE                         R78 R76 R77
      586 SETTABLEKS                       R76 R75 K100 ["libraries"]
      588 CALL                             R74 1 1
      589 JUMPIFNOT                        R6 ; [+2]
      590 SETTABLEKS                       R74 R53 K105 ["localization"]
      592 NEWCLOSURE                       R75 P0
      593 CAPTURE                          REF R49
      594 NEWCLOSURE                       R76 P1
      595 CAPTURE                          VAL R19
      596 CAPTURE                          VAL R75
      597 CAPTURE                          VAL R0
      598 CAPTURE                          VAL R12
      599 CAPTURE                          VAL R3
      600 CAPTURE                          VAL R13
      601 CAPTURE                          VAL R23
      602 CAPTURE                          VAL R24
      603 CAPTURE                          VAL R74
      604 CAPTURE                          REF R49
      605 CAPTURE                          VAL R15
      606 NEWCLOSURE                       R77 P2
      607 CAPTURE                          REF R50
      608 CAPTURE                          VAL R47
      609 NEWCLOSURE                       R78 P3
      610 CAPTURE                          VAL R70
      611 CAPTURE                          VAL R43
      612 CAPTURE                          VAL R42
      613 CAPTURE                          VAL R40
      614 CAPTURE                          REF R49
      615 CAPTURE                          VAL R13
      616 CAPTURE                          REF R48
      617 CAPTURE                          VAL R5
      618 CAPTURE                          REF R51
      619 CAPTURE                          REF R50
      620 CAPTURE                          VAL R47
      621 CAPTURE                          VAL R46
      622 CAPTURE                          VAL R74
      623 CAPTURE                          VAL R21
      624 CAPTURE                          VAL R19
      625 CAPTURE                          VAL R75
      626 CAPTURE                          VAL R0
      627 CAPTURE                          VAL R12
      628 CAPTURE                          VAL R3
      629 CAPTURE                          VAL R23
      630 CAPTURE                          VAL R24
      631 CAPTURE                          VAL R15
      632 NEWCLOSURE                       R79 P4
      633 CAPTURE                          VAL R2
      634 CAPTURE                          REF R49
      635 CAPTURE                          VAL R0
      636 CAPTURE                          VAL R3
      637 CAPTURE                          VAL R10
      638 CAPTURE                          VAL R74
      639 CAPTURE                          VAL R78
      640 NEWCLOSURE                       R80 P5
      641 CAPTURE                          VAL R7
      642 CAPTURE                          VAL R70
      643 CAPTURE                          VAL R40
      644 CAPTURE                          VAL R13
      645 CAPTURE                          VAL R23
      646 CAPTURE                          VAL R76
      647 CAPTURE                          VAL R24
      648 CAPTURE                          VAL R0
      649 CAPTURE                          VAL R74
      650 CAPTURE                          REF R49
      651 CAPTURE                          VAL R52
      652 CAPTURE                          VAL R20
      653 CAPTURE                          VAL R78
      654 CAPTURE                          VAL R41
      655 CAPTURE                          VAL R44
      656 CAPTURE                          VAL R45
      657 CAPTURE                          VAL R42
      658 CAPTURE                          REF R48
      659 CAPTURE                          VAL R5
      660 CAPTURE                          REF R51
      661 CAPTURE                          VAL R2
      662 CAPTURE                          VAL R47
      663 CAPTURE                          REF R50
      664 NEWCLOSURE                       R81 P6
      665 CAPTURE                          VAL R0
      666 CAPTURE                          VAL R2
      667 CAPTURE                          VAL R1
      668 CAPTURE                          VAL R11
      669 CAPTURE                          VAL R79
      670 CAPTURE                          VAL R80
      671 CAPTURE                          VAL R70
      672 CAPTURE                          REF R71
      673 CAPTURE                          VAL R40
      674 CAPTURE                          VAL R75
      675 MOVE                             R82 R81
      676 CALL                             R82 0 0
      677 CLOSEUPVALS                      R48
      678 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_17]
        2 RETURN                           R0 1
