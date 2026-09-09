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
        7 DUPTABLE                         R4 K7 [{["expanded"], ["absoluteHorizontalSize"] = 0, ["showReimportCallout"]}]
        8 DUPTABLE                         R5 K11 [{["FileGeneral"] = True, ["ObjectGeneral"] = True}]
        9 SETTABLEKS                       R5 R4 K3 ["expanded"]
       11 GETUPVAL                         R5 0
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+9]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K12 ["shouldShowCallout"]
       17 MOVE                             R6 R1
       18 GETTABLEKS                       R7 R0 K0 ["props"]
       20 GETTABLEKS                       R7 R7 K13 ["Filename"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K6 ["showReimportCallout"]
       25 NAMECALL                         R2 R0 K14 ["setState"]
       27 CALL                             R2 2 0
       28 GETTABLEKS                       R2 R0 K0 ["props"]
       30 GETTABLEKS                       R2 R2 K15 ["Instance"]
       32 NAMECALL                         R2 R2 K16 ["GetStatuses"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R0 K17 ["statuses"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K18 ["onContentResize"]
       41 NEWCLOSURE                       R2 P1
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K19 ["refreshForStatusCompatibility"]
       45 RETURN                           R0 0

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
       48 DUPTABLE                         R15 K19 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Style"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
       49 GETIMPORT                        R16 K22 [Enum.AutomaticSize.XY]
       51 SETTABLEKS                       R16 R15 K11 ["AutomaticSize"]
       53 LENGTH                           R16 R3
       54 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
       56 GETIMPORT                        R16 K25 [UDim2.fromOffset]
       58 GETTABLEKS                       R18 R1 K26 ["absoluteXSize"]
       60 GETTABLEKS                       R19 R1 K4 ["style"]
       62 GETTABLEKS                       R19 R19 K27 ["Sizes"]
       64 GETTABLEKS                       R19 R19 K28 ["StatusMessagePadding"]
       66 SUB                              R17 R18 R19
       67 LOADN                            R18 0
       68 CALL                             R16 2 1
       69 SETTABLEKS                       R16 R15 K13 ["Size"]
       71 SETTABLEKS                       R9 R15 K14 ["Style"]
       73 SETTABLEKS                       R10 R15 K15 ["Text"]
       75 GETIMPORT                        R16 K30 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R16 R15 K18 ["TextXAlignment"]
       79 CALL                             R13 2 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R11 K33 [table.insert]
       83 CALL                             R11 -1 0
       84 FORGLOOP                         R4 2 ; [-79]
       86 RETURN                           R3 1

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
       26 JUMPIFNOT                        R3 ; [+51]
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
       67 DUPTABLE                         R13 K23 [{["LayoutOrder"] = 3, ["Size"]}]
       68 SETTABLEKS                       R10 R13 K9 ["Size"]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 3
       72 GETTABLEKS                       R12 R12 K24 ["createElement"]
       74 MOVE                             R13 R3
       75 MOVE                             R14 R11
       76 CALL                             R12 2 1
       77 MOVE                             R8 R12
       78 GETUPVAL                         R9 3
       79 GETTABLEKS                       R9 R9 K24 ["createElement"]
       81 GETUPVAL                         R10 4
       82 DUPTABLE                         R11 K32 [{["HorizontalAlignment"], ["LayoutOrder"] = 1, ["Layout"], ["OnClick"], ["Padding"], ["Size"], ["Style"], ["Spacing"], ["VerticalAlignment"]}]
       83 GETTABLEKS                       R12 R5 K25 ["HorizontalAlignment"]
       85 SETTABLEKS                       R12 R11 K25 ["HorizontalAlignment"]
       87 GETIMPORT                        R12 K36 [Enum.FillDirection.Horizontal]
       89 SETTABLEKS                       R12 R11 K27 ["Layout"]
       91 NEWCLOSURE                       R12 P0
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R12 R11 K28 ["OnClick"]
       98 GETTABLEKS                       R12 R5 K29 ["Padding"]
      100 SETTABLEKS                       R12 R11 K29 ["Padding"]
      102 GETTABLEKS                       R12 R5 K9 ["Size"]
      104 SETTABLEKS                       R12 R11 K9 ["Size"]
      106 SETTABLEKS                       R6 R11 K30 ["Style"]
      108 GETTABLEKS                       R12 R5 K10 ["Spacing"]
      110 SETTABLEKS                       R12 R11 K10 ["Spacing"]
      112 GETTABLEKS                       R12 R5 K31 ["VerticalAlignment"]
      114 SETTABLEKS                       R12 R11 K31 ["VerticalAlignment"]
      116 DUPTABLE                         R12 K40 [{"Image", "Title", "HeaderStatus"}]
      117 GETUPVAL                         R13 3
      118 GETTABLEKS                       R13 R13 K24 ["createElement"]
      120 GETUPVAL                         R14 5
      121 DUPTABLE                         R15 K42 [{["LayoutOrder"] = 1, ["Style"], ["StyleModifier"]}]
      122 GETTABLEKS                       R16 R5 K3 ["Arrow"]
      124 SETTABLEKS                       R16 R15 K30 ["Style"]
      126 JUMPIFNOT                        R2 ; [+4]
      127 GETUPVAL                         R16 6
      128 GETTABLEKS                       R16 R16 K43 ["Selected"]
      130 JUMPIF                           R16 ; [+1]
      131 LOADNIL                          R16
      132 SETTABLEKS                       R16 R15 K41 ["StyleModifier"]
      134 CALL                             R13 2 1
      135 SETTABLEKS                       R13 R12 K37 ["Image"]
      137 GETUPVAL                         R13 3
      138 GETTABLEKS                       R13 R13 K24 ["createElement"]
      140 GETUPVAL                         R14 7
      141 DUPTABLE                         R15 K48 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Style"], ["Text"], ["TextWrapped"] = True}]
      142 GETIMPORT                        R16 K50 [Enum.AutomaticSize.XY]
      144 SETTABLEKS                       R16 R15 K44 ["AutomaticSize"]
      146 GETTABLEKS                       R16 R5 K4 ["Text"]
      148 SETTABLEKS                       R16 R15 K30 ["Style"]
      150 SETTABLEKS                       R7 R15 K4 ["Text"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K38 ["Title"]
      155 SETTABLEKS                       R8 R12 K39 ["HeaderStatus"]
      157 CALL                             R9 3 -1
      158 RETURN                           R9 -1

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
        2 DUPTABLE                         R4 K5 [{["Status"] = , ["IsSectionStatus"] = False}]
        3 DUPTABLE                         R5 K9 [{"absoluteXSize", "style", "localization"}]
        4 GETTABLEKS                       R6 R0 K10 ["state"]
        6 GETTABLEKS                       R6 R6 K11 ["absoluteHorizontalSize"]
        8 SETTABLEKS                       R6 R5 K6 ["absoluteXSize"]
       10 GETTABLEKS                       R6 R3 K12 ["Stylizer"]
       12 SETTABLEKS                       R6 R5 K7 ["style"]
       14 GETTABLEKS                       R6 R3 K13 ["Localization"]
       16 SETTABLEKS                       R6 R5 K8 ["localization"]
       18 GETUPVAL                         R6 0
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R8 R2 K14 ["Section"]
       22 GETTABLEKS                       R9 R0 K15 ["statuses"]
       24 CALL                             R7 2 1
       25 MOVE                             R8 R5
       26 MOVE                             R9 R4
       27 CALL                             R6 3 1
       28 GETUPVAL                         R7 2
       29 CALL                             R7 0 1
       30 JUMPIFNOT                        R7 ; [+12]
       31 GETTABLEKS                       R7 R3 K16 ["SingleAnimationSelection"]
       33 JUMPIFNOT                        R7 ; [+9]
       34 GETTABLEKS                       R7 R3 K17 ["Instance"]
       36 JUMPIFNOT                        R7 ; [+6]
       37 GETTABLEKS                       R7 R3 K17 ["Instance"]
       39 LOADK                            R9 K18 ["RootImportData"]
       40 NAMECALL                         R7 R7 K19 ["IsA"]
       42 CALL                             R7 2 1
       43 NEWTABLE                         R8 0 0
       45 GETIMPORT                        R9 K21 [pairs]
       47 GETTABLEKS                       R10 R2 K22 ["Properties"]
       49 CALL                             R9 1 3
       50 FORGPREP_NEXT                    R9
       51 JUMPIFNOT                        R7 ; [+5]
       52 GETUPVAL                         R15 3
       53 GETTABLEKS                       R16 R13 K23 ["Name"]
       55 GETTABLE                         R14 R15 R16
       56 JUMPIFNOT                        R14 ; [+48]
       57 GETTABLEKS                       R14 R13 K24 ["ShouldHide"]
       59 JUMPIFNOT                        R14 ; [+8]
       60 GETTABLEKS                       R14 R13 K24 ["ShouldHide"]
       62 GETTABLEKS                       R15 R3 K17 ["Instance"]
       64 GETTABLEKS                       R16 R3 K25 ["AssetImportSession"]
       66 CALL                             R14 2 1
       67 JUMPIF                           R14 ; [+37]
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R15 R13 K23 ["Name"]
       71 GETTABLEKS                       R16 R0 K15 ["statuses"]
       73 CALL                             R14 2 1
       74 GETUPVAL                         R15 4
       75 MOVE                             R16 R14
       76 CALL                             R15 1 1
       77 DUPTABLE                         R16 K30 [{"importData", "layoutOrder", "propertyMetadata", "localization", "status"}]
       78 GETTABLEKS                       R17 R3 K17 ["Instance"]
       80 SETTABLEKS                       R17 R16 K26 ["importData"]
       82 LENGTH                           R18 R6
       83 ADD                              R17 R12 R18
       84 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
       86 SETTABLEKS                       R13 R16 K28 ["propertyMetadata"]
       88 GETTABLEKS                       R17 R3 K13 ["Localization"]
       90 SETTABLEKS                       R17 R16 K8 ["localization"]
       92 SETTABLEKS                       R15 R16 K29 ["status"]
       94 MOVE                             R18 R8
       95 GETUPVAL                         R19 5
       96 MOVE                             R20 R16
       97 MOVE                             R21 R4
       98 GETTABLEKS                       R22 R0 K31 ["refreshForStatusCompatibility"]
      100 CALL                             R19 3 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R17 K34 [table.insert]
      104 CALL                             R17 -1 0
      105 FORGLOOP                         R9 2 ; [-55]
      107 LENGTH                           R9 R6
      108 JUMPIFNOTEQKN                    R9 K35 [0] ; [+6]
      110 LENGTH                           R9 R8
      111 JUMPIFNOTEQKN                    R9 K35 [0] ; [+3]
      113 LOADNIL                          R9
      114 RETURN                           R9 1
      115 GETTABLEKS                       R10 R0 K10 ["state"]
      117 GETTABLEKS                       R10 R10 K36 ["expanded"]
      119 GETTABLEKS                       R11 R2 K14 ["Section"]
      121 GETTABLE                         R9 R10 R11
      122 LOADB                            R10 0
      123 GETTABLEKS                       R11 R4 K1 ["Status"]
      125 JUMPIFEQKNIL                     R11 ; [+5]
      127 NOT                              R10 R9
      128 JUMPIF                           R10 ; [+2]
      129 GETTABLEKS                       R10 R4 K3 ["IsSectionStatus"]
      131 JUMPIFNOT                        R10 ; [+2]
      132 GETUPVAL                         R11 6
      133 JUMP                             ; [+1]
      134 LOADNIL                          R11
      135 JUMPIFNOT                        R10 ; [+29]
      136 DUPTABLE                         R12 K41 [{"StatusLevel", "StatusMessage", "StatusContext", "Position"}]
      137 GETTABLEKS                       R13 R4 K1 ["Status"]
      139 GETTABLEKS                       R13 R13 K42 ["Level"]
      141 SETTABLEKS                       R13 R12 K37 ["StatusLevel"]
      143 GETTABLEKS                       R13 R4 K1 ["Status"]
      145 GETTABLEKS                       R13 R13 K43 ["Type"]
      147 SETTABLEKS                       R13 R12 K38 ["StatusMessage"]
      149 GETTABLEKS                       R13 R4 K1 ["Status"]
      151 GETTABLEKS                       R13 R13 K44 ["Context"]
      153 SETTABLEKS                       R13 R12 K39 ["StatusContext"]
      155 GETIMPORT                        R13 K47 [UDim2.new]
      157 LOADN                            R14 1
      158 LOADN                            R15 0
      159 LOADN                            R16 0
      160 LOADN                            R17 0
      161 CALL                             R13 4 1
      162 SETTABLEKS                       R13 R12 K40 ["Position"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R12
      166 GETUPVAL                         R13 7
      167 GETTABLEKS                       R13 R13 K48 ["createElement"]
      169 GETUPVAL                         R14 8
      170 DUPTABLE                         R15 K57 [{["Expanded"], ["OnExpandedChanged"], ["Layout"], ["LayoutOrder"], ["Style"] = "ImportTree", ["Text"], ["HeaderOverride"]}]
      171 SETTABLEKS                       R9 R15 K49 ["Expanded"]
      173 NEWCLOSURE                       R16 P0
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U9
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R9
      178 SETTABLEKS                       R16 R15 K50 ["OnExpandedChanged"]
      180 GETIMPORT                        R16 K61 [Enum.FillDirection.Vertical]
      182 SETTABLEKS                       R16 R15 K51 ["Layout"]
      184 SETTABLEKS                       R1 R15 K52 ["LayoutOrder"]
      186 GETTABLEKS                       R16 R3 K13 ["Localization"]
      188 LOADK                            R18 K62 ["Sections"]
      189 GETTABLEKS                       R19 R2 K14 ["Section"]
      191 NAMECALL                         R16 R16 K63 ["getText"]
      193 CALL                             R16 3 1
      194 SETTABLEKS                       R16 R15 K55 ["Text"]
      196 MOVE                             R18 R2
      197 MOVE                             R19 R9
      198 MOVE                             R20 R11
      199 MOVE                             R21 R12
      200 NAMECALL                         R16 R0 K64 ["createHeader"]
      202 CALL                             R16 5 1
      203 SETTABLEKS                       R16 R15 K56 ["HeaderOverride"]
      205 GETUPVAL                         R16 9
      206 MOVE                             R17 R8
      207 MOVE                             R18 R6
      208 CALL                             R16 2 -1
      209 CALL                             R13 -1 -1
      210 RETURN                           R13 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K3 [{"AssetImportSession", "Filename", "SingleAnimationSelection"}]
        1 GETTABLEKS                       R2 R0 K4 ["Preview"]
        3 GETTABLEKS                       R2 R2 K5 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R2 R0 K4 ["Preview"]
       12 GETTABLEKS                       R2 R2 K6 ["filename"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K1 ["Filename"]
       18 GETTABLEKS                       R2 R0 K4 ["Preview"]
       20 GETTABLEKS                       R2 R2 K7 ["singleAnimationSelection"]
       22 SETTABLEKS                       R2 R1 K2 ["SingleAnimationSelection"]
       24 RETURN                           R1 1

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
      179 GETIMPORT                        R31 K5 [require]
      181 GETTABLEKS                       R32 R0 K6 ["Src"]
      183 GETTABLEKS                       R32 R32 K45 ["Flags"]
      185 GETTABLEKS                       R32 R32 K47 ["getFFlagAssetImporterVersionedAnimationUx"]
      187 CALL                             R31 1 1
      188 DUPTABLE                         R32 K55 [{["RigType"] = True, ["RigScale"] = True, ["RestPose"] = True, ["AnimationIdForRestPose"] = True, ["ScaleUnit"] = True, ["ScaleFactor"] = True}]
      189 GETTABLEKS                       R33 R4 K56 ["PureComponent"]
      191 LOADK                            R35 K57 ["PropertyListView"]
      192 NAMECALL                         R33 R33 K58 ["extend"]
      194 CALL                             R33 2 1
      195 DUPCLOSURE                       R34 K59 [PROTO_2]
      196 CAPTURE                          VAL R30
      197 CAPTURE                          VAL R29
      198 SETTABLEKS                       R34 R33 K60 ["init"]
      200 DUPCLOSURE                       R34 K61 [PROTO_3]
      201 SETTABLEKS                       R34 R33 K62 ["willUpdate"]
      203 DUPCLOSURE                       R34 K63 [PROTO_4]
      204 CAPTURE                          VAL R27
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R17
      207 DUPCLOSURE                       R35 K64 [PROTO_5]
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R22
      210 DUPCLOSURE                       R36 K65 [PROTO_6]
      211 CAPTURE                          VAL R2
      212 DUPCLOSURE                       R37 K66 [PROTO_8]
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R17
      221 SETTABLEKS                       R37 R33 K67 ["createHeader"]
      223 DUPCLOSURE                       R37 K68 [PROTO_10]
      224 CAPTURE                          VAL R34
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R31
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R35
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R20
      234 SETTABLEKS                       R37 R33 K69 ["buildSection"]
      236 DUPCLOSURE                       R37 K70 [PROTO_12]
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R16
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R24
      243 SETTABLEKS                       R37 R33 K71 ["render"]
      245 MOVE                             R37 R9
      246 DUPTABLE                         R38 K73 [{"Localization", "Stylizer", "Plugin"}]
      247 SETTABLEKS                       R10 R38 K19 ["Localization"]
      249 SETTABLEKS                       R11 R38 K20 ["Stylizer"]
      251 GETTABLEKS                       R39 R8 K72 ["Plugin"]
      253 SETTABLEKS                       R39 R38 K72 ["Plugin"]
      255 CALL                             R37 1 1
      256 MOVE                             R38 R33
      257 CALL                             R37 1 1
      258 MOVE                             R33 R37
      259 DUPCLOSURE                       R37 K74 [PROTO_13]
      260 CAPTURE                          VAL R30
      261 GETTABLEKS                       R38 R5 K75 ["connect"]
      263 MOVE                             R39 R37
      264 CALL                             R38 1 1
      265 MOVE                             R39 R33
      266 CALL                             R38 1 -1
      267 RETURN                           R38 -1
