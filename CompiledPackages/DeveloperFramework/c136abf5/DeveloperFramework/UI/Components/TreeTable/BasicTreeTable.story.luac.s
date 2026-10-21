PROTO_0:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K4 [{[1] = "Workspace", ["value"], ["children"]}]
        3 DUPTABLE                         R2 K8 [{["Value"] = "12 plus extralongtext lorem ipsum asdfghjkl asdfghjkl asdfghjkl asdfghjkl asdfghjkhjkl sadfrghjkm,l asdefrgthjk dfgthjk dfgthjk dfgthyjk dfl sadfrghjkm,l asdefrgthjk dfgthjk dfgthjk dfgthyjk dfghjk fdghjk dfghjk fdghjk", ["LeftIcon"]}]
        4 DUPTABLE                         R3 K12 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
        5 GETIMPORT                        R4 K15 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 14
        9 LOADN                            R7 0
       10 LOADN                            R8 14
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K11 ["Size"]
       14 SETTABLEKS                       R3 R2 K7 ["LeftIcon"]
       16 SETTABLEKS                       R2 R1 K2 ["value"]
       18 NEWTABLE                         R2 0 1
       20 DUPTABLE                         R3 K18 [{[1] = "Ocean", ["value"] = 53, ["children"]}]
       21 NEWTABLE                         R4 0 1
       23 DUPTABLE                         R5 K21 [{[1] = "Billy The Fish", ["value"] = 12}]
       24 SETLIST                          R4 R5 1 [1]
       26 SETTABLEKS                       R4 R3 K3 ["children"]
       28 SETLIST                          R2 R3 1 [1]
       30 SETTABLEKS                       R2 R1 K3 ["children"]
       32 DUPTABLE                         R2 K24 [{[1] = "ReplicatedStorage", ["value"] = 18, ["children"]}]
       33 NEWTABLE                         R3 0 2
       35 DUPTABLE                         R4 K26 [{[1] = "WeatherSystem", ["value"]}]
       36 DUPTABLE                         R5 K28 [{["Value"] = 193, ["LeftIcon"]}]
       37 DUPTABLE                         R6 K12 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       38 GETIMPORT                        R7 K15 [UDim2.new]
       40 LOADN                            R8 0
       41 LOADN                            R9 14
       42 LOADN                            R10 0
       43 LOADN                            R11 14
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K11 ["Size"]
       47 SETTABLEKS                       R6 R5 K7 ["LeftIcon"]
       49 SETTABLEKS                       R5 R4 K2 ["value"]
       51 DUPTABLE                         R5 K31 [{[1] = "CloudSystem", ["value"] = 9001, ["children"]}]
       52 NEWTABLE                         R6 0 1
       54 DUPTABLE                         R7 K33 [{[1] = "Cheeky Cumulus", ["value"]}]
       55 DUPTABLE                         R8 K35 [{["Value"] = 200, ["LeftIcon"]}]
       56 DUPTABLE                         R9 K12 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       57 GETIMPORT                        R10 K15 [UDim2.new]
       59 LOADN                            R11 0
       60 LOADN                            R12 14
       61 LOADN                            R13 0
       62 LOADN                            R14 14
       63 CALL                             R10 4 1
       64 SETTABLEKS                       R10 R9 K11 ["Size"]
       66 SETTABLEKS                       R9 R8 K7 ["LeftIcon"]
       68 SETTABLEKS                       R8 R7 K2 ["value"]
       70 SETLIST                          R6 R7 1 [1]
       72 SETTABLEKS                       R6 R5 K3 ["children"]
       74 SETLIST                          R3 R4 2 [1]
       76 SETTABLEKS                       R3 R2 K3 ["children"]
       78 DUPTABLE                         R3 K38 [{[1] = "ServerStorage", ["value"] = 30, ["children"]}]
       79 NEWTABLE                         R4 0 1
       81 DUPTABLE                         R5 K41 [{[1] = "Secret Base", ["value"] = 212, ["children"]}]
       82 NEWTABLE                         R6 0 1
       84 DUPTABLE                         R7 K44 [{[1] = "Obsidian Door", ["value"] = 120}]
       85 SETLIST                          R6 R7 1 [1]
       87 SETTABLEKS                       R6 R5 K3 ["children"]
       89 SETLIST                          R4 R5 1 [1]
       91 SETTABLEKS                       R4 R3 K3 ["children"]
       93 SETLIST                          R0 R1 3 [1]
       95 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["Sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"Sizes", "Expansion", "Items"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Sizes"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["Expansion"]
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K2 ["Items"]
       12 SETTABLEKS                       R1 R0 K4 ["state"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onSizesChange"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["state"]
        6 GETTABLEKS                       R6 R6 K3 ["Sizes"]
        8 GETTABLE                         R5 R6 R1
        9 SETTABLEKS                       R5 R4 K0 ["Width"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["Expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R0 K0 ["onSizesChange"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 4
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K11 [{["Size"], ["Columns"], ["OnExpansionChange"], ["OnColumnSizesChange"], ["Expansion"], ["RootItems"], ["GetChildren"], ["Scroll"] = True}]
       14 GETIMPORT                        R7 K14 [UDim2.new]
       16 LOADN                            R8 1
       17 LOADN                            R9 0
       18 LOADN                            R10 0
       19 LOADN                            R11 240
       20 CALL                             R7 4 1
       21 SETTABLEKS                       R7 R6 K2 ["Size"]
       23 SETTABLEKS                       R1 R6 K3 ["Columns"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R7 R6 K4 ["OnExpansionChange"]
       30 SETTABLEKS                       R2 R6 K5 ["OnColumnSizesChange"]
       32 GETTABLEKS                       R7 R0 K15 ["state"]
       34 GETTABLEKS                       R7 R7 K6 ["Expansion"]
       36 SETTABLEKS                       R7 R6 K6 ["Expansion"]
       38 GETTABLEKS                       R7 R0 K15 ["state"]
       40 GETTABLEKS                       R7 R7 K16 ["Items"]
       42 SETTABLEKS                       R7 R6 K7 ["RootItems"]
       44 DUPCLOSURE                       R7 K17 [PROTO_5]
       45 SETTABLEKS                       R7 R6 K8 ["GetChildren"]
       47 GETUPVAL                         R7 5
       48 CALL                             R5 2 -1
       49 CALL                             R3 -1 -1
       50 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PureComponent"]
        3 LOADK                            R4 K1 ["Story"]
        4 NAMECALL                         R2 R2 K2 ["extend"]
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R3 R2 K3 ["init"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K4 ["render"]
       21 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["onRightClick() pos = "]
        3 MOVE                             R4 R1
        4 LOADK                            R5 K3 [", row = "]
        5 MOVE                             R6 R0
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETTABLEKS                       R3 R1 K9 ["map"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R0 K4 ["Parent"]
       24 GETTABLEKS                       R5 R5 K10 ["Roact"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R0 K2 ["UI"]
       31 GETTABLEKS                       R6 R6 K11 ["Components"]
       33 GETTABLEKS                       R6 R6 K12 ["TreeTable"]
       35 CALL                             R5 1 1
       36 NEWTABLE                         R6 0 2
       38 DUPTABLE                         R7 K16 [{["Name"] = "Name", ["Key"] = "name"}]
       39 DUPTABLE                         R8 K19 [{["Name"] = "Value", ["Key"] = "value"}]
       40 SETLIST                          R6 R7 2 [1]
       42 DUPCLOSURE                       R7 K20 [PROTO_0]
       43 DUPCLOSURE                       R8 K21 [PROTO_7]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 DUPTABLE                         R9 K23 [{"stories"}]
       51 NEWTABLE                         R10 0 4
       53 DUPTABLE                         R11 K28 [{["name"] = "Clamped", ["summary"] = "Columns can't extend outside table bounds, and resize proportionally when the outer size changes", ["story"]}]
       54 MOVE                             R12 R8
       55 NEWTABLE                         R13 0 2
       57 GETIMPORT                        R14 K31 [UDim.new]
       59 LOADK                            R15 K32 [0.5]
       60 LOADN                            R16 0
       61 CALL                             R14 2 1
       62 GETIMPORT                        R15 K31 [UDim.new]
       64 LOADK                            R16 K32 [0.5]
       65 LOADN                            R17 0
       66 CALL                             R15 2 -1
       67 SETLIST                          R13 R14 -1 [1]
       69 DUPTABLE                         R14 K36 [{["ClampSize"] = True, ["UseScale"] = True}]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K27 ["story"]
       73 DUPTABLE                         R12 K39 [{["name"] = "Clamped with deficit", ["summary"] = "Columns can't extend outside table bounds, and only the last column resizes when the outer size changes", ["story"]}]
       74 MOVE                             R13 R8
       75 NEWTABLE                         R14 0 2
       77 GETIMPORT                        R15 K31 [UDim.new]
       79 LOADN                            R16 0
       80 LOADN                            R17 200
       81 CALL                             R15 2 1
       82 GETIMPORT                        R16 K31 [UDim.new]
       84 LOADN                            R17 1
       85 LOADN                            R18 -200
       86 CALL                             R16 2 -1
       87 SETLIST                          R14 R15 -1 [1]
       89 DUPTABLE                         R15 K41 [{["ClampSize"] = True, ["UseDeficit"] = True}]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K27 ["story"]
       93 DUPTABLE                         R13 K44 [{["name"] = "Expanding", ["summary"] = "Columns can extend outside the table bounds, producing a horizontal scroll, and do not resize when the outer size changes", ["story"]}]
       94 MOVE                             R14 R8
       95 NEWTABLE                         R15 0 2
       97 GETIMPORT                        R16 K31 [UDim.new]
       99 LOADN                            R17 0
      100 LOADN                            R18 200
      101 CALL                             R16 2 1
      102 GETIMPORT                        R17 K31 [UDim.new]
      104 LOADN                            R18 0
      105 LOADN                            R19 400
      106 CALL                             R17 2 -1
      107 SETLIST                          R15 R16 -1 [1]
      109 NEWTABLE                         R16 0 0
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K27 ["story"]
      114 DUPTABLE                         R14 K47 [{["name"] = "Right click handling", ["summary"] = "You can pass a callback OnRightClick() to handle right clicks on rows", ["story"]}]
      115 MOVE                             R15 R8
      116 NEWTABLE                         R16 0 0
      118 DUPTABLE                         R17 K49 [{"RightClick"}]
      119 DUPCLOSURE                       R18 K50 [PROTO_8]
      120 SETTABLEKS                       R18 R17 K48 ["RightClick"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K27 ["story"]
      125 SETLIST                          R10 R11 4 [1]
      127 SETTABLEKS                       R10 R9 K22 ["stories"]
      129 RETURN                           R9 1
