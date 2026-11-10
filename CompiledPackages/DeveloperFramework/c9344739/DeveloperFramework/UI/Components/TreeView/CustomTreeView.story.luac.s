PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R3 R3 K2 ["Expansion"]
        8 CALL                             R2 1 1
        9 GETTABLE                         R4 R2 R1
       10 NOT                              R3 R4
       11 SETTABLE                         R3 R2 R1
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R5 K3 [{"Expansion"}]
       14 SETTABLEKS                       R2 R5 K2 ["Expansion"]
       16 NAMECALL                         R3 R3 K4 ["setState"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["item"]
        2 DUPTABLE                         R5 K7 [{"Expanded", "OnToggle", "Key", "Position", "Row", "Size"}]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K8 ["state"]
        6 GETTABLEKS                       R7 R7 K9 ["Expansion"]
        8 GETTABLE                         R6 R7 R4
        9 SETTABLEKS                       R6 R5 K1 ["Expanded"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K10 ["onToggle"]
       14 SETTABLEKS                       R6 R5 K2 ["OnToggle"]
       16 SETTABLEKS                       R1 R5 K3 ["Key"]
       18 SETTABLEKS                       R2 R5 K4 ["Position"]
       20 SETTABLEKS                       R0 R5 K5 ["Row"]
       22 SETTABLEKS                       R3 R5 K6 ["Size"]
       24 RETURN                           R5 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Expansion", "Items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        5 NEWTABLE                         R2 0 3
        7 DUPTABLE                         R3 K6 [{["name"] = "Workspace", ["children"]}]
        8 NEWTABLE                         R4 0 1
       10 DUPTABLE                         R5 K8 [{["name"] = "Ocean", ["children"]}]
       11 NEWTABLE                         R6 0 1
       13 DUPTABLE                         R7 K10 [{["name"] = "Billy The Fish"}]
       14 SETLIST                          R6 R7 1 [1]
       16 SETTABLEKS                       R6 R5 K5 ["children"]
       18 SETLIST                          R4 R5 1 [1]
       20 SETTABLEKS                       R4 R3 K5 ["children"]
       22 DUPTABLE                         R4 K12 [{["name"] = "ReplicatedStorage", ["children"]}]
       23 NEWTABLE                         R5 0 2
       25 DUPTABLE                         R6 K14 [{["name"] = "WeatherSystem"}]
       26 DUPTABLE                         R7 K16 [{["name"] = "CloudSystem", ["children"]}]
       27 NEWTABLE                         R8 0 1
       29 DUPTABLE                         R9 K18 [{["name"] = "Cheeky Cumulus"}]
       30 SETLIST                          R8 R9 1 [1]
       32 SETTABLEKS                       R8 R7 K5 ["children"]
       34 SETLIST                          R5 R6 2 [1]
       36 SETTABLEKS                       R5 R4 K5 ["children"]
       38 DUPTABLE                         R5 K20 [{["name"] = "ServerStorage", ["children"]}]
       39 NEWTABLE                         R6 0 1
       41 DUPTABLE                         R7 K22 [{["name"] = "Secret Base", ["children"]}]
       42 NEWTABLE                         R8 0 1
       44 DUPTABLE                         R9 K24 [{["name"] = "Obsidian Door"}]
       45 SETLIST                          R8 R9 1 [1]
       47 SETTABLEKS                       R8 R7 K5 ["children"]
       49 SETLIST                          R6 R7 1 [1]
       51 SETTABLEKS                       R6 R5 K5 ["children"]
       53 SETLIST                          R2 R3 3 [1]
       55 SETTABLEKS                       R2 R1 K1 ["Items"]
       57 SETTABLEKS                       R1 R0 K25 ["state"]
       59 NEWCLOSURE                       R1 P0
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K26 ["onToggle"]
       64 NEWCLOSURE                       R1 P1
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K27 ["getRowProps"]
       68 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnToggle"]
        5 GETTABLEKS                       R2 R0 K2 ["Row"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onToggle"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Row"]
        4 GETTABLEKS                       R3 R2 K2 ["item"]
        6 GETTABLEKS                       R4 R1 K3 ["Expanded"]
        8 GETTABLEKS                       R5 R3 K4 ["children"]
       10 JUMPIFNOT                        R5 ; [+8]
       11 GETTABLEKS                       R7 R3 K4 ["children"]
       13 LENGTH                           R6 R7
       14 LOADN                            R7 0
       15 JUMPIFLT                         R7 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETTABLEKS                       R7 R2 K6 ["depth"]
       21 MULK                             R6 R7 K5 [24]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K7 ["createElement"]
       25 GETUPVAL                         R8 1
       26 DUPTABLE                         R9 K11 [{"Size", "Position", "Padding"}]
       27 GETTABLEKS                       R10 R1 K8 ["Size"]
       29 SETTABLEKS                       R10 R9 K8 ["Size"]
       31 GETTABLEKS                       R10 R1 K9 ["Position"]
       33 SETTABLEKS                       R10 R9 K9 ["Position"]
       35 DUPTABLE                         R10 K13 [{"Left"}]
       36 SETTABLEKS                       R6 R10 K12 ["Left"]
       38 SETTABLEKS                       R10 R9 K10 ["Padding"]
       40 DUPTABLE                         R10 K16 [{"Toggle", "Label"}]
       41 JUMPIFNOT                        R5 ; [+36]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K7 ["createElement"]
       45 GETUPVAL                         R12 2
       46 DUPTABLE                         R13 K19 [{"Text", "Position", "Size", "OnClick"}]
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADK                            R14 K20 ["-"]
       49 JUMP                             ; [+1]
       50 LOADK                            R14 K21 ["+"]
       51 SETTABLEKS                       R14 R13 K17 ["Text"]
       53 GETIMPORT                        R14 K24 [UDim2.new]
       55 LOADN                            R15 0
       56 LOADN                            R17 5
       57 ADD                              R16 R17 R6
       58 LOADN                            R17 0
       59 LOADN                            R18 4
       60 CALL                             R14 4 1
       61 SETTABLEKS                       R14 R13 K9 ["Position"]
       63 GETIMPORT                        R14 K24 [UDim2.new]
       65 LOADN                            R15 0
       66 LOADN                            R16 24
       67 LOADN                            R17 0
       68 LOADN                            R18 24
       69 CALL                             R14 4 1
       70 SETTABLEKS                       R14 R13 K8 ["Size"]
       72 GETTABLEKS                       R14 R0 K25 ["onToggle"]
       74 SETTABLEKS                       R14 R13 K18 ["OnClick"]
       76 CALL                             R11 2 1
       77 JUMPIF                           R11 ; [+1]
       78 LOADNIL                          R11
       79 SETTABLEKS                       R11 R10 K14 ["Toggle"]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K7 ["createElement"]
       84 GETUPVAL                         R12 3
       85 DUPTABLE                         R13 K27 [{"Text", "Size", "Position", "TextXAlignment"}]
       86 GETTABLEKS                       R14 R3 K28 ["name"]
       88 SETTABLEKS                       R14 R13 K17 ["Text"]
       90 GETIMPORT                        R14 K24 [UDim2.new]
       92 LOADN                            R15 1
       93 LOADN                            R16 -40
       94 LOADN                            R17 1
       95 LOADN                            R18 0
       96 CALL                             R14 4 1
       97 SETTABLEKS                       R14 R13 K8 ["Size"]
       99 GETIMPORT                        R14 K24 [UDim2.new]
      101 LOADN                            R15 0
      102 LOADN                            R17 40
      103 ADD                              R16 R17 R6
      104 LOADN                            R17 0
      105 LOADN                            R18 0
      106 CALL                             R14 4 1
      107 SETTABLEKS                       R14 R13 K9 ["Position"]
      109 GETIMPORT                        R14 K30 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R14 R13 K26 ["TextXAlignment"]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K15 ["Label"]
      116 CALL                             R7 3 -1
      117 RETURN                           R7 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K11 [{["Size"], ["Expansion"], ["RootItems"], ["Style"] = "BorderBox", ["RowComponent"], ["RowHeight"] = 32, ["GetRowProps"], ["GetChildren"]}]
        5 GETIMPORT                        R4 K14 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 240
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K15 ["state"]
       16 GETTABLEKS                       R4 R4 K2 ["Expansion"]
       18 SETTABLEKS                       R4 R3 K2 ["Expansion"]
       20 GETTABLEKS                       R4 R0 K15 ["state"]
       22 GETTABLEKS                       R4 R4 K16 ["Items"]
       24 SETTABLEKS                       R4 R3 K3 ["RootItems"]
       26 GETUPVAL                         R4 2
       27 SETTABLEKS                       R4 R3 K6 ["RowComponent"]
       29 GETTABLEKS                       R4 R0 K17 ["getRowProps"]
       31 SETTABLEKS                       R4 R3 K9 ["GetRowProps"]
       33 DUPCLOSURE                       R4 K18 [PROTO_6]
       34 SETTABLEKS                       R4 R3 K10 ["GetChildren"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

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
       16 GETTABLEKS                       R2 R1 K8 ["copy"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K10 ["Button"]
       32 GETTABLEKS                       R6 R4 K11 ["Pane"]
       34 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       36 GETTABLEKS                       R8 R4 K13 ["TreeView"]
       38 GETTABLEKS                       R9 R3 K14 ["PureComponent"]
       40 GETIMPORT                        R12 K1 [script]
       42 GETTABLEKS                       R12 R12 K4 ["Parent"]
       44 GETTABLEKS                       R12 R12 K15 ["Name"]
       46 LOADK                            R13 K16 ["CustomTreeView"]
       47 CONCAT                           R11 R12 R13
       48 NAMECALL                         R9 R9 K17 ["extend"]
       50 CALL                             R9 2 1
       51 DUPCLOSURE                       R10 K18 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R10 R9 K19 ["init"]
       55 GETTABLEKS                       R10 R3 K14 ["PureComponent"]
       57 LOADK                            R12 K20 ["CustomRow"]
       58 NAMECALL                         R10 R10 K17 ["extend"]
       60 CALL                             R10 2 1
       61 DUPCLOSURE                       R11 K21 [PROTO_4]
       62 SETTABLEKS                       R11 R10 K19 ["init"]
       64 DUPCLOSURE                       R11 K22 [PROTO_5]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R11 R10 K23 ["render"]
       71 DUPCLOSURE                       R11 K24 [PROTO_7]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R10
       75 SETTABLEKS                       R11 R9 K23 ["render"]
       77 DUPTABLE                         R11 K26 [{"stories"}]
       78 NEWTABLE                         R12 0 1
       80 DUPTABLE                         R13 K30 [{["name"] = "Example", ["story"]}]
       81 SETTABLEKS                       R9 R13 K29 ["story"]
       83 SETLIST                          R12 R13 1 [1]
       85 SETTABLEKS                       R12 R11 K25 ["stories"]
       87 RETURN                           R11 1
