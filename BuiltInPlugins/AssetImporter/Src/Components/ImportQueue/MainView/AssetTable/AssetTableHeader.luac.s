PROTO_0:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 1
        4 GETTABLE                         R6 R3 R0
        5 GETTABLEKS                       R5 R6 K3 ["Scale"]
        7 GETTABLEKS                       R6 R2 K3 ["Scale"]
        9 ADD                              R4 R5 R6
       10 ADDK                             R8 R0 K4 [1]
       11 GETTABLE                         R7 R3 R8
       12 GETTABLEKS                       R6 R7 K3 ["Scale"]
       14 GETTABLEKS                       R7 R2 K3 ["Scale"]
       16 SUB                              R5 R6 R7
       17 LOADK                            R6 K5 [0.05]
       18 JUMPIFNOTLT                      R6 R4 ; [+17]
       20 LOADK                            R6 K5 [0.05]
       21 JUMPIFNOTLT                      R6 R5 ; [+14]
       23 GETIMPORT                        R6 K8 [UDim.new]
       25 MOVE                             R7 R4
       26 LOADN                            R8 0
       27 CALL                             R6 2 1
       28 SETTABLE                         R6 R3 R0
       29 ADDK                             R6 R0 K4 [1]
       30 GETIMPORT                        R7 K8 [UDim.new]
       32 MOVE                             R8 R5
       33 LOADN                            R9 0
       34 CALL                             R7 2 1
       35 SETTABLE                         R7 R3 R6
       36 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ControlState"]
        3 GETTABLEKS                       R1 R2 K1 ["Hover"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+7]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["SizeEW"]
        9 NAMECALL                         R1 R1 K3 ["__pushCursor"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K4 ["__popCursor"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 6
        2 LOADK                            R1 K0 [""]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K1 ["ImportQueue"]
        5 LOADK                            R5 K2 ["Asset"]
        6 NAMECALL                         R2 R2 K3 ["getText"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 0
       10 LOADK                            R5 K4 ["Properties"]
       11 LOADK                            R6 K5 ["PreferredUploadId"]
       12 NAMECALL                         R3 R3 K3 ["getText"]
       14 CALL                             R3 3 1
       15 GETUPVAL                         R4 0
       16 LOADK                            R6 K1 ["ImportQueue"]
       17 LOADK                            R7 K6 ["Preset"]
       18 NAMECALL                         R4 R4 K3 ["getText"]
       20 CALL                             R4 3 1
       21 GETUPVAL                         R5 0
       22 LOADK                            R7 K1 ["ImportQueue"]
       23 LOADK                            R8 K7 ["Path"]
       24 NAMECALL                         R5 R5 K3 ["getText"]
       26 CALL                             R5 3 1
       27 GETUPVAL                         R6 0
       28 LOADK                            R8 K1 ["ImportQueue"]
       29 LOADK                            R9 K8 ["Status"]
       30 NAMECALL                         R6 R6 K3 ["getText"]
       32 CALL                             R6 3 -1
       33 SETLIST                          R0 R1 -1 [1]
       35 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["DragUDim2"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 GETUPVAL                         R3 1
        6 SUB                              R1 R2 R3
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["DragUDim2"]
       10 GETTABLEKS                       R2 R3 K1 ["X"]
       12 SETUPVAL                         R2 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CALL                             R2 3 1
       18 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["SizeEW"]
        2 NAMECALL                         R2 R2 K1 ["__pushCursor"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["SetColumnWidths"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["__resetCursor"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K3 [UDim.new]
        6 CALL                             R2 0 1
        7 SETUPVAL                         R2 1
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R2
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R1
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 NEWTABLE                         R5 0 0
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K3 ["new"]
       31 CALL                             R6 0 1
       32 MOVE                             R7 R4
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 FORGPREP                         R7
       36 LOADNIL                          R12
       37 JUMPIFEQKN                       R10 K4 [1] ; [+4]
       39 LENGTH                           R13 R4
       40 JUMPIFNOTEQ                      R10 R13 ; [+11]
       42 GETTABLEKS                       R14 R0 K5 ["ColumnWidths"]
       44 GETTABLE                         R13 R14 R10
       45 GETIMPORT                        R14 K7 [UDim.new]
       47 LOADN                            R15 0
       48 LOADN                            R16 8
       49 CALL                             R14 2 1
       50 SUB                              R12 R13 R14
       51 JUMP                             ; [+9]
       52 GETTABLEKS                       R14 R0 K5 ["ColumnWidths"]
       54 GETTABLE                         R13 R14 R10
       55 GETIMPORT                        R14 K7 [UDim.new]
       57 LOADN                            R15 0
       58 LOADN                            R16 16
       59 CALL                             R14 2 1
       60 SUB                              R12 R13 R14
       61 GETUPVAL                         R13 5
       62 GETUPVAL                         R15 6
       63 GETTABLEKS                       R14 R15 K8 ["Text"]
       65 DUPTABLE                         R15 K12 [{"tag", "LayoutOrder", "Size", "Text"}]
       66 LOADK                            R16 K13 ["size-full-0 auto-y content-muted text-align-x-left text-align-y-center text-truncate-split text-caption-small"]
       67 SETTABLEKS                       R16 R15 K9 ["tag"]
       69 NAMECALL                         R16 R6 K14 ["getNextOrder"]
       71 CALL                             R16 1 1
       72 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       74 GETIMPORT                        R16 K16 [UDim2.new]
       76 MOVE                             R17 R12
       77 GETIMPORT                        R18 K7 [UDim.new]
       79 CALL                             R18 0 -1
       80 CALL                             R16 -1 1
       81 SETTABLEKS                       R16 R15 K11 ["Size"]
       83 SETTABLEKS                       R11 R15 K8 ["Text"]
       85 CALL                             R13 2 1
       86 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
       88 MOVE                             R15 R5
       89 MOVE                             R16 R13
       90 GETIMPORT                        R14 K19 [table.insert]
       92 CALL                             R14 2 0
       93 GETIMPORT                        R14 K7 [UDim.new]
       95 CALL                             R14 0 1
       96 GETUPVAL                         R16 2
       97 GETTABLEKS                       R15 R16 K1 ["useCallback"]
       99 NEWCLOSURE                       R16 P2
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          REF R14
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R10
      105 NEWTABLE                         R17 0 1
      107 GETTABLEKS                       R18 R0 K20 ["SetColumnWidths"]
      109 SETLIST                          R17 R18 1 [1]
      111 CALL                             R15 2 1
      112 GETUPVAL                         R17 2
      113 GETTABLEKS                       R16 R17 K1 ["useCallback"]
      115 NEWCLOSURE                       R17 P3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          REF R14
      118 NEWTABLE                         R18 0 1
      120 MOVE                             R19 R14
      121 SETLIST                          R18 R19 1 [1]
      123 CALL                             R16 2 1
      124 GETUPVAL                         R17 5
      125 GETUPVAL                         R19 6
      126 GETTABLEKS                       R18 R19 K21 ["View"]
      128 DUPTABLE                         R19 K23 [{"tag", "LayoutOrder", "onStateChanged"}]
      129 LOADK                            R20 K24 ["size-400-full align-x-center"]
      130 SETTABLEKS                       R20 R19 K9 ["tag"]
      132 NAMECALL                         R20 R6 K14 ["getNextOrder"]
      134 CALL                             R20 1 1
      135 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      137 SETTABLEKS                       R3 R19 K22 ["onStateChanged"]
      139 DUPTABLE                         R20 K27 [{"Divider", "Drag"}]
      140 GETUPVAL                         R21 5
      141 GETUPVAL                         R23 6
      142 GETTABLEKS                       R22 R23 K25 ["Divider"]
      144 DUPTABLE                         R23 K29 [{"orientation"}]
      145 GETUPVAL                         R27 6
      146 GETTABLEKS                       R26 R27 K30 ["Enums"]
      148 GETTABLEKS                       R25 R26 K31 ["Orientation"]
      150 GETTABLEKS                       R24 R25 K32 ["Vertical"]
      152 SETTABLEKS                       R24 R23 K28 ["orientation"]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K25 ["Divider"]
      157 GETUPVAL                         R21 5
      158 LOADK                            R22 K33 ["UIDragDetector"]
      159 NEWTABLE                         R23 8 0
      161 GETIMPORT                        R24 K35 [Vector2.new]
      163 LOADN                            R25 1
      164 LOADN                            R26 0
      165 CALL                             R24 2 1
      166 SETTABLEKS                       R24 R23 K36 ["DragAxis"]
      168 GETIMPORT                        R24 K40 [Enum.UIDragDetectorDragStyle.TranslateLine]
      170 SETTABLEKS                       R24 R23 K41 ["DragStyle"]
      172 GETIMPORT                        R24 K44 [Enum.UIDragDetectorResponseStyle.CustomScale]
      174 SETTABLEKS                       R24 R23 K45 ["ResponseStyle"]
      176 GETUPVAL                         R26 2
      177 GETTABLEKS                       R25 R26 K46 ["Event"]
      179 GETTABLEKS                       R24 R25 K47 ["DragStart"]
      181 SETTABLE                         R15 R23 R24
      182 GETUPVAL                         R26 2
      183 GETTABLEKS                       R25 R26 K46 ["Event"]
      185 GETTABLEKS                       R24 R25 K48 ["DragContinue"]
      187 SETTABLE                         R15 R23 R24
      188 GETUPVAL                         R26 2
      189 GETTABLEKS                       R25 R26 K46 ["Event"]
      191 GETTABLEKS                       R24 R25 K49 ["DragEnd"]
      193 SETTABLE                         R16 R23 R24
      194 CALL                             R21 2 1
      195 SETTABLEKS                       R21 R20 K26 ["Drag"]
      197 CALL                             R17 3 1
      198 FASTCALL2                        TABLE_INSERT R5 R17 ; [+5]
      200 MOVE                             R19 R5
      201 MOVE                             R20 R17
      202 GETIMPORT                        R18 K19 [table.insert]
      204 CALL                             R18 2 0
      205 CLOSEUPVALS                      R14
      206 FORGLOOP                         R7 2 ; [-171]
      208 GETIMPORT                        R7 K51 [table.remove]
      210 MOVE                             R8 R5
      211 CALL                             R7 1 0
      212 GETUPVAL                         R7 5
      213 GETUPVAL                         R9 6
      214 GETTABLEKS                       R8 R9 K21 ["View"]
      216 DUPTABLE                         R9 K52 [{"tag", "LayoutOrder"}]
      217 LOADK                            R10 K53 ["row size-full-600 align-y-center padding-y-xsmall"]
      218 SETTABLEKS                       R10 R9 K9 ["tag"]
      220 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
      222 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
      224 MOVE                             R10 R5
      225 CALL                             R7 3 -1
      226 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["Localization"]
       36 GETTABLEKS                       R8 R6 K14 ["Mouse"]
       38 GETTABLEKS                       R10 R5 K15 ["Util"]
       40 GETTABLEKS                       R9 R10 K16 ["LayoutOrderIterator"]
       42 DUPCLOSURE                       R10 K17 [PROTO_0]
       43 DUPCLOSURE                       R11 K18 [PROTO_6]
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R10
       52 RETURN                           R11 1
