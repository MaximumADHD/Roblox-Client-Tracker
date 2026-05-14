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
       55 DUPTABLE                         R16 K23 [{"tag", "padding", "stroke", "onAbsoluteSizeChanged", "ZIndex", "testId", "Position", "LayoutOrder", "ref"}]
       56 NEWTABLE                         R17 2 0
       58 LOADB                            R18 1
       59 SETTABLEKS                       R18 R17 K24 ["row gap-small size-full-0 auto-y"]
       61 SETTABLEKS                       R13 R17 K25 ["bg-surface-100"]
       63 SETTABLEKS                       R17 R16 K15 ["tag"]
       65 DUPTABLE                         R17 K30 [{"top", "left", "right", "bottom"}]
       66 GETIMPORT                        R18 K33 [UDim.new]
       68 LOADN                            R19 0
       69 GETTABLEKS                       R20 R2 K34 ["Margin"]
       71 GETTABLEKS                       R20 R20 K35 ["Small"]
       73 CALL                             R18 2 1
       74 SETTABLEKS                       R18 R17 K26 ["top"]
       76 GETIMPORT                        R18 K33 [UDim.new]
       78 LOADN                            R19 0
       79 GETTABLEKS                       R20 R2 K34 ["Margin"]
       81 GETTABLEKS                       R20 R20 K35 ["Small"]
       83 CALL                             R18 2 1
       84 SETTABLEKS                       R18 R17 K27 ["left"]
       86 GETIMPORT                        R18 K33 [UDim.new]
       88 LOADN                            R19 0
       89 GETTABLEKS                       R20 R2 K34 ["Margin"]
       91 GETTABLEKS                       R20 R20 K35 ["Small"]
       93 CALL                             R18 2 1
       94 SETTABLEKS                       R18 R17 K28 ["right"]
       96 GETIMPORT                        R18 K33 [UDim.new]
       98 LOADN                            R19 0
       99 GETTABLEKS                       R21 R2 K34 ["Margin"]
      101 GETTABLEKS                       R21 R21 K35 ["Small"]
      103 ADD                              R20 R9 R21
      104 CALL                             R18 2 1
      105 SETTABLEKS                       R18 R17 K29 ["bottom"]
      107 SETTABLEKS                       R17 R16 K16 ["padding"]
      109 DUPTABLE                         R17 K39 [{"Color", "Transparency", "Thickness"}]
      110 GETTABLEKS                       R18 R2 K36 ["Color"]
      112 GETTABLEKS                       R18 R18 K40 ["Stroke"]
      114 GETTABLEKS                       R18 R18 K41 ["Default"]
      116 GETTABLEKS                       R18 R18 K42 ["Color3"]
      118 SETTABLEKS                       R18 R17 K36 ["Color"]
      120 GETTABLEKS                       R18 R2 K36 ["Color"]
      122 GETTABLEKS                       R18 R18 K40 ["Stroke"]
      124 GETTABLEKS                       R18 R18 K41 ["Default"]
      126 GETTABLEKS                       R18 R18 K37 ["Transparency"]
      128 SETTABLEKS                       R18 R17 K37 ["Transparency"]
      130 NEWCLOSURE                       R20 P0
      131 CAPTURE                          VAL R2
      132 NAMECALL                         R18 R7 K43 ["map"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K38 ["Thickness"]
      137 SETTABLEKS                       R17 R16 K17 ["stroke"]
      139 JUMPIFNOT                        R13 ; [+4]
      140 NEWCLOSURE                       R17 P1
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R9
      143 JUMP                             ; [+1]
      144 LOADNIL                          R17
      145 SETTABLEKS                       R17 R16 K18 ["onAbsoluteSizeChanged"]
      147 LOADN                            R17 1
      148 SETTABLEKS                       R17 R16 K19 ["ZIndex"]
      150 LOADK                            R18 K44 ["%*--actions"]
      151 MOVE                             R20 R11
      152 NAMECALL                         R18 R18 K45 ["format"]
      154 CALL                             R18 2 1
      155 MOVE                             R17 R18
      156 SETTABLEKS                       R17 R16 K8 ["testId"]
      158 JUMPIFNOT                        R13 ; [+14]
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K46 ["joinBindings"]
      162 DUPTABLE                         R18 K47 [{"sheetHeightAvailable", "actionsHeight"}]
      163 SETTABLEKS                       R4 R18 K1 ["sheetHeightAvailable"]
      165 SETTABLEKS                       R5 R18 K2 ["actionsHeight"]
      167 CALL                             R17 1 1
      168 DUPCLOSURE                       R19 K48 [PROTO_2]
      169 NAMECALL                         R17 R17 K43 ["map"]
      171 CALL                             R17 2 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R17
      174 SETTABLEKS                       R17 R16 K20 ["Position"]
      176 LOADN                            R17 3
      177 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
      179 SETTABLEKS                       R1 R16 K22 ["ref"]
      181 GETTABLEKS                       R17 R0 K49 ["children"]
      183 CALL                             R14 3 1
      184 JUMPIFNOT                        R13 ; [+9]
      185 MOVE                             R15 R12
      186 JUMPIFNOT                        R15 ; [+6]
      187 GETUPVAL                         R15 5
      188 GETTABLEKS                       R15 R15 K50 ["createPortal"]
      190 MOVE                             R16 R14
      191 MOVE                             R17 R12
      192 CALL                             R15 2 1
      193 RETURN                           R15 1
      194 RETURN                           R14 1

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
       46 GETTABLEKS                       R9 R0 K15 ["Components"]
       48 GETTABLEKS                       R9 R9 K16 ["View"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K17 [PROTO_3]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R3
       58 GETTABLEKS                       R10 R2 K18 ["memo"]
       60 GETTABLEKS                       R11 R2 K19 ["forwardRef"]
       62 MOVE                             R12 R9
       63 CALL                             R11 1 -1
       64 CALL                             R10 -1 -1
       65 RETURN                           R10 -1
