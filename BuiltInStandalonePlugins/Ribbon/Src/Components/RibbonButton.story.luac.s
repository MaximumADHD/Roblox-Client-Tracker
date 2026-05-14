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
       27 DUPTABLE                         R7 K13 [{"LayoutOrder", "Uri", "OnSelect", "ShowContextMenu", "Visible"}]
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
       45 LOADB                            R8 1
       46 SETTABLEKS                       R8 R7 K12 ["Visible"]
       48 MOVE                             R8 R1
       49 GETUPVAL                         R9 9
       50 CALL                             R6 3 -1
       51 CALL                             R4 -1 -1
       52 RETURN                           R3 -1

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
       51 DUPTABLE                         R7 K7 [{"tag"}]
       52 LOADK                            R8 K8 ["gap-small row padding-small auto-xy align-x-center align-y-center size-0-full"]
       53 SETTABLEKS                       R8 R7 K6 ["tag"]
       55 MOVE                             R8 R4
       56 CALL                             R5 3 -1
       57 CLOSEUPVALS                      R3
       58 RETURN                           R5 -1

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
       51 DUPTABLE                         R11 K13 [{"tag"}]
       52 LOADK                            R12 K14 ["gap-small row padding-small auto-xy align-x-center align-y-center size-0-full"]
       53 SETTABLEKS                       R12 R11 K12 ["tag"]
       55 DUPTABLE                         R12 K18 [{"A", "B", "C"}]
       56 MOVE                             R13 R5
       57 LOADK                            R14 K19 ["First RibbonButton"]
       58 MOVE                             R15 R6
       59 MOVE                             R16 R7
       60 MOVE                             R17 R8
       61 CALL                             R13 4 1
       62 SETTABLEKS                       R13 R12 K15 ["A"]
       64 MOVE                             R13 R5
       65 LOADK                            R14 K20 ["Second RibbonButton"]
       66 MOVE                             R15 R6
       67 MOVE                             R16 R7
       68 MOVE                             R17 R8
       69 CALL                             R13 4 1
       70 SETTABLEKS                       R13 R12 K16 ["B"]
       72 MOVE                             R13 R5
       73 LOADK                            R14 K21 ["Third RibbonButton"]
       74 MOVE                             R15 R6
       75 MOVE                             R16 R7
       76 MOVE                             R17 R8
       77 CALL                             R13 4 1
       78 SETTABLEKS                       R13 R12 K17 ["C"]
       80 CALL                             R9 3 -1
       81 RETURN                           R9 -1

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
       91 DUPTABLE                         R17 K30 [{"Type", "Children"}]
       92 LOADK                            R18 K31 ["Column"]
       93 SETTABLEKS                       R18 R17 K28 ["Type"]
       95 NEWTABLE                         R18 0 3
       97 DUPTABLE                         R19 K34 [{"Type", "Id", "Text"}]
       98 LOADK                            R20 K35 ["Option"]
       99 SETTABLEKS                       R20 R19 K28 ["Type"]
      101 LOADK                            R20 K36 ["Primary"]
      102 SETTABLEKS                       R20 R19 K32 ["Id"]
      104 LOADK                            R20 K37 ["Primary Action"]
      105 SETTABLEKS                       R20 R19 K33 ["Text"]
      107 DUPTABLE                         R20 K34 [{"Type", "Id", "Text"}]
      108 LOADK                            R21 K35 ["Option"]
      109 SETTABLEKS                       R21 R20 K28 ["Type"]
      111 LOADK                            R21 K38 ["Secondary"]
      112 SETTABLEKS                       R21 R20 K32 ["Id"]
      114 LOADK                            R21 K39 ["Secondary Action"]
      115 SETTABLEKS                       R21 R20 K33 ["Text"]
      117 DUPTABLE                         R21 K34 [{"Type", "Id", "Text"}]
      118 LOADK                            R22 K35 ["Option"]
      119 SETTABLEKS                       R22 R21 K28 ["Type"]
      121 LOADK                            R22 K40 ["Tertiary"]
      122 SETTABLEKS                       R22 R21 K32 ["Id"]
      124 LOADK                            R22 K41 ["Tertiary Action"]
      125 SETTABLEKS                       R22 R21 K33 ["Text"]
      127 SETLIST                          R18 R19 3 [1]
      129 SETTABLEKS                       R18 R17 K29 ["Children"]
      131 SETLIST                          R16 R17 1 [1]
      133 NEWTABLE                         R17 0 1
      135 DUPTABLE                         R18 K30 [{"Type", "Children"}]
      136 LOADK                            R19 K31 ["Column"]
      137 SETTABLEKS                       R19 R18 K28 ["Type"]
      139 NEWTABLE                         R19 0 3
      141 DUPTABLE                         R20 K34 [{"Type", "Id", "Text"}]
      142 LOADK                            R21 K35 ["Option"]
      143 SETTABLEKS                       R21 R20 K28 ["Type"]
      145 LOADK                            R21 K42 ["AddTools"]
      146 SETTABLEKS                       R21 R20 K32 ["Id"]
      148 LOADK                            R21 K43 ["Add Tools"]
      149 SETTABLEKS                       R21 R20 K33 ["Text"]
      151 DUPTABLE                         R21 K34 [{"Type", "Id", "Text"}]
      152 LOADK                            R22 K35 ["Option"]
      153 SETTABLEKS                       R22 R21 K28 ["Type"]
      155 LOADK                            R22 K44 ["AddSeparator"]
      156 SETTABLEKS                       R22 R21 K32 ["Id"]
      158 LOADK                            R22 K45 ["Add Separator"]
      159 SETTABLEKS                       R22 R21 K33 ["Text"]
      161 DUPTABLE                         R22 K34 [{"Type", "Id", "Text"}]
      162 LOADK                            R23 K35 ["Option"]
      163 SETTABLEKS                       R23 R22 K28 ["Type"]
      165 LOADK                            R23 K46 ["ManageTabs"]
      166 SETTABLEKS                       R23 R22 K32 ["Id"]
      168 LOADK                            R23 K47 ["Manage Tabs"]
      169 SETTABLEKS                       R23 R22 K33 ["Text"]
      171 SETLIST                          R19 R20 3 [1]
      173 SETTABLEKS                       R19 R18 K29 ["Children"]
      175 SETLIST                          R17 R18 1 [1]
      177 DUPCLOSURE                       R18 K48 [PROTO_0]
      178 CAPTURE                          VAL R17
      179 NEWTABLE                         R19 0 9
      181 DUPTABLE                         R20 K51 [{"Icon", "Text", "Tooltip"}]
      182 LOADK                            R21 K52 ["AI"]
      183 SETTABLEKS                       R21 R20 K49 ["Icon"]
      185 LOADK                            R21 K52 ["AI"]
      186 SETTABLEKS                       R21 R20 K33 ["Text"]
      188 LOADK                            R21 K52 ["AI"]
      189 SETTABLEKS                       R21 R20 K50 ["Tooltip"]
      191 DUPTABLE                         R21 K51 [{"Icon", "Text", "Tooltip"}]
      192 LOADK                            R22 K53 ["Placeholder"]
      193 SETTABLEKS                       R22 R21 K49 ["Icon"]
      195 LOADK                            R22 K53 ["Placeholder"]
      196 SETTABLEKS                       R22 R21 K33 ["Text"]
      198 LOADK                            R22 K53 ["Placeholder"]
      199 SETTABLEKS                       R22 R21 K50 ["Tooltip"]
      201 DUPTABLE                         R22 K51 [{"Icon", "Text", "Tooltip"}]
      202 LOADK                            R23 K54 ["StepInto"]
      203 SETTABLEKS                       R23 R22 K49 ["Icon"]
      205 LOADK                            R23 K55 ["Step Into"]
      206 SETTABLEKS                       R23 R22 K33 ["Text"]
      208 LOADK                            R23 K55 ["Step Into"]
      209 SETTABLEKS                       R23 R22 K50 ["Tooltip"]
      211 DUPTABLE                         R23 K51 [{"Icon", "Text", "Tooltip"}]
      212 LOADK                            R24 K56 ["StepOut"]
      213 SETTABLEKS                       R24 R23 K49 ["Icon"]
      215 LOADK                            R24 K57 ["Step Out"]
      216 SETTABLEKS                       R24 R23 K33 ["Text"]
      218 LOADK                            R24 K57 ["Step Out"]
      219 SETTABLEKS                       R24 R23 K50 ["Tooltip"]
      221 DUPTABLE                         R24 K51 [{"Icon", "Text", "Tooltip"}]
      222 LOADK                            R25 K58 ["StepOver"]
      223 SETTABLEKS                       R25 R24 K49 ["Icon"]
      225 LOADK                            R25 K59 ["Step Over"]
      226 SETTABLEKS                       R25 R24 K33 ["Text"]
      228 LOADK                            R25 K59 ["Step Over"]
      229 SETTABLEKS                       R25 R24 K50 ["Tooltip"]
      231 DUPTABLE                         R25 K51 [{"Icon", "Text", "Tooltip"}]
      232 LOADK                            R26 K60 ["GUI"]
      233 SETTABLEKS                       R26 R25 K49 ["Icon"]
      235 LOADK                            R26 K60 ["GUI"]
      236 SETTABLEKS                       R26 R25 K33 ["Text"]
      238 LOADK                            R26 K60 ["GUI"]
      239 SETTABLEKS                       R26 R25 K50 ["Tooltip"]
      241 DUPTABLE                         R26 K51 [{"Icon", "Text", "Tooltip"}]
      242 LOADK                            R27 K61 ["Script"]
      243 SETTABLEKS                       R27 R26 K49 ["Icon"]
      245 LOADK                            R27 K61 ["Script"]
      246 SETTABLEKS                       R27 R26 K33 ["Text"]
      248 LOADK                            R27 K61 ["Script"]
      249 SETTABLEKS                       R27 R26 K50 ["Tooltip"]
      251 DUPTABLE                         R27 K51 [{"Icon", "Text", "Tooltip"}]
      252 LOADK                            R28 K62 ["Lock"]
      253 SETTABLEKS                       R28 R27 K49 ["Icon"]
      255 LOADK                            R28 K62 ["Lock"]
      256 SETTABLEKS                       R28 R27 K33 ["Text"]
      258 LOADK                            R28 K62 ["Lock"]
      259 SETTABLEKS                       R28 R27 K50 ["Tooltip"]
      261 DUPTABLE                         R28 K51 [{"Icon", "Text", "Tooltip"}]
      262 LOADK                            R29 K63 ["Anchor"]
      263 SETTABLEKS                       R29 R28 K49 ["Icon"]
      265 LOADK                            R29 K63 ["Anchor"]
      266 SETTABLEKS                       R29 R28 K33 ["Text"]
      268 LOADK                            R29 K63 ["Anchor"]
      269 SETTABLEKS                       R29 R28 K50 ["Tooltip"]
      271 SETLIST                          R19 R20 9 [1]
      273 DUPCLOSURE                       R20 K64 [PROTO_5]
      274 CAPTURE                          VAL R12
      275 CAPTURE                          VAL R4
      276 CAPTURE                          VAL R15
      277 CAPTURE                          VAL R14
      278 CAPTURE                          VAL R5
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R19
      281 CAPTURE                          VAL R2
      282 CAPTURE                          VAL R13
      283 CAPTURE                          VAL R9
      284 CAPTURE                          VAL R16
      285 CAPTURE                          VAL R18
      286 CAPTURE                          VAL R7
      287 DUPCLOSURE                       R21 K65 [PROTO_9]
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R15
      291 CAPTURE                          VAL R14
      292 CAPTURE                          VAL R5
      293 CAPTURE                          VAL R2
      294 CAPTURE                          VAL R13
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R18
      297 CAPTURE                          VAL R7
      298 DUPTABLE                         R22 K69 [{"controls", "summary", "stories"}]
      299 DUPTABLE                         R23 K76 [{"Disabled", "Selected", "IconOnly", "Size", "Visible", "Icon", "Text", "ToolTip"}]
      300 NEWTABLE                         R24 0 2
      302 LOADB                            R25 0
      303 LOADB                            R26 1
      304 SETLIST                          R24 R25 2 [1]
      306 SETTABLEKS                       R24 R23 K70 ["Disabled"]
      308 NEWTABLE                         R24 0 2
      310 LOADB                            R25 0
      311 LOADB                            R26 1
      312 SETLIST                          R24 R25 2 [1]
      314 SETTABLEKS                       R24 R23 K71 ["Selected"]
      316 NEWTABLE                         R24 0 2
      318 LOADB                            R25 0
      319 LOADB                            R26 1
      320 SETLIST                          R24 R25 2 [1]
      322 SETTABLEKS                       R24 R23 K72 ["IconOnly"]
      324 NEWTABLE                         R24 0 2
      326 LOADK                            R25 K77 ["Large"]
      327 LOADK                            R26 K78 ["Small"]
      328 SETLIST                          R24 R25 2 [1]
      330 SETTABLEKS                       R24 R23 K73 ["Size"]
      332 NEWTABLE                         R24 0 2
      334 LOADB                            R25 1
      335 LOADB                            R26 0
      336 SETLIST                          R24 R25 2 [1]
      338 SETTABLEKS                       R24 R23 K74 ["Visible"]
      340 NEWTABLE                         R24 0 9
      342 LOADK                            R25 K52 ["AI"]
      343 LOADK                            R26 K53 ["Placeholder"]
      344 LOADK                            R27 K54 ["StepInto"]
      345 LOADK                            R28 K56 ["StepOut"]
      346 LOADK                            R29 K58 ["StepOver"]
      347 LOADK                            R30 K60 ["GUI"]
      348 LOADK                            R31 K61 ["Script"]
      349 LOADK                            R32 K62 ["Lock"]
      350 LOADK                            R33 K63 ["Anchor"]
      351 SETLIST                          R24 R25 9 [1]
      353 SETTABLEKS                       R24 R23 K49 ["Icon"]
      355 LOADK                            R24 K79 ["Step Forward"]
      356 SETTABLEKS                       R24 R23 K33 ["Text"]
      358 LOADK                            R24 K80 ["This is a tooltip"]
      359 SETTABLEKS                       R24 R23 K75 ["ToolTip"]
      361 SETTABLEKS                       R23 R22 K66 ["controls"]
      363 LOADK                            R23 K81 ["RibbonButton triggers a single action. It supports tooltips on hover, right-click context menus, selected/disabled states, Large/Small sizes, icon-only mode, and density-aware visuals."]
      364 SETTABLEKS                       R23 R22 K67 ["summary"]
      366 NEWTABLE                         R23 0 5
      368 DUPTABLE                         R24 K84 [{"name", "story", "summary"}]
      369 LOADK                            R25 K85 ["Custom"]
      370 SETTABLEKS                       R25 R24 K82 ["name"]
      372 SETTABLEKS                       R21 R24 K83 ["story"]
      374 LOADK                            R25 K86 ["Custom RibbonButtons with controls to toggle visibility, disabled, selected, icon-only, and size."]
      375 SETTABLEKS                       R25 R24 K67 ["summary"]
      377 DUPTABLE                         R25 K84 [{"name", "story", "summary"}]
      378 LOADK                            R26 K87 ["Normal"]
      379 SETTABLEKS                       R26 R25 K82 ["name"]
      381 NEWTABLE                         R27 0 0
      383 LOADK                            R28 K87 ["Normal"]
      384 NEWCLOSURE                       R26 P3
      385 CAPTURE                          VAL R12
      386 CAPTURE                          VAL R4
      387 CAPTURE                          VAL R15
      388 CAPTURE                          VAL R14
      389 CAPTURE                          VAL R5
      390 CAPTURE                          VAL R28
      391 CAPTURE                          VAL R10
      392 CAPTURE                          VAL R19
      393 CAPTURE                          VAL R2
      394 CAPTURE                          VAL R13
      395 CAPTURE                          VAL R9
      396 CAPTURE                          VAL R16
      397 CAPTURE                          VAL R18
      398 CAPTURE                          VAL R27
      399 CAPTURE                          VAL R7
      400 SETTABLEKS                       R26 R25 K83 ["story"]
      402 LOADK                            R26 K88 ["Default enabled RibbonButtons with text and icons"]
      403 SETTABLEKS                       R26 R25 K67 ["summary"]
      405 DUPTABLE                         R26 K84 [{"name", "story", "summary"}]
      406 LOADK                            R27 K70 ["Disabled"]
      407 SETTABLEKS                       R27 R26 K82 ["name"]
      409 DUPTABLE                         R28 K89 [{"Disabled"}]
      410 LOADB                            R29 1
      411 SETTABLEKS                       R29 R28 K70 ["Disabled"]
      413 LOADK                            R29 K70 ["Disabled"]
      414 NEWCLOSURE                       R27 P3
      415 CAPTURE                          VAL R12
      416 CAPTURE                          VAL R4
      417 CAPTURE                          VAL R15
      418 CAPTURE                          VAL R14
      419 CAPTURE                          VAL R5
      420 CAPTURE                          VAL R29
      421 CAPTURE                          VAL R10
      422 CAPTURE                          VAL R19
      423 CAPTURE                          VAL R2
      424 CAPTURE                          VAL R13
      425 CAPTURE                          VAL R9
      426 CAPTURE                          VAL R16
      427 CAPTURE                          VAL R18
      428 CAPTURE                          VAL R28
      429 CAPTURE                          VAL R7
      430 SETTABLEKS                       R27 R26 K83 ["story"]
      432 LOADK                            R27 K90 ["Shows the disabled visual state."]
      433 SETTABLEKS                       R27 R26 K67 ["summary"]
      435 DUPTABLE                         R27 K84 [{"name", "story", "summary"}]
      436 LOADK                            R28 K71 ["Selected"]
      437 SETTABLEKS                       R28 R27 K82 ["name"]
      439 DUPTABLE                         R29 K91 [{"Selected"}]
      440 LOADB                            R30 1
      441 SETTABLEKS                       R30 R29 K71 ["Selected"]
      443 LOADK                            R30 K71 ["Selected"]
      444 NEWCLOSURE                       R28 P3
      445 CAPTURE                          VAL R12
      446 CAPTURE                          VAL R4
      447 CAPTURE                          VAL R15
      448 CAPTURE                          VAL R14
      449 CAPTURE                          VAL R5
      450 CAPTURE                          VAL R30
      451 CAPTURE                          VAL R10
      452 CAPTURE                          VAL R19
      453 CAPTURE                          VAL R2
      454 CAPTURE                          VAL R13
      455 CAPTURE                          VAL R9
      456 CAPTURE                          VAL R16
      457 CAPTURE                          VAL R18
      458 CAPTURE                          VAL R29
      459 CAPTURE                          VAL R7
      460 SETTABLEKS                       R28 R27 K83 ["story"]
      462 LOADK                            R28 K92 ["Highlights the selected state to indicate an active tool."]
      463 SETTABLEKS                       R28 R27 K67 ["summary"]
      465 DUPTABLE                         R28 K84 [{"name", "story", "summary"}]
      466 LOADK                            R29 K93 ["Small and IconOnly"]
      467 SETTABLEKS                       R29 R28 K82 ["name"]
      469 DUPTABLE                         R30 K94 [{"IconOnly", "Size"}]
      470 LOADB                            R31 1
      471 SETTABLEKS                       R31 R30 K72 ["IconOnly"]
      473 LOADK                            R31 K78 ["Small"]
      474 SETTABLEKS                       R31 R30 K73 ["Size"]
      476 LOADK                            R31 K95 ["SmallIconOnly"]
      477 NEWCLOSURE                       R29 P3
      478 CAPTURE                          VAL R12
      479 CAPTURE                          VAL R4
      480 CAPTURE                          VAL R15
      481 CAPTURE                          VAL R14
      482 CAPTURE                          VAL R5
      483 CAPTURE                          VAL R31
      484 CAPTURE                          VAL R10
      485 CAPTURE                          VAL R19
      486 CAPTURE                          VAL R2
      487 CAPTURE                          VAL R13
      488 CAPTURE                          VAL R9
      489 CAPTURE                          VAL R16
      490 CAPTURE                          VAL R18
      491 CAPTURE                          VAL R30
      492 CAPTURE                          VAL R7
      493 SETTABLEKS                       R29 R28 K83 ["story"]
      495 LOADK                            R29 K96 ["Compact icon-only variant at Small size, omitting text to save space."]
      496 SETTABLEKS                       R29 R28 K67 ["summary"]
      498 SETLIST                          R23 R24 5 [1]
      500 SETTABLEKS                       R23 R22 K68 ["stories"]
      502 RETURN                           R22 1
