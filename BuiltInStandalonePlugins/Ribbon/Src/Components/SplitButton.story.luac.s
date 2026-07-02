PROTO_0:
        0 DUPTABLE                         R3 K3 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
        1 GETIMPORT                        R4 K6 [Vector2.zero]
        3 SETTABLEKS                       R4 R3 K0 ["SubjectAnchorPoint"]
        5 GETIMPORT                        R4 K6 [Vector2.zero]
        7 SETTABLEKS                       R4 R3 K1 ["TargetAnchorPoint"]
        9 GETIMPORT                        R4 K8 [Vector2.new]
       11 GETTABLEKS                       R5 R2 K9 ["Position"]
       13 GETTABLEKS                       R5 R5 K10 ["X"]
       15 GETTABLEKS                       R6 R2 K9 ["Position"]
       17 GETTABLEKS                       R6 R6 K11 ["Y"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K2 ["Offset"]
       22 MOVE                             R4 R0
       23 GETUPVAL                         R5 0
       24 MOVE                             R6 R1
       25 MOVE                             R7 R3
       26 CALL                             R4 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["child"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R1 K1 ["Text"]
        6 JUMPIF                           R4 ; [+10]
        7 GETTABLEKS                       R4 R1 K2 ["Icon"]
        9 JUMPIF                           R4 ; [+7]
       10 LOADK                            R5 K3 ["Item"]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R7 R0
       13 GETIMPORT                        R6 K5 [tostring]
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R2 2 1
       18 LOADK                            R4 K6 ["SplitButton $%*"]
       19 MOVE                             R6 R0
       20 NAMECALL                         R4 R4 K7 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R6 4
       27 DUPTABLE                         R7 K17 [{["LayoutOrder"], ["Uri"], ["OnSelect"], ["OnSelectArrow"], ["ShowContextMenu"], ["Visible"] = True, ["EnabledChildren"] = True, ["MenuData"]}]
       28 GETUPVAL                         R8 5
       29 CALL                             R8 0 1
       30 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R2 R7 K9 ["Uri"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 SETTABLEKS                       R8 R7 K10 ["OnSelect"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U8
       42 SETTABLEKS                       R8 R7 K11 ["OnSelectArrow"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R7 K12 ["ShowContextMenu"]
       50 GETUPVAL                         R8 10
       51 SETTABLEKS                       R8 R7 K16 ["MenuData"]
       53 MOVE                             R8 R1
       54 GETUPVAL                         R9 11
       55 CALL                             R6 3 -1
       56 CALL                             R4 -1 -1
       57 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["wrap"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["use"]
        6 CALL                             R1 0 1
        7 NAMECALL                         R1 R1 K2 ["get"]
        9 CALL                             R1 1 1
       10 NAMECALL                         R1 R1 K3 ["GetUri"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 1
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 3
       16 CALL                             R1 1 3
       17 GETUPVAL                         R4 4
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K4 ["child"]
       22 MOVE                             R6 R0
       23 LOADK                            R7 K5 ["SplitButton"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 5
       26 JUMPIFEQKNIL                     R6 ; [+8]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["child"]
       31 MOVE                             R7 R5
       32 GETUPVAL                         R8 5
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 GETUPVAL                         R6 6
       36 GETUPVAL                         R7 7
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          REF R5
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U14
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 8
       52 GETUPVAL                         R8 15
       53 DUPTABLE                         R9 K8 [{["tag"] = "gap-large row padding-small auto-xy align-x-center align-y-center"}]
       54 MOVE                             R10 R6
       55 CALL                             R7 3 -1
       56 CLOSEUPVALS                      R5
       57 RETURN                           R7 -1

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U13
       17 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["child"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 CALL                             R4 2 1
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R6 3
        8 DUPTABLE                         R7 K17 [{"LayoutOrder", "Uri", "OnSelect", "OnSelectArrow", "ShowContextMenu", "Visible", "EnabledChildren", "Disabled", "MainButtonSelected", "IconOnly", "Size", "Icon", "Text", "Tooltip", "MenuData", "Single"}]
        9 GETUPVAL                         R8 4
       10 CALL                             R8 0 1
       11 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R7 K2 ["Uri"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 SETTABLEKS                       R8 R7 K3 ["OnSelect"]
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U7
       23 SETTABLEKS                       R8 R7 K4 ["OnSelectArrow"]
       25 NEWCLOSURE                       R8 P2
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R8 R7 K5 ["ShowContextMenu"]
       31 GETUPVAL                         R8 9
       32 GETTABLEKS                       R8 R8 K18 ["controls"]
       34 GETTABLEKS                       R8 R8 K6 ["Visible"]
       36 SETTABLEKS                       R8 R7 K6 ["Visible"]
       38 GETUPVAL                         R8 9
       39 GETTABLEKS                       R8 R8 K18 ["controls"]
       41 GETTABLEKS                       R8 R8 K7 ["EnabledChildren"]
       43 SETTABLEKS                       R8 R7 K7 ["EnabledChildren"]
       45 GETUPVAL                         R8 9
       46 GETTABLEKS                       R8 R8 K18 ["controls"]
       48 GETTABLEKS                       R8 R8 K8 ["Disabled"]
       50 SETTABLEKS                       R8 R7 K8 ["Disabled"]
       52 GETUPVAL                         R8 9
       53 GETTABLEKS                       R8 R8 K18 ["controls"]
       55 GETTABLEKS                       R8 R8 K19 ["Selected"]
       57 SETTABLEKS                       R8 R7 K9 ["MainButtonSelected"]
       59 GETUPVAL                         R8 9
       60 GETTABLEKS                       R8 R8 K18 ["controls"]
       62 GETTABLEKS                       R8 R8 K10 ["IconOnly"]
       64 SETTABLEKS                       R8 R7 K10 ["IconOnly"]
       66 GETUPVAL                         R8 9
       67 GETTABLEKS                       R8 R8 K18 ["controls"]
       69 GETTABLEKS                       R8 R8 K11 ["Size"]
       71 SETTABLEKS                       R8 R7 K11 ["Size"]
       73 SETTABLEKS                       R1 R7 K12 ["Icon"]
       75 SETTABLEKS                       R2 R7 K13 ["Text"]
       77 SETTABLEKS                       R3 R7 K14 ["Tooltip"]
       79 GETUPVAL                         R8 10
       80 SETTABLEKS                       R8 R7 K15 ["MenuData"]
       82 GETUPVAL                         R8 9
       83 GETTABLEKS                       R8 R8 K18 ["controls"]
       85 GETTABLEKS                       R8 R8 K16 ["Single"]
       87 SETTABLEKS                       R8 R7 K16 ["Single"]
       89 CALL                             R5 2 -1
       90 RETURN                           R5 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["wrap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["use"]
        6 CALL                             R2 0 1
        7 NAMECALL                         R2 R2 K2 ["get"]
        9 CALL                             R2 1 1
       10 NAMECALL                         R2 R2 K3 ["GetUri"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 3
       17 GETUPVAL                         R5 4
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K4 ["child"]
       22 MOVE                             R7 R1
       23 LOADK                            R8 K5 ["SplitButton/Custom"]
       24 CALL                             R6 2 1
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 GETTABLEKS                       R8 R0 K6 ["controls"]
       39 GETTABLEKS                       R8 R8 K7 ["Icon"]
       41 GETTABLEKS                       R10 R0 K6 ["controls"]
       43 GETTABLEKS                       R10 R10 K9 ["Text"]
       45 ORK                              R9 R10 K8 ["Button"]
       46 GETTABLEKS                       R11 R0 K6 ["controls"]
       48 GETTABLEKS                       R11 R11 K11 ["ToolTip"]
       50 ORK                              R10 R11 K10 ["This is a tooltip"]
       51 GETUPVAL                         R11 5
       52 GETUPVAL                         R12 10
       53 DUPTABLE                         R13 K14 [{["tag"] = "gap-small row padding-small auto-xy align-x-center align-y-center size-0-full"}]
       54 DUPTABLE                         R14 K18 [{"A", "B", "C"}]
       55 MOVE                             R15 R7
       56 LOADK                            R16 K19 ["First SplitButton"]
       57 MOVE                             R17 R8
       58 MOVE                             R18 R9
       59 MOVE                             R19 R10
       60 CALL                             R15 4 1
       61 SETTABLEKS                       R15 R14 K15 ["A"]
       63 MOVE                             R15 R7
       64 LOADK                            R16 K20 ["Second SplitButton"]
       65 MOVE                             R17 R8
       66 MOVE                             R18 R9
       67 MOVE                             R19 R10
       68 CALL                             R15 4 1
       69 SETTABLEKS                       R15 R14 K16 ["B"]
       71 MOVE                             R15 R7
       72 LOADK                            R16 K21 ["Third SplitButton"]
       73 MOVE                             R17 R8
       74 MOVE                             R18 R9
       75 MOVE                             R19 R10
       76 CALL                             R15 4 1
       77 SETTABLEKS                       R15 R14 K17 ["C"]
       79 CALL                             R11 3 -1
       80 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R4 K11 ["Plugin"]
       27 GETTABLEKS                       R5 R3 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["counter"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K6 ["Packages"]
       35 GETTABLEKS                       R7 R7 K14 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R6 K15 ["View"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K6 ["Packages"]
       44 GETTABLEKS                       R9 R9 K16 ["Dash"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R8 K17 ["join"]
       49 GETTABLEKS                       R10 R8 K18 ["collect"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K6 ["Packages"]
       55 GETTABLEKS                       R12 R12 K19 ["StudioFoundation"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R12 R11 K12 ["Util"]
       60 GETTABLEKS                       R12 R12 K20 ["StudioUri"]
       62 GETIMPORT                        R13 K5 [require]
       64 GETIMPORT                        R14 K1 [script]
       66 GETTABLEKS                       R14 R14 K21 ["Parent"]
       68 GETTABLEKS                       R14 R14 K22 ["SplitButton"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K23 ["Src"]
       75 GETTABLEKS                       R15 R15 K24 ["Components"]
       77 GETTABLEKS                       R15 R15 K25 ["ControlsView"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K23 ["Src"]
       84 GETTABLEKS                       R16 R16 K26 ["Hooks"]
       86 GETTABLEKS                       R16 R16 K27 ["useMenu"]
       88 CALL                             R15 1 1
       89 NEWTABLE                         R16 0 1
       91 DUPTABLE                         R17 K31 [{["Type"] = "Column", ["Children"]}]
       92 NEWTABLE                         R18 0 3
       94 DUPTABLE                         R19 K37 [{["Type"] = "Option", ["Id"] = "Primary", ["Text"] = "Primary Action"}]
       95 DUPTABLE                         R20 K40 [{["Type"] = "Option", ["Id"] = "Secondary", ["Text"] = "Secondary Action"}]
       96 DUPTABLE                         R21 K43 [{["Type"] = "Option", ["Id"] = "Tertiary", ["Text"] = "Tertiary Action"}]
       97 SETLIST                          R18 R19 3 [1]
       99 SETTABLEKS                       R18 R17 K30 ["Children"]
      101 SETLIST                          R16 R17 1 [1]
      103 NEWTABLE                         R17 0 1
      105 DUPTABLE                         R18 K31 [{["Type"] = "Column", ["Children"]}]
      106 NEWTABLE                         R19 0 3
      108 DUPTABLE                         R20 K46 [{["Type"] = "Option", ["Id"] = "OptionA", ["Text"] = "Option A"}]
      109 DUPTABLE                         R21 K49 [{["Type"] = "Option", ["Id"] = "OptionB", ["Text"] = "Option B"}]
      110 DUPTABLE                         R22 K52 [{["Type"] = "Option", ["Id"] = "OptionC", ["Text"] = "Option C"}]
      111 SETLIST                          R19 R20 3 [1]
      113 SETTABLEKS                       R19 R18 K30 ["Children"]
      115 SETLIST                          R17 R18 1 [1]
      117 NEWTABLE                         R18 0 1
      119 DUPTABLE                         R19 K31 [{["Type"] = "Column", ["Children"]}]
      120 NEWTABLE                         R20 0 3
      122 DUPTABLE                         R21 K55 [{["Type"] = "Option", ["Id"] = "AddTools", ["Text"] = "Add Tools"}]
      123 DUPTABLE                         R22 K58 [{["Type"] = "Option", ["Id"] = "AddSeparator", ["Text"] = "Add Separator"}]
      124 DUPTABLE                         R23 K61 [{["Type"] = "Option", ["Id"] = "ManageTabs", ["Text"] = "Manage Tabs"}]
      125 SETLIST                          R20 R21 3 [1]
      127 SETTABLEKS                       R20 R19 K30 ["Children"]
      129 SETLIST                          R18 R19 1 [1]
      131 DUPCLOSURE                       R19 K62 [PROTO_0]
      132 CAPTURE                          VAL R18
      133 NEWTABLE                         R20 0 18
      135 DUPTABLE                         R21 K66 [{["Icon"] = "AI", ["Text"] = "AI", ["Tooltip"] = "AI"}]
      136 DUPTABLE                         R22 K68 [{["Icon"] = "Placeholder", ["Text"] = "Placeholder", ["Tooltip"] = "Placeholder"}]
      137 DUPTABLE                         R23 K71 [{["Icon"] = "StepInto", ["Text"] = "Step Into", ["Tooltip"] = "Step Into"}]
      138 DUPTABLE                         R24 K74 [{["Icon"] = "StepOut", ["Text"] = "Step Out", ["Tooltip"] = "Step Out"}]
      139 DUPTABLE                         R25 K77 [{["Icon"] = "StepOver", ["Text"] = "Step Over", ["Tooltip"] = "Step Over"}]
      140 DUPTABLE                         R26 K79 [{["Icon"] = "GUI", ["Text"] = "GUI", ["Tooltip"] = "GUI"}]
      141 DUPTABLE                         R27 K81 [{["Icon"] = "Script", ["Text"] = "Script", ["Tooltip"] = "Script"}]
      142 DUPTABLE                         R28 K83 [{["Icon"] = "Lock", ["Text"] = "Lock", ["Tooltip"] = "Lock"}]
      143 DUPTABLE                         R29 K85 [{["Icon"] = "Anchor", ["Text"] = "Anchor", ["Tooltip"] = "Anchor"}]
      144 DUPTABLE                         R30 K66 [{["Icon"] = "AI", ["Text"] = "AI", ["Tooltip"] = "AI"}]
      145 DUPTABLE                         R31 K68 [{["Icon"] = "Placeholder", ["Text"] = "Placeholder", ["Tooltip"] = "Placeholder"}]
      146 DUPTABLE                         R32 K71 [{["Icon"] = "StepInto", ["Text"] = "Step Into", ["Tooltip"] = "Step Into"}]
      147 DUPTABLE                         R33 K74 [{["Icon"] = "StepOut", ["Text"] = "Step Out", ["Tooltip"] = "Step Out"}]
      148 DUPTABLE                         R34 K77 [{["Icon"] = "StepOver", ["Text"] = "Step Over", ["Tooltip"] = "Step Over"}]
      149 DUPTABLE                         R35 K79 [{["Icon"] = "GUI", ["Text"] = "GUI", ["Tooltip"] = "GUI"}]
      150 DUPTABLE                         R36 K81 [{["Icon"] = "Script", ["Text"] = "Script", ["Tooltip"] = "Script"}]
      151 SETLIST                          R20 R21 16 [1]
      153 DUPTABLE                         R21 K83 [{["Icon"] = "Lock", ["Text"] = "Lock", ["Tooltip"] = "Lock"}]
      154 DUPTABLE                         R22 K85 [{["Icon"] = "Anchor", ["Text"] = "Anchor", ["Tooltip"] = "Anchor"}]
      155 SETLIST                          R20 R21 2 [17]
      157 DUPCLOSURE                       R21 K86 [PROTO_6]
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R7
      172 DUPCLOSURE                       R22 K87 [PROTO_11]
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R7
      184 DUPTABLE                         R23 K92 [{["controls"], ["summary"] = "SplitButton combines a primary action with a secondary dropdown. Clicking the main area invokes OnSelect, while the arrow (or a long-press) invokes OnSelectArrow. It supports tooltips when the mouse is hovering over the button, right-click context menus, selected/disabled states, Large/Small sizes, icon-only mode, and density-aware visuals.", ["stories"]}]
      185 DUPTABLE                         R24 K103 [{["Disabled"], ["Selected"], ["IconOnly"], ["Size"], ["EnabledChildren"], ["Visible"], ["Single"], ["Icon"], ["Text"] = "Step Forward", ["ToolTip"] = "This is a tooltip"}]
      186 NEWTABLE                         R25 0 2
      188 LOADB                            R26 0
      189 LOADB                            R27 1
      190 SETLIST                          R25 R26 2 [1]
      192 SETTABLEKS                       R25 R24 K93 ["Disabled"]
      194 NEWTABLE                         R25 0 2
      196 LOADB                            R26 0
      197 LOADB                            R27 1
      198 SETLIST                          R25 R26 2 [1]
      200 SETTABLEKS                       R25 R24 K94 ["Selected"]
      202 NEWTABLE                         R25 0 2
      204 LOADB                            R26 0
      205 LOADB                            R27 1
      206 SETLIST                          R25 R26 2 [1]
      208 SETTABLEKS                       R25 R24 K95 ["IconOnly"]
      210 NEWTABLE                         R25 0 2
      212 LOADK                            R26 K104 ["Large"]
      213 LOADK                            R27 K105 ["Small"]
      214 SETLIST                          R25 R26 2 [1]
      216 SETTABLEKS                       R25 R24 K96 ["Size"]
      218 NEWTABLE                         R25 0 2
      220 LOADB                            R26 1
      221 LOADB                            R27 0
      222 SETLIST                          R25 R26 2 [1]
      224 SETTABLEKS                       R25 R24 K97 ["EnabledChildren"]
      226 NEWTABLE                         R25 0 2
      228 LOADB                            R26 1
      229 LOADB                            R27 0
      230 SETLIST                          R25 R26 2 [1]
      232 SETTABLEKS                       R25 R24 K98 ["Visible"]
      234 NEWTABLE                         R25 0 2
      236 LOADB                            R26 0
      237 LOADB                            R27 1
      238 SETLIST                          R25 R26 2 [1]
      240 SETTABLEKS                       R25 R24 K99 ["Single"]
      242 NEWTABLE                         R25 0 9
      244 LOADK                            R26 K64 ["AI"]
      245 LOADK                            R27 K67 ["Placeholder"]
      246 LOADK                            R28 K69 ["StepInto"]
      247 LOADK                            R29 K72 ["StepOut"]
      248 LOADK                            R30 K75 ["StepOver"]
      249 LOADK                            R31 K78 ["GUI"]
      250 LOADK                            R32 K80 ["Script"]
      251 LOADK                            R33 K82 ["Lock"]
      252 LOADK                            R34 K84 ["Anchor"]
      253 SETLIST                          R25 R26 9 [1]
      255 SETTABLEKS                       R25 R24 K63 ["Icon"]
      257 SETTABLEKS                       R24 R23 K88 ["controls"]
      259 NEWTABLE                         R24 0 7
      261 DUPTABLE                         R25 K110 [{["name"] = "Custom", ["story"], ["summary"] = "Three custom SplitButtons with controls to toggle visibility, disabled, selected, icon-only, size, and child enablement."}]
      262 SETTABLEKS                       R22 R25 K108 ["story"]
      264 DUPTABLE                         R26 K113 [{["name"] = "Normal", ["story"], ["summary"] = "Default enabled SplitButtons with text and icons"}]
      265 NEWTABLE                         R28 0 0
      267 LOADK                            R29 K111 ["Normal"]
      268 NEWCLOSURE                       R27 P3
      269 CAPTURE                          VAL R12
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R15
      272 CAPTURE                          VAL R14
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R29
      275 CAPTURE                          VAL R10
      276 CAPTURE                          VAL R20
      277 CAPTURE                          VAL R2
      278 CAPTURE                          VAL R13
      279 CAPTURE                          VAL R9
      280 CAPTURE                          VAL R16
      281 CAPTURE                          VAL R17
      282 CAPTURE                          VAL R19
      283 CAPTURE                          VAL R28
      284 CAPTURE                          VAL R7
      285 SETTABLEKS                       R27 R26 K108 ["story"]
      287 DUPTABLE                         R27 K115 [{["name"] = "Single", ["story"], ["summary"] = "Single split buttons where arrow selection is controlled by ArrowSelectedFromAction only, not by menu open state."}]
      288 DUPTABLE                         R29 K117 [{["Single"] = True}]
      289 LOADK                            R30 K99 ["Single"]
      290 NEWCLOSURE                       R28 P3
      291 CAPTURE                          VAL R12
      292 CAPTURE                          VAL R4
      293 CAPTURE                          VAL R15
      294 CAPTURE                          VAL R14
      295 CAPTURE                          VAL R5
      296 CAPTURE                          VAL R30
      297 CAPTURE                          VAL R10
      298 CAPTURE                          VAL R20
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R13
      301 CAPTURE                          VAL R9
      302 CAPTURE                          VAL R16
      303 CAPTURE                          VAL R17
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R29
      306 CAPTURE                          VAL R7
      307 SETTABLEKS                       R28 R27 K108 ["story"]
      309 DUPTABLE                         R28 K119 [{["name"] = "Disabled", ["story"], ["summary"] = "Shows the disabled visual state for the main button. Arrow icon is enabled."}]
      310 DUPTABLE                         R30 K120 [{["Disabled"] = True}]
      311 LOADK                            R31 K93 ["Disabled"]
      312 NEWCLOSURE                       R29 P3
      313 CAPTURE                          VAL R12
      314 CAPTURE                          VAL R4
      315 CAPTURE                          VAL R15
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R31
      319 CAPTURE                          VAL R10
      320 CAPTURE                          VAL R20
      321 CAPTURE                          VAL R2
      322 CAPTURE                          VAL R13
      323 CAPTURE                          VAL R9
      324 CAPTURE                          VAL R16
      325 CAPTURE                          VAL R17
      326 CAPTURE                          VAL R19
      327 CAPTURE                          VAL R30
      328 CAPTURE                          VAL R7
      329 SETTABLEKS                       R29 R28 K108 ["story"]
      331 DUPTABLE                         R29 K123 [{["name"] = "Disabled and EnabledChildren false", ["story"], ["summary"] = "Shows the disabled visual state and EnabledChildren false with muted arrow. Interactions are suppressed to illustrate the fully non-interactive behavior."}]
      332 DUPTABLE                         R31 K125 [{["Disabled"] = True, ["EnabledChildren"] = False}]
      333 LOADK                            R32 K126 ["DisabledAndEnabledChildrenFalse"]
      334 NEWCLOSURE                       R30 P3
      335 CAPTURE                          VAL R12
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R15
      338 CAPTURE                          VAL R14
      339 CAPTURE                          VAL R5
      340 CAPTURE                          VAL R32
      341 CAPTURE                          VAL R10
      342 CAPTURE                          VAL R20
      343 CAPTURE                          VAL R2
      344 CAPTURE                          VAL R13
      345 CAPTURE                          VAL R9
      346 CAPTURE                          VAL R16
      347 CAPTURE                          VAL R17
      348 CAPTURE                          VAL R19
      349 CAPTURE                          VAL R31
      350 CAPTURE                          VAL R7
      351 SETTABLEKS                       R30 R29 K108 ["story"]
      353 DUPTABLE                         R30 K128 [{["name"] = "Selected", ["story"], ["summary"] = "Highlights the selected state to indicate an active tool, behavior mirrors the normal variant."}]
      354 DUPTABLE                         R32 K129 [{["Selected"] = True}]
      355 LOADK                            R33 K94 ["Selected"]
      356 NEWCLOSURE                       R31 P3
      357 CAPTURE                          VAL R12
      358 CAPTURE                          VAL R4
      359 CAPTURE                          VAL R15
      360 CAPTURE                          VAL R14
      361 CAPTURE                          VAL R5
      362 CAPTURE                          VAL R33
      363 CAPTURE                          VAL R10
      364 CAPTURE                          VAL R20
      365 CAPTURE                          VAL R2
      366 CAPTURE                          VAL R13
      367 CAPTURE                          VAL R9
      368 CAPTURE                          VAL R16
      369 CAPTURE                          VAL R17
      370 CAPTURE                          VAL R19
      371 CAPTURE                          VAL R32
      372 CAPTURE                          VAL R7
      373 SETTABLEKS                       R31 R30 K108 ["story"]
      375 DUPTABLE                         R31 K132 [{["name"] = "Small and IconOnly", ["story"], ["summary"] = "Compact icon-only variant at Small size, omitting text to save space. Not all icons are available in small mode."}]
      376 DUPTABLE                         R33 K133 [{["IconOnly"] = True, ["Size"] = "Small"}]
      377 LOADK                            R34 K134 ["SmallIconOnly"]
      378 NEWCLOSURE                       R32 P3
      379 CAPTURE                          VAL R12
      380 CAPTURE                          VAL R4
      381 CAPTURE                          VAL R15
      382 CAPTURE                          VAL R14
      383 CAPTURE                          VAL R5
      384 CAPTURE                          VAL R34
      385 CAPTURE                          VAL R10
      386 CAPTURE                          VAL R20
      387 CAPTURE                          VAL R2
      388 CAPTURE                          VAL R13
      389 CAPTURE                          VAL R9
      390 CAPTURE                          VAL R16
      391 CAPTURE                          VAL R17
      392 CAPTURE                          VAL R19
      393 CAPTURE                          VAL R33
      394 CAPTURE                          VAL R7
      395 SETTABLEKS                       R32 R31 K108 ["story"]
      397 SETLIST                          R24 R25 7 [1]
      399 SETTABLEKS                       R24 R23 K91 ["stories"]
      401 RETURN                           R23 1
