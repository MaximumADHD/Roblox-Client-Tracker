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
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_3:
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
       18 LOADK                            R4 K6 ["RibbonButton $%*"]
       19 MOVE                             R6 R0
       20 NAMECALL                         R4 R4 K7 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R6 4
       27 DUPTABLE                         R7 K14 [{["LayoutOrder"], ["Uri"], ["OnSelect"], ["ShowContextMenu"], ["Visible"] = True}]
       28 GETUPVAL                         R8 5
       29 CALL                             R8 0 1
       30 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R2 R7 K9 ["Uri"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 SETTABLEKS                       R8 R7 K10 ["OnSelect"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R8 R7 K11 ["ShowContextMenu"]
       45 MOVE                             R8 R1
       46 GETUPVAL                         R9 9
       47 CALL                             R6 3 -1
       48 CALL                             R4 -1 -1
       49 RETURN                           R3 -1

PROTO_4:
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
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 4
       18 CALL                             R2 0 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["child"]
       22 MOVE                             R4 R0
       23 LOADK                            R5 K5 ["RibbonButton"]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 5
       26 JUMPIFEQKNIL                     R4 ; [+8]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K4 ["child"]
       31 MOVE                             R5 R3
       32 GETUPVAL                         R6 5
       33 CALL                             R4 2 1
       34 MOVE                             R3 R4
       35 GETUPVAL                         R4 6
       36 GETUPVAL                         R5 7
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          REF R3
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 8
       50 GETUPVAL                         R6 14
       51 DUPTABLE                         R7 K8 [{["tag"] = "gap-small row padding-small auto-xy align-x-center align-y-center size-0-full"}]
       52 MOVE                             R8 R4
       53 CALL                             R5 3 -1
       54 CLOSEUPVALS                      R3
       55 RETURN                           R5 -1

PROTO_5:
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
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U12
       16 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["child"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 CALL                             R4 2 1
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R6 3
        8 DUPTABLE                         R7 K13 [{"LayoutOrder", "Uri", "OnSelect", "ShowContextMenu", "Visible", "Disabled", "Selected", "IconOnly", "Size", "Icon", "Text", "Tooltip"}]
        9 GETUPVAL                         R8 4
       10 CALL                             R8 0 1
       11 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R7 K2 ["Uri"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 SETTABLEKS                       R8 R7 K3 ["OnSelect"]
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R8 R7 K4 ["ShowContextMenu"]
       26 GETUPVAL                         R8 8
       27 GETTABLEKS                       R8 R8 K14 ["controls"]
       29 GETTABLEKS                       R8 R8 K5 ["Visible"]
       31 SETTABLEKS                       R8 R7 K5 ["Visible"]
       33 GETUPVAL                         R8 8
       34 GETTABLEKS                       R8 R8 K14 ["controls"]
       36 GETTABLEKS                       R8 R8 K6 ["Disabled"]
       38 SETTABLEKS                       R8 R7 K6 ["Disabled"]
       40 GETUPVAL                         R8 8
       41 GETTABLEKS                       R8 R8 K14 ["controls"]
       43 GETTABLEKS                       R8 R8 K7 ["Selected"]
       45 SETTABLEKS                       R8 R7 K7 ["Selected"]
       47 GETUPVAL                         R8 8
       48 GETTABLEKS                       R8 R8 K14 ["controls"]
       50 GETTABLEKS                       R8 R8 K8 ["IconOnly"]
       52 SETTABLEKS                       R8 R7 K8 ["IconOnly"]
       54 GETUPVAL                         R8 8
       55 GETTABLEKS                       R8 R8 K14 ["controls"]
       57 GETTABLEKS                       R8 R8 K9 ["Size"]
       59 SETTABLEKS                       R8 R7 K9 ["Size"]
       61 SETTABLEKS                       R1 R7 K10 ["Icon"]
       63 SETTABLEKS                       R2 R7 K11 ["Text"]
       65 SETTABLEKS                       R3 R7 K12 ["Tooltip"]
       67 CALL                             R5 2 -1
       68 RETURN                           R5 -1

PROTO_9:
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
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 4
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["child"]
       22 MOVE                             R5 R1
       23 LOADK                            R6 K5 ["RibbonButton/Custom"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          VAL R0
       35 GETTABLEKS                       R6 R0 K6 ["controls"]
       37 GETTABLEKS                       R6 R6 K7 ["Icon"]
       39 GETTABLEKS                       R8 R0 K6 ["controls"]
       41 GETTABLEKS                       R8 R8 K9 ["Text"]
       43 ORK                              R7 R8 K8 ["Button"]
       44 GETTABLEKS                       R9 R0 K6 ["controls"]
       46 GETTABLEKS                       R9 R9 K11 ["ToolTip"]
       48 ORK                              R8 R9 K10 ["This is a tooltip"]
       49 GETUPVAL                         R9 5
       50 GETUPVAL                         R10 9
       51 DUPTABLE                         R11 K14 [{["tag"] = "gap-small row padding-small auto-xy align-x-center align-y-center size-0-full"}]
       52 DUPTABLE                         R12 K18 [{"A", "B", "C"}]
       53 MOVE                             R13 R5
       54 LOADK                            R14 K19 ["First RibbonButton"]
       55 MOVE                             R15 R6
       56 MOVE                             R16 R7
       57 MOVE                             R17 R8
       58 CALL                             R13 4 1
       59 SETTABLEKS                       R13 R12 K15 ["A"]
       61 MOVE                             R13 R5
       62 LOADK                            R14 K20 ["Second RibbonButton"]
       63 MOVE                             R15 R6
       64 MOVE                             R16 R7
       65 MOVE                             R17 R8
       66 CALL                             R13 4 1
       67 SETTABLEKS                       R13 R12 K16 ["B"]
       69 MOVE                             R13 R5
       70 LOADK                            R14 K21 ["Third RibbonButton"]
       71 MOVE                             R15 R6
       72 MOVE                             R16 R7
       73 MOVE                             R17 R8
       74 CALL                             R13 4 1
       75 SETTABLEKS                       R13 R12 K17 ["C"]
       77 CALL                             R9 3 -1
       78 RETURN                           R9 -1

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
       68 GETTABLEKS                       R14 R14 K22 ["RibbonButton"]
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
      108 DUPTABLE                         R20 K46 [{["Type"] = "Option", ["Id"] = "AddTools", ["Text"] = "Add Tools"}]
      109 DUPTABLE                         R21 K49 [{["Type"] = "Option", ["Id"] = "AddSeparator", ["Text"] = "Add Separator"}]
      110 DUPTABLE                         R22 K52 [{["Type"] = "Option", ["Id"] = "ManageTabs", ["Text"] = "Manage Tabs"}]
      111 SETLIST                          R19 R20 3 [1]
      113 SETTABLEKS                       R19 R18 K30 ["Children"]
      115 SETLIST                          R17 R18 1 [1]
      117 DUPCLOSURE                       R18 K53 [PROTO_0]
      118 CAPTURE                          VAL R17
      119 NEWTABLE                         R19 0 9
      121 DUPTABLE                         R20 K57 [{["Icon"] = "AI", ["Text"] = "AI", ["Tooltip"] = "AI"}]
      122 DUPTABLE                         R21 K59 [{["Icon"] = "Placeholder", ["Text"] = "Placeholder", ["Tooltip"] = "Placeholder"}]
      123 DUPTABLE                         R22 K62 [{["Icon"] = "StepInto", ["Text"] = "Step Into", ["Tooltip"] = "Step Into"}]
      124 DUPTABLE                         R23 K65 [{["Icon"] = "StepOut", ["Text"] = "Step Out", ["Tooltip"] = "Step Out"}]
      125 DUPTABLE                         R24 K68 [{["Icon"] = "StepOver", ["Text"] = "Step Over", ["Tooltip"] = "Step Over"}]
      126 DUPTABLE                         R25 K70 [{["Icon"] = "GUI", ["Text"] = "GUI", ["Tooltip"] = "GUI"}]
      127 DUPTABLE                         R26 K72 [{["Icon"] = "Script", ["Text"] = "Script", ["Tooltip"] = "Script"}]
      128 DUPTABLE                         R27 K74 [{["Icon"] = "Lock", ["Text"] = "Lock", ["Tooltip"] = "Lock"}]
      129 DUPTABLE                         R28 K76 [{["Icon"] = "Anchor", ["Text"] = "Anchor", ["Tooltip"] = "Anchor"}]
      130 SETLIST                          R19 R20 9 [1]
      132 DUPCLOSURE                       R20 K77 [PROTO_5]
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R7
      146 DUPCLOSURE                       R21 K78 [PROTO_9]
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R7
      157 DUPTABLE                         R22 K83 [{["controls"], ["summary"] = "RibbonButton triggers a single action. It supports tooltips on hover, right-click context menus, selected/disabled states, Large/Small sizes, icon-only mode, and density-aware visuals.", ["stories"]}]
      158 DUPTABLE                         R23 K92 [{["Disabled"], ["Selected"], ["IconOnly"], ["Size"], ["Visible"], ["Icon"], ["Text"] = "Step Forward", ["ToolTip"] = "This is a tooltip"}]
      159 NEWTABLE                         R24 0 2
      161 LOADB                            R25 0
      162 LOADB                            R26 1
      163 SETLIST                          R24 R25 2 [1]
      165 SETTABLEKS                       R24 R23 K84 ["Disabled"]
      167 NEWTABLE                         R24 0 2
      169 LOADB                            R25 0
      170 LOADB                            R26 1
      171 SETLIST                          R24 R25 2 [1]
      173 SETTABLEKS                       R24 R23 K85 ["Selected"]
      175 NEWTABLE                         R24 0 2
      177 LOADB                            R25 0
      178 LOADB                            R26 1
      179 SETLIST                          R24 R25 2 [1]
      181 SETTABLEKS                       R24 R23 K86 ["IconOnly"]
      183 NEWTABLE                         R24 0 2
      185 LOADK                            R25 K93 ["Large"]
      186 LOADK                            R26 K94 ["Small"]
      187 SETLIST                          R24 R25 2 [1]
      189 SETTABLEKS                       R24 R23 K87 ["Size"]
      191 NEWTABLE                         R24 0 2
      193 LOADB                            R25 1
      194 LOADB                            R26 0
      195 SETLIST                          R24 R25 2 [1]
      197 SETTABLEKS                       R24 R23 K88 ["Visible"]
      199 NEWTABLE                         R24 0 9
      201 LOADK                            R25 K55 ["AI"]
      202 LOADK                            R26 K58 ["Placeholder"]
      203 LOADK                            R27 K60 ["StepInto"]
      204 LOADK                            R28 K63 ["StepOut"]
      205 LOADK                            R29 K66 ["StepOver"]
      206 LOADK                            R30 K69 ["GUI"]
      207 LOADK                            R31 K71 ["Script"]
      208 LOADK                            R32 K73 ["Lock"]
      209 LOADK                            R33 K75 ["Anchor"]
      210 SETLIST                          R24 R25 9 [1]
      212 SETTABLEKS                       R24 R23 K54 ["Icon"]
      214 SETTABLEKS                       R23 R22 K79 ["controls"]
      216 NEWTABLE                         R23 0 5
      218 DUPTABLE                         R24 K99 [{["name"] = "Custom", ["story"], ["summary"] = "Custom RibbonButtons with controls to toggle visibility, disabled, selected, icon-only, and size."}]
      219 SETTABLEKS                       R21 R24 K97 ["story"]
      221 DUPTABLE                         R25 K102 [{["name"] = "Normal", ["story"], ["summary"] = "Default enabled RibbonButtons with text and icons"}]
      222 NEWTABLE                         R27 0 0
      224 LOADK                            R28 K100 ["Normal"]
      225 NEWCLOSURE                       R26 P3
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R7
      241 SETTABLEKS                       R26 R25 K97 ["story"]
      243 DUPTABLE                         R26 K104 [{["name"] = "Disabled", ["story"], ["summary"] = "Shows the disabled visual state."}]
      244 DUPTABLE                         R28 K106 [{["Disabled"] = True}]
      245 LOADK                            R29 K84 ["Disabled"]
      246 NEWCLOSURE                       R27 P3
      247 CAPTURE                          VAL R12
      248 CAPTURE                          VAL R4
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R29
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R19
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R18
      260 CAPTURE                          VAL R28
      261 CAPTURE                          VAL R7
      262 SETTABLEKS                       R27 R26 K97 ["story"]
      264 DUPTABLE                         R27 K108 [{["name"] = "Selected", ["story"], ["summary"] = "Highlights the selected state to indicate an active tool."}]
      265 DUPTABLE                         R29 K109 [{["Selected"] = True}]
      266 LOADK                            R30 K85 ["Selected"]
      267 NEWCLOSURE                       R28 P3
      268 CAPTURE                          VAL R12
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R15
      271 CAPTURE                          VAL R14
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R30
      274 CAPTURE                          VAL R10
      275 CAPTURE                          VAL R19
      276 CAPTURE                          VAL R2
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R9
      279 CAPTURE                          VAL R16
      280 CAPTURE                          VAL R18
      281 CAPTURE                          VAL R29
      282 CAPTURE                          VAL R7
      283 SETTABLEKS                       R28 R27 K97 ["story"]
      285 DUPTABLE                         R28 K112 [{["name"] = "Small and IconOnly", ["story"], ["summary"] = "Compact icon-only variant at Small size, omitting text to save space."}]
      286 DUPTABLE                         R30 K113 [{["IconOnly"] = True, ["Size"] = "Small"}]
      287 LOADK                            R31 K114 ["SmallIconOnly"]
      288 NEWCLOSURE                       R29 P3
      289 CAPTURE                          VAL R12
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R15
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R5
      294 CAPTURE                          VAL R31
      295 CAPTURE                          VAL R10
      296 CAPTURE                          VAL R19
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R13
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R16
      301 CAPTURE                          VAL R18
      302 CAPTURE                          VAL R30
      303 CAPTURE                          VAL R7
      304 SETTABLEKS                       R29 R28 K97 ["story"]
      306 SETLIST                          R23 R24 5 [1]
      308 SETTABLEKS                       R23 R22 K82 ["stories"]
      310 RETURN                           R22 1
