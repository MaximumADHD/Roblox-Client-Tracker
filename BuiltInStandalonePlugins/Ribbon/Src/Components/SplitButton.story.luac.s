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
       27 DUPTABLE                         R7 K16 [{"LayoutOrder", "Uri", "OnSelect", "OnSelectArrow", "ShowContextMenu", "Visible", "EnabledChildren", "MenuData"}]
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
       50 LOADB                            R8 1
       51 SETTABLEKS                       R8 R7 K13 ["Visible"]
       53 LOADB                            R8 1
       54 SETTABLEKS                       R8 R7 K14 ["EnabledChildren"]
       56 GETUPVAL                         R8 10
       57 SETTABLEKS                       R8 R7 K15 ["MenuData"]
       59 MOVE                             R8 R1
       60 GETUPVAL                         R9 11
       61 CALL                             R6 3 -1
       62 CALL                             R4 -1 -1
       63 RETURN                           R3 -1

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
       53 DUPTABLE                         R9 K7 [{"tag"}]
       54 LOADK                            R10 K8 ["gap-large row padding-small auto-xy align-x-center align-y-center"]
       55 SETTABLEKS                       R10 R9 K6 ["tag"]
       57 MOVE                             R10 R6
       58 CALL                             R7 3 -1
       59 CLOSEUPVALS                      R5
       60 RETURN                           R7 -1

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
       53 DUPTABLE                         R13 K13 [{"tag"}]
       54 LOADK                            R14 K14 ["gap-small row padding-small auto-xy align-x-center align-y-center size-0-full"]
       55 SETTABLEKS                       R14 R13 K12 ["tag"]
       57 DUPTABLE                         R14 K18 [{"A", "B", "C"}]
       58 MOVE                             R15 R7
       59 LOADK                            R16 K19 ["First SplitButton"]
       60 MOVE                             R17 R8
       61 MOVE                             R18 R9
       62 MOVE                             R19 R10
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K15 ["A"]
       66 MOVE                             R15 R7
       67 LOADK                            R16 K20 ["Second SplitButton"]
       68 MOVE                             R17 R8
       69 MOVE                             R18 R9
       70 MOVE                             R19 R10
       71 CALL                             R15 4 1
       72 SETTABLEKS                       R15 R14 K16 ["B"]
       74 MOVE                             R15 R7
       75 LOADK                            R16 K21 ["Third SplitButton"]
       76 MOVE                             R17 R8
       77 MOVE                             R18 R9
       78 MOVE                             R19 R10
       79 CALL                             R15 4 1
       80 SETTABLEKS                       R15 R14 K17 ["C"]
       82 CALL                             R11 3 -1
       83 RETURN                           R11 -1

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
      145 LOADK                            R21 K42 ["OptionA"]
      146 SETTABLEKS                       R21 R20 K32 ["Id"]
      148 LOADK                            R21 K43 ["Option A"]
      149 SETTABLEKS                       R21 R20 K33 ["Text"]
      151 DUPTABLE                         R21 K34 [{"Type", "Id", "Text"}]
      152 LOADK                            R22 K35 ["Option"]
      153 SETTABLEKS                       R22 R21 K28 ["Type"]
      155 LOADK                            R22 K44 ["OptionB"]
      156 SETTABLEKS                       R22 R21 K32 ["Id"]
      158 LOADK                            R22 K45 ["Option B"]
      159 SETTABLEKS                       R22 R21 K33 ["Text"]
      161 DUPTABLE                         R22 K34 [{"Type", "Id", "Text"}]
      162 LOADK                            R23 K35 ["Option"]
      163 SETTABLEKS                       R23 R22 K28 ["Type"]
      165 LOADK                            R23 K46 ["OptionC"]
      166 SETTABLEKS                       R23 R22 K32 ["Id"]
      168 LOADK                            R23 K47 ["Option C"]
      169 SETTABLEKS                       R23 R22 K33 ["Text"]
      171 SETLIST                          R19 R20 3 [1]
      173 SETTABLEKS                       R19 R18 K29 ["Children"]
      175 SETLIST                          R17 R18 1 [1]
      177 NEWTABLE                         R18 0 1
      179 DUPTABLE                         R19 K30 [{"Type", "Children"}]
      180 LOADK                            R20 K31 ["Column"]
      181 SETTABLEKS                       R20 R19 K28 ["Type"]
      183 NEWTABLE                         R20 0 3
      185 DUPTABLE                         R21 K34 [{"Type", "Id", "Text"}]
      186 LOADK                            R22 K35 ["Option"]
      187 SETTABLEKS                       R22 R21 K28 ["Type"]
      189 LOADK                            R22 K48 ["AddTools"]
      190 SETTABLEKS                       R22 R21 K32 ["Id"]
      192 LOADK                            R22 K49 ["Add Tools"]
      193 SETTABLEKS                       R22 R21 K33 ["Text"]
      195 DUPTABLE                         R22 K34 [{"Type", "Id", "Text"}]
      196 LOADK                            R23 K35 ["Option"]
      197 SETTABLEKS                       R23 R22 K28 ["Type"]
      199 LOADK                            R23 K50 ["AddSeparator"]
      200 SETTABLEKS                       R23 R22 K32 ["Id"]
      202 LOADK                            R23 K51 ["Add Separator"]
      203 SETTABLEKS                       R23 R22 K33 ["Text"]
      205 DUPTABLE                         R23 K34 [{"Type", "Id", "Text"}]
      206 LOADK                            R24 K35 ["Option"]
      207 SETTABLEKS                       R24 R23 K28 ["Type"]
      209 LOADK                            R24 K52 ["ManageTabs"]
      210 SETTABLEKS                       R24 R23 K32 ["Id"]
      212 LOADK                            R24 K53 ["Manage Tabs"]
      213 SETTABLEKS                       R24 R23 K33 ["Text"]
      215 SETLIST                          R20 R21 3 [1]
      217 SETTABLEKS                       R20 R19 K29 ["Children"]
      219 SETLIST                          R18 R19 1 [1]
      221 DUPCLOSURE                       R19 K54 [PROTO_0]
      222 CAPTURE                          VAL R18
      223 NEWTABLE                         R20 0 18
      225 DUPTABLE                         R21 K57 [{"Icon", "Text", "Tooltip"}]
      226 LOADK                            R22 K58 ["AI"]
      227 SETTABLEKS                       R22 R21 K55 ["Icon"]
      229 LOADK                            R22 K58 ["AI"]
      230 SETTABLEKS                       R22 R21 K33 ["Text"]
      232 LOADK                            R22 K58 ["AI"]
      233 SETTABLEKS                       R22 R21 K56 ["Tooltip"]
      235 DUPTABLE                         R22 K57 [{"Icon", "Text", "Tooltip"}]
      236 LOADK                            R23 K59 ["Placeholder"]
      237 SETTABLEKS                       R23 R22 K55 ["Icon"]
      239 LOADK                            R23 K59 ["Placeholder"]
      240 SETTABLEKS                       R23 R22 K33 ["Text"]
      242 LOADK                            R23 K59 ["Placeholder"]
      243 SETTABLEKS                       R23 R22 K56 ["Tooltip"]
      245 DUPTABLE                         R23 K57 [{"Icon", "Text", "Tooltip"}]
      246 LOADK                            R24 K60 ["StepInto"]
      247 SETTABLEKS                       R24 R23 K55 ["Icon"]
      249 LOADK                            R24 K61 ["Step Into"]
      250 SETTABLEKS                       R24 R23 K33 ["Text"]
      252 LOADK                            R24 K61 ["Step Into"]
      253 SETTABLEKS                       R24 R23 K56 ["Tooltip"]
      255 DUPTABLE                         R24 K57 [{"Icon", "Text", "Tooltip"}]
      256 LOADK                            R25 K62 ["StepOut"]
      257 SETTABLEKS                       R25 R24 K55 ["Icon"]
      259 LOADK                            R25 K63 ["Step Out"]
      260 SETTABLEKS                       R25 R24 K33 ["Text"]
      262 LOADK                            R25 K63 ["Step Out"]
      263 SETTABLEKS                       R25 R24 K56 ["Tooltip"]
      265 DUPTABLE                         R25 K57 [{"Icon", "Text", "Tooltip"}]
      266 LOADK                            R26 K64 ["StepOver"]
      267 SETTABLEKS                       R26 R25 K55 ["Icon"]
      269 LOADK                            R26 K65 ["Step Over"]
      270 SETTABLEKS                       R26 R25 K33 ["Text"]
      272 LOADK                            R26 K65 ["Step Over"]
      273 SETTABLEKS                       R26 R25 K56 ["Tooltip"]
      275 DUPTABLE                         R26 K57 [{"Icon", "Text", "Tooltip"}]
      276 LOADK                            R27 K66 ["GUI"]
      277 SETTABLEKS                       R27 R26 K55 ["Icon"]
      279 LOADK                            R27 K66 ["GUI"]
      280 SETTABLEKS                       R27 R26 K33 ["Text"]
      282 LOADK                            R27 K66 ["GUI"]
      283 SETTABLEKS                       R27 R26 K56 ["Tooltip"]
      285 DUPTABLE                         R27 K57 [{"Icon", "Text", "Tooltip"}]
      286 LOADK                            R28 K67 ["Script"]
      287 SETTABLEKS                       R28 R27 K55 ["Icon"]
      289 LOADK                            R28 K67 ["Script"]
      290 SETTABLEKS                       R28 R27 K33 ["Text"]
      292 LOADK                            R28 K67 ["Script"]
      293 SETTABLEKS                       R28 R27 K56 ["Tooltip"]
      295 DUPTABLE                         R28 K57 [{"Icon", "Text", "Tooltip"}]
      296 LOADK                            R29 K68 ["Lock"]
      297 SETTABLEKS                       R29 R28 K55 ["Icon"]
      299 LOADK                            R29 K68 ["Lock"]
      300 SETTABLEKS                       R29 R28 K33 ["Text"]
      302 LOADK                            R29 K68 ["Lock"]
      303 SETTABLEKS                       R29 R28 K56 ["Tooltip"]
      305 DUPTABLE                         R29 K57 [{"Icon", "Text", "Tooltip"}]
      306 LOADK                            R30 K69 ["Anchor"]
      307 SETTABLEKS                       R30 R29 K55 ["Icon"]
      309 LOADK                            R30 K69 ["Anchor"]
      310 SETTABLEKS                       R30 R29 K33 ["Text"]
      312 LOADK                            R30 K69 ["Anchor"]
      313 SETTABLEKS                       R30 R29 K56 ["Tooltip"]
      315 DUPTABLE                         R30 K57 [{"Icon", "Text", "Tooltip"}]
      316 LOADK                            R31 K58 ["AI"]
      317 SETTABLEKS                       R31 R30 K55 ["Icon"]
      319 LOADK                            R31 K58 ["AI"]
      320 SETTABLEKS                       R31 R30 K33 ["Text"]
      322 LOADK                            R31 K58 ["AI"]
      323 SETTABLEKS                       R31 R30 K56 ["Tooltip"]
      325 DUPTABLE                         R31 K57 [{"Icon", "Text", "Tooltip"}]
      326 LOADK                            R32 K59 ["Placeholder"]
      327 SETTABLEKS                       R32 R31 K55 ["Icon"]
      329 LOADK                            R32 K59 ["Placeholder"]
      330 SETTABLEKS                       R32 R31 K33 ["Text"]
      332 LOADK                            R32 K59 ["Placeholder"]
      333 SETTABLEKS                       R32 R31 K56 ["Tooltip"]
      335 DUPTABLE                         R32 K57 [{"Icon", "Text", "Tooltip"}]
      336 LOADK                            R33 K60 ["StepInto"]
      337 SETTABLEKS                       R33 R32 K55 ["Icon"]
      339 LOADK                            R33 K61 ["Step Into"]
      340 SETTABLEKS                       R33 R32 K33 ["Text"]
      342 LOADK                            R33 K61 ["Step Into"]
      343 SETTABLEKS                       R33 R32 K56 ["Tooltip"]
      345 DUPTABLE                         R33 K57 [{"Icon", "Text", "Tooltip"}]
      346 LOADK                            R34 K62 ["StepOut"]
      347 SETTABLEKS                       R34 R33 K55 ["Icon"]
      349 LOADK                            R34 K63 ["Step Out"]
      350 SETTABLEKS                       R34 R33 K33 ["Text"]
      352 LOADK                            R34 K63 ["Step Out"]
      353 SETTABLEKS                       R34 R33 K56 ["Tooltip"]
      355 DUPTABLE                         R34 K57 [{"Icon", "Text", "Tooltip"}]
      356 LOADK                            R35 K64 ["StepOver"]
      357 SETTABLEKS                       R35 R34 K55 ["Icon"]
      359 LOADK                            R35 K65 ["Step Over"]
      360 SETTABLEKS                       R35 R34 K33 ["Text"]
      362 LOADK                            R35 K65 ["Step Over"]
      363 SETTABLEKS                       R35 R34 K56 ["Tooltip"]
      365 DUPTABLE                         R35 K57 [{"Icon", "Text", "Tooltip"}]
      366 LOADK                            R36 K66 ["GUI"]
      367 SETTABLEKS                       R36 R35 K55 ["Icon"]
      369 LOADK                            R36 K66 ["GUI"]
      370 SETTABLEKS                       R36 R35 K33 ["Text"]
      372 LOADK                            R36 K66 ["GUI"]
      373 SETTABLEKS                       R36 R35 K56 ["Tooltip"]
      375 DUPTABLE                         R36 K57 [{"Icon", "Text", "Tooltip"}]
      376 LOADK                            R37 K67 ["Script"]
      377 SETTABLEKS                       R37 R36 K55 ["Icon"]
      379 LOADK                            R37 K67 ["Script"]
      380 SETTABLEKS                       R37 R36 K33 ["Text"]
      382 LOADK                            R37 K67 ["Script"]
      383 SETTABLEKS                       R37 R36 K56 ["Tooltip"]
      385 SETLIST                          R20 R21 16 [1]
      387 DUPTABLE                         R21 K57 [{"Icon", "Text", "Tooltip"}]
      388 LOADK                            R22 K68 ["Lock"]
      389 SETTABLEKS                       R22 R21 K55 ["Icon"]
      391 LOADK                            R22 K68 ["Lock"]
      392 SETTABLEKS                       R22 R21 K33 ["Text"]
      394 LOADK                            R22 K68 ["Lock"]
      395 SETTABLEKS                       R22 R21 K56 ["Tooltip"]
      397 DUPTABLE                         R22 K57 [{"Icon", "Text", "Tooltip"}]
      398 LOADK                            R37 K69 ["Anchor"]
      399 SETTABLEKS                       R37 R22 K55 ["Icon"]
      401 LOADK                            R37 K69 ["Anchor"]
      402 SETTABLEKS                       R37 R22 K33 ["Text"]
      404 LOADK                            R37 K69 ["Anchor"]
      405 SETTABLEKS                       R37 R22 K56 ["Tooltip"]
      407 SETLIST                          R20 R21 2 [17]
      409 DUPCLOSURE                       R21 K70 [PROTO_6]
      410 CAPTURE                          VAL R12
      411 CAPTURE                          VAL R4
      412 CAPTURE                          VAL R15
      413 CAPTURE                          VAL R14
      414 CAPTURE                          VAL R5
      415 CAPTURE                          VAL R10
      416 CAPTURE                          VAL R20
      417 CAPTURE                          VAL R2
      418 CAPTURE                          VAL R13
      419 CAPTURE                          VAL R9
      420 CAPTURE                          VAL R16
      421 CAPTURE                          VAL R17
      422 CAPTURE                          VAL R19
      423 CAPTURE                          VAL R7
      424 DUPCLOSURE                       R22 K71 [PROTO_11]
      425 CAPTURE                          VAL R12
      426 CAPTURE                          VAL R4
      427 CAPTURE                          VAL R15
      428 CAPTURE                          VAL R14
      429 CAPTURE                          VAL R5
      430 CAPTURE                          VAL R2
      431 CAPTURE                          VAL R13
      432 CAPTURE                          VAL R16
      433 CAPTURE                          VAL R17
      434 CAPTURE                          VAL R19
      435 CAPTURE                          VAL R7
      436 DUPTABLE                         R23 K75 [{"controls", "summary", "stories"}]
      437 DUPTABLE                         R24 K84 [{"Disabled", "Selected", "IconOnly", "Size", "EnabledChildren", "Visible", "Single", "Icon", "Text", "ToolTip"}]
      438 NEWTABLE                         R25 0 2
      440 LOADB                            R26 0
      441 LOADB                            R27 1
      442 SETLIST                          R25 R26 2 [1]
      444 SETTABLEKS                       R25 R24 K76 ["Disabled"]
      446 NEWTABLE                         R25 0 2
      448 LOADB                            R26 0
      449 LOADB                            R27 1
      450 SETLIST                          R25 R26 2 [1]
      452 SETTABLEKS                       R25 R24 K77 ["Selected"]
      454 NEWTABLE                         R25 0 2
      456 LOADB                            R26 0
      457 LOADB                            R27 1
      458 SETLIST                          R25 R26 2 [1]
      460 SETTABLEKS                       R25 R24 K78 ["IconOnly"]
      462 NEWTABLE                         R25 0 2
      464 LOADK                            R26 K85 ["Large"]
      465 LOADK                            R27 K86 ["Small"]
      466 SETLIST                          R25 R26 2 [1]
      468 SETTABLEKS                       R25 R24 K79 ["Size"]
      470 NEWTABLE                         R25 0 2
      472 LOADB                            R26 1
      473 LOADB                            R27 0
      474 SETLIST                          R25 R26 2 [1]
      476 SETTABLEKS                       R25 R24 K80 ["EnabledChildren"]
      478 NEWTABLE                         R25 0 2
      480 LOADB                            R26 1
      481 LOADB                            R27 0
      482 SETLIST                          R25 R26 2 [1]
      484 SETTABLEKS                       R25 R24 K81 ["Visible"]
      486 NEWTABLE                         R25 0 2
      488 LOADB                            R26 0
      489 LOADB                            R27 1
      490 SETLIST                          R25 R26 2 [1]
      492 SETTABLEKS                       R25 R24 K82 ["Single"]
      494 NEWTABLE                         R25 0 9
      496 LOADK                            R26 K58 ["AI"]
      497 LOADK                            R27 K59 ["Placeholder"]
      498 LOADK                            R28 K60 ["StepInto"]
      499 LOADK                            R29 K62 ["StepOut"]
      500 LOADK                            R30 K64 ["StepOver"]
      501 LOADK                            R31 K66 ["GUI"]
      502 LOADK                            R32 K67 ["Script"]
      503 LOADK                            R33 K68 ["Lock"]
      504 LOADK                            R34 K69 ["Anchor"]
      505 SETLIST                          R25 R26 9 [1]
      507 SETTABLEKS                       R25 R24 K55 ["Icon"]
      509 LOADK                            R25 K87 ["Step Forward"]
      510 SETTABLEKS                       R25 R24 K33 ["Text"]
      512 LOADK                            R25 K88 ["This is a tooltip"]
      513 SETTABLEKS                       R25 R24 K83 ["ToolTip"]
      515 SETTABLEKS                       R24 R23 K72 ["controls"]
      517 LOADK                            R24 K89 ["SplitButton combines a primary action with a secondary dropdown. Clicking the main area invokes OnSelect, while the arrow (or a long-press) invokes OnSelectArrow. It supports tooltips when the mouse is hovering over the button, right-click context menus, selected/disabled states, Large/Small sizes, icon-only mode, and density-aware visuals."]
      518 SETTABLEKS                       R24 R23 K73 ["summary"]
      520 NEWTABLE                         R24 0 7
      522 DUPTABLE                         R25 K92 [{"name", "story", "summary"}]
      523 LOADK                            R26 K93 ["Custom"]
      524 SETTABLEKS                       R26 R25 K90 ["name"]
      526 SETTABLEKS                       R22 R25 K91 ["story"]
      528 LOADK                            R26 K94 ["Three custom SplitButtons with controls to toggle visibility, disabled, selected, icon-only, size, and child enablement."]
      529 SETTABLEKS                       R26 R25 K73 ["summary"]
      531 DUPTABLE                         R26 K92 [{"name", "story", "summary"}]
      532 LOADK                            R27 K95 ["Normal"]
      533 SETTABLEKS                       R27 R26 K90 ["name"]
      535 NEWTABLE                         R28 0 0
      537 LOADK                            R29 K95 ["Normal"]
      538 NEWCLOSURE                       R27 P3
      539 CAPTURE                          VAL R12
      540 CAPTURE                          VAL R4
      541 CAPTURE                          VAL R15
      542 CAPTURE                          VAL R14
      543 CAPTURE                          VAL R5
      544 CAPTURE                          VAL R29
      545 CAPTURE                          VAL R10
      546 CAPTURE                          VAL R20
      547 CAPTURE                          VAL R2
      548 CAPTURE                          VAL R13
      549 CAPTURE                          VAL R9
      550 CAPTURE                          VAL R16
      551 CAPTURE                          VAL R17
      552 CAPTURE                          VAL R19
      553 CAPTURE                          VAL R28
      554 CAPTURE                          VAL R7
      555 SETTABLEKS                       R27 R26 K91 ["story"]
      557 LOADK                            R27 K96 ["Default enabled SplitButtons with text and icons"]
      558 SETTABLEKS                       R27 R26 K73 ["summary"]
      560 DUPTABLE                         R27 K92 [{"name", "story", "summary"}]
      561 LOADK                            R28 K82 ["Single"]
      562 SETTABLEKS                       R28 R27 K90 ["name"]
      564 DUPTABLE                         R29 K97 [{"Single"}]
      565 LOADB                            R30 1
      566 SETTABLEKS                       R30 R29 K82 ["Single"]
      568 LOADK                            R30 K82 ["Single"]
      569 NEWCLOSURE                       R28 P3
      570 CAPTURE                          VAL R12
      571 CAPTURE                          VAL R4
      572 CAPTURE                          VAL R15
      573 CAPTURE                          VAL R14
      574 CAPTURE                          VAL R5
      575 CAPTURE                          VAL R30
      576 CAPTURE                          VAL R10
      577 CAPTURE                          VAL R20
      578 CAPTURE                          VAL R2
      579 CAPTURE                          VAL R13
      580 CAPTURE                          VAL R9
      581 CAPTURE                          VAL R16
      582 CAPTURE                          VAL R17
      583 CAPTURE                          VAL R19
      584 CAPTURE                          VAL R29
      585 CAPTURE                          VAL R7
      586 SETTABLEKS                       R28 R27 K91 ["story"]
      588 LOADK                            R28 K98 ["Single split buttons where arrow selection is controlled by ArrowSelectedFromAction only, not by menu open state."]
      589 SETTABLEKS                       R28 R27 K73 ["summary"]
      591 DUPTABLE                         R28 K92 [{"name", "story", "summary"}]
      592 LOADK                            R29 K76 ["Disabled"]
      593 SETTABLEKS                       R29 R28 K90 ["name"]
      595 DUPTABLE                         R30 K99 [{"Disabled"}]
      596 LOADB                            R31 1
      597 SETTABLEKS                       R31 R30 K76 ["Disabled"]
      599 LOADK                            R31 K76 ["Disabled"]
      600 NEWCLOSURE                       R29 P3
      601 CAPTURE                          VAL R12
      602 CAPTURE                          VAL R4
      603 CAPTURE                          VAL R15
      604 CAPTURE                          VAL R14
      605 CAPTURE                          VAL R5
      606 CAPTURE                          VAL R31
      607 CAPTURE                          VAL R10
      608 CAPTURE                          VAL R20
      609 CAPTURE                          VAL R2
      610 CAPTURE                          VAL R13
      611 CAPTURE                          VAL R9
      612 CAPTURE                          VAL R16
      613 CAPTURE                          VAL R17
      614 CAPTURE                          VAL R19
      615 CAPTURE                          VAL R30
      616 CAPTURE                          VAL R7
      617 SETTABLEKS                       R29 R28 K91 ["story"]
      619 LOADK                            R29 K100 ["Shows the disabled visual state for the main button. Arrow icon is enabled."]
      620 SETTABLEKS                       R29 R28 K73 ["summary"]
      622 DUPTABLE                         R29 K92 [{"name", "story", "summary"}]
      623 LOADK                            R30 K101 ["Disabled and EnabledChildren false"]
      624 SETTABLEKS                       R30 R29 K90 ["name"]
      626 DUPTABLE                         R31 K102 [{"Disabled", "EnabledChildren"}]
      627 LOADB                            R32 1
      628 SETTABLEKS                       R32 R31 K76 ["Disabled"]
      630 LOADB                            R32 0
      631 SETTABLEKS                       R32 R31 K80 ["EnabledChildren"]
      633 LOADK                            R32 K103 ["DisabledAndEnabledChildrenFalse"]
      634 NEWCLOSURE                       R30 P3
      635 CAPTURE                          VAL R12
      636 CAPTURE                          VAL R4
      637 CAPTURE                          VAL R15
      638 CAPTURE                          VAL R14
      639 CAPTURE                          VAL R5
      640 CAPTURE                          VAL R32
      641 CAPTURE                          VAL R10
      642 CAPTURE                          VAL R20
      643 CAPTURE                          VAL R2
      644 CAPTURE                          VAL R13
      645 CAPTURE                          VAL R9
      646 CAPTURE                          VAL R16
      647 CAPTURE                          VAL R17
      648 CAPTURE                          VAL R19
      649 CAPTURE                          VAL R31
      650 CAPTURE                          VAL R7
      651 SETTABLEKS                       R30 R29 K91 ["story"]
      653 LOADK                            R30 K104 ["Shows the disabled visual state and EnabledChildren false with muted arrow. Interactions are suppressed to illustrate the fully non-interactive behavior."]
      654 SETTABLEKS                       R30 R29 K73 ["summary"]
      656 DUPTABLE                         R30 K92 [{"name", "story", "summary"}]
      657 LOADK                            R31 K77 ["Selected"]
      658 SETTABLEKS                       R31 R30 K90 ["name"]
      660 DUPTABLE                         R32 K105 [{"Selected"}]
      661 LOADB                            R33 1
      662 SETTABLEKS                       R33 R32 K77 ["Selected"]
      664 LOADK                            R33 K77 ["Selected"]
      665 NEWCLOSURE                       R31 P3
      666 CAPTURE                          VAL R12
      667 CAPTURE                          VAL R4
      668 CAPTURE                          VAL R15
      669 CAPTURE                          VAL R14
      670 CAPTURE                          VAL R5
      671 CAPTURE                          VAL R33
      672 CAPTURE                          VAL R10
      673 CAPTURE                          VAL R20
      674 CAPTURE                          VAL R2
      675 CAPTURE                          VAL R13
      676 CAPTURE                          VAL R9
      677 CAPTURE                          VAL R16
      678 CAPTURE                          VAL R17
      679 CAPTURE                          VAL R19
      680 CAPTURE                          VAL R32
      681 CAPTURE                          VAL R7
      682 SETTABLEKS                       R31 R30 K91 ["story"]
      684 LOADK                            R31 K106 ["Highlights the selected state to indicate an active tool, behavior mirrors the normal variant."]
      685 SETTABLEKS                       R31 R30 K73 ["summary"]
      687 DUPTABLE                         R31 K92 [{"name", "story", "summary"}]
      688 LOADK                            R32 K107 ["Small and IconOnly"]
      689 SETTABLEKS                       R32 R31 K90 ["name"]
      691 DUPTABLE                         R33 K108 [{"IconOnly", "Size"}]
      692 LOADB                            R34 1
      693 SETTABLEKS                       R34 R33 K78 ["IconOnly"]
      695 LOADK                            R34 K86 ["Small"]
      696 SETTABLEKS                       R34 R33 K79 ["Size"]
      698 LOADK                            R34 K109 ["SmallIconOnly"]
      699 NEWCLOSURE                       R32 P3
      700 CAPTURE                          VAL R12
      701 CAPTURE                          VAL R4
      702 CAPTURE                          VAL R15
      703 CAPTURE                          VAL R14
      704 CAPTURE                          VAL R5
      705 CAPTURE                          VAL R34
      706 CAPTURE                          VAL R10
      707 CAPTURE                          VAL R20
      708 CAPTURE                          VAL R2
      709 CAPTURE                          VAL R13
      710 CAPTURE                          VAL R9
      711 CAPTURE                          VAL R16
      712 CAPTURE                          VAL R17
      713 CAPTURE                          VAL R19
      714 CAPTURE                          VAL R33
      715 CAPTURE                          VAL R7
      716 SETTABLEKS                       R32 R31 K91 ["story"]
      718 LOADK                            R32 K110 ["Compact icon-only variant at Small size, omitting text to save space. Not all icons are available in small mode."]
      719 SETTABLEKS                       R32 R31 K73 ["summary"]
      721 SETLIST                          R24 R25 7 [1]
      723 SETTABLEKS                       R24 R23 K74 ["stories"]
      725 RETURN                           R23 1
