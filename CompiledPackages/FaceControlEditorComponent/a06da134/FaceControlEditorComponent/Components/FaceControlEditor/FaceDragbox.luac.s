PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["updateValue"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["updateValue"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["name"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["setDragboxValues"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["tooltipName"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["tooltipValue"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R6 R0 K2 ["mapping"]
       16 GETTABLEKS                       R5 R6 K3 ["length"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K4 ["createElement"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R7 R8 K5 ["View"]
       24 DUPTABLE                         R8 K11 [{"testId", "tag", "Position", "Size", "ref"}]
       25 LOADK                            R9 K12 ["FaceDragboxView"]
       26 SETTABLEKS                       R9 R8 K6 ["testId"]
       28 LOADK                            R9 K13 ["bg-transparency-100"]
       29 SETTABLEKS                       R9 R8 K7 ["tag"]
       31 GETTABLEKS                       R10 R0 K2 ["mapping"]
       33 GETTABLEKS                       R9 R10 K14 ["position"]
       35 SETTABLEKS                       R9 R8 K8 ["Position"]
       37 GETIMPORT                        R9 K17 [UDim2.fromScale]
       39 MOVE                             R10 R5
       40 MOVE                             R11 R5
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K9 ["Size"]
       44 GETTABLEKS                       R9 R4 K18 ["setFrame"]
       46 SETTABLEKS                       R9 R8 K10 ["ref"]
       48 DUPTABLE                         R9 K21 [{"UIAspectRatioConstraint", "Tooltip"}]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R10 R11 K4 ["createElement"]
       52 LOADK                            R11 K19 ["UIAspectRatioConstraint"]
       53 DUPTABLE                         R12 K24 [{"AspectRatio", "AspectType"}]
       54 LOADN                            R13 1
       55 SETTABLEKS                       R13 R12 K22 ["AspectRatio"]
       57 GETIMPORT                        R13 K27 [Enum.AspectType.ScaleWithParentSize]
       59 SETTABLEKS                       R13 R12 K23 ["AspectType"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K19 ["UIAspectRatioConstraint"]
       64 GETUPVAL                         R11 2
       65 GETTABLEKS                       R10 R11 K4 ["createElement"]
       67 GETUPVAL                         R12 3
       68 GETTABLEKS                       R11 R12 K20 ["Tooltip"]
       70 DUPTABLE                         R12 K31 [{"title", "side", "align"}]
       71 GETTABLEN                        R14 R2 1
       72 LOADK                            R15 K32 [" "]
       73 GETIMPORT                        R21 K35 [string.format]
       75 LOADK                            R22 K36 ["%.2f"]
       76 GETTABLEN                        R23 R3 1
       77 CALL                             R21 2 1
       78 MOVE                             R16 R21
       79 LOADK                            R17 K32 [" "]
       80 GETTABLEN                        R18 R2 2
       81 LOADK                            R19 K32 [" "]
       82 GETIMPORT                        R20 K35 [string.format]
       84 LOADK                            R21 K36 ["%.2f"]
       85 GETTABLEN                        R22 R3 2
       86 CALL                             R20 2 1
       87 CONCAT                           R13 R14 R20
       88 SETTABLEKS                       R13 R12 K28 ["title"]
       90 LOADK                            R13 K37 ["Top"]
       91 SETTABLEKS                       R13 R12 K29 ["side"]
       93 LOADK                            R13 K38 ["Start"]
       94 SETTABLEKS                       R13 R12 K30 ["align"]
       96 NEWTABLE                         R13 0 1
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R14 R15 K4 ["createElement"]
      101 GETUPVAL                         R16 3
      102 GETTABLEKS                       R15 R16 K5 ["View"]
      104 DUPTABLE                         R16 K39 [{"Size"}]
      105 GETIMPORT                        R17 K41 [UDim2.fromOffset]
      107 GETTABLEKS                       R19 R4 K42 ["absoluteSize"]
      109 GETTABLEKS                       R18 R19 K43 ["X"]
      111 GETTABLEKS                       R20 R4 K42 ["absoluteSize"]
      113 GETTABLEKS                       R19 R20 K44 ["Y"]
      115 CALL                             R17 2 1
      116 SETTABLEKS                       R17 R16 K9 ["Size"]
      118 DUPTABLE                         R17 K46 [{"Dragbox"}]
      119 GETUPVAL                         R19 2
      120 GETTABLEKS                       R18 R19 K4 ["createElement"]
      122 GETUPVAL                         R19 4
      123 DUPTABLE                         R20 K56 [{"testId", "value", "minX", "maxX", "minY", "maxY", "knobVisibility", "length", "knobSize", "variant", "onValueChanged"}]
      124 LOADK                            R21 K57 ["FaceDragbox"]
      125 SETTABLEKS                       R21 R20 K6 ["testId"]
      127 GETTABLEKS                       R21 R0 K47 ["value"]
      129 SETTABLEKS                       R21 R20 K47 ["value"]
      131 GETTABLEKS                       R22 R0 K2 ["mapping"]
      133 GETTABLEKS                       R21 R22 K48 ["minX"]
      135 SETTABLEKS                       R21 R20 K48 ["minX"]
      137 GETTABLEKS                       R22 R0 K2 ["mapping"]
      139 GETTABLEKS                       R21 R22 K49 ["maxX"]
      141 SETTABLEKS                       R21 R20 K49 ["maxX"]
      143 GETTABLEKS                       R22 R0 K2 ["mapping"]
      145 GETTABLEKS                       R21 R22 K50 ["minY"]
      147 SETTABLEKS                       R21 R20 K50 ["minY"]
      149 GETTABLEKS                       R22 R0 K2 ["mapping"]
      151 GETTABLEKS                       R21 R22 K51 ["maxY"]
      153 SETTABLEKS                       R21 R20 K51 ["maxY"]
      155 LOADK                            R21 K58 ["Always"]
      156 SETTABLEKS                       R21 R20 K52 ["knobVisibility"]
      158 GETIMPORT                        R21 K61 [UDim.new]
      160 LOADN                            R22 0
      161 GETTABLEKS                       R24 R4 K42 ["absoluteSize"]
      163 GETTABLEKS                       R23 R24 K43 ["X"]
      165 CALL                             R21 2 1
      166 SETTABLEKS                       R21 R20 K3 ["length"]
      168 LOADK                            R21 K62 ["Medium"]
      169 SETTABLEKS                       R21 R20 K53 ["knobSize"]
      171 LOADK                            R21 K63 ["Standard"]
      172 SETTABLEKS                       R21 R20 K54 ["variant"]
      174 SETTABLEKS                       R1 R20 K55 ["onValueChanged"]
      176 CALL                             R18 2 1
      177 SETTABLEKS                       R18 R17 K45 ["Dragbox"]
      179 CALL                             R14 3 -1
      180 SETLIST                          R13 R14 -1 [1]
      182 CALL                             R10 3 1
      183 SETTABLEKS                       R10 R9 K20 ["Tooltip"]
      185 CALL                             R6 3 -1
      186 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dragbox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Hooks"]
       28 GETTABLEKS                       R6 R7 K11 ["useAbsoluteSize"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Utils"]
       35 GETTABLEKS                       R7 R8 K13 ["FaceControlEditorUtils"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 RETURN                           R7 1
