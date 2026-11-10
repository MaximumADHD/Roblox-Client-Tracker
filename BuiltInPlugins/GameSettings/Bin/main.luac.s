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
       10 LOADN                            R2 473
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
       65 LOADN                            R9 343
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
        5 LOADN                            R2 960
        6 LOADN                            R3 600
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K11 [{["Size"], ["MinSize"], ["Resizable"] = True, ["Modal"], ["InitialEnabled"] = False}]
       11 SETTABLEKS                       R1 R5 K4 ["Size"]
       13 SETTABLEKS                       R1 R5 K5 ["MinSize"]
       15 GETUPVAL                         R7 3
       16 NOT                              R6 R7
       17 SETTABLEKS                       R6 R5 K8 ["Modal"]
       19 NAMECALL                         R2 R2 K12 ["CreateQWidgetPluginGui"]
       21 CALL                             R2 3 1
       22 SETUPVAL                         R2 1
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["Name"]
       27 SETTABLEKS                       R3 R2 K0 ["Name"]
       29 GETUPVAL                         R2 1
       30 GETUPVAL                         R4 4
       31 JUMPIFNOT                        R4 ; [+7]
       32 GETUPVAL                         R3 5
       33 LOADK                            R5 K13 ["General"]
       34 LOADK                            R6 K14 ["PluginNameExp"]
       35 NAMECALL                         R3 R3 K15 ["getText"]
       37 CALL                             R3 3 1
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R3 5
       40 LOADK                            R5 K13 ["General"]
       41 LOADK                            R6 K16 ["PluginName"]
       42 NAMECALL                         R3 R3 K15 ["getText"]
       44 CALL                             R3 3 1
       45 SETTABLEKS                       R3 R2 K17 ["Title"]
       47 GETUPVAL                         R2 1
       48 GETIMPORT                        R3 K21 [Enum.ZIndexBehavior.Sibling]
       50 SETTABLEKS                       R3 R2 K19 ["ZIndexBehavior"]
       52 GETUPVAL                         R2 1
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          UPVAL U6
       55 NAMECALL                         R2 R2 K22 ["BindToClose"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["TeamCreateService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R3 R3 K4 ["CloseGameIfUserDoesntHavePerms"]
        8 CALL                             R3 1 0
        9 GETUPVAL                         R3 0
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETUPVAL                         R3 0
       12 NAMECALL                         R3 R3 K5 ["getState"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K6 ["Status"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["Closed"]
       20 JUMPIFEQ                         R4 R5 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K8 ["createElement"]
       26 GETUPVAL                         R4 3
       27 DUPTABLE                         R5 K16 [{"store", "showDialog", "theme", "mouse", "localization", "pluginGui", "plugin"}]
       28 GETUPVAL                         R6 0
       29 SETTABLEKS                       R6 R5 K9 ["store"]
       31 GETUPVAL                         R6 4
       32 SETTABLEKS                       R6 R5 K10 ["showDialog"]
       34 GETUPVAL                         R6 5
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K11 ["theme"]
       38 GETUPVAL                         R6 6
       39 NAMECALL                         R6 R6 K17 ["GetMouse"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K12 ["mouse"]
       44 GETUPVAL                         R6 7
       45 SETTABLEKS                       R6 R5 K13 ["localization"]
       47 GETUPVAL                         R6 8
       48 SETTABLEKS                       R6 R5 K14 ["pluginGui"]
       50 GETUPVAL                         R6 6
       51 SETTABLEKS                       R6 R5 K15 ["plugin"]
       53 DUPTABLE                         R6 K19 [{"mainView"}]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K8 ["createElement"]
       57 GETUPVAL                         R8 9
       58 DUPTABLE                         R9 K22 [{"OnClose", "FirstSelectedId"}]
       59 GETUPVAL                         R10 10
       60 SETTABLEKS                       R10 R9 K20 ["OnClose"]
       62 SETTABLEKS                       R2 R9 K21 ["FirstSelectedId"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K18 ["mainView"]
       67 CALL                             R3 3 1
       68 GETUPVAL                         R4 0
       69 GETUPVAL                         R6 11
       70 CALL                             R6 0 -1
       71 NAMECALL                         R4 R4 K23 ["dispatch"]
       73 CALL                             R4 -1 0
       74 GETUPVAL                         R4 0
       75 GETUPVAL                         R6 12
       76 MOVE                             R7 R0
       77 CALL                             R6 1 -1
       78 NAMECALL                         R4 R4 K23 ["dispatch"]
       80 CALL                             R4 -1 0
       81 GETUPVAL                         R4 0
       82 GETUPVAL                         R6 13
       83 MOVE                             R7 R1
       84 CALL                             R6 1 -1
       85 NAMECALL                         R4 R4 K23 ["dispatch"]
       87 CALL                             R4 -1 0
       88 GETUPVAL                         R4 0
       89 GETUPVAL                         R6 14
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K24 ["Open"]
       93 CALL                             R6 1 -1
       94 NAMECALL                         R4 R4 K23 ["dispatch"]
       96 CALL                             R4 -1 0
       97 GETUPVAL                         R4 2
       98 GETTABLEKS                       R4 R4 K25 ["mount"]
      100 MOVE                             R5 R3
      101 GETUPVAL                         R6 8
      102 CALL                             R4 2 1
      103 SETUPVAL                         R4 15
      104 GETUPVAL                         R4 8
      105 LOADB                            R5 1
      106 SETTABLEKS                       R5 R4 K26 ["Enabled"]
      108 GETUPVAL                         R4 16
      109 JUMPIFNOT                        R4 ; [+28]
      110 GETIMPORT                        R4 K1 [game]
      112 LOADK                            R6 K27 ["StudioService"]
      113 NAMECALL                         R4 R4 K3 ["GetService"]
      115 CALL                             R4 2 1
      116 NAMECALL                         R4 R4 K28 ["HasInternalPermission"]
      118 CALL                             R4 1 1
      119 JUMPIFNOT                        R4 ; [+18]
      120 GETUPVAL                         R4 18
      121 GETTABLEKS                       R4 R4 K29 ["Packages"]
      123 GETTABLEKS                       R4 R4 K30 ["DeveloperTools"]
      125 GETTABLEKS                       R4 R4 K31 ["forPlugin"]
      127 LOADK                            R5 K32 ["Game Settings"]
      128 GETUPVAL                         R6 6
      129 CALL                             R4 2 1
      130 SETUPVAL                         R4 17
      131 GETUPVAL                         R4 17
      132 LOADK                            R6 K33 ["Roact tree"]
      133 GETUPVAL                         R7 15
      134 GETUPVAL                         R8 2
      135 NAMECALL                         R4 R4 K34 ["addRoactTree"]
      137 CALL                             R4 4 0
      138 GETUPVAL                         R4 19
      139 GETTABLEKS                       R4 R4 K35 ["onOpenEvent"]
      141 GETUPVAL                         R5 6
      142 NAMECALL                         R5 R5 K36 ["GetStudioUserId"]
      144 CALL                             R5 1 1
      145 MOVE                             R6 R0
      146 CALL                             R4 2 0
      147 GETIMPORT                        R4 K38 [tick]
      149 CALL                             R4 0 1
      150 SETUPVAL                         R4 20
      151 RETURN                           R0 0

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
       36 LOADK                            R9 K11 ["RemoveGameSettingsMonetizationPage"]
       37 NAMECALL                         R7 R7 K6 ["GetFastFlag"]
       39 CALL                             R7 2 1
       40 GETIMPORT                        R8 K13 [require]
       42 GETTABLEKS                       R9 R2 K14 ["Src"]
       44 GETTABLEKS                       R9 R9 K15 ["Flags"]
       46 GETTABLEKS                       R9 R9 K16 ["getFFlagGameSettingsGameToExperience"]
       48 CALL                             R8 1 1
       49 CALL                             R8 0 1
       50 GETIMPORT                        R9 K4 [game]
       52 LOADK                            R11 K17 ["RunService"]
       53 NAMECALL                         R9 R9 K18 ["GetService"]
       55 CALL                             R9 2 1
       56 GETIMPORT                        R10 K4 [game]
       58 LOADK                            R12 K19 ["HttpService"]
       59 NAMECALL                         R10 R10 K18 ["GetService"]
       61 CALL                             R10 2 1
       62 GETIMPORT                        R11 K13 [require]
       64 GETTABLEKS                       R12 R2 K20 ["Packages"]
       66 GETTABLEKS                       R12 R12 K21 ["Roact"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K13 [require]
       71 GETTABLEKS                       R13 R2 K20 ["Packages"]
       73 GETTABLEKS                       R13 R13 K22 ["Rodux"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K13 [require]
       78 GETTABLEKS                       R14 R2 K20 ["Packages"]
       80 GETTABLEKS                       R14 R14 K23 ["Cryo"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K13 [require]
       85 GETTABLEKS                       R15 R2 K20 ["Packages"]
       87 GETTABLEKS                       R15 R15 K24 ["Framework"]
       89 CALL                             R14 1 1
       90 GETTABLEKS                       R15 R14 K25 ["ContextServices"]
       92 GETTABLEKS                       R16 R14 K26 ["Util"]
       94 GETTABLEKS                       R17 R16 K27 ["Promise"]
       96 GETIMPORT                        R18 K13 [require]
       98 GETTABLEKS                       R19 R2 K14 ["Src"]
      100 GETTABLEKS                       R19 R19 K28 ["Components"]
      102 GETTABLEKS                       R19 R19 K29 ["MainView"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K13 [require]
      107 GETTABLEKS                       R20 R2 K14 ["Src"]
      109 GETTABLEKS                       R20 R20 K28 ["Components"]
      111 GETTABLEKS                       R20 R20 K30 ["Dialog"]
      113 GETTABLEKS                       R20 R20 K31 ["SimpleDialog"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K13 [require]
      118 GETTABLEKS                       R21 R2 K14 ["Src"]
      120 GETTABLEKS                       R21 R21 K32 ["Reducers"]
      122 GETTABLEKS                       R21 R21 K33 ["MainReducer"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K13 [require]
      127 GETTABLEKS                       R22 R2 K14 ["Src"]
      129 GETTABLEKS                       R22 R22 K28 ["Components"]
      131 GETTABLEKS                       R22 R22 K34 ["ExternalServicesWrapper"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K13 [require]
      136 GETTABLEKS                       R23 R2 K14 ["Src"]
      138 GETTABLEKS                       R23 R23 K26 ["Util"]
      140 GETTABLEKS                       R23 R23 K35 ["MakeTheme"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K13 [require]
      145 GETTABLEKS                       R24 R2 K14 ["Src"]
      147 GETTABLEKS                       R24 R24 K25 ["ContextServices"]
      149 GETTABLEKS                       R24 R24 K36 ["Networking"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K13 [require]
      154 GETTABLEKS                       R25 R2 K14 ["Src"]
      156 GETTABLEKS                       R25 R25 K37 ["Controllers"]
      158 GETTABLEKS                       R25 R25 K38 ["GameInfoController"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K13 [require]
      163 GETTABLEKS                       R26 R2 K14 ["Src"]
      165 GETTABLEKS                       R26 R26 K37 ["Controllers"]
      167 GETTABLEKS                       R26 R26 K39 ["GameMetadataController"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K13 [require]
      172 GETTABLEKS                       R27 R2 K14 ["Src"]
      174 GETTABLEKS                       R27 R27 K37 ["Controllers"]
      176 GETTABLEKS                       R27 R27 K40 ["GroupMetadataController"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K13 [require]
      181 GETTABLEKS                       R28 R2 K41 ["Pages"]
      183 GETTABLEKS                       R28 R28 K42 ["PermissionsPage"]
      185 GETTABLEKS                       R28 R28 K37 ["Controllers"]
      187 GETTABLEKS                       R28 R28 K43 ["GamePermissionsController"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K13 [require]
      192 GETTABLEKS                       R29 R2 K14 ["Src"]
      194 GETTABLEKS                       R29 R29 K37 ["Controllers"]
      196 GETTABLEKS                       R29 R29 K44 ["GameOptionsController"]
      198 CALL                             R28 1 1
      199 GETIMPORT                        R29 K13 [require]
      201 GETTABLEKS                       R30 R2 K41 ["Pages"]
      203 GETTABLEKS                       R30 R30 K45 ["CommunicationPage"]
      205 GETTABLEKS                       R30 R30 K37 ["Controllers"]
      207 GETTABLEKS                       R30 R30 K46 ["CommunicationController"]
      209 CALL                             R29 1 1
      210 GETIMPORT                        R30 K13 [require]
      212 GETTABLEKS                       R31 R2 K41 ["Pages"]
      214 GETTABLEKS                       R31 R31 K47 ["MonetizationPage"]
      216 GETTABLEKS                       R31 R31 K37 ["Controllers"]
      218 GETTABLEKS                       R31 R31 K48 ["MonetizationController"]
      220 CALL                             R30 1 1
      221 GETIMPORT                        R31 K13 [require]
      223 GETTABLEKS                       R32 R2 K41 ["Pages"]
      225 GETTABLEKS                       R32 R32 K47 ["MonetizationPage"]
      227 GETTABLEKS                       R32 R32 K37 ["Controllers"]
      229 GETTABLEKS                       R32 R32 K49 ["DevSubsController"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K13 [require]
      234 GETTABLEKS                       R33 R2 K14 ["Src"]
      236 GETTABLEKS                       R33 R33 K37 ["Controllers"]
      238 GETTABLEKS                       R33 R33 K50 ["PlacesController"]
      240 CALL                             R32 1 1
      241 GETIMPORT                        R33 K13 [require]
      243 GETTABLEKS                       R34 R2 K14 ["Src"]
      245 GETTABLEKS                       R34 R34 K37 ["Controllers"]
      247 GETTABLEKS                       R34 R34 K51 ["PolicyInfoController"]
      249 CALL                             R33 1 1
      250 GETIMPORT                        R34 K13 [require]
      252 GETTABLEKS                       R35 R2 K41 ["Pages"]
      254 GETTABLEKS                       R35 R35 K52 ["SecurityPage"]
      256 GETTABLEKS                       R35 R35 K37 ["Controllers"]
      258 GETTABLEKS                       R35 R35 K53 ["SecurityController"]
      260 CALL                             R34 1 1
      261 GETIMPORT                        R35 K13 [require]
      263 GETTABLEKS                       R36 R2 K14 ["Src"]
      265 GETTABLEKS                       R36 R36 K26 ["Util"]
      267 GETTABLEKS                       R36 R36 K54 ["CurrentStatus"]
      269 CALL                             R35 1 1
      270 GETIMPORT                        R36 K13 [require]
      272 GETTABLEKS                       R37 R2 K14 ["Src"]
      274 GETTABLEKS                       R37 R37 K55 ["Actions"]
      276 GETTABLEKS                       R37 R37 K56 ["ResetStore"]
      278 CALL                             R36 1 1
      279 GETIMPORT                        R37 K13 [require]
      281 GETTABLEKS                       R38 R2 K14 ["Src"]
      283 GETTABLEKS                       R38 R38 K55 ["Actions"]
      285 GETTABLEKS                       R38 R38 K57 ["SetCurrentStatus"]
      287 CALL                             R37 1 1
      288 GETIMPORT                        R38 K13 [require]
      290 GETTABLEKS                       R39 R2 K14 ["Src"]
      292 GETTABLEKS                       R39 R39 K55 ["Actions"]
      294 GETTABLEKS                       R39 R39 K58 ["DiscardChanges"]
      296 CALL                             R38 1 1
      297 GETIMPORT                        R39 K13 [require]
      299 GETTABLEKS                       R40 R2 K14 ["Src"]
      301 GETTABLEKS                       R40 R40 K55 ["Actions"]
      303 GETTABLEKS                       R40 R40 K59 ["SetGameId"]
      305 CALL                             R39 1 1
      306 GETIMPORT                        R40 K13 [require]
      308 GETTABLEKS                       R41 R2 K14 ["Src"]
      310 GETTABLEKS                       R41 R41 K55 ["Actions"]
      312 GETTABLEKS                       R41 R41 K60 ["SetGame"]
      314 CALL                             R40 1 1
      315 GETIMPORT                        R41 K13 [require]
      317 GETTABLEKS                       R42 R2 K14 ["Src"]
      319 GETTABLEKS                       R42 R42 K26 ["Util"]
      321 GETTABLEKS                       R42 R42 K61 ["isEmpty"]
      323 CALL                             R41 1 1
      324 GETIMPORT                        R42 K13 [require]
      326 GETTABLEKS                       R43 R2 K14 ["Src"]
      328 GETTABLEKS                       R43 R43 K26 ["Util"]
      330 GETTABLEKS                       R43 R43 K62 ["Analytics"]
      332 CALL                             R42 1 1
      333 LOADNIL                          R43
      334 LOADNIL                          R44
      335 LOADNIL                          R45
      336 LOADNIL                          R46
      337 NEWTABLE                         R47 16 0
      339 GETTABLEKS                       R48 R23 K63 ["new"]
      341 CALL                             R48 0 1
      342 GETTABLEKS                       R49 R24 K63 ["new"]
      344 NAMECALL                         R50 R48 K64 ["get"]
      346 CALL                             R50 1 -1
      347 CALL                             R49 -1 1
      348 GETTABLEKS                       R50 R25 K63 ["new"]
      350 NAMECALL                         R51 R48 K64 ["get"]
      352 CALL                             R51 1 -1
      353 CALL                             R50 -1 1
      354 GETTABLEKS                       R51 R26 K63 ["new"]
      356 NAMECALL                         R52 R48 K64 ["get"]
      358 CALL                             R52 1 -1
      359 CALL                             R51 -1 1
      360 JUMPIFNOT                        R7 ; [+2]
      361 LOADNIL                          R52
      362 JUMP                             ; [+6]
      363 GETTABLEKS                       R52 R27 K63 ["new"]
      365 NAMECALL                         R53 R48 K64 ["get"]
      367 CALL                             R53 1 -1
      368 CALL                             R52 -1 1
      369 JUMPIFNOT                        R7 ; [+2]
      370 LOADNIL                          R53
      371 JUMP                             ; [+6]
      372 GETTABLEKS                       R53 R30 K63 ["new"]
      374 NAMECALL                         R54 R48 K64 ["get"]
      376 CALL                             R54 1 -1
      377 CALL                             R53 -1 1
      378 JUMPIFNOT                        R7 ; [+2]
      379 LOADNIL                          R54
      380 JUMP                             ; [+9]
      381 JUMPIFNOT                        R4 ; [+7]
      382 GETTABLEKS                       R54 R31 K63 ["new"]
      384 NAMECALL                         R55 R48 K64 ["get"]
      386 CALL                             R55 1 -1
      387 CALL                             R54 -1 1
      388 JUMPIF                           R54 ; [+1]
      389 LOADNIL                          R54
      390 GETTABLEKS                       R55 R28 K63 ["new"]
      392 CALL                             R55 0 1
      393 GETTABLEKS                       R56 R29 K63 ["new"]
      395 NAMECALL                         R57 R48 K64 ["get"]
      397 CALL                             R57 1 -1
      398 CALL                             R56 -1 1
      399 GETTABLEKS                       R57 R34 K63 ["new"]
      401 NAMECALL                         R58 R48 K64 ["get"]
      403 CALL                             R58 1 -1
      404 CALL                             R57 -1 1
      405 GETTABLEKS                       R58 R32 K63 ["new"]
      407 NAMECALL                         R59 R48 K64 ["get"]
      409 CALL                             R59 1 -1
      410 CALL                             R58 -1 1
      411 GETTABLEKS                       R59 R33 K63 ["new"]
      413 NAMECALL                         R60 R48 K64 ["get"]
      415 CALL                             R60 1 -1
      416 CALL                             R59 -1 1
      417 NAMECALL                         R60 R48 K64 ["get"]
      419 CALL                             R60 1 1
      420 SETTABLEKS                       R60 R47 K65 ["networking"]
      422 SETTABLEKS                       R49 R47 K66 ["gameInfoController"]
      424 SETTABLEKS                       R50 R47 K67 ["gameMetadataController"]
      426 SETTABLEKS                       R51 R47 K68 ["groupMetadataController"]
      428 SETTABLEKS                       R52 R47 K69 ["gamePermissionsController"]
      430 SETTABLEKS                       R55 R47 K70 ["gameOptionsController"]
      432 SETTABLEKS                       R56 R47 K71 ["communicationController"]
      434 SETTABLEKS                       R53 R47 K72 ["monetizationController"]
      436 SETTABLEKS                       R54 R47 K73 ["devSubsController"]
      438 SETTABLEKS                       R57 R47 K74 ["universePermissionsController"]
      440 SETTABLEKS                       R58 R47 K75 ["placesController"]
      442 SETTABLEKS                       R59 R47 K76 ["policyInfoController"]
      444 GETTABLEKS                       R60 R16 K77 ["ThunkWithArgsMiddleware"]
      446 MOVE                             R61 R47
      447 CALL                             R60 1 1
      448 NEWTABLE                         R61 0 1
      450 MOVE                             R62 R60
      451 SETLIST                          R61 R62 1 [1]
      453 GETTABLEKS                       R62 R12 K78 ["Store"]
      455 GETTABLEKS                       R62 R62 K63 ["new"]
      457 MOVE                             R63 R20
      458 LOADNIL                          R64
      459 MOVE                             R65 R61
      460 CALL                             R62 3 1
      461 GETTABLEKS                       R63 R35 K79 ["Open"]
      463 GETTABLEKS                       R64 R2 K14 ["Src"]
      465 GETTABLEKS                       R64 R64 K80 ["Resources"]
      467 GETTABLEKS                       R64 R64 K81 ["SourceStrings"]
      469 GETTABLEKS                       R65 R2 K14 ["Src"]
      471 GETTABLEKS                       R65 R65 K80 ["Resources"]
      473 GETTABLEKS                       R65 R65 K82 ["LocalizedStrings"]
      475 GETTABLEKS                       R66 R15 K83 ["Localization"]
      477 GETTABLEKS                       R66 R66 K63 ["new"]
      479 DUPTABLE                         R67 K89 [{["pluginName"] = "GameSettings", ["stringResourceTable"], ["translationResourceTable"], ["libraries"]}]
      480 SETTABLEKS                       R64 R67 K86 ["stringResourceTable"]
      482 SETTABLEKS                       R65 R67 K87 ["translationResourceTable"]
      484 NEWTABLE                         R68 1 0
      486 GETTABLEKS                       R69 R14 K80 ["Resources"]
      488 GETTABLEKS                       R69 R69 K90 ["LOCALIZATION_PROJECT_NAME"]
      490 DUPTABLE                         R70 K91 [{"stringResourceTable", "translationResourceTable"}]
      491 GETTABLEKS                       R71 R14 K80 ["Resources"]
      493 GETTABLEKS                       R71 R71 K81 ["SourceStrings"]
      495 SETTABLEKS                       R71 R70 K86 ["stringResourceTable"]
      497 GETTABLEKS                       R71 R14 K80 ["Resources"]
      499 GETTABLEKS                       R71 R71 K82 ["LocalizedStrings"]
      501 SETTABLEKS                       R71 R70 K87 ["translationResourceTable"]
      503 SETTABLE                         R70 R68 R69
      504 SETTABLEKS                       R68 R67 K88 ["libraries"]
      506 CALL                             R66 1 1
      507 JUMPIFNOT                        R6 ; [+2]
      508 SETTABLEKS                       R66 R47 K92 ["localization"]
      510 NEWCLOSURE                       R67 P0
      511 CAPTURE                          REF R44
      512 NEWCLOSURE                       R68 P1
      513 CAPTURE                          VAL R17
      514 CAPTURE                          VAL R67
      515 CAPTURE                          VAL R0
      516 CAPTURE                          VAL R10
      517 CAPTURE                          VAL R3
      518 CAPTURE                          VAL R11
      519 CAPTURE                          VAL R21
      520 CAPTURE                          VAL R22
      521 CAPTURE                          VAL R66
      522 CAPTURE                          REF R44
      523 CAPTURE                          VAL R13
      524 NEWCLOSURE                       R69 P2
      525 CAPTURE                          REF R45
      526 CAPTURE                          VAL R42
      527 NEWCLOSURE                       R70 P3
      528 CAPTURE                          VAL R62
      529 CAPTURE                          VAL R38
      530 CAPTURE                          VAL R37
      531 CAPTURE                          VAL R35
      532 CAPTURE                          REF R44
      533 CAPTURE                          VAL R11
      534 CAPTURE                          REF R43
      535 CAPTURE                          VAL R5
      536 CAPTURE                          REF R46
      537 CAPTURE                          REF R45
      538 CAPTURE                          VAL R42
      539 CAPTURE                          VAL R41
      540 CAPTURE                          VAL R66
      541 CAPTURE                          VAL R19
      542 CAPTURE                          VAL R17
      543 CAPTURE                          VAL R67
      544 CAPTURE                          VAL R0
      545 CAPTURE                          VAL R10
      546 CAPTURE                          VAL R3
      547 CAPTURE                          VAL R21
      548 CAPTURE                          VAL R22
      549 CAPTURE                          VAL R13
      550 NEWCLOSURE                       R71 P4
      551 CAPTURE                          VAL R2
      552 CAPTURE                          REF R44
      553 CAPTURE                          VAL R0
      554 CAPTURE                          VAL R3
      555 CAPTURE                          VAL R8
      556 CAPTURE                          VAL R66
      557 CAPTURE                          VAL R70
      558 NEWCLOSURE                       R72 P5
      559 CAPTURE                          VAL R62
      560 CAPTURE                          VAL R35
      561 CAPTURE                          VAL R11
      562 CAPTURE                          VAL R21
      563 CAPTURE                          VAL R68
      564 CAPTURE                          VAL R22
      565 CAPTURE                          VAL R0
      566 CAPTURE                          VAL R66
      567 CAPTURE                          REF R44
      568 CAPTURE                          VAL R18
      569 CAPTURE                          VAL R70
      570 CAPTURE                          VAL R36
      571 CAPTURE                          VAL R39
      572 CAPTURE                          VAL R40
      573 CAPTURE                          VAL R37
      574 CAPTURE                          REF R43
      575 CAPTURE                          VAL R5
      576 CAPTURE                          REF R46
      577 CAPTURE                          VAL R2
      578 CAPTURE                          VAL R42
      579 CAPTURE                          REF R45
      580 NEWCLOSURE                       R73 P6
      581 CAPTURE                          VAL R0
      582 CAPTURE                          VAL R2
      583 CAPTURE                          VAL R1
      584 CAPTURE                          VAL R9
      585 CAPTURE                          VAL R71
      586 CAPTURE                          VAL R72
      587 CAPTURE                          VAL R62
      588 CAPTURE                          REF R63
      589 CAPTURE                          VAL R35
      590 CAPTURE                          VAL R67
      591 MOVE                             R74 R73
      592 CALL                             R74 0 0
      593 CLOSEUPVALS                      R43
      594 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_17]
        2 RETURN                           R0 1
