PROTO_0:
        0 LOADK                            R2 K0 ["Hide"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["setCollapseState"]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K2 ["props"]
       10 GETTABLEKS                       R6 R6 K3 ["uiGroupCollapseState"]
       12 GETTABLE                         R5 R6 R1
       13 NOT                              R4 R5
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCollapseState"]
        3 LOADK                            R1 K1 ["UnknownTagsHide"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["props"]
        7 GETTABLEKS                       R4 R4 K3 ["uiGroupCollapseState"]
        9 GETTABLEKS                       R3 R4 K1 ["UnknownTagsHide"]
       11 NOT                              R2 R3
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["setUIGroupCollapseState"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K2 ["join"]
        8 GETTABLEKS                       R5 R2 K3 ["uiGroupCollapseState"]
       10 NEWTABLE                         R6 1 0
       12 SETTABLE                         R1 R6 R0
       13 CALL                             R4 2 -1
       14 CALL                             R3 -1 0
       15 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["toggleGroup"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["toggleUnknownGroup"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K2 ["setCollapseState"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TagListView"]
        8 GETTABLEKS                       R4 R1 K4 ["tags"]
       10 GETTABLEKS                       R5 R1 K5 ["unknownTags"]
       12 NEWTABLE                         R6 0 0
       14 LOADK                            R7 K6 [""]
       15 LOADN                            R8 0
       16 LOADN                            R9 0
       17 LENGTH                           R10 R4
       18 JUMPIFNOTLT                      R8 R10 ; [+74]
       20 ADDK                             R8 R8 K7 [1]
       21 GETTABLE                         R10 R4 R8
       22 GETTABLEKS                       R12 R10 K8 ["Group"]
       24 ORK                              R11 R12 K6 [""]
       25 GETTABLEKS                       R13 R10 K9 ["Name"]
       27 ORK                              R12 R13 K6 [""]
       28 JUMPIFEQ                         R11 R7 ; [+26]
       30 ADDK                             R9 R9 K7 [1]
       31 MOVE                             R7 R11
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K10 ["createElement"]
       35 GETUPVAL                         R14 1
       36 DUPTABLE                         R15 K17 [{["LayoutOrder"], ["GroupName"], ["IsGroupCollapsed"], ["IsVisibleToggled"] = True, ["ToggleGroup"]}]
       37 SETTABLEKS                       R9 R15 K11 ["LayoutOrder"]
       39 SETTABLEKS                       R11 R15 K12 ["GroupName"]
       41 GETTABLEKS                       R17 R1 K18 ["uiGroupCollapseState"]
       43 LOADK                            R19 K19 ["Hide"]
       44 MOVE                             R20 R11
       45 CONCAT                           R18 R19 R20
       46 GETTABLE                         R16 R17 R18
       47 SETTABLEKS                       R16 R15 K13 ["IsGroupCollapsed"]
       49 GETTABLEKS                       R16 R0 K20 ["toggleGroup"]
       51 SETTABLEKS                       R16 R15 K16 ["ToggleGroup"]
       53 CALL                             R13 2 1
       54 SETTABLE                         R13 R6 R9
       55 GETTABLEKS                       R14 R1 K18 ["uiGroupCollapseState"]
       57 LOADK                            R16 K19 ["Hide"]
       58 MOVE                             R17 R11
       59 CONCAT                           R15 R16 R17
       60 GETTABLE                         R13 R14 R15
       61 JUMPIF                           R13 ; [+30]
       62 ADDK                             R9 R9 K7 [1]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K10 ["createElement"]
       66 GETUPVAL                         R14 1
       67 DUPTABLE                         R15 K26 [{"LayoutOrder", "TagName", "TagGroup", "TagIcon", "IsTagAssignedToSome", "IsTagAssignedToAll", "IsVisibleToggled"}]
       68 SETTABLEKS                       R9 R15 K11 ["LayoutOrder"]
       70 SETTABLEKS                       R12 R15 K21 ["TagName"]
       72 SETTABLEKS                       R11 R15 K22 ["TagGroup"]
       74 GETTABLEKS                       R16 R10 K27 ["Icon"]
       76 SETTABLEKS                       R16 R15 K23 ["TagIcon"]
       78 GETTABLEKS                       R16 R10 K28 ["HasSome"]
       80 SETTABLEKS                       R16 R15 K24 ["IsTagAssignedToSome"]
       82 GETTABLEKS                       R16 R10 K29 ["HasAll"]
       84 SETTABLEKS                       R16 R15 K25 ["IsTagAssignedToAll"]
       86 GETTABLEKS                       R16 R10 K30 ["Visible"]
       88 SETTABLEKS                       R16 R15 K14 ["IsVisibleToggled"]
       90 CALL                             R13 2 1
       91 SETTABLE                         R13 R6 R9
       92 JUMPBACK                         ; [-76]
       93 LOADN                            R8 0
       94 LENGTH                           R10 R5
       95 LOADN                            R11 0
       96 JUMPIFNOTLT                      R11 R10 ; [+28]
       98 ADDK                             R9 R9 K7 [1]
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K10 ["createElement"]
      102 GETUPVAL                         R11 1
      103 DUPTABLE                         R12 K32 [{["LayoutOrder"], ["GroupName"], ["Disabled"] = True, ["IsGroupCollapsed"], ["ToggleGroup"]}]
      104 SETTABLEKS                       R9 R12 K11 ["LayoutOrder"]
      106 LOADK                            R15 K33 ["Groups"]
      107 LOADK                            R16 K34 ["UnknownTags"]
      108 NAMECALL                         R13 R2 K35 ["getText"]
      110 CALL                             R13 3 1
      111 SETTABLEKS                       R13 R12 K12 ["GroupName"]
      113 GETTABLEKS                       R14 R1 K18 ["uiGroupCollapseState"]
      115 GETTABLEKS                       R13 R14 K36 ["UnknownTagsHide"]
      117 SETTABLEKS                       R13 R12 K13 ["IsGroupCollapsed"]
      119 GETTABLEKS                       R13 R0 K37 ["toggleUnknownGroup"]
      121 SETTABLEKS                       R13 R12 K16 ["ToggleGroup"]
      123 CALL                             R10 2 1
      124 SETTABLE                         R10 R6 R9
      125 LENGTH                           R10 R5
      126 JUMPIFNOTLT                      R8 R10 ; [+21]
      128 ADDK                             R8 R8 K7 [1]
      129 GETTABLE                         R10 R5 R8
      130 GETTABLEKS                       R12 R1 K18 ["uiGroupCollapseState"]
      132 GETTABLEKS                       R11 R12 K36 ["UnknownTagsHide"]
      134 JUMPIF                           R11 ; [+12]
      135 ADDK                             R9 R9 K7 [1]
      136 GETUPVAL                         R11 0
      137 GETTABLEKS                       R11 R11 K10 ["createElement"]
      139 GETUPVAL                         R12 2
      140 DUPTABLE                         R13 K38 [{"LayoutOrder", "TagName"}]
      141 SETTABLEKS                       R9 R13 K11 ["LayoutOrder"]
      143 SETTABLEKS                       R10 R13 K21 ["TagName"]
      145 CALL                             R11 2 1
      146 SETTABLE                         R11 R6 R9
      147 JUMPBACK                         ; [-23]
      148 GETUPVAL                         R10 0
      149 GETTABLEKS                       R10 R10 K10 ["createElement"]
      151 GETUPVAL                         R11 3
      152 DUPTABLE                         R12 K43 [{"LayoutOrder", "AutomaticCanvasSize", "Size", "Layout", "Spacing"}]
      153 GETTABLEKS                       R13 R1 K11 ["LayoutOrder"]
      155 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      157 GETIMPORT                        R13 K47 [Enum.AutomaticSize.Y]
      159 SETTABLEKS                       R13 R12 K39 ["AutomaticCanvasSize"]
      161 GETTABLEKS                       R13 R3 K40 ["Size"]
      163 SETTABLEKS                       R13 R12 K40 ["Size"]
      165 GETIMPORT                        R13 K50 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R13 R12 K41 ["Layout"]
      169 GETTABLEKS                       R13 R3 K42 ["Spacing"]
      171 SETTABLEKS                       R13 R12 K42 ["Spacing"]
      173 MOVE                             R13 R6
      174 CALL                             R10 3 -1
      175 RETURN                           R10 -1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R0 K2 ["TagData"]
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 GETTABLEKS                       R9 R0 K3 ["Search"]
       10 NOT                              R8 R9
       11 JUMPIF                           R8 ; [+15]
       12 GETTABLEKS                       R8 R7 K4 ["Name"]
       14 NAMECALL                         R8 R8 K5 ["lower"]
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R10 R0 K3 ["Search"]
       19 NAMECALL                         R10 R10 K5 ["lower"]
       21 CALL                             R10 1 1
       22 LOADN                            R11 1
       23 LOADB                            R12 1
       24 NAMECALL                         R8 R8 K6 ["find"]
       26 CALL                             R8 4 1
       27 JUMPIFNOT                        R8 ; [+3]
       28 LENGTH                           R10 R2
       29 ADDK                             R9 R10 K7 [1]
       30 SETTABLE                         R7 R2 R9
       31 FORGLOOP                         R3 2 ; [-24]
       33 NEWTABLE                         R3 0 0
       35 GETIMPORT                        R4 K1 [pairs]
       37 GETTABLEKS                       R5 R0 K8 ["UnknownTags"]
       39 CALL                             R4 1 3
       40 FORGPREP_NEXT                    R4
       41 GETTABLEKS                       R10 R0 K3 ["Search"]
       43 NOT                              R9 R10
       44 JUMPIF                           R9 ; [+13]
       45 NAMECALL                         R9 R8 K5 ["lower"]
       47 CALL                             R9 1 1
       48 GETTABLEKS                       R11 R0 K3 ["Search"]
       50 NAMECALL                         R11 R11 K5 ["lower"]
       52 CALL                             R11 1 1
       53 LOADN                            R12 1
       54 LOADB                            R13 1
       55 NAMECALL                         R9 R9 K6 ["find"]
       57 CALL                             R9 4 1
       58 JUMPIFNOT                        R9 ; [+3]
       59 LENGTH                           R11 R3
       60 ADDK                             R10 R11 K7 [1]
       61 SETTABLE                         R8 R3 R10
       62 FORGLOOP                         R4 2 ; [-22]
       64 DUPTABLE                         R4 K13 [{"tags", "searchTerm", "uiGroupCollapseState", "unknownTags"}]
       65 SETTABLEKS                       R2 R4 K9 ["tags"]
       67 GETTABLEKS                       R5 R0 K3 ["Search"]
       69 SETTABLEKS                       R5 R4 K10 ["searchTerm"]
       71 GETTABLEKS                       R5 R0 K14 ["UIGroupCollapseState"]
       73 SETTABLEKS                       R5 R4 K11 ["uiGroupCollapseState"]
       75 SETTABLEKS                       R3 R4 K12 ["unknownTags"]
       77 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetUIGroupCollapseState"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"setUIGroupCollapseState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setUIGroupCollapseState"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K7 ["Packages"]
       41 GETTABLEKS                       R6 R6 K11 ["Dash"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K13 ["withContext"]
       48 GETTABLEKS                       R8 R6 K14 ["Analytics"]
       50 GETTABLEKS                       R9 R6 K15 ["Localization"]
       52 GETTABLEKS                       R10 R4 K16 ["Style"]
       54 GETTABLEKS                       R10 R10 K17 ["Stylizer"]
       56 GETTABLEKS                       R11 R4 K18 ["UI"]
       58 GETTABLEKS                       R12 R11 K19 ["ScrollingFrame"]
       60 GETIMPORT                        R13 K4 [require]
       62 GETTABLEKS                       R14 R0 K5 ["Src"]
       64 GETTABLEKS                       R14 R14 K20 ["Actions"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K4 [require]
       69 GETIMPORT                        R15 K1 [script]
       71 GETTABLEKS                       R15 R15 K2 ["Parent"]
       73 GETTABLEKS                       R15 R15 K21 ["TagListRow"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K4 [require]
       78 GETIMPORT                        R16 K1 [script]
       80 GETTABLEKS                       R16 R16 K2 ["Parent"]
       82 GETTABLEKS                       R16 R16 K22 ["TagListUnknownRow"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R2 K23 ["PureComponent"]
       87 LOADK                            R18 K24 ["TagListView"]
       88 NAMECALL                         R16 R16 K25 ["extend"]
       90 CALL                             R16 2 1
       91 DUPCLOSURE                       R17 K26 [PROTO_3]
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R17 R16 K27 ["init"]
       95 DUPCLOSURE                       R17 K28 [PROTO_4]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R12
      100 SETTABLEKS                       R17 R16 K29 ["render"]
      102 MOVE                             R17 R7
      103 DUPTABLE                         R18 K30 [{"Analytics", "Localization", "Stylizer"}]
      104 SETTABLEKS                       R8 R18 K14 ["Analytics"]
      106 SETTABLEKS                       R9 R18 K15 ["Localization"]
      108 SETTABLEKS                       R10 R18 K17 ["Stylizer"]
      110 CALL                             R17 1 1
      111 MOVE                             R18 R16
      112 CALL                             R17 1 1
      113 MOVE                             R16 R17
      114 DUPCLOSURE                       R17 K31 [PROTO_5]
      115 DUPCLOSURE                       R18 K32 [PROTO_7]
      116 CAPTURE                          VAL R13
      117 GETTABLEKS                       R19 R3 K33 ["connect"]
      119 MOVE                             R20 R17
      120 MOVE                             R21 R18
      121 CALL                             R19 2 1
      122 MOVE                             R20 R16
      123 CALL                             R19 1 -1
      124 RETURN                           R19 -1
