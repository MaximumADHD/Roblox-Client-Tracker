PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{"Id", "Label", "Value"}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["createItemId"]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["Id"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["Name"]
       13 SETTABLEKS                       R2 R1 K1 ["Label"]
       15 GETUPVAL                         R2 1
       16 SETTABLEKS                       R2 R1 K2 ["Value"]
       18 SETLIST                          R0 R1 1 [1]
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R2 3
       22 NAMECALL                         R2 R2 K6 ["GetChildren"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 1
       26 GETUPVAL                         R2 3
       27 NAMECALL                         R2 R2 K6 ["GetChildren"]
       29 CALL                             R2 1 3
       30 FORGPREP                         R2
       31 DUPTABLE                         R9 K3 [{"Id", "Label", "Value"}]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K4 ["createItemId"]
       35 MOVE                             R11 R6
       36 CALL                             R10 1 1
       37 SETTABLEKS                       R10 R9 K0 ["Id"]
       39 GETTABLEKS                       R10 R6 K5 ["Name"]
       41 SETTABLEKS                       R10 R9 K1 ["Label"]
       43 SETTABLEKS                       R6 R9 K2 ["Value"]
       45 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       47 MOVE                             R8 R0
       48 GETIMPORT                        R7 K9 [table.insert]
       50 CALL                             R7 2 0
       51 FORGLOOP                         R2 2 ; [-21]
       53 GETUPVAL                         R2 4
       54 NAMECALL                         R2 R2 K6 ["GetChildren"]
       56 CALL                             R2 1 3
       57 FORGPREP                         R2
       58 LOADK                            R9 K10 ["PluginGui"]
       59 NAMECALL                         R7 R6 K11 ["IsA"]
       61 CALL                             R7 2 1
       62 JUMPIFNOT                        R7 ; [+30]
       63 GETTABLEKS                       R8 R6 K12 ["Plugin"]
       65 GETTABLE                         R7 R1 R8
       66 JUMPIFNOT                        R7 ; [+26]
       67 LOADK                            R9 K13 ["StyleBase"]
       68 LOADB                            R10 1
       69 NAMECALL                         R7 R6 K14 ["FindFirstChildWhichIsA"]
       71 CALL                             R7 3 1
       72 JUMPIFNOT                        R7 ; [+20]
       73 DUPTABLE                         R9 K3 [{"Id", "Label", "Value"}]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K4 ["createItemId"]
       77 MOVE                             R11 R6
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K0 ["Id"]
       81 GETTABLEKS                       R10 R6 K5 ["Name"]
       83 SETTABLEKS                       R10 R9 K1 ["Label"]
       85 SETTABLEKS                       R6 R9 K2 ["Value"]
       87 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       89 MOVE                             R8 R0
       90 GETIMPORT                        R7 K9 [table.insert]
       92 CALL                             R7 2 0
       93 FORGLOOP                         R2 2 ; [-36]
       95 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["Value"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["PluginGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["Plugin"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+18]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["add"]
       17 LOADK                            R4 K4 ["Name"]
       18 NAMECALL                         R2 R0 K5 ["GetPropertyChangedSignal"]
       20 CALL                             R2 2 1
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R2 R2 K6 ["Connect"]
       26 CALL                             R2 2 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["PluginGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["Plugin"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 2
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 SETLIST                          R0 R1 2 [1]
        6 MOVE                             R1 R0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K0 ["add"]
       13 GETTABLEKS                       R7 R5 K1 ["ChildAdded"]
       15 NEWCLOSURE                       R9 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R7 R7 K2 ["Connect"]
       21 CALL                             R7 2 -1
       22 CALL                             R6 -1 0
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K0 ["add"]
       26 GETTABLEKS                       R7 R5 K3 ["ChildRemoved"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 NAMECALL                         R7 R7 K2 ["Connect"]
       33 CALL                             R7 2 -1
       34 CALL                             R6 -1 0
       35 NAMECALL                         R6 R5 K4 ["GetChildren"]
       37 CALL                             R6 1 3
       38 FORGPREP                         R6
       39 LOADK                            R13 K5 ["PluginGui"]
       40 NAMECALL                         R11 R10 K6 ["IsA"]
       42 CALL                             R11 2 1
       43 JUMPIF                           R11 ; [+5]
       44 LOADK                            R13 K7 ["Plugin"]
       45 NAMECALL                         R11 R10 K6 ["IsA"]
       47 CALL                             R11 2 1
       48 JUMPIFNOT                        R11 ; [+14]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K0 ["add"]
       52 LOADK                            R14 K8 ["Name"]
       53 NAMECALL                         R12 R10 K9 ["GetPropertyChangedSignal"]
       55 CALL                             R12 2 1
       56 NEWCLOSURE                       R14 P2
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 NAMECALL                         R12 R12 K2 ["Connect"]
       61 CALL                             R12 2 -1
       62 CALL                             R11 -1 0
       63 FORGLOOP                         R6 2 ; [-25]
       65 FORGLOOP                         R1 2 ; [-56]
       67 GETUPVAL                         R1 3
       68 GETUPVAL                         R2 4
       69 CALL                             R2 0 1
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["Localization"]
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 3
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U4
       12 NEWTABLE                         R7 0 0
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 5
       16 GETUPVAL                         R7 6
       17 CALL                             R7 0 1
       18 CALL                             R6 1 2
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          VAL R7
       21 CAPTURE                          UPVAL U6
       22 GETUPVAL                         R9 7
       23 NEWCLOSURE                       R10 P2
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R7
       28 CAPTURE                          UPVAL U6
       29 NEWTABLE                         R11 0 0
       31 CALL                             R9 2 0
       32 GETTABLEKS                       R9 R0 K1 ["Source"]
       34 JUMPIFNOT                        R9 ; [+5]
       35 GETTABLEKS                       R9 R0 K1 ["Source"]
       37 GETTABLEKS                       R9 R9 K2 ["Parent"]
       39 JUMPIF                           R9 ; [+5]
       40 MOVE                             R9 R1
       41 GETUPVAL                         R10 4
       42 GETUPVAL                         R11 10
       43 CALL                             R10 1 -1
       44 CALL                             R9 -1 0
       45 LENGTH                           R10 R6
       46 LOADN                            R11 1
       47 JUMPIFNOTLT                      R11 R10 ; [+79]
       49 GETUPVAL                         R9 11
       50 GETTABLEKS                       R9 R9 K3 ["createElement"]
       52 GETUPVAL                         R10 12
       53 NEWTABLE                         R11 2 0
       55 GETTABLEKS                       R12 R0 K4 ["LayoutOrder"]
       57 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
       59 GETUPVAL                         R12 11
       60 GETTABLEKS                       R12 R12 K5 ["Tag"]
       62 LOADK                            R13 K6 ["Paper X-Column X-FitY"]
       63 SETTABLE                         R13 R11 R12
       64 DUPTABLE                         R12 K8 [{"Source", "SourceSelect"}]
       65 GETUPVAL                         R13 11
       66 GETTABLEKS                       R13 R13 K3 ["createElement"]
       68 GETUPVAL                         R14 13
       69 NEWTABLE                         R15 4 0
       71 LOADN                            R16 1
       72 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
       74 LOADK                            R18 K7 ["SourceSelect"]
       75 LOADK                            R19 K1 ["Source"]
       76 NAMECALL                         R16 R3 K9 ["getText"]
       78 CALL                             R16 3 1
       79 SETTABLEKS                       R16 R15 K10 ["Text"]
       81 GETUPVAL                         R16 11
       82 GETTABLEKS                       R16 R16 K5 ["Tag"]
       84 LOADK                            R17 K11 ["Left Truncate X-FitY X-PadS"]
       85 SETTABLE                         R17 R15 R16
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K1 ["Source"]
       89 GETUPVAL                         R13 11
       90 GETTABLEKS                       R13 R13 K3 ["createElement"]
       92 GETUPVAL                         R14 14
       93 DUPTABLE                         R15 K17 [{"Items", "LayoutOrder", "OnItemActivated", "SelectedId", "Size", "TextTruncate"}]
       94 SETTABLEKS                       R6 R15 K12 ["Items"]
       96 LOADN                            R16 2
       97 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
       99 SETTABLEKS                       R5 R15 K13 ["OnItemActivated"]
      101 GETUPVAL                         R16 15
      102 GETTABLEKS                       R16 R16 K18 ["createItemId"]
      104 GETTABLEKS                       R17 R0 K1 ["Source"]
      106 CALL                             R16 1 1
      107 SETTABLEKS                       R16 R15 K14 ["SelectedId"]
      109 GETIMPORT                        R16 K21 [UDim2.new]
      111 LOADN                            R17 1
      112 LOADN                            R18 0
      113 LOADN                            R19 0
      114 GETUPVAL                         R20 16
      115 CALL                             R16 4 1
      116 SETTABLEKS                       R16 R15 K15 ["Size"]
      118 GETIMPORT                        R16 K24 [Enum.TextTruncate.SplitWord]
      120 SETTABLEKS                       R16 R15 K16 ["TextTruncate"]
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K7 ["SourceSelect"]
      125 CALL                             R9 3 1
      126 RETURN                           R9 1
      127 LOADNIL                          R9
      128 RETURN                           R9 1

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"Source"}]
        1 GETTABLEKS                       R2 R0 K2 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["Source"]
        5 SETTABLEKS                       R2 R1 K0 ["Source"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["RoactRodux"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["React"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["useCallback"]
       31 GETTABLEKS                       R5 R3 K13 ["useEffect"]
       33 GETTABLEKS                       R6 R3 K14 ["useState"]
       35 GETIMPORT                        R7 K8 [require]
       37 GETTABLEKS                       R8 R1 K15 ["Src"]
       39 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       41 GETTABLEKS                       R8 R8 K17 ["useDispatch"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R9 R1 K15 ["Src"]
       48 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       50 GETTABLEKS                       R9 R9 K18 ["useFrameworkContext"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R10 R1 K15 ["Src"]
       57 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       59 GETTABLEKS                       R10 R10 K19 ["useSignalConnectionList"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R1 K15 ["Src"]
       64 GETTABLEKS                       R10 R10 K20 ["Actions"]
       66 GETIMPORT                        R11 K8 [require]
       68 GETTABLEKS                       R12 R10 K21 ["Window"]
       70 GETTABLEKS                       R12 R12 K22 ["SetSource"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K8 [require]
       75 GETTABLEKS                       R13 R1 K9 ["Packages"]
       77 GETTABLEKS                       R13 R13 K23 ["Framework"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R13 R12 K24 ["UI"]
       82 GETTABLEKS                       R14 R13 K25 ["Pane"]
       84 GETTABLEKS                       R15 R13 K26 ["SelectInput"]
       86 GETTABLEKS                       R16 R13 K27 ["TextLabel"]
       88 GETIMPORT                        R17 K8 [require]
       90 GETTABLEKS                       R18 R1 K9 ["Packages"]
       92 GETTABLEKS                       R18 R18 K28 ["Dash"]
       94 CALL                             R17 1 1
       95 GETTABLEKS                       R18 R17 K29 ["collectSet"]
       97 GETIMPORT                        R19 K8 [require]
       99 GETTABLEKS                       R20 R1 K15 ["Src"]
      101 GETTABLEKS                       R20 R20 K30 ["Testing"]
      103 GETTABLEKS                       R20 R20 K31 ["ServiceWrapper"]
      105 CALL                             R19 1 1
      106 GETTABLEKS                       R20 R19 K32 ["new"]
      108 LOADK                            R21 K33 ["PluginDebugService"]
      109 CALL                             R20 1 1
      110 NAMECALL                         R20 R20 K34 ["getInstance"]
      112 CALL                             R20 1 1
      113 GETTABLEKS                       R21 R19 K32 ["new"]
      115 LOADK                            R22 K35 ["PluginGuiService"]
      116 CALL                             R21 1 1
      117 NAMECALL                         R21 R21 K34 ["getInstance"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K8 [require]
      122 GETTABLEKS                       R23 R1 K15 ["Src"]
      124 GETTABLEKS                       R23 R23 K36 ["Util"]
      126 GETTABLEKS                       R23 R23 K37 ["TreeTableHelpers"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K8 [require]
      131 GETTABLEKS                       R24 R1 K15 ["Src"]
      133 GETTABLEKS                       R24 R24 K38 ["Reducers"]
      135 GETTABLEKS                       R24 R24 K39 ["RootReducer"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K8 [require]
      140 GETTABLEKS                       R25 R1 K15 ["Src"]
      142 GETTABLEKS                       R25 R25 K40 ["Types"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K8 [require]
      147 GETTABLEKS                       R26 R1 K15 ["Src"]
      149 GETTABLEKS                       R26 R26 K41 ["Resources"]
      151 GETTABLEKS                       R26 R26 K42 ["PluginStyles"]
      153 CALL                             R25 1 1
      154 LOADK                            R28 K43 ["SelectInputHeight"]
      155 NAMECALL                         R26 R25 K44 ["GetAttribute"]
      157 CALL                             R26 2 1
      158 DUPCLOSURE                       R27 K45 [PROTO_0]
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R21
      164 DUPCLOSURE                       R28 K46 [PROTO_8]
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R27
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R26
      182 GETTABLEKS                       R29 R2 K47 ["connect"]
      184 DUPCLOSURE                       R30 K48 [PROTO_9]
      185 CALL                             R29 1 1
      186 MOVE                             R30 R28
      187 CALL                             R29 1 -1
      188 RETURN                           R29 -1
