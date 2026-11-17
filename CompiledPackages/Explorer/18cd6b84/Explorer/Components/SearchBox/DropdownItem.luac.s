PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["text"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useToggleState"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
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
       48 GETTABLEKS                       R8 R0 K19 ["minSize"]
       50 GETTABLEKS                       R8 R8 K20 ["X"]
       52 GETTABLEKS                       R8 R8 K21 ["Scale"]
       54 GETTABLEKS                       R9 R0 K19 ["minSize"]
       56 GETTABLEKS                       R9 R9 K20 ["X"]
       58 GETTABLEKS                       R9 R9 K22 ["Offset"]
       60 LOADN                            R10 0
       61 LOADN                            R11 0
       62 CALL                             R7 4 1
       63 SETTABLEKS                       R7 R6 K23 ["Size"]
       65 LOADN                            R7 2
       66 SETTABLEKS                       R7 R6 K24 ["ZIndex"]
       68 GETTABLEKS                       R7 R0 K25 ["itemRef"]
       70 SETTABLEKS                       R7 R6 K26 ["ref"]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K27 ["Event"]
       75 GETTABLEKS                       R7 R7 K28 ["MouseButton1Down"]
       77 SETTABLE                         R2 R6 R7
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K27 ["Event"]
       81 GETTABLEKS                       R7 R7 K29 ["MouseEnter"]
       83 GETTABLEKS                       R8 R1 K30 ["enable"]
       85 SETTABLE                         R8 R6 R7
       86 GETUPVAL                         R7 1
       87 GETTABLEKS                       R7 R7 K27 ["Event"]
       89 GETTABLEKS                       R7 R7 K31 ["MouseLeave"]
       91 GETTABLEKS                       R8 R1 K32 ["disable"]
       93 SETTABLE                         R8 R6 R7
       94 GETUPVAL                         R7 1
       95 GETTABLEKS                       R7 R7 K33 ["Tag"]
       97 LOADK                            R8 K34 ["X-Top X-RowS Explorer-SidePadS Explorer-SearchBox-Corner Explorer-SearchBox-DropdownItem data-testid=DropdownItem-%*"]
       98 GETTABLEKS                       R10 R0 K14 ["index"]
      100 NAMECALL                         R8 R8 K35 ["format"]
      102 CALL                             R8 2 1
      103 SETTABLE                         R8 R6 R7
      104 DUPTABLE                         R7 K38 [{"Icon", "Text"}]
      105 GETTABLEKS                       R8 R0 K39 ["icon"]
      107 JUMPIFNOT                        R8 ; [+53]
      108 GETUPVAL                         R8 3
      109 LOADK                            R9 K40 ["Frame"]
      110 NEWTABLE                         R10 4 0
      112 LOADN                            R11 1
      113 SETTABLEKS                       R11 R10 K13 ["BackgroundTransparency"]
      115 MOVE                             R11 R3
      116 CALL                             R11 0 1
      117 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      119 GETUPVAL                         R11 1
      120 GETTABLEKS                       R11 R11 K33 ["Tag"]
      122 LOADK                            R12 K41 ["X-Fit"]
      123 SETTABLE                         R12 R10 R11
      124 DUPTABLE                         R11 K44 [{"Image", "SmallAestheticPadding"}]
      125 GETUPVAL                         R12 3
      126 LOADK                            R13 K45 ["ImageLabel"]
      127 NEWTABLE                         R14 2 0
      129 GETTABLEKS                       R15 R0 K39 ["icon"]
      131 SETTABLEKS                       R15 R14 K42 ["Image"]
      133 GETUPVAL                         R15 1
      134 GETTABLEKS                       R15 R15 K33 ["Tag"]
      136 GETUPVAL                         R16 4
      137 GETTABLEKS                       R19 R0 K47 ["keepIconColor"]
      139 NOT                              R18 R19
      140 ANDK                             R17 R18 K46 ["Explorer-Content-Standard"]
      141 LOADK                            R18 K48 ["Explorer-Icon"]
      142 CALL                             R16 2 1
      143 SETTABLE                         R16 R14 R15
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K42 ["Image"]
      147 GETUPVAL                         R12 3
      148 LOADK                            R13 K49 ["UIPadding"]
      149 DUPTABLE                         R14 K51 [{"PaddingTop"}]
      150 GETIMPORT                        R15 K53 [UDim.new]
      152 LOADN                            R16 0
      153 LOADN                            R17 3
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K50 ["PaddingTop"]
      157 CALL                             R12 2 1
      158 SETTABLEKS                       R12 R11 K43 ["SmallAestheticPadding"]
      160 CALL                             R8 3 1
      161 SETTABLEKS                       R8 R7 K36 ["Icon"]
      163 GETUPVAL                         R8 3
      164 LOADK                            R9 K54 ["TextLabel"]
      165 NEWTABLE                         R10 8 0
      167 MOVE                             R11 R3
      168 CALL                             R11 0 1
      169 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      171 GETIMPORT                        R11 K56 [UDim2.fromScale]
      173 LOADN                            R12 1
      174 LOADN                            R13 0
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R10 K23 ["Size"]
      178 GETTABLEKS                       R11 R0 K57 ["displayText"]
      180 JUMPIF                           R11 ; [+2]
      181 GETTABLEKS                       R11 R0 K3 ["text"]
      183 SETTABLEKS                       R11 R10 K37 ["Text"]
      185 LOADB                            R11 1
      186 SETTABLEKS                       R11 R10 K58 ["TextWrapped"]
      188 GETUPVAL                         R11 1
      189 GETTABLEKS                       R11 R11 K33 ["Tag"]
      191 GETUPVAL                         R13 5
      192 CALL                             R13 0 1
      193 JUMPIFNOT                        R13 ; [+2]
      194 LOADK                            R12 K59 ["X-FitY Explorer-FillX Explorer-Content-Standard"]
      195 JUMP                             ; [+1]
      196 LOADK                            R12 K60 ["X-FitY Explorer-FillX DEPRECATED_Explorer-StandardText"]
      197 SETTABLE                         R12 R10 R11
      198 DUPTABLE                         R11 K62 [{"MinHeight"}]
      199 GETUPVAL                         R12 3
      200 LOADK                            R13 K63 ["UISizeConstraint"]
      201 DUPTABLE                         R14 K65 [{"MinSize"}]
      202 GETIMPORT                        R15 K67 [Vector2.new]
      204 LOADN                            R16 0
      205 GETTABLEKS                       R17 R0 K19 ["minSize"]
      207 GETTABLEKS                       R17 R17 K8 ["Y"]
      209 GETTABLEKS                       R17 R17 K22 ["Offset"]
      211 CALL                             R15 2 1
      212 SETTABLEKS                       R15 R14 K64 ["MinSize"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K61 ["MinHeight"]
      217 CALL                             R8 3 1
      218 SETTABLEKS                       R8 R7 K37 ["Text"]
      220 CALL                             R4 3 -1
      221 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["createNextOrder"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K12 ["createElement"]
       37 GETTABLEKS                       R6 R1 K13 ["Styling"]
       39 GETTABLEKS                       R6 R6 K14 ["joinTags"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K15 ["Flags"]
       45 GETTABLEKS                       R8 R8 K16 ["getFFlagExplorerUseBuilderSans"]
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 RETURN                           R8 1
