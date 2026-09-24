PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETTABLEKS                       R2 R0 K0 ["DragUDim2"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 JUMP                             ; [+4]
        7 GETTABLEKS                       R2 R0 K0 ["DragUDim2"]
        9 GETTABLEKS                       R2 R2 K2 ["Y"]
       11 GETTABLEKS                       R4 R2 K3 ["Offset"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["current"]
       16 GETTABLEKS                       R5 R5 K3 ["Offset"]
       18 SUB                              R3 R4 R5
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R2 R4 K4 ["current"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["OnResize"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [UDim.new]
        3 CALL                             R3 0 1
        4 SETTABLEKS                       R3 R2 K3 ["current"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["orientation"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["Enums"]
       11 GETTABLEKS                       R4 R4 K4 ["Orientation"]
       13 GETTABLEKS                       R4 R4 K5 ["Vertical"]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["useRef"]
       22 GETIMPORT                        R4 K9 [UDim.new]
       24 CALL                             R4 0 -1
       25 CALL                             R3 -1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K10 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 2
       35 MOVE                             R7 R2
       36 GETTABLEKS                       R8 R0 K11 ["OnResize"]
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K10 ["useCallback"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R7 0 0
       48 CALL                             R5 2 1
       49 GETTABLEKS                       R6 R1 K12 ["Size"]
       51 GETTABLEKS                       R6 R6 K13 ["Size_400"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K14 ["createElement"]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K15 ["View"]
       59 DUPTABLE                         R9 K22 [{["LayoutOrder"], ["ZIndex"] = 10, ["Size"], ["Position"], ["tag"], ["stateLayer"]}]
       60 GETTABLEKS                       R10 R0 K16 ["LayoutOrder"]
       62 SETTABLEKS                       R10 R9 K16 ["LayoutOrder"]
       64 JUMPIFNOT                        R2 ; [+8]
       65 GETIMPORT                        R10 K24 [UDim2.new]
       67 LOADN                            R11 0
       68 MOVE                             R12 R6
       69 LOADN                            R13 1
       70 LOADN                            R14 0
       71 CALL                             R10 4 1
       72 JUMP                             ; [+7]
       73 GETIMPORT                        R10 K24 [UDim2.new]
       75 LOADN                            R11 1
       76 LOADN                            R12 0
       77 LOADN                            R13 0
       78 MOVE                             R14 R6
       79 CALL                             R10 4 1
       80 SETTABLEKS                       R10 R9 K12 ["Size"]
       82 JUMPIFNOT                        R2 ; [+9]
       83 GETIMPORT                        R10 K24 [UDim2.new]
       85 LOADN                            R11 0
       86 MINUS                            R13 R6
       87 DIVK                             R12 R13 K25 [2]
       88 LOADN                            R13 0
       89 LOADN                            R14 0
       90 CALL                             R10 4 1
       91 JUMP                             ; [+8]
       92 GETIMPORT                        R10 K24 [UDim2.new]
       94 LOADN                            R11 0
       95 LOADN                            R12 0
       96 LOADN                            R13 0
       97 MINUS                            R15 R6
       98 DIVK                             R14 R15 K25 [2]
       99 CALL                             R10 4 1
      100 SETTABLEKS                       R10 R9 K19 ["Position"]
      102 JUMPIFNOT                        R2 ; [+2]
      103 LOADK                            R10 K26 ["align-x-center"]
      104 JUMP                             ; [+1]
      105 LOADK                            R10 K27 ["align-y-center"]
      106 SETTABLEKS                       R10 R9 K20 ["tag"]
      108 DUPTABLE                         R10 K29 [{"affordance"}]
      109 GETUPVAL                         R11 0
      110 GETTABLEKS                       R11 R11 K3 ["Enums"]
      112 GETTABLEKS                       R11 R11 K30 ["StateLayerAffordance"]
      114 GETTABLEKS                       R11 R11 K31 ["None"]
      116 SETTABLEKS                       R11 R10 K28 ["affordance"]
      118 SETTABLEKS                       R10 R9 K21 ["stateLayer"]
      120 DUPTABLE                         R10 K34 [{"Divider", "Drag"}]
      121 GETUPVAL                         R11 1
      122 GETTABLEKS                       R11 R11 K14 ["createElement"]
      124 GETUPVAL                         R12 0
      125 GETTABLEKS                       R12 R12 K32 ["Divider"]
      127 DUPTABLE                         R13 K35 [{"orientation"}]
      128 GETTABLEKS                       R14 R0 K2 ["orientation"]
      130 SETTABLEKS                       R14 R13 K2 ["orientation"]
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R10 K32 ["Divider"]
      135 GETUPVAL                         R11 1
      136 GETTABLEKS                       R11 R11 K14 ["createElement"]
      138 LOADK                            R12 K36 ["UIDragDetector"]
      139 NEWTABLE                         R13 8 0
      141 JUMPIFNOT                        R2 ; [+6]
      142 GETIMPORT                        R14 K38 [Vector2.new]
      144 LOADN                            R15 1
      145 LOADN                            R16 0
      146 CALL                             R14 2 1
      147 JUMP                             ; [+5]
      148 GETIMPORT                        R14 K38 [Vector2.new]
      150 LOADN                            R15 0
      151 LOADN                            R16 1
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K39 ["DragAxis"]
      155 GETIMPORT                        R14 K43 [Enum.UIDragDetectorDragStyle.TranslateLine]
      157 SETTABLEKS                       R14 R13 K44 ["DragStyle"]
      159 GETIMPORT                        R14 K47 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      161 SETTABLEKS                       R14 R13 K48 ["ResponseStyle"]
      163 GETUPVAL                         R14 1
      164 GETTABLEKS                       R14 R14 K49 ["Event"]
      166 GETTABLEKS                       R14 R14 K50 ["DragStart"]
      168 SETTABLE                         R4 R13 R14
      169 GETUPVAL                         R14 1
      170 GETTABLEKS                       R14 R14 K49 ["Event"]
      172 GETTABLEKS                       R14 R14 K51 ["DragContinue"]
      174 SETTABLE                         R4 R13 R14
      175 GETUPVAL                         R14 1
      176 GETTABLEKS                       R14 R14 K49 ["Event"]
      178 GETTABLEKS                       R14 R14 K52 ["DragEnd"]
      180 SETTABLE                         R5 R13 R14
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R10 K33 ["Drag"]
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
