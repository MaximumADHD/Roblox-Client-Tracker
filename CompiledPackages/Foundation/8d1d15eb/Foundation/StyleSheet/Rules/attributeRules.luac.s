PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["upper"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["upper"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["^%-?(.)"]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K3 ["%-(.)"]
        6 DUPCLOSURE                       R5 K4 [PROTO_1]
        7 NAMECALL                         R2 R1 K2 ["gsub"]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["TextSize"]
        2 DIV                              R2 R3 R1
        3 GETTABLEKS                       R4 R0 K1 ["LineHeight"]
        5 MUL                              R3 R4 R1
        6 MUL                              R5 R2 R3
        7 GETTABLEKS                       R6 R0 K0 ["TextSize"]
        9 SUB                              R4 R5 R6
       10 GETIMPORT                        R5 K4 [UDim.new]
       12 LOADN                            R6 0
       13 DIVK                             R7 R4 K5 [2]
       14 CALL                             R5 2 1
       15 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["TextSize"]
        2 DIV                              R3 R4 R1
        3 GETTABLEKS                       R5 R0 K1 ["LineHeight"]
        5 MUL                              R4 R5 R1
        6 MUL                              R6 R3 R4
        7 GETTABLEKS                       R7 R0 K0 ["TextSize"]
        9 SUB                              R5 R6 R7
       10 GETIMPORT                        R6 K4 [UDim.new]
       12 LOADN                            R7 0
       13 DIVK                             R8 R5 K5 [2]
       14 CALL                             R6 2 1
       15 MOVE                             R2 R6
       16 NEWTABLE                         R3 0 1
       18 DUPTABLE                         R4 K13 [{["tag"] = "text-size-defaults", ["priority"] = -1, ["properties"], ["children"], ["attributes"]}]
       19 DUPTABLE                         R5 K15 [{[1] = "$TextSizeBodyLarge", ["LineHeight"]}]
       20 GETTABLEKS                       R6 R0 K1 ["LineHeight"]
       22 SETTABLEKS                       R6 R5 K1 ["LineHeight"]
       24 SETTABLEKS                       R5 R4 K10 ["properties"]
       26 NEWTABLE                         R5 0 1
       28 DUPTABLE                         R6 K18 [{["tag"] = "text-size-defaults", ["pseudo"] = "UIPadding", ["priority"] = -1, ["properties"], ["attributes"]}]
       29 DUPTABLE                         R7 K22 [{["PaddingTop"] = "$TextPaddingBodyLarge", ["PaddingBottom"] = "$TextPaddingBodyLarge"}]
       30 SETTABLEKS                       R7 R6 K10 ["properties"]
       32 NEWTABLE                         R7 0 1
       34 DUPTABLE                         R8 K26 [{["name"] = "TextPaddingBodyLarge", ["value"]}]
       35 SETTABLEKS                       R2 R8 K25 ["value"]
       37 SETLIST                          R7 R8 1 [1]
       39 SETTABLEKS                       R7 R6 K12 ["attributes"]
       41 SETLIST                          R5 R6 1 [1]
       43 SETTABLEKS                       R5 R4 K11 ["children"]
       45 NEWTABLE                         R5 0 1
       47 DUPTABLE                         R6 K28 [{["name"] = "TextSizeBodyLarge", ["value"]}]
       48 GETTABLEKS                       R7 R0 K0 ["TextSize"]
       50 SETTABLEKS                       R7 R6 K25 ["value"]
       52 SETLIST                          R5 R6 1 [1]
       54 SETTABLEKS                       R5 R4 K12 ["attributes"]
       56 SETLIST                          R3 R4 1 [1]
       58 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R9 R7 K0 ["name"]
        9 CALL                             R8 1 1
       10 DUPTABLE                         R11 K6 [{["tag"], ["pseudo"] = "UIListLayout", ["properties"], ["attributes"]}]
       11 LOADK                            R13 K7 ["gap-%*"]
       12 GETTABLEKS                       R15 R7 K0 ["name"]
       14 NAMECALL                         R13 R13 K8 ["format"]
       16 CALL                             R13 2 1
       17 MOVE                             R12 R13
       18 SETTABLEKS                       R12 R11 K1 ["tag"]
       20 DUPTABLE                         R12 K10 [{"Padding"}]
       21 LOADK                            R14 K11 ["$Gap%*"]
       22 MOVE                             R16 R8
       23 NAMECALL                         R14 R14 K8 ["format"]
       25 CALL                             R14 2 1
       26 MOVE                             R13 R14
       27 SETTABLEKS                       R13 R12 K9 ["Padding"]
       29 SETTABLEKS                       R12 R11 K4 ["properties"]
       31 NEWTABLE                         R12 0 1
       33 DUPTABLE                         R13 K13 [{"name", "value"}]
       34 LOADK                            R15 K14 ["Gap%*"]
       35 MOVE                             R17 R8
       36 NAMECALL                         R15 R15 K8 ["format"]
       38 CALL                             R15 2 1
       39 MOVE                             R14 R15
       40 SETTABLEKS                       R14 R13 K0 ["name"]
       42 GETTABLEKS                       R14 R7 K15 ["size"]
       44 SETTABLEKS                       R14 R13 K12 ["value"]
       46 SETLIST                          R12 R13 1 [1]
       48 SETTABLEKS                       R12 R11 K5 ["attributes"]
       50 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       52 MOVE                             R10 R2
       53 GETIMPORT                        R9 K18 [table.insert]
       55 CALL                             R9 2 0
       56 FORGLOOP                         R3 2 ; [-51]
       58 NEWTABLE                         R3 0 0
       60 MOVE                             R4 R1
       61 LOADNIL                          R5
       62 LOADNIL                          R6
       63 FORGPREP                         R4
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R10 R8 K0 ["name"]
       67 CALL                             R9 1 1
       68 DUPTABLE                         R12 K6 [{["tag"], ["pseudo"] = "UIListLayout", ["properties"], ["attributes"]}]
       69 LOADK                            R14 K19 ["gutter-%*"]
       70 GETTABLEKS                       R16 R8 K0 ["name"]
       72 NAMECALL                         R14 R14 K8 ["format"]
       74 CALL                             R14 2 1
       75 MOVE                             R13 R14
       76 SETTABLEKS                       R13 R12 K1 ["tag"]
       78 DUPTABLE                         R13 K10 [{"Padding"}]
       79 LOADK                            R15 K20 ["$Gutter%*"]
       80 MOVE                             R17 R9
       81 NAMECALL                         R15 R15 K8 ["format"]
       83 CALL                             R15 2 1
       84 MOVE                             R14 R15
       85 SETTABLEKS                       R14 R13 K9 ["Padding"]
       87 SETTABLEKS                       R13 R12 K4 ["properties"]
       89 NEWTABLE                         R13 0 1
       91 DUPTABLE                         R14 K13 [{"name", "value"}]
       92 LOADK                            R16 K21 ["Gutter%*"]
       93 MOVE                             R18 R9
       94 NAMECALL                         R16 R16 K8 ["format"]
       96 CALL                             R16 2 1
       97 MOVE                             R15 R16
       98 SETTABLEKS                       R15 R14 K0 ["name"]
      100 GETTABLEKS                       R15 R8 K15 ["size"]
      102 SETTABLEKS                       R15 R14 K12 ["value"]
      104 SETLIST                          R13 R14 1 [1]
      106 SETTABLEKS                       R13 R12 K5 ["attributes"]
      108 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      110 MOVE                             R11 R3
      111 GETIMPORT                        R10 K18 [table.insert]
      113 CALL                             R10 2 0
      114 FORGLOOP                         R4 2 ; [-51]
      116 GETUPVAL                         R4 1
      117 GETTABLEKS                       R4 R4 K22 ["joinArrays"]
      119 MOVE                             R5 R2
      120 MOVE                             R6 R3
      121 CALL                             R4 2 -1
      122 RETURN                           R4 -1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R8 R6 K0 ["name"]
        9 CALL                             R7 1 1
       10 DUPTABLE                         R10 K6 [{["tag"], ["pseudo"] = "UICorner", ["properties"], ["attributes"]}]
       11 LOADK                            R12 K7 ["radius-%*"]
       12 GETTABLEKS                       R14 R6 K0 ["name"]
       14 NAMECALL                         R12 R12 K8 ["format"]
       16 CALL                             R12 2 1
       17 MOVE                             R11 R12
       18 SETTABLEKS                       R11 R10 K1 ["tag"]
       20 DUPTABLE                         R11 K10 [{"CornerRadius"}]
       21 LOADK                            R13 K11 ["$Radius%*"]
       22 MOVE                             R15 R7
       23 NAMECALL                         R13 R13 K8 ["format"]
       25 CALL                             R13 2 1
       26 MOVE                             R12 R13
       27 SETTABLEKS                       R12 R11 K9 ["CornerRadius"]
       29 SETTABLEKS                       R11 R10 K4 ["properties"]
       31 NEWTABLE                         R11 0 1
       33 DUPTABLE                         R12 K13 [{"name", "value"}]
       34 LOADK                            R14 K14 ["Radius%*"]
       35 MOVE                             R16 R7
       36 NAMECALL                         R14 R14 K8 ["format"]
       38 CALL                             R14 2 1
       39 MOVE                             R13 R14
       40 SETTABLEKS                       R13 R12 K0 ["name"]
       42 GETTABLEKS                       R13 R6 K15 ["size"]
       44 SETTABLEKS                       R13 R12 K12 ["value"]
       46 SETLIST                          R11 R12 1 [1]
       48 SETTABLEKS                       R11 R10 K5 ["attributes"]
       50 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       52 MOVE                             R9 R1
       53 GETIMPORT                        R8 K18 [table.insert]
       55 CALL                             R8 2 0
       56 FORGLOOP                         R2 2 ; [-51]
       58 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R8 R6 K0 ["name"]
        9 CALL                             R7 1 1
       10 DUPTABLE                         R10 K4 [{"tag", "properties", "attributes"}]
       11 LOADK                            R12 K5 ["size-%*"]
       12 GETTABLEKS                       R14 R6 K0 ["name"]
       14 NAMECALL                         R12 R12 K6 ["format"]
       16 CALL                             R12 2 1
       17 MOVE                             R11 R12
       18 SETTABLEKS                       R11 R10 K1 ["tag"]
       20 DUPTABLE                         R11 K8 [{"Size"}]
       21 LOADK                            R13 K9 ["$Size%*"]
       22 MOVE                             R15 R7
       23 NAMECALL                         R13 R13 K6 ["format"]
       25 CALL                             R13 2 1
       26 MOVE                             R12 R13
       27 SETTABLEKS                       R12 R11 K7 ["Size"]
       29 SETTABLEKS                       R11 R10 K2 ["properties"]
       31 NEWTABLE                         R11 0 1
       33 DUPTABLE                         R12 K11 [{"name", "value"}]
       34 LOADK                            R14 K12 ["Size%*"]
       35 MOVE                             R16 R7
       36 NAMECALL                         R14 R14 K6 ["format"]
       38 CALL                             R14 2 1
       39 MOVE                             R13 R14
       40 SETTABLEKS                       R13 R12 K0 ["name"]
       42 GETIMPORT                        R13 K15 [UDim2.new]
       44 GETTABLEKS                       R14 R6 K16 ["size"]
       46 GETTABLEKS                       R15 R6 K16 ["size"]
       48 CALL                             R13 2 1
       49 SETTABLEKS                       R13 R12 K10 ["value"]
       51 SETLIST                          R11 R12 1 [1]
       53 SETTABLEKS                       R11 R10 K3 ["attributes"]
       55 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       57 MOVE                             R9 R1
       58 GETIMPORT                        R8 K19 [table.insert]
       60 CALL                             R8 2 0
       61 MOVE                             R8 R0
       62 LOADNIL                          R9
       63 LOADNIL                          R10
       64 FORGPREP                         R8
       65 GETUPVAL                         R13 0
       66 GETTABLEKS                       R14 R12 K0 ["name"]
       68 CALL                             R13 1 1
       69 DUPTABLE                         R16 K4 [{"tag", "properties", "attributes"}]
       70 LOADK                            R18 K20 ["size-%*-%*"]
       71 GETTABLEKS                       R20 R6 K0 ["name"]
       73 GETTABLEKS                       R21 R12 K0 ["name"]
       75 NAMECALL                         R18 R18 K6 ["format"]
       77 CALL                             R18 3 1
       78 MOVE                             R17 R18
       79 SETTABLEKS                       R17 R16 K1 ["tag"]
       81 DUPTABLE                         R17 K8 [{"Size"}]
       82 LOADK                            R19 K21 ["$Size%*_%*"]
       83 MOVE                             R21 R7
       84 MOVE                             R22 R13
       85 NAMECALL                         R19 R19 K6 ["format"]
       87 CALL                             R19 3 1
       88 MOVE                             R18 R19
       89 SETTABLEKS                       R18 R17 K7 ["Size"]
       91 SETTABLEKS                       R17 R16 K2 ["properties"]
       93 NEWTABLE                         R17 0 1
       95 DUPTABLE                         R18 K11 [{"name", "value"}]
       96 LOADK                            R20 K22 ["Size%*_%*"]
       97 MOVE                             R22 R7
       98 MOVE                             R23 R13
       99 NAMECALL                         R20 R20 K6 ["format"]
      101 CALL                             R20 3 1
      102 MOVE                             R19 R20
      103 SETTABLEKS                       R19 R18 K0 ["name"]
      105 GETIMPORT                        R19 K15 [UDim2.new]
      107 GETTABLEKS                       R20 R6 K16 ["size"]
      109 GETTABLEKS                       R21 R12 K16 ["size"]
      111 CALL                             R19 2 1
      112 SETTABLEKS                       R19 R18 K10 ["value"]
      114 SETLIST                          R17 R18 1 [1]
      116 SETTABLEKS                       R17 R16 K3 ["attributes"]
      118 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
      120 MOVE                             R15 R1
      121 GETIMPORT                        R14 K19 [table.insert]
      123 CALL                             R14 2 0
      124 FORGLOOP                         R8 2 ; [-60]
      126 FORGLOOP                         R2 2 ; [-121]
      128 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 MOVE                             R9 R6
        8 CALL                             R8 1 1
        9 GETTABLEKS                       R11 R7 K0 ["TextSize"]
       11 DIV                              R10 R11 R1
       12 GETTABLEKS                       R12 R7 K1 ["LineHeight"]
       14 MUL                              R11 R12 R1
       15 MUL                              R13 R10 R11
       16 GETTABLEKS                       R14 R7 K0 ["TextSize"]
       18 SUB                              R12 R13 R14
       19 GETIMPORT                        R13 K4 [UDim.new]
       21 LOADN                            R14 0
       22 DIVK                             R15 R12 K5 [2]
       23 CALL                             R13 2 1
       24 MOVE                             R9 R13
       25 DUPTABLE                         R12 K10 [{"tag", "properties", "attributes", "children"}]
       26 LOADK                            R14 K11 ["text-%*"]
       27 MOVE                             R16 R6
       28 NAMECALL                         R14 R14 K12 ["format"]
       30 CALL                             R14 2 1
       31 MOVE                             R13 R14
       32 SETTABLEKS                       R13 R12 K6 ["tag"]
       34 DUPTABLE                         R13 K14 [{"Font", "TextSize", "LineHeight"}]
       35 GETTABLEKS                       R14 R7 K13 ["Font"]
       37 SETTABLEKS                       R14 R13 K13 ["Font"]
       39 LOADK                            R15 K15 ["$TextSize%*"]
       40 MOVE                             R17 R8
       41 NAMECALL                         R15 R15 K12 ["format"]
       43 CALL                             R15 2 1
       44 MOVE                             R14 R15
       45 SETTABLEKS                       R14 R13 K0 ["TextSize"]
       47 GETTABLEKS                       R14 R7 K1 ["LineHeight"]
       49 SETTABLEKS                       R14 R13 K1 ["LineHeight"]
       51 SETTABLEKS                       R13 R12 K7 ["properties"]
       53 NEWTABLE                         R13 0 1
       55 DUPTABLE                         R14 K18 [{"name", "value"}]
       56 LOADK                            R16 K19 ["TextSize%*"]
       57 MOVE                             R18 R8
       58 NAMECALL                         R16 R16 K12 ["format"]
       60 CALL                             R16 2 1
       61 MOVE                             R15 R16
       62 SETTABLEKS                       R15 R14 K16 ["name"]
       64 GETTABLEKS                       R15 R7 K0 ["TextSize"]
       66 SETTABLEKS                       R15 R14 K17 ["value"]
       68 SETLIST                          R13 R14 1 [1]
       70 SETTABLEKS                       R13 R12 K8 ["attributes"]
       72 NEWTABLE                         R13 0 1
       74 DUPTABLE                         R14 K24 [{["tag"], ["pseudo"] = "UIPadding", ["priority"] = 0, ["properties"], ["attributes"]}]
       75 LOADK                            R16 K11 ["text-%*"]
       76 MOVE                             R18 R6
       77 NAMECALL                         R16 R16 K12 ["format"]
       79 CALL                             R16 2 1
       80 MOVE                             R15 R16
       81 SETTABLEKS                       R15 R14 K6 ["tag"]
       83 DUPTABLE                         R15 K27 [{"PaddingTop", "PaddingBottom"}]
       84 LOADK                            R17 K28 ["$TextPadding%*"]
       85 MOVE                             R19 R8
       86 NAMECALL                         R17 R17 K12 ["format"]
       88 CALL                             R17 2 1
       89 MOVE                             R16 R17
       90 SETTABLEKS                       R16 R15 K25 ["PaddingTop"]
       92 LOADK                            R17 K28 ["$TextPadding%*"]
       93 MOVE                             R19 R8
       94 NAMECALL                         R17 R17 K12 ["format"]
       96 CALL                             R17 2 1
       97 MOVE                             R16 R17
       98 SETTABLEKS                       R16 R15 K26 ["PaddingBottom"]
      100 SETTABLEKS                       R15 R14 K7 ["properties"]
      102 NEWTABLE                         R15 0 1
      104 DUPTABLE                         R16 K18 [{"name", "value"}]
      105 LOADK                            R18 K29 ["TextPadding%*"]
      106 MOVE                             R20 R8
      107 NAMECALL                         R18 R18 K12 ["format"]
      109 CALL                             R18 2 1
      110 MOVE                             R17 R18
      111 SETTABLEKS                       R17 R16 K16 ["name"]
      113 SETTABLEKS                       R9 R16 K17 ["value"]
      115 SETLIST                          R15 R16 1 [1]
      117 SETTABLEKS                       R15 R14 K8 ["attributes"]
      119 SETLIST                          R13 R14 1 [1]
      121 SETTABLEKS                       R13 R12 K9 ["children"]
      123 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      125 MOVE                             R11 R2
      126 GETIMPORT                        R10 K32 [table.insert]
      128 CALL                             R10 2 0
      129 FORGLOOP                         R3 2 ; [-124]
      131 RETURN                           R2 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 DUPTABLE                         R3 K6 [{"x", "y", "top", "bottom", "left", "right"}]
        3 NEWTABLE                         R4 0 2
        5 LOADK                            R5 K7 ["PaddingLeft"]
        6 LOADK                            R6 K8 ["PaddingRight"]
        7 SETLIST                          R4 R5 2 [1]
        9 SETTABLEKS                       R4 R3 K0 ["x"]
       11 NEWTABLE                         R4 0 2
       13 LOADK                            R5 K9 ["PaddingTop"]
       14 LOADK                            R6 K10 ["PaddingBottom"]
       15 SETLIST                          R4 R5 2 [1]
       17 SETTABLEKS                       R4 R3 K1 ["y"]
       19 NEWTABLE                         R4 0 1
       21 LOADK                            R5 K9 ["PaddingTop"]
       22 SETLIST                          R4 R5 1 [1]
       24 SETTABLEKS                       R4 R3 K2 ["top"]
       26 NEWTABLE                         R4 0 1
       28 LOADK                            R5 K10 ["PaddingBottom"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K3 ["bottom"]
       33 NEWTABLE                         R4 0 1
       35 LOADK                            R5 K7 ["PaddingLeft"]
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K4 ["left"]
       40 NEWTABLE                         R4 0 1
       42 LOADK                            R5 K8 ["PaddingRight"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K5 ["right"]
       47 MOVE                             R4 R0
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R10 R8 K11 ["name"]
       54 CALL                             R9 1 1
       55 DUPTABLE                         R12 K17 [{["tag"], ["pseudo"] = "UIPadding", ["properties"], ["attributes"]}]
       56 LOADK                            R14 K18 ["padding-%*"]
       57 GETTABLEKS                       R16 R8 K11 ["name"]
       59 NAMECALL                         R14 R14 K19 ["format"]
       61 CALL                             R14 2 1
       62 MOVE                             R13 R14
       63 SETTABLEKS                       R13 R12 K12 ["tag"]
       65 DUPTABLE                         R13 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       66 LOADK                            R15 K21 ["$Padding%*"]
       67 MOVE                             R17 R9
       68 NAMECALL                         R15 R15 K19 ["format"]
       70 CALL                             R15 2 1
       71 MOVE                             R14 R15
       72 SETTABLEKS                       R14 R13 K9 ["PaddingTop"]
       74 LOADK                            R15 K21 ["$Padding%*"]
       75 MOVE                             R17 R9
       76 NAMECALL                         R15 R15 K19 ["format"]
       78 CALL                             R15 2 1
       79 MOVE                             R14 R15
       80 SETTABLEKS                       R14 R13 K10 ["PaddingBottom"]
       82 LOADK                            R15 K21 ["$Padding%*"]
       83 MOVE                             R17 R9
       84 NAMECALL                         R15 R15 K19 ["format"]
       86 CALL                             R15 2 1
       87 MOVE                             R14 R15
       88 SETTABLEKS                       R14 R13 K7 ["PaddingLeft"]
       90 LOADK                            R15 K21 ["$Padding%*"]
       91 MOVE                             R17 R9
       92 NAMECALL                         R15 R15 K19 ["format"]
       94 CALL                             R15 2 1
       95 MOVE                             R14 R15
       96 SETTABLEKS                       R14 R13 K8 ["PaddingRight"]
       98 SETTABLEKS                       R13 R12 K15 ["properties"]
      100 NEWTABLE                         R13 0 1
      102 DUPTABLE                         R14 K23 [{"name", "value"}]
      103 LOADK                            R16 K24 ["Padding%*"]
      104 MOVE                             R18 R9
      105 NAMECALL                         R16 R16 K19 ["format"]
      107 CALL                             R16 2 1
      108 MOVE                             R15 R16
      109 SETTABLEKS                       R15 R14 K11 ["name"]
      111 GETTABLEKS                       R15 R8 K25 ["size"]
      113 SETTABLEKS                       R15 R14 K22 ["value"]
      115 SETLIST                          R13 R14 1 [1]
      117 SETTABLEKS                       R13 R12 K16 ["attributes"]
      119 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      121 MOVE                             R11 R2
      122 GETIMPORT                        R10 K28 [table.insert]
      124 CALL                             R10 2 0
      125 FORGLOOP                         R4 2 ; [-75]
      127 MOVE                             R4 R1
      128 LOADNIL                          R5
      129 LOADNIL                          R6
      130 FORGPREP                         R4
      131 GETUPVAL                         R9 0
      132 GETTABLEKS                       R10 R8 K11 ["name"]
      134 CALL                             R9 1 1
      135 DUPTABLE                         R12 K17 [{["tag"], ["pseudo"] = "UIPadding", ["properties"], ["attributes"]}]
      136 LOADK                            R14 K29 ["margin-%*"]
      137 GETTABLEKS                       R16 R8 K11 ["name"]
      139 NAMECALL                         R14 R14 K19 ["format"]
      141 CALL                             R14 2 1
      142 MOVE                             R13 R14
      143 SETTABLEKS                       R13 R12 K12 ["tag"]
      145 DUPTABLE                         R13 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      146 LOADK                            R15 K30 ["$Margin%*"]
      147 MOVE                             R17 R9
      148 NAMECALL                         R15 R15 K19 ["format"]
      150 CALL                             R15 2 1
      151 MOVE                             R14 R15
      152 SETTABLEKS                       R14 R13 K9 ["PaddingTop"]
      154 LOADK                            R15 K30 ["$Margin%*"]
      155 MOVE                             R17 R9
      156 NAMECALL                         R15 R15 K19 ["format"]
      158 CALL                             R15 2 1
      159 MOVE                             R14 R15
      160 SETTABLEKS                       R14 R13 K10 ["PaddingBottom"]
      162 LOADK                            R15 K30 ["$Margin%*"]
      163 MOVE                             R17 R9
      164 NAMECALL                         R15 R15 K19 ["format"]
      166 CALL                             R15 2 1
      167 MOVE                             R14 R15
      168 SETTABLEKS                       R14 R13 K7 ["PaddingLeft"]
      170 LOADK                            R15 K30 ["$Margin%*"]
      171 MOVE                             R17 R9
      172 NAMECALL                         R15 R15 K19 ["format"]
      174 CALL                             R15 2 1
      175 MOVE                             R14 R15
      176 SETTABLEKS                       R14 R13 K8 ["PaddingRight"]
      178 SETTABLEKS                       R13 R12 K15 ["properties"]
      180 NEWTABLE                         R13 0 1
      182 DUPTABLE                         R14 K23 [{"name", "value"}]
      183 LOADK                            R16 K31 ["Margin%*"]
      184 MOVE                             R18 R9
      185 NAMECALL                         R16 R16 K19 ["format"]
      187 CALL                             R16 2 1
      188 MOVE                             R15 R16
      189 SETTABLEKS                       R15 R14 K11 ["name"]
      191 GETTABLEKS                       R15 R8 K25 ["size"]
      193 SETTABLEKS                       R15 R14 K22 ["value"]
      195 SETLIST                          R13 R14 1 [1]
      197 SETTABLEKS                       R13 R12 K16 ["attributes"]
      199 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      201 MOVE                             R11 R2
      202 GETIMPORT                        R10 K28 [table.insert]
      204 CALL                             R10 2 0
      205 FORGLOOP                         R4 2 ; [-75]
      207 MOVE                             R4 R3
      208 LOADNIL                          R5
      209 LOADNIL                          R6
      210 FORGPREP                         R4
      211 MOVE                             R9 R0
      212 LOADNIL                          R10
      213 LOADNIL                          R11
      214 FORGPREP                         R9
      215 GETUPVAL                         R14 0
      216 GETTABLEKS                       R15 R13 K11 ["name"]
      218 CALL                             R14 1 1
      219 NEWTABLE                         R15 0 0
      221 MOVE                             R16 R8
      222 LOADNIL                          R17
      223 LOADNIL                          R18
      224 FORGPREP                         R16
      225 LOADK                            R22 K21 ["$Padding%*"]
      226 MOVE                             R24 R14
      227 NAMECALL                         R22 R22 K19 ["format"]
      229 CALL                             R22 2 1
      230 MOVE                             R21 R22
      231 SETTABLE                         R21 R15 R20
      232 FORGLOOP                         R16 2 ; [-8]
      234 DUPTABLE                         R18 K17 [{["tag"], ["pseudo"] = "UIPadding", ["properties"], ["attributes"]}]
      235 LOADK                            R20 K32 ["padding-%*-%*"]
      236 MOVE                             R22 R7
      237 GETTABLEKS                       R23 R13 K11 ["name"]
      239 NAMECALL                         R20 R20 K19 ["format"]
      241 CALL                             R20 3 1
      242 MOVE                             R19 R20
      243 SETTABLEKS                       R19 R18 K12 ["tag"]
      245 SETTABLEKS                       R15 R18 K15 ["properties"]
      247 NEWTABLE                         R19 0 1
      249 DUPTABLE                         R20 K23 [{"name", "value"}]
      250 LOADK                            R22 K24 ["Padding%*"]
      251 MOVE                             R24 R14
      252 NAMECALL                         R22 R22 K19 ["format"]
      254 CALL                             R22 2 1
      255 MOVE                             R21 R22
      256 SETTABLEKS                       R21 R20 K11 ["name"]
      258 GETTABLEKS                       R21 R13 K25 ["size"]
      260 SETTABLEKS                       R21 R20 K22 ["value"]
      262 SETLIST                          R19 R20 1 [1]
      264 SETTABLEKS                       R19 R18 K16 ["attributes"]
      266 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      268 MOVE                             R17 R2
      269 GETIMPORT                        R16 K28 [table.insert]
      271 CALL                             R16 2 0
      272 FORGLOOP                         R9 2 ; [-58]
      274 MOVE                             R9 R1
      275 LOADNIL                          R10
      276 LOADNIL                          R11
      277 FORGPREP                         R9
      278 GETUPVAL                         R14 0
      279 GETTABLEKS                       R15 R13 K11 ["name"]
      281 CALL                             R14 1 1
      282 NEWTABLE                         R15 0 0
      284 MOVE                             R16 R8
      285 LOADNIL                          R17
      286 LOADNIL                          R18
      287 FORGPREP                         R16
      288 LOADK                            R22 K30 ["$Margin%*"]
      289 MOVE                             R24 R14
      290 NAMECALL                         R22 R22 K19 ["format"]
      292 CALL                             R22 2 1
      293 MOVE                             R21 R22
      294 SETTABLE                         R21 R15 R20
      295 FORGLOOP                         R16 2 ; [-8]
      297 DUPTABLE                         R18 K17 [{["tag"], ["pseudo"] = "UIPadding", ["properties"], ["attributes"]}]
      298 LOADK                            R20 K33 ["margin-%*-%*"]
      299 MOVE                             R22 R7
      300 GETTABLEKS                       R23 R13 K11 ["name"]
      302 NAMECALL                         R20 R20 K19 ["format"]
      304 CALL                             R20 3 1
      305 MOVE                             R19 R20
      306 SETTABLEKS                       R19 R18 K12 ["tag"]
      308 SETTABLEKS                       R15 R18 K15 ["properties"]
      310 NEWTABLE                         R19 0 1
      312 DUPTABLE                         R20 K23 [{"name", "value"}]
      313 LOADK                            R22 K31 ["Margin%*"]
      314 MOVE                             R24 R14
      315 NAMECALL                         R22 R22 K19 ["format"]
      317 CALL                             R22 2 1
      318 MOVE                             R21 R22
      319 SETTABLEKS                       R21 R20 K11 ["name"]
      321 GETTABLEKS                       R21 R13 K25 ["size"]
      323 SETTABLEKS                       R21 R20 K22 ["value"]
      325 SETLIST                          R19 R20 1 [1]
      327 SETTABLEKS                       R19 R18 K16 ["attributes"]
      329 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      331 MOVE                             R17 R2
      332 GETIMPORT                        R16 K28 [table.insert]
      334 CALL                             R16 2 0
      335 FORGLOOP                         R9 2 ; [-58]
      337 FORGLOOP                         R4 2 ; [-127]
      339 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["gaps"]
        2 GETTABLEKS                       R3 R1 K1 ["gutters"]
        4 GETTABLEKS                       R4 R1 K2 ["radii"]
        6 GETTABLEKS                       R5 R1 K3 ["sizes"]
        8 GETTABLEKS                       R6 R1 K4 ["strokes"]
       10 GETTABLEKS                       R7 R1 K5 ["typography"]
       12 GETTABLEKS                       R8 R1 K6 ["paddings"]
       14 GETTABLEKS                       R9 R1 K7 ["margins"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K8 ["rulesGenerator"]
       19 MOVE                             R11 R0
       20 MOVE                             R12 R1
       21 CALL                             R10 2 3
       22 GETUPVAL                         R13 1
       23 GETTABLEKS                       R13 R13 K9 ["joinArrays"]
       25 GETUPVAL                         R14 2
       26 GETTABLEKS                       R15 R7 K10 ["body-large"]
       28 GETTABLEKS                       R16 R0 K11 ["Config"]
       30 GETTABLEKS                       R16 R16 K12 ["Text"]
       32 GETTABLEKS                       R16 R16 K13 ["NominalScale"]
       34 CALL                             R14 2 1
       35 GETUPVAL                         R15 0
       36 GETTABLEKS                       R15 R15 K14 ["rules"]
       38 GETTABLEKS                       R15 R15 K15 ["ListLayoutRules"]
       40 CALL                             R15 0 1
       41 GETUPVAL                         R16 0
       42 GETTABLEKS                       R16 R16 K14 ["rules"]
       44 GETTABLEKS                       R16 R16 K16 ["ListLayoutSpacingRules"]
       46 MOVE                             R17 R2
       47 MOVE                             R18 R3
       48 CALL                             R16 2 1
       49 GETUPVAL                         R17 3
       50 MOVE                             R18 R4
       51 CALL                             R17 1 1
       52 GETUPVAL                         R18 4
       53 MOVE                             R19 R5
       54 CALL                             R18 1 1
       55 GETUPVAL                         R19 0
       56 GETTABLEKS                       R19 R19 K14 ["rules"]
       58 GETTABLEKS                       R19 R19 K17 ["StrokeSizeRules"]
       60 MOVE                             R20 R6
       61 CALL                             R19 1 1
       62 GETUPVAL                         R20 5
       63 MOVE                             R21 R7
       64 GETTABLEKS                       R22 R0 K11 ["Config"]
       66 GETTABLEKS                       R22 R22 K12 ["Text"]
       68 GETTABLEKS                       R22 R22 K13 ["NominalScale"]
       70 CALL                             R20 2 1
       71 GETUPVAL                         R21 6
       72 MOVE                             R22 R8
       73 MOVE                             R23 R9
       74 CALL                             R21 2 1
       75 CALL                             R13 8 1
       76 MOVE                             R14 R10
       77 MOVE                             R15 R13
       78 MOVE                             R16 R12
       79 RETURN                           R14 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["Tokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K12 ["staticRules"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K13 [PROTO_2]
       42 DUPCLOSURE                       R7 K14 [PROTO_3]
       43 DUPCLOSURE                       R8 K15 [PROTO_4]
       44 DUPCLOSURE                       R9 K16 [PROTO_5]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R10 K17 [PROTO_6]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R11 K18 [PROTO_7]
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R12 K19 [PROTO_8]
       52 CAPTURE                          VAL R6
       53 DUPCLOSURE                       R13 K20 [PROTO_9]
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R14 K21 [PROTO_10]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R13
       63 DUPTABLE                         R15 K24 [{"rulesGenerator", "rules"}]
       64 SETTABLEKS                       R14 R15 K22 ["rulesGenerator"]
       66 DUPTABLE                         R16 K31 [{"DefaultSizeRules", "ListLayoutSpacingRules", "CornerRules", "SizeRules", "TypographyRules", "PaddingRules"}]
       67 SETTABLEKS                       R8 R16 K25 ["DefaultSizeRules"]
       69 SETTABLEKS                       R9 R16 K26 ["ListLayoutSpacingRules"]
       71 SETTABLEKS                       R10 R16 K27 ["CornerRules"]
       73 SETTABLEKS                       R11 R16 K28 ["SizeRules"]
       75 SETTABLEKS                       R12 R16 K29 ["TypographyRules"]
       77 SETTABLEKS                       R13 R16 K30 ["PaddingRules"]
       79 SETTABLEKS                       R16 R15 K23 ["rules"]
       81 RETURN                           R15 1
