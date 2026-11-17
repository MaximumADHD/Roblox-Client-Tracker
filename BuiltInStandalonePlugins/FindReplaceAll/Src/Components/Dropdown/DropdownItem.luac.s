PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["text"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useToggleState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 2
       14 GETTABLEKS                       R6 R0 K2 ["onClick"]
       16 GETTABLEKS                       R7 R0 K3 ["text"]
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 LOADK                            R5 K4 ["TextButton"]
       23 NEWTABLE                         R6 16 0
       25 LOADB                            R7 0
       26 SETTABLEKS                       R7 R6 K5 ["AutoButtonColor"]
       28 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       30 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       32 GETTABLEKS                       R8 R2 K10 ["enabled"]
       34 JUMPIFNOT                        R8 ; [+4]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K11 ["hoveredTransparency"]
       38 JUMP                             ; [+1]
       39 LOADN                            R7 1
       40 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
       42 GETTABLEKS                       R7 R0 K13 ["index"]
       44 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       46 GETIMPORT                        R7 K17 [UDim2.new]
       48 GETTABLEKS                       R8 R0 K18 ["minSize"]
       50 GETTABLEKS                       R8 R8 K19 ["X"]
       52 GETTABLEKS                       R8 R8 K20 ["Scale"]
       54 GETTABLEKS                       R9 R0 K18 ["minSize"]
       56 GETTABLEKS                       R9 R9 K19 ["X"]
       58 GETTABLEKS                       R9 R9 K21 ["Offset"]
       60 LOADN                            R10 0
       61 LOADN                            R11 0
       62 CALL                             R7 4 1
       63 SETTABLEKS                       R7 R6 K22 ["Size"]
       65 LOADN                            R7 2
       66 SETTABLEKS                       R7 R6 K23 ["ZIndex"]
       68 GETTABLEKS                       R7 R0 K24 ["itemRef"]
       70 SETTABLEKS                       R7 R6 K25 ["ref"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K26 ["Event"]
       75 GETTABLEKS                       R7 R7 K27 ["MouseButton1Down"]
       77 SETTABLE                         R3 R6 R7
       78 GETUPVAL                         R7 2
       79 GETTABLEKS                       R7 R7 K26 ["Event"]
       81 GETTABLEKS                       R7 R7 K28 ["MouseEnter"]
       83 GETTABLEKS                       R8 R2 K29 ["enable"]
       85 SETTABLE                         R8 R6 R7
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R7 R7 K26 ["Event"]
       89 GETTABLEKS                       R7 R7 K30 ["MouseLeave"]
       91 GETTABLEKS                       R8 R2 K31 ["disable"]
       93 SETTABLE                         R8 R6 R7
       94 GETUPVAL                         R7 2
       95 GETTABLEKS                       R7 R7 K32 ["Tag"]
       97 LOADK                            R8 K33 ["X-Top X-RowS FindReplaceAll-SidePadS FindReplaceAll-DropdownItem data-testid=DropdownItem-%*"]
       98 GETTABLEKS                       R10 R0 K13 ["index"]
      100 NAMECALL                         R8 R8 K34 ["format"]
      102 CALL                             R8 2 1
      103 SETTABLE                         R8 R6 R7
      104 DUPTABLE                         R7 K37 [{"Icon", "Text"}]
      105 GETTABLEKS                       R8 R0 K38 ["icon"]
      107 JUMPIFNOT                        R8 ; [+53]
      108 GETUPVAL                         R8 3
      109 LOADK                            R9 K39 ["Frame"]
      110 NEWTABLE                         R10 4 0
      112 LOADN                            R11 1
      113 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
      115 MOVE                             R11 R1
      116 CALL                             R11 0 1
      117 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      119 GETUPVAL                         R11 2
      120 GETTABLEKS                       R11 R11 K32 ["Tag"]
      122 LOADK                            R12 K40 ["X-Fit"]
      123 SETTABLE                         R12 R10 R11
      124 DUPTABLE                         R11 K43 [{"Image", "SmallAestheticPadding"}]
      125 GETUPVAL                         R12 3
      126 LOADK                            R13 K44 ["ImageLabel"]
      127 NEWTABLE                         R14 1 0
      129 GETUPVAL                         R15 2
      130 GETTABLEKS                       R15 R15 K32 ["Tag"]
      132 GETUPVAL                         R16 5
      133 GETTABLEKS                       R18 R0 K45 ["keepIconColor"]
      135 JUMPIF                           R18 ; [+2]
      136 LOADK                            R17 K46 ["FindReplaceAll-Content-Standard"]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R17
      139 LOADK                            R18 K47 ["FindReplaceAll-Icon"]
      140 GETTABLEKS                       R19 R0 K38 ["icon"]
      142 CALL                             R16 3 1
      143 SETTABLE                         R16 R14 R15
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K41 ["Image"]
      147 GETUPVAL                         R12 3
      148 LOADK                            R13 K48 ["UIPadding"]
      149 DUPTABLE                         R14 K50 [{"PaddingTop"}]
      150 GETIMPORT                        R15 K52 [UDim.new]
      152 LOADN                            R16 0
      153 LOADN                            R17 3
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K49 ["PaddingTop"]
      157 CALL                             R12 2 1
      158 SETTABLEKS                       R12 R11 K42 ["SmallAestheticPadding"]
      160 CALL                             R8 3 1
      161 SETTABLEKS                       R8 R7 K35 ["Icon"]
      163 GETUPVAL                         R8 3
      164 LOADK                            R9 K53 ["TextLabel"]
      165 NEWTABLE                         R10 8 0
      167 MOVE                             R11 R1
      168 CALL                             R11 0 1
      169 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      171 GETIMPORT                        R11 K55 [UDim2.fromScale]
      173 LOADN                            R12 1
      174 LOADN                            R13 0
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R10 K22 ["Size"]
      178 GETTABLEKS                       R11 R0 K56 ["displayText"]
      180 JUMPIF                           R11 ; [+2]
      181 GETTABLEKS                       R11 R0 K3 ["text"]
      183 SETTABLEKS                       R11 R10 K36 ["Text"]
      185 LOADB                            R11 1
      186 SETTABLEKS                       R11 R10 K57 ["TextWrapped"]
      188 GETUPVAL                         R11 2
      189 GETTABLEKS                       R11 R11 K32 ["Tag"]
      191 LOADK                            R12 K58 ["X-FitY FindReplaceAll-FillX FindReplaceAll-StandardText"]
      192 SETTABLE                         R12 R10 R11
      193 DUPTABLE                         R11 K60 [{"MinHeight"}]
      194 GETUPVAL                         R12 3
      195 LOADK                            R13 K61 ["UISizeConstraint"]
      196 DUPTABLE                         R14 K63 [{"MinSize"}]
      197 GETIMPORT                        R15 K65 [Vector2.new]
      199 LOADN                            R16 0
      200 GETTABLEKS                       R17 R0 K18 ["minSize"]
      202 GETTABLEKS                       R17 R17 K8 ["Y"]
      204 GETTABLEKS                       R17 R17 K21 ["Offset"]
      206 CALL                             R15 2 1
      207 SETTABLEKS                       R15 R14 K62 ["MinSize"]
      209 CALL                             R12 2 1
      210 SETTABLEKS                       R12 R11 K59 ["MinHeight"]
      212 CALL                             R8 3 1
      213 SETTABLEKS                       R8 R7 K36 ["Text"]
      215 CALL                             R4 3 -1
      216 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["ReactUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Resources"]
       29 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K13 ["Framework"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R7 R7 K7 ["ReactUtils"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R6 R6 K14 ["createNextOrder"]
       48 GETTABLEKS                       R7 R5 K15 ["Styling"]
       50 GETTABLEKS                       R7 R7 K16 ["joinTags"]
       52 DUPCLOSURE                       R8 K17 [PROTO_1]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 RETURN                           R8 1
