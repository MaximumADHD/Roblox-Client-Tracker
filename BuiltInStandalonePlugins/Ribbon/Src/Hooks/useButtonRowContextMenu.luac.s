PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MoveControl"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MoveControl"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETTABLEKS                       R1 R1 K0 ["Type"]
        5 JUMPIFEQKS                       R1 K1 ["Separator"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RemoveControlFromTab"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["join"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K5 [{["Category"] = "Widgets", ["ItemId"] = "Mezzanine"}]
        5 CALL                             R3 2 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K6 ["ActiveTabState"]
        9 JUMPIFNOT                        R5 ; [+6]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K6 ["ActiveTabState"]
       13 GETTABLEKS                       R4 R4 K7 ["Identifier"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 JUMPIFNOTEQKNIL                  R4 ; [+6]
       19 GETIMPORT                        R5 K9 [warn]
       21 LOADK                            R6 K10 ["Cannot open context menu with no active tab"]
       22 CALL                             R5 1 0
       23 RETURN                           R0 0
       24 LOADNIL                          R5
       25 GETTABLEKS                       R6 R4 K11 ["Type"]
       27 JUMPIFNOTEQKS                    R6 K12 ["BuiltIn"] ; [+44]
       29 NEWTABLE                         R6 0 5
       31 DUPTABLE                         R7 K19 [{["Id"] = "ManageTabs", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K0 ["join"]
       35 GETUPVAL                         R9 1
       36 DUPTABLE                         R10 K21 [{["Category"] = "Actions", ["ItemId"] = "ManageTabs"}]
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K16 ["Action"]
       40 DUPTABLE                         R8 K23 [{["Type"] = "Separator"}]
       41 DUPTABLE                         R9 K25 [{["Id"] = "DockUndockRibbon", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K0 ["join"]
       45 GETUPVAL                         R11 1
       46 DUPTABLE                         R12 K26 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K16 ["Action"]
       50 DUPTABLE                         R10 K28 [{["Id"] = "CompactDensity", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K0 ["join"]
       54 GETUPVAL                         R12 1
       55 DUPTABLE                         R13 K29 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K16 ["Action"]
       59 DUPTABLE                         R11 K31 [{["Id"] = "ShowHideLabels", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K0 ["join"]
       63 GETUPVAL                         R13 1
       64 DUPTABLE                         R14 K32 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
       65 CALL                             R12 2 1
       66 SETTABLEKS                       R12 R11 K16 ["Action"]
       68 SETLIST                          R6 R7 5 [1]
       70 MOVE                             R5 R6
       71 JUMP                             ; [+180]
       72 GETUPVAL                         R6 3
       73 MOVE                             R7 R4
       74 CALL                             R6 1 1
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K33 ["Definition"]
       78 GETTABLEKS                       R8 R8 K34 ["TabControls"]
       80 GETTABLE                         R7 R8 R6
       81 GETTABLEKS                       R7 R7 K35 ["Controls"]
       83 JUMPIFEQKNIL                     R1 ; [+107]
       85 GETTABLEKS                       R8 R1 K36 ["self"]
       87 GETTABLEKS                       R9 R1 K37 ["left"]
       89 GETTABLEKS                       R10 R1 K38 ["right"]
       91 GETIMPORT                        R11 K41 [table.create]
       93 LOADN                            R12 4
       94 CALL                             R11 1 1
       95 MOVE                             R5 R11
       96 JUMPIFNOT                        R9 ; [+22]
       97 DUPTABLE                         R13 K46 [{["Id"] = "MoveLeft", ["Enabled"] = True, ["Type"] = "Option", ["Text"], ["OnSelect"]}]
       98 GETUPVAL                         R14 4
       99 LOADK                            R16 K47 ["Plugin"]
      100 LOADK                            R17 K42 ["MoveLeft"]
      101 NAMECALL                         R14 R14 K48 ["getText"]
      103 CALL                             R14 3 1
      104 SETTABLEKS                       R14 R13 K44 ["Text"]
      106 NEWCLOSURE                       R14 P0
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R14 R13 K45 ["OnSelect"]
      113 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      115 MOVE                             R12 R5
      116 GETIMPORT                        R11 K50 [table.insert]
      118 CALL                             R11 2 0
      119 JUMPIFNOT                        R10 ; [+22]
      120 DUPTABLE                         R13 K52 [{["Id"] = "MoveRight", ["Enabled"] = True, ["Type"] = "Option", ["Text"], ["OnSelect"]}]
      121 GETUPVAL                         R14 4
      122 LOADK                            R16 K47 ["Plugin"]
      123 LOADK                            R17 K51 ["MoveRight"]
      124 NAMECALL                         R14 R14 K48 ["getText"]
      126 CALL                             R14 3 1
      127 SETTABLEKS                       R14 R13 K44 ["Text"]
      129 NEWCLOSURE                       R14 P1
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 SETTABLEKS                       R14 R13 K45 ["OnSelect"]
      136 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      138 MOVE                             R12 R5
      139 GETIMPORT                        R11 K50 [table.insert]
      141 CALL                             R11 2 0
      142 JUMPIF                           R9 ; [+1]
      143 JUMPIFNOT                        R10 ; [+7]
      144 DUPTABLE                         R13 K23 [{["Type"] = "Separator"}]
      145 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      147 MOVE                             R12 R5
      148 GETIMPORT                        R11 K50 [table.insert]
      150 CALL                             R11 2 0
      151 GETIMPORT                        R11 K54 [pcall]
      153 NEWCLOSURE                       R12 P2
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R8
      156 CALL                             R11 1 2
      157 JUMPIFNOT                        R11 ; [+2]
      158 MOVE                             R13 R12
      159 JUMPIF                           R13 ; [+1]
      160 LOADB                            R13 0
      161 DUPTABLE                         R16 K56 [{["Id"] = "Delete", ["Enabled"] = True, ["Type"] = "Option", ["Text"], ["OnSelect"]}]
      162 JUMPIFNOT                        R13 ; [+7]
      163 GETUPVAL                         R17 4
      164 LOADK                            R19 K47 ["Plugin"]
      165 LOADK                            R20 K57 ["DeleteSeparator"]
      166 NAMECALL                         R17 R17 K48 ["getText"]
      168 CALL                             R17 3 1
      169 JUMP                             ; [+6]
      170 GETUPVAL                         R17 4
      171 LOADK                            R19 K47 ["Plugin"]
      172 LOADK                            R20 K58 ["DeleteTool"]
      173 NAMECALL                         R17 R17 K48 ["getText"]
      175 CALL                             R17 3 1
      176 SETTABLEKS                       R17 R16 K44 ["Text"]
      178 NEWCLOSURE                       R17 P3
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R8
      182 SETTABLEKS                       R17 R16 K45 ["OnSelect"]
      184 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
      186 MOVE                             R15 R5
      187 GETIMPORT                        R14 K50 [table.insert]
      189 CALL                             R14 2 0
      190 JUMP                             ; [+61]
      191 NEWTABLE                         R8 0 8
      193 DUPTABLE                         R9 K61 [{["Id"] = "AddTools", ["Enabled"] = True, ["Type"] = "Option", ["Action"], ["TextOnly"] = True, ["ReserveCheckmarkSpace"] = True}]
      194 GETUPVAL                         R10 0
      195 GETTABLEKS                       R10 R10 K0 ["join"]
      197 GETUPVAL                         R11 1
      198 DUPTABLE                         R12 K62 [{["Category"] = "Actions", ["ItemId"] = "AddTools"}]
      199 CALL                             R10 2 1
      200 SETTABLEKS                       R10 R9 K16 ["Action"]
      202 DUPTABLE                         R10 K64 [{["Id"] = "AddSeparator", ["Enabled"] = True, ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
      203 GETUPVAL                         R11 0
      204 GETTABLEKS                       R11 R11 K0 ["join"]
      206 GETUPVAL                         R12 1
      207 DUPTABLE                         R13 K65 [{["Category"] = "Actions", ["ItemId"] = "AddSeparator"}]
      208 CALL                             R11 2 1
      209 SETTABLEKS                       R11 R10 K16 ["Action"]
      211 DUPTABLE                         R11 K23 [{["Type"] = "Separator"}]
      212 DUPTABLE                         R12 K19 [{["Id"] = "ManageTabs", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
      213 GETUPVAL                         R13 0
      214 GETTABLEKS                       R13 R13 K0 ["join"]
      216 GETUPVAL                         R14 1
      217 DUPTABLE                         R15 K21 [{["Category"] = "Actions", ["ItemId"] = "ManageTabs"}]
      218 CALL                             R13 2 1
      219 SETTABLEKS                       R13 R12 K16 ["Action"]
      221 DUPTABLE                         R13 K23 [{["Type"] = "Separator"}]
      222 DUPTABLE                         R14 K25 [{["Id"] = "DockUndockRibbon", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
      223 GETUPVAL                         R15 0
      224 GETTABLEKS                       R15 R15 K0 ["join"]
      226 GETUPVAL                         R16 1
      227 DUPTABLE                         R17 K26 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
      228 CALL                             R15 2 1
      229 SETTABLEKS                       R15 R14 K16 ["Action"]
      231 DUPTABLE                         R15 K28 [{["Id"] = "CompactDensity", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
      232 GETUPVAL                         R16 0
      233 GETTABLEKS                       R16 R16 K0 ["join"]
      235 GETUPVAL                         R17 1
      236 DUPTABLE                         R18 K29 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
      237 CALL                             R16 2 1
      238 SETTABLEKS                       R16 R15 K16 ["Action"]
      240 DUPTABLE                         R16 K31 [{["Id"] = "ShowHideLabels", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
      241 GETUPVAL                         R17 0
      242 GETTABLEKS                       R17 R17 K0 ["join"]
      244 GETUPVAL                         R18 1
      245 DUPTABLE                         R19 K32 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
      246 CALL                             R17 2 1
      247 SETTABLEKS                       R17 R16 K16 ["Action"]
      249 SETLIST                          R8 R9 8 [1]
      251 MOVE                             R5 R8
      252 DUPTABLE                         R6 K68 [{["Type"] = "Column", ["Children"]}]
      253 SETTABLEKS                       R5 R6 K67 ["Children"]
      255 GETTABLEKS                       R7 R0 K69 ["Position"]
      257 MOVE                             R8 R2
      258 JUMPIF                           R8 ; [+7]
      259 GETIMPORT                        R8 K72 [Vector2.new]
      261 GETTABLEKS                       R9 R7 K73 ["X"]
      263 GETTABLEKS                       R10 R7 K74 ["Y"]
      265 CALL                             R8 2 1
      266 GETUPVAL                         R9 5
      267 NEWTABLE                         R10 0 1
      269 MOVE                             R11 R6
      270 SETLIST                          R10 R11 1 [1]
      272 MOVE                             R11 R3
      273 DUPTABLE                         R12 K78 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      274 GETIMPORT                        R13 K72 [Vector2.new]
      276 LOADN                            R14 0
      277 LOADN                            R15 0
      278 CALL                             R13 2 1
      279 SETTABLEKS                       R13 R12 K75 ["SubjectAnchorPoint"]
      281 GETIMPORT                        R13 K72 [Vector2.new]
      283 LOADN                            R14 0
      284 LOADN                            R15 0
      285 CALL                             R13 2 1
      286 SETTABLEKS                       R13 R12 K76 ["TargetAnchorPoint"]
      288 SETTABLEKS                       R8 R12 K77 ["Offset"]
      290 CALL                             R9 3 0
      291 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 5
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 2
       20 MOVE                             R7 R3
       21 MOVE                             R8 R2
       22 SETLIST                          R6 R7 2 [1]
       24 CALL                             R4 2 1
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R5 K12 ["Localization"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Packages"]
       33 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K14 ["Util"]
       38 GETTABLEKS                       R7 R7 K15 ["StudioUri"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K14 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["controlsIdentifierToString"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Src"]
       53 GETTABLEKS                       R10 R10 K18 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Src"]
       60 GETTABLEKS                       R11 R11 K19 ["Contexts"]
       62 GETTABLEKS                       R11 R11 K20 ["RibbonDefinition"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K16 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Components"]
       71 GETTABLEKS                       R12 R12 K22 ["ControlsView"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K16 ["Src"]
       78 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       80 GETTABLEKS                       R13 R13 K24 ["useMenu"]
       82 CALL                             R12 1 1
       83 DUPCLOSURE                       R13 K25 [PROTO_5]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 RETURN                           R13 1
