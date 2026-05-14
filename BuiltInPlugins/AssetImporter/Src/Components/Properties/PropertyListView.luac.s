PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"absoluteHorizontalSize"}]
        2 GETTABLEKS                       R4 R0 K2 ["x"]
        4 SETTABLEKS                       R4 R3 K0 ["absoluteHorizontalSize"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R4 K6 [{"expanded", "absoluteHorizontalSize", "showReimportCallout"}]
        8 DUPTABLE                         R5 K9 [{"FileGeneral", "ObjectGeneral"}]
        9 LOADB                            R6 1
       10 SETTABLEKS                       R6 R5 K7 ["FileGeneral"]
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K8 ["ObjectGeneral"]
       15 SETTABLEKS                       R5 R4 K3 ["expanded"]
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K4 ["absoluteHorizontalSize"]
       20 GETUPVAL                         R5 0
       21 CALL                             R5 0 1
       22 JUMPIFNOT                        R5 ; [+9]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K10 ["shouldShowCallout"]
       26 MOVE                             R6 R1
       27 GETTABLEKS                       R7 R0 K0 ["props"]
       29 GETTABLEKS                       R7 R7 K11 ["Filename"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K5 ["showReimportCallout"]
       34 NAMECALL                         R2 R0 K12 ["setState"]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K0 ["props"]
       39 GETTABLEKS                       R2 R2 K13 ["Instance"]
       41 NAMECALL                         R2 R2 K14 ["GetStatuses"]
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R0 K15 ["statuses"]
       46 NEWCLOSURE                       R2 P0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K16 ["onContentResize"]
       50 NEWCLOSURE                       R2 P1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K17 ["refreshForStatusCompatibility"]
       54 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["Instance"]
        2 NAMECALL                         R3 R3 K1 ["GetStatuses"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R0 K2 ["statuses"]
        7 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R2 K0 ["Status"]
        8 JUMPIFNOT                        R9 ; [+6]
        9 GETTABLEKS                       R9 R2 K0 ["Status"]
       11 GETTABLEKS                       R9 R9 K1 ["Level"]
       13 JUMPIFEQKS                       R9 K2 ["Error"] ; [+6]
       15 SETTABLEKS                       R8 R2 K0 ["Status"]
       17 LOADB                            R9 1
       18 SETTABLEKS                       R9 R2 K3 ["IsSectionStatus"]
       20 GETTABLEKS                       R10 R8 K1 ["Level"]
       22 JUMPIFNOTEQKS                    R10 K2 ["Error"] ; [+6]
       24 GETTABLEKS                       R9 R1 K4 ["style"]
       26 GETTABLEKS                       R9 R9 K5 ["ErrorStatus"]
       28 JUMP                             ; [+4]
       29 GETTABLEKS                       R9 R1 K4 ["style"]
       31 GETTABLEKS                       R9 R9 K6 ["WarningStatus"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R11 R1 K7 ["localization"]
       36 GETTABLEKS                       R12 R8 K8 ["Type"]
       38 GETTABLEKS                       R13 R8 K1 ["Level"]
       40 GETTABLEKS                       R14 R8 K9 ["Context"]
       42 CALL                             R10 4 1
       43 MOVE                             R12 R3
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R13 R13 K10 ["createElement"]
       47 GETUPVAL                         R14 2
       48 DUPTABLE                         R15 K18 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "Text", "TextWrapped", "TextXAlignment"}]
       49 GETIMPORT                        R16 K21 [Enum.AutomaticSize.XY]
       51 SETTABLEKS                       R16 R15 K11 ["AutomaticSize"]
       53 LENGTH                           R16 R3
       54 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
       56 GETIMPORT                        R16 K24 [UDim2.fromOffset]
       58 GETTABLEKS                       R18 R1 K25 ["absoluteXSize"]
       60 GETTABLEKS                       R19 R1 K4 ["style"]
       62 GETTABLEKS                       R19 R19 K26 ["Sizes"]
       64 GETTABLEKS                       R19 R19 K27 ["StatusMessagePadding"]
       66 SUB                              R17 R18 R19
       67 LOADN                            R18 0
       68 CALL                             R16 2 1
       69 SETTABLEKS                       R16 R15 K13 ["Size"]
       71 SETTABLEKS                       R9 R15 K14 ["Style"]
       73 SETTABLEKS                       R10 R15 K15 ["Text"]
       75 LOADB                            R16 1
       76 SETTABLEKS                       R16 R15 K16 ["TextWrapped"]
       78 GETIMPORT                        R16 K29 [Enum.TextXAlignment.Left]
       80 SETTABLEKS                       R16 R15 K17 ["TextXAlignment"]
       82 CALL                             R13 2 -1
       83 FASTCALL                         TABLE_INSERT ; [+2]
       84 GETIMPORT                        R11 K32 [table.insert]
       86 CALL                             R11 -1 0
       87 FORGLOOP                         R4 2 ; [-82]
       89 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["status"]
        2 JUMPIFNOT                        R3 ; [+18]
        3 GETTABLEKS                       R4 R1 K1 ["Status"]
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETTABLEKS                       R4 R1 K1 ["Status"]
        8 GETTABLEKS                       R4 R4 K2 ["Level"]
       10 JUMPIFEQKS                       R4 K3 ["Error"] ; [+10]
       12 GETTABLEKS                       R4 R3 K2 ["Level"]
       14 JUMPIFNOTEQKS                    R4 K3 ["Error"] ; [+6]
       16 SETTABLEKS                       R3 R1 K1 ["Status"]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R1 K4 ["IsSectionStatus"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["createElement"]
       24 GETUPVAL                         R5 1
       25 DUPTABLE                         R6 K11 [{"Instance", "LayoutOrder", "Localization", "Status", "PropertyMetadata", "OnInteract"}]
       26 GETTABLEKS                       R7 R0 K12 ["importData"]
       28 SETTABLEKS                       R7 R6 K6 ["Instance"]
       30 GETTABLEKS                       R7 R0 K13 ["layoutOrder"]
       32 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       34 GETTABLEKS                       R7 R0 K14 ["localization"]
       36 SETTABLEKS                       R7 R6 K8 ["Localization"]
       38 SETTABLEKS                       R3 R6 K1 ["Status"]
       40 GETTABLEKS                       R7 R0 K15 ["propertyMetadata"]
       42 SETTABLEKS                       R7 R6 K9 ["PropertyMetadata"]
       44 SETTABLEKS                       R2 R6 K10 ["OnInteract"]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["Arrow"]
        2 GETTABLEKS                       R2 R2 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["Spacing"]
        6 GETTABLEKS                       R5 R2 K3 ["X"]
        8 GETTABLEKS                       R5 R5 K4 ["Offset"]
       10 ADD                              R4 R5 R3
       11 JUMPIFNOT                        R0 ; [+18]
       12 GETTABLEKS                       R5 R1 K5 ["Text"]
       14 GETUPVAL                         R6 0
       15 MOVE                             R8 R0
       16 GETTABLEKS                       R9 R5 K6 ["TextSize"]
       18 GETTABLEKS                       R10 R5 K7 ["Font"]
       20 GETIMPORT                        R11 K10 [Vector2.new]
       22 CALL                             R11 0 -1
       23 NAMECALL                         R6 R6 K11 ["GetTextSize"]
       25 CALL                             R6 -1 1
       26 GETTABLEKS                       R8 R6 K3 ["X"]
       28 ADD                              R7 R8 R3
       29 ADD                              R4 R4 R7
       30 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K2 ["state"]
        6 GETTABLEKS                       R4 R4 K0 ["expanded"]
        8 NEWTABLE                         R5 1 0
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K3 ["Section"]
       13 GETUPVAL                         R8 3
       14 NOT                              R7 R8
       15 SETTABLE                         R7 R5 R6
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K0 ["expanded"]
       19 NAMECALL                         R0 R0 K4 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R5 K1 ["Stylizer"]
        4 GETTABLEKS                       R5 R5 K2 ["PropertySectionHeader"]
        6 GETUPVAL                         R6 0
        7 MOVE                             R7 R5
        8 NEWTABLE                         R8 0 2
       10 LOADK                            R9 K3 ["Arrow"]
       11 LOADK                            R10 K4 ["Text"]
       12 SETLIST                          R8 R9 2 [1]
       14 CALL                             R6 2 1
       15 GETTABLEKS                       R7 R0 K0 ["props"]
       17 GETTABLEKS                       R7 R7 K5 ["Localization"]
       19 LOADK                            R9 K6 ["Sections"]
       20 GETTABLEKS                       R10 R1 K7 ["Section"]
       22 NAMECALL                         R7 R7 K8 ["getText"]
       24 CALL                             R7 3 1
       25 LOADNIL                          R8
       26 JUMPIFNOT                        R3 ; [+54]
       27 GETTABLEKS                       R10 R5 K3 ["Arrow"]
       29 GETTABLEKS                       R10 R10 K9 ["Size"]
       31 GETTABLEKS                       R11 R5 K10 ["Spacing"]
       33 GETTABLEKS                       R13 R10 K11 ["X"]
       35 GETTABLEKS                       R13 R13 K12 ["Offset"]
       37 ADD                              R12 R13 R11
       38 JUMPIFNOT                        R7 ; [+18]
       39 GETTABLEKS                       R13 R5 K4 ["Text"]
       41 GETUPVAL                         R14 1
       42 MOVE                             R16 R7
       43 GETTABLEKS                       R17 R13 K13 ["TextSize"]
       45 GETTABLEKS                       R18 R13 K14 ["Font"]
       47 GETIMPORT                        R19 K17 [Vector2.new]
       49 CALL                             R19 0 -1
       50 NAMECALL                         R14 R14 K18 ["GetTextSize"]
       52 CALL                             R14 -1 1
       53 GETTABLEKS                       R16 R14 K11 ["X"]
       55 ADD                              R15 R16 R11
       56 ADD                              R12 R12 R15
       57 MOVE                             R9 R12
       58 GETIMPORT                        R10 K20 [UDim2.new]
       60 LOADN                            R11 1
       61 MINUS                            R12 R9
       62 LOADN                            R13 1
       63 LOADN                            R14 0
       64 CALL                             R10 4 1
       65 GETUPVAL                         R11 2
       66 MOVE                             R12 R4
       67 DUPTABLE                         R13 K22 [{"LayoutOrder", "Size"}]
       68 LOADN                            R14 3
       69 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       71 SETTABLEKS                       R10 R13 K9 ["Size"]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R12 3
       75 GETTABLEKS                       R12 R12 K23 ["createElement"]
       77 MOVE                             R13 R3
       78 MOVE                             R14 R11
       79 CALL                             R12 2 1
       80 MOVE                             R8 R12
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K23 ["createElement"]
       84 GETUPVAL                         R10 4
       85 DUPTABLE                         R11 K30 [{"HorizontalAlignment", "LayoutOrder", "Layout", "OnClick", "Padding", "Size", "Style", "Spacing", "VerticalAlignment"}]
       86 GETTABLEKS                       R12 R5 K24 ["HorizontalAlignment"]
       88 SETTABLEKS                       R12 R11 K24 ["HorizontalAlignment"]
       90 LOADN                            R12 1
       91 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
       93 GETIMPORT                        R12 K34 [Enum.FillDirection.Horizontal]
       95 SETTABLEKS                       R12 R11 K25 ["Layout"]
       97 NEWCLOSURE                       R12 P0
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R2
      102 SETTABLEKS                       R12 R11 K26 ["OnClick"]
      104 GETTABLEKS                       R12 R5 K27 ["Padding"]
      106 SETTABLEKS                       R12 R11 K27 ["Padding"]
      108 GETTABLEKS                       R12 R5 K9 ["Size"]
      110 SETTABLEKS                       R12 R11 K9 ["Size"]
      112 SETTABLEKS                       R6 R11 K28 ["Style"]
      114 GETTABLEKS                       R12 R5 K10 ["Spacing"]
      116 SETTABLEKS                       R12 R11 K10 ["Spacing"]
      118 GETTABLEKS                       R12 R5 K29 ["VerticalAlignment"]
      120 SETTABLEKS                       R12 R11 K29 ["VerticalAlignment"]
      122 DUPTABLE                         R12 K38 [{"Image", "Title", "HeaderStatus"}]
      123 GETUPVAL                         R13 3
      124 GETTABLEKS                       R13 R13 K23 ["createElement"]
      126 GETUPVAL                         R14 5
      127 DUPTABLE                         R15 K40 [{"LayoutOrder", "Style", "StyleModifier"}]
      128 LOADN                            R16 1
      129 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      131 GETTABLEKS                       R16 R5 K3 ["Arrow"]
      133 SETTABLEKS                       R16 R15 K28 ["Style"]
      135 JUMPIFNOT                        R2 ; [+4]
      136 GETUPVAL                         R16 6
      137 GETTABLEKS                       R16 R16 K41 ["Selected"]
      139 JUMPIF                           R16 ; [+1]
      140 LOADNIL                          R16
      141 SETTABLEKS                       R16 R15 K39 ["StyleModifier"]
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K35 ["Image"]
      146 GETUPVAL                         R13 3
      147 GETTABLEKS                       R13 R13 K23 ["createElement"]
      149 GETUPVAL                         R14 7
      150 DUPTABLE                         R15 K44 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
      151 GETIMPORT                        R16 K46 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R16 R15 K42 ["AutomaticSize"]
      155 LOADN                            R16 2
      156 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      158 GETTABLEKS                       R16 R5 K4 ["Text"]
      160 SETTABLEKS                       R16 R15 K28 ["Style"]
      162 SETTABLEKS                       R7 R15 K4 ["Text"]
      164 LOADB                            R16 1
      165 SETTABLEKS                       R16 R15 K43 ["TextWrapped"]
      167 CALL                             R13 2 1
      168 SETTABLEKS                       R13 R12 K36 ["Title"]
      170 SETTABLEKS                       R8 R12 K37 ["HeaderStatus"]
      172 CALL                             R9 3 -1
      173 RETURN                           R9 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K2 ["state"]
        6 GETTABLEKS                       R4 R4 K0 ["expanded"]
        8 NEWTABLE                         R5 1 0
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K3 ["Section"]
       13 GETUPVAL                         R8 3
       14 NOT                              R7 R8
       15 SETTABLE                         R7 R5 R6
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K0 ["expanded"]
       19 NAMECALL                         R0 R0 K4 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 DUPTABLE                         R4 K3 [{"Status", "IsSectionStatus"}]
        3 LOADNIL                          R5
        4 SETTABLEKS                       R5 R4 K1 ["Status"]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["IsSectionStatus"]
        9 DUPTABLE                         R5 K7 [{"absoluteXSize", "style", "localization"}]
       10 GETTABLEKS                       R6 R0 K8 ["state"]
       12 GETTABLEKS                       R6 R6 K9 ["absoluteHorizontalSize"]
       14 SETTABLEKS                       R6 R5 K4 ["absoluteXSize"]
       16 GETTABLEKS                       R6 R3 K10 ["Stylizer"]
       18 SETTABLEKS                       R6 R5 K5 ["style"]
       20 GETTABLEKS                       R6 R3 K11 ["Localization"]
       22 SETTABLEKS                       R6 R5 K6 ["localization"]
       24 GETUPVAL                         R6 0
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R8 R2 K12 ["Section"]
       28 GETTABLEKS                       R9 R0 K13 ["statuses"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R5
       32 MOVE                             R9 R4
       33 CALL                             R6 3 1
       34 NEWTABLE                         R7 0 0
       36 GETIMPORT                        R8 K15 [pairs]
       38 GETTABLEKS                       R9 R2 K16 ["Properties"]
       40 CALL                             R8 1 3
       41 FORGPREP_NEXT                    R8
       42 GETTABLEKS                       R13 R12 K17 ["ShouldHide"]
       44 JUMPIFNOT                        R13 ; [+8]
       45 GETTABLEKS                       R13 R12 K17 ["ShouldHide"]
       47 GETTABLEKS                       R14 R3 K18 ["Instance"]
       49 GETTABLEKS                       R15 R3 K19 ["AssetImportSession"]
       51 CALL                             R13 2 1
       52 JUMPIF                           R13 ; [+37]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R14 R12 K20 ["Name"]
       56 GETTABLEKS                       R15 R0 K13 ["statuses"]
       58 CALL                             R13 2 1
       59 GETUPVAL                         R14 2
       60 MOVE                             R15 R13
       61 CALL                             R14 1 1
       62 DUPTABLE                         R15 K25 [{"importData", "layoutOrder", "propertyMetadata", "localization", "status"}]
       63 GETTABLEKS                       R16 R3 K18 ["Instance"]
       65 SETTABLEKS                       R16 R15 K21 ["importData"]
       67 LENGTH                           R17 R6
       68 ADD                              R16 R11 R17
       69 SETTABLEKS                       R16 R15 K22 ["layoutOrder"]
       71 SETTABLEKS                       R12 R15 K23 ["propertyMetadata"]
       73 GETTABLEKS                       R16 R3 K11 ["Localization"]
       75 SETTABLEKS                       R16 R15 K6 ["localization"]
       77 SETTABLEKS                       R14 R15 K24 ["status"]
       79 MOVE                             R17 R7
       80 GETUPVAL                         R18 3
       81 MOVE                             R19 R15
       82 MOVE                             R20 R4
       83 GETTABLEKS                       R21 R0 K26 ["refreshForStatusCompatibility"]
       85 CALL                             R18 3 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R16 K29 [table.insert]
       89 CALL                             R16 -1 0
       90 FORGLOOP                         R8 2 ; [-49]
       92 LENGTH                           R8 R6
       93 JUMPIFNOTEQKN                    R8 K30 [0] ; [+6]
       95 LENGTH                           R8 R7
       96 JUMPIFNOTEQKN                    R8 K30 [0] ; [+3]
       98 LOADNIL                          R8
       99 RETURN                           R8 1
      100 GETTABLEKS                       R9 R0 K8 ["state"]
      102 GETTABLEKS                       R9 R9 K31 ["expanded"]
      104 GETTABLEKS                       R10 R2 K12 ["Section"]
      106 GETTABLE                         R8 R9 R10
      107 LOADB                            R9 0
      108 GETTABLEKS                       R10 R4 K1 ["Status"]
      110 JUMPIFEQKNIL                     R10 ; [+5]
      112 NOT                              R9 R8
      113 JUMPIF                           R9 ; [+2]
      114 GETTABLEKS                       R9 R4 K2 ["IsSectionStatus"]
      116 JUMPIFNOT                        R9 ; [+2]
      117 GETUPVAL                         R10 4
      118 JUMP                             ; [+1]
      119 LOADNIL                          R10
      120 JUMPIFNOT                        R9 ; [+29]
      121 DUPTABLE                         R11 K36 [{"StatusLevel", "StatusMessage", "StatusContext", "Position"}]
      122 GETTABLEKS                       R12 R4 K1 ["Status"]
      124 GETTABLEKS                       R12 R12 K37 ["Level"]
      126 SETTABLEKS                       R12 R11 K32 ["StatusLevel"]
      128 GETTABLEKS                       R12 R4 K1 ["Status"]
      130 GETTABLEKS                       R12 R12 K38 ["Type"]
      132 SETTABLEKS                       R12 R11 K33 ["StatusMessage"]
      134 GETTABLEKS                       R12 R4 K1 ["Status"]
      136 GETTABLEKS                       R12 R12 K39 ["Context"]
      138 SETTABLEKS                       R12 R11 K34 ["StatusContext"]
      140 GETIMPORT                        R12 K42 [UDim2.new]
      142 LOADN                            R13 1
      143 LOADN                            R14 0
      144 LOADN                            R15 0
      145 LOADN                            R16 0
      146 CALL                             R12 4 1
      147 SETTABLEKS                       R12 R11 K35 ["Position"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R11
      151 GETUPVAL                         R12 5
      152 GETTABLEKS                       R12 R12 K43 ["createElement"]
      154 GETUPVAL                         R13 6
      155 DUPTABLE                         R14 K51 [{"Expanded", "OnExpandedChanged", "Layout", "LayoutOrder", "Style", "Text", "HeaderOverride"}]
      156 SETTABLEKS                       R8 R14 K44 ["Expanded"]
      158 NEWCLOSURE                       R15 P0
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U7
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R8
      163 SETTABLEKS                       R15 R14 K45 ["OnExpandedChanged"]
      165 GETIMPORT                        R15 K55 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R15 R14 K46 ["Layout"]
      169 SETTABLEKS                       R1 R14 K47 ["LayoutOrder"]
      171 LOADK                            R15 K56 ["ImportTree"]
      172 SETTABLEKS                       R15 R14 K48 ["Style"]
      174 GETTABLEKS                       R15 R3 K11 ["Localization"]
      176 LOADK                            R17 K57 ["Sections"]
      177 GETTABLEKS                       R18 R2 K12 ["Section"]
      179 NAMECALL                         R15 R15 K58 ["getText"]
      181 CALL                             R15 3 1
      182 SETTABLEKS                       R15 R14 K49 ["Text"]
      184 MOVE                             R17 R2
      185 MOVE                             R18 R8
      186 MOVE                             R19 R10
      187 MOVE                             R20 R11
      188 NAMECALL                         R15 R0 K59 ["createHeader"]
      190 CALL                             R15 5 1
      191 SETTABLEKS                       R15 R14 K50 ["HeaderOverride"]
      193 GETUPVAL                         R15 7
      194 MOVE                             R16 R7
      195 MOVE                             R17 R6
      196 CALL                             R15 2 -1
      197 CALL                             R12 -1 -1
      198 RETURN                           R12 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showReimportCallout"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showReimportCallout"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Instance"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R3 K3 [pairs]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R5 R1 K1 ["Instance"]
       14 CALL                             R4 1 -1
       15 CALL                             R3 -1 3
       16 FORGPREP_NEXT                    R3
       17 MOVE                             R10 R6
       18 MOVE                             R11 R7
       19 NAMECALL                         R8 R0 K4 ["buildSection"]
       21 CALL                             R8 3 1
       22 SETTABLE                         R8 R2 R6
       23 FORGLOOP                         R3 2 ; [-7]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K5 ["createElement"]
       28 GETUPVAL                         R4 2
       29 DUPTABLE                         R5 K13 [{"AutomaticCanvasSize", "CanvasSize", "Layout", "OnCanvasResize", "Position", "ScrollingDirection", "Size"}]
       30 GETIMPORT                        R6 K17 [Enum.AutomaticSize.Y]
       32 SETTABLEKS                       R6 R5 K6 ["AutomaticCanvasSize"]
       34 GETIMPORT                        R6 K20 [UDim2.fromScale]
       36 LOADN                            R7 1
       37 LOADN                            R8 0
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K7 ["CanvasSize"]
       41 GETIMPORT                        R6 K23 [Enum.FillDirection.Vertical]
       43 SETTABLEKS                       R6 R5 K8 ["Layout"]
       45 GETTABLEKS                       R6 R0 K24 ["onContentResize"]
       47 SETTABLEKS                       R6 R5 K9 ["OnCanvasResize"]
       49 GETIMPORT                        R6 K20 [UDim2.fromScale]
       51 LOADN                            R7 0
       52 LOADN                            R8 0
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K10 ["Position"]
       56 GETIMPORT                        R6 K25 [Enum.ScrollingDirection.Y]
       58 SETTABLEKS                       R6 R5 K11 ["ScrollingDirection"]
       60 GETIMPORT                        R6 K20 [UDim2.fromScale]
       62 LOADN                            R7 1
       63 LOADN                            R8 1
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K12 ["Size"]
       67 NEWTABLE                         R6 0 2
       69 GETUPVAL                         R8 3
       70 CALL                             R8 0 1
       71 JUMPIFNOT                        R8 ; [+16]
       72 GETTABLEKS                       R8 R0 K26 ["state"]
       74 GETTABLEKS                       R8 R8 K27 ["showReimportCallout"]
       76 JUMPIFNOT                        R8 ; [+11]
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R7 R7 K5 ["createElement"]
       80 GETUPVAL                         R8 5
       81 DUPTABLE                         R9 K29 [{"onDismiss"}]
       82 NEWCLOSURE                       R10 P0
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R10 R9 K28 ["onDismiss"]
       86 CALL                             R7 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R7
       89 GETUPVAL                         R8 4
       90 GETTABLEKS                       R8 R8 K5 ["createElement"]
       92 GETUPVAL                         R9 4
       93 GETTABLEKS                       R9 R9 K30 ["Fragment"]
       95 LOADNIL                          R10
       96 MOVE                             R11 R2
       97 CALL                             R8 3 -1
       98 SETLIST                          R6 R7 -1 [1]
      100 CALL                             R3 3 -1
      101 RETURN                           R3 -1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"AssetImportSession", "Filename"}]
        1 GETTABLEKS                       R2 R0 K3 ["Preview"]
        3 GETTABLEKS                       R2 R2 K4 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R2 R0 K3 ["Preview"]
       12 GETTABLEKS                       R2 R2 K5 ["filename"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K1 ["Filename"]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["TextService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["RoactCompat"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["RoactRodux"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["Framework"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["Dash"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R6 K17 ["ContextServices"]
       57 GETTABLEKS                       R9 R8 K18 ["withContext"]
       59 GETTABLEKS                       R10 R8 K19 ["Localization"]
       61 GETTABLEKS                       R11 R8 K20 ["Stylizer"]
       63 GETTABLEKS                       R12 R6 K21 ["Util"]
       65 GETTABLEKS                       R12 R12 K22 ["StyleModifier"]
       67 GETTABLEKS                       R13 R6 K23 ["UI"]
       69 GETTABLEKS                       R14 R13 K24 ["ExpandablePane"]
       71 GETTABLEKS                       R15 R13 K25 ["Pane"]
       73 GETTABLEKS                       R16 R13 K26 ["ScrollingFrame"]
       75 GETTABLEKS                       R17 R13 K27 ["TextLabel"]
       77 GETTABLEKS                       R18 R13 K28 ["Image"]
       79 GETTABLEKS                       R19 R7 K29 ["omit"]
       81 GETTABLEKS                       R20 R7 K30 ["join"]
       83 GETIMPORT                        R21 K5 [require]
       85 GETTABLEKS                       R22 R0 K6 ["Src"]
       87 GETTABLEKS                       R22 R22 K31 ["Types"]
       89 CALL                             R21 1 1
       90 GETIMPORT                        R22 K5 [require]
       92 GETIMPORT                        R23 K1 [script]
       94 GETTABLEKS                       R23 R23 K32 ["Parent"]
       96 GETTABLEKS                       R23 R23 K33 ["PropertyView"]
       98 CALL                             R22 1 1
       99 GETIMPORT                        R23 K5 [require]
      101 GETTABLEKS                       R24 R0 K6 ["Src"]
      103 GETTABLEKS                       R24 R24 K34 ["Components"]
      105 GETTABLEKS                       R24 R24 K35 ["Properties"]
      107 GETTABLEKS                       R24 R24 K36 ["PropertyStatus"]
      109 CALL                             R23 1 1
      110 GETIMPORT                        R24 K5 [require]
      112 GETIMPORT                        R25 K1 [script]
      114 GETTABLEKS                       R25 R25 K32 ["Parent"]
      116 GETTABLEKS                       R25 R25 K37 ["ReimportCallout"]
      118 CALL                             R24 1 1
      119 GETIMPORT                        R25 K5 [require]
      121 GETTABLEKS                       R26 R0 K6 ["Src"]
      123 GETTABLEKS                       R26 R26 K7 ["Utility"]
      125 GETTABLEKS                       R26 R26 K38 ["Status"]
      127 GETTABLEKS                       R26 R26 K39 ["filterStatusesForProp"]
      129 CALL                             R25 1 1
      130 GETIMPORT                        R26 K5 [require]
      132 GETTABLEKS                       R27 R0 K6 ["Src"]
      134 GETTABLEKS                       R27 R27 K7 ["Utility"]
      136 GETTABLEKS                       R27 R27 K38 ["Status"]
      138 GETTABLEKS                       R27 R27 K40 ["getHighestSeverityStatus"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K5 [require]
      143 GETTABLEKS                       R28 R0 K6 ["Src"]
      145 GETTABLEKS                       R28 R28 K7 ["Utility"]
      147 GETTABLEKS                       R28 R28 K38 ["Status"]
      149 GETTABLEKS                       R28 R28 K41 ["GetLocalizedStatusMessage"]
      151 CALL                             R27 1 1
      152 GETIMPORT                        R28 K5 [require]
      154 GETTABLEKS                       R29 R0 K6 ["Src"]
      156 GETTABLEKS                       R29 R29 K7 ["Utility"]
      158 GETTABLEKS                       R29 R29 K42 ["getPropertiesForInstance"]
      160 CALL                             R28 1 1
      161 GETIMPORT                        R29 K5 [require]
      163 GETTABLEKS                       R30 R0 K6 ["Src"]
      165 GETTABLEKS                       R30 R30 K43 ["Controllers"]
      167 GETTABLEKS                       R30 R30 K44 ["ReimportCalloutController"]
      169 CALL                             R29 1 1
      170 GETIMPORT                        R30 K5 [require]
      172 GETTABLEKS                       R31 R0 K6 ["Src"]
      174 GETTABLEKS                       R31 R31 K45 ["Flags"]
      176 GETTABLEKS                       R31 R31 K46 ["getFFlagShowNewReimportCallout"]
      178 CALL                             R30 1 1
      179 GETTABLEKS                       R31 R4 K47 ["PureComponent"]
      181 LOADK                            R33 K48 ["PropertyListView"]
      182 NAMECALL                         R31 R31 K49 ["extend"]
      184 CALL                             R31 2 1
      185 DUPCLOSURE                       R32 K50 [PROTO_2]
      186 CAPTURE                          VAL R30
      187 CAPTURE                          VAL R29
      188 SETTABLEKS                       R32 R31 K51 ["init"]
      190 DUPCLOSURE                       R32 K52 [PROTO_3]
      191 SETTABLEKS                       R32 R31 K53 ["willUpdate"]
      193 DUPCLOSURE                       R32 K54 [PROTO_4]
      194 CAPTURE                          VAL R27
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R17
      197 DUPCLOSURE                       R33 K55 [PROTO_5]
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R22
      200 DUPCLOSURE                       R34 K56 [PROTO_6]
      201 CAPTURE                          VAL R2
      202 DUPCLOSURE                       R35 K57 [PROTO_8]
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R17
      211 SETTABLEKS                       R35 R31 K58 ["createHeader"]
      213 DUPCLOSURE                       R35 K59 [PROTO_10]
      214 CAPTURE                          VAL R32
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R26
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R20
      222 SETTABLEKS                       R35 R31 K60 ["buildSection"]
      224 DUPCLOSURE                       R35 K61 [PROTO_12]
      225 CAPTURE                          VAL R28
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R30
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R24
      231 SETTABLEKS                       R35 R31 K62 ["render"]
      233 MOVE                             R35 R9
      234 DUPTABLE                         R36 K64 [{"Localization", "Stylizer", "Plugin"}]
      235 SETTABLEKS                       R10 R36 K19 ["Localization"]
      237 SETTABLEKS                       R11 R36 K20 ["Stylizer"]
      239 GETTABLEKS                       R37 R8 K63 ["Plugin"]
      241 SETTABLEKS                       R37 R36 K63 ["Plugin"]
      243 CALL                             R35 1 1
      244 MOVE                             R36 R31
      245 CALL                             R35 1 1
      246 MOVE                             R31 R35
      247 DUPCLOSURE                       R35 K65 [PROTO_13]
      248 CAPTURE                          VAL R30
      249 GETTABLEKS                       R36 R5 K66 ["connect"]
      251 MOVE                             R37 R35
      252 CALL                             R36 1 1
      253 MOVE                             R37 R31
      254 CALL                             R36 1 -1
      255 RETURN                           R36 -1
