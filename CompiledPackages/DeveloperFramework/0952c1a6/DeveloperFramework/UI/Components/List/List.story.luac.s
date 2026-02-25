PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 16
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K2 [{"text", "icon"}]
        7 LOADK                            R8 K3 ["Row %d"]
        8 MOVE                             R10 R4
        9 NAMECALL                         R8 R8 K4 ["format"]
       11 CALL                             R8 2 1
       12 SETTABLEKS                       R8 R7 K0 ["text"]
       14 DUPTABLE                         R8 K7 [{"Image", "Size"}]
       15 LOADK                            R9 K8 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       16 SETTABLEKS                       R9 R8 K5 ["Image"]
       18 GETIMPORT                        R9 K11 [UDim2.new]
       20 LOADN                            R10 0
       21 LOADN                            R11 16
       22 LOADN                            R12 0
       23 LOADN                            R13 16
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K6 ["Size"]
       27 SETTABLEKS                       R8 R7 K1 ["icon"]
       29 FASTCALL2                        TABLE_INSERT R1 R7 ; [+3]
       31 MOVE                             R6 R1
       32 GETUPVAL                         R5 0
       33 CALL                             R5 2 0
       34 FORNLOOP                         R2
       35 DUPTABLE                         R2 K13 [{"rows"}]
       36 SETTABLEKS                       R1 R2 K12 ["rows"]
       38 SETTABLEKS                       R2 R0 K14 ["state"]
       40 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"Style", "Size"}]
        7 LOADK                            R5 K5 ["BorderBox"]
        8 SETTABLEKS                       R5 R4 K2 ["Style"]
       10 GETIMPORT                        R5 K8 [UDim2.fromOffset]
       12 LOADN                            R6 200
       13 LOADN                            R7 144
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K3 ["Size"]
       17 DUPTABLE                         R5 K10 [{"List"}]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K1 ["createElement"]
       21 GETUPVAL                         R7 2
       22 DUPTABLE                         R8 K12 [{"Rows"}]
       23 GETTABLEKS                       R9 R1 K13 ["rows"]
       25 SETTABLEKS                       R9 R8 K11 ["Rows"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K9 ["List"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"expandedRow"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["expandedRow"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWTABLE                         R1 0 0
        8 LOADN                            R4 1
        9 LOADN                            R2 16
       10 LOADN                            R3 1
       11 FORNPREP                         R2
       12 DUPTABLE                         R7 K6 [{"key", "text", "icon"}]
       13 FASTCALL1                        TOSTRING R4 ; [+3]
       14 MOVE                             R9 R4
       15 GETIMPORT                        R8 K8 [tostring]
       17 CALL                             R8 1 1
       18 SETTABLEKS                       R8 R7 K3 ["key"]
       20 LOADK                            R8 K9 ["Row %d"]
       21 MOVE                             R10 R4
       22 NAMECALL                         R8 R8 K10 ["format"]
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K4 ["text"]
       27 DUPTABLE                         R8 K13 [{"Image", "Size"}]
       28 LOADK                            R9 K14 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       29 SETTABLEKS                       R9 R8 K11 ["Image"]
       31 GETIMPORT                        R9 K17 [UDim2.new]
       33 LOADN                            R10 0
       34 LOADN                            R11 16
       35 LOADN                            R12 0
       36 LOADN                            R13 16
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K12 ["Size"]
       40 SETTABLEKS                       R8 R7 K5 ["icon"]
       42 FASTCALL2                        TABLE_INSERT R1 R7 ; [+3]
       44 MOVE                             R6 R1
       45 GETUPVAL                         R5 0
       46 CALL                             R5 2 0
       47 FORNLOOP                         R2
       48 DUPTABLE                         R2 K19 [{"rows"}]
       49 SETTABLEKS                       R1 R2 K18 ["rows"]
       51 SETTABLEKS                       R2 R0 K2 ["state"]
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 LOADK                            R5 K1 ["TextLabel"]
        4 DUPTABLE                         R6 K7 [{"BackgroundColor3", "LayoutOrder", "Position", "Size", "Text"}]
        5 GETIMPORT                        R7 K10 [Color3.fromHex]
        7 LOADK                            R8 K11 ["#ffa078"]
        8 CALL                             R7 1 1
        9 SETTABLEKS                       R7 R6 K2 ["BackgroundColor3"]
       11 SETTABLEKS                       R1 R6 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R2 R6 K4 ["Position"]
       15 SETTABLEKS                       R3 R6 K5 ["Size"]
       17 LOADK                            R7 K12 ["Custom Header!!"]
       18 SETTABLEKS                       R7 R6 K6 ["Text"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 LOADK                            R5 K1 ["TextLabel"]
        4 DUPTABLE                         R6 K7 [{"BackgroundColor3", "LayoutOrder", "Position", "Size", "Text"}]
        5 GETIMPORT                        R7 K10 [Color3.fromHex]
        7 LOADK                            R8 K11 ["#ccfaff"]
        8 CALL                             R7 1 1
        9 SETTABLEKS                       R7 R6 K2 ["BackgroundColor3"]
       11 SETTABLEKS                       R1 R6 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R2 R6 K4 ["Position"]
       15 SETTABLEKS                       R3 R6 K5 ["Size"]
       17 LOADK                            R8 K12 ["Expanded "]
       18 GETTABLEKS                       R9 R0 K13 ["text"]
       20 CONCAT                           R7 R8 R9
       21 SETTABLEKS                       R7 R6 K6 ["Text"]
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expandedRow"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["key"]
        5 SETTABLEKS                       R3 R2 K0 ["expandedRow"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R4 8 0
        2 SETTABLEKS                       R1 R4 K0 ["LayoutOrder"]
        4 SETTABLEKS                       R2 R4 K1 ["Position"]
        6 SETTABLEKS                       R3 R4 K2 ["Size"]
        8 GETTABLEKS                       R5 R0 K3 ["text"]
       10 SETTABLEKS                       R5 R4 K4 ["Text"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K5 ["Event"]
       15 GETTABLEKS                       R5 R6 K6 ["Activated"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 SETTABLE                         R6 R4 R5
       21 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 NEWTABLE                         R2 1 0
        4 DUPTABLE                         R3 K3 [{"AbsoluteSize", "OnRender"}]
        5 GETIMPORT                        R4 K6 [Vector2.new]
        7 LOADN                            R5 200
        8 LOADN                            R6 20
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K1 ["AbsoluteSize"]
       12 DUPCLOSURE                       R4 K7 [PROTO_3]
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R4 R3 K2 ["OnRender"]
       16 SETTABLEKS                       R3 R2 K8 ["HEADER"]
       18 GETTABLEKS                       R3 R1 K9 ["expandedRow"]
       20 JUMPIFNOT                        R3 ; [+15]
       21 GETTABLEKS                       R3 R1 K9 ["expandedRow"]
       23 DUPTABLE                         R4 K3 [{"AbsoluteSize", "OnRender"}]
       24 GETIMPORT                        R5 K6 [Vector2.new]
       26 LOADN                            R6 200
       27 LOADN                            R7 50
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K1 ["AbsoluteSize"]
       31 DUPCLOSURE                       R5 K10 [PROTO_4]
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R5 R4 K2 ["OnRender"]
       35 SETTABLE                         R4 R2 R3
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K11 ["createElement"]
       39 GETUPVAL                         R4 1
       40 DUPTABLE                         R5 K14 [{"Style", "Size"}]
       41 LOADK                            R6 K15 ["BorderBox"]
       42 SETTABLEKS                       R6 R5 K12 ["Style"]
       44 GETIMPORT                        R6 K18 [UDim2.fromOffset]
       46 LOADN                            R7 200
       47 LOADN                            R8 144
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K13 ["Size"]
       51 DUPTABLE                         R6 K20 [{"List"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K11 ["createElement"]
       55 GETUPVAL                         R8 2
       56 DUPTABLE                         R9 K25 [{"GetRowProps", "Rows", "RowComponent", "SpecialRows"}]
       57 NEWCLOSURE                       R10 P2
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R10 R9 K21 ["GetRowProps"]
       62 GETTABLEKS                       R10 R1 K26 ["rows"]
       64 SETTABLEKS                       R10 R9 K22 ["Rows"]
       66 LOADK                            R10 K27 ["TextButton"]
       67 SETTABLEKS                       R10 R9 K23 ["RowComponent"]
       69 SETTABLEKS                       R2 R9 K24 ["SpecialRows"]
       71 CALL                             R7 2 1
       72 SETTABLEKS                       R7 R6 K19 ["List"]
       74 CALL                             R3 3 -1
       75 RETURN                           R3 -1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 MOVE                             R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K1 [{"text"}]
        7 LOADK                            R9 K2 ["Row %*"]
        8 MOVE                             R11 R4
        9 NAMECALL                         R9 R9 K3 ["format"]
       11 CALL                             R9 2 1
       12 MOVE                             R8 R9
       13 SETTABLEKS                       R8 R7 K0 ["text"]
       15 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [table.insert]
       20 CALL                             R5 2 0
       21 FORNLOOP                         R2
       22 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 ADD                              R2 R3 R0
        2 SUBK                             R1 R2 K0 [1]
        3 LOADK                            R3 K1 ["Rows %* - %*"]
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 GETUPVAL                         R3 0
       11 ADD                              R3 R3 R0
       12 SETUPVAL                         R3 0
       13 DUPTABLE                         R3 K6 [{"CellCount", "IsCollapsed", "Text"}]
       14 SETTABLEKS                       R0 R3 K3 ["CellCount"]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K4 ["IsCollapsed"]
       19 SETTABLEKS                       R2 R3 K5 ["Text"]
       21 RETURN                           R3 1

PROTO_10:
        0 LOADN                            R1 1
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R1
        5 CALL                             R2 2 -1
        6 CLOSEUPVALS                      R1
        7 RETURN                           R2 -1

PROTO_11:
        0 DUPTABLE                         R4 K2 [{"rows", "groups"}]
        1 GETTABLEKS                       R5 R1 K3 ["Rows"]
        3 SETTABLEKS                       R5 R4 K0 ["rows"]
        5 GETTABLEKS                       R5 R1 K4 ["RowGroups"]
        7 SETTABLEKS                       R5 R4 K1 ["groups"]
        9 NAMECALL                         R2 R0 K5 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R4 K4 [{"LayoutOrder", "Position", "Size", "Text"}]
        1 SETTABLEKS                       R1 R4 K0 ["LayoutOrder"]
        3 SETTABLEKS                       R2 R4 K1 ["Position"]
        5 SETTABLEKS                       R3 R4 K2 ["Size"]
        7 GETTABLEKS                       R5 R0 K5 ["text"]
        9 SETTABLEKS                       R5 R4 K3 ["Text"]
       11 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R1 ; [+11]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K1 [{"IsCollapsed"}]
        6 GETTABLEKS                       R6 R0 K0 ["IsCollapsed"]
        8 NOT                              R5 R6
        9 SETTABLEKS                       R5 R4 K0 ["IsCollapsed"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 RETURN                           R0 1

PROTO_14:
        0 DUPTABLE                         R1 K1 [{"groups"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["groups"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["groups"]
       10 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{"GetRowProps", "Rows", "RowComponent", "RowGroups", "RowGroupHeader", "Size"}]
        9 DUPCLOSURE                       R6 K10 [PROTO_12]
       10 SETTABLEKS                       R6 R5 K3 ["GetRowProps"]
       12 GETTABLEKS                       R6 R2 K11 ["rows"]
       14 SETTABLEKS                       R6 R5 K4 ["Rows"]
       16 LOADK                            R6 K12 ["TextButton"]
       17 SETTABLEKS                       R6 R5 K5 ["RowComponent"]
       19 GETTABLEKS                       R6 R2 K13 ["groups"]
       21 SETTABLEKS                       R6 R5 K6 ["RowGroups"]
       23 GETUPVAL                         R6 2
       24 DUPTABLE                         R7 K16 [{"Collapsible", "OnExpandCollapseClicked"}]
       25 LOADB                            R8 1
       26 SETTABLEKS                       R8 R7 K14 ["Collapsible"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R8 R7 K15 ["OnExpandCollapseClicked"]
       34 GETTABLEKS                       R8 R1 K7 ["RowGroupHeader"]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K7 ["RowGroupHeader"]
       39 GETIMPORT                        R6 K19 [UDim2.fromOffset]
       41 LOADN                            R7 200
       42 LOADN                            R8 144
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K8 ["Size"]
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["List"]
       23 GETTABLEKS                       R4 R2 K9 ["Pane"]
       25 GETIMPORT                        R5 K12 [table.insert]
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R8 R0 K4 ["Parent"]
       31 GETTABLEKS                       R7 R8 K13 ["Dash"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K14 ["join"]
       36 GETTABLEKS                       R8 R6 K15 ["map"]
       38 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       40 LOADK                            R11 K17 ["ListStory"]
       41 NAMECALL                         R9 R9 K18 ["extend"]
       43 CALL                             R9 2 1
       44 DUPCLOSURE                       R10 K19 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R10 R9 K20 ["init"]
       48 DUPCLOSURE                       R10 K21 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R10 R9 K22 ["render"]
       54 GETTABLEKS                       R10 R1 K16 ["PureComponent"]
       56 LOADK                            R12 K17 ["ListStory"]
       57 NAMECALL                         R10 R10 K18 ["extend"]
       59 CALL                             R10 2 1
       60 DUPCLOSURE                       R11 K23 [PROTO_2]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R11 R10 K20 ["init"]
       64 DUPCLOSURE                       R11 K24 [PROTO_7]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R11 R10 K22 ["render"]
       70 DUPCLOSURE                       R11 K25 [PROTO_8]
       71 DUPCLOSURE                       R12 K26 [PROTO_10]
       72 CAPTURE                          VAL R8
       73 GETTABLEKS                       R13 R1 K16 ["PureComponent"]
       75 LOADK                            R15 K27 ["RowGroupsStory"]
       76 NAMECALL                         R13 R13 K18 ["extend"]
       78 CALL                             R13 2 1
       79 DUPCLOSURE                       R14 K28 [PROTO_11]
       80 SETTABLEKS                       R14 R13 K20 ["init"]
       82 DUPCLOSURE                       R14 K29 [PROTO_16]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R14 R13 K22 ["render"]
       89 DUPTABLE                         R14 K31 [{"stories"}]
       90 NEWTABLE                         R15 0 3
       92 DUPTABLE                         R16 K34 [{"name", "story"}]
       93 LOADK                            R17 K35 ["Basic"]
       94 SETTABLEKS                       R17 R16 K32 ["name"]
       96 SETTABLEKS                       R9 R16 K33 ["story"]
       98 DUPTABLE                         R17 K37 [{"name", "description", "story"}]
       99 LOADK                            R18 K38 ["SpecialRows"]
      100 SETTABLEKS                       R18 R17 K32 ["name"]
      102 LOADK                            R18 K39 ["Example using SpecialRows to make a header and expanded content"]
      103 SETTABLEKS                       R18 R17 K36 ["description"]
      105 SETTABLEKS                       R10 R17 K33 ["story"]
      107 DUPTABLE                         R18 K34 [{"name", "story"}]
      108 LOADK                            R19 K40 ["RowGroups"]
      109 SETTABLEKS                       R19 R18 K32 ["name"]
      111 GETTABLEKS                       R19 R1 K41 ["createElement"]
      113 MOVE                             R20 R13
      114 DUPTABLE                         R21 K43 [{"Rows", "RowGroups"}]
      115 MOVE                             R22 R11
      116 LOADN                            R23 16
      117 CALL                             R22 1 1
      118 SETTABLEKS                       R22 R21 K42 ["Rows"]
      120 NEWTABLE                         R23 0 3
      122 LOADN                            R24 8
      123 LOADN                            R25 4
      124 LOADN                            R26 4
      125 SETLIST                          R23 R24 3 [1]
      127 LOADN                            R24 1
      128 MOVE                             R25 R8
      129 MOVE                             R26 R23
      130 NEWCLOSURE                       R27 P8
      131 CAPTURE                          REF R24
      132 CALL                             R25 2 1
      133 MOVE                             R22 R25
      134 CLOSEUPVALS                      R24
      135 SETTABLEKS                       R22 R21 K40 ["RowGroups"]
      137 CALL                             R19 2 1
      138 SETTABLEKS                       R19 R18 K33 ["story"]
      140 SETLIST                          R15 R16 3 [1]
      142 SETTABLEKS                       R15 R14 K30 ["stories"]
      144 RETURN                           R14 1
