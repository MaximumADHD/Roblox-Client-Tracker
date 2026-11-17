PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Inspector"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R2 R1 K3 ["getTargetApi"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K4 ["setPageIndex"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["isInstance"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+11]
       24 GETTABLEKS                       R3 R2 K6 ["setProfileComponentsPageIndex"]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 MOVE                             R5 R0
       29 NAMECALL                         R3 R2 K6 ["setProfileComponentsPageIndex"]
       31 CALL                             R3 2 0
       32 NAMECALL                         R3 R2 K7 ["getProfileData"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Inspector"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R3 R2 K3 ["getTargetApi"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["TableData"]
       16 GETTABLEKS                       R6 R4 K5 ["pageRows"]
       18 GETTABLE                         R5 R6 R1
       19 JUMPIFNOT                        R5 ; [+14]
       20 GETTABLEKS                       R6 R5 K6 ["path"]
       22 JUMPIFNOT                        R6 ; [+11]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K7 ["isInstance"]
       26 MOVE                             R7 R3
       27 CALL                             R6 1 1
       28 JUMPIFNOT                        R6 ; [+5]
       29 GETTABLEKS                       R8 R5 K6 ["path"]
       31 NAMECALL                         R6 R3 K8 ["highlight"]
       33 CALL                             R6 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Inspector"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R1 R0 K3 ["getTargetApi"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["isInstance"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 NAMECALL                         R2 R1 K5 ["dehighlight"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Inspector"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R2 R1 K3 ["getTargetApi"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K4 ["setPageSize"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["isInstance"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+11]
       24 GETTABLEKS                       R3 R2 K6 ["setProfileComponentsPageSize"]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 MOVE                             R5 R0
       29 NAMECALL                         R3 R2 K6 ["setProfileComponentsPageSize"]
       31 CALL                             R3 2 0
       32 NAMECALL                         R3 R2 K7 ["getProfileData"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Inspector"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R3 R2 K3 ["getTargetApi"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["setSort"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R4 2 0
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["isInstance"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+13]
       25 GETTABLEKS                       R4 R3 K6 ["sortProfileData"]
       27 JUMPIF                           R4 ; [+1]
       28 RETURN                           R0 0
       29 LOADK                            R6 K7 ["profileComponents"]
       30 MOVE                             R7 R0
       31 MOVE                             R8 R1
       32 NAMECALL                         R4 R3 K6 ["sortProfileData"]
       34 CALL                             R4 4 0
       35 NAMECALL                         R4 R3 K8 ["getProfileData"]
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Inspector"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R3 R2 K3 ["getTargetApi"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["TableData"]
       16 GETTABLEKS                       R7 R4 K6 ["pageIndex"]
       18 SUBK                             R6 R7 K5 [1]
       19 GETTABLEKS                       R7 R4 K7 ["pageSize"]
       21 MUL                              R5 R6 R7
       22 ADD                              R6 R1 R5
       23 GETTABLEKS                       R8 R4 K8 ["pageRows"]
       25 GETTABLE                         R7 R8 R1
       26 JUMPIFNOT                        R7 ; [+26]
       27 GETTABLEKS                       R8 R7 K9 ["instanceId"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K0 ["props"]
       32 GETTABLEKS                       R9 R9 K10 ["selectRow"]
       34 MOVE                             R10 R6
       35 CALL                             R9 1 0
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K11 ["isInstance"]
       39 MOVE                             R10 R3
       40 CALL                             R9 1 1
       41 JUMPIFNOT                        R9 ; [+11]
       42 MOVE                             R11 R8
       43 NAMECALL                         R9 R3 K12 ["selectProfileInstance"]
       45 CALL                             R9 2 0
       46 LOADN                            R11 1
       47 NAMECALL                         R9 R3 K13 ["setProfileEventsPageIndex"]
       49 CALL                             R9 2 0
       50 NAMECALL                         R9 R3 K14 ["getProfileData"]
       52 CALL                             R9 1 0
       53 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onPageChange"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["onHover"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["onMouseLeave"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R1 R0 K3 ["onSizeChange"]
       20 NEWCLOSURE                       R1 P4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 SETTABLEKS                       R1 R0 K4 ["onSortChange"]
       25 NEWCLOSURE                       R1 P5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 SETTABLEKS                       R1 R0 K5 ["onSelectRow"]
       30 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ProfileData"]
        4 GETTABLEKS                       R3 R1 K2 ["TableData"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K19 [{"Columns", "Rows", "SelectedRow", "SortIndex", "SortOrder", "PageIndex", "PageSize", "PageCount", "OnHoverRow", "OnMouseLeave", "OnSelectRow", "OnPageChange", "OnPageSizeChange", "OnSortChange", "Footer"}]
       11 GETUPVAL                         R7 2
       12 SETTABLEKS                       R7 R6 K4 ["Columns"]
       14 GETTABLEKS                       R7 R3 K20 ["pageRows"]
       16 SETTABLEKS                       R7 R6 K5 ["Rows"]
       18 GETTABLEKS                       R7 R3 K21 ["selectedRow"]
       20 SETTABLEKS                       R7 R6 K6 ["SelectedRow"]
       22 GETTABLEKS                       R7 R3 K22 ["sortIndex"]
       24 SETTABLEKS                       R7 R6 K7 ["SortIndex"]
       26 GETTABLEKS                       R7 R3 K23 ["sortOrder"]
       28 SETTABLEKS                       R7 R6 K8 ["SortOrder"]
       30 GETTABLEKS                       R7 R3 K24 ["pageIndex"]
       32 SETTABLEKS                       R7 R6 K9 ["PageIndex"]
       34 GETTABLEKS                       R7 R3 K25 ["pageSize"]
       36 SETTABLEKS                       R7 R6 K10 ["PageSize"]
       38 GETTABLEKS                       R9 R2 K26 ["rowCount"]
       40 GETTABLEKS                       R10 R3 K25 ["pageSize"]
       42 DIV                              R8 R9 R10
       43 FASTCALL1                        MATH_CEIL R8 ; [+2]
       44 GETIMPORT                        R7 K29 [math.ceil]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K11 ["PageCount"]
       49 GETTABLEKS                       R7 R0 K30 ["onHover"]
       51 SETTABLEKS                       R7 R6 K12 ["OnHoverRow"]
       53 GETTABLEKS                       R7 R0 K31 ["onMouseLeave"]
       55 SETTABLEKS                       R7 R6 K13 ["OnMouseLeave"]
       57 GETTABLEKS                       R7 R0 K32 ["onSelectRow"]
       59 SETTABLEKS                       R7 R6 K14 ["OnSelectRow"]
       61 GETTABLEKS                       R7 R0 K33 ["onPageChange"]
       63 SETTABLEKS                       R7 R6 K15 ["OnPageChange"]
       65 GETTABLEKS                       R7 R0 K34 ["onSizeChange"]
       67 SETTABLEKS                       R7 R6 K16 ["OnPageSizeChange"]
       69 GETTABLEKS                       R7 R0 K35 ["onSortChange"]
       71 SETTABLEKS                       R7 R6 K17 ["OnSortChange"]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K3 ["createElement"]
       76 GETUPVAL                         R8 3
       77 DUPTABLE                         R9 K40 [{["Padding"] = 5, ["Layout"], ["HorizontalAlignment"]}]
       78 GETIMPORT                        R10 K44 [Enum.FillDirection.Horizontal]
       80 SETTABLEKS                       R10 R9 K38 ["Layout"]
       82 GETIMPORT                        R10 K46 [Enum.HorizontalAlignment.Left]
       84 SETTABLEKS                       R10 R9 K39 ["HorizontalAlignment"]
       86 DUPTABLE                         R10 K48 [{"Label"}]
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K3 ["createElement"]
       90 GETUPVAL                         R12 4
       91 DUPTABLE                         R13 K51 [{"AutomaticSize", "Text"}]
       92 GETIMPORT                        R14 K53 [Enum.AutomaticSize.XY]
       94 SETTABLEKS                       R14 R13 K49 ["AutomaticSize"]
       96 LOADK                            R14 K54 ["%s Events from %s Components"]
       97 GETTABLEKS                       R16 R2 K55 ["eventCount"]
       99 GETTABLEKS                       R17 R2 K26 ["rowCount"]
      101 NAMECALL                         R14 R14 K56 ["format"]
      103 CALL                             R14 3 1
      104 SETTABLEKS                       R14 R13 K50 ["Text"]
      106 CALL                             R11 2 1
      107 SETTABLEKS                       R11 R10 K47 ["Label"]
      109 CALL                             R7 3 1
      110 SETTABLEKS                       R7 R6 K18 ["Footer"]
      112 CALL                             R4 2 -1
      113 RETURN                           R4 -1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"ProfileData", "TableData"}]
        1 GETTABLEKS                       R2 R0 K3 ["RoactInspector"]
        3 GETTABLEKS                       R2 R2 K4 ["profileData"]
        5 SETTABLEKS                       R2 R1 K0 ["ProfileData"]
        7 GETTABLEKS                       R3 R0 K3 ["RoactInspector"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K5 ["COMPONENTS"]
       12 GETTABLE                         R2 R3 R4
       13 SETTABLEKS                       R2 R1 K1 ["TableData"]
       15 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["COMPONENTS"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["COMPONENTS"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["COMPONENTS"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K4 [{"setSort", "setPageSize", "setPageIndex", "selectRow"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["setSort"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R2 R1 K1 ["setPageSize"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R2 R1 K2 ["setPageIndex"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R2 R1 K3 ["selectRow"]
       24 RETURN                           R1 1

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
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K12 ["TableIds"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K5 ["Packages"]
       52 GETTABLEKS                       R7 R7 K13 ["DeveloperTools"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R6 K14 ["RoactInspectorApi"]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Actions"]
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R8 K16 ["RoactInspector"]
       65 GETTABLEKS                       R10 R10 K17 ["SetProfilePageSize"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R8 K16 ["RoactInspector"]
       72 GETTABLEKS                       R11 R11 K18 ["SetProfilePageIndex"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R8 K16 ["RoactInspector"]
       79 GETTABLEKS                       R12 R12 K19 ["SortProfileData"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R8 K16 ["RoactInspector"]
       86 GETTABLEKS                       R13 R13 K20 ["SelectProfileRow"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R3 K21 ["ContextServices"]
       91 GETTABLEKS                       R14 R13 K22 ["withContext"]
       93 GETTABLEKS                       R15 R3 K23 ["UI"]
       95 GETTABLEKS                       R16 R15 K24 ["PaginatedTable"]
       97 GETTABLEKS                       R17 R15 K25 ["Pane"]
       99 GETTABLEKS                       R18 R15 K26 ["TextLabel"]
      101 GETTABLEKS                       R19 R1 K27 ["Component"]
      103 LOADK                            R21 K28 ["RoactProfilerComponentsTable"]
      104 NAMECALL                         R19 R19 K29 ["extend"]
      106 CALL                             R19 2 1
      107 NEWTABLE                         R20 0 5
      109 DUPTABLE                         R21 K36 [{["Name"] = "Component", ["Key"] = "instanceName", ["TooltipKey"] = "pathString", ["Width"]}]
      110 GETIMPORT                        R22 K39 [UDim.new]
      112 LOADK                            R23 K40 [0.3]
      113 LOADN                            R24 0
      114 CALL                             R22 2 1
      115 SETTABLEKS                       R22 R21 K35 ["Width"]
      117 DUPTABLE                         R22 K43 [{["Name"] = "Depth", ["Key"] = "depth", ["Width"]}]
      118 GETIMPORT                        R23 K39 [UDim.new]
      120 LOADK                            R24 K44 [0.15]
      121 LOADN                            R25 0
      122 CALL                             R23 2 1
      123 SETTABLEKS                       R23 R22 K35 ["Width"]
      125 DUPTABLE                         R23 K47 [{["Name"] = "Renders", ["Key"] = "count", ["Width"]}]
      126 GETIMPORT                        R24 K39 [UDim.new]
      128 LOADK                            R25 K44 [0.15]
      129 LOADN                            R26 0
      130 CALL                             R24 2 1
      131 SETTABLEKS                       R24 R23 K35 ["Width"]
      133 DUPTABLE                         R24 K50 [{["Name"] = "Render Time (ms)", ["Key"] = "renderTime", ["Width"]}]
      134 GETIMPORT                        R25 K39 [UDim.new]
      136 LOADK                            R26 K51 [0.2]
      137 LOADN                            R27 0
      138 CALL                             R25 2 1
      139 SETTABLEKS                       R25 R24 K35 ["Width"]
      141 DUPTABLE                         R25 K54 [{["Name"] = "Deep Time (ms)", ["Key"] = "time", ["Width"]}]
      142 GETIMPORT                        R26 K39 [UDim.new]
      144 LOADK                            R27 K51 [0.2]
      145 LOADN                            R28 0
      146 CALL                             R26 2 1
      147 SETTABLEKS                       R26 R25 K35 ["Width"]
      149 SETLIST                          R20 R21 5 [1]
      151 DUPCLOSURE                       R21 K55 [PROTO_6]
      152 CAPTURE                          VAL R7
      153 SETTABLEKS                       R21 R19 K56 ["init"]
      155 DUPCLOSURE                       R21 K57 [PROTO_7]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R18
      161 SETTABLEKS                       R21 R19 K58 ["render"]
      163 MOVE                             R21 R14
      164 DUPTABLE                         R22 K61 [{"Inspector", "Stylizer"}]
      165 SETTABLEKS                       R4 R22 K59 ["Inspector"]
      167 GETTABLEKS                       R23 R13 K60 ["Stylizer"]
      169 SETTABLEKS                       R23 R22 K60 ["Stylizer"]
      171 CALL                             R21 1 1
      172 MOVE                             R22 R19
      173 CALL                             R21 1 1
      174 MOVE                             R19 R21
      175 GETTABLEKS                       R21 R2 K62 ["connect"]
      177 DUPCLOSURE                       R22 K63 [PROTO_8]
      178 CAPTURE                          VAL R5
      179 DUPCLOSURE                       R23 K64 [PROTO_13]
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R12
      185 CALL                             R21 2 1
      186 MOVE                             R22 R19
      187 CALL                             R21 1 -1
      188 RETURN                           R21 -1
