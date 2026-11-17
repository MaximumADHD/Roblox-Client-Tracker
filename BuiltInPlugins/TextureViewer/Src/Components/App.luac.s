PROTO_0:
        0 DUPTABLE                         R3 K1 [{"rows"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K2 ["fetchAllTexturesFromWorkspace"]
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["rows"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["refreshData"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R3 R1
        1 LOADN                            R4 0
        2 JUMPIFNOTLT                      R4 R3 ; [+35]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["zoomToExtentsAndSelectInstance"]
        7 GETIMPORT                        R4 K2 [game]
        9 GETTABLEKS                       R4 R4 K3 ["Workspace"]
       11 GETTABLEKS                       R4 R4 K4 ["CurrentCamera"]
       13 GETTABLE                         R5 R1 R2
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+19]
       16 GETUPVAL                         R4 1
       17 NEWTABLE                         R6 0 1
       19 GETTABLE                         R7 R1 R2
       20 SETLIST                          R6 R7 1 [1]
       22 NAMECALL                         R4 R4 K5 ["Set"]
       24 CALL                             R4 2 0
       25 DUPTABLE                         R6 K7 [{"tick"}]
       26 GETIMPORT                        R7 K8 [tick]
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K6 ["tick"]
       31 NAMECALL                         R4 R0 K9 ["setState"]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0
       35 NAMECALL                         R4 R0 K10 ["error"]
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["lower"]
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R3 K4 [ipairs]
       11 GETTABLEKS                       R4 R0 K0 ["state"]
       13 GETTABLEKS                       R4 R4 K5 ["rows"]
       15 CALL                             R3 1 3
       16 FORGPREP_INEXT                   R3
       17 GETTABLEKS                       R8 R7 K6 ["Texture"]
       19 NAMECALL                         R8 R8 K2 ["lower"]
       21 CALL                             R8 1 1
       22 MOVE                             R10 R1
       23 NAMECALL                         R8 R8 K7 ["find"]
       25 CALL                             R8 2 1
       26 JUMPIFNOT                        R8 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       29 MOVE                             R9 R2
       30 MOVE                             R10 R7
       31 GETIMPORT                        R8 K10 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R3 2 [inext] ; [-18]
       36 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["showRightClickMenu"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["props"]
        7 GETTABLEKS                       R4 R4 K2 ["Plugin"]
        9 NAMECALL                         R4 R4 K3 ["get"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["props"]
       15 GETTABLEKS                       R5 R5 K4 ["Localization"]
       17 MOVE                             R6 R0
       18 MOVE                             R7 R1
       19 CALL                             R2 5 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fetchAllTexturesFromWorkspace"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K4 [{["rows"], ["searchTerm"] = ""}]
        5 SETTABLEKS                       R1 R2 K1 ["rows"]
        7 SETTABLEKS                       R2 R0 K5 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K6 ["showRightClickMenu"]
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["App"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 NAMECALL                         R4 R0 K4 ["filterRowsBySearchTerm"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["calculateAggregateStats"]
       14 MOVE                             R6 R4
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K6 ["createElement"]
       19 GETUPVAL                         R8 2
       20 DUPTABLE                         R9 K11 [{"Size", "Layout", "Padding", "Spacing"}]
       21 GETIMPORT                        R10 K14 [UDim2.fromScale]
       23 LOADN                            R11 1
       24 LOADN                            R12 1
       25 CALL                             R10 2 1
       26 SETTABLEKS                       R10 R9 K7 ["Size"]
       28 GETIMPORT                        R10 K18 [Enum.FillDirection.Vertical]
       30 SETTABLEKS                       R10 R9 K8 ["Layout"]
       32 GETTABLEKS                       R10 R2 K9 ["Padding"]
       34 SETTABLEKS                       R10 R9 K9 ["Padding"]
       36 GETTABLEKS                       R10 R2 K10 ["Spacing"]
       38 SETTABLEKS                       R10 R9 K10 ["Spacing"]
       40 DUPTABLE                         R10 K22 [{"TopPanel", "SearchBar", "Table"}]
       41 GETUPVAL                         R11 3
       42 MOVE                             R12 R0
       43 MOVE                             R13 R5
       44 MOVE                             R14 R6
       45 CALL                             R11 3 1
       46 SETTABLEKS                       R11 R10 K19 ["TopPanel"]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K6 ["createElement"]
       51 GETUPVAL                         R12 4
       52 DUPTABLE                         R13 K31 [{["PlaceholderText"], ["IncrementalTextSearch"] = True, ["IncrementalTextSearchDelay"] = 0, ["OnSearchRequested"], ["Size"], ["LayoutOrder"] = 2}]
       53 LOADK                            R16 K32 ["Search"]
       54 LOADK                            R17 K33 ["Placeholder"]
       55 NAMECALL                         R14 R3 K34 ["getText"]
       57 CALL                             R14 3 1
       58 SETTABLEKS                       R14 R13 K23 ["PlaceholderText"]
       60 NEWCLOSURE                       R14 P0
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R14 R13 K28 ["OnSearchRequested"]
       64 GETTABLEKS                       R14 R2 K20 ["SearchBar"]
       66 GETTABLEKS                       R14 R14 K7 ["Size"]
       68 SETTABLEKS                       R14 R13 K7 ["Size"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K20 ["SearchBar"]
       73 GETUPVAL                         R11 5
       74 MOVE                             R12 R0
       75 MOVE                             R13 R4
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K21 ["Table"]
       79 CALL                             R7 3 -1
       80 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["Analytics"]
       33 GETTABLEKS                       R6 R4 K14 ["Localization"]
       35 GETTABLEKS                       R7 R4 K15 ["withContext"]
       37 GETTABLEKS                       R8 R3 K16 ["Style"]
       39 GETTABLEKS                       R8 R8 K17 ["Stylizer"]
       41 GETTABLEKS                       R9 R3 K18 ["UI"]
       43 GETTABLEKS                       R10 R9 K19 ["Pane"]
       45 GETTABLEKS                       R11 R9 K20 ["SearchBar"]
       47 GETIMPORT                        R12 K8 [require]
       49 GETIMPORT                        R13 K5 [script]
       51 GETTABLEKS                       R13 R13 K6 ["Parent"]
       53 GETTABLEKS                       R13 R13 K21 ["ContextMenu"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K8 [require]
       58 GETIMPORT                        R14 K5 [script]
       60 GETTABLEKS                       R14 R14 K6 ["Parent"]
       62 GETTABLEKS                       R14 R14 K22 ["TextureTable"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K8 [require]
       67 GETIMPORT                        R15 K5 [script]
       69 GETTABLEKS                       R15 R15 K6 ["Parent"]
       71 GETTABLEKS                       R15 R15 K23 ["TopPanel"]
       73 CALL                             R14 1 1
       74 GETTABLEKS                       R15 R1 K24 ["Src"]
       76 GETTABLEKS                       R15 R15 K25 ["Util"]
       78 GETIMPORT                        R16 K8 [require]
       80 GETTABLEKS                       R17 R15 K26 ["Stats"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K8 [require]
       85 GETTABLEKS                       R18 R15 K27 ["WorkspaceOperations"]
       87 CALL                             R17 1 1
       88 GETTABLEKS                       R18 R2 K28 ["PureComponent"]
       90 LOADK                            R20 K29 ["App"]
       91 NAMECALL                         R18 R18 K30 ["extend"]
       93 CALL                             R18 2 1
       94 DUPCLOSURE                       R19 K31 [PROTO_0]
       95 CAPTURE                          VAL R17
       96 SETTABLEKS                       R19 R18 K32 ["refreshData"]
       98 DUPCLOSURE                       R19 K33 [PROTO_1]
       99 SETTABLEKS                       R19 R18 K34 ["error"]
      101 DUPCLOSURE                       R19 K35 [PROTO_2]
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R19 R18 K36 ["zoomTo"]
      106 DUPCLOSURE                       R19 K37 [PROTO_3]
      107 SETTABLEKS                       R19 R18 K38 ["filterRowsBySearchTerm"]
      109 DUPCLOSURE                       R19 K39 [PROTO_5]
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R12
      112 SETTABLEKS                       R19 R18 K40 ["init"]
      114 DUPCLOSURE                       R19 K41 [PROTO_7]
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R13
      121 SETTABLEKS                       R19 R18 K42 ["render"]
      123 MOVE                             R19 R7
      124 DUPTABLE                         R20 K44 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
      125 SETTABLEKS                       R5 R20 K13 ["Analytics"]
      127 SETTABLEKS                       R6 R20 K14 ["Localization"]
      129 GETTABLEKS                       R21 R4 K43 ["Plugin"]
      131 SETTABLEKS                       R21 R20 K43 ["Plugin"]
      133 SETTABLEKS                       R8 R20 K17 ["Stylizer"]
      135 CALL                             R19 1 1
      136 MOVE                             R20 R18
      137 CALL                             R19 1 1
      138 MOVE                             R18 R19
      139 RETURN                           R18 1
