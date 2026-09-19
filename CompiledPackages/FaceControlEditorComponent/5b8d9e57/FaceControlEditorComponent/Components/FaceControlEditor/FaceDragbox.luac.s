PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateValue"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["updateValue"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["name"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["setDragboxValues"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["tooltipName"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["tooltipValue"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R5 R0 K2 ["mapping"]
       16 GETTABLEKS                       R5 R5 K3 ["length"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["createElement"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K5 ["View"]
       24 DUPTABLE                         R8 K13 [{["testId"] = "FaceDragboxView", ["tag"] = "bg-transparency-100", ["Position"], ["Size"], ["ref"]}]
       25 GETTABLEKS                       R9 R0 K2 ["mapping"]
       27 GETTABLEKS                       R9 R9 K14 ["position"]
       29 SETTABLEKS                       R9 R8 K10 ["Position"]
       31 GETIMPORT                        R9 K17 [UDim2.fromScale]
       33 MOVE                             R10 R5
       34 MOVE                             R11 R5
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K11 ["Size"]
       38 GETTABLEKS                       R9 R4 K18 ["setFrame"]
       40 SETTABLEKS                       R9 R8 K12 ["ref"]
       42 DUPTABLE                         R9 K21 [{"UIAspectRatioConstraint", "Tooltip"}]
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R10 R10 K4 ["createElement"]
       46 LOADK                            R11 K19 ["UIAspectRatioConstraint"]
       47 DUPTABLE                         R12 K25 [{["AspectRatio"] = 1, ["AspectType"]}]
       48 GETIMPORT                        R13 K28 [Enum.AspectType.ScaleWithParentSize]
       50 SETTABLEKS                       R13 R12 K24 ["AspectType"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K19 ["UIAspectRatioConstraint"]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K4 ["createElement"]
       58 GETUPVAL                         R11 3
       59 GETTABLEKS                       R11 R11 K20 ["Tooltip"]
       61 DUPTABLE                         R12 K34 [{["title"], ["side"] = "Top", ["align"] = "Start"}]
       62 GETTABLEN                        R14 R2 1
       63 LOADK                            R15 K35 [" "]
       64 GETIMPORT                        R21 K38 [string.format]
       66 LOADK                            R22 K39 ["%.2f"]
       67 GETTABLEN                        R23 R3 1
       68 CALL                             R21 2 1
       69 MOVE                             R16 R21
       70 LOADK                            R17 K35 [" "]
       71 GETTABLEN                        R18 R2 2
       72 LOADK                            R19 K35 [" "]
       73 GETIMPORT                        R20 K38 [string.format]
       75 LOADK                            R21 K39 ["%.2f"]
       76 GETTABLEN                        R22 R3 2
       77 CALL                             R20 2 1
       78 CONCAT                           R13 R14 R20
       79 SETTABLEKS                       R13 R12 K29 ["title"]
       81 NEWTABLE                         R13 0 1
       83 GETUPVAL                         R14 2
       84 GETTABLEKS                       R14 R14 K4 ["createElement"]
       86 GETUPVAL                         R15 3
       87 GETTABLEKS                       R15 R15 K5 ["View"]
       89 DUPTABLE                         R16 K40 [{"Size"}]
       90 GETIMPORT                        R17 K42 [UDim2.fromOffset]
       92 GETTABLEKS                       R18 R4 K43 ["absoluteSize"]
       94 GETTABLEKS                       R18 R18 K44 ["X"]
       96 GETTABLEKS                       R19 R4 K43 ["absoluteSize"]
       98 GETTABLEKS                       R19 R19 K45 ["Y"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K11 ["Size"]
      103 DUPTABLE                         R17 K47 [{"Dragbox"}]
      104 GETUPVAL                         R18 2
      105 GETTABLEKS                       R18 R18 K4 ["createElement"]
      107 GETUPVAL                         R19 4
      108 DUPTABLE                         R20 K61 [{["testId"] = "FaceDragbox", ["value"], ["minX"], ["maxX"], ["minY"], ["maxY"], ["knobVisibility"] = "Always", ["length"], ["knobSize"] = "Medium", ["variant"] = "Standard", ["onValueChanged"]}]
      109 GETTABLEKS                       R21 R0 K49 ["value"]
      111 SETTABLEKS                       R21 R20 K49 ["value"]
      113 GETTABLEKS                       R21 R0 K2 ["mapping"]
      115 GETTABLEKS                       R21 R21 K50 ["minX"]
      117 SETTABLEKS                       R21 R20 K50 ["minX"]
      119 GETTABLEKS                       R21 R0 K2 ["mapping"]
      121 GETTABLEKS                       R21 R21 K51 ["maxX"]
      123 SETTABLEKS                       R21 R20 K51 ["maxX"]
      125 GETTABLEKS                       R21 R0 K2 ["mapping"]
      127 GETTABLEKS                       R21 R21 K52 ["minY"]
      129 SETTABLEKS                       R21 R20 K52 ["minY"]
      131 GETTABLEKS                       R21 R0 K2 ["mapping"]
      133 GETTABLEKS                       R21 R21 K53 ["maxY"]
      135 SETTABLEKS                       R21 R20 K53 ["maxY"]
      137 GETIMPORT                        R21 K64 [UDim.new]
      139 LOADN                            R22 0
      140 GETTABLEKS                       R23 R4 K43 ["absoluteSize"]
      142 GETTABLEKS                       R23 R23 K44 ["X"]
      144 CALL                             R21 2 1
      145 SETTABLEKS                       R21 R20 K3 ["length"]
      147 SETTABLEKS                       R1 R20 K60 ["onValueChanged"]
      149 CALL                             R18 2 1
      150 SETTABLEKS                       R18 R17 K46 ["Dragbox"]
      152 CALL                             R14 3 -1
      153 SETLIST                          R13 R14 -1 [1]
      155 CALL                             R10 3 1
      156 SETTABLEKS                       R10 R9 K20 ["Tooltip"]
      158 CALL                             R6 3 -1
      159 RETURN                           R6 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Hooks"]
       28 GETTABLEKS                       R6 R6 K11 ["useAbsoluteSize"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Utils"]
       35 GETTABLEKS                       R7 R7 K13 ["FaceControlEditorUtils"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 RETURN                           R7 1
