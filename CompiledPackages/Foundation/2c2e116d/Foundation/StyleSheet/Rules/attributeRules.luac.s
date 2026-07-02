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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 CALL                             R1 1 1
        4 DUPTABLE                         R2 K3 [{"cornerValue", "attributes"}]
        5 LOADK                            R4 K4 ["$Radius%*"]
        6 MOVE                             R6 R1
        7 NAMECALL                         R4 R4 K5 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 SETTABLEKS                       R3 R2 K1 ["cornerValue"]
       13 NEWTABLE                         R3 0 1
       15 DUPTABLE                         R4 K7 [{"name", "value"}]
       16 LOADK                            R6 K8 ["Radius%*"]
       17 MOVE                             R8 R1
       18 NAMECALL                         R6 R6 K5 ["format"]
       20 CALL                             R6 2 1
       21 MOVE                             R5 R6
       22 SETTABLEKS                       R5 R4 K0 ["name"]
       24 GETTABLEKS                       R5 R0 K9 ["size"]
       26 SETTABLEKS                       R5 R4 K6 ["value"]
       28 SETLIST                          R3 R4 1 [1]
       30 SETTABLEKS                       R3 R2 K2 ["attributes"]
       32 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_6]
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
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

PROTO_9:
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
       35 LOADK                            R15 K15 ["$Font%*"]
       36 MOVE                             R17 R8
       37 NAMECALL                         R15 R15 K12 ["format"]
       39 CALL                             R15 2 1
       40 MOVE                             R14 R15
       41 SETTABLEKS                       R14 R13 K13 ["Font"]
       43 LOADK                            R15 K16 ["$TextSize%*"]
       44 MOVE                             R17 R8
       45 NAMECALL                         R15 R15 K12 ["format"]
       47 CALL                             R15 2 1
       48 MOVE                             R14 R15
       49 SETTABLEKS                       R14 R13 K0 ["TextSize"]
       51 GETTABLEKS                       R14 R7 K1 ["LineHeight"]
       53 SETTABLEKS                       R14 R13 K1 ["LineHeight"]
       55 SETTABLEKS                       R13 R12 K7 ["properties"]
       57 NEWTABLE                         R13 0 2
       59 DUPTABLE                         R14 K19 [{"name", "value"}]
       60 LOADK                            R16 K20 ["Font%*"]
       61 MOVE                             R18 R8
       62 NAMECALL                         R16 R16 K12 ["format"]
       64 CALL                             R16 2 1
       65 MOVE                             R15 R16
       66 SETTABLEKS                       R15 R14 K17 ["name"]
       68 GETTABLEKS                       R15 R7 K13 ["Font"]
       70 SETTABLEKS                       R15 R14 K18 ["value"]
       72 DUPTABLE                         R15 K19 [{"name", "value"}]
       73 LOADK                            R17 K21 ["TextSize%*"]
       74 MOVE                             R19 R8
       75 NAMECALL                         R17 R17 K12 ["format"]
       77 CALL                             R17 2 1
       78 MOVE                             R16 R17
       79 SETTABLEKS                       R16 R15 K17 ["name"]
       81 GETTABLEKS                       R16 R7 K0 ["TextSize"]
       83 SETTABLEKS                       R16 R15 K18 ["value"]
       85 SETLIST                          R13 R14 2 [1]
       87 SETTABLEKS                       R13 R12 K8 ["attributes"]
       89 NEWTABLE                         R13 0 1
       91 DUPTABLE                         R14 K26 [{["tag"], ["pseudo"] = "UIPadding", ["priority"] = 0, ["properties"], ["attributes"]}]
       92 LOADK                            R16 K11 ["text-%*"]
       93 MOVE                             R18 R6
       94 NAMECALL                         R16 R16 K12 ["format"]
       96 CALL                             R16 2 1
       97 MOVE                             R15 R16
       98 SETTABLEKS                       R15 R14 K6 ["tag"]
      100 DUPTABLE                         R15 K29 [{"PaddingTop", "PaddingBottom"}]
      101 LOADK                            R17 K30 ["$TextPadding%*"]
      102 MOVE                             R19 R8
      103 NAMECALL                         R17 R17 K12 ["format"]
      105 CALL                             R17 2 1
      106 MOVE                             R16 R17
      107 SETTABLEKS                       R16 R15 K27 ["PaddingTop"]
      109 LOADK                            R17 K30 ["$TextPadding%*"]
      110 MOVE                             R19 R8
      111 NAMECALL                         R17 R17 K12 ["format"]
      113 CALL                             R17 2 1
      114 MOVE                             R16 R17
      115 SETTABLEKS                       R16 R15 K28 ["PaddingBottom"]
      117 SETTABLEKS                       R15 R14 K7 ["properties"]
      119 NEWTABLE                         R15 0 1
      121 DUPTABLE                         R16 K19 [{"name", "value"}]
      122 LOADK                            R18 K31 ["TextPadding%*"]
      123 MOVE                             R20 R8
      124 NAMECALL                         R18 R18 K12 ["format"]
      126 CALL                             R18 2 1
      127 MOVE                             R17 R18
      128 SETTABLEKS                       R17 R16 K17 ["name"]
      130 SETTABLEKS                       R9 R16 K18 ["value"]
      132 SETLIST                          R15 R16 1 [1]
      134 SETTABLEKS                       R15 R14 K8 ["attributes"]
      136 SETLIST                          R13 R14 1 [1]
      138 SETTABLEKS                       R13 R12 K9 ["children"]
      140 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      142 MOVE                             R11 R2
      143 GETIMPORT                        R10 K34 [table.insert]
      145 CALL                             R10 2 0
      146 FORGLOOP                         R3 2 ; [-141]
      148 RETURN                           R2 1

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Typography"]
        2 GETTABLEKS                       R1 R1 K1 ["BodyLarge"]
        4 GETTABLEKS                       R1 R1 K2 ["Font"]
        6 NEWTABLE                         R2 0 2
        8 DUPTABLE                         R3 K8 [{["tag"] = "gui-object-defaults", ["priority"] = -1, ["properties"]}]
        9 DUPTABLE                         R4 K11 [{["BackgroundTransparency"] = 1}]
       10 SETTABLEKS                       R4 R3 K7 ["properties"]
       12 DUPTABLE                         R4 K14 [{["tag"] = "text-defaults", ["priority"] = -1, ["properties"], ["attributes"]}]
       13 DUPTABLE                         R5 K16 [{["Font"] = "$FontBodyLarge"}]
       14 SETTABLEKS                       R5 R4 K7 ["properties"]
       16 NEWTABLE                         R5 0 1
       18 DUPTABLE                         R6 K20 [{["name"] = "FontBodyLarge", ["value"]}]
       19 SETTABLEKS                       R1 R6 K19 ["value"]
       21 SETLIST                          R5 R6 1 [1]
       23 SETTABLEKS                       R5 R4 K13 ["attributes"]
       25 SETLIST                          R2 R3 2 [1]
       27 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Content"]
        4 GETTABLEKS                       R1 R1 K2 ["Default"]
        6 GETTABLEKS                       R1 R1 K3 ["Color3"]
        8 GETTABLEKS                       R2 R0 K0 ["Color"]
       10 GETTABLEKS                       R2 R2 K1 ["Content"]
       12 GETTABLEKS                       R2 R2 K2 ["Default"]
       14 GETTABLEKS                       R2 R2 K4 ["Transparency"]
       16 NEWTABLE                         R3 0 1
       18 DUPTABLE                         R4 K11 [{["tag"] = "text-color-defaults", ["priority"] = -1, ["properties"], ["attributes"]}]
       19 DUPTABLE                         R5 K16 [{["TextColor3"] = "$ColorContentDefaultColor3", ["TextTransparency"] = "$ColorContentDefaultTransparency"}]
       20 SETTABLEKS                       R5 R4 K9 ["properties"]
       22 NEWTABLE                         R5 0 2
       24 DUPTABLE                         R6 K20 [{["name"] = "ColorContentDefaultColor3", ["value"]}]
       25 SETTABLEKS                       R1 R6 K19 ["value"]
       27 DUPTABLE                         R7 K22 [{["name"] = "ColorContentDefaultTransparency", ["value"]}]
       28 SETTABLEKS                       R2 R7 K19 ["value"]
       30 SETLIST                          R5 R6 2 [1]
       32 SETTABLEKS                       R5 R4 K10 ["attributes"]
       34 SETLIST                          R3 R4 1 [1]
       36 RETURN                           R3 1

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.find]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R6
       10 LOADK                            R10 K3 ["bg"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+80]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETUPVAL                         R13 1
       18 MOVE                             R14 R6
       19 MOVE                             R15 R11
       20 CALL                             R13 2 1
       21 DUPTABLE                         R16 K7 [{"tag", "properties", "attributes"}]
       22 LOADK                            R18 K8 ["bg-%*"]
       23 MOVE                             R20 R11
       24 NAMECALL                         R18 R18 K9 ["format"]
       26 CALL                             R18 2 1
       27 MOVE                             R17 R18
       28 SETTABLEKS                       R17 R16 K4 ["tag"]
       30 DUPTABLE                         R17 K12 [{"BackgroundColor3", "BackgroundTransparency"}]
       31 LOADK                            R19 K13 ["$Color%*%*Color3"]
       32 MOVE                             R21 R6
       33 MOVE                             R22 R13
       34 NAMECALL                         R19 R19 K9 ["format"]
       36 CALL                             R19 3 1
       37 MOVE                             R18 R19
       38 SETTABLEKS                       R18 R17 K10 ["BackgroundColor3"]
       40 LOADK                            R19 K14 ["$Color%*%*Transparency"]
       41 MOVE                             R21 R6
       42 MOVE                             R22 R13
       43 NAMECALL                         R19 R19 K9 ["format"]
       45 CALL                             R19 3 1
       46 MOVE                             R18 R19
       47 SETTABLEKS                       R18 R17 K11 ["BackgroundTransparency"]
       49 SETTABLEKS                       R17 R16 K5 ["properties"]
       51 NEWTABLE                         R17 0 2
       53 DUPTABLE                         R18 K17 [{"name", "value"}]
       54 LOADK                            R20 K18 ["Color%*%*Color3"]
       55 MOVE                             R22 R6
       56 MOVE                             R23 R13
       57 NAMECALL                         R20 R20 K9 ["format"]
       59 CALL                             R20 3 1
       60 MOVE                             R19 R20
       61 SETTABLEKS                       R19 R18 K15 ["name"]
       63 GETTABLEKS                       R19 R12 K19 ["Color3"]
       65 SETTABLEKS                       R19 R18 K16 ["value"]
       67 DUPTABLE                         R19 K17 [{"name", "value"}]
       68 LOADK                            R21 K20 ["Color%*%*Transparency"]
       69 MOVE                             R23 R6
       70 MOVE                             R24 R13
       71 NAMECALL                         R21 R21 K9 ["format"]
       73 CALL                             R21 3 1
       74 MOVE                             R20 R21
       75 SETTABLEKS                       R20 R19 K15 ["name"]
       77 GETTABLEKS                       R20 R12 K21 ["Transparency"]
       79 SETTABLEKS                       R20 R19 K16 ["value"]
       81 SETLIST                          R17 R18 2 [1]
       83 SETTABLEKS                       R17 R16 K6 ["attributes"]
       85 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
       87 MOVE                             R15 R2
       88 GETIMPORT                        R14 K23 [table.insert]
       90 CALL                             R14 2 0
       91 FORGLOOP                         R8 2 ; [-75]
       93 FORGLOOP                         R3 2 ; [-88]
       95 MOVE                             R3 R1
       96 LOADNIL                          R4
       97 LOADNIL                          R5
       98 FORGPREP                         R3
       99 GETUPVAL                         R8 2
      100 MOVE                             R9 R6
      101 CALL                             R8 1 1
      102 DUPTABLE                         R11 K7 [{"tag", "properties", "attributes"}]
      103 LOADK                            R13 K8 ["bg-%*"]
      104 MOVE                             R15 R6
      105 NAMECALL                         R13 R13 K9 ["format"]
      107 CALL                             R13 2 1
      108 MOVE                             R12 R13
      109 SETTABLEKS                       R12 R11 K4 ["tag"]
      111 DUPTABLE                         R12 K12 [{"BackgroundColor3", "BackgroundTransparency"}]
      112 LOADK                            R14 K24 ["$Color%*BackgroundColor3"]
      113 MOVE                             R16 R8
      114 NAMECALL                         R14 R14 K9 ["format"]
      116 CALL                             R14 2 1
      117 MOVE                             R13 R14
      118 SETTABLEKS                       R13 R12 K10 ["BackgroundColor3"]
      120 LOADK                            R14 K25 ["$Color%*BackgroundTransparency"]
      121 MOVE                             R16 R8
      122 NAMECALL                         R14 R14 K9 ["format"]
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
      128 SETTABLEKS                       R12 R11 K5 ["properties"]
      130 NEWTABLE                         R12 0 2
      132 DUPTABLE                         R13 K17 [{"name", "value"}]
      133 LOADK                            R15 K26 ["Color%*BackgroundColor3"]
      134 MOVE                             R17 R8
      135 NAMECALL                         R15 R15 K9 ["format"]
      137 CALL                             R15 2 1
      138 MOVE                             R14 R15
      139 SETTABLEKS                       R14 R13 K15 ["name"]
      141 GETTABLEKS                       R14 R7 K27 ["Background"]
      143 GETTABLEKS                       R14 R14 K19 ["Color3"]
      145 SETTABLEKS                       R14 R13 K16 ["value"]
      147 DUPTABLE                         R14 K17 [{"name", "value"}]
      148 LOADK                            R16 K28 ["Color%*BackgroundTransparency"]
      149 MOVE                             R18 R8
      150 NAMECALL                         R16 R16 K9 ["format"]
      152 CALL                             R16 2 1
      153 MOVE                             R15 R16
      154 SETTABLEKS                       R15 R14 K15 ["name"]
      156 GETTABLEKS                       R15 R7 K27 ["Background"]
      158 GETTABLEKS                       R15 R15 K21 ["Transparency"]
      160 SETTABLEKS                       R15 R14 K16 ["value"]
      162 SETLIST                          R12 R13 2 [1]
      164 SETTABLEKS                       R12 R11 K6 ["attributes"]
      166 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      168 MOVE                             R10 R2
      169 GETIMPORT                        R9 K23 [table.insert]
      171 CALL                             R9 2 0
      172 FORGLOOP                         R3 2 ; [-74]
      174 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 JUMPIFEQKS                       R7 K1 ["none"] ; [+51]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R8 R6 K0 ["name"]
       13 CALL                             R7 1 1
       14 DUPTABLE                         R10 K7 [{["tag"], ["pseudo"] = "UIStroke", ["properties"], ["attributes"]}]
       15 LOADK                            R12 K8 ["stroke-%*"]
       16 GETTABLEKS                       R14 R6 K0 ["name"]
       18 NAMECALL                         R12 R12 K9 ["format"]
       20 CALL                             R12 2 1
       21 MOVE                             R11 R12
       22 SETTABLEKS                       R11 R10 K2 ["tag"]
       24 DUPTABLE                         R11 K11 [{"Thickness"}]
       25 LOADK                            R13 K12 ["$StrokeThickness%*"]
       26 MOVE                             R15 R7
       27 NAMECALL                         R13 R13 K9 ["format"]
       29 CALL                             R13 2 1
       30 MOVE                             R12 R13
       31 SETTABLEKS                       R12 R11 K10 ["Thickness"]
       33 SETTABLEKS                       R11 R10 K5 ["properties"]
       35 NEWTABLE                         R11 0 1
       37 DUPTABLE                         R12 K14 [{"name", "value"}]
       38 LOADK                            R14 K15 ["StrokeThickness%*"]
       39 MOVE                             R16 R7
       40 NAMECALL                         R14 R14 K9 ["format"]
       42 CALL                             R14 2 1
       43 MOVE                             R13 R14
       44 SETTABLEKS                       R13 R12 K0 ["name"]
       46 GETTABLEKS                       R13 R6 K16 ["size"]
       48 SETTABLEKS                       R13 R12 K13 ["value"]
       50 SETLIST                          R11 R12 1 [1]
       52 SETTABLEKS                       R11 R10 K6 ["attributes"]
       54 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       56 MOVE                             R9 R1
       57 GETIMPORT                        R8 K19 [table.insert]
       59 CALL                             R8 2 0
       60 FORGLOOP                         R2 2 ; [-55]
       62 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.find]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R6
       10 LOADK                            R10 K3 ["stroke"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+80]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETUPVAL                         R13 1
       18 MOVE                             R14 R6
       19 MOVE                             R15 R11
       20 CALL                             R13 2 1
       21 DUPTABLE                         R16 K9 [{["tag"], ["pseudo"] = "UIStroke", ["properties"], ["attributes"]}]
       22 LOADK                            R18 K10 ["stroke-%*"]
       23 MOVE                             R20 R11
       24 NAMECALL                         R18 R18 K11 ["format"]
       26 CALL                             R18 2 1
       27 MOVE                             R17 R18
       28 SETTABLEKS                       R17 R16 K4 ["tag"]
       30 DUPTABLE                         R17 K14 [{"Color", "Transparency"}]
       31 LOADK                            R19 K15 ["$Color%*%*Color3"]
       32 MOVE                             R21 R6
       33 MOVE                             R22 R13
       34 NAMECALL                         R19 R19 K11 ["format"]
       36 CALL                             R19 3 1
       37 MOVE                             R18 R19
       38 SETTABLEKS                       R18 R17 K12 ["Color"]
       40 LOADK                            R19 K16 ["$Color%*%*Transparency"]
       41 MOVE                             R21 R6
       42 MOVE                             R22 R13
       43 NAMECALL                         R19 R19 K11 ["format"]
       45 CALL                             R19 3 1
       46 MOVE                             R18 R19
       47 SETTABLEKS                       R18 R17 K13 ["Transparency"]
       49 SETTABLEKS                       R17 R16 K7 ["properties"]
       51 NEWTABLE                         R17 0 2
       53 DUPTABLE                         R18 K19 [{"name", "value"}]
       54 LOADK                            R20 K20 ["Color%*%*Color3"]
       55 MOVE                             R22 R6
       56 MOVE                             R23 R13
       57 NAMECALL                         R20 R20 K11 ["format"]
       59 CALL                             R20 3 1
       60 MOVE                             R19 R20
       61 SETTABLEKS                       R19 R18 K17 ["name"]
       63 GETTABLEKS                       R19 R12 K21 ["Color3"]
       65 SETTABLEKS                       R19 R18 K18 ["value"]
       67 DUPTABLE                         R19 K19 [{"name", "value"}]
       68 LOADK                            R21 K22 ["Color%*%*Transparency"]
       69 MOVE                             R23 R6
       70 MOVE                             R24 R13
       71 NAMECALL                         R21 R21 K11 ["format"]
       73 CALL                             R21 3 1
       74 MOVE                             R20 R21
       75 SETTABLEKS                       R20 R19 K17 ["name"]
       77 GETTABLEKS                       R20 R12 K13 ["Transparency"]
       79 SETTABLEKS                       R20 R19 K18 ["value"]
       81 SETLIST                          R17 R18 2 [1]
       83 SETTABLEKS                       R17 R16 K8 ["attributes"]
       85 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
       87 MOVE                             R15 R2
       88 GETIMPORT                        R14 K24 [table.insert]
       90 CALL                             R14 2 0
       91 FORGLOOP                         R8 2 ; [-75]
       93 FORGLOOP                         R3 2 ; [-88]
       95 MOVE                             R3 R1
       96 LOADNIL                          R4
       97 LOADNIL                          R5
       98 FORGPREP                         R3
       99 GETUPVAL                         R8 2
      100 MOVE                             R9 R6
      101 CALL                             R8 1 1
      102 DUPTABLE                         R11 K9 [{["tag"], ["pseudo"] = "UIStroke", ["properties"], ["attributes"]}]
      103 LOADK                            R13 K10 ["stroke-%*"]
      104 MOVE                             R15 R6
      105 NAMECALL                         R13 R13 K11 ["format"]
      107 CALL                             R13 2 1
      108 MOVE                             R12 R13
      109 SETTABLEKS                       R12 R11 K4 ["tag"]
      111 DUPTABLE                         R12 K14 [{"Color", "Transparency"}]
      112 LOADK                            R14 K25 ["$Color%*BorderColor3"]
      113 MOVE                             R16 R8
      114 NAMECALL                         R14 R14 K11 ["format"]
      116 CALL                             R14 2 1
      117 MOVE                             R13 R14
      118 SETTABLEKS                       R13 R12 K12 ["Color"]
      120 LOADK                            R14 K26 ["$Color%*BorderTransparency"]
      121 MOVE                             R16 R8
      122 NAMECALL                         R14 R14 K11 ["format"]
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 SETTABLEKS                       R13 R12 K13 ["Transparency"]
      128 SETTABLEKS                       R12 R11 K7 ["properties"]
      130 NEWTABLE                         R12 0 2
      132 DUPTABLE                         R13 K19 [{"name", "value"}]
      133 LOADK                            R15 K27 ["Color%*BorderColor3"]
      134 MOVE                             R17 R8
      135 NAMECALL                         R15 R15 K11 ["format"]
      137 CALL                             R15 2 1
      138 MOVE                             R14 R15
      139 SETTABLEKS                       R14 R13 K17 ["name"]
      141 GETTABLEKS                       R14 R7 K28 ["Border"]
      143 GETTABLEKS                       R14 R14 K21 ["Color3"]
      145 SETTABLEKS                       R14 R13 K18 ["value"]
      147 DUPTABLE                         R14 K19 [{"name", "value"}]
      148 LOADK                            R16 K29 ["Color%*BorderTransparency"]
      149 MOVE                             R18 R8
      150 NAMECALL                         R16 R16 K11 ["format"]
      152 CALL                             R16 2 1
      153 MOVE                             R15 R16
      154 SETTABLEKS                       R15 R14 K17 ["name"]
      156 GETTABLEKS                       R15 R7 K28 ["Border"]
      158 GETTABLEKS                       R15 R15 K13 ["Transparency"]
      160 SETTABLEKS                       R15 R14 K18 ["value"]
      162 SETLIST                          R12 R13 2 [1]
      164 SETTABLEKS                       R12 R11 K8 ["attributes"]
      166 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      168 MOVE                             R10 R2
      169 GETIMPORT                        R9 K24 [table.insert]
      171 CALL                             R9 2 0
      172 FORGLOOP                         R3 2 ; [-74]
      174 NEWTABLE                         R3 4 0
      176 GETIMPORT                        R4 K33 [Enum.BorderStrokePosition.Center]
      178 SETTABLEKS                       R4 R3 K34 ["center"]
      180 GETIMPORT                        R4 K36 [Enum.BorderStrokePosition.Inner]
      182 SETTABLEKS                       R4 R3 K37 ["inner"]
      184 GETIMPORT                        R4 K39 [Enum.BorderStrokePosition.Outer]
      186 SETTABLEKS                       R4 R3 K40 ["outer"]
      188 MOVE                             R4 R3
      189 LOADNIL                          R5
      190 LOADNIL                          R6
      191 FORGPREP                         R4
      192 DUPTABLE                         R11 K41 [{["tag"], ["pseudo"] = "UIStroke", ["properties"]}]
      193 LOADK                            R13 K42 ["stroke-position-%*"]
      194 MOVE                             R15 R7
      195 NAMECALL                         R13 R13 K11 ["format"]
      197 CALL                             R13 2 1
      198 MOVE                             R12 R13
      199 SETTABLEKS                       R12 R11 K4 ["tag"]
      201 DUPTABLE                         R12 K43 [{"BorderStrokePosition"}]
      202 SETTABLEKS                       R8 R12 K31 ["BorderStrokePosition"]
      204 SETTABLEKS                       R12 R11 K7 ["properties"]
      206 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      208 MOVE                             R10 R2
      209 GETIMPORT                        R9 K24 [table.insert]
      211 CALL                             R9 2 0
      212 FORGLOOP                         R4 2 ; [-21]
      214 RETURN                           R2 1

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.find]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R6
       10 LOADK                            R10 K3 ["content"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+98]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETUPVAL                         R13 1
       18 MOVE                             R14 R6
       19 MOVE                             R15 R11
       20 CALL                             R13 2 1
       21 DUPTABLE                         R16 K7 [{"tag", "properties", "attributes"}]
       22 LOADK                            R18 K8 ["content-%*"]
       23 MOVE                             R20 R11
       24 NAMECALL                         R18 R18 K9 ["format"]
       26 CALL                             R18 2 1
       27 MOVE                             R17 R18
       28 SETTABLEKS                       R17 R16 K4 ["tag"]
       30 DUPTABLE                         R17 K14 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
       31 LOADK                            R19 K15 ["$Color%*%*Color3"]
       32 MOVE                             R21 R6
       33 MOVE                             R22 R13
       34 NAMECALL                         R19 R19 K9 ["format"]
       36 CALL                             R19 3 1
       37 MOVE                             R18 R19
       38 SETTABLEKS                       R18 R17 K10 ["ImageColor3"]
       40 LOADK                            R19 K16 ["$Color%*%*Transparency"]
       41 MOVE                             R21 R6
       42 MOVE                             R22 R13
       43 NAMECALL                         R19 R19 K9 ["format"]
       45 CALL                             R19 3 1
       46 MOVE                             R18 R19
       47 SETTABLEKS                       R18 R17 K11 ["ImageTransparency"]
       49 LOADK                            R19 K15 ["$Color%*%*Color3"]
       50 MOVE                             R21 R6
       51 MOVE                             R22 R13
       52 NAMECALL                         R19 R19 K9 ["format"]
       54 CALL                             R19 3 1
       55 MOVE                             R18 R19
       56 SETTABLEKS                       R18 R17 K12 ["TextColor3"]
       58 LOADK                            R19 K16 ["$Color%*%*Transparency"]
       59 MOVE                             R21 R6
       60 MOVE                             R22 R13
       61 NAMECALL                         R19 R19 K9 ["format"]
       63 CALL                             R19 3 1
       64 MOVE                             R18 R19
       65 SETTABLEKS                       R18 R17 K13 ["TextTransparency"]
       67 SETTABLEKS                       R17 R16 K5 ["properties"]
       69 NEWTABLE                         R17 0 2
       71 DUPTABLE                         R18 K19 [{"name", "value"}]
       72 LOADK                            R20 K20 ["Color%*%*Color3"]
       73 MOVE                             R22 R6
       74 MOVE                             R23 R13
       75 NAMECALL                         R20 R20 K9 ["format"]
       77 CALL                             R20 3 1
       78 MOVE                             R19 R20
       79 SETTABLEKS                       R19 R18 K17 ["name"]
       81 GETTABLEKS                       R19 R12 K21 ["Color3"]
       83 SETTABLEKS                       R19 R18 K18 ["value"]
       85 DUPTABLE                         R19 K19 [{"name", "value"}]
       86 LOADK                            R21 K22 ["Color%*%*Transparency"]
       87 MOVE                             R23 R6
       88 MOVE                             R24 R13
       89 NAMECALL                         R21 R21 K9 ["format"]
       91 CALL                             R21 3 1
       92 MOVE                             R20 R21
       93 SETTABLEKS                       R20 R19 K17 ["name"]
       95 GETTABLEKS                       R20 R12 K23 ["Transparency"]
       97 SETTABLEKS                       R20 R19 K18 ["value"]
       99 SETLIST                          R17 R18 2 [1]
      101 SETTABLEKS                       R17 R16 K6 ["attributes"]
      103 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
      105 MOVE                             R15 R2
      106 GETIMPORT                        R14 K25 [table.insert]
      108 CALL                             R14 2 0
      109 FORGLOOP                         R8 2 ; [-93]
      111 FORGLOOP                         R3 2 ; [-106]
      113 MOVE                             R3 R1
      114 LOADNIL                          R4
      115 LOADNIL                          R5
      116 FORGPREP                         R3
      117 GETUPVAL                         R8 2
      118 MOVE                             R9 R6
      119 CALL                             R8 1 1
      120 DUPTABLE                         R11 K7 [{"tag", "properties", "attributes"}]
      121 LOADK                            R13 K8 ["content-%*"]
      122 MOVE                             R15 R6
      123 NAMECALL                         R13 R13 K9 ["format"]
      125 CALL                             R13 2 1
      126 MOVE                             R12 R13
      127 SETTABLEKS                       R12 R11 K4 ["tag"]
      129 DUPTABLE                         R12 K14 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
      130 LOADK                            R14 K26 ["$Color%*ForegroundColor3"]
      131 MOVE                             R16 R8
      132 NAMECALL                         R14 R14 K9 ["format"]
      134 CALL                             R14 2 1
      135 MOVE                             R13 R14
      136 SETTABLEKS                       R13 R12 K10 ["ImageColor3"]
      138 LOADK                            R14 K27 ["$Color%*ForegroundTransparency"]
      139 MOVE                             R16 R8
      140 NAMECALL                         R14 R14 K9 ["format"]
      142 CALL                             R14 2 1
      143 MOVE                             R13 R14
      144 SETTABLEKS                       R13 R12 K11 ["ImageTransparency"]
      146 LOADK                            R14 K26 ["$Color%*ForegroundColor3"]
      147 MOVE                             R16 R8
      148 NAMECALL                         R14 R14 K9 ["format"]
      150 CALL                             R14 2 1
      151 MOVE                             R13 R14
      152 SETTABLEKS                       R13 R12 K12 ["TextColor3"]
      154 LOADK                            R14 K27 ["$Color%*ForegroundTransparency"]
      155 MOVE                             R16 R8
      156 NAMECALL                         R14 R14 K9 ["format"]
      158 CALL                             R14 2 1
      159 MOVE                             R13 R14
      160 SETTABLEKS                       R13 R12 K13 ["TextTransparency"]
      162 SETTABLEKS                       R12 R11 K5 ["properties"]
      164 NEWTABLE                         R12 0 2
      166 DUPTABLE                         R13 K19 [{"name", "value"}]
      167 LOADK                            R15 K28 ["Color%*ForegroundColor3"]
      168 MOVE                             R17 R8
      169 NAMECALL                         R15 R15 K9 ["format"]
      171 CALL                             R15 2 1
      172 MOVE                             R14 R15
      173 SETTABLEKS                       R14 R13 K17 ["name"]
      175 GETTABLEKS                       R14 R7 K29 ["Foreground"]
      177 GETTABLEKS                       R14 R14 K21 ["Color3"]
      179 SETTABLEKS                       R14 R13 K18 ["value"]
      181 DUPTABLE                         R14 K19 [{"name", "value"}]
      182 LOADK                            R16 K30 ["Color%*ForegroundTransparency"]
      183 MOVE                             R18 R8
      184 NAMECALL                         R16 R16 K9 ["format"]
      186 CALL                             R16 2 1
      187 MOVE                             R15 R16
      188 SETTABLEKS                       R15 R14 K17 ["name"]
      190 GETTABLEKS                       R15 R7 K29 ["Foreground"]
      192 GETTABLEKS                       R15 R15 K23 ["Transparency"]
      194 SETTABLEKS                       R15 R14 K18 ["value"]
      196 SETLIST                          R12 R13 2 [1]
      198 SETTABLEKS                       R12 R11 K6 ["attributes"]
      200 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      202 MOVE                             R10 R2
      203 GETIMPORT                        R9 K25 [table.insert]
      205 CALL                             R9 2 0
      206 FORGLOOP                         R3 2 ; [-90]
      208 RETURN                           R2 1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["System"]
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADN                            R10 8
        9 NAMECALL                         R8 R6 K1 ["sub"]
       11 CALL                             R8 2 1
       12 GETUPVAL                         R9 0
       13 LOADK                            R10 K0 ["System"]
       14 MOVE                             R11 R6
       15 CALL                             R9 2 1
       16 DUPTABLE                         R12 K6 [{"tag", "properties", "attributes", "deprecatedFor"}]
       17 LOADK                            R14 K7 ["bg-%*"]
       18 MOVE                             R16 R8
       19 NAMECALL                         R14 R14 K8 ["format"]
       21 CALL                             R14 2 1
       22 MOVE                             R13 R14
       23 SETTABLEKS                       R13 R12 K2 ["tag"]
       25 DUPTABLE                         R13 K11 [{"BackgroundColor3", "BackgroundTransparency"}]
       26 LOADK                            R15 K12 ["$ColorSystem%*Color3"]
       27 MOVE                             R17 R9
       28 NAMECALL                         R15 R15 K8 ["format"]
       30 CALL                             R15 2 1
       31 MOVE                             R14 R15
       32 SETTABLEKS                       R14 R13 K9 ["BackgroundColor3"]
       34 LOADK                            R15 K13 ["$ColorSystem%*Transparency"]
       35 MOVE                             R17 R9
       36 NAMECALL                         R15 R15 K8 ["format"]
       38 CALL                             R15 2 1
       39 MOVE                             R14 R15
       40 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
       42 SETTABLEKS                       R13 R12 K3 ["properties"]
       44 NEWTABLE                         R13 0 2
       46 DUPTABLE                         R14 K16 [{"name", "value"}]
       47 LOADK                            R16 K17 ["ColorSystem%*Color3"]
       48 MOVE                             R18 R9
       49 NAMECALL                         R16 R16 K8 ["format"]
       51 CALL                             R16 2 1
       52 MOVE                             R15 R16
       53 SETTABLEKS                       R15 R14 K14 ["name"]
       55 GETTABLEKS                       R15 R7 K18 ["Color3"]
       57 SETTABLEKS                       R15 R14 K15 ["value"]
       59 DUPTABLE                         R15 K16 [{"name", "value"}]
       60 LOADK                            R17 K19 ["ColorSystem%*Transparency"]
       61 MOVE                             R19 R9
       62 NAMECALL                         R17 R17 K8 ["format"]
       64 CALL                             R17 2 1
       65 MOVE                             R16 R17
       66 SETTABLEKS                       R16 R15 K14 ["name"]
       68 GETTABLEKS                       R16 R7 K20 ["Transparency"]
       70 SETTABLEKS                       R16 R15 K15 ["value"]
       72 SETLIST                          R13 R14 2 [1]
       74 SETTABLEKS                       R13 R12 K4 ["attributes"]
       76 LOADK                            R14 K7 ["bg-%*"]
       77 MOVE                             R16 R6
       78 NAMECALL                         R14 R14 K8 ["format"]
       80 CALL                             R14 2 1
       81 MOVE                             R13 R14
       82 SETTABLEKS                       R13 R12 K5 ["deprecatedFor"]
       84 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       86 MOVE                             R11 R1
       87 GETIMPORT                        R10 K23 [table.insert]
       89 CALL                             R10 2 0
       90 JUMPIFEQKS                       R8 K24 ["emphasis"] ; [+165]
       92 DUPTABLE                         R12 K6 [{"tag", "properties", "attributes", "deprecatedFor"}]
       93 LOADK                            R14 K25 ["content-%*"]
       94 MOVE                             R16 R8
       95 NAMECALL                         R14 R14 K8 ["format"]
       97 CALL                             R14 2 1
       98 MOVE                             R13 R14
       99 SETTABLEKS                       R13 R12 K2 ["tag"]
      101 DUPTABLE                         R13 K30 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
      102 LOADK                            R15 K12 ["$ColorSystem%*Color3"]
      103 MOVE                             R17 R9
      104 NAMECALL                         R15 R15 K8 ["format"]
      106 CALL                             R15 2 1
      107 MOVE                             R14 R15
      108 SETTABLEKS                       R14 R13 K26 ["ImageColor3"]
      110 LOADK                            R15 K13 ["$ColorSystem%*Transparency"]
      111 MOVE                             R17 R9
      112 NAMECALL                         R15 R15 K8 ["format"]
      114 CALL                             R15 2 1
      115 MOVE                             R14 R15
      116 SETTABLEKS                       R14 R13 K27 ["ImageTransparency"]
      118 LOADK                            R15 K12 ["$ColorSystem%*Color3"]
      119 MOVE                             R17 R9
      120 NAMECALL                         R15 R15 K8 ["format"]
      122 CALL                             R15 2 1
      123 MOVE                             R14 R15
      124 SETTABLEKS                       R14 R13 K28 ["TextColor3"]
      126 LOADK                            R15 K13 ["$ColorSystem%*Transparency"]
      127 MOVE                             R17 R9
      128 NAMECALL                         R15 R15 K8 ["format"]
      130 CALL                             R15 2 1
      131 MOVE                             R14 R15
      132 SETTABLEKS                       R14 R13 K29 ["TextTransparency"]
      134 SETTABLEKS                       R13 R12 K3 ["properties"]
      136 NEWTABLE                         R13 0 2
      138 DUPTABLE                         R14 K16 [{"name", "value"}]
      139 LOADK                            R16 K17 ["ColorSystem%*Color3"]
      140 MOVE                             R18 R9
      141 NAMECALL                         R16 R16 K8 ["format"]
      143 CALL                             R16 2 1
      144 MOVE                             R15 R16
      145 SETTABLEKS                       R15 R14 K14 ["name"]
      147 GETTABLEKS                       R15 R7 K18 ["Color3"]
      149 SETTABLEKS                       R15 R14 K15 ["value"]
      151 DUPTABLE                         R15 K16 [{"name", "value"}]
      152 LOADK                            R17 K19 ["ColorSystem%*Transparency"]
      153 MOVE                             R19 R9
      154 NAMECALL                         R17 R17 K8 ["format"]
      156 CALL                             R17 2 1
      157 MOVE                             R16 R17
      158 SETTABLEKS                       R16 R15 K14 ["name"]
      160 GETTABLEKS                       R16 R7 K20 ["Transparency"]
      162 SETTABLEKS                       R16 R15 K15 ["value"]
      164 SETLIST                          R13 R14 2 [1]
      166 SETTABLEKS                       R13 R12 K4 ["attributes"]
      168 LOADK                            R14 K25 ["content-%*"]
      169 MOVE                             R16 R6
      170 NAMECALL                         R14 R14 K8 ["format"]
      172 CALL                             R14 2 1
      173 MOVE                             R13 R14
      174 SETTABLEKS                       R13 R12 K5 ["deprecatedFor"]
      176 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      178 MOVE                             R11 R1
      179 GETIMPORT                        R10 K23 [table.insert]
      181 CALL                             R10 2 0
      182 DUPTABLE                         R12 K33 [{["tag"], ["pseudo"] = "UIStroke", ["properties"], ["attributes"], ["deprecatedFor"]}]
      183 LOADK                            R14 K34 ["stroke-%*"]
      184 MOVE                             R16 R8
      185 NAMECALL                         R14 R14 K8 ["format"]
      187 CALL                             R14 2 1
      188 MOVE                             R13 R14
      189 SETTABLEKS                       R13 R12 K2 ["tag"]
      191 DUPTABLE                         R13 K36 [{"Color", "Transparency"}]
      192 LOADK                            R15 K12 ["$ColorSystem%*Color3"]
      193 MOVE                             R17 R9
      194 NAMECALL                         R15 R15 K8 ["format"]
      196 CALL                             R15 2 1
      197 MOVE                             R14 R15
      198 SETTABLEKS                       R14 R13 K35 ["Color"]
      200 LOADK                            R15 K13 ["$ColorSystem%*Transparency"]
      201 MOVE                             R17 R9
      202 NAMECALL                         R15 R15 K8 ["format"]
      204 CALL                             R15 2 1
      205 MOVE                             R14 R15
      206 SETTABLEKS                       R14 R13 K20 ["Transparency"]
      208 SETTABLEKS                       R13 R12 K3 ["properties"]
      210 NEWTABLE                         R13 0 2
      212 DUPTABLE                         R14 K16 [{"name", "value"}]
      213 LOADK                            R16 K17 ["ColorSystem%*Color3"]
      214 MOVE                             R18 R9
      215 NAMECALL                         R16 R16 K8 ["format"]
      217 CALL                             R16 2 1
      218 MOVE                             R15 R16
      219 SETTABLEKS                       R15 R14 K14 ["name"]
      221 GETTABLEKS                       R15 R7 K18 ["Color3"]
      223 SETTABLEKS                       R15 R14 K15 ["value"]
      225 DUPTABLE                         R15 K16 [{"name", "value"}]
      226 LOADK                            R17 K19 ["ColorSystem%*Transparency"]
      227 MOVE                             R19 R9
      228 NAMECALL                         R17 R17 K8 ["format"]
      230 CALL                             R17 2 1
      231 MOVE                             R16 R17
      232 SETTABLEKS                       R16 R15 K14 ["name"]
      234 GETTABLEKS                       R16 R7 K20 ["Transparency"]
      236 SETTABLEKS                       R16 R15 K15 ["value"]
      238 SETLIST                          R13 R14 2 [1]
      240 SETTABLEKS                       R13 R12 K4 ["attributes"]
      242 LOADK                            R14 K34 ["stroke-%*"]
      243 MOVE                             R16 R6
      244 NAMECALL                         R14 R14 K8 ["format"]
      246 CALL                             R14 2 1
      247 MOVE                             R13 R14
      248 SETTABLEKS                       R13 R12 K5 ["deprecatedFor"]
      250 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      252 MOVE                             R11 R1
      253 GETIMPORT                        R10 K23 [table.insert]
      255 CALL                             R10 2 0
      256 FORGLOOP                         R3 2 ; [-249]
      258 RETURN                           R1 1

PROTO_18:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{[1] = "x-default-transparency", ["properties"]}]
        3 DUPTABLE                         R2 K6 [{["BackgroundTransparency"] = 0}]
        4 SETTABLEKS                       R2 R1 K2 ["properties"]
        6 DUPTABLE                         R2 K8 [{[1] = "x-default-text-size", ["properties"]}]
        7 DUPTABLE                         R3 K11 [{["TextSize"] = 8}]
        8 SETTABLEKS                       R3 R2 K2 ["properties"]
       10 SETLIST                          R0 R1 2 [1]
       12 RETURN                           R0 1

PROTO_19:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K5 [{[1] = "row", ["pseudo"] = "UIListLayout", ["properties"]}]
        3 DUPTABLE                         R2 K8 [{"FillDirection", "SortOrder"}]
        4 GETIMPORT                        R3 K11 [Enum.FillDirection.Horizontal]
        6 SETTABLEKS                       R3 R2 K6 ["FillDirection"]
        8 GETIMPORT                        R3 K13 [Enum.SortOrder.LayoutOrder]
       10 SETTABLEKS                       R3 R2 K7 ["SortOrder"]
       12 SETTABLEKS                       R2 R1 K4 ["properties"]
       14 DUPTABLE                         R2 K15 [{[1] = "col", ["pseudo"] = "UIListLayout", ["properties"]}]
       15 DUPTABLE                         R3 K8 [{"FillDirection", "SortOrder"}]
       16 GETIMPORT                        R4 K17 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R4 R3 K6 ["FillDirection"]
       20 GETIMPORT                        R4 K13 [Enum.SortOrder.LayoutOrder]
       22 SETTABLEKS                       R4 R3 K7 ["SortOrder"]
       24 SETTABLEKS                       R3 R2 K4 ["properties"]
       26 SETLIST                          R0 R1 2 [1]
       28 NEWTABLE                         R1 0 6
       30 DUPTABLE                         R2 K19 [{[1] = "align-x-left", ["pseudo"] = "UIListLayout", ["properties"]}]
       31 DUPTABLE                         R3 K21 [{"HorizontalAlignment"}]
       32 GETIMPORT                        R4 K23 [Enum.HorizontalAlignment.Left]
       34 SETTABLEKS                       R4 R3 K20 ["HorizontalAlignment"]
       36 SETTABLEKS                       R3 R2 K4 ["properties"]
       38 DUPTABLE                         R3 K25 [{[1] = "align-x-center", ["pseudo"] = "UIListLayout", ["properties"]}]
       39 DUPTABLE                         R4 K21 [{"HorizontalAlignment"}]
       40 GETIMPORT                        R5 K27 [Enum.HorizontalAlignment.Center]
       42 SETTABLEKS                       R5 R4 K20 ["HorizontalAlignment"]
       44 SETTABLEKS                       R4 R3 K4 ["properties"]
       46 DUPTABLE                         R4 K29 [{[1] = "align-x-right", ["pseudo"] = "UIListLayout", ["properties"]}]
       47 DUPTABLE                         R5 K21 [{"HorizontalAlignment"}]
       48 GETIMPORT                        R6 K31 [Enum.HorizontalAlignment.Right]
       50 SETTABLEKS                       R6 R5 K20 ["HorizontalAlignment"]
       52 SETTABLEKS                       R5 R4 K4 ["properties"]
       54 DUPTABLE                         R5 K33 [{[1] = "align-y-top", ["pseudo"] = "UIListLayout", ["properties"]}]
       55 DUPTABLE                         R6 K35 [{"VerticalAlignment"}]
       56 GETIMPORT                        R7 K37 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R7 R6 K34 ["VerticalAlignment"]
       60 SETTABLEKS                       R6 R5 K4 ["properties"]
       62 DUPTABLE                         R6 K39 [{[1] = "align-y-center", ["pseudo"] = "UIListLayout", ["properties"]}]
       63 DUPTABLE                         R7 K35 [{"VerticalAlignment"}]
       64 GETIMPORT                        R8 K40 [Enum.VerticalAlignment.Center]
       66 SETTABLEKS                       R8 R7 K34 ["VerticalAlignment"]
       68 SETTABLEKS                       R7 R6 K4 ["properties"]
       70 DUPTABLE                         R7 K42 [{[1] = "align-y-bottom", ["pseudo"] = "UIListLayout", ["properties"]}]
       71 DUPTABLE                         R8 K35 [{"VerticalAlignment"}]
       72 GETIMPORT                        R9 K44 [Enum.VerticalAlignment.Bottom]
       74 SETTABLEKS                       R9 R8 K34 ["VerticalAlignment"]
       76 SETTABLEKS                       R8 R7 K4 ["properties"]
       78 SETLIST                          R1 R2 6 [1]
       80 NEWTABLE                         R2 0 2
       82 DUPTABLE                         R3 K46 [{[1] = "wrap", ["pseudo"] = "UIListLayout", ["properties"]}]
       83 DUPTABLE                         R4 K49 [{["Wraps"] = True}]
       84 SETTABLEKS                       R4 R3 K4 ["properties"]
       86 DUPTABLE                         R4 K51 [{[1] = "no-wrap", ["pseudo"] = "UIListLayout", ["properties"]}]
       87 DUPTABLE                         R5 K53 [{["Wraps"] = False}]
       88 SETTABLEKS                       R5 R4 K4 ["properties"]
       90 SETLIST                          R2 R3 2 [1]
       92 NEWTABLE                         R3 0 0
       94 DUPTABLE                         R4 K59 [{"none", "fill", "around", "between", "evenly"}]
       95 GETIMPORT                        R5 K62 [Enum.UIFlexAlignment.None]
       97 SETTABLEKS                       R5 R4 K54 ["none"]
       99 GETIMPORT                        R5 K64 [Enum.UIFlexAlignment.Fill]
      101 SETTABLEKS                       R5 R4 K55 ["fill"]
      103 GETIMPORT                        R5 K66 [Enum.UIFlexAlignment.SpaceAround]
      105 SETTABLEKS                       R5 R4 K56 ["around"]
      107 GETIMPORT                        R5 K68 [Enum.UIFlexAlignment.SpaceBetween]
      109 SETTABLEKS                       R5 R4 K57 ["between"]
      111 GETIMPORT                        R5 K70 [Enum.UIFlexAlignment.SpaceEvenly]
      113 SETTABLEKS                       R5 R4 K58 ["evenly"]
      115 MOVE                             R5 R4
      116 LOADNIL                          R6
      117 LOADNIL                          R7
      118 FORGPREP                         R5
      119 DUPTABLE                         R12 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      120 LOADK                            R14 K72 ["flex-%*"]
      121 MOVE                             R16 R8
      122 NAMECALL                         R14 R14 K73 ["format"]
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 SETTABLEKS                       R13 R12 K0 ["tag"]
      128 DUPTABLE                         R13 K76 [{"HorizontalFlex", "VerticalFlex"}]
      129 SETTABLEKS                       R9 R13 K74 ["HorizontalFlex"]
      131 SETTABLEKS                       R9 R13 K75 ["VerticalFlex"]
      133 SETTABLEKS                       R13 R12 K4 ["properties"]
      135 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      137 MOVE                             R11 R3
      138 GETIMPORT                        R10 K79 [table.insert]
      140 CALL                             R10 2 0
      141 DUPTABLE                         R12 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      142 LOADK                            R14 K80 ["flex-x-%*"]
      143 MOVE                             R16 R8
      144 NAMECALL                         R14 R14 K73 ["format"]
      146 CALL                             R14 2 1
      147 MOVE                             R13 R14
      148 SETTABLEKS                       R13 R12 K0 ["tag"]
      150 DUPTABLE                         R13 K81 [{"HorizontalFlex"}]
      151 SETTABLEKS                       R9 R13 K74 ["HorizontalFlex"]
      153 SETTABLEKS                       R13 R12 K4 ["properties"]
      155 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      157 MOVE                             R11 R3
      158 GETIMPORT                        R10 K79 [table.insert]
      160 CALL                             R10 2 0
      161 DUPTABLE                         R12 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      162 LOADK                            R14 K82 ["flex-y-%*"]
      163 MOVE                             R16 R8
      164 NAMECALL                         R14 R14 K73 ["format"]
      166 CALL                             R14 2 1
      167 MOVE                             R13 R14
      168 SETTABLEKS                       R13 R12 K0 ["tag"]
      170 DUPTABLE                         R13 K83 [{"VerticalFlex"}]
      171 SETTABLEKS                       R9 R13 K75 ["VerticalFlex"]
      173 SETTABLEKS                       R13 R12 K4 ["properties"]
      175 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      177 MOVE                             R11 R3
      178 GETIMPORT                        R10 K79 [table.insert]
      180 CALL                             R10 2 0
      181 FORGLOOP                         R5 2 ; [-63]
      183 NEWTABLE                         R5 8 0
      185 GETIMPORT                        R6 K86 [Enum.ItemLineAlignment.Automatic]
      187 SETTABLEKS                       R6 R5 K87 ["auto"]
      189 GETIMPORT                        R6 K89 [Enum.ItemLineAlignment.Start]
      191 SETTABLEKS                       R6 R5 K90 ["start"]
      193 GETIMPORT                        R6 K91 [Enum.ItemLineAlignment.Center]
      195 SETTABLEKS                       R6 R5 K92 ["center"]
      197 GETIMPORT                        R6 K94 [Enum.ItemLineAlignment.End]
      199 SETTABLEKS                       R6 R5 K95 ["end"]
      201 GETIMPORT                        R6 K97 [Enum.ItemLineAlignment.Stretch]
      203 SETTABLEKS                       R6 R5 K98 ["stretch"]
      205 NEWTABLE                         R6 0 0
      207 MOVE                             R7 R5
      208 LOADNIL                          R8
      209 LOADNIL                          R9
      210 FORGPREP                         R7
      211 DUPTABLE                         R14 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      212 LOADK                            R16 K99 ["items-%*"]
      213 MOVE                             R18 R10
      214 NAMECALL                         R16 R16 K73 ["format"]
      216 CALL                             R16 2 1
      217 MOVE                             R15 R16
      218 SETTABLEKS                       R15 R14 K0 ["tag"]
      220 DUPTABLE                         R15 K100 [{"ItemLineAlignment"}]
      221 SETTABLEKS                       R11 R15 K84 ["ItemLineAlignment"]
      223 SETTABLEKS                       R15 R14 K4 ["properties"]
      225 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      227 MOVE                             R13 R6
      228 GETIMPORT                        R12 K79 [table.insert]
      230 CALL                             R12 2 0
      231 FORGLOOP                         R7 2 ; [-21]
      233 GETUPVAL                         R7 0
      234 GETTABLEKS                       R7 R7 K101 ["joinArrays"]
      236 MOVE                             R8 R0
      237 MOVE                             R9 R1
      238 MOVE                             R10 R2
      239 MOVE                             R11 R3
      240 MOVE                             R12 R6
      241 CALL                             R7 5 -1
      242 RETURN                           R7 -1

PROTO_20:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K5 [{[1] = "grow", ["pseudo"] = "UIFlexItem", ["properties"]}]
        3 DUPTABLE                         R2 K7 [{"FlexMode"}]
        4 GETIMPORT                        R3 K11 [Enum.UIFlexMode.Grow]
        6 SETTABLEKS                       R3 R2 K6 ["FlexMode"]
        8 SETTABLEKS                       R2 R1 K4 ["properties"]
       10 DUPTABLE                         R2 K13 [{[1] = "shrink", ["pseudo"] = "UIFlexItem", ["properties"]}]
       11 DUPTABLE                         R3 K7 [{"FlexMode"}]
       12 GETIMPORT                        R4 K15 [Enum.UIFlexMode.Shrink]
       14 SETTABLEKS                       R4 R3 K6 ["FlexMode"]
       16 SETTABLEKS                       R3 R2 K4 ["properties"]
       18 DUPTABLE                         R3 K17 [{[1] = "fill", ["pseudo"] = "UIFlexItem", ["properties"]}]
       19 DUPTABLE                         R4 K7 [{"FlexMode"}]
       20 GETIMPORT                        R5 K19 [Enum.UIFlexMode.Fill]
       22 SETTABLEKS                       R5 R4 K6 ["FlexMode"]
       24 SETTABLEKS                       R4 R3 K4 ["properties"]
       26 DUPTABLE                         R4 K21 [{[1] = "no-flex", ["pseudo"] = "UIFlexItem", ["properties"]}]
       27 DUPTABLE                         R5 K7 [{"FlexMode"}]
       28 GETIMPORT                        R6 K23 [Enum.UIFlexMode.None]
       30 SETTABLEKS                       R6 R5 K6 ["FlexMode"]
       32 SETTABLEKS                       R5 R4 K4 ["properties"]
       34 SETLIST                          R0 R1 4 [1]
       36 NEWTABLE                         R1 0 5
       38 LOADN                            R2 1
       39 LOADN                            R3 2
       40 LOADN                            R4 3
       41 LOADN                            R5 4
       42 LOADN                            R6 5
       43 SETLIST                          R1 R2 5 [1]
       45 NEWTABLE                         R2 0 0
       47 NEWTABLE                         R3 0 0
       49 MOVE                             R4 R1
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 DUPTABLE                         R11 K24 [{[1], ["pseudo"] = "UIFlexItem", ["properties"]}]
       54 LOADK                            R13 K25 ["grow-%*"]
       55 MOVE                             R15 R7
       56 NAMECALL                         R13 R13 K26 ["format"]
       58 CALL                             R13 2 1
       59 MOVE                             R12 R13
       60 SETTABLEKS                       R12 R11 K0 ["tag"]
       62 DUPTABLE                         R12 K28 [{"FlexMode", "GrowRatio"}]
       63 GETIMPORT                        R13 K30 [Enum.UIFlexMode.Custom]
       65 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
       67 SETTABLEKS                       R7 R12 K27 ["GrowRatio"]
       69 SETTABLEKS                       R12 R11 K4 ["properties"]
       71 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       73 MOVE                             R10 R2
       74 GETIMPORT                        R9 K33 [table.insert]
       76 CALL                             R9 2 0
       77 DUPTABLE                         R11 K24 [{[1], ["pseudo"] = "UIFlexItem", ["properties"]}]
       78 LOADK                            R13 K34 ["shrink-%*"]
       79 MOVE                             R15 R7
       80 NAMECALL                         R13 R13 K26 ["format"]
       82 CALL                             R13 2 1
       83 MOVE                             R12 R13
       84 SETTABLEKS                       R12 R11 K0 ["tag"]
       86 DUPTABLE                         R12 K36 [{"FlexMode", "ShrinkRatio"}]
       87 GETIMPORT                        R13 K30 [Enum.UIFlexMode.Custom]
       89 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
       91 SETTABLEKS                       R7 R12 K35 ["ShrinkRatio"]
       93 SETTABLEKS                       R12 R11 K4 ["properties"]
       95 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       97 MOVE                             R10 R3
       98 GETIMPORT                        R9 K33 [table.insert]
      100 CALL                             R9 2 0
      101 FORGLOOP                         R4 1 ; [-49]
      103 NEWTABLE                         R4 8 0
      105 GETIMPORT                        R5 K39 [Enum.ItemLineAlignment.Automatic]
      107 SETTABLEKS                       R5 R4 K40 ["auto"]
      109 GETIMPORT                        R5 K42 [Enum.ItemLineAlignment.Start]
      111 SETTABLEKS                       R5 R4 K43 ["start"]
      113 GETIMPORT                        R5 K45 [Enum.ItemLineAlignment.Center]
      115 SETTABLEKS                       R5 R4 K46 ["center"]
      117 GETIMPORT                        R5 K48 [Enum.ItemLineAlignment.End]
      119 SETTABLEKS                       R5 R4 K49 ["end"]
      121 GETIMPORT                        R5 K51 [Enum.ItemLineAlignment.Stretch]
      123 SETTABLEKS                       R5 R4 K52 ["stretch"]
      125 NEWTABLE                         R5 0 0
      127 MOVE                             R6 R4
      128 LOADNIL                          R7
      129 LOADNIL                          R8
      130 FORGPREP                         R6
      131 DUPTABLE                         R13 K24 [{[1], ["pseudo"] = "UIFlexItem", ["properties"]}]
      132 LOADK                            R15 K53 ["self-%*"]
      133 MOVE                             R17 R9
      134 NAMECALL                         R15 R15 K26 ["format"]
      136 CALL                             R15 2 1
      137 MOVE                             R14 R15
      138 SETTABLEKS                       R14 R13 K0 ["tag"]
      140 DUPTABLE                         R14 K54 [{"ItemLineAlignment"}]
      141 SETTABLEKS                       R10 R14 K37 ["ItemLineAlignment"]
      143 SETTABLEKS                       R14 R13 K4 ["properties"]
      145 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      147 MOVE                             R12 R5
      148 GETIMPORT                        R11 K33 [table.insert]
      150 CALL                             R11 2 0
      151 FORGLOOP                         R6 2 ; [-21]
      153 GETUPVAL                         R6 0
      154 GETTABLEKS                       R6 R6 K55 ["joinArrays"]
      156 MOVE                             R7 R0
      157 MOVE                             R8 R2
      158 MOVE                             R9 R3
      159 MOVE                             R10 R5
      160 CALL                             R6 4 -1
      161 RETURN                           R6 -1

PROTO_21:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 4 0
        4 GETIMPORT                        R2 K3 [Enum.TextXAlignment.Left]
        6 SETTABLEKS                       R2 R1 K4 ["left"]
        8 GETIMPORT                        R2 K6 [Enum.TextXAlignment.Center]
       10 SETTABLEKS                       R2 R1 K7 ["center"]
       12 GETIMPORT                        R2 K9 [Enum.TextXAlignment.Right]
       14 SETTABLEKS                       R2 R1 K10 ["right"]
       16 MOVE                             R2 R1
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 DUPTABLE                         R9 K13 [{"tag", "properties"}]
       21 LOADK                            R11 K14 ["text-align-x-%*"]
       22 MOVE                             R13 R5
       23 NAMECALL                         R11 R11 K15 ["format"]
       25 CALL                             R11 2 1
       26 MOVE                             R10 R11
       27 SETTABLEKS                       R10 R9 K11 ["tag"]
       29 DUPTABLE                         R10 K16 [{"TextXAlignment"}]
       30 SETTABLEKS                       R6 R10 K1 ["TextXAlignment"]
       32 SETTABLEKS                       R10 R9 K12 ["properties"]
       34 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       36 MOVE                             R8 R0
       37 GETIMPORT                        R7 K19 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-21]
       42 NEWTABLE                         R2 4 0
       44 GETIMPORT                        R3 K22 [Enum.TextYAlignment.Top]
       46 SETTABLEKS                       R3 R2 K23 ["top"]
       48 GETIMPORT                        R3 K24 [Enum.TextYAlignment.Center]
       50 SETTABLEKS                       R3 R2 K7 ["center"]
       52 GETIMPORT                        R3 K26 [Enum.TextYAlignment.Bottom]
       54 SETTABLEKS                       R3 R2 K27 ["bottom"]
       56 MOVE                             R3 R2
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 DUPTABLE                         R10 K13 [{"tag", "properties"}]
       61 LOADK                            R12 K28 ["text-align-y-%*"]
       62 MOVE                             R14 R6
       63 NAMECALL                         R12 R12 K15 ["format"]
       65 CALL                             R12 2 1
       66 MOVE                             R11 R12
       67 SETTABLEKS                       R11 R10 K11 ["tag"]
       69 DUPTABLE                         R11 K29 [{"TextYAlignment"}]
       70 SETTABLEKS                       R7 R11 K20 ["TextYAlignment"]
       72 SETTABLEKS                       R11 R10 K12 ["properties"]
       74 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       76 MOVE                             R9 R0
       77 GETIMPORT                        R8 K19 [table.insert]
       79 CALL                             R8 2 0
       80 FORGLOOP                         R3 2 ; [-21]
       82 NEWTABLE                         R3 4 0
       84 GETIMPORT                        R4 K32 [Enum.TextTruncate.None]
       86 SETTABLEKS                       R4 R3 K33 ["none"]
       88 GETIMPORT                        R4 K35 [Enum.TextTruncate.AtEnd]
       90 SETTABLEKS                       R4 R3 K36 ["end"]
       92 GETIMPORT                        R4 K38 [Enum.TextTruncate.SplitWord]
       94 SETTABLEKS                       R4 R3 K39 ["split"]
       96 MOVE                             R4 R3
       97 LOADNIL                          R5
       98 LOADNIL                          R6
       99 FORGPREP                         R4
      100 DUPTABLE                         R11 K13 [{"tag", "properties"}]
      101 LOADK                            R13 K40 ["text-truncate-%*"]
      102 MOVE                             R15 R7
      103 NAMECALL                         R13 R13 K15 ["format"]
      105 CALL                             R13 2 1
      106 MOVE                             R12 R13
      107 SETTABLEKS                       R12 R11 K11 ["tag"]
      109 DUPTABLE                         R12 K41 [{"TextTruncate"}]
      110 SETTABLEKS                       R8 R12 K30 ["TextTruncate"]
      112 SETTABLEKS                       R12 R11 K12 ["properties"]
      114 FASTCALL2                        TABLE_INSERT R0 R11 ; [+4]
      116 MOVE                             R10 R0
      117 GETIMPORT                        R9 K19 [table.insert]
      119 CALL                             R9 2 0
      120 FORGLOOP                         R4 2 ; [-21]
      122 DUPTABLE                         R6 K43 [{["tag"] = "text-wrap", ["properties"]}]
      123 DUPTABLE                         R7 K46 [{["TextWrapped"] = True}]
      124 SETTABLEKS                       R7 R6 K12 ["properties"]
      126 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      128 MOVE                             R5 R0
      129 GETIMPORT                        R4 K19 [table.insert]
      131 CALL                             R4 2 0
      132 DUPTABLE                         R6 K48 [{["tag"] = "text-no-wrap", ["properties"]}]
      133 DUPTABLE                         R7 K50 [{["TextWrapped"] = False}]
      134 SETTABLEKS                       R7 R6 K12 ["properties"]
      136 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      138 MOVE                             R5 R0
      139 GETIMPORT                        R4 K19 [table.insert]
      141 CALL                             R4 2 0
      142 RETURN                           R0 1

PROTO_22:
        0 DUPTABLE                         R0 K4 [{"none", "x", "y", "xy"}]
        1 GETIMPORT                        R1 K8 [Enum.AutomaticSize.None]
        3 SETTABLEKS                       R1 R0 K0 ["none"]
        5 GETIMPORT                        R1 K10 [Enum.AutomaticSize.X]
        7 SETTABLEKS                       R1 R0 K1 ["x"]
        9 GETIMPORT                        R1 K12 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R1 R0 K2 ["y"]
       13 GETIMPORT                        R1 K14 [Enum.AutomaticSize.XY]
       15 SETTABLEKS                       R1 R0 K3 ["xy"]
       17 NEWTABLE                         R1 0 0
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 DUPTABLE                         R9 K17 [{"tag", "properties"}]
       24 LOADK                            R11 K18 ["auto-%*"]
       25 MOVE                             R13 R5
       26 NAMECALL                         R11 R11 K19 ["format"]
       28 CALL                             R11 2 1
       29 MOVE                             R10 R11
       30 SETTABLEKS                       R10 R9 K15 ["tag"]
       32 DUPTABLE                         R10 K20 [{"AutomaticSize"}]
       33 SETTABLEKS                       R6 R10 K6 ["AutomaticSize"]
       35 SETTABLEKS                       R10 R9 K16 ["properties"]
       37 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       39 MOVE                             R8 R1
       40 GETIMPORT                        R7 K23 [table.insert]
       42 CALL                             R7 2 0
       43 FORGLOOP                         R2 2 ; [-21]
       45 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K6 [{[1] = 0, ["center"] = 0.5, ["right"] = 1}]
        3 DUPTABLE                         R2 K9 [{["top"] = 0, ["center"] = 0.5, ["bottom"] = 1}]
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R8 R2
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 DUPTABLE                         R15 K12 [{"tag", "properties"}]
       13 LOADK                            R17 K13 ["position-%*-%*"]
       14 MOVE                             R19 R11
       15 MOVE                             R20 R6
       16 NAMECALL                         R17 R17 K14 ["format"]
       18 CALL                             R17 3 1
       19 MOVE                             R16 R17
       20 SETTABLEKS                       R16 R15 K10 ["tag"]
       22 DUPTABLE                         R16 K16 [{"Position"}]
       23 GETIMPORT                        R17 K19 [UDim2.fromScale]
       25 MOVE                             R18 R7
       26 MOVE                             R19 R12
       27 CALL                             R17 2 1
       28 SETTABLEKS                       R17 R16 K15 ["Position"]
       30 SETTABLEKS                       R16 R15 K11 ["properties"]
       32 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       34 MOVE                             R14 R0
       35 GETIMPORT                        R13 K22 [table.insert]
       37 CALL                             R13 2 0
       38 FORGLOOP                         R8 2 ; [-27]
       40 FORGLOOP                         R3 2 ; [-33]
       42 RETURN                           R0 1

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K6 [{[1] = 0, ["center"] = 0.5, ["right"] = 1}]
        3 DUPTABLE                         R2 K9 [{["top"] = 0, ["center"] = 0.5, ["bottom"] = 1}]
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R8 R2
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 DUPTABLE                         R15 K12 [{"tag", "properties"}]
       13 LOADK                            R17 K13 ["anchor-%*-%*"]
       14 MOVE                             R19 R11
       15 MOVE                             R20 R6
       16 NAMECALL                         R17 R17 K14 ["format"]
       18 CALL                             R17 3 1
       19 MOVE                             R16 R17
       20 SETTABLEKS                       R16 R15 K10 ["tag"]
       22 DUPTABLE                         R16 K16 [{"AnchorPoint"}]
       23 GETIMPORT                        R17 K19 [Vector2.new]
       25 MOVE                             R18 R7
       26 MOVE                             R19 R12
       27 CALL                             R17 2 1
       28 SETTABLEKS                       R17 R16 K15 ["AnchorPoint"]
       30 SETTABLEKS                       R16 R15 K11 ["properties"]
       32 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       34 MOVE                             R14 R0
       35 GETIMPORT                        R13 K22 [table.insert]
       37 CALL                             R13 2 0
       38 FORGLOOP                         R8 2 ; [-27]
       40 FORGLOOP                         R3 2 ; [-33]
       42 RETURN                           R0 1

PROTO_25:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{[1] = "clip", ["properties"]}]
        3 DUPTABLE                         R2 K6 [{["ClipsDescendants"] = True}]
        4 SETTABLEKS                       R2 R1 K2 ["properties"]
        6 DUPTABLE                         R2 K8 [{[1] = "no-clip", ["properties"]}]
        7 DUPTABLE                         R3 K10 [{["ClipsDescendants"] = False}]
        8 SETTABLEKS                       R3 R2 K2 ["properties"]
       10 SETLIST                          R0 R1 2 [1]
       12 RETURN                           R0 1

PROTO_26:
        0 LOADN                            R3 10
        1 POW                              R2 R3 R1
        2 MUL                              R5 R0 R2
        3 FASTCALL1                        MATH_ROUND R5 ; [+2]
        4 GETIMPORT                        R4 K2 [math.round]
        6 CALL                             R4 1 1
        7 DIV                              R3 R4 R2
        8 RETURN                           R3 1

PROTO_27:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 6
        4 NEWTABLE                         R2 0 2
        6 LOADN                            R3 1
        7 LOADN                            R4 1
        8 SETLIST                          R2 R3 2 [1]
       10 NEWTABLE                         R3 0 2
       12 LOADN                            R4 5
       13 LOADN                            R5 4
       14 SETLIST                          R3 R4 2 [1]
       16 NEWTABLE                         R4 0 2
       18 LOADN                            R5 4
       19 LOADN                            R6 3
       20 SETLIST                          R4 R5 2 [1]
       22 NEWTABLE                         R5 0 2
       24 LOADN                            R6 3
       25 LOADN                            R7 2
       26 SETLIST                          R5 R6 2 [1]
       28 NEWTABLE                         R6 0 2
       30 LOADN                            R7 16
       31 LOADN                            R8 9
       32 SETLIST                          R6 R7 2 [1]
       34 NEWTABLE                         R7 0 2
       36 LOADN                            R8 2
       37 LOADN                            R9 1
       38 SETLIST                          R7 R8 2 [1]
       40 SETLIST                          R1 R2 6 [1]
       42 MOVE                             R2 R1
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 DUPTABLE                         R9 K4 [{[1], ["pseudo"] = "UIAspectRatioConstraint", ["properties"]}]
       47 LOADK                            R11 K5 ["aspect-%*-%*"]
       48 GETTABLEN                        R13 R6 1
       49 GETTABLEN                        R14 R6 2
       50 NAMECALL                         R11 R11 K6 ["format"]
       52 CALL                             R11 3 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R10 R9 K0 ["tag"]
       56 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       57 GETTABLEN                        R13 R6 1
       58 GETTABLEN                        R14 R6 2
       59 DIV                              R12 R13 R14
       60 MULK                             R14 R12 K9 [1000]
       61 FASTCALL1                        MATH_ROUND R14 ; [+2]
       62 GETIMPORT                        R13 K12 [math.round]
       64 CALL                             R13 1 1
       65 DIVK                             R11 R13 K9 [1000]
       66 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
       68 SETTABLEKS                       R10 R9 K3 ["properties"]
       70 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       72 MOVE                             R8 R0
       73 GETIMPORT                        R7 K15 [table.insert]
       75 CALL                             R7 2 0
       76 GETTABLEN                        R7 R6 1
       77 GETTABLEN                        R8 R6 2
       78 JUMPIFEQ                         R7 R8 ; [+31]
       80 DUPTABLE                         R9 K4 [{[1], ["pseudo"] = "UIAspectRatioConstraint", ["properties"]}]
       81 LOADK                            R11 K5 ["aspect-%*-%*"]
       82 GETTABLEN                        R13 R6 2
       83 GETTABLEN                        R14 R6 1
       84 NAMECALL                         R11 R11 K6 ["format"]
       86 CALL                             R11 3 1
       87 MOVE                             R10 R11
       88 SETTABLEKS                       R10 R9 K0 ["tag"]
       90 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       91 GETTABLEN                        R13 R6 2
       92 GETTABLEN                        R14 R6 1
       93 DIV                              R12 R13 R14
       94 MULK                             R14 R12 K9 [1000]
       95 FASTCALL1                        MATH_ROUND R14 ; [+2]
       96 GETIMPORT                        R13 K12 [math.round]
       98 CALL                             R13 1 1
       99 DIVK                             R11 R13 K9 [1000]
      100 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
      102 SETTABLEKS                       R10 R9 K3 ["properties"]
      104 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      106 MOVE                             R8 R0
      107 GETIMPORT                        R7 K15 [table.insert]
      109 CALL                             R7 2 0
      110 FORGLOOP                         R2 2 ; [-65]
      112 RETURN                           R0 1

PROTO_28:
        0 GETTABLEKS                       R2 R1 K0 ["colors"]
        2 GETTABLEKS                       R3 R1 K1 ["variants"]
        4 GETTABLEKS                       R4 R1 K2 ["gaps"]
        6 GETTABLEKS                       R5 R1 K3 ["gutters"]
        8 GETTABLEKS                       R6 R1 K4 ["radii"]
       10 GETTABLEKS                       R7 R1 K5 ["sizes"]
       12 GETTABLEKS                       R8 R1 K6 ["strokes"]
       14 GETTABLEKS                       R9 R1 K7 ["typography"]
       16 GETTABLEKS                       R10 R1 K8 ["paddings"]
       18 GETTABLEKS                       R11 R1 K9 ["margins"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R12 R12 K10 ["joinArrays"]
       23 GETUPVAL                         R13 1
       24 MOVE                             R14 R0
       25 CALL                             R13 1 1
       26 GETUPVAL                         R14 2
       27 CALL                             R14 0 1
       28 GETUPVAL                         R15 3
       29 CALL                             R15 0 1
       30 GETUPVAL                         R16 4
       31 CALL                             R16 0 1
       32 GETUPVAL                         R17 5
       33 CALL                             R17 0 1
       34 GETUPVAL                         R18 6
       35 CALL                             R18 0 1
       36 GETUPVAL                         R19 7
       37 CALL                             R19 0 1
       38 GETUPVAL                         R20 8
       39 CALL                             R20 0 1
       40 GETUPVAL                         R21 9
       41 CALL                             R21 0 1
       42 CALL                             R12 9 1
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R13 R13 K10 ["joinArrays"]
       46 GETUPVAL                         R14 10
       47 GETTABLEKS                       R15 R9 K11 ["body-large"]
       49 GETTABLEKS                       R16 R0 K12 ["Config"]
       51 GETTABLEKS                       R16 R16 K13 ["Text"]
       53 GETTABLEKS                       R16 R16 K14 ["NominalScale"]
       55 CALL                             R14 2 1
       56 GETUPVAL                         R15 11
       57 CALL                             R15 0 1
       58 GETUPVAL                         R16 12
       59 MOVE                             R17 R4
       60 MOVE                             R18 R5
       61 CALL                             R16 2 1
       62 GETUPVAL                         R17 13
       63 MOVE                             R18 R6
       64 DUPCLOSURE                       R19 K15 [PROTO_6]
       65 CAPTURE                          UPVAL U14
       66 CALL                             R17 2 1
       67 GETUPVAL                         R18 15
       68 MOVE                             R19 R7
       69 CALL                             R18 1 1
       70 GETUPVAL                         R19 16
       71 MOVE                             R20 R8
       72 CALL                             R19 1 1
       73 GETUPVAL                         R20 17
       74 MOVE                             R21 R9
       75 GETTABLEKS                       R22 R0 K12 ["Config"]
       77 GETTABLEKS                       R22 R22 K13 ["Text"]
       79 GETTABLEKS                       R22 R22 K14 ["NominalScale"]
       81 CALL                             R20 2 1
       82 GETUPVAL                         R21 18
       83 MOVE                             R22 R10
       84 MOVE                             R23 R11
       85 CALL                             R21 2 1
       86 CALL                             R13 8 1
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R14 R14 K10 ["joinArrays"]
       90 GETUPVAL                         R15 19
       91 MOVE                             R16 R0
       92 CALL                             R15 1 1
       93 GETUPVAL                         R16 20
       94 MOVE                             R17 R2
       95 CALL                             R16 1 1
       96 GETUPVAL                         R17 21
       97 MOVE                             R18 R2
       98 MOVE                             R19 R3
       99 CALL                             R17 2 1
      100 GETUPVAL                         R18 22
      101 MOVE                             R19 R2
      102 MOVE                             R20 R3
      103 CALL                             R18 2 1
      104 GETUPVAL                         R19 23
      105 MOVE                             R20 R2
      106 MOVE                             R21 R3
      107 CALL                             R19 2 1
      108 CALL                             R14 5 1
      109 RETURN                           R12 3

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
       38 GETTABLEKS                       R6 R6 K12 ["cornerRules"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K4 ["Parent"]
       47 GETTABLEKS                       R7 R7 K4 ["Parent"]
       49 GETTABLEKS                       R7 R7 K13 ["tokenAttributePascalName"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K14 [PROTO_2]
       53 DUPCLOSURE                       R8 K15 [PROTO_3]
       54 DUPCLOSURE                       R9 K16 [PROTO_4]
       55 DUPCLOSURE                       R10 K17 [PROTO_5]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 DUPCLOSURE                       R11 K18 [PROTO_7]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R12 K19 [PROTO_8]
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R13 K20 [PROTO_9]
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R14 K21 [PROTO_10]
       66 CAPTURE                          VAL R7
       67 DUPTABLE                         R15 K33 [{"Content", "Stroke", "Shift", "Surface", "OverMedia", "System", "Extended", "Common", "Selection", "State", "None"}]
       68 NEWTABLE                         R16 0 1
       70 LOADK                            R17 K34 ["content"]
       71 SETLIST                          R16 R17 1 [1]
       73 SETTABLEKS                       R16 R15 K22 ["Content"]
       75 NEWTABLE                         R16 0 1
       77 LOADK                            R17 K35 ["stroke"]
       78 SETLIST                          R16 R17 1 [1]
       80 SETTABLEKS                       R16 R15 K23 ["Stroke"]
       82 NEWTABLE                         R16 0 1
       84 LOADK                            R17 K36 ["bg"]
       85 SETLIST                          R16 R17 1 [1]
       87 SETTABLEKS                       R16 R15 K24 ["Shift"]
       89 NEWTABLE                         R16 0 1
       91 LOADK                            R17 K36 ["bg"]
       92 SETLIST                          R16 R17 1 [1]
       94 SETTABLEKS                       R16 R15 K25 ["Surface"]
       96 NEWTABLE                         R16 0 1
       98 LOADK                            R17 K36 ["bg"]
       99 SETLIST                          R16 R17 1 [1]
      101 SETTABLEKS                       R16 R15 K26 ["OverMedia"]
      103 NEWTABLE                         R16 0 3
      105 LOADK                            R17 K36 ["bg"]
      106 LOADK                            R18 K34 ["content"]
      107 LOADK                            R19 K35 ["stroke"]
      108 SETLIST                          R16 R17 3 [1]
      110 SETTABLEKS                       R16 R15 K27 ["System"]
      112 NEWTABLE                         R16 0 0
      114 SETTABLEKS                       R16 R15 K28 ["Extended"]
      116 NEWTABLE                         R16 0 0
      118 SETTABLEKS                       R16 R15 K29 ["Common"]
      120 NEWTABLE                         R16 0 0
      122 SETTABLEKS                       R16 R15 K30 ["Selection"]
      124 NEWTABLE                         R16 0 0
      126 SETTABLEKS                       R16 R15 K31 ["State"]
      128 NEWTABLE                         R16 0 0
      130 SETTABLEKS                       R16 R15 K32 ["None"]
      132 DUPCLOSURE                       R16 K37 [PROTO_11]
      133 DUPCLOSURE                       R17 K38 [PROTO_12]
      134 DUPCLOSURE                       R18 K39 [PROTO_13]
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R7
      138 DUPCLOSURE                       R19 K40 [PROTO_14]
      139 CAPTURE                          VAL R7
      140 DUPCLOSURE                       R20 K41 [PROTO_15]
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 DUPCLOSURE                       R21 K42 [PROTO_16]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R7
      148 DUPCLOSURE                       R22 K43 [PROTO_17]
      149 CAPTURE                          VAL R6
      150 DUPCLOSURE                       R23 K44 [PROTO_18]
      151 DUPCLOSURE                       R24 K45 [PROTO_19]
      152 CAPTURE                          VAL R2
      153 DUPCLOSURE                       R25 K46 [PROTO_20]
      154 CAPTURE                          VAL R2
      155 DUPCLOSURE                       R26 K47 [PROTO_21]
      156 DUPCLOSURE                       R27 K48 [PROTO_22]
      157 DUPCLOSURE                       R28 K49 [PROTO_23]
      158 DUPCLOSURE                       R29 K50 [PROTO_24]
      159 DUPCLOSURE                       R30 K51 [PROTO_25]
      160 DUPCLOSURE                       R31 K52 [PROTO_26]
      161 DUPCLOSURE                       R32 K53 [PROTO_27]
      162 DUPCLOSURE                       R33 K54 [PROTO_28]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R25
      167 CAPTURE                          VAL R26
      168 CAPTURE                          VAL R27
      169 CAPTURE                          VAL R28
      170 CAPTURE                          VAL R29
      171 CAPTURE                          VAL R30
      172 CAPTURE                          VAL R32
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R21
      187 DUPTABLE                         R34 K56 [{"rulesGenerator"}]
      188 SETTABLEKS                       R33 R34 K55 ["rulesGenerator"]
      190 RETURN                           R34 1
