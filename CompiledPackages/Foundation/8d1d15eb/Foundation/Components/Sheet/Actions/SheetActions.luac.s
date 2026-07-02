PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Stroke"]
        4 GETTABLEKS                       R1 R1 K1 ["Standard"]
        6 RETURN                           R1 1
        7 LOADN                            R1 0
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 GETUPVAL                         R4 1
        6 SUB                              R2 R3 R4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 LOADN                            R4 1
        5 GETTABLEKS                       R7 R0 K3 ["sheetHeightAvailable"]
        7 GETTABLEKS                       R8 R0 K4 ["actionsHeight"]
        9 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       11 GETIMPORT                        R6 K7 [math.min]
       13 CALL                             R6 2 1
       14 MINUS                            R5 R6
       15 CALL                             R1 4 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K1 ["sheetHeightAvailable"]
        9 GETTABLEKS                       R5 R3 K2 ["actionsHeight"]
       11 GETTABLEKS                       R6 R3 K3 ["setActionsHeight"]
       13 GETTABLEKS                       R7 R3 K4 ["hasActionsDivider"]
       15 GETTABLEKS                       R8 R3 K5 ["safeAreaPadding"]
       17 GETTABLEKS                       R9 R3 K6 ["bottomPadding"]
       19 GETTABLEKS                       R10 R3 K7 ["sheetType"]
       21 GETTABLEKS                       R11 R3 K8 ["testId"]
       23 MOVE                             R13 R4
       24 JUMPIFNOT                        R13 ; [+11]
       25 MOVE                             R13 R5
       26 JUMPIFNOT                        R13 ; [+9]
       27 MOVE                             R13 R6
       28 JUMPIFNOT                        R13 ; [+7]
       29 MOVE                             R13 R7
       30 JUMPIFNOT                        R13 ; [+5]
       31 MOVE                             R13 R8
       32 JUMPIFNOT                        R13 ; [+3]
       33 MOVE                             R13 R9
       34 JUMPIFNOT                        R13 ; [+1]
       35 MOVE                             R13 R11
       36 FASTCALL2K                       ASSERT R13 K9 ; [+4]
       38 LOADK                            R14 K9 ["SheetActions must be used within a Sheet"]
       39 GETIMPORT                        R12 K11 [assert]
       41 CALL                             R12 2 0
       42 GETTABLEKS                       R12 R3 K12 ["innerSurface"]
       44 GETUPVAL                         R14 3
       45 GETTABLEKS                       R14 R14 K13 ["Bottom"]
       47 JUMPIFEQ                         R10 R14 ; [+2]
       49 LOADB                            R13 0 +1
       50 LOADB                            R13 1
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K14 ["createElement"]
       54 GETUPVAL                         R15 4
       55 DUPTABLE                         R16 K28 [{["tag"], ["padding"], ["stroke"], ["onAbsoluteSizeChanged"], ["ZIndex"] = 1, ["testId"], ["Position"], ["LayoutOrder"] = 3, ["ref"], ["onActivated"], ["selection"], ["stateLayer"]}]
       56 NEWTABLE                         R17 2 0
       58 LOADB                            R18 1
       59 SETTABLEKS                       R18 R17 K29 ["row gap-small size-full-0 auto-y"]
       61 SETTABLEKS                       R13 R17 K30 ["bg-surface-100"]
       63 SETTABLEKS                       R17 R16 K15 ["tag"]
       65 DUPTABLE                         R17 K35 [{"top", "left", "right", "bottom"}]
       66 GETIMPORT                        R18 K38 [UDim.new]
       68 LOADN                            R19 0
       69 GETTABLEKS                       R20 R2 K39 ["Margin"]
       71 GETTABLEKS                       R20 R20 K40 ["Small"]
       73 CALL                             R18 2 1
       74 SETTABLEKS                       R18 R17 K31 ["top"]
       76 GETIMPORT                        R18 K38 [UDim.new]
       78 LOADN                            R19 0
       79 GETTABLEKS                       R20 R2 K39 ["Margin"]
       81 GETTABLEKS                       R20 R20 K40 ["Small"]
       83 CALL                             R18 2 1
       84 SETTABLEKS                       R18 R17 K32 ["left"]
       86 GETIMPORT                        R18 K38 [UDim.new]
       88 LOADN                            R19 0
       89 GETTABLEKS                       R20 R2 K39 ["Margin"]
       91 GETTABLEKS                       R20 R20 K40 ["Small"]
       93 CALL                             R18 2 1
       94 SETTABLEKS                       R18 R17 K33 ["right"]
       96 GETIMPORT                        R18 K38 [UDim.new]
       98 LOADN                            R19 0
       99 GETTABLEKS                       R21 R2 K39 ["Margin"]
      101 GETTABLEKS                       R21 R21 K40 ["Small"]
      103 ADD                              R20 R9 R21
      104 CALL                             R18 2 1
      105 SETTABLEKS                       R18 R17 K34 ["bottom"]
      107 SETTABLEKS                       R17 R16 K16 ["padding"]
      109 DUPTABLE                         R17 K44 [{"Color", "Transparency", "Thickness"}]
      110 GETTABLEKS                       R18 R2 K41 ["Color"]
      112 GETTABLEKS                       R18 R18 K45 ["Stroke"]
      114 GETTABLEKS                       R18 R18 K46 ["Default"]
      116 GETTABLEKS                       R18 R18 K47 ["Color3"]
      118 SETTABLEKS                       R18 R17 K41 ["Color"]
      120 GETTABLEKS                       R18 R2 K41 ["Color"]
      122 GETTABLEKS                       R18 R18 K45 ["Stroke"]
      124 GETTABLEKS                       R18 R18 K46 ["Default"]
      126 GETTABLEKS                       R18 R18 K42 ["Transparency"]
      128 SETTABLEKS                       R18 R17 K42 ["Transparency"]
      130 NEWCLOSURE                       R20 P0
      131 CAPTURE                          VAL R2
      132 NAMECALL                         R18 R7 K48 ["map"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K43 ["Thickness"]
      137 SETTABLEKS                       R17 R16 K17 ["stroke"]
      139 JUMPIFNOT                        R13 ; [+4]
      140 NEWCLOSURE                       R17 P1
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R9
      143 JUMP                             ; [+1]
      144 LOADNIL                          R17
      145 SETTABLEKS                       R17 R16 K18 ["onAbsoluteSizeChanged"]
      147 LOADK                            R18 K49 ["%*--actions"]
      148 MOVE                             R20 R11
      149 NAMECALL                         R18 R18 K50 ["format"]
      151 CALL                             R18 2 1
      152 MOVE                             R17 R18
      153 SETTABLEKS                       R17 R16 K8 ["testId"]
      155 JUMPIFNOT                        R13 ; [+14]
      156 GETUPVAL                         R17 1
      157 GETTABLEKS                       R17 R17 K51 ["joinBindings"]
      159 DUPTABLE                         R18 K52 [{"sheetHeightAvailable", "actionsHeight"}]
      160 SETTABLEKS                       R4 R18 K1 ["sheetHeightAvailable"]
      162 SETTABLEKS                       R5 R18 K2 ["actionsHeight"]
      164 CALL                             R17 1 1
      165 DUPCLOSURE                       R19 K53 [PROTO_2]
      166 NAMECALL                         R17 R17 K48 ["map"]
      168 CALL                             R17 2 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R17
      171 SETTABLEKS                       R17 R16 K21 ["Position"]
      173 SETTABLEKS                       R1 R16 K24 ["ref"]
      175 GETUPVAL                         R18 5
      176 GETTABLEKS                       R18 R18 K54 ["FoundationSheetActionsSinkInput"]
      178 JUMPIFNOT                        R18 ; [+2]
      179 DUPCLOSURE                       R17 K55 [PROTO_3]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R17
      182 SETTABLEKS                       R17 R16 K25 ["onActivated"]
      184 GETUPVAL                         R18 5
      185 GETTABLEKS                       R18 R18 K56 ["FoundationSheetActionsNotSelectable"]
      187 JUMPIFNOT                        R18 ; [+2]
      188 DUPTABLE                         R17 K59 [{["Selectable"] = False}]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R17
      191 SETTABLEKS                       R17 R16 K26 ["selection"]
      193 GETUPVAL                         R18 5
      194 GETTABLEKS                       R18 R18 K54 ["FoundationSheetActionsSinkInput"]
      196 JUMPIFNOT                        R18 ; [+7]
      197 DUPTABLE                         R17 K61 [{"affordance"}]
      198 GETUPVAL                         R18 6
      199 GETTABLEKS                       R18 R18 K62 ["None"]
      201 SETTABLEKS                       R18 R17 K60 ["affordance"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R17
      205 SETTABLEKS                       R17 R16 K27 ["stateLayer"]
      207 GETTABLEKS                       R17 R0 K63 ["children"]
      209 CALL                             R14 3 1
      210 JUMPIFNOT                        R13 ; [+9]
      211 MOVE                             R15 R12
      212 JUMPIFNOT                        R15 ; [+6]
      213 GETUPVAL                         R15 7
      214 GETTABLEKS                       R15 R15 K64 ["createPortal"]
      216 MOVE                             R16 R14
      217 MOVE                             R17 R12
      218 CALL                             R15 2 1
      219 RETURN                           R15 1
      220 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K1 [script]
       21 LOADK                            R6 K9 ["Sheet"]
       22 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       24 CALL                             R4 2 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R4 K10 ["SheetContext"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R4 K11 ["SheetType"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Providers"]
       39 GETTABLEKS                       R8 R8 K13 ["Style"]
       41 GETTABLEKS                       R8 R8 K14 ["useTokens"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Utility"]
       48 GETTABLEKS                       R9 R9 K16 ["Flags"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Enums"]
       55 GETTABLEKS                       R10 R10 K18 ["StateLayerAffordance"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R0 K19 ["Components"]
       62 GETTABLEKS                       R11 R11 K20 ["View"]
       64 CALL                             R10 1 1
       65 DUPCLOSURE                       R11 K21 [PROTO_4]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R3
       74 GETTABLEKS                       R12 R2 K22 ["memo"]
       76 GETTABLEKS                       R13 R2 K23 ["forwardRef"]
       78 MOVE                             R14 R11
       79 CALL                             R13 1 -1
       80 CALL                             R12 -1 -1
       81 RETURN                           R12 -1
