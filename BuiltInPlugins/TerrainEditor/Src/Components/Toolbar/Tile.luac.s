PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Icon"]
        2 GETTABLEKS                       R2 R0 K1 ["Key"]
        4 GETTABLEKS                       R3 R0 K2 ["Name"]
        6 GETTABLEKS                       R4 R0 K3 ["OnClick"]
        8 GETUPVAL                         R5 0
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+93]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["createElement"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K5 ["View"]
       17 DUPTABLE                         R7 K9 [{["Position"], ["tag"] = "col align-x-center align-y-center gap-small size-2100-1500 radius-small"}]
       18 GETTABLEKS                       R8 R0 K6 ["Position"]
       20 SETTABLEKS                       R8 R7 K6 ["Position"]
       22 DUPTABLE                         R8 K12 [{"ButtonContainer", "Text"}]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K4 ["createElement"]
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K5 ["View"]
       29 DUPTABLE                         R11 K15 [{["tag"], ["LayoutOrder"] = 1}]
       30 NEWTABLE                         R12 2 0
       32 LOADB                            R13 1
       33 SETTABLEKS                       R13 R12 K16 ["row align-x-center align-y-center auto-xy radius-small"]
       35 GETTABLEKS                       R14 R0 K17 ["Selected"]
       37 JUMPIFEQ                         R2 R14 ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 SETTABLEKS                       R13 R12 K18 ["bg-action-standard"]
       43 SETTABLEKS                       R12 R11 K7 ["tag"]
       45 DUPTABLE                         R12 K20 [{"Button"}]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K4 ["createElement"]
       49 GETUPVAL                         R14 2
       50 GETTABLEKS                       R14 R14 K5 ["View"]
       52 DUPTABLE                         R15 K22 [{["tag"], ["onActivated"], ["LayoutOrder"] = 1}]
       53 NEWTABLE                         R16 2 0
       55 LOADB                            R17 1
       56 SETTABLEKS                       R17 R16 K23 ["row align-x-center align-y-center auto-xy padding-xsmall radius-small"]
       58 GETTABLEKS                       R18 R0 K17 ["Selected"]
       60 JUMPIFEQ                         R2 R18 ; [+2]
       62 LOADB                            R17 0 +1
       63 LOADB                            R17 1
       64 SETTABLEKS                       R17 R16 K18 ["bg-action-standard"]
       66 SETTABLEKS                       R16 R15 K7 ["tag"]
       68 NEWCLOSURE                       R16 P0
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R16 R15 K21 ["onActivated"]
       73 DUPTABLE                         R16 K25 [{"ButtonIcon"}]
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R17 R17 K4 ["createElement"]
       77 GETUPVAL                         R18 2
       78 GETTABLEKS                       R18 R18 K26 ["Image"]
       80 MOVE                             R19 R1
       81 CALL                             R17 2 1
       82 SETTABLEKS                       R17 R16 K24 ["ButtonIcon"]
       84 CALL                             R13 3 1
       85 SETTABLEKS                       R13 R12 K19 ["Button"]
       87 CALL                             R9 3 1
       88 SETTABLEKS                       R9 R8 K10 ["ButtonContainer"]
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R9 R9 K4 ["createElement"]
       93 GETUPVAL                         R10 2
       94 GETTABLEKS                       R10 R10 K11 ["Text"]
       96 DUPTABLE                         R11 K29 [{["LayoutOrder"] = 2, ["tag"] = "text-caption-small", ["Text"]}]
       97 SETTABLEKS                       R3 R11 K11 ["Text"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K11 ["Text"]
      102 CALL                             R5 3 -1
      103 RETURN                           R5 -1
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R5 R5 K4 ["createElement"]
      107 GETUPVAL                         R6 3
      108 DUPTABLE                         R7 K34 [{["OnClick"], ["Position"], ["Size"], ["Style"] = "RoundSubtle", ["StyleModifier"]}]
      109 NEWCLOSURE                       R8 P1
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R8 R7 K3 ["OnClick"]
      114 GETTABLEKS                       R8 R0 K6 ["Position"]
      116 SETTABLEKS                       R8 R7 K6 ["Position"]
      118 GETTABLEKS                       R8 R0 K30 ["Size"]
      120 SETTABLEKS                       R8 R7 K30 ["Size"]
      122 GETTABLEKS                       R9 R0 K17 ["Selected"]
      124 JUMPIFNOTEQ                      R2 R9 ; [+5]
      126 GETUPVAL                         R8 4
      127 GETTABLEKS                       R8 R8 K17 ["Selected"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R8
      131 SETTABLEKS                       R8 R7 K33 ["StyleModifier"]
      133 DUPTABLE                         R8 K36 [{"Pane"}]
      134 GETUPVAL                         R9 1
      135 GETTABLEKS                       R9 R9 K4 ["createElement"]
      137 GETUPVAL                         R10 5
      138 DUPTABLE                         R11 K41 [{["HorizontalAlignment"], ["Layout"], ["Padding"] = 2, ["Spacing"] = 2}]
      139 GETIMPORT                        R12 K44 [Enum.HorizontalAlignment.Center]
      141 SETTABLEKS                       R12 R11 K37 ["HorizontalAlignment"]
      143 GETIMPORT                        R12 K47 [Enum.FillDirection.Vertical]
      145 SETTABLEKS                       R12 R11 K38 ["Layout"]
      147 DUPTABLE                         R12 K48 [{"Icon", "Text"}]
      148 GETUPVAL                         R13 1
      149 GETTABLEKS                       R13 R13 K4 ["createElement"]
      151 GETUPVAL                         R14 6
      152 MOVE                             R15 R1
      153 CALL                             R13 2 1
      154 SETTABLEKS                       R13 R12 K0 ["Icon"]
      156 GETUPVAL                         R13 1
      157 GETTABLEKS                       R13 R13 K4 ["createElement"]
      159 GETUPVAL                         R14 7
      160 DUPTABLE                         R15 K51 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Text"], ["TextSize"]}]
      161 GETIMPORT                        R16 K53 [Enum.AutomaticSize.XY]
      163 SETTABLEKS                       R16 R15 K49 ["AutomaticSize"]
      165 SETTABLEKS                       R3 R15 K11 ["Text"]
      167 GETTABLEKS                       R16 R0 K50 ["TextSize"]
      169 SETTABLEKS                       R16 R15 K50 ["TextSize"]
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K11 ["Text"]
      174 CALL                             R9 3 1
      175 SETTABLEKS                       R9 R8 K35 ["Pane"]
      177 CALL                             R5 3 -1
      178 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StyleModifier"]
       41 GETTABLEKS                       R6 R2 K15 ["UI"]
       43 GETTABLEKS                       R7 R6 K16 ["Button"]
       45 GETTABLEKS                       R8 R6 K17 ["Pane"]
       47 GETTABLEKS                       R9 R6 K18 ["Image"]
       49 GETTABLEKS                       R10 R6 K19 ["TextLabel"]
       51 DUPCLOSURE                       R11 K20 [PROTO_2]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R10
       60 RETURN                           R11 1
