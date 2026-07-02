PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETTABLEKS                       R2 R1 K3 ["SelectedObjectGui"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K3 ["SelectedObjectGui"]
       17 LOADK                            R4 K4 ["SurfaceGui"]
       18 NAMECALL                         R2 R2 K5 ["IsA"]
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+2]
       22 GETUPVAL                         R2 0
       23 RETURN                           R2 1
       24 GETTABLEKS                       R3 R1 K3 ["SelectedObjectGui"]
       26 GETTABLEKS                       R3 R3 K6 ["Adornee"]
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETTABLEKS                       R2 R1 K3 ["SelectedObjectGui"]
       31 GETTABLEKS                       R2 R2 K6 ["Adornee"]
       33 JUMP                             ; [+4]
       34 GETTABLEKS                       R2 R1 K3 ["SelectedObjectGui"]
       36 GETTABLEKS                       R2 R2 K7 ["Parent"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K8 ["CurrentCamera"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K9 ["X"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K10 ["Y"]
       47 NAMECALL                         R4 R3 K11 ["ScreenPointToRay"]
       49 CALL                             R4 3 1
       50 GETIMPORT                        R5 K14 [RaycastParams.new]
       52 CALL                             R5 0 1
       53 GETIMPORT                        R6 K18 [Enum.RaycastFilterType.Whitelist]
       55 SETTABLEKS                       R6 R5 K19 ["FilterType"]
       57 MOVE                             R8 R2
       58 NAMECALL                         R6 R5 K20 ["AddToFilter"]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R8 R4 K21 ["Origin"]
       64 GETTABLEKS                       R10 R4 K22 ["Direction"]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K23 ["SurfaceGuiDragRaycastDepth"]
       69 MUL                              R9 R10 R11
       70 MOVE                             R10 R5
       71 NAMECALL                         R6 R6 K24 ["Raycast"]
       73 CALL                             R6 4 1
       74 JUMPIF                           R6 ; [+2]
       75 LOADNIL                          R7
       76 RETURN                           R7 1
       77 GETIMPORT                        R7 K26 [CFrame.new]
       79 GETTABLEKS                       R8 R6 K27 ["Position"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R2 K25 ["CFrame"]
       84 MOVE                             R10 R7
       85 NAMECALL                         R8 R8 K28 ["ToObjectSpace"]
       87 CALL                             R8 2 1
       88 GETTABLEKS                       R8 R8 K27 ["Position"]
       90 GETUPVAL                         R10 3
       91 GETTABLEKS                       R11 R1 K3 ["SelectedObjectGui"]
       93 GETTABLEKS                       R11 R11 K29 ["Face"]
       95 GETTABLE                         R9 R10 R11
       96 GETTABLEKS                       R13 R9 K31 ["axisX"]
       98 GETTABLE                         R12 R8 R13
       99 GETTABLEKS                       R14 R2 K32 ["Size"]
      101 GETTABLEKS                       R15 R9 K31 ["axisX"]
      103 GETTABLE                         R13 R14 R15
      104 DIV                              R11 R12 R13
      105 ADDK                             R10 R11 K30 [0.5]
      106 GETTABLEKS                       R14 R9 K33 ["axisY"]
      108 GETTABLE                         R13 R8 R14
      109 GETTABLEKS                       R15 R2 K32 ["Size"]
      111 GETTABLEKS                       R16 R9 K33 ["axisY"]
      113 GETTABLE                         R14 R15 R16
      114 DIV                              R12 R13 R14
      115 ADDK                             R11 R12 K30 [0.5]
      116 GETTABLEKS                       R12 R9 K34 ["invertX"]
      118 JUMPIFNOT                        R12 ; [+1]
      119 SUBRK                            R10 K35 [1] R10
      120 GETTABLEKS                       R12 R9 K36 ["invertY"]
      122 JUMPIFNOT                        R12 ; [+1]
      123 SUBRK                            R11 K35 [1] R11
      124 GETIMPORT                        R12 K38 [Vector2.new]
      126 GETTABLEKS                       R14 R1 K3 ["SelectedObjectGui"]
      128 GETTABLEKS                       R14 R14 K39 ["AbsoluteSize"]
      130 GETTABLEKS                       R14 R14 K9 ["X"]
      132 MUL                              R13 R10 R14
      133 GETTABLEKS                       R15 R1 K3 ["SelectedObjectGui"]
      135 GETTABLEKS                       R15 R15 K39 ["AbsoluteSize"]
      137 GETTABLEKS                       R15 R15 K10 ["Y"]
      139 MUL                              R14 R11 R15
      140 CALL                             R12 2 -1
      141 RETURN                           R12 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Resources"]
       21 GETTABLEKS                       R3 R3 K11 ["Constants"]
       23 CALL                             R2 1 1
       24 NEWTABLE                         R3 8 0
       26 GETIMPORT                        R4 K15 [Enum.NormalId.Top]
       28 DUPTABLE                         R5 K24 [{["axisX"] = "Z", ["axisY"] = "X", ["invertX"] = True, ["invertY"] = False}]
       29 SETTABLE                         R5 R3 R4
       30 GETIMPORT                        R4 K26 [Enum.NormalId.Bottom]
       32 DUPTABLE                         R5 K27 [{["axisX"] = "Z", ["axisY"] = "X", ["invertX"] = True, ["invertY"] = True}]
       33 SETTABLE                         R5 R3 R4
       34 GETIMPORT                        R4 K29 [Enum.NormalId.Left]
       36 DUPTABLE                         R5 K31 [{["axisX"] = "Z", ["axisY"] = "Y", ["invertX"] = False, ["invertY"] = True}]
       37 SETTABLE                         R5 R3 R4
       38 GETIMPORT                        R4 K33 [Enum.NormalId.Right]
       40 DUPTABLE                         R5 K34 [{["axisX"] = "Z", ["axisY"] = "Y", ["invertX"] = True, ["invertY"] = True}]
       41 SETTABLE                         R5 R3 R4
       42 GETIMPORT                        R4 K36 [Enum.NormalId.Front]
       44 DUPTABLE                         R5 K37 [{["axisX"] = "X", ["axisY"] = "Y", ["invertX"] = True, ["invertY"] = True}]
       45 SETTABLE                         R5 R3 R4
       46 GETIMPORT                        R4 K39 [Enum.NormalId.Back]
       48 DUPTABLE                         R5 K40 [{["axisX"] = "X", ["axisY"] = "Y", ["invertX"] = False, ["invertY"] = True}]
       49 SETTABLE                         R5 R3 R4
       50 DUPCLOSURE                       R4 K41 [PROTO_1]
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 RETURN                           R4 1
