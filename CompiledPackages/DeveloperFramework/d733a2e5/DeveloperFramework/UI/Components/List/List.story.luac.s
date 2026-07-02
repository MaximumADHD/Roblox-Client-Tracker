PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 10000
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K2 [{"text", "icon"}]
        7 LOADK                            R8 K3 ["Row %d"]
        8 MOVE                             R10 R4
        9 NAMECALL                         R8 R8 K4 ["format"]
       11 CALL                             R8 2 1
       12 SETTABLEKS                       R8 R7 K0 ["text"]
       14 DUPTABLE                         R8 K8 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       15 GETIMPORT                        R9 K11 [UDim2.new]
       17 LOADN                            R10 0
       18 LOADN                            R11 16
       19 LOADN                            R12 0
       20 LOADN                            R13 16
       21 CALL                             R9 4 1
       22 SETTABLEKS                       R9 R8 K7 ["Size"]
       24 SETTABLEKS                       R8 R7 K1 ["icon"]
       26 FASTCALL2                        TABLE_INSERT R1 R7 ; [+3]
       28 MOVE                             R6 R1
       29 GETUPVAL                         R5 0
       30 CALL                             R5 2 0
       31 FORNLOOP                         R2
       32 DUPTABLE                         R2 K13 [{"rows"}]
       33 SETTABLEKS                       R1 R2 K12 ["rows"]
       35 SETTABLEKS                       R2 R0 K14 ["state"]
       37 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{["Style"] = "BorderBox", ["Size"]}]
        7 GETIMPORT                        R5 K8 [UDim2.fromOffset]
        9 LOADN                            R6 200
       10 LOADN                            R7 400
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K4 ["Size"]
       14 DUPTABLE                         R5 K10 [{"List"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K12 [{"Rows"}]
       20 GETTABLEKS                       R9 R1 K13 ["rows"]
       22 SETTABLEKS                       R9 R8 K11 ["Rows"]
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K9 ["List"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWTABLE                         R1 0 0
        5 LOADN                            R4 1
        6 LOADN                            R2 10000
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 DUPTABLE                         R7 K7 [{"key", "text", "icon"}]
       10 FASTCALL1                        TOSTRING R4 ; [+3]
       11 MOVE                             R9 R4
       12 GETIMPORT                        R8 K9 [tostring]
       14 CALL                             R8 1 1
       15 SETTABLEKS                       R8 R7 K4 ["key"]
       17 LOADK                            R8 K10 ["Row %d"]
       18 MOVE                             R10 R4
       19 NAMECALL                         R8 R8 K11 ["format"]
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K5 ["text"]
       24 DUPTABLE                         R8 K15 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       25 GETIMPORT                        R9 K18 [UDim2.new]
       27 LOADN                            R10 0
       28 LOADN                            R11 16
       29 LOADN                            R12 0
       30 LOADN                            R13 16
       31 CALL                             R9 4 1
       32 SETTABLEKS                       R9 R8 K14 ["Size"]
       34 SETTABLEKS                       R8 R7 K6 ["icon"]
       36 FASTCALL2                        TABLE_INSERT R1 R7 ; [+3]
       38 MOVE                             R6 R1
       39 GETUPVAL                         R5 0
       40 CALL                             R5 2 0
       41 FORNLOOP                         R2
       42 DUPTABLE                         R2 K20 [{"rows"}]
       43 SETTABLEKS                       R1 R2 K19 ["rows"]
       45 SETTABLEKS                       R2 R0 K3 ["state"]
       47 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 LOADK                            R5 K1 ["TextLabel"]
        4 DUPTABLE                         R6 K8 [{["BackgroundColor3"], ["LayoutOrder"], ["Position"], ["Size"], ["Text"] = "Custom Header!!"}]
        5 GETIMPORT                        R7 K11 [Color3.fromHex]
        7 LOADK                            R8 K12 ["#ffa078"]
        8 CALL                             R7 1 1
        9 SETTABLEKS                       R7 R6 K2 ["BackgroundColor3"]
       11 SETTABLEKS                       R1 R6 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R2 R6 K4 ["Position"]
       15 SETTABLEKS                       R3 R6 K5 ["Size"]
       17 CALL                             R4 2 -1
       18 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["key"]
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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["Event"]
       15 GETTABLEKS                       R5 R5 K6 ["Activated"]
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
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K11 ["createElement"]
       39 GETUPVAL                         R4 1
       40 DUPTABLE                         R5 K15 [{["Style"] = "BorderBox", ["Size"]}]
       41 GETIMPORT                        R6 K18 [UDim2.fromOffset]
       43 LOADN                            R7 200
       44 LOADN                            R8 400
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K14 ["Size"]
       48 DUPTABLE                         R6 K20 [{"List"}]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K11 ["createElement"]
       52 GETUPVAL                         R8 2
       53 DUPTABLE                         R9 K26 [{["GetRowProps"], ["Rows"], ["RowComponent"] = "TextButton", ["SpecialRows"]}]
       54 NEWCLOSURE                       R10 P2
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R10 R9 K21 ["GetRowProps"]
       59 GETTABLEKS                       R10 R1 K27 ["rows"]
       61 SETTABLEKS                       R10 R9 K22 ["Rows"]
       63 SETTABLEKS                       R2 R9 K25 ["SpecialRows"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K19 ["List"]
       68 CALL                             R3 3 -1
       69 RETURN                           R3 -1

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
       13 DUPTABLE                         R3 K7 [{["CellCount"], ["IsCollapsed"] = False, ["Text"]}]
       14 SETTABLEKS                       R0 R3 K3 ["CellCount"]
       16 SETTABLEKS                       R2 R3 K6 ["Text"]
       18 RETURN                           R3 1

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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K10 [{["GetRowProps"], ["Rows"], ["RowComponent"] = "TextButton", ["RowGroups"], ["RowGroupHeader"], ["Size"]}]
        9 DUPCLOSURE                       R6 K11 [PROTO_12]
       10 SETTABLEKS                       R6 R5 K3 ["GetRowProps"]
       12 GETTABLEKS                       R6 R2 K12 ["rows"]
       14 SETTABLEKS                       R6 R5 K4 ["Rows"]
       16 GETTABLEKS                       R6 R2 K13 ["groups"]
       18 SETTABLEKS                       R6 R5 K7 ["RowGroups"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K17 [{["Collapsible"] = True, ["OnExpandCollapseClicked"]}]
       22 NEWCLOSURE                       R8 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R8 R7 K16 ["OnExpandCollapseClicked"]
       28 GETTABLEKS                       R8 R1 K8 ["RowGroupHeader"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K8 ["RowGroupHeader"]
       33 GETIMPORT                        R6 K20 [UDim2.fromOffset]
       35 LOADN                            R7 200
       36 LOADN                            R8 400
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K9 ["Size"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["List"]
       23 GETTABLEKS                       R4 R2 K9 ["Pane"]
       25 GETIMPORT                        R5 K12 [table.insert]
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R7 R0 K4 ["Parent"]
       31 GETTABLEKS                       R7 R7 K13 ["Dash"]
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
       92 DUPTABLE                         R16 K35 [{["name"] = "Basic", ["story"]}]
       93 SETTABLEKS                       R9 R16 K34 ["story"]
       95 DUPTABLE                         R17 K39 [{["name"] = "SpecialRows", ["description"] = "Example using SpecialRows to make a header and expanded content", ["story"]}]
       96 SETTABLEKS                       R10 R17 K34 ["story"]
       98 DUPTABLE                         R18 K41 [{["name"] = "RowGroups", ["story"]}]
       99 GETTABLEKS                       R19 R1 K42 ["createElement"]
      101 MOVE                             R20 R13
      102 DUPTABLE                         R21 K44 [{"Rows", "RowGroups"}]
      103 MOVE                             R22 R11
      104 LOADN                            R23 16
      105 CALL                             R22 1 1
      106 SETTABLEKS                       R22 R21 K43 ["Rows"]
      108 NEWTABLE                         R23 0 3
      110 LOADN                            R24 8
      111 LOADN                            R25 4
      112 LOADN                            R26 4
      113 SETLIST                          R23 R24 3 [1]
      115 LOADN                            R24 1
      116 MOVE                             R25 R8
      117 MOVE                             R26 R23
      118 NEWCLOSURE                       R27 P8
      119 CAPTURE                          REF R24
      120 CALL                             R25 2 1
      121 MOVE                             R22 R25
      122 CLOSEUPVALS                      R24
      123 SETTABLEKS                       R22 R21 K40 ["RowGroups"]
      125 CALL                             R19 2 1
      126 SETTABLEKS                       R19 R18 K34 ["story"]
      128 SETLIST                          R15 R16 3 [1]
      130 SETTABLEKS                       R15 R14 K30 ["stories"]
      132 RETURN                           R14 1
