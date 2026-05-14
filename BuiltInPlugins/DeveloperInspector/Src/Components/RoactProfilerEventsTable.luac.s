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
       61 DUPTABLE                         R9 K31 [{"Padding", "Layout", "HorizontalAlignment"}]
       62 LOADN                            R10 5
       63 SETTABLEKS                       R10 R9 K28 ["Padding"]
       65 GETIMPORT                        R10 K35 [Enum.FillDirection.Horizontal]
       67 SETTABLEKS                       R10 R9 K29 ["Layout"]
       69 GETIMPORT                        R10 K37 [Enum.HorizontalAlignment.Left]
       71 SETTABLEKS                       R10 R9 K30 ["HorizontalAlignment"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K14 ["Footer"]
       76 CALL                             R4 2 -1
       77 RETURN                           R4 -1

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
      100 DUPTABLE                         R19 K31 [{"Name", "Key", "Width"}]
      101 LOADK                            R20 K32 ["At (s)"]
      102 SETTABLEKS                       R20 R19 K28 ["Name"]
      104 LOADK                            R20 K33 ["startTime"]
      105 SETTABLEKS                       R20 R19 K29 ["Key"]
      107 GETIMPORT                        R20 K36 [UDim.new]
      109 LOADK                            R21 K37 [0.1]
      110 LOADN                            R22 0
      111 CALL                             R20 2 1
      112 SETTABLEKS                       R20 R19 K30 ["Width"]
      114 DUPTABLE                         R20 K31 [{"Name", "Key", "Width"}]
      115 LOADK                            R21 K38 ["Render Time (ms)"]
      116 SETTABLEKS                       R21 R20 K28 ["Name"]
      118 LOADK                            R21 K39 ["renderTime"]
      119 SETTABLEKS                       R21 R20 K29 ["Key"]
      121 GETIMPORT                        R21 K36 [UDim.new]
      123 LOADK                            R22 K40 [0.2]
      124 LOADN                            R23 0
      125 CALL                             R21 2 1
      126 SETTABLEKS                       R21 R20 K30 ["Width"]
      128 DUPTABLE                         R21 K31 [{"Name", "Key", "Width"}]
      129 LOADK                            R22 K41 ["Deep Time (ms)"]
      130 SETTABLEKS                       R22 R21 K28 ["Name"]
      132 LOADK                            R22 K42 ["time"]
      133 SETTABLEKS                       R22 R21 K29 ["Key"]
      135 GETIMPORT                        R22 K36 [UDim.new]
      137 LOADK                            R23 K40 [0.2]
      138 LOADN                            R24 0
      139 CALL                             R22 2 1
      140 SETTABLEKS                       R22 R21 K30 ["Width"]
      142 DUPTABLE                         R22 K44 [{"Name", "Key", "TooltipKey", "Width"}]
      143 LOADK                            R23 K45 ["Cause"]
      144 SETTABLEKS                       R23 R22 K28 ["Name"]
      146 LOADK                            R23 K46 ["cause"]
      147 SETTABLEKS                       R23 R22 K29 ["Key"]
      149 LOADK                            R23 K47 ["log"]
      150 SETTABLEKS                       R23 R22 K43 ["TooltipKey"]
      152 GETIMPORT                        R23 K36 [UDim.new]
      154 LOADK                            R24 K48 [0.15]
      155 LOADN                            R25 0
      156 CALL                             R23 2 1
      157 SETTABLEKS                       R23 R22 K30 ["Width"]
      159 DUPTABLE                         R23 K44 [{"Name", "Key", "TooltipKey", "Width"}]
      160 LOADK                            R24 K49 ["Details"]
      161 SETTABLEKS                       R24 R23 K28 ["Name"]
      163 LOADK                            R24 K50 ["details"]
      164 SETTABLEKS                       R24 R23 K29 ["Key"]
      166 LOADK                            R24 K51 ["detailsTip"]
      167 SETTABLEKS                       R24 R23 K43 ["TooltipKey"]
      169 GETIMPORT                        R24 K36 [UDim.new]
      171 LOADK                            R25 K52 [0.35]
      172 LOADN                            R26 0
      173 CALL                             R24 2 1
      174 SETTABLEKS                       R24 R23 K30 ["Width"]
      176 SETLIST                          R18 R19 5 [1]
      178 DUPCLOSURE                       R19 K53 [PROTO_3]
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R5
      181 SETTABLEKS                       R19 R17 K54 ["init"]
      183 DUPCLOSURE                       R19 K55 [PROTO_4]
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R16
      188 SETTABLEKS                       R19 R17 K56 ["render"]
      190 MOVE                             R19 R13
      191 DUPTABLE                         R20 K59 [{"Inspector", "Stylizer"}]
      192 SETTABLEKS                       R4 R20 K57 ["Inspector"]
      194 GETTABLEKS                       R21 R12 K58 ["Stylizer"]
      196 SETTABLEKS                       R21 R20 K58 ["Stylizer"]
      198 CALL                             R19 1 1
      199 MOVE                             R20 R17
      200 CALL                             R19 1 1
      201 MOVE                             R17 R19
      202 GETTABLEKS                       R19 R2 K60 ["connect"]
      204 DUPCLOSURE                       R20 K61 [PROTO_5]
      205 CAPTURE                          VAL R5
      206 DUPCLOSURE                       R21 K62 [PROTO_9]
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R10
      211 CALL                             R19 2 1
      212 MOVE                             R20 R17
      213 CALL                             R19 1 -1
      214 RETURN                           R19 -1
