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
       18 DUPTABLE                         R4 K11 [{"tag", "priority", "properties", "children", "attributes"}]
       19 LOADK                            R5 K12 ["text-size-defaults"]
       20 SETTABLEKS                       R5 R4 K6 ["tag"]
       22 LOADN                            R5 255
       23 SETTABLEKS                       R5 R4 K7 ["priority"]
       25 DUPTABLE                         R5 K13 [{"TextSize", "LineHeight"}]
       26 LOADK                            R6 K14 ["$TextSizeBodyLarge"]
       27 SETTABLEKS                       R6 R5 K0 ["TextSize"]
       29 GETTABLEKS                       R6 R0 K1 ["LineHeight"]
       31 SETTABLEKS                       R6 R5 K1 ["LineHeight"]
       33 SETTABLEKS                       R5 R4 K8 ["properties"]
       35 NEWTABLE                         R5 0 1
       37 DUPTABLE                         R6 K16 [{"tag", "pseudo", "priority", "properties", "attributes"}]
       38 LOADK                            R7 K12 ["text-size-defaults"]
       39 SETTABLEKS                       R7 R6 K6 ["tag"]
       41 LOADK                            R7 K17 ["UIPadding"]
       42 SETTABLEKS                       R7 R6 K15 ["pseudo"]
       44 LOADN                            R7 255
       45 SETTABLEKS                       R7 R6 K7 ["priority"]
       47 DUPTABLE                         R7 K20 [{"PaddingTop", "PaddingBottom"}]
       48 LOADK                            R8 K21 ["$TextPaddingBodyLarge"]
       49 SETTABLEKS                       R8 R7 K18 ["PaddingTop"]
       51 LOADK                            R8 K21 ["$TextPaddingBodyLarge"]
       52 SETTABLEKS                       R8 R7 K19 ["PaddingBottom"]
       54 SETTABLEKS                       R7 R6 K8 ["properties"]
       56 NEWTABLE                         R7 0 1
       58 DUPTABLE                         R8 K24 [{"name", "value"}]
       59 LOADK                            R9 K25 ["TextPaddingBodyLarge"]
       60 SETTABLEKS                       R9 R8 K22 ["name"]
       62 SETTABLEKS                       R2 R8 K23 ["value"]
       64 SETLIST                          R7 R8 1 [1]
       66 SETTABLEKS                       R7 R6 K10 ["attributes"]
       68 SETLIST                          R5 R6 1 [1]
       70 SETTABLEKS                       R5 R4 K9 ["children"]
       72 NEWTABLE                         R5 0 1
       74 DUPTABLE                         R6 K24 [{"name", "value"}]
       75 LOADK                            R7 K26 ["TextSizeBodyLarge"]
       76 SETTABLEKS                       R7 R6 K22 ["name"]
       78 GETTABLEKS                       R7 R0 K0 ["TextSize"]
       80 SETTABLEKS                       R7 R6 K23 ["value"]
       82 SETLIST                          R5 R6 1 [1]
       84 SETTABLEKS                       R5 R4 K10 ["attributes"]
       86 SETLIST                          R3 R4 1 [1]
       88 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R9 R7 K0 ["name"]
        9 CALL                             R8 1 1
       10 DUPTABLE                         R11 K5 [{"tag", "pseudo", "properties", "attributes"}]
       11 LOADK                            R13 K6 ["gap-%*"]
       12 GETTABLEKS                       R15 R7 K0 ["name"]
       14 NAMECALL                         R13 R13 K7 ["format"]
       16 CALL                             R13 2 1
       17 MOVE                             R12 R13
       18 SETTABLEKS                       R12 R11 K1 ["tag"]
       20 LOADK                            R12 K8 ["UIListLayout"]
       21 SETTABLEKS                       R12 R11 K2 ["pseudo"]
       23 DUPTABLE                         R12 K10 [{"Padding"}]
       24 LOADK                            R14 K11 ["$Gap%*"]
       25 MOVE                             R16 R8
       26 NAMECALL                         R14 R14 K7 ["format"]
       28 CALL                             R14 2 1
       29 MOVE                             R13 R14
       30 SETTABLEKS                       R13 R12 K9 ["Padding"]
       32 SETTABLEKS                       R12 R11 K3 ["properties"]
       34 NEWTABLE                         R12 0 1
       36 DUPTABLE                         R13 K13 [{"name", "value"}]
       37 LOADK                            R15 K14 ["Gap%*"]
       38 MOVE                             R17 R8
       39 NAMECALL                         R15 R15 K7 ["format"]
       41 CALL                             R15 2 1
       42 MOVE                             R14 R15
       43 SETTABLEKS                       R14 R13 K0 ["name"]
       45 GETTABLEKS                       R14 R7 K15 ["size"]
       47 SETTABLEKS                       R14 R13 K12 ["value"]
       49 SETLIST                          R12 R13 1 [1]
       51 SETTABLEKS                       R12 R11 K4 ["attributes"]
       53 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       55 MOVE                             R10 R2
       56 GETIMPORT                        R9 K18 [table.insert]
       58 CALL                             R9 2 0
       59 FORGLOOP                         R3 2 ; [-54]
       61 NEWTABLE                         R3 0 0
       63 MOVE                             R4 R1
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 FORGPREP                         R4
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R10 R8 K0 ["name"]
       70 CALL                             R9 1 1
       71 DUPTABLE                         R12 K5 [{"tag", "pseudo", "properties", "attributes"}]
       72 LOADK                            R14 K19 ["gutter-%*"]
       73 GETTABLEKS                       R16 R8 K0 ["name"]
       75 NAMECALL                         R14 R14 K7 ["format"]
       77 CALL                             R14 2 1
       78 MOVE                             R13 R14
       79 SETTABLEKS                       R13 R12 K1 ["tag"]
       81 LOADK                            R13 K8 ["UIListLayout"]
       82 SETTABLEKS                       R13 R12 K2 ["pseudo"]
       84 DUPTABLE                         R13 K10 [{"Padding"}]
       85 LOADK                            R15 K20 ["$Gutter%*"]
       86 MOVE                             R17 R9
       87 NAMECALL                         R15 R15 K7 ["format"]
       89 CALL                             R15 2 1
       90 MOVE                             R14 R15
       91 SETTABLEKS                       R14 R13 K9 ["Padding"]
       93 SETTABLEKS                       R13 R12 K3 ["properties"]
       95 NEWTABLE                         R13 0 1
       97 DUPTABLE                         R14 K13 [{"name", "value"}]
       98 LOADK                            R16 K21 ["Gutter%*"]
       99 MOVE                             R18 R9
      100 NAMECALL                         R16 R16 K7 ["format"]
      102 CALL                             R16 2 1
      103 MOVE                             R15 R16
      104 SETTABLEKS                       R15 R14 K0 ["name"]
      106 GETTABLEKS                       R15 R8 K15 ["size"]
      108 SETTABLEKS                       R15 R14 K12 ["value"]
      110 SETLIST                          R13 R14 1 [1]
      112 SETTABLEKS                       R13 R12 K4 ["attributes"]
      114 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      116 MOVE                             R11 R3
      117 GETIMPORT                        R10 K18 [table.insert]
      119 CALL                             R10 2 0
      120 FORGLOOP                         R4 2 ; [-54]
      122 GETUPVAL                         R4 1
      123 GETTABLEKS                       R4 R4 K22 ["joinArrays"]
      125 MOVE                             R5 R2
      126 MOVE                             R6 R3
      127 CALL                             R4 2 -1
      128 RETURN                           R4 -1

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
       91 DUPTABLE                         R14 K24 [{"tag", "pseudo", "priority", "properties", "attributes"}]
       92 LOADK                            R16 K11 ["text-%*"]
       93 MOVE                             R18 R6
       94 NAMECALL                         R16 R16 K12 ["format"]
       96 CALL                             R16 2 1
       97 MOVE                             R15 R16
       98 SETTABLEKS                       R15 R14 K6 ["tag"]
      100 LOADK                            R15 K25 ["UIPadding"]
      101 SETTABLEKS                       R15 R14 K22 ["pseudo"]
      103 LOADN                            R15 0
      104 SETTABLEKS                       R15 R14 K23 ["priority"]
      106 DUPTABLE                         R15 K28 [{"PaddingTop", "PaddingBottom"}]
      107 LOADK                            R17 K29 ["$TextPadding%*"]
      108 MOVE                             R19 R8
      109 NAMECALL                         R17 R17 K12 ["format"]
      111 CALL                             R17 2 1
      112 MOVE                             R16 R17
      113 SETTABLEKS                       R16 R15 K26 ["PaddingTop"]
      115 LOADK                            R17 K29 ["$TextPadding%*"]
      116 MOVE                             R19 R8
      117 NAMECALL                         R17 R17 K12 ["format"]
      119 CALL                             R17 2 1
      120 MOVE                             R16 R17
      121 SETTABLEKS                       R16 R15 K27 ["PaddingBottom"]
      123 SETTABLEKS                       R15 R14 K7 ["properties"]
      125 NEWTABLE                         R15 0 1
      127 DUPTABLE                         R16 K19 [{"name", "value"}]
      128 LOADK                            R18 K30 ["TextPadding%*"]
      129 MOVE                             R20 R8
      130 NAMECALL                         R18 R18 K12 ["format"]
      132 CALL                             R18 2 1
      133 MOVE                             R17 R18
      134 SETTABLEKS                       R17 R16 K17 ["name"]
      136 SETTABLEKS                       R9 R16 K18 ["value"]
      138 SETLIST                          R15 R16 1 [1]
      140 SETTABLEKS                       R15 R14 K8 ["attributes"]
      142 SETLIST                          R13 R14 1 [1]
      144 SETTABLEKS                       R13 R12 K9 ["children"]
      146 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      148 MOVE                             R11 R2
      149 GETIMPORT                        R10 K33 [table.insert]
      151 CALL                             R10 2 0
      152 FORGLOOP                         R3 2 ; [-147]
      154 RETURN                           R2 1

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
       55 DUPTABLE                         R12 K16 [{"tag", "pseudo", "properties", "attributes"}]
       56 LOADK                            R14 K17 ["padding-%*"]
       57 GETTABLEKS                       R16 R8 K11 ["name"]
       59 NAMECALL                         R14 R14 K18 ["format"]
       61 CALL                             R14 2 1
       62 MOVE                             R13 R14
       63 SETTABLEKS                       R13 R12 K12 ["tag"]
       65 LOADK                            R13 K19 ["UIPadding"]
       66 SETTABLEKS                       R13 R12 K13 ["pseudo"]
       68 DUPTABLE                         R13 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       69 LOADK                            R15 K21 ["$Padding%*"]
       70 MOVE                             R17 R9
       71 NAMECALL                         R15 R15 K18 ["format"]
       73 CALL                             R15 2 1
       74 MOVE                             R14 R15
       75 SETTABLEKS                       R14 R13 K9 ["PaddingTop"]
       77 LOADK                            R15 K21 ["$Padding%*"]
       78 MOVE                             R17 R9
       79 NAMECALL                         R15 R15 K18 ["format"]
       81 CALL                             R15 2 1
       82 MOVE                             R14 R15
       83 SETTABLEKS                       R14 R13 K10 ["PaddingBottom"]
       85 LOADK                            R15 K21 ["$Padding%*"]
       86 MOVE                             R17 R9
       87 NAMECALL                         R15 R15 K18 ["format"]
       89 CALL                             R15 2 1
       90 MOVE                             R14 R15
       91 SETTABLEKS                       R14 R13 K7 ["PaddingLeft"]
       93 LOADK                            R15 K21 ["$Padding%*"]
       94 MOVE                             R17 R9
       95 NAMECALL                         R15 R15 K18 ["format"]
       97 CALL                             R15 2 1
       98 MOVE                             R14 R15
       99 SETTABLEKS                       R14 R13 K8 ["PaddingRight"]
      101 SETTABLEKS                       R13 R12 K14 ["properties"]
      103 NEWTABLE                         R13 0 1
      105 DUPTABLE                         R14 K23 [{"name", "value"}]
      106 LOADK                            R16 K24 ["Padding%*"]
      107 MOVE                             R18 R9
      108 NAMECALL                         R16 R16 K18 ["format"]
      110 CALL                             R16 2 1
      111 MOVE                             R15 R16
      112 SETTABLEKS                       R15 R14 K11 ["name"]
      114 GETTABLEKS                       R15 R8 K25 ["size"]
      116 SETTABLEKS                       R15 R14 K22 ["value"]
      118 SETLIST                          R13 R14 1 [1]
      120 SETTABLEKS                       R13 R12 K15 ["attributes"]
      122 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      124 MOVE                             R11 R2
      125 GETIMPORT                        R10 K28 [table.insert]
      127 CALL                             R10 2 0
      128 FORGLOOP                         R4 2 ; [-78]
      130 MOVE                             R4 R1
      131 LOADNIL                          R5
      132 LOADNIL                          R6
      133 FORGPREP                         R4
      134 GETUPVAL                         R9 0
      135 GETTABLEKS                       R10 R8 K11 ["name"]
      137 CALL                             R9 1 1
      138 DUPTABLE                         R12 K16 [{"tag", "pseudo", "properties", "attributes"}]
      139 LOADK                            R14 K29 ["margin-%*"]
      140 GETTABLEKS                       R16 R8 K11 ["name"]
      142 NAMECALL                         R14 R14 K18 ["format"]
      144 CALL                             R14 2 1
      145 MOVE                             R13 R14
      146 SETTABLEKS                       R13 R12 K12 ["tag"]
      148 LOADK                            R13 K19 ["UIPadding"]
      149 SETTABLEKS                       R13 R12 K13 ["pseudo"]
      151 DUPTABLE                         R13 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      152 LOADK                            R15 K30 ["$Margin%*"]
      153 MOVE                             R17 R9
      154 NAMECALL                         R15 R15 K18 ["format"]
      156 CALL                             R15 2 1
      157 MOVE                             R14 R15
      158 SETTABLEKS                       R14 R13 K9 ["PaddingTop"]
      160 LOADK                            R15 K30 ["$Margin%*"]
      161 MOVE                             R17 R9
      162 NAMECALL                         R15 R15 K18 ["format"]
      164 CALL                             R15 2 1
      165 MOVE                             R14 R15
      166 SETTABLEKS                       R14 R13 K10 ["PaddingBottom"]
      168 LOADK                            R15 K30 ["$Margin%*"]
      169 MOVE                             R17 R9
      170 NAMECALL                         R15 R15 K18 ["format"]
      172 CALL                             R15 2 1
      173 MOVE                             R14 R15
      174 SETTABLEKS                       R14 R13 K7 ["PaddingLeft"]
      176 LOADK                            R15 K30 ["$Margin%*"]
      177 MOVE                             R17 R9
      178 NAMECALL                         R15 R15 K18 ["format"]
      180 CALL                             R15 2 1
      181 MOVE                             R14 R15
      182 SETTABLEKS                       R14 R13 K8 ["PaddingRight"]
      184 SETTABLEKS                       R13 R12 K14 ["properties"]
      186 NEWTABLE                         R13 0 1
      188 DUPTABLE                         R14 K23 [{"name", "value"}]
      189 LOADK                            R16 K31 ["Margin%*"]
      190 MOVE                             R18 R9
      191 NAMECALL                         R16 R16 K18 ["format"]
      193 CALL                             R16 2 1
      194 MOVE                             R15 R16
      195 SETTABLEKS                       R15 R14 K11 ["name"]
      197 GETTABLEKS                       R15 R8 K25 ["size"]
      199 SETTABLEKS                       R15 R14 K22 ["value"]
      201 SETLIST                          R13 R14 1 [1]
      203 SETTABLEKS                       R13 R12 K15 ["attributes"]
      205 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      207 MOVE                             R11 R2
      208 GETIMPORT                        R10 K28 [table.insert]
      210 CALL                             R10 2 0
      211 FORGLOOP                         R4 2 ; [-78]
      213 MOVE                             R4 R3
      214 LOADNIL                          R5
      215 LOADNIL                          R6
      216 FORGPREP                         R4
      217 MOVE                             R9 R0
      218 LOADNIL                          R10
      219 LOADNIL                          R11
      220 FORGPREP                         R9
      221 GETUPVAL                         R14 0
      222 GETTABLEKS                       R15 R13 K11 ["name"]
      224 CALL                             R14 1 1
      225 NEWTABLE                         R15 0 0
      227 MOVE                             R16 R8
      228 LOADNIL                          R17
      229 LOADNIL                          R18
      230 FORGPREP                         R16
      231 LOADK                            R22 K21 ["$Padding%*"]
      232 MOVE                             R24 R14
      233 NAMECALL                         R22 R22 K18 ["format"]
      235 CALL                             R22 2 1
      236 MOVE                             R21 R22
      237 SETTABLE                         R21 R15 R20
      238 FORGLOOP                         R16 2 ; [-8]
      240 DUPTABLE                         R18 K16 [{"tag", "pseudo", "properties", "attributes"}]
      241 LOADK                            R20 K32 ["padding-%*-%*"]
      242 MOVE                             R22 R7
      243 GETTABLEKS                       R23 R13 K11 ["name"]
      245 NAMECALL                         R20 R20 K18 ["format"]
      247 CALL                             R20 3 1
      248 MOVE                             R19 R20
      249 SETTABLEKS                       R19 R18 K12 ["tag"]
      251 LOADK                            R19 K19 ["UIPadding"]
      252 SETTABLEKS                       R19 R18 K13 ["pseudo"]
      254 SETTABLEKS                       R15 R18 K14 ["properties"]
      256 NEWTABLE                         R19 0 1
      258 DUPTABLE                         R20 K23 [{"name", "value"}]
      259 LOADK                            R22 K24 ["Padding%*"]
      260 MOVE                             R24 R14
      261 NAMECALL                         R22 R22 K18 ["format"]
      263 CALL                             R22 2 1
      264 MOVE                             R21 R22
      265 SETTABLEKS                       R21 R20 K11 ["name"]
      267 GETTABLEKS                       R21 R13 K25 ["size"]
      269 SETTABLEKS                       R21 R20 K22 ["value"]
      271 SETLIST                          R19 R20 1 [1]
      273 SETTABLEKS                       R19 R18 K15 ["attributes"]
      275 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      277 MOVE                             R17 R2
      278 GETIMPORT                        R16 K28 [table.insert]
      280 CALL                             R16 2 0
      281 FORGLOOP                         R9 2 ; [-61]
      283 MOVE                             R9 R1
      284 LOADNIL                          R10
      285 LOADNIL                          R11
      286 FORGPREP                         R9
      287 GETUPVAL                         R14 0
      288 GETTABLEKS                       R15 R13 K11 ["name"]
      290 CALL                             R14 1 1
      291 NEWTABLE                         R15 0 0
      293 MOVE                             R16 R8
      294 LOADNIL                          R17
      295 LOADNIL                          R18
      296 FORGPREP                         R16
      297 LOADK                            R22 K30 ["$Margin%*"]
      298 MOVE                             R24 R14
      299 NAMECALL                         R22 R22 K18 ["format"]
      301 CALL                             R22 2 1
      302 MOVE                             R21 R22
      303 SETTABLE                         R21 R15 R20
      304 FORGLOOP                         R16 2 ; [-8]
      306 DUPTABLE                         R18 K16 [{"tag", "pseudo", "properties", "attributes"}]
      307 LOADK                            R20 K33 ["margin-%*-%*"]
      308 MOVE                             R22 R7
      309 GETTABLEKS                       R23 R13 K11 ["name"]
      311 NAMECALL                         R20 R20 K18 ["format"]
      313 CALL                             R20 3 1
      314 MOVE                             R19 R20
      315 SETTABLEKS                       R19 R18 K12 ["tag"]
      317 LOADK                            R19 K19 ["UIPadding"]
      318 SETTABLEKS                       R19 R18 K13 ["pseudo"]
      320 SETTABLEKS                       R15 R18 K14 ["properties"]
      322 NEWTABLE                         R19 0 1
      324 DUPTABLE                         R20 K23 [{"name", "value"}]
      325 LOADK                            R22 K31 ["Margin%*"]
      326 MOVE                             R24 R14
      327 NAMECALL                         R22 R22 K18 ["format"]
      329 CALL                             R22 2 1
      330 MOVE                             R21 R22
      331 SETTABLEKS                       R21 R20 K11 ["name"]
      333 GETTABLEKS                       R21 R13 K25 ["size"]
      335 SETTABLEKS                       R21 R20 K22 ["value"]
      337 SETLIST                          R19 R20 1 [1]
      339 SETTABLEKS                       R19 R18 K15 ["attributes"]
      341 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      343 MOVE                             R17 R2
      344 GETIMPORT                        R16 K28 [table.insert]
      346 CALL                             R16 2 0
      347 FORGLOOP                         R9 2 ; [-61]
      349 FORGLOOP                         R4 2 ; [-133]
      351 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Typography"]
        2 GETTABLEKS                       R1 R1 K1 ["BodyLarge"]
        4 GETTABLEKS                       R1 R1 K2 ["Font"]
        6 NEWTABLE                         R2 0 2
        8 DUPTABLE                         R3 K6 [{"tag", "priority", "properties"}]
        9 LOADK                            R4 K7 ["gui-object-defaults"]
       10 SETTABLEKS                       R4 R3 K3 ["tag"]
       12 LOADN                            R4 255
       13 SETTABLEKS                       R4 R3 K4 ["priority"]
       15 DUPTABLE                         R4 K9 [{"BackgroundTransparency"}]
       16 LOADN                            R5 1
       17 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       19 SETTABLEKS                       R4 R3 K5 ["properties"]
       21 DUPTABLE                         R4 K11 [{"tag", "priority", "properties", "attributes"}]
       22 LOADK                            R5 K12 ["text-defaults"]
       23 SETTABLEKS                       R5 R4 K3 ["tag"]
       25 LOADN                            R5 255
       26 SETTABLEKS                       R5 R4 K4 ["priority"]
       28 DUPTABLE                         R5 K13 [{"Font"}]
       29 LOADK                            R6 K14 ["$FontBodyLarge"]
       30 SETTABLEKS                       R6 R5 K2 ["Font"]
       32 SETTABLEKS                       R5 R4 K5 ["properties"]
       34 NEWTABLE                         R5 0 1
       36 DUPTABLE                         R6 K17 [{"name", "value"}]
       37 LOADK                            R7 K18 ["FontBodyLarge"]
       38 SETTABLEKS                       R7 R6 K15 ["name"]
       40 SETTABLEKS                       R1 R6 K16 ["value"]
       42 SETLIST                          R5 R6 1 [1]
       44 SETTABLEKS                       R5 R4 K10 ["attributes"]
       46 SETLIST                          R2 R3 2 [1]
       48 RETURN                           R2 1

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
       18 DUPTABLE                         R4 K9 [{"tag", "priority", "properties", "attributes"}]
       19 LOADK                            R5 K10 ["text-color-defaults"]
       20 SETTABLEKS                       R5 R4 K5 ["tag"]
       22 LOADN                            R5 255
       23 SETTABLEKS                       R5 R4 K6 ["priority"]
       25 DUPTABLE                         R5 K13 [{"TextColor3", "TextTransparency"}]
       26 LOADK                            R6 K14 ["$ColorContentDefaultColor3"]
       27 SETTABLEKS                       R6 R5 K11 ["TextColor3"]
       29 LOADK                            R6 K15 ["$ColorContentDefaultTransparency"]
       30 SETTABLEKS                       R6 R5 K12 ["TextTransparency"]
       32 SETTABLEKS                       R5 R4 K7 ["properties"]
       34 NEWTABLE                         R5 0 2
       36 DUPTABLE                         R6 K18 [{"name", "value"}]
       37 LOADK                            R7 K19 ["ColorContentDefaultColor3"]
       38 SETTABLEKS                       R7 R6 K16 ["name"]
       40 SETTABLEKS                       R1 R6 K17 ["value"]
       42 DUPTABLE                         R7 K18 [{"name", "value"}]
       43 LOADK                            R8 K20 ["ColorContentDefaultTransparency"]
       44 SETTABLEKS                       R8 R7 K16 ["name"]
       46 SETTABLEKS                       R2 R7 K17 ["value"]
       48 SETLIST                          R5 R6 2 [1]
       50 SETTABLEKS                       R5 R4 K8 ["attributes"]
       52 SETLIST                          R3 R4 1 [1]
       54 RETURN                           R3 1

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
        8 JUMPIFEQKS                       R7 K1 ["none"] ; [+54]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R8 R6 K0 ["name"]
       13 CALL                             R7 1 1
       14 DUPTABLE                         R10 K6 [{"tag", "pseudo", "properties", "attributes"}]
       15 LOADK                            R12 K7 ["stroke-%*"]
       16 GETTABLEKS                       R14 R6 K0 ["name"]
       18 NAMECALL                         R12 R12 K8 ["format"]
       20 CALL                             R12 2 1
       21 MOVE                             R11 R12
       22 SETTABLEKS                       R11 R10 K2 ["tag"]
       24 LOADK                            R11 K9 ["UIStroke"]
       25 SETTABLEKS                       R11 R10 K3 ["pseudo"]
       27 DUPTABLE                         R11 K11 [{"Thickness"}]
       28 LOADK                            R13 K12 ["$StrokeThickness%*"]
       29 MOVE                             R15 R7
       30 NAMECALL                         R13 R13 K8 ["format"]
       32 CALL                             R13 2 1
       33 MOVE                             R12 R13
       34 SETTABLEKS                       R12 R11 K10 ["Thickness"]
       36 SETTABLEKS                       R11 R10 K4 ["properties"]
       38 NEWTABLE                         R11 0 1
       40 DUPTABLE                         R12 K14 [{"name", "value"}]
       41 LOADK                            R14 K15 ["StrokeThickness%*"]
       42 MOVE                             R16 R7
       43 NAMECALL                         R14 R14 K8 ["format"]
       45 CALL                             R14 2 1
       46 MOVE                             R13 R14
       47 SETTABLEKS                       R13 R12 K0 ["name"]
       49 GETTABLEKS                       R13 R6 K16 ["size"]
       51 SETTABLEKS                       R13 R12 K13 ["value"]
       53 SETLIST                          R11 R12 1 [1]
       55 SETTABLEKS                       R11 R10 K5 ["attributes"]
       57 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       59 MOVE                             R9 R1
       60 GETIMPORT                        R8 K19 [table.insert]
       62 CALL                             R8 2 0
       63 FORGLOOP                         R2 2 ; [-58]
       65 RETURN                           R1 1

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
       12 JUMPIFNOT                        R8 ; [+83]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETUPVAL                         R13 1
       18 MOVE                             R14 R6
       19 MOVE                             R15 R11
       20 CALL                             R13 2 1
       21 DUPTABLE                         R16 K8 [{"tag", "pseudo", "properties", "attributes"}]
       22 LOADK                            R18 K9 ["stroke-%*"]
       23 MOVE                             R20 R11
       24 NAMECALL                         R18 R18 K10 ["format"]
       26 CALL                             R18 2 1
       27 MOVE                             R17 R18
       28 SETTABLEKS                       R17 R16 K4 ["tag"]
       30 LOADK                            R17 K11 ["UIStroke"]
       31 SETTABLEKS                       R17 R16 K5 ["pseudo"]
       33 DUPTABLE                         R17 K14 [{"Color", "Transparency"}]
       34 LOADK                            R19 K15 ["$Color%*%*Color3"]
       35 MOVE                             R21 R6
       36 MOVE                             R22 R13
       37 NAMECALL                         R19 R19 K10 ["format"]
       39 CALL                             R19 3 1
       40 MOVE                             R18 R19
       41 SETTABLEKS                       R18 R17 K12 ["Color"]
       43 LOADK                            R19 K16 ["$Color%*%*Transparency"]
       44 MOVE                             R21 R6
       45 MOVE                             R22 R13
       46 NAMECALL                         R19 R19 K10 ["format"]
       48 CALL                             R19 3 1
       49 MOVE                             R18 R19
       50 SETTABLEKS                       R18 R17 K13 ["Transparency"]
       52 SETTABLEKS                       R17 R16 K6 ["properties"]
       54 NEWTABLE                         R17 0 2
       56 DUPTABLE                         R18 K19 [{"name", "value"}]
       57 LOADK                            R20 K20 ["Color%*%*Color3"]
       58 MOVE                             R22 R6
       59 MOVE                             R23 R13
       60 NAMECALL                         R20 R20 K10 ["format"]
       62 CALL                             R20 3 1
       63 MOVE                             R19 R20
       64 SETTABLEKS                       R19 R18 K17 ["name"]
       66 GETTABLEKS                       R19 R12 K21 ["Color3"]
       68 SETTABLEKS                       R19 R18 K18 ["value"]
       70 DUPTABLE                         R19 K19 [{"name", "value"}]
       71 LOADK                            R21 K22 ["Color%*%*Transparency"]
       72 MOVE                             R23 R6
       73 MOVE                             R24 R13
       74 NAMECALL                         R21 R21 K10 ["format"]
       76 CALL                             R21 3 1
       77 MOVE                             R20 R21
       78 SETTABLEKS                       R20 R19 K17 ["name"]
       80 GETTABLEKS                       R20 R12 K13 ["Transparency"]
       82 SETTABLEKS                       R20 R19 K18 ["value"]
       84 SETLIST                          R17 R18 2 [1]
       86 SETTABLEKS                       R17 R16 K7 ["attributes"]
       88 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
       90 MOVE                             R15 R2
       91 GETIMPORT                        R14 K24 [table.insert]
       93 CALL                             R14 2 0
       94 FORGLOOP                         R8 2 ; [-78]
       96 FORGLOOP                         R3 2 ; [-91]
       98 MOVE                             R3 R1
       99 LOADNIL                          R4
      100 LOADNIL                          R5
      101 FORGPREP                         R3
      102 GETUPVAL                         R8 2
      103 MOVE                             R9 R6
      104 CALL                             R8 1 1
      105 DUPTABLE                         R11 K8 [{"tag", "pseudo", "properties", "attributes"}]
      106 LOADK                            R13 K9 ["stroke-%*"]
      107 MOVE                             R15 R6
      108 NAMECALL                         R13 R13 K10 ["format"]
      110 CALL                             R13 2 1
      111 MOVE                             R12 R13
      112 SETTABLEKS                       R12 R11 K4 ["tag"]
      114 LOADK                            R12 K11 ["UIStroke"]
      115 SETTABLEKS                       R12 R11 K5 ["pseudo"]
      117 DUPTABLE                         R12 K14 [{"Color", "Transparency"}]
      118 LOADK                            R14 K25 ["$Color%*BorderColor3"]
      119 MOVE                             R16 R8
      120 NAMECALL                         R14 R14 K10 ["format"]
      122 CALL                             R14 2 1
      123 MOVE                             R13 R14
      124 SETTABLEKS                       R13 R12 K12 ["Color"]
      126 LOADK                            R14 K26 ["$Color%*BorderTransparency"]
      127 MOVE                             R16 R8
      128 NAMECALL                         R14 R14 K10 ["format"]
      130 CALL                             R14 2 1
      131 MOVE                             R13 R14
      132 SETTABLEKS                       R13 R12 K13 ["Transparency"]
      134 SETTABLEKS                       R12 R11 K6 ["properties"]
      136 NEWTABLE                         R12 0 2
      138 DUPTABLE                         R13 K19 [{"name", "value"}]
      139 LOADK                            R15 K27 ["Color%*BorderColor3"]
      140 MOVE                             R17 R8
      141 NAMECALL                         R15 R15 K10 ["format"]
      143 CALL                             R15 2 1
      144 MOVE                             R14 R15
      145 SETTABLEKS                       R14 R13 K17 ["name"]
      147 GETTABLEKS                       R14 R7 K28 ["Border"]
      149 GETTABLEKS                       R14 R14 K21 ["Color3"]
      151 SETTABLEKS                       R14 R13 K18 ["value"]
      153 DUPTABLE                         R14 K19 [{"name", "value"}]
      154 LOADK                            R16 K29 ["Color%*BorderTransparency"]
      155 MOVE                             R18 R8
      156 NAMECALL                         R16 R16 K10 ["format"]
      158 CALL                             R16 2 1
      159 MOVE                             R15 R16
      160 SETTABLEKS                       R15 R14 K17 ["name"]
      162 GETTABLEKS                       R15 R7 K28 ["Border"]
      164 GETTABLEKS                       R15 R15 K13 ["Transparency"]
      166 SETTABLEKS                       R15 R14 K18 ["value"]
      168 SETLIST                          R12 R13 2 [1]
      170 SETTABLEKS                       R12 R11 K7 ["attributes"]
      172 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      174 MOVE                             R10 R2
      175 GETIMPORT                        R9 K24 [table.insert]
      177 CALL                             R9 2 0
      178 FORGLOOP                         R3 2 ; [-77]
      180 NEWTABLE                         R3 4 0
      182 GETIMPORT                        R4 K33 [Enum.BorderStrokePosition.Center]
      184 SETTABLEKS                       R4 R3 K34 ["center"]
      186 GETIMPORT                        R4 K36 [Enum.BorderStrokePosition.Inner]
      188 SETTABLEKS                       R4 R3 K37 ["inner"]
      190 GETIMPORT                        R4 K39 [Enum.BorderStrokePosition.Outer]
      192 SETTABLEKS                       R4 R3 K40 ["outer"]
      194 MOVE                             R4 R3
      195 LOADNIL                          R5
      196 LOADNIL                          R6
      197 FORGPREP                         R4
      198 DUPTABLE                         R11 K41 [{"tag", "pseudo", "properties"}]
      199 LOADK                            R13 K42 ["stroke-position-%*"]
      200 MOVE                             R15 R7
      201 NAMECALL                         R13 R13 K10 ["format"]
      203 CALL                             R13 2 1
      204 MOVE                             R12 R13
      205 SETTABLEKS                       R12 R11 K4 ["tag"]
      207 LOADK                            R12 K11 ["UIStroke"]
      208 SETTABLEKS                       R12 R11 K5 ["pseudo"]
      210 DUPTABLE                         R12 K43 [{"BorderStrokePosition"}]
      211 SETTABLEKS                       R8 R12 K31 ["BorderStrokePosition"]
      213 SETTABLEKS                       R12 R11 K6 ["properties"]
      215 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      217 MOVE                             R10 R2
      218 GETIMPORT                        R9 K24 [table.insert]
      220 CALL                             R9 2 0
      221 FORGLOOP                         R4 2 ; [-24]
      223 RETURN                           R2 1

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
       90 JUMPIFEQKS                       R8 K24 ["emphasis"] ; [+168]
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
      182 DUPTABLE                         R12 K32 [{"tag", "pseudo", "properties", "attributes", "deprecatedFor"}]
      183 LOADK                            R14 K33 ["stroke-%*"]
      184 MOVE                             R16 R8
      185 NAMECALL                         R14 R14 K8 ["format"]
      187 CALL                             R14 2 1
      188 MOVE                             R13 R14
      189 SETTABLEKS                       R13 R12 K2 ["tag"]
      191 LOADK                            R13 K34 ["UIStroke"]
      192 SETTABLEKS                       R13 R12 K31 ["pseudo"]
      194 DUPTABLE                         R13 K36 [{"Color", "Transparency"}]
      195 LOADK                            R15 K12 ["$ColorSystem%*Color3"]
      196 MOVE                             R17 R9
      197 NAMECALL                         R15 R15 K8 ["format"]
      199 CALL                             R15 2 1
      200 MOVE                             R14 R15
      201 SETTABLEKS                       R14 R13 K35 ["Color"]
      203 LOADK                            R15 K13 ["$ColorSystem%*Transparency"]
      204 MOVE                             R17 R9
      205 NAMECALL                         R15 R15 K8 ["format"]
      207 CALL                             R15 2 1
      208 MOVE                             R14 R15
      209 SETTABLEKS                       R14 R13 K20 ["Transparency"]
      211 SETTABLEKS                       R13 R12 K3 ["properties"]
      213 NEWTABLE                         R13 0 2
      215 DUPTABLE                         R14 K16 [{"name", "value"}]
      216 LOADK                            R16 K17 ["ColorSystem%*Color3"]
      217 MOVE                             R18 R9
      218 NAMECALL                         R16 R16 K8 ["format"]
      220 CALL                             R16 2 1
      221 MOVE                             R15 R16
      222 SETTABLEKS                       R15 R14 K14 ["name"]
      224 GETTABLEKS                       R15 R7 K18 ["Color3"]
      226 SETTABLEKS                       R15 R14 K15 ["value"]
      228 DUPTABLE                         R15 K16 [{"name", "value"}]
      229 LOADK                            R17 K19 ["ColorSystem%*Transparency"]
      230 MOVE                             R19 R9
      231 NAMECALL                         R17 R17 K8 ["format"]
      233 CALL                             R17 2 1
      234 MOVE                             R16 R17
      235 SETTABLEKS                       R16 R15 K14 ["name"]
      237 GETTABLEKS                       R16 R7 K20 ["Transparency"]
      239 SETTABLEKS                       R16 R15 K15 ["value"]
      241 SETLIST                          R13 R14 2 [1]
      243 SETTABLEKS                       R13 R12 K4 ["attributes"]
      245 LOADK                            R14 K33 ["stroke-%*"]
      246 MOVE                             R16 R6
      247 NAMECALL                         R14 R14 K8 ["format"]
      249 CALL                             R14 2 1
      250 MOVE                             R13 R14
      251 SETTABLEKS                       R13 R12 K5 ["deprecatedFor"]
      253 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      255 MOVE                             R11 R1
      256 GETIMPORT                        R10 K23 [table.insert]
      258 CALL                             R10 2 0
      259 FORGLOOP                         R3 2 ; [-252]
      261 RETURN                           R1 1

PROTO_18:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"tag", "properties"}]
        3 LOADK                            R2 K3 ["x-default-transparency"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 DUPTABLE                         R2 K5 [{"BackgroundTransparency"}]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K4 ["BackgroundTransparency"]
       10 SETTABLEKS                       R2 R1 K1 ["properties"]
       12 DUPTABLE                         R2 K2 [{"tag", "properties"}]
       13 LOADK                            R3 K6 ["x-default-text-size"]
       14 SETTABLEKS                       R3 R2 K0 ["tag"]
       16 DUPTABLE                         R3 K8 [{"TextSize"}]
       17 LOADN                            R4 8
       18 SETTABLEKS                       R4 R3 K7 ["TextSize"]
       20 SETTABLEKS                       R3 R2 K1 ["properties"]
       22 SETLIST                          R0 R1 2 [1]
       24 RETURN                           R0 1

PROTO_19:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{"tag", "pseudo", "properties"}]
        3 LOADK                            R2 K4 ["row"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 LOADK                            R2 K5 ["UIListLayout"]
        7 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        9 DUPTABLE                         R2 K8 [{"FillDirection", "SortOrder"}]
       10 GETIMPORT                        R3 K11 [Enum.FillDirection.Horizontal]
       12 SETTABLEKS                       R3 R2 K6 ["FillDirection"]
       14 GETIMPORT                        R3 K13 [Enum.SortOrder.LayoutOrder]
       16 SETTABLEKS                       R3 R2 K7 ["SortOrder"]
       18 SETTABLEKS                       R2 R1 K2 ["properties"]
       20 DUPTABLE                         R2 K3 [{"tag", "pseudo", "properties"}]
       21 LOADK                            R3 K14 ["col"]
       22 SETTABLEKS                       R3 R2 K0 ["tag"]
       24 LOADK                            R3 K5 ["UIListLayout"]
       25 SETTABLEKS                       R3 R2 K1 ["pseudo"]
       27 DUPTABLE                         R3 K8 [{"FillDirection", "SortOrder"}]
       28 GETIMPORT                        R4 K16 [Enum.FillDirection.Vertical]
       30 SETTABLEKS                       R4 R3 K6 ["FillDirection"]
       32 GETIMPORT                        R4 K13 [Enum.SortOrder.LayoutOrder]
       34 SETTABLEKS                       R4 R3 K7 ["SortOrder"]
       36 SETTABLEKS                       R3 R2 K2 ["properties"]
       38 SETLIST                          R0 R1 2 [1]
       40 NEWTABLE                         R1 0 6
       42 DUPTABLE                         R2 K3 [{"tag", "pseudo", "properties"}]
       43 LOADK                            R3 K17 ["align-x-left"]
       44 SETTABLEKS                       R3 R2 K0 ["tag"]
       46 LOADK                            R3 K5 ["UIListLayout"]
       47 SETTABLEKS                       R3 R2 K1 ["pseudo"]
       49 DUPTABLE                         R3 K19 [{"HorizontalAlignment"}]
       50 GETIMPORT                        R4 K21 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R4 R3 K18 ["HorizontalAlignment"]
       54 SETTABLEKS                       R3 R2 K2 ["properties"]
       56 DUPTABLE                         R3 K3 [{"tag", "pseudo", "properties"}]
       57 LOADK                            R4 K22 ["align-x-center"]
       58 SETTABLEKS                       R4 R3 K0 ["tag"]
       60 LOADK                            R4 K5 ["UIListLayout"]
       61 SETTABLEKS                       R4 R3 K1 ["pseudo"]
       63 DUPTABLE                         R4 K19 [{"HorizontalAlignment"}]
       64 GETIMPORT                        R5 K24 [Enum.HorizontalAlignment.Center]
       66 SETTABLEKS                       R5 R4 K18 ["HorizontalAlignment"]
       68 SETTABLEKS                       R4 R3 K2 ["properties"]
       70 DUPTABLE                         R4 K3 [{"tag", "pseudo", "properties"}]
       71 LOADK                            R5 K25 ["align-x-right"]
       72 SETTABLEKS                       R5 R4 K0 ["tag"]
       74 LOADK                            R5 K5 ["UIListLayout"]
       75 SETTABLEKS                       R5 R4 K1 ["pseudo"]
       77 DUPTABLE                         R5 K19 [{"HorizontalAlignment"}]
       78 GETIMPORT                        R6 K27 [Enum.HorizontalAlignment.Right]
       80 SETTABLEKS                       R6 R5 K18 ["HorizontalAlignment"]
       82 SETTABLEKS                       R5 R4 K2 ["properties"]
       84 DUPTABLE                         R5 K3 [{"tag", "pseudo", "properties"}]
       85 LOADK                            R6 K28 ["align-y-top"]
       86 SETTABLEKS                       R6 R5 K0 ["tag"]
       88 LOADK                            R6 K5 ["UIListLayout"]
       89 SETTABLEKS                       R6 R5 K1 ["pseudo"]
       91 DUPTABLE                         R6 K30 [{"VerticalAlignment"}]
       92 GETIMPORT                        R7 K32 [Enum.VerticalAlignment.Top]
       94 SETTABLEKS                       R7 R6 K29 ["VerticalAlignment"]
       96 SETTABLEKS                       R6 R5 K2 ["properties"]
       98 DUPTABLE                         R6 K3 [{"tag", "pseudo", "properties"}]
       99 LOADK                            R7 K33 ["align-y-center"]
      100 SETTABLEKS                       R7 R6 K0 ["tag"]
      102 LOADK                            R7 K5 ["UIListLayout"]
      103 SETTABLEKS                       R7 R6 K1 ["pseudo"]
      105 DUPTABLE                         R7 K30 [{"VerticalAlignment"}]
      106 GETIMPORT                        R8 K34 [Enum.VerticalAlignment.Center]
      108 SETTABLEKS                       R8 R7 K29 ["VerticalAlignment"]
      110 SETTABLEKS                       R7 R6 K2 ["properties"]
      112 DUPTABLE                         R7 K3 [{"tag", "pseudo", "properties"}]
      113 LOADK                            R8 K35 ["align-y-bottom"]
      114 SETTABLEKS                       R8 R7 K0 ["tag"]
      116 LOADK                            R8 K5 ["UIListLayout"]
      117 SETTABLEKS                       R8 R7 K1 ["pseudo"]
      119 DUPTABLE                         R8 K30 [{"VerticalAlignment"}]
      120 GETIMPORT                        R9 K37 [Enum.VerticalAlignment.Bottom]
      122 SETTABLEKS                       R9 R8 K29 ["VerticalAlignment"]
      124 SETTABLEKS                       R8 R7 K2 ["properties"]
      126 SETLIST                          R1 R2 6 [1]
      128 NEWTABLE                         R2 0 2
      130 DUPTABLE                         R3 K3 [{"tag", "pseudo", "properties"}]
      131 LOADK                            R4 K38 ["wrap"]
      132 SETTABLEKS                       R4 R3 K0 ["tag"]
      134 LOADK                            R4 K5 ["UIListLayout"]
      135 SETTABLEKS                       R4 R3 K1 ["pseudo"]
      137 DUPTABLE                         R4 K40 [{"Wraps"}]
      138 LOADB                            R5 1
      139 SETTABLEKS                       R5 R4 K39 ["Wraps"]
      141 SETTABLEKS                       R4 R3 K2 ["properties"]
      143 DUPTABLE                         R4 K3 [{"tag", "pseudo", "properties"}]
      144 LOADK                            R5 K41 ["no-wrap"]
      145 SETTABLEKS                       R5 R4 K0 ["tag"]
      147 LOADK                            R5 K5 ["UIListLayout"]
      148 SETTABLEKS                       R5 R4 K1 ["pseudo"]
      150 DUPTABLE                         R5 K40 [{"Wraps"}]
      151 LOADB                            R6 0
      152 SETTABLEKS                       R6 R5 K39 ["Wraps"]
      154 SETTABLEKS                       R5 R4 K2 ["properties"]
      156 SETLIST                          R2 R3 2 [1]
      158 NEWTABLE                         R3 0 0
      160 DUPTABLE                         R4 K47 [{"none", "fill", "around", "between", "evenly"}]
      161 GETIMPORT                        R5 K50 [Enum.UIFlexAlignment.None]
      163 SETTABLEKS                       R5 R4 K42 ["none"]
      165 GETIMPORT                        R5 K52 [Enum.UIFlexAlignment.Fill]
      167 SETTABLEKS                       R5 R4 K43 ["fill"]
      169 GETIMPORT                        R5 K54 [Enum.UIFlexAlignment.SpaceAround]
      171 SETTABLEKS                       R5 R4 K44 ["around"]
      173 GETIMPORT                        R5 K56 [Enum.UIFlexAlignment.SpaceBetween]
      175 SETTABLEKS                       R5 R4 K45 ["between"]
      177 GETIMPORT                        R5 K58 [Enum.UIFlexAlignment.SpaceEvenly]
      179 SETTABLEKS                       R5 R4 K46 ["evenly"]
      181 MOVE                             R5 R4
      182 LOADNIL                          R6
      183 LOADNIL                          R7
      184 FORGPREP                         R5
      185 DUPTABLE                         R12 K3 [{"tag", "pseudo", "properties"}]
      186 LOADK                            R14 K59 ["flex-%*"]
      187 MOVE                             R16 R8
      188 NAMECALL                         R14 R14 K60 ["format"]
      190 CALL                             R14 2 1
      191 MOVE                             R13 R14
      192 SETTABLEKS                       R13 R12 K0 ["tag"]
      194 LOADK                            R13 K5 ["UIListLayout"]
      195 SETTABLEKS                       R13 R12 K1 ["pseudo"]
      197 DUPTABLE                         R13 K63 [{"HorizontalFlex", "VerticalFlex"}]
      198 SETTABLEKS                       R9 R13 K61 ["HorizontalFlex"]
      200 SETTABLEKS                       R9 R13 K62 ["VerticalFlex"]
      202 SETTABLEKS                       R13 R12 K2 ["properties"]
      204 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      206 MOVE                             R11 R3
      207 GETIMPORT                        R10 K66 [table.insert]
      209 CALL                             R10 2 0
      210 DUPTABLE                         R12 K3 [{"tag", "pseudo", "properties"}]
      211 LOADK                            R14 K67 ["flex-x-%*"]
      212 MOVE                             R16 R8
      213 NAMECALL                         R14 R14 K60 ["format"]
      215 CALL                             R14 2 1
      216 MOVE                             R13 R14
      217 SETTABLEKS                       R13 R12 K0 ["tag"]
      219 LOADK                            R13 K5 ["UIListLayout"]
      220 SETTABLEKS                       R13 R12 K1 ["pseudo"]
      222 DUPTABLE                         R13 K68 [{"HorizontalFlex"}]
      223 SETTABLEKS                       R9 R13 K61 ["HorizontalFlex"]
      225 SETTABLEKS                       R13 R12 K2 ["properties"]
      227 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      229 MOVE                             R11 R3
      230 GETIMPORT                        R10 K66 [table.insert]
      232 CALL                             R10 2 0
      233 DUPTABLE                         R12 K3 [{"tag", "pseudo", "properties"}]
      234 LOADK                            R14 K69 ["flex-y-%*"]
      235 MOVE                             R16 R8
      236 NAMECALL                         R14 R14 K60 ["format"]
      238 CALL                             R14 2 1
      239 MOVE                             R13 R14
      240 SETTABLEKS                       R13 R12 K0 ["tag"]
      242 LOADK                            R13 K5 ["UIListLayout"]
      243 SETTABLEKS                       R13 R12 K1 ["pseudo"]
      245 DUPTABLE                         R13 K70 [{"VerticalFlex"}]
      246 SETTABLEKS                       R9 R13 K62 ["VerticalFlex"]
      248 SETTABLEKS                       R13 R12 K2 ["properties"]
      250 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      252 MOVE                             R11 R3
      253 GETIMPORT                        R10 K66 [table.insert]
      255 CALL                             R10 2 0
      256 FORGLOOP                         R5 2 ; [-72]
      258 NEWTABLE                         R5 8 0
      260 GETIMPORT                        R6 K73 [Enum.ItemLineAlignment.Automatic]
      262 SETTABLEKS                       R6 R5 K74 ["auto"]
      264 GETIMPORT                        R6 K76 [Enum.ItemLineAlignment.Start]
      266 SETTABLEKS                       R6 R5 K77 ["start"]
      268 GETIMPORT                        R6 K78 [Enum.ItemLineAlignment.Center]
      270 SETTABLEKS                       R6 R5 K79 ["center"]
      272 GETIMPORT                        R6 K81 [Enum.ItemLineAlignment.End]
      274 SETTABLEKS                       R6 R5 K82 ["end"]
      276 GETIMPORT                        R6 K84 [Enum.ItemLineAlignment.Stretch]
      278 SETTABLEKS                       R6 R5 K85 ["stretch"]
      280 NEWTABLE                         R6 0 0
      282 MOVE                             R7 R5
      283 LOADNIL                          R8
      284 LOADNIL                          R9
      285 FORGPREP                         R7
      286 DUPTABLE                         R14 K3 [{"tag", "pseudo", "properties"}]
      287 LOADK                            R16 K86 ["items-%*"]
      288 MOVE                             R18 R10
      289 NAMECALL                         R16 R16 K60 ["format"]
      291 CALL                             R16 2 1
      292 MOVE                             R15 R16
      293 SETTABLEKS                       R15 R14 K0 ["tag"]
      295 LOADK                            R15 K5 ["UIListLayout"]
      296 SETTABLEKS                       R15 R14 K1 ["pseudo"]
      298 DUPTABLE                         R15 K87 [{"ItemLineAlignment"}]
      299 SETTABLEKS                       R11 R15 K71 ["ItemLineAlignment"]
      301 SETTABLEKS                       R15 R14 K2 ["properties"]
      303 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      305 MOVE                             R13 R6
      306 GETIMPORT                        R12 K66 [table.insert]
      308 CALL                             R12 2 0
      309 FORGLOOP                         R7 2 ; [-24]
      311 GETUPVAL                         R7 0
      312 GETTABLEKS                       R7 R7 K88 ["joinArrays"]
      314 MOVE                             R8 R0
      315 MOVE                             R9 R1
      316 MOVE                             R10 R2
      317 MOVE                             R11 R3
      318 MOVE                             R12 R6
      319 CALL                             R7 5 -1
      320 RETURN                           R7 -1

PROTO_20:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K3 [{"tag", "pseudo", "properties"}]
        3 LOADK                            R2 K4 ["grow"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 LOADK                            R2 K5 ["UIFlexItem"]
        7 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        9 DUPTABLE                         R2 K7 [{"FlexMode"}]
       10 GETIMPORT                        R3 K11 [Enum.UIFlexMode.Grow]
       12 SETTABLEKS                       R3 R2 K6 ["FlexMode"]
       14 SETTABLEKS                       R2 R1 K2 ["properties"]
       16 DUPTABLE                         R2 K3 [{"tag", "pseudo", "properties"}]
       17 LOADK                            R3 K12 ["shrink"]
       18 SETTABLEKS                       R3 R2 K0 ["tag"]
       20 LOADK                            R3 K5 ["UIFlexItem"]
       21 SETTABLEKS                       R3 R2 K1 ["pseudo"]
       23 DUPTABLE                         R3 K7 [{"FlexMode"}]
       24 GETIMPORT                        R4 K14 [Enum.UIFlexMode.Shrink]
       26 SETTABLEKS                       R4 R3 K6 ["FlexMode"]
       28 SETTABLEKS                       R3 R2 K2 ["properties"]
       30 DUPTABLE                         R3 K3 [{"tag", "pseudo", "properties"}]
       31 LOADK                            R4 K15 ["fill"]
       32 SETTABLEKS                       R4 R3 K0 ["tag"]
       34 LOADK                            R4 K5 ["UIFlexItem"]
       35 SETTABLEKS                       R4 R3 K1 ["pseudo"]
       37 DUPTABLE                         R4 K7 [{"FlexMode"}]
       38 GETIMPORT                        R5 K17 [Enum.UIFlexMode.Fill]
       40 SETTABLEKS                       R5 R4 K6 ["FlexMode"]
       42 SETTABLEKS                       R4 R3 K2 ["properties"]
       44 DUPTABLE                         R4 K3 [{"tag", "pseudo", "properties"}]
       45 LOADK                            R5 K18 ["no-flex"]
       46 SETTABLEKS                       R5 R4 K0 ["tag"]
       48 LOADK                            R5 K5 ["UIFlexItem"]
       49 SETTABLEKS                       R5 R4 K1 ["pseudo"]
       51 DUPTABLE                         R5 K7 [{"FlexMode"}]
       52 GETIMPORT                        R6 K20 [Enum.UIFlexMode.None]
       54 SETTABLEKS                       R6 R5 K6 ["FlexMode"]
       56 SETTABLEKS                       R5 R4 K2 ["properties"]
       58 SETLIST                          R0 R1 4 [1]
       60 NEWTABLE                         R1 0 5
       62 LOADN                            R2 1
       63 LOADN                            R3 2
       64 LOADN                            R4 3
       65 LOADN                            R5 4
       66 LOADN                            R6 5
       67 SETLIST                          R1 R2 5 [1]
       69 NEWTABLE                         R2 0 0
       71 NEWTABLE                         R3 0 0
       73 MOVE                             R4 R1
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 DUPTABLE                         R11 K3 [{"tag", "pseudo", "properties"}]
       78 LOADK                            R13 K21 ["grow-%*"]
       79 MOVE                             R15 R7
       80 NAMECALL                         R13 R13 K22 ["format"]
       82 CALL                             R13 2 1
       83 MOVE                             R12 R13
       84 SETTABLEKS                       R12 R11 K0 ["tag"]
       86 LOADK                            R12 K5 ["UIFlexItem"]
       87 SETTABLEKS                       R12 R11 K1 ["pseudo"]
       89 DUPTABLE                         R12 K24 [{"FlexMode", "GrowRatio"}]
       90 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Custom]
       92 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
       94 SETTABLEKS                       R7 R12 K23 ["GrowRatio"]
       96 SETTABLEKS                       R12 R11 K2 ["properties"]
       98 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      100 MOVE                             R10 R2
      101 GETIMPORT                        R9 K29 [table.insert]
      103 CALL                             R9 2 0
      104 DUPTABLE                         R11 K3 [{"tag", "pseudo", "properties"}]
      105 LOADK                            R13 K30 ["shrink-%*"]
      106 MOVE                             R15 R7
      107 NAMECALL                         R13 R13 K22 ["format"]
      109 CALL                             R13 2 1
      110 MOVE                             R12 R13
      111 SETTABLEKS                       R12 R11 K0 ["tag"]
      113 LOADK                            R12 K5 ["UIFlexItem"]
      114 SETTABLEKS                       R12 R11 K1 ["pseudo"]
      116 DUPTABLE                         R12 K32 [{"FlexMode", "ShrinkRatio"}]
      117 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Custom]
      119 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
      121 SETTABLEKS                       R7 R12 K31 ["ShrinkRatio"]
      123 SETTABLEKS                       R12 R11 K2 ["properties"]
      125 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      127 MOVE                             R10 R3
      128 GETIMPORT                        R9 K29 [table.insert]
      130 CALL                             R9 2 0
      131 FORGLOOP                         R4 1 ; [-55]
      133 NEWTABLE                         R4 8 0
      135 GETIMPORT                        R5 K35 [Enum.ItemLineAlignment.Automatic]
      137 SETTABLEKS                       R5 R4 K36 ["auto"]
      139 GETIMPORT                        R5 K38 [Enum.ItemLineAlignment.Start]
      141 SETTABLEKS                       R5 R4 K39 ["start"]
      143 GETIMPORT                        R5 K41 [Enum.ItemLineAlignment.Center]
      145 SETTABLEKS                       R5 R4 K42 ["center"]
      147 GETIMPORT                        R5 K44 [Enum.ItemLineAlignment.End]
      149 SETTABLEKS                       R5 R4 K45 ["end"]
      151 GETIMPORT                        R5 K47 [Enum.ItemLineAlignment.Stretch]
      153 SETTABLEKS                       R5 R4 K48 ["stretch"]
      155 NEWTABLE                         R5 0 0
      157 MOVE                             R6 R4
      158 LOADNIL                          R7
      159 LOADNIL                          R8
      160 FORGPREP                         R6
      161 DUPTABLE                         R13 K3 [{"tag", "pseudo", "properties"}]
      162 LOADK                            R15 K49 ["self-%*"]
      163 MOVE                             R17 R9
      164 NAMECALL                         R15 R15 K22 ["format"]
      166 CALL                             R15 2 1
      167 MOVE                             R14 R15
      168 SETTABLEKS                       R14 R13 K0 ["tag"]
      170 LOADK                            R14 K5 ["UIFlexItem"]
      171 SETTABLEKS                       R14 R13 K1 ["pseudo"]
      173 DUPTABLE                         R14 K50 [{"ItemLineAlignment"}]
      174 SETTABLEKS                       R10 R14 K33 ["ItemLineAlignment"]
      176 SETTABLEKS                       R14 R13 K2 ["properties"]
      178 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      180 MOVE                             R12 R5
      181 GETIMPORT                        R11 K29 [table.insert]
      183 CALL                             R11 2 0
      184 FORGLOOP                         R6 2 ; [-24]
      186 GETUPVAL                         R6 0
      187 GETTABLEKS                       R6 R6 K51 ["joinArrays"]
      189 MOVE                             R7 R0
      190 MOVE                             R8 R2
      191 MOVE                             R9 R3
      192 MOVE                             R10 R5
      193 CALL                             R6 4 -1
      194 RETURN                           R6 -1

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
      122 DUPTABLE                         R6 K13 [{"tag", "properties"}]
      123 LOADK                            R7 K42 ["text-wrap"]
      124 SETTABLEKS                       R7 R6 K11 ["tag"]
      126 DUPTABLE                         R7 K44 [{"TextWrapped"}]
      127 LOADB                            R8 1
      128 SETTABLEKS                       R8 R7 K43 ["TextWrapped"]
      130 SETTABLEKS                       R7 R6 K12 ["properties"]
      132 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      134 MOVE                             R5 R0
      135 GETIMPORT                        R4 K19 [table.insert]
      137 CALL                             R4 2 0
      138 DUPTABLE                         R6 K13 [{"tag", "properties"}]
      139 LOADK                            R7 K45 ["text-no-wrap"]
      140 SETTABLEKS                       R7 R6 K11 ["tag"]
      142 DUPTABLE                         R7 K44 [{"TextWrapped"}]
      143 LOADB                            R8 0
      144 SETTABLEKS                       R8 R7 K43 ["TextWrapped"]
      146 SETTABLEKS                       R7 R6 K12 ["properties"]
      148 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      150 MOVE                             R5 R0
      151 GETIMPORT                        R4 K19 [table.insert]
      153 CALL                             R4 2 0
      154 RETURN                           R0 1

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
        2 DUPTABLE                         R1 K3 [{"left", "center", "right"}]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["left"]
        6 LOADK                            R2 K4 [0.5]
        7 SETTABLEKS                       R2 R1 K1 ["center"]
        9 LOADN                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["right"]
       12 DUPTABLE                         R2 K7 [{"top", "center", "bottom"}]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K5 ["top"]
       16 LOADK                            R3 K4 [0.5]
       17 SETTABLEKS                       R3 R2 K1 ["center"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K6 ["bottom"]
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R2
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 DUPTABLE                         R15 K10 [{"tag", "properties"}]
       31 LOADK                            R17 K11 ["position-%*-%*"]
       32 MOVE                             R19 R11
       33 MOVE                             R20 R6
       34 NAMECALL                         R17 R17 K12 ["format"]
       36 CALL                             R17 3 1
       37 MOVE                             R16 R17
       38 SETTABLEKS                       R16 R15 K8 ["tag"]
       40 DUPTABLE                         R16 K14 [{"Position"}]
       41 GETIMPORT                        R17 K17 [UDim2.fromScale]
       43 MOVE                             R18 R7
       44 MOVE                             R19 R12
       45 CALL                             R17 2 1
       46 SETTABLEKS                       R17 R16 K13 ["Position"]
       48 SETTABLEKS                       R16 R15 K9 ["properties"]
       50 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       52 MOVE                             R14 R0
       53 GETIMPORT                        R13 K20 [table.insert]
       55 CALL                             R13 2 0
       56 FORGLOOP                         R8 2 ; [-27]
       58 FORGLOOP                         R3 2 ; [-33]
       60 RETURN                           R0 1

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K3 [{"left", "center", "right"}]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["left"]
        6 LOADK                            R2 K4 [0.5]
        7 SETTABLEKS                       R2 R1 K1 ["center"]
        9 LOADN                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["right"]
       12 DUPTABLE                         R2 K7 [{"top", "center", "bottom"}]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K5 ["top"]
       16 LOADK                            R3 K4 [0.5]
       17 SETTABLEKS                       R3 R2 K1 ["center"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K6 ["bottom"]
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R2
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 DUPTABLE                         R15 K10 [{"tag", "properties"}]
       31 LOADK                            R17 K11 ["anchor-%*-%*"]
       32 MOVE                             R19 R11
       33 MOVE                             R20 R6
       34 NAMECALL                         R17 R17 K12 ["format"]
       36 CALL                             R17 3 1
       37 MOVE                             R16 R17
       38 SETTABLEKS                       R16 R15 K8 ["tag"]
       40 DUPTABLE                         R16 K14 [{"AnchorPoint"}]
       41 GETIMPORT                        R17 K17 [Vector2.new]
       43 MOVE                             R18 R7
       44 MOVE                             R19 R12
       45 CALL                             R17 2 1
       46 SETTABLEKS                       R17 R16 K13 ["AnchorPoint"]
       48 SETTABLEKS                       R16 R15 K9 ["properties"]
       50 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       52 MOVE                             R14 R0
       53 GETIMPORT                        R13 K20 [table.insert]
       55 CALL                             R13 2 0
       56 FORGLOOP                         R8 2 ; [-27]
       58 FORGLOOP                         R3 2 ; [-33]
       60 RETURN                           R0 1

PROTO_25:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"tag", "properties"}]
        3 LOADK                            R2 K3 ["clip"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 DUPTABLE                         R2 K5 [{"ClipsDescendants"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["ClipsDescendants"]
       10 SETTABLEKS                       R2 R1 K1 ["properties"]
       12 DUPTABLE                         R2 K2 [{"tag", "properties"}]
       13 LOADK                            R3 K6 ["no-clip"]
       14 SETTABLEKS                       R3 R2 K0 ["tag"]
       16 DUPTABLE                         R3 K5 [{"ClipsDescendants"}]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K4 ["ClipsDescendants"]
       20 SETTABLEKS                       R3 R2 K1 ["properties"]
       22 SETLIST                          R0 R1 2 [1]
       24 RETURN                           R0 1

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
       46 DUPTABLE                         R9 K3 [{"tag", "pseudo", "properties"}]
       47 LOADK                            R11 K4 ["aspect-%*-%*"]
       48 GETTABLEN                        R13 R6 1
       49 GETTABLEN                        R14 R6 2
       50 NAMECALL                         R11 R11 K5 ["format"]
       52 CALL                             R11 3 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R10 R9 K0 ["tag"]
       56 LOADK                            R10 K6 ["UIAspectRatioConstraint"]
       57 SETTABLEKS                       R10 R9 K1 ["pseudo"]
       59 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       60 GETTABLEN                        R13 R6 1
       61 GETTABLEN                        R14 R6 2
       62 DIV                              R12 R13 R14
       63 MULK                             R14 R12 K9 [1000]
       64 FASTCALL1                        MATH_ROUND R14 ; [+2]
       65 GETIMPORT                        R13 K12 [math.round]
       67 CALL                             R13 1 1
       68 DIVK                             R11 R13 K9 [1000]
       69 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
       71 SETTABLEKS                       R10 R9 K2 ["properties"]
       73 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       75 MOVE                             R8 R0
       76 GETIMPORT                        R7 K15 [table.insert]
       78 CALL                             R7 2 0
       79 GETTABLEN                        R7 R6 1
       80 GETTABLEN                        R8 R6 2
       81 JUMPIFEQ                         R7 R8 ; [+34]
       83 DUPTABLE                         R9 K3 [{"tag", "pseudo", "properties"}]
       84 LOADK                            R11 K4 ["aspect-%*-%*"]
       85 GETTABLEN                        R13 R6 2
       86 GETTABLEN                        R14 R6 1
       87 NAMECALL                         R11 R11 K5 ["format"]
       89 CALL                             R11 3 1
       90 MOVE                             R10 R11
       91 SETTABLEKS                       R10 R9 K0 ["tag"]
       93 LOADK                            R10 K6 ["UIAspectRatioConstraint"]
       94 SETTABLEKS                       R10 R9 K1 ["pseudo"]
       96 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       97 GETTABLEN                        R13 R6 2
       98 GETTABLEN                        R14 R6 1
       99 DIV                              R12 R13 R14
      100 MULK                             R14 R12 K9 [1000]
      101 FASTCALL1                        MATH_ROUND R14 ; [+2]
      102 GETIMPORT                        R13 K12 [math.round]
      104 CALL                             R13 1 1
      105 DIVK                             R11 R13 K9 [1000]
      106 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
      108 SETTABLEKS                       R10 R9 K2 ["properties"]
      110 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      112 MOVE                             R8 R0
      113 GETIMPORT                        R7 K15 [table.insert]
      115 CALL                             R7 2 0
      116 FORGLOOP                         R2 2 ; [-71]
      118 RETURN                           R0 1

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
