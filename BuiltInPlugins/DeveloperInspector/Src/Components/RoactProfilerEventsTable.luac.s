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
       24 GETTABLEKS                       R3 R2 K6 ["setProfileEventsPageIndex"]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 MOVE                             R5 R0
       29 NAMECALL                         R3 R2 K6 ["setProfileEventsPageIndex"]
       31 CALL                             R3 2 0
       32 NAMECALL                         R3 R2 K7 ["getProfileData"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_1:
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
       24 GETTABLEKS                       R3 R2 K6 ["setProfileEventsPageSize"]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 MOVE                             R5 R0
       29 NAMECALL                         R3 R2 K6 ["setProfileEventsPageSize"]
       31 CALL                             R3 2 0
       32 NAMECALL                         R3 R2 K7 ["getProfileData"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_2:
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
       24 JUMPIFNOT                        R4 ; [+15]
       25 GETTABLEKS                       R4 R3 K6 ["setProfileEventsPageIndex"]
       27 JUMPIF                           R4 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K7 ["EVENTS"]
       32 MOVE                             R7 R0
       33 MOVE                             R8 R1
       34 NAMECALL                         R4 R3 K8 ["sortProfileData"]
       36 CALL                             R4 4 0
       37 NAMECALL                         R4 R3 K9 ["getProfileData"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onPageChange"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["onSizeChange"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K2 ["onSortChange"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ProfileData"]
        4 GETTABLEKS                       R3 R1 K2 ["TableData"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K15 [{"Columns", "Rows", "SortIndex", "SortOrder", "PageIndex", "PageSize", "PageCount", "OnPageChange", "OnPageSizeChange", "OnSortChange", "Footer"}]
       11 GETUPVAL                         R7 2
       12 SETTABLEKS                       R7 R6 K4 ["Columns"]
       14 GETTABLEKS                       R7 R3 K16 ["pageRows"]
       16 SETTABLEKS                       R7 R6 K5 ["Rows"]
       18 GETTABLEKS                       R7 R3 K17 ["sortIndex"]
       20 SETTABLEKS                       R7 R6 K6 ["SortIndex"]
       22 GETTABLEKS                       R7 R3 K18 ["sortOrder"]
       24 SETTABLEKS                       R7 R6 K7 ["SortOrder"]
       26 GETTABLEKS                       R7 R3 K19 ["pageIndex"]
       28 SETTABLEKS                       R7 R6 K8 ["PageIndex"]
       30 GETTABLEKS                       R7 R3 K20 ["pageSize"]
       32 SETTABLEKS                       R7 R6 K9 ["PageSize"]
       34 GETTABLEKS                       R9 R2 K21 ["instanceEventCount"]
       36 GETTABLEKS                       R10 R3 K20 ["pageSize"]
       38 DIV                              R8 R9 R10
       39 FASTCALL1                        MATH_CEIL R8 ; [+2]
       40 GETIMPORT                        R7 K24 [math.ceil]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K10 ["PageCount"]
       45 GETTABLEKS                       R7 R0 K25 ["onPageChange"]
       47 SETTABLEKS                       R7 R6 K11 ["OnPageChange"]
       49 GETTABLEKS                       R7 R0 K26 ["onSizeChange"]
       51 SETTABLEKS                       R7 R6 K12 ["OnPageSizeChange"]
       53 GETTABLEKS                       R7 R0 K27 ["onSortChange"]
       55 SETTABLEKS                       R7 R6 K13 ["OnSortChange"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K3 ["createElement"]
       60 GETUPVAL                         R8 3
       61 DUPTABLE                         R9 K32 [{["Padding"] = 5, ["Layout"], ["HorizontalAlignment"]}]
       62 GETIMPORT                        R10 K36 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R10 R9 K30 ["Layout"]
       66 GETIMPORT                        R10 K38 [Enum.HorizontalAlignment.Left]
       68 SETTABLEKS                       R10 R9 K31 ["HorizontalAlignment"]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K14 ["Footer"]
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"ProfileData", "TableData"}]
        1 GETTABLEKS                       R2 R0 K3 ["RoactInspector"]
        3 GETTABLEKS                       R2 R2 K4 ["profileData"]
        5 SETTABLEKS                       R2 R1 K0 ["ProfileData"]
        7 GETTABLEKS                       R3 R0 K3 ["RoactInspector"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K5 ["EVENTS"]
       12 GETTABLE                         R2 R3 R4
       13 SETTABLEKS                       R2 R1 K1 ["TableData"]
       15 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["EVENTS"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["EVENTS"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["EVENTS"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K3 [{"setSort", "setPageSize", "setPageIndex"}]
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
       19 RETURN                           R1 1

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
       82 GETTABLEKS                       R12 R3 K20 ["ContextServices"]
       84 GETTABLEKS                       R13 R12 K21 ["withContext"]
       86 GETTABLEKS                       R14 R3 K22 ["UI"]
       88 GETTABLEKS                       R15 R14 K23 ["PaginatedTable"]
       90 GETTABLEKS                       R16 R14 K24 ["Pane"]
       92 GETTABLEKS                       R17 R1 K25 ["Component"]
       94 LOADK                            R19 K26 ["RoactProfilerEventsTable"]
       95 NAMECALL                         R17 R17 K27 ["extend"]
       97 CALL                             R17 2 1
       98 NEWTABLE                         R18 0 5
      100 DUPTABLE                         R19 K33 [{["Name"] = "At (s)", ["Key"] = "startTime", ["Width"]}]
      101 GETIMPORT                        R20 K36 [UDim.new]
      103 LOADK                            R21 K37 [0.1]
      104 LOADN                            R22 0
      105 CALL                             R20 2 1
      106 SETTABLEKS                       R20 R19 K32 ["Width"]
      108 DUPTABLE                         R20 K40 [{["Name"] = "Render Time (ms)", ["Key"] = "renderTime", ["Width"]}]
      109 GETIMPORT                        R21 K36 [UDim.new]
      111 LOADK                            R22 K41 [0.2]
      112 LOADN                            R23 0
      113 CALL                             R21 2 1
      114 SETTABLEKS                       R21 R20 K32 ["Width"]
      116 DUPTABLE                         R21 K44 [{["Name"] = "Deep Time (ms)", ["Key"] = "time", ["Width"]}]
      117 GETIMPORT                        R22 K36 [UDim.new]
      119 LOADK                            R23 K41 [0.2]
      120 LOADN                            R24 0
      121 CALL                             R22 2 1
      122 SETTABLEKS                       R22 R21 K32 ["Width"]
      124 DUPTABLE                         R22 K49 [{["Name"] = "Cause", ["Key"] = "cause", ["TooltipKey"] = "log", ["Width"]}]
      125 GETIMPORT                        R23 K36 [UDim.new]
      127 LOADK                            R24 K50 [0.15]
      128 LOADN                            R25 0
      129 CALL                             R23 2 1
      130 SETTABLEKS                       R23 R22 K32 ["Width"]
      132 DUPTABLE                         R23 K54 [{["Name"] = "Details", ["Key"] = "details", ["TooltipKey"] = "detailsTip", ["Width"]}]
      133 GETIMPORT                        R24 K36 [UDim.new]
      135 LOADK                            R25 K55 [0.35]
      136 LOADN                            R26 0
      137 CALL                             R24 2 1
      138 SETTABLEKS                       R24 R23 K32 ["Width"]
      140 SETLIST                          R18 R19 5 [1]
      142 DUPCLOSURE                       R19 K56 [PROTO_3]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R5
      145 SETTABLEKS                       R19 R17 K57 ["init"]
      147 DUPCLOSURE                       R19 K58 [PROTO_4]
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R16
      152 SETTABLEKS                       R19 R17 K59 ["render"]
      154 MOVE                             R19 R13
      155 DUPTABLE                         R20 K62 [{"Inspector", "Stylizer"}]
      156 SETTABLEKS                       R4 R20 K60 ["Inspector"]
      158 GETTABLEKS                       R21 R12 K61 ["Stylizer"]
      160 SETTABLEKS                       R21 R20 K61 ["Stylizer"]
      162 CALL                             R19 1 1
      163 MOVE                             R20 R17
      164 CALL                             R19 1 1
      165 MOVE                             R17 R19
      166 GETTABLEKS                       R19 R2 K63 ["connect"]
      168 DUPCLOSURE                       R20 K64 [PROTO_5]
      169 CAPTURE                          VAL R5
      170 DUPCLOSURE                       R21 K65 [PROTO_9]
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R10
      175 CALL                             R19 2 1
      176 MOVE                             R20 R17
      177 CALL                             R19 1 -1
      178 RETURN                           R19 -1
