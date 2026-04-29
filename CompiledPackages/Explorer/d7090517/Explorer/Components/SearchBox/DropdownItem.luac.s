PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClick"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["text"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useToggleState"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 2
       11 GETTABLEKS                       R5 R0 K2 ["onClick"]
       13 GETTABLEKS                       R6 R0 K3 ["text"]
       15 SETLIST                          R4 R5 2 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 3
       21 LOADK                            R5 K4 ["TextButton"]
       22 NEWTABLE                         R6 16 0
       24 LOADB                            R7 0
       25 SETTABLEKS                       R7 R6 K5 ["AutoButtonColor"]
       27 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       31 GETTABLEKS                       R8 R0 K10 ["isSelected"]
       33 JUMPIF                           R8 ; [+3]
       34 GETTABLEKS                       R8 R1 K11 ["enabled"]
       36 JUMPIFNOT                        R8 ; [+2]
       37 LOADK                            R7 K12 [0.92]
       38 JUMP                             ; [+1]
       39 LOADN                            R7 1
       40 SETTABLEKS                       R7 R6 K13 ["BackgroundTransparency"]
       42 GETTABLEKS                       R7 R0 K14 ["index"]
       44 SETTABLEKS                       R7 R6 K15 ["LayoutOrder"]
       46 GETIMPORT                        R7 K18 [UDim2.new]
       48 GETTABLEKS                       R10 R0 K19 ["minSize"]
       50 GETTABLEKS                       R9 R10 K20 ["X"]
       52 GETTABLEKS                       R8 R9 K21 ["Scale"]
       54 GETTABLEKS                       R11 R0 K19 ["minSize"]
       56 GETTABLEKS                       R10 R11 K20 ["X"]
       58 GETTABLEKS                       R9 R10 K22 ["Offset"]
       60 LOADN                            R10 0
       61 LOADN                            R11 0
       62 CALL                             R7 4 1
       63 SETTABLEKS                       R7 R6 K23 ["Size"]
       65 LOADN                            R7 2
       66 SETTABLEKS                       R7 R6 K24 ["ZIndex"]
       68 GETTABLEKS                       R7 R0 K25 ["itemRef"]
       70 SETTABLEKS                       R7 R6 K26 ["ref"]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R8 R9 K27 ["Event"]
       75 GETTABLEKS                       R7 R8 K28 ["MouseButton1Down"]
       77 SETTABLE                         R2 R6 R7
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R8 R9 K27 ["Event"]
       81 GETTABLEKS                       R7 R8 K29 ["MouseEnter"]
       83 GETTABLEKS                       R8 R1 K30 ["enable"]
       85 SETTABLE                         R8 R6 R7
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R8 R9 K27 ["Event"]
       89 GETTABLEKS                       R7 R8 K31 ["MouseLeave"]
       91 GETTABLEKS                       R8 R1 K32 ["disable"]
       93 SETTABLE                         R8 R6 R7
       94 GETUPVAL                         R8 1
       95 GETTABLEKS                       R7 R8 K33 ["Tag"]
       97 LOADK                            R9 K34 ["X-Top X-RowS Explorer-SidePadS Explorer-SearchBox-Corner Explorer-SearchBox-DropdownItem data-testid=DropdownItem-%*"]
       98 GETTABLEKS                       R11 R0 K14 ["index"]
      100 NAMECALL                         R9 R9 K35 ["format"]
      102 CALL                             R9 2 1
      103 MOVE                             R8 R9
      104 SETTABLE                         R8 R6 R7
      105 DUPTABLE                         R7 K38 [{"Icon", "Text"}]
      106 GETTABLEKS                       R8 R0 K39 ["icon"]
      108 JUMPIFNOT                        R8 ; [+53]
      109 GETUPVAL                         R8 3
      110 LOADK                            R9 K40 ["Frame"]
      111 NEWTABLE                         R10 4 0
      113 LOADN                            R11 1
      114 SETTABLEKS                       R11 R10 K13 ["BackgroundTransparency"]
      116 MOVE                             R11 R3
      117 CALL                             R11 0 1
      118 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R11 R12 K33 ["Tag"]
      123 LOADK                            R12 K41 ["X-Fit"]
      124 SETTABLE                         R12 R10 R11
      125 DUPTABLE                         R11 K44 [{"Image", "SmallAestheticPadding"}]
      126 GETUPVAL                         R12 3
      127 LOADK                            R13 K45 ["ImageLabel"]
      128 NEWTABLE                         R14 2 0
      130 GETTABLEKS                       R15 R0 K39 ["icon"]
      132 SETTABLEKS                       R15 R14 K42 ["Image"]
      134 GETUPVAL                         R16 1
      135 GETTABLEKS                       R15 R16 K33 ["Tag"]
      137 GETUPVAL                         R16 4
      138 GETTABLEKS                       R19 R0 K47 ["keepIconColor"]
      140 NOT                              R18 R19
      141 ANDK                             R17 R18 K46 ["Explorer-Content-Standard"]
      142 LOADK                            R18 K48 ["Explorer-Icon"]
      143 CALL                             R16 2 1
      144 SETTABLE                         R16 R14 R15
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K42 ["Image"]
      148 GETUPVAL                         R12 3
      149 LOADK                            R13 K49 ["UIPadding"]
      150 DUPTABLE                         R14 K51 [{"PaddingTop"}]
      151 GETIMPORT                        R15 K53 [UDim.new]
      153 LOADN                            R16 0
      154 LOADN                            R17 3
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K50 ["PaddingTop"]
      158 CALL                             R12 2 1
      159 SETTABLEKS                       R12 R11 K43 ["SmallAestheticPadding"]
      161 CALL                             R8 3 1
      162 SETTABLEKS                       R8 R7 K36 ["Icon"]
      164 GETUPVAL                         R8 3
      165 LOADK                            R9 K54 ["TextLabel"]
      166 NEWTABLE                         R10 8 0
      168 MOVE                             R11 R3
      169 CALL                             R11 0 1
      170 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      172 GETIMPORT                        R11 K56 [UDim2.fromScale]
      174 LOADN                            R12 1
      175 LOADN                            R13 0
      176 CALL                             R11 2 1
      177 SETTABLEKS                       R11 R10 K23 ["Size"]
      179 GETTABLEKS                       R11 R0 K57 ["displayText"]
      181 JUMPIF                           R11 ; [+2]
      182 GETTABLEKS                       R11 R0 K3 ["text"]
      184 SETTABLEKS                       R11 R10 K37 ["Text"]
      186 LOADB                            R11 1
      187 SETTABLEKS                       R11 R10 K58 ["TextWrapped"]
      189 GETUPVAL                         R12 1
      190 GETTABLEKS                       R11 R12 K33 ["Tag"]
      192 GETUPVAL                         R13 5
      193 CALL                             R13 0 1
      194 JUMPIFNOT                        R13 ; [+2]
      195 LOADK                            R12 K59 ["X-FitY Explorer-FillX Explorer-Content-Standard"]
      196 JUMP                             ; [+1]
      197 LOADK                            R12 K60 ["X-FitY Explorer-FillX DEPRECATED_Explorer-StandardText"]
      198 SETTABLE                         R12 R10 R11
      199 DUPTABLE                         R11 K62 [{"MinHeight"}]
      200 GETUPVAL                         R12 3
      201 LOADK                            R13 K63 ["UISizeConstraint"]
      202 DUPTABLE                         R14 K65 [{"MinSize"}]
      203 GETIMPORT                        R15 K67 [Vector2.new]
      205 LOADN                            R16 0
      206 GETTABLEKS                       R19 R0 K19 ["minSize"]
      208 GETTABLEKS                       R18 R19 K8 ["Y"]
      210 GETTABLEKS                       R17 R18 K22 ["Offset"]
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K64 ["MinSize"]
      215 CALL                             R12 2 1
      216 SETTABLEKS                       R12 R11 K61 ["MinHeight"]
      218 CALL                             R8 3 1
      219 SETTABLEKS                       R8 R7 K37 ["Text"]
      221 CALL                             R4 3 -1
      222 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["createNextOrder"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K12 ["createElement"]
       37 GETTABLEKS                       R7 R1 K13 ["Styling"]
       39 GETTABLEKS                       R6 R7 K14 ["joinTags"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R9 R0 K15 ["Flags"]
       45 GETTABLEKS                       R8 R9 K16 ["getFFlagExplorerUseBuilderSans"]
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 RETURN                           R8 1
