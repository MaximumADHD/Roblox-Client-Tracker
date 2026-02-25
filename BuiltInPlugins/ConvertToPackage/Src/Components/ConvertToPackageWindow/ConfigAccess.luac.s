PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["getMyGroups"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Network"]
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
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K8 ["getOwnerDropDownContent"]
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
       54 GETIMPORT                        R13 K16 [game]
       56 GETTABLEKS                       R12 R13 K17 ["CreatorType"]
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
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R12 R13 K24 ["createElement"]
       77 LOADK                            R13 K25 ["Frame"]
       78 DUPTABLE                         R14 K30 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
       79 GETIMPORT                        R15 K33 [UDim2.new]
       81 LOADN                            R16 1
       82 LOADN                            R17 0
       83 LOADN                            R18 0
       84 MOVE                             R19 R6
       85 CALL                             R15 4 1
       86 SETTABLEKS                       R15 R14 K26 ["Size"]
       88 LOADN                            R15 1
       89 SETTABLEKS                       R15 R14 K27 ["BackgroundTransparency"]
       91 GETIMPORT                        R15 K36 [Color3.fromRGB]
       93 LOADN                            R16 227
       94 LOADN                            R17 227
       95 LOADN                            R18 227
       96 CALL                             R15 3 1
       97 SETTABLEKS                       R15 R14 K28 ["BackgroundColor3"]
       99 LOADN                            R15 0
      100 SETTABLEKS                       R15 R14 K29 ["BorderSizePixel"]
      102 SETTABLEKS                       R5 R14 K4 ["LayoutOrder"]
      104 DUPTABLE                         R15 K39 [{"UIListLayout", "Title", "DropdownMenu"}]
      105 GETUPVAL                         R17 1
      106 GETTABLEKS                       R16 R17 K24 ["createElement"]
      108 LOADK                            R17 K37 ["UIListLayout"]
      109 DUPTABLE                         R18 K45 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      110 GETIMPORT                        R19 K47 [Enum.FillDirection.Horizontal]
      112 SETTABLEKS                       R19 R18 K40 ["FillDirection"]
      114 GETIMPORT                        R19 K49 [Enum.HorizontalAlignment.Left]
      116 SETTABLEKS                       R19 R18 K41 ["HorizontalAlignment"]
      118 GETIMPORT                        R19 K51 [Enum.VerticalAlignment.Top]
      120 SETTABLEKS                       R19 R18 K42 ["VerticalAlignment"]
      122 GETIMPORT                        R19 K52 [Enum.SortOrder.LayoutOrder]
      124 SETTABLEKS                       R19 R18 K43 ["SortOrder"]
      126 GETIMPORT                        R19 K54 [UDim.new]
      128 LOADN                            R20 0
      129 LOADN                            R21 0
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K44 ["Padding"]
      133 CALL                             R16 2 1
      134 SETTABLEKS                       R16 R15 K37 ["UIListLayout"]
      136 GETUPVAL                         R17 1
      137 GETTABLEKS                       R16 R17 K24 ["createElement"]
      139 LOADK                            R17 K55 ["TextLabel"]
      140 DUPTABLE                         R18 K61 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      141 GETIMPORT                        R19 K33 [UDim2.new]
      143 LOADN                            R20 0
      144 GETUPVAL                         R22 0
      145 GETTABLEKS                       R21 R22 K62 ["TITLE_GUTTER_WIDTH"]
      147 LOADN                            R22 1
      148 LOADN                            R23 0
      149 CALL                             R19 4 1
      150 SETTABLEKS                       R19 R18 K26 ["Size"]
      152 LOADN                            R19 1
      153 SETTABLEKS                       R19 R18 K27 ["BackgroundTransparency"]
      155 LOADN                            R19 0
      156 SETTABLEKS                       R19 R18 K29 ["BorderSizePixel"]
      158 SETTABLEKS                       R4 R18 K23 ["Text"]
      160 GETIMPORT                        R19 K63 [Enum.TextXAlignment.Left]
      162 SETTABLEKS                       R19 R18 K56 ["TextXAlignment"]
      164 GETIMPORT                        R19 K64 [Enum.TextYAlignment.Top]
      166 SETTABLEKS                       R19 R18 K57 ["TextYAlignment"]
      168 GETUPVAL                         R20 0
      169 GETTABLEKS                       R19 R20 K65 ["FONT_SIZE_TITLE"]
      171 SETTABLEKS                       R19 R18 K58 ["TextSize"]
      173 GETTABLEKS                       R19 R10 K66 ["titleTextColor"]
      175 SETTABLEKS                       R19 R18 K59 ["TextColor3"]
      177 GETUPVAL                         R20 0
      178 GETTABLEKS                       R19 R20 K67 ["FONT"]
      180 SETTABLEKS                       R19 R18 K60 ["Font"]
      182 LOADN                            R19 1
      183 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
      185 CALL                             R16 2 1
      186 SETTABLEKS                       R16 R15 K3 ["Title"]
      188 GETUPVAL                         R17 1
      189 GETTABLEKS                       R16 R17 K24 ["createElement"]
      191 GETUPVAL                         R17 2
      192 DUPTABLE                         R18 K73 [{"Items", "LayoutOrder", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Size", "Width"}]
      193 GETUPVAL                         R19 3
      194 GETTABLEKS                       R20 R0 K10 ["dropdownContent"]
      196 GETTABLEKS                       R21 R0 K74 ["createContentForSelectInput"]
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K68 ["Items"]
      201 LOADN                            R19 2
      202 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
      204 SETTABLEKS                       R8 R18 K69 ["OnItemActivated"]
      206 SETTABLEKS                       R11 R18 K70 ["PlaceholderText"]
      208 GETTABLEKS                       R21 R0 K10 ["dropdownContent"]
      210 GETTABLE                         R20 R21 R9
      211 GETTABLEKS                       R19 R20 K75 ["Key"]
      213 SETTABLEKS                       R19 R18 K71 ["SelectedIndex"]
      215 GETIMPORT                        R19 K33 [UDim2.new]
      217 LOADN                            R20 0
      218 LOADN                            R21 220
      219 LOADN                            R22 0
      220 LOADN                            R23 38
      221 CALL                             R19 4 1
      222 SETTABLEKS                       R19 R18 K26 ["Size"]
      224 LOADN                            R19 220
      225 SETTABLEKS                       R19 R18 K72 ["Width"]
      227 CALL                             R16 2 1
      228 SETTABLEKS                       R16 R15 K38 ["DropdownMenu"]
      230 CALL                             R12 3 -1
      231 RETURN                           R12 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"groupsArray"}]
        6 GETTABLEKS                       R4 R0 K2 ["GroupReducer"]
        8 GETTABLEKS                       R3 R4 K0 ["groupsArray"]
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R8 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R8 K12 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K13 ["Constants"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R4 K14 ["UI"]
       45 GETTABLEKS                       R10 R9 K15 ["SelectInput"]
       47 GETTABLEKS                       R11 R4 K16 ["Dash"]
       49 GETTABLEKS                       R12 R11 K17 ["map"]
       51 GETTABLEKS                       R14 R0 K11 ["Src"]
       53 GETTABLEKS                       R13 R14 K18 ["Thunks"]
       55 GETIMPORT                        R14 K5 [require]
       57 GETTABLEKS                       R15 R13 K19 ["GetMyGroupsRequest"]
       59 CALL                             R14 1 1
       60 GETIMPORT                        R15 K5 [require]
       62 GETTABLEKS                       R18 R0 K11 ["Src"]
       64 GETTABLEKS                       R17 R18 K9 ["ContextServices"]
       66 GETTABLEKS                       R16 R17 K20 ["NetworkContext"]
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
