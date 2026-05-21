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
      122 GETUPVAL                         R5 1
      123 GETTABLEKS                       R5 R5 K22 ["FoundationMigrateCryoToDash"]
      125 JUMPIFNOT                        R5 ; [+7]
      126 GETUPVAL                         R4 2
      127 GETTABLEKS                       R4 R4 K23 ["joinArrays"]
      129 MOVE                             R5 R2
      130 MOVE                             R6 R3
      131 CALL                             R4 2 1
      132 RETURN                           R4 1
      133 GETUPVAL                         R4 3
      134 GETTABLEKS                       R4 R4 K24 ["List"]
      136 GETTABLEKS                       R4 R4 K25 ["join"]
      138 MOVE                             R5 R2
      139 MOVE                             R6 R3
      140 CALL                             R4 2 1
      141 RETURN                           R4 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R8 R6 K0 ["name"]
        9 CALL                             R7 1 1
       10 DUPTABLE                         R10 K5 [{"tag", "pseudo", "properties", "attributes"}]
       11 LOADK                            R12 K6 ["radius-%*"]
       12 GETTABLEKS                       R14 R6 K0 ["name"]
       14 NAMECALL                         R12 R12 K7 ["format"]
       16 CALL                             R12 2 1
       17 MOVE                             R11 R12
       18 SETTABLEKS                       R11 R10 K1 ["tag"]
       20 LOADK                            R11 K8 ["UICorner"]
       21 SETTABLEKS                       R11 R10 K2 ["pseudo"]
       23 DUPTABLE                         R11 K10 [{"CornerRadius"}]
       24 LOADK                            R13 K11 ["$Radius%*"]
       25 MOVE                             R15 R7
       26 NAMECALL                         R13 R13 K7 ["format"]
       28 CALL                             R13 2 1
       29 MOVE                             R12 R13
       30 SETTABLEKS                       R12 R11 K9 ["CornerRadius"]
       32 SETTABLEKS                       R11 R10 K3 ["properties"]
       34 NEWTABLE                         R11 0 1
       36 DUPTABLE                         R12 K13 [{"name", "value"}]
       37 LOADK                            R14 K14 ["Radius%*"]
       38 MOVE                             R16 R7
       39 NAMECALL                         R14 R14 K7 ["format"]
       41 CALL                             R14 2 1
       42 MOVE                             R13 R14
       43 SETTABLEKS                       R13 R12 K0 ["name"]
       45 GETTABLEKS                       R13 R6 K15 ["size"]
       47 SETTABLEKS                       R13 R12 K12 ["value"]
       49 SETLIST                          R11 R12 1 [1]
       51 SETTABLEKS                       R11 R10 K4 ["attributes"]
       53 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       55 MOVE                             R9 R1
       56 GETIMPORT                        R8 K18 [table.insert]
       58 CALL                             R8 2 0
       59 FORGLOOP                         R2 2 ; [-54]
       61 RETURN                           R1 1

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
       74 DUPTABLE                         R14 K22 [{"tag", "pseudo", "priority", "properties", "attributes"}]
       75 LOADK                            R16 K11 ["text-%*"]
       76 MOVE                             R18 R6
       77 NAMECALL                         R16 R16 K12 ["format"]
       79 CALL                             R16 2 1
       80 MOVE                             R15 R16
       81 SETTABLEKS                       R15 R14 K6 ["tag"]
       83 LOADK                            R15 K23 ["UIPadding"]
       84 SETTABLEKS                       R15 R14 K20 ["pseudo"]
       86 LOADN                            R15 0
       87 SETTABLEKS                       R15 R14 K21 ["priority"]
       89 DUPTABLE                         R15 K26 [{"PaddingTop", "PaddingBottom"}]
       90 LOADK                            R17 K27 ["$TextPadding%*"]
       91 MOVE                             R19 R8
       92 NAMECALL                         R17 R17 K12 ["format"]
       94 CALL                             R17 2 1
       95 MOVE                             R16 R17
       96 SETTABLEKS                       R16 R15 K24 ["PaddingTop"]
       98 LOADK                            R17 K27 ["$TextPadding%*"]
       99 MOVE                             R19 R8
      100 NAMECALL                         R17 R17 K12 ["format"]
      102 CALL                             R17 2 1
      103 MOVE                             R16 R17
      104 SETTABLEKS                       R16 R15 K25 ["PaddingBottom"]
      106 SETTABLEKS                       R15 R14 K7 ["properties"]
      108 NEWTABLE                         R15 0 1
      110 DUPTABLE                         R16 K18 [{"name", "value"}]
      111 LOADK                            R18 K28 ["TextPadding%*"]
      112 MOVE                             R20 R8
      113 NAMECALL                         R18 R18 K12 ["format"]
      115 CALL                             R18 2 1
      116 MOVE                             R17 R18
      117 SETTABLEKS                       R17 R16 K16 ["name"]
      119 SETTABLEKS                       R9 R16 K17 ["value"]
      121 SETLIST                          R15 R16 1 [1]
      123 SETTABLEKS                       R15 R14 K8 ["attributes"]
      125 SETLIST                          R13 R14 1 [1]
      127 SETTABLEKS                       R13 R12 K9 ["children"]
      129 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      131 MOVE                             R11 R2
      132 GETIMPORT                        R10 K31 [table.insert]
      134 CALL                             R10 2 0
      135 FORGLOOP                         R3 2 ; [-130]
      137 RETURN                           R2 1

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
       22 GETUPVAL                         R14 1
       23 GETTABLEKS                       R14 R14 K9 ["FoundationMigrateCryoToDash"]
       25 JUMPIFNOT                        R14 ; [+55]
       26 GETUPVAL                         R13 2
       27 GETTABLEKS                       R13 R13 K10 ["joinArrays"]
       29 GETUPVAL                         R14 3
       30 GETTABLEKS                       R15 R7 K11 ["body-large"]
       32 GETTABLEKS                       R16 R0 K12 ["Config"]
       34 GETTABLEKS                       R16 R16 K13 ["Text"]
       36 GETTABLEKS                       R16 R16 K14 ["NominalScale"]
       38 CALL                             R14 2 1
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R15 R15 K15 ["rules"]
       42 GETTABLEKS                       R15 R15 K16 ["ListLayoutRules"]
       44 CALL                             R15 0 1
       45 GETUPVAL                         R16 0
       46 GETTABLEKS                       R16 R16 K15 ["rules"]
       48 GETTABLEKS                       R16 R16 K17 ["ListLayoutSpacingRules"]
       50 MOVE                             R17 R2
       51 MOVE                             R18 R3
       52 CALL                             R16 2 1
       53 GETUPVAL                         R17 4
       54 MOVE                             R18 R4
       55 CALL                             R17 1 1
       56 GETUPVAL                         R18 5
       57 MOVE                             R19 R5
       58 CALL                             R18 1 1
       59 GETUPVAL                         R19 0
       60 GETTABLEKS                       R19 R19 K15 ["rules"]
       62 GETTABLEKS                       R19 R19 K18 ["StrokeSizeRules"]
       64 MOVE                             R20 R6
       65 CALL                             R19 1 1
       66 GETUPVAL                         R20 6
       67 MOVE                             R21 R7
       68 GETTABLEKS                       R22 R0 K12 ["Config"]
       70 GETTABLEKS                       R22 R22 K13 ["Text"]
       72 GETTABLEKS                       R22 R22 K14 ["NominalScale"]
       74 CALL                             R20 2 1
       75 GETUPVAL                         R21 7
       76 MOVE                             R22 R8
       77 MOVE                             R23 R9
       78 CALL                             R21 2 1
       79 CALL                             R13 8 1
       80 JUMP                             ; [+56]
       81 GETUPVAL                         R13 8
       82 GETTABLEKS                       R13 R13 K19 ["List"]
       84 GETTABLEKS                       R13 R13 K20 ["join"]
       86 GETUPVAL                         R14 3
       87 GETTABLEKS                       R15 R7 K11 ["body-large"]
       89 GETTABLEKS                       R16 R0 K12 ["Config"]
       91 GETTABLEKS                       R16 R16 K13 ["Text"]
       93 GETTABLEKS                       R16 R16 K14 ["NominalScale"]
       95 CALL                             R14 2 1
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K15 ["rules"]
       99 GETTABLEKS                       R15 R15 K16 ["ListLayoutRules"]
      101 CALL                             R15 0 1
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R16 R16 K15 ["rules"]
      105 GETTABLEKS                       R16 R16 K17 ["ListLayoutSpacingRules"]
      107 MOVE                             R17 R2
      108 MOVE                             R18 R3
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 4
      111 MOVE                             R18 R4
      112 CALL                             R17 1 1
      113 GETUPVAL                         R18 5
      114 MOVE                             R19 R5
      115 CALL                             R18 1 1
      116 GETUPVAL                         R19 0
      117 GETTABLEKS                       R19 R19 K15 ["rules"]
      119 GETTABLEKS                       R19 R19 K18 ["StrokeSizeRules"]
      121 MOVE                             R20 R6
      122 CALL                             R19 1 1
      123 GETUPVAL                         R20 6
      124 MOVE                             R21 R7
      125 GETTABLEKS                       R22 R0 K12 ["Config"]
      127 GETTABLEKS                       R22 R22 K13 ["Text"]
      129 GETTABLEKS                       R22 R22 K14 ["NominalScale"]
      131 CALL                             R20 2 1
      132 GETUPVAL                         R21 7
      133 MOVE                             R22 R8
      134 MOVE                             R23 R9
      135 CALL                             R21 2 1
      136 CALL                             R13 8 1
      137 MOVE                             R14 R10
      138 MOVE                             R15 R13
      139 MOVE                             R16 R12
      140 RETURN                           R14 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["Tokens"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K12 ["staticRules"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K4 ["Parent"]
       43 GETTABLEKS                       R7 R7 K13 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Utility"]
       50 GETTABLEKS                       R8 R8 K15 ["Flags"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K16 [PROTO_2]
       54 DUPCLOSURE                       R9 K17 [PROTO_3]
       55 DUPCLOSURE                       R10 K18 [PROTO_4]
       56 DUPCLOSURE                       R11 K19 [PROTO_5]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 DUPCLOSURE                       R12 K20 [PROTO_6]
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R13 K21 [PROTO_7]
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R14 K22 [PROTO_8]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R15 K23 [PROTO_9]
       68 CAPTURE                          VAL R8
       69 DUPCLOSURE                       R16 K24 [PROTO_10]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R2
       79 DUPTABLE                         R17 K27 [{"rulesGenerator", "rules"}]
       80 SETTABLEKS                       R16 R17 K25 ["rulesGenerator"]
       82 DUPTABLE                         R18 K34 [{"DefaultSizeRules", "ListLayoutSpacingRules", "CornerRules", "SizeRules", "TypographyRules", "PaddingRules"}]
       83 SETTABLEKS                       R10 R18 K28 ["DefaultSizeRules"]
       85 SETTABLEKS                       R11 R18 K29 ["ListLayoutSpacingRules"]
       87 SETTABLEKS                       R12 R18 K30 ["CornerRules"]
       89 SETTABLEKS                       R13 R18 K31 ["SizeRules"]
       91 SETTABLEKS                       R14 R18 K32 ["TypographyRules"]
       93 SETTABLEKS                       R15 R18 K33 ["PaddingRules"]
       95 SETTABLEKS                       R18 R17 K26 ["rules"]
       97 RETURN                           R17 1
