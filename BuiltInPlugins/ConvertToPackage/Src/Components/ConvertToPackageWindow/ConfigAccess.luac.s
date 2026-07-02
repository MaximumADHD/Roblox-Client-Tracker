PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["getMyGroups"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Network"]
        8 NAMECALL                         R2 R2 K3 ["get"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K8 [{"creatorId", "creatorType", "Id", "item", "Key", "Label", "name", "Text"}]
        1 GETTABLEKS                       R2 R0 K0 ["creatorId"]
        3 SETTABLEKS                       R2 R1 K0 ["creatorId"]
        5 GETTABLEKS                       R2 R0 K1 ["creatorType"]
        7 SETTABLEKS                       R2 R1 K1 ["creatorType"]
        9 GETTABLEKS                       R2 R0 K6 ["name"]
       11 SETTABLEKS                       R2 R1 K2 ["Id"]
       13 SETTABLEKS                       R0 R1 K3 ["item"]
       15 GETTABLEKS                       R2 R0 K4 ["Key"]
       17 SETTABLEKS                       R2 R1 K4 ["Key"]
       19 GETTABLEKS                       R2 R0 K6 ["name"]
       21 SETTABLEKS                       R2 R1 K5 ["Label"]
       23 GETTABLEKS                       R2 R0 K6 ["name"]
       25 SETTABLEKS                       R2 R1 K6 ["name"]
       27 GETTABLEKS                       R2 R0 K7 ["Text"]
       29 SETTABLEKS                       R2 R1 K7 ["Text"]
       31 RETURN                           R1 1

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 SETTABLEKS                       R1 R0 K1 ["createContentForSelectInput"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["TotalHeight"]
       12 GETTABLEKS                       R7 R1 K6 ["owner"]
       14 JUMPIF                           R7 ; [+2]
       15 NEWTABLE                         R7 0 0
       17 GETTABLEKS                       R8 R1 K7 ["onDropDownSelect"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K8 ["getOwnerDropDownContent"]
       22 GETTABLEKS                       R10 R1 K9 ["groupsArray"]
       24 MOVE                             R11 R2
       25 CALL                             R9 2 1
       26 SETTABLEKS                       R9 R0 K10 ["dropdownContent"]
       28 LOADNIL                          R9
       29 GETIMPORT                        R10 K12 [pairs]
       31 GETTABLEKS                       R11 R0 K10 ["dropdownContent"]
       33 CALL                             R10 1 3
       34 FORGPREP_NEXT                    R10
       35 GETTABLEKS                       R15 R14 K13 ["creatorId"]
       37 GETTABLEKS                       R16 R7 K13 ["creatorId"]
       39 JUMPIFNOTEQ                      R15 R16 ; [+2]
       41 MOVE                             R9 R13
       42 FORGLOOP                         R10 2 ; [-8]
       44 JUMPIF                           R9 ; [+1]
       45 LOADN                            R9 1
       46 GETTABLEKS                       R10 R3 K14 ["publishAsset"]
       48 LOADNIL                          R11
       49 GETTABLEKS                       R13 R0 K10 ["dropdownContent"]
       51 LENGTH                           R12 R13
       52 JUMPIFLT                         R12 R9 ; [+14]
       54 GETIMPORT                        R12 K16 [game]
       56 GETTABLEKS                       R12 R12 K17 ["CreatorType"]
       58 GETIMPORT                        R13 K20 [Enum.CreatorType.Group]
       60 JUMPIFNOTEQ                      R12 R13 ; [+8]
       62 GETTABLEKS                       R13 R0 K10 ["dropdownContent"]
       64 LENGTH                           R12 R13
       65 JUMPIFNOTEQKN                    R12 K21 [1] ; [+3]
       67 LOADK                            R11 K22 [""]
       68 JUMP                             ; [+5]
       69 GETTABLEKS                       R13 R0 K10 ["dropdownContent"]
       71 GETTABLE                         R12 R13 R9
       72 GETTABLEKS                       R11 R12 K23 ["Text"]
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K24 ["createElement"]
       77 LOADK                            R13 K25 ["Frame"]
       78 DUPTABLE                         R14 K31 [{["Size"], ["BackgroundTransparency"] = 1, ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       79 GETIMPORT                        R15 K34 [UDim2.new]
       81 LOADN                            R16 1
       82 LOADN                            R17 0
       83 LOADN                            R18 0
       84 MOVE                             R19 R6
       85 CALL                             R15 4 1
       86 SETTABLEKS                       R15 R14 K26 ["Size"]
       88 GETIMPORT                        R15 K37 [Color3.fromRGB]
       90 LOADN                            R16 227
       91 LOADN                            R17 227
       92 LOADN                            R18 227
       93 CALL                             R15 3 1
       94 SETTABLEKS                       R15 R14 K28 ["BackgroundColor3"]
       96 SETTABLEKS                       R5 R14 K4 ["LayoutOrder"]
       98 DUPTABLE                         R15 K40 [{"UIListLayout", "Title", "DropdownMenu"}]
       99 GETUPVAL                         R16 1
      100 GETTABLEKS                       R16 R16 K24 ["createElement"]
      102 LOADK                            R17 K38 ["UIListLayout"]
      103 DUPTABLE                         R18 K46 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      104 GETIMPORT                        R19 K48 [Enum.FillDirection.Horizontal]
      106 SETTABLEKS                       R19 R18 K41 ["FillDirection"]
      108 GETIMPORT                        R19 K50 [Enum.HorizontalAlignment.Left]
      110 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      112 GETIMPORT                        R19 K52 [Enum.VerticalAlignment.Top]
      114 SETTABLEKS                       R19 R18 K43 ["VerticalAlignment"]
      116 GETIMPORT                        R19 K53 [Enum.SortOrder.LayoutOrder]
      118 SETTABLEKS                       R19 R18 K44 ["SortOrder"]
      120 GETIMPORT                        R19 K55 [UDim.new]
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 CALL                             R19 2 1
      125 SETTABLEKS                       R19 R18 K45 ["Padding"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K38 ["UIListLayout"]
      130 GETUPVAL                         R16 1
      131 GETTABLEKS                       R16 R16 K24 ["createElement"]
      133 LOADK                            R17 K56 ["TextLabel"]
      134 DUPTABLE                         R18 K62 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      135 GETIMPORT                        R19 K34 [UDim2.new]
      137 LOADN                            R20 0
      138 GETUPVAL                         R21 0
      139 GETTABLEKS                       R21 R21 K63 ["TITLE_GUTTER_WIDTH"]
      141 LOADN                            R22 1
      142 LOADN                            R23 0
      143 CALL                             R19 4 1
      144 SETTABLEKS                       R19 R18 K26 ["Size"]
      146 SETTABLEKS                       R4 R18 K23 ["Text"]
      148 GETIMPORT                        R19 K64 [Enum.TextXAlignment.Left]
      150 SETTABLEKS                       R19 R18 K57 ["TextXAlignment"]
      152 GETIMPORT                        R19 K65 [Enum.TextYAlignment.Top]
      154 SETTABLEKS                       R19 R18 K58 ["TextYAlignment"]
      156 GETUPVAL                         R19 0
      157 GETTABLEKS                       R19 R19 K66 ["FONT_SIZE_TITLE"]
      159 SETTABLEKS                       R19 R18 K59 ["TextSize"]
      161 GETTABLEKS                       R19 R10 K67 ["titleTextColor"]
      163 SETTABLEKS                       R19 R18 K60 ["TextColor3"]
      165 GETUPVAL                         R19 0
      166 GETTABLEKS                       R19 R19 K68 ["FONT"]
      168 SETTABLEKS                       R19 R18 K61 ["Font"]
      170 CALL                             R16 2 1
      171 SETTABLEKS                       R16 R15 K3 ["Title"]
      173 GETUPVAL                         R16 1
      174 GETTABLEKS                       R16 R16 K24 ["createElement"]
      176 GETUPVAL                         R17 2
      177 DUPTABLE                         R18 K76 [{["Items"], ["LayoutOrder"] = 2, ["OnItemActivated"], ["PlaceholderText"], ["SelectedIndex"], ["Size"], ["Width"] = 220}]
      178 GETUPVAL                         R19 3
      179 GETTABLEKS                       R20 R0 K10 ["dropdownContent"]
      181 GETTABLEKS                       R21 R0 K77 ["createContentForSelectInput"]
      183 CALL                             R19 2 1
      184 SETTABLEKS                       R19 R18 K69 ["Items"]
      186 SETTABLEKS                       R8 R18 K71 ["OnItemActivated"]
      188 SETTABLEKS                       R11 R18 K72 ["PlaceholderText"]
      190 GETTABLEKS                       R20 R0 K10 ["dropdownContent"]
      192 GETTABLE                         R19 R20 R9
      193 GETTABLEKS                       R19 R19 K78 ["Key"]
      195 SETTABLEKS                       R19 R18 K73 ["SelectedIndex"]
      197 GETIMPORT                        R19 K34 [UDim2.new]
      199 LOADN                            R20 0
      200 LOADN                            R21 220
      201 LOADN                            R22 0
      202 LOADN                            R23 38
      203 CALL                             R19 4 1
      204 SETTABLEKS                       R19 R18 K26 ["Size"]
      206 CALL                             R16 2 1
      207 SETTABLEKS                       R16 R15 K39 ["DropdownMenu"]
      209 CALL                             R12 3 -1
      210 RETURN                           R12 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"groupsArray"}]
        6 GETTABLEKS                       R3 R0 K2 ["GroupReducer"]
        8 GETTABLEKS                       R3 R3 K0 ["groupsArray"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K0 ["groupsArray"]
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"getMyGroups"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getMyGroups"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R5 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R7 K12 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K13 ["Constants"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R4 K14 ["UI"]
       45 GETTABLEKS                       R10 R9 K15 ["SelectInput"]
       47 GETTABLEKS                       R11 R4 K16 ["Dash"]
       49 GETTABLEKS                       R12 R11 K17 ["map"]
       51 GETTABLEKS                       R13 R0 K11 ["Src"]
       53 GETTABLEKS                       R13 R13 K18 ["Thunks"]
       55 GETIMPORT                        R14 K5 [require]
       57 GETTABLEKS                       R15 R13 K19 ["GetMyGroupsRequest"]
       59 CALL                             R14 1 1
       60 GETIMPORT                        R15 K5 [require]
       62 GETTABLEKS                       R16 R0 K11 ["Src"]
       64 GETTABLEKS                       R16 R16 K9 ["ContextServices"]
       66 GETTABLEKS                       R16 R16 K20 ["NetworkContext"]
       68 CALL                             R15 1 1
       69 GETTABLEKS                       R16 R2 K21 ["PureComponent"]
       71 LOADK                            R18 K22 ["ConfigAccess"]
       72 NAMECALL                         R16 R16 K23 ["extend"]
       74 CALL                             R16 2 1
       75 DUPCLOSURE                       R17 K24 [PROTO_0]
       76 SETTABLEKS                       R17 R16 K25 ["didMount"]
       78 DUPCLOSURE                       R17 K26 [PROTO_2]
       79 SETTABLEKS                       R17 R16 K27 ["init"]
       81 DUPCLOSURE                       R17 K28 [PROTO_3]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R12
       86 SETTABLEKS                       R17 R16 K29 ["render"]
       88 MOVE                             R17 R6
       89 DUPTABLE                         R18 K33 [{"Localization", "Network", "Stylizer"}]
       90 GETTABLEKS                       R19 R5 K30 ["Localization"]
       92 SETTABLEKS                       R19 R18 K30 ["Localization"]
       94 SETTABLEKS                       R15 R18 K31 ["Network"]
       96 GETTABLEKS                       R19 R5 K32 ["Stylizer"]
       98 SETTABLEKS                       R19 R18 K32 ["Stylizer"]
      100 CALL                             R17 1 1
      101 MOVE                             R18 R16
      102 CALL                             R17 1 1
      103 MOVE                             R16 R17
      104 DUPCLOSURE                       R17 K34 [PROTO_4]
      105 DUPCLOSURE                       R18 K35 [PROTO_6]
      106 CAPTURE                          VAL R14
      107 GETTABLEKS                       R19 R3 K36 ["connect"]
      109 MOVE                             R20 R17
      110 MOVE                             R21 R18
      111 CALL                             R19 2 1
      112 MOVE                             R20 R16
      113 CALL                             R19 1 -1
      114 RETURN                           R19 -1
