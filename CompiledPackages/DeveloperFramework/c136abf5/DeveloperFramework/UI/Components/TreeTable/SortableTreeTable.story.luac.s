PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETTABLEKS                       R6 R2 K0 ["Key"]
        5 GETTABLE                         R5 R0 R6
        6 FASTCALL1                        TYPEOF R5 ; [+2]
        7 GETIMPORT                        R4 K2 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+7]
       12 GETTABLEKS                       R4 R2 K0 ["Key"]
       14 GETTABLE                         R3 R0 R4
       15 GETTABLEKS                       R3 R3 K4 ["Value"]
       17 JUMPIF                           R3 ; [+3]
       18 GETTABLEKS                       R4 R2 K0 ["Key"]
       20 GETTABLE                         R3 R0 R4
       21 GETTABLEKS                       R7 R2 K0 ["Key"]
       23 GETTABLE                         R6 R1 R7
       24 FASTCALL1                        TYPEOF R6 ; [+2]
       25 GETIMPORT                        R5 K2 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+7]
       30 GETTABLEKS                       R5 R2 K0 ["Key"]
       32 GETTABLE                         R4 R1 R5
       33 GETTABLEKS                       R4 R4 K4 ["Value"]
       35 JUMPIF                           R4 ; [+3]
       36 GETTABLEKS                       R5 R2 K0 ["Key"]
       38 GETTABLE                         R4 R1 R5
       39 GETUPVAL                         R5 2
       40 GETIMPORT                        R6 K8 [Enum.SortDirection.Descending]
       42 JUMPIFNOTEQ                      R5 R6 ; [+6]
       44 JUMPIFLT                         R3 R4 ; [+2]
       46 LOADB                            R5 0 +1
       47 LOADB                            R5 1
       48 RETURN                           R5 1
       49 JUMPIFLT                         R4 R3 ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 RETURN                           R5 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["state"]
        8 GETTABLEKS                       R4 R4 K1 ["Items"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R3
       13 MOVE                             R6 R2
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 2
       16 DUPTABLE                         R6 K5 [{"Items", "SortChildren", "SortIndex", "SortOrder"}]
       17 SETTABLEKS                       R3 R6 K1 ["Items"]
       19 SETTABLEKS                       R2 R6 K2 ["SortChildren"]
       21 SETTABLEKS                       R0 R6 K3 ["SortIndex"]
       23 SETTABLEKS                       R1 R6 K4 ["SortOrder"]
       25 NAMECALL                         R4 R4 K6 ["setState"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["Sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K7 [{[1] = , ["SortIndex"] = , ["SortOrder"] = , ["Expansion"], ["Sizes"], ["Items"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K4 ["Expansion"]
        5 NEWTABLE                         R2 0 2
        7 GETIMPORT                        R3 K10 [UDim.new]
        9 LOADK                            R4 K11 [0.5]
       10 LOADN                            R5 0
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K10 [UDim.new]
       14 LOADK                            R5 K11 [0.5]
       15 LOADN                            R6 0
       16 CALL                             R4 2 -1
       17 SETLIST                          R2 R3 -1 [1]
       19 SETTABLEKS                       R2 R1 K5 ["Sizes"]
       21 NEWTABLE                         R2 0 3
       23 DUPTABLE                         R3 K18 [{["id"] = "1", ["name"] = "Workspace", ["value"], ["children"]}]
       24 DUPTABLE                         R4 K22 [{["Value"] = 12, ["LeftIcon"]}]
       25 DUPTABLE                         R5 K26 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       26 GETIMPORT                        R6 K28 [UDim2.new]
       28 LOADN                            R7 0
       29 LOADN                            R8 14
       30 LOADN                            R9 0
       31 LOADN                            R10 14
       32 CALL                             R6 4 1
       33 SETTABLEKS                       R6 R5 K25 ["Size"]
       35 SETTABLEKS                       R5 R4 K21 ["LeftIcon"]
       37 SETTABLEKS                       R4 R3 K16 ["value"]
       39 NEWTABLE                         R4 0 1
       41 DUPTABLE                         R5 K32 [{["id"] = "1.1", ["name"] = "Ocean", ["value"] = 53, ["children"]}]
       42 NEWTABLE                         R6 0 1
       44 DUPTABLE                         R7 K35 [{["id"] = "1.1.1", ["name"] = "Billy The Fish", ["value"] = 12}]
       45 SETLIST                          R6 R7 1 [1]
       47 SETTABLEKS                       R6 R5 K17 ["children"]
       49 SETLIST                          R4 R5 1 [1]
       51 SETTABLEKS                       R4 R3 K17 ["children"]
       53 DUPTABLE                         R4 K39 [{["id"] = "2", ["name"] = "ReplicatedStorage", ["value"] = 18, ["children"]}]
       54 NEWTABLE                         R5 0 2
       56 DUPTABLE                         R6 K42 [{["id"] = "2.1", ["name"] = "WeatherSystem", ["value"]}]
       57 DUPTABLE                         R7 K44 [{["Value"] = 193, ["LeftIcon"]}]
       58 DUPTABLE                         R8 K26 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       59 GETIMPORT                        R9 K28 [UDim2.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 14
       63 LOADN                            R12 0
       64 LOADN                            R13 14
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K25 ["Size"]
       68 SETTABLEKS                       R8 R7 K21 ["LeftIcon"]
       70 SETTABLEKS                       R7 R6 K16 ["value"]
       72 DUPTABLE                         R7 K48 [{["id"] = "2.2", ["name"] = "CloudSystem", ["value"] = 9001, ["children"]}]
       73 NEWTABLE                         R8 0 1
       75 DUPTABLE                         R9 K51 [{["id"] = "2.2.1", ["name"] = "Cheeky Cumulus", ["value"]}]
       76 DUPTABLE                         R10 K53 [{["Value"] = 200, ["LeftIcon"]}]
       77 DUPTABLE                         R11 K26 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       78 GETIMPORT                        R12 K28 [UDim2.new]
       80 LOADN                            R13 0
       81 LOADN                            R14 14
       82 LOADN                            R15 0
       83 LOADN                            R16 14
       84 CALL                             R12 4 1
       85 SETTABLEKS                       R12 R11 K25 ["Size"]
       87 SETTABLEKS                       R11 R10 K21 ["LeftIcon"]
       89 SETTABLEKS                       R10 R9 K16 ["value"]
       91 SETLIST                          R8 R9 1 [1]
       93 SETTABLEKS                       R8 R7 K17 ["children"]
       95 SETLIST                          R5 R6 2 [1]
       97 SETTABLEKS                       R5 R4 K17 ["children"]
       99 DUPTABLE                         R5 K57 [{["id"] = "3", ["name"] = "ServerStorage", ["value"] = 30, ["children"]}]
      100 NEWTABLE                         R6 0 1
      102 DUPTABLE                         R7 K61 [{["id"] = "3.1", ["name"] = "Secret Base", ["value"] = 212, ["children"]}]
      103 NEWTABLE                         R8 0 1
      105 DUPTABLE                         R9 K65 [{["id"] = "3.1.1", ["name"] = "Obsidian Door", ["value"] = 120}]
      106 SETLIST                          R8 R9 1 [1]
      108 SETTABLEKS                       R8 R7 K17 ["children"]
      110 SETLIST                          R6 R7 1 [1]
      112 SETTABLEKS                       R6 R5 K17 ["children"]
      114 SETLIST                          R2 R3 3 [1]
      116 SETTABLEKS                       R2 R1 K6 ["Items"]
      118 SETTABLEKS                       R1 R0 K66 ["state"]
      120 NEWCLOSURE                       R1 P0
      121 CAPTURE                          UPVAL U0
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U2
      125 SETTABLEKS                       R1 R0 K67 ["onSortChange"]
      127 NEWCLOSURE                       R1 P1
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R1 R0 K68 ["onSizesChange"]
      131 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["createElement"]
        9 GETUPVAL                         R3 4
       10 DUPTABLE                         R4 K17 [{["Columns"], ["SortIndex"], ["SortOrder"], ["SortChildren"], ["OnSortChange"], ["Size"], ["OnExpansionChange"], ["OnColumnSizesChange"], ["Expansion"], ["RootItems"], ["GetChildren"], ["GetItemId"], ["UseScale"] = True, ["ClampSize"] = True, ["Scroll"] = True}]
       11 SETTABLEKS                       R1 R4 K1 ["Columns"]
       13 GETTABLEKS                       R5 R0 K18 ["state"]
       15 GETTABLEKS                       R5 R5 K2 ["SortIndex"]
       17 SETTABLEKS                       R5 R4 K2 ["SortIndex"]
       19 GETTABLEKS                       R5 R0 K18 ["state"]
       21 GETTABLEKS                       R5 R5 K3 ["SortOrder"]
       23 SETTABLEKS                       R5 R4 K3 ["SortOrder"]
       25 GETTABLEKS                       R5 R0 K18 ["state"]
       27 GETTABLEKS                       R5 R5 K4 ["SortChildren"]
       29 SETTABLEKS                       R5 R4 K4 ["SortChildren"]
       31 GETTABLEKS                       R5 R0 K19 ["onSortChange"]
       33 SETTABLEKS                       R5 R4 K5 ["OnSortChange"]
       35 GETIMPORT                        R5 K22 [UDim2.new]
       37 LOADN                            R6 1
       38 LOADN                            R7 0
       39 LOADN                            R8 0
       40 LOADN                            R9 240
       41 CALL                             R5 4 1
       42 SETTABLEKS                       R5 R4 K6 ["Size"]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R5 R4 K7 ["OnExpansionChange"]
       49 GETTABLEKS                       R5 R0 K23 ["onSizesChange"]
       51 SETTABLEKS                       R5 R4 K8 ["OnColumnSizesChange"]
       53 GETTABLEKS                       R5 R0 K18 ["state"]
       55 GETTABLEKS                       R5 R5 K9 ["Expansion"]
       57 SETTABLEKS                       R5 R4 K9 ["Expansion"]
       59 GETTABLEKS                       R5 R0 K18 ["state"]
       61 GETTABLEKS                       R5 R5 K24 ["Items"]
       63 SETTABLEKS                       R5 R4 K10 ["RootItems"]
       65 DUPCLOSURE                       R5 K25 [PROTO_6]
       66 SETTABLEKS                       R5 R4 K11 ["GetChildren"]
       68 DUPCLOSURE                       R5 K26 [PROTO_7]
       69 SETTABLEKS                       R5 R4 K12 ["GetItemId"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

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
       20 GETIMPORT                        R4 K12 [table.sort]
       22 GETIMPORT                        R5 K6 [require]
       24 GETTABLEKS                       R6 R0 K4 ["Parent"]
       26 GETTABLEKS                       R6 R6 K13 ["Roact"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K2 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["Components"]
       35 GETTABLEKS                       R7 R7 K15 ["TreeTable"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R5 K16 ["PureComponent"]
       40 GETIMPORT                        R10 K1 [script]
       42 GETTABLEKS                       R10 R10 K4 ["Parent"]
       44 GETTABLEKS                       R10 R10 K17 ["Name"]
       46 LOADK                            R11 K18 ["ExampleTreeTable"]
       47 CONCAT                           R9 R10 R11
       48 NAMECALL                         R7 R7 K19 ["extend"]
       50 CALL                             R7 2 1
       51 NEWTABLE                         R8 0 2
       53 DUPTABLE                         R9 K22 [{["Name"] = "Name", ["Key"] = "name"}]
       54 DUPTABLE                         R10 K25 [{["Name"] = "Value", ["Key"] = "value"}]
       55 SETLIST                          R8 R9 2 [1]
       57 DUPCLOSURE                       R9 K26 [PROTO_3]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R9 R7 K27 ["init"]
       63 DUPCLOSURE                       R9 K28 [PROTO_8]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R9 R7 K29 ["render"]
       71 RETURN                           R7 1
