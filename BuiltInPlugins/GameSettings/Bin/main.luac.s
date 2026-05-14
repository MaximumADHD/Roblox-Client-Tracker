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
       42 LOADK                            R10 K12 ["RemoveGameSettingsPermissionsPage"]
       43 NAMECALL                         R8 R8 K6 ["GetFastFlag"]
       45 CALL                             R8 2 1
       46 GETIMPORT                        R9 K14 [require]
       48 GETTABLEKS                       R10 R2 K15 ["Src"]
       50 GETTABLEKS                       R10 R10 K16 ["Flags"]
       52 GETTABLEKS                       R10 R10 K17 ["getFFlagGameSettingsGameToExperience"]
       54 CALL                             R9 1 1
       55 CALL                             R9 0 1
       56 GETIMPORT                        R10 K4 [game]
       58 LOADK                            R12 K18 ["RunService"]
       59 NAMECALL                         R10 R10 K19 ["GetService"]
       61 CALL                             R10 2 1
       62 GETIMPORT                        R11 K4 [game]
       64 LOADK                            R13 K20 ["HttpService"]
       65 NAMECALL                         R11 R11 K19 ["GetService"]
       67 CALL                             R11 2 1
       68 GETIMPORT                        R12 K14 [require]
       70 GETTABLEKS                       R13 R2 K21 ["Packages"]
       72 GETTABLEKS                       R13 R13 K22 ["Roact"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K14 [require]
       77 GETTABLEKS                       R14 R2 K21 ["Packages"]
       79 GETTABLEKS                       R14 R14 K23 ["Rodux"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K14 [require]
       84 GETTABLEKS                       R15 R2 K21 ["Packages"]
       86 GETTABLEKS                       R15 R15 K24 ["Cryo"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K14 [require]
       91 GETTABLEKS                       R16 R2 K21 ["Packages"]
       93 GETTABLEKS                       R16 R16 K25 ["Framework"]
       95 CALL                             R15 1 1
       96 GETTABLEKS                       R16 R15 K26 ["ContextServices"]
       98 GETTABLEKS                       R17 R15 K27 ["Util"]
      100 GETTABLEKS                       R18 R17 K28 ["Promise"]
      102 GETIMPORT                        R19 K14 [require]
      104 GETTABLEKS                       R20 R2 K15 ["Src"]
      106 GETTABLEKS                       R20 R20 K29 ["Components"]
      108 GETTABLEKS                       R20 R20 K30 ["MainView"]
      110 CALL                             R19 1 1
      111 GETIMPORT                        R20 K14 [require]
      113 GETTABLEKS                       R21 R2 K15 ["Src"]
      115 GETTABLEKS                       R21 R21 K29 ["Components"]
      117 GETTABLEKS                       R21 R21 K31 ["Dialog"]
      119 GETTABLEKS                       R21 R21 K32 ["SimpleDialog"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K14 [require]
      124 GETTABLEKS                       R22 R2 K15 ["Src"]
      126 GETTABLEKS                       R22 R22 K33 ["Reducers"]
      128 GETTABLEKS                       R22 R22 K34 ["MainReducer"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K14 [require]
      133 GETTABLEKS                       R23 R2 K15 ["Src"]
      135 GETTABLEKS                       R23 R23 K29 ["Components"]
      137 GETTABLEKS                       R23 R23 K35 ["ExternalServicesWrapper"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K14 [require]
      142 GETTABLEKS                       R24 R2 K15 ["Src"]
      144 GETTABLEKS                       R24 R24 K27 ["Util"]
      146 GETTABLEKS                       R24 R24 K36 ["MakeTheme"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K14 [require]
      151 GETTABLEKS                       R25 R2 K15 ["Src"]
      153 GETTABLEKS                       R25 R25 K26 ["ContextServices"]
      155 GETTABLEKS                       R25 R25 K37 ["Networking"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K14 [require]
      160 GETTABLEKS                       R26 R2 K38 ["Pages"]
      162 GETTABLEKS                       R26 R26 K39 ["WorldPage"]
      164 GETTABLEKS                       R26 R26 K26 ["ContextServices"]
      166 GETTABLEKS                       R26 R26 K40 ["WorldRootPhysics"]
      168 CALL                             R25 1 1
      169 GETIMPORT                        R26 K14 [require]
      171 GETTABLEKS                       R27 R2 K15 ["Src"]
      173 GETTABLEKS                       R27 R27 K41 ["Controllers"]
      175 GETTABLEKS                       R27 R27 K42 ["GameInfoController"]
      177 CALL                             R26 1 1
      178 GETIMPORT                        R27 K14 [require]
      180 GETTABLEKS                       R28 R2 K15 ["Src"]
      182 GETTABLEKS                       R28 R28 K41 ["Controllers"]
      184 GETTABLEKS                       R28 R28 K43 ["GameMetadataController"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K14 [require]
      189 GETTABLEKS                       R29 R2 K15 ["Src"]
      191 GETTABLEKS                       R29 R29 K41 ["Controllers"]
      193 GETTABLEKS                       R29 R29 K44 ["GroupMetadataController"]
      195 CALL                             R28 1 1
      196 GETIMPORT                        R29 K14 [require]
      198 GETTABLEKS                       R30 R2 K38 ["Pages"]
      200 GETTABLEKS                       R30 R30 K45 ["PermissionsPage"]
      202 GETTABLEKS                       R30 R30 K41 ["Controllers"]
      204 GETTABLEKS                       R30 R30 K46 ["GamePermissionsController"]
      206 CALL                             R29 1 1
      207 GETIMPORT                        R30 K14 [require]
      209 GETTABLEKS                       R31 R2 K38 ["Pages"]
      211 GETTABLEKS                       R31 R31 K47 ["OptionsPage"]
      213 GETTABLEKS                       R31 R31 K41 ["Controllers"]
      215 GETTABLEKS                       R31 R31 K48 ["GameOptionsController"]
      217 CALL                             R30 1 1
      218 GETIMPORT                        R31 K14 [require]
      220 GETTABLEKS                       R32 R2 K38 ["Pages"]
      222 GETTABLEKS                       R32 R32 K49 ["CommunicationPage"]
      224 GETTABLEKS                       R32 R32 K41 ["Controllers"]
      226 GETTABLEKS                       R32 R32 K50 ["CommunicationController"]
      228 CALL                             R31 1 1
      229 GETIMPORT                        R32 K14 [require]
      231 GETTABLEKS                       R33 R2 K38 ["Pages"]
      233 GETTABLEKS                       R33 R33 K51 ["MonetizationPage"]
      235 GETTABLEKS                       R33 R33 K41 ["Controllers"]
      237 GETTABLEKS                       R33 R33 K52 ["MonetizationController"]
      239 CALL                             R32 1 1
      240 GETIMPORT                        R33 K14 [require]
      242 GETTABLEKS                       R34 R2 K38 ["Pages"]
      244 GETTABLEKS                       R34 R34 K51 ["MonetizationPage"]
      246 GETTABLEKS                       R34 R34 K41 ["Controllers"]
      248 GETTABLEKS                       R34 R34 K53 ["DevSubsController"]
      250 CALL                             R33 1 1
      251 GETIMPORT                        R34 K14 [require]
      253 GETTABLEKS                       R35 R2 K38 ["Pages"]
      255 GETTABLEKS                       R35 R35 K54 ["PlacesPage"]
      257 GETTABLEKS                       R35 R35 K41 ["Controllers"]
      259 GETTABLEKS                       R35 R35 K55 ["PlacesController"]
      261 CALL                             R34 1 1
      262 GETIMPORT                        R35 K14 [require]
      264 GETTABLEKS                       R36 R2 K15 ["Src"]
      266 GETTABLEKS                       R36 R36 K41 ["Controllers"]
      268 GETTABLEKS                       R36 R36 K56 ["PolicyInfoController"]
      270 CALL                             R35 1 1
      271 GETIMPORT                        R36 K14 [require]
      273 GETTABLEKS                       R37 R2 K38 ["Pages"]
      275 GETTABLEKS                       R37 R37 K57 ["SecurityPage"]
      277 GETTABLEKS                       R37 R37 K41 ["Controllers"]
      279 GETTABLEKS                       R37 R37 K58 ["SecurityController"]
      281 CALL                             R36 1 1
      282 GETIMPORT                        R37 K14 [require]
      284 GETTABLEKS                       R38 R2 K38 ["Pages"]
      286 GETTABLEKS                       R38 R38 K45 ["PermissionsPage"]
      288 GETTABLEKS                       R38 R38 K41 ["Controllers"]
      290 GETTABLEKS                       R38 R38 K59 ["SocialController"]
      292 CALL                             R37 1 1
      293 GETIMPORT                        R38 K14 [require]
      295 GETTABLEKS                       R39 R2 K38 ["Pages"]
      297 GETTABLEKS                       R39 R39 K60 ["AvatarPage"]
      299 GETTABLEKS                       R39 R39 K41 ["Controllers"]
      301 GETTABLEKS                       R39 R39 K61 ["UniverseAvatarController"]
      303 CALL                             R38 1 1
      304 GETIMPORT                        R39 K14 [require]
      306 GETTABLEKS                       R40 R2 K38 ["Pages"]
      308 GETTABLEKS                       R40 R40 K62 ["LocalizationPage"]
      310 GETTABLEKS                       R40 R40 K41 ["Controllers"]
      312 GETTABLEKS                       R40 R40 K63 ["LocalizationPageController"]
      314 CALL                             R39 1 1
      315 GETIMPORT                        R40 K14 [require]
      317 GETTABLEKS                       R41 R2 K15 ["Src"]
      319 GETTABLEKS                       R41 R41 K27 ["Util"]
      321 GETTABLEKS                       R41 R41 K64 ["CurrentStatus"]
      323 CALL                             R40 1 1
      324 GETIMPORT                        R41 K14 [require]
      326 GETTABLEKS                       R42 R2 K15 ["Src"]
      328 GETTABLEKS                       R42 R42 K65 ["Actions"]
      330 GETTABLEKS                       R42 R42 K66 ["ResetStore"]
      332 CALL                             R41 1 1
      333 GETIMPORT                        R42 K14 [require]
      335 GETTABLEKS                       R43 R2 K15 ["Src"]
      337 GETTABLEKS                       R43 R43 K65 ["Actions"]
      339 GETTABLEKS                       R43 R43 K67 ["SetCurrentStatus"]
      341 CALL                             R42 1 1
      342 GETIMPORT                        R43 K14 [require]
      344 GETTABLEKS                       R44 R2 K15 ["Src"]
      346 GETTABLEKS                       R44 R44 K65 ["Actions"]
      348 GETTABLEKS                       R44 R44 K68 ["DiscardChanges"]
      350 CALL                             R43 1 1
      351 GETIMPORT                        R44 K14 [require]
      353 GETTABLEKS                       R45 R2 K15 ["Src"]
      355 GETTABLEKS                       R45 R45 K65 ["Actions"]
      357 GETTABLEKS                       R45 R45 K69 ["SetGameId"]
      359 CALL                             R44 1 1
      360 GETIMPORT                        R45 K14 [require]
      362 GETTABLEKS                       R46 R2 K15 ["Src"]
      364 GETTABLEKS                       R46 R46 K65 ["Actions"]
      366 GETTABLEKS                       R46 R46 K70 ["SetGame"]
      368 CALL                             R45 1 1
      369 GETIMPORT                        R46 K14 [require]
      371 GETTABLEKS                       R47 R2 K15 ["Src"]
      373 GETTABLEKS                       R47 R47 K27 ["Util"]
      375 GETTABLEKS                       R47 R47 K71 ["isEmpty"]
      377 CALL                             R46 1 1
      378 GETIMPORT                        R47 K14 [require]
      380 GETTABLEKS                       R48 R2 K15 ["Src"]
      382 GETTABLEKS                       R48 R48 K27 ["Util"]
      384 GETTABLEKS                       R48 R48 K72 ["Analytics"]
      386 CALL                             R47 1 1
      387 LOADNIL                          R48
      388 LOADNIL                          R49
      389 LOADNIL                          R50
      390 LOADNIL                          R51
      391 GETTABLEKS                       R52 R25 K73 ["new"]
      393 CALL                             R52 0 1
      394 NEWTABLE                         R53 32 0
      396 GETTABLEKS                       R54 R24 K73 ["new"]
      398 CALL                             R54 0 1
      399 GETTABLEKS                       R55 R26 K73 ["new"]
      401 NAMECALL                         R56 R54 K74 ["get"]
      403 CALL                             R56 1 -1
      404 CALL                             R55 -1 1
      405 GETTABLEKS                       R56 R27 K73 ["new"]
      407 NAMECALL                         R57 R54 K74 ["get"]
      409 CALL                             R57 1 -1
      410 CALL                             R56 -1 1
      411 GETTABLEKS                       R57 R28 K73 ["new"]
      413 NAMECALL                         R58 R54 K74 ["get"]
      415 CALL                             R58 1 -1
      416 CALL                             R57 -1 1
      417 GETTABLEKS                       R58 R29 K73 ["new"]
      419 NAMECALL                         R59 R54 K74 ["get"]
      421 CALL                             R59 1 -1
      422 CALL                             R58 -1 1
      423 GETTABLEKS                       R59 R32 K73 ["new"]
      425 NAMECALL                         R60 R54 K74 ["get"]
      427 CALL                             R60 1 -1
      428 CALL                             R59 -1 1
      429 JUMPIFNOT                        R4 ; [+7]
      430 GETTABLEKS                       R60 R33 K73 ["new"]
      432 NAMECALL                         R61 R54 K74 ["get"]
      434 CALL                             R61 1 -1
      435 CALL                             R60 -1 1
      436 JUMPIF                           R60 ; [+1]
      437 LOADNIL                          R60
      438 GETTABLEKS                       R61 R30 K73 ["new"]
      440 NAMECALL                         R62 R54 K74 ["get"]
      442 CALL                             R62 1 -1
      443 CALL                             R61 -1 1
      444 GETTABLEKS                       R62 R31 K73 ["new"]
      446 NAMECALL                         R63 R54 K74 ["get"]
      448 CALL                             R63 1 -1
      449 CALL                             R62 -1 1
      450 GETTABLEKS                       R63 R36 K73 ["new"]
      452 NAMECALL                         R64 R54 K74 ["get"]
      454 CALL                             R64 1 -1
      455 CALL                             R63 -1 1
      456 JUMPIF                           R8 ; [+7]
      457 GETTABLEKS                       R64 R37 K73 ["new"]
      459 NAMECALL                         R65 R54 K74 ["get"]
      461 CALL                             R65 1 -1
      462 CALL                             R64 -1 1
      463 JUMP                             ; [+1]
      464 LOADNIL                          R64
      465 GETTABLEKS                       R65 R38 K73 ["new"]
      467 NAMECALL                         R66 R54 K74 ["get"]
      469 CALL                             R66 1 -1
      470 CALL                             R65 -1 1
      471 GETTABLEKS                       R66 R34 K73 ["new"]
      473 NAMECALL                         R67 R54 K74 ["get"]
      475 CALL                             R67 1 -1
      476 CALL                             R66 -1 1
      477 GETTABLEKS                       R67 R39 K73 ["new"]
      479 NAMECALL                         R68 R54 K74 ["get"]
      481 CALL                             R68 1 -1
      482 CALL                             R67 -1 1
      483 GETTABLEKS                       R68 R35 K73 ["new"]
      485 NAMECALL                         R69 R54 K74 ["get"]
      487 CALL                             R69 1 -1
      488 CALL                             R68 -1 1
      489 NAMECALL                         R69 R54 K74 ["get"]
      491 CALL                             R69 1 1
      492 SETTABLEKS                       R69 R53 K75 ["networking"]
      494 NAMECALL                         R69 R52 K74 ["get"]
      496 CALL                             R69 1 1
      497 SETTABLEKS                       R69 R53 K76 ["worldRootPhysicsController"]
      499 SETTABLEKS                       R55 R53 K77 ["gameInfoController"]
      501 SETTABLEKS                       R56 R53 K78 ["gameMetadataController"]
      503 SETTABLEKS                       R57 R53 K79 ["groupMetadataController"]
      505 SETTABLEKS                       R58 R53 K80 ["gamePermissionsController"]
      507 SETTABLEKS                       R61 R53 K81 ["gameOptionsController"]
      509 SETTABLEKS                       R62 R53 K82 ["communicationController"]
      511 SETTABLEKS                       R59 R53 K83 ["monetizationController"]
      513 SETTABLEKS                       R60 R53 K84 ["devSubsController"]
      515 SETTABLEKS                       R63 R53 K85 ["universePermissionsController"]
      517 SETTABLEKS                       R64 R53 K86 ["socialController"]
      519 SETTABLEKS                       R65 R53 K87 ["universeAvatarController"]
      521 SETTABLEKS                       R66 R53 K88 ["placesController"]
      523 SETTABLEKS                       R67 R53 K89 ["localizationPageController"]
      525 SETTABLEKS                       R68 R53 K90 ["policyInfoController"]
      527 GETTABLEKS                       R69 R17 K91 ["ThunkWithArgsMiddleware"]
      529 MOVE                             R70 R53
      530 CALL                             R69 1 1
      531 NEWTABLE                         R70 0 1
      533 MOVE                             R71 R69
      534 SETLIST                          R70 R71 1 [1]
      536 GETTABLEKS                       R71 R13 K92 ["Store"]
      538 GETTABLEKS                       R71 R71 K73 ["new"]
      540 MOVE                             R72 R21
      541 LOADNIL                          R73
      542 MOVE                             R74 R70
      543 CALL                             R71 3 1
      544 GETTABLEKS                       R72 R40 K93 ["Open"]
      546 GETTABLEKS                       R73 R2 K15 ["Src"]
      548 GETTABLEKS                       R73 R73 K94 ["Resources"]
      550 GETTABLEKS                       R73 R73 K95 ["SourceStrings"]
      552 GETTABLEKS                       R74 R2 K15 ["Src"]
      554 GETTABLEKS                       R74 R74 K94 ["Resources"]
      556 GETTABLEKS                       R74 R74 K96 ["LocalizedStrings"]
      558 GETTABLEKS                       R75 R16 K97 ["Localization"]
      560 GETTABLEKS                       R75 R75 K73 ["new"]
      562 DUPTABLE                         R76 K102 [{"pluginName", "stringResourceTable", "translationResourceTable", "libraries"}]
      563 LOADK                            R77 K103 ["GameSettings"]
      564 SETTABLEKS                       R77 R76 K98 ["pluginName"]
      566 SETTABLEKS                       R73 R76 K99 ["stringResourceTable"]
      568 SETTABLEKS                       R74 R76 K100 ["translationResourceTable"]
      570 NEWTABLE                         R77 1 0
      572 GETTABLEKS                       R78 R15 K94 ["Resources"]
      574 GETTABLEKS                       R78 R78 K104 ["LOCALIZATION_PROJECT_NAME"]
      576 DUPTABLE                         R79 K105 [{"stringResourceTable", "translationResourceTable"}]
      577 GETTABLEKS                       R80 R15 K94 ["Resources"]
      579 GETTABLEKS                       R80 R80 K95 ["SourceStrings"]
      581 SETTABLEKS                       R80 R79 K99 ["stringResourceTable"]
      583 GETTABLEKS                       R80 R15 K94 ["Resources"]
      585 GETTABLEKS                       R80 R80 K96 ["LocalizedStrings"]
      587 SETTABLEKS                       R80 R79 K100 ["translationResourceTable"]
      589 SETTABLE                         R79 R77 R78
      590 SETTABLEKS                       R77 R76 K101 ["libraries"]
      592 CALL                             R75 1 1
      593 JUMPIFNOT                        R6 ; [+2]
      594 SETTABLEKS                       R75 R53 K106 ["localization"]
      596 NEWCLOSURE                       R76 P0
      597 CAPTURE                          REF R49
      598 NEWCLOSURE                       R77 P1
      599 CAPTURE                          VAL R18
      600 CAPTURE                          VAL R76
      601 CAPTURE                          VAL R0
      602 CAPTURE                          VAL R11
      603 CAPTURE                          VAL R3
      604 CAPTURE                          VAL R12
      605 CAPTURE                          VAL R22
      606 CAPTURE                          VAL R23
      607 CAPTURE                          VAL R75
      608 CAPTURE                          REF R49
      609 CAPTURE                          VAL R14
      610 NEWCLOSURE                       R78 P2
      611 CAPTURE                          REF R50
      612 CAPTURE                          VAL R47
      613 NEWCLOSURE                       R79 P3
      614 CAPTURE                          VAL R71
      615 CAPTURE                          VAL R43
      616 CAPTURE                          VAL R42
      617 CAPTURE                          VAL R40
      618 CAPTURE                          REF R49
      619 CAPTURE                          VAL R12
      620 CAPTURE                          REF R48
      621 CAPTURE                          VAL R5
      622 CAPTURE                          REF R51
      623 CAPTURE                          REF R50
      624 CAPTURE                          VAL R47
      625 CAPTURE                          VAL R46
      626 CAPTURE                          VAL R75
      627 CAPTURE                          VAL R20
      628 CAPTURE                          VAL R18
      629 CAPTURE                          VAL R76
      630 CAPTURE                          VAL R0
      631 CAPTURE                          VAL R11
      632 CAPTURE                          VAL R3
      633 CAPTURE                          VAL R22
      634 CAPTURE                          VAL R23
      635 CAPTURE                          VAL R14
      636 NEWCLOSURE                       R80 P4
      637 CAPTURE                          VAL R2
      638 CAPTURE                          REF R49
      639 CAPTURE                          VAL R0
      640 CAPTURE                          VAL R3
      641 CAPTURE                          VAL R9
      642 CAPTURE                          VAL R75
      643 CAPTURE                          VAL R79
      644 NEWCLOSURE                       R81 P5
      645 CAPTURE                          VAL R7
      646 CAPTURE                          VAL R71
      647 CAPTURE                          VAL R40
      648 CAPTURE                          VAL R12
      649 CAPTURE                          VAL R22
      650 CAPTURE                          VAL R77
      651 CAPTURE                          VAL R23
      652 CAPTURE                          VAL R0
      653 CAPTURE                          VAL R75
      654 CAPTURE                          REF R49
      655 CAPTURE                          VAL R52
      656 CAPTURE                          VAL R19
      657 CAPTURE                          VAL R79
      658 CAPTURE                          VAL R41
      659 CAPTURE                          VAL R44
      660 CAPTURE                          VAL R45
      661 CAPTURE                          VAL R42
      662 CAPTURE                          REF R48
      663 CAPTURE                          VAL R5
      664 CAPTURE                          REF R51
      665 CAPTURE                          VAL R2
      666 CAPTURE                          VAL R47
      667 CAPTURE                          REF R50
      668 NEWCLOSURE                       R82 P6
      669 CAPTURE                          VAL R0
      670 CAPTURE                          VAL R2
      671 CAPTURE                          VAL R1
      672 CAPTURE                          VAL R10
      673 CAPTURE                          VAL R80
      674 CAPTURE                          VAL R81
      675 CAPTURE                          VAL R71
      676 CAPTURE                          REF R72
      677 CAPTURE                          VAL R40
      678 CAPTURE                          VAL R76
      679 MOVE                             R83 R82
      680 CALL                             R83 0 0
      681 CLOSEUPVALS                      R48
      682 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_17]
        2 RETURN                           R0 1
