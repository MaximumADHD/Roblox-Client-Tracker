PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+4]
        3 LOADNIL                          R1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R0
        6 RETURN                           R1 2
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R7 R5 K0 ["hiddenBy"]
       13 GETTABLE                         R6 R7 R0
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETTABLEKS                       R6 R5 K1 ["font"]
       17 GETTABLEKS                       R8 R5 K0 ["hiddenBy"]
       19 GETTABLE                         R7 R8 R0
       20 RETURN                           R6 2
       21 FORGLOOP                         R1 2 ; [-11]
       23 MOVE                             R1 R0
       24 LOADNIL                          R2
       25 RETURN                           R1 2

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Fonts"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R7 R5 K1 ["AssetId"]
       10 GETUPVAL                         R9 1
       11 GETTABLE                         R8 R9 R7
       12 JUMPIFNOT                        R8 ; [+4]
       13 LOADNIL                          R6
       14 GETUPVAL                         R9 1
       15 GETTABLE                         R8 R9 R7
       16 JUMP                             ; [+17]
       17 GETUPVAL                         R8 2
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 FORGPREP                         R8
       21 GETTABLEKS                       R14 R12 K2 ["hiddenBy"]
       23 GETTABLE                         R13 R14 R7
       24 JUMPIFNOT                        R13 ; [+6]
       25 GETTABLEKS                       R6 R12 K3 ["font"]
       27 GETTABLEKS                       R14 R12 K2 ["hiddenBy"]
       29 GETTABLE                         R13 R14 R7
       30 JUMP                             ; [+3]
       31 FORGLOOP                         R8 2 ; [-11]
       33 MOVE                             R6 R7
       34 JUMPIFNOT                        R6 ; [+6]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K0 ["Fonts"]
       38 GETTABLE                         R7 R8 R6
       39 JUMPIFNOT                        R7 ; [+1]
       40 SETTABLE                         R7 R0 R6
       41 FORGLOOP                         R1 2 ; [-34]
       43 NEWTABLE                         R1 0 0
       45 MOVE                             R2 R0
       46 LOADNIL                          R3
       47 LOADNIL                          R4
       48 FORGPREP                         R2
       49 DUPTABLE                         R9 K7 [{"Id", "Label", "Value"}]
       50 GETTABLEKS                       R10 R6 K1 ["AssetId"]
       52 SETTABLEKS                       R10 R9 K4 ["Id"]
       54 GETTABLEKS                       R10 R6 K8 ["Name"]
       56 SETTABLEKS                       R10 R9 K5 ["Label"]
       58 GETTABLEKS                       R10 R6 K1 ["AssetId"]
       60 SETTABLEKS                       R10 R9 K6 ["Value"]
       62 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       64 MOVE                             R8 R1
       65 GETIMPORT                        R7 K11 [table.insert]
       67 CALL                             R7 2 0
       68 FORGLOOP                         R2 2 ; [-20]
       70 GETUPVAL                         R2 3
       71 MOVE                             R3 R1
       72 CALL                             R2 1 -1
       73 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K4 [{"LayoutOrder", "OnClick", "Size"}]
        5 SETTABLEKS                       R1 R6 K1 ["LayoutOrder"]
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R7 R6 K2 ["OnClick"]
       11 GETUPVAL                         R7 2
       12 SETTABLEKS                       R7 R6 K3 ["Size"]
       14 DUPTABLE                         R7 K6 [{"Label"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K0 ["createElement"]
       18 GETUPVAL                         R9 3
       19 NEWTABLE                         R10 4 0
       21 LOADB                            R11 1
       22 SETTABLEKS                       R11 R10 K7 ["RichText"]
       24 LOADK                            R12 K8 ["<font family='%*'>%*</font>"]
       25 GETTABLEKS                       R14 R0 K9 ["Id"]
       27 GETTABLEKS                       R15 R0 K5 ["Label"]
       29 NAMECALL                         R12 R12 K10 ["format"]
       31 CALL                             R12 3 1
       32 MOVE                             R11 R12
       33 SETTABLEKS                       R11 R10 K11 ["Text"]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K12 ["Tag"]
       38 LOADK                            R12 K13 ["X-Fill X-Pad ItemTextSize TextXAlignLeft"]
       39 SETTABLE                         R12 R10 R11
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K5 ["Label"]
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Value"]
        3 SETTABLEKS                       R0 R1 K1 ["Family"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["OnChanged"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K0 ["Fonts"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K1 [PROTO_3]
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 LOADK                            R3 K2 ["Font..."]
       19 GETTABLEKS                       R4 R0 K3 ["Value"]
       21 GETTABLEKS                       R4 R4 K4 ["Family"]
       23 JUMPIFNOT                        R4 ; [+31]
       24 GETTABLEKS                       R6 R0 K3 ["Value"]
       26 GETTABLEKS                       R6 R6 K4 ["Family"]
       28 GETUPVAL                         R8 1
       29 GETTABLE                         R7 R8 R6
       30 JUMPIFNOT                        R7 ; [+4]
       31 LOADNIL                          R4
       32 GETUPVAL                         R7 1
       33 GETTABLE                         R5 R7 R6
       34 JUMP                             ; [+18]
       35 GETUPVAL                         R7 2
       36 LOADNIL                          R8
       37 LOADNIL                          R9
       38 FORGPREP                         R7
       39 GETTABLEKS                       R13 R11 K5 ["hiddenBy"]
       41 GETTABLE                         R12 R13 R6
       42 JUMPIFNOT                        R12 ; [+6]
       43 GETTABLEKS                       R4 R11 K6 ["font"]
       45 GETTABLEKS                       R12 R11 K5 ["hiddenBy"]
       47 GETTABLE                         R5 R12 R6
       48 JUMP                             ; [+4]
       49 FORGLOOP                         R7 2 ; [-11]
       51 MOVE                             R4 R6
       52 LOADNIL                          R5
       53 JUMPIFNOT                        R5 ; [+1]
       54 MOVE                             R3 R5
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K7 ["createElement"]
       58 GETUPVAL                         R5 8
       59 DUPTABLE                         R6 K12 [{"OnChanged", "OnRenderItem", "PlaceholderText", "Schema", "Value"}]
       60 NEWCLOSURE                       R7 P2
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R7 R6 K8 ["OnChanged"]
       64 SETTABLEKS                       R2 R6 K9 ["OnRenderItem"]
       66 SETTABLEKS                       R3 R6 K10 ["PlaceholderText"]
       68 DUPTABLE                         R7 K14 [{"Items"}]
       69 SETTABLEKS                       R1 R7 K13 ["Items"]
       71 SETTABLEKS                       R7 R6 K11 ["Schema"]
       73 GETTABLEKS                       R7 R0 K3 ["Value"]
       75 GETTABLEKS                       R7 R7 K4 ["Family"]
       77 SETTABLEKS                       R7 R6 K3 ["Value"]
       79 CALL                             R4 2 -1
       80 RETURN                           R4 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"Fonts"}]
        1 GETTABLEKS                       R2 R0 K2 ["Asset"]
        3 GETTABLEKS                       R2 R2 K0 ["Fonts"]
        5 SETTABLEKS                       R2 R1 K0 ["Fonts"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["RoactRodux"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["useMemo"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K5 ["Packages"]
       31 GETTABLEKS                       R5 R5 K9 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K10 ["UI"]
       36 GETTABLEKS                       R6 R5 K11 ["Button"]
       38 GETTABLEKS                       R7 R5 K12 ["PropertyCell"]
       40 GETTABLEKS                       R7 R7 K13 ["Renderers"]
       42 GETTABLEKS                       R7 R7 K14 ["Select"]
       44 GETTABLEKS                       R8 R5 K15 ["TextLabel"]
       46 GETIMPORT                        R9 K4 [require]
       48 GETTABLEKS                       R10 R0 K16 ["Src"]
       50 GETTABLEKS                       R10 R10 K17 ["Util"]
       52 GETTABLEKS                       R10 R10 K18 ["sortByLabel"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K4 [require]
       57 GETTABLEKS                       R11 R0 K16 ["Src"]
       59 GETTABLEKS                       R11 R11 K13 ["Renderers"]
       61 GETTABLEKS                       R11 R11 K19 ["RendererTypes"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R0 K16 ["Src"]
       68 GETTABLEKS                       R12 R12 K20 ["Types"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETTABLEKS                       R13 R0 K16 ["Src"]
       75 GETTABLEKS                       R13 R13 K21 ["Reducers"]
       77 GETTABLEKS                       R13 R13 K22 ["RootReducer"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K4 [require]
       82 GETTABLEKS                       R14 R0 K16 ["Src"]
       84 GETTABLEKS                       R14 R14 K23 ["Resources"]
       86 GETTABLEKS                       R14 R14 K24 ["PluginStyles"]
       88 CALL                             R13 1 1
       89 LOADK                            R16 K25 ["PropertyCellSize"]
       90 NAMECALL                         R14 R13 K26 ["GetAttribute"]
       92 CALL                             R14 2 1
       93 NEWTABLE                         R15 0 3
       95 DUPTABLE                         R16 K30 [{["font"] = "rbxasset://fonts/families/Arimo.json", ["hiddenBy"]}]
       96 NEWTABLE                         R17 2 0
       98 LOADK                            R18 K31 ["Arial"]
       99 SETTABLEKS                       R18 R17 K32 ["rbxasset://fonts/families/Arial.json"]
      101 LOADK                            R18 K33 ["Arimo (Cloud)"]
      102 SETTABLEKS                       R18 R17 K34 ["rbxassetid://16658254058"]
      104 SETTABLEKS                       R17 R16 K29 ["hiddenBy"]
      106 DUPTABLE                         R17 K36 [{["font"] = "rbxasset://fonts/families/BuilderSans.json", ["hiddenBy"]}]
      107 NEWTABLE                         R18 1 0
      109 LOADK                            R19 K37 ["Builder Sans (Cloud)"]
      110 SETTABLEKS                       R19 R18 K38 ["rbxassetid://16658221428"]
      112 SETTABLEKS                       R18 R17 K29 ["hiddenBy"]
      114 DUPTABLE                         R18 K40 [{["font"] = "rbxasset://fonts/families/Montserrat.json", ["hiddenBy"]}]
      115 NEWTABLE                         R19 2 0
      117 LOADK                            R20 K41 ["Montserrat (Cloud)"]
      118 SETTABLEKS                       R20 R19 K42 ["rbxassetid://11702779517"]
      120 LOADK                            R20 K43 ["Gotham"]
      121 SETTABLEKS                       R20 R19 K44 ["rbxasset://fonts/families/GothamSSm.json"]
      123 SETTABLEKS                       R19 R18 K29 ["hiddenBy"]
      125 SETLIST                          R15 R16 3 [1]
      127 NEWTABLE                         R16 1 0
      129 LOADK                            R17 K45 ["Arial (Legacy)"]
      130 SETTABLEKS                       R17 R16 K46 ["rbxasset://fonts/families/LegacyArial.json"]
      132 DUPCLOSURE                       R17 K47 [PROTO_0]
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R15
      135 DUPCLOSURE                       R18 K48 [PROTO_5]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R7
      145 GETTABLEKS                       R19 R1 K49 ["connect"]
      147 DUPCLOSURE                       R20 K50 [PROTO_6]
      148 CALL                             R19 1 1
      149 MOVE                             R20 R18
      150 CALL                             R19 1 -1
      151 RETURN                           R19 -1
