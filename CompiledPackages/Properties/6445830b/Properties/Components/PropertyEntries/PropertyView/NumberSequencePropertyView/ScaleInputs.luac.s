PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1], ["multiple"] = False}]
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["onChange"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Bindings"]
        7 GETTABLEKS                       R2 R2 K2 ["map"]
        9 MOVE                             R3 R1
       10 DUPCLOSURE                       R4 K3 [PROTO_0]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K5 ["onChange"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R5 R0 K6 ["side"]
       26 JUMPIFEQKS                       R5 K7 ["Top"] ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 GETUPVAL                         R5 3
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R6 R5 K8 ["NumberSequence"]
       34 GETTABLEKS                       R6 R6 K9 ["Scale"]
       36 GETUPVAL                         R7 4
       37 GETUPVAL                         R8 5
       38 DUPTABLE                         R9 K14 [{["tag"] = "anchor-center-right size-1000-0 auto-y", ["Position"], ["ZIndex"]}]
       39 GETIMPORT                        R10 K17 [UDim2.new]
       41 LOADN                            R11 0
       42 GETTABLEKS                       R13 R6 K18 ["InputRightMargin"]
       44 MINUS                            R12 R13
       45 JUMPIFNOT                        R4 ; [+2]
       46 LOADN                            R13 0
       47 JUMP                             ; [+1]
       48 LOADN                            R13 1
       49 JUMPIFNOT                        R4 ; [+3]
       50 GETTABLEKS                       R14 R6 K19 ["InputTopMargin"]
       52 JUMP                             ; [+3]
       53 GETTABLEKS                       R15 R6 K19 ["InputTopMargin"]
       55 MINUS                            R14 R15
       56 CALL                             R10 4 1
       57 SETTABLEKS                       R10 R9 K12 ["Position"]
       59 GETTABLEKS                       R10 R0 K13 ["ZIndex"]
       61 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
       63 DUPTABLE                         R10 K21 [{"Input"}]
       64 GETUPVAL                         R11 4
       65 GETUPVAL                         R12 6
       66 DUPTABLE                         R13 K27 [{["propertyPart"], ["readonly"] = False, ["onChange"], ["onEditStart"], ["onEditFinish"]}]
       67 SETTABLEKS                       R2 R13 K22 ["propertyPart"]
       69 SETTABLEKS                       R3 R13 K5 ["onChange"]
       71 GETTABLEKS                       R14 R0 K25 ["onEditStart"]
       73 SETTABLEKS                       R14 R13 K25 ["onEditStart"]
       75 GETTABLEKS                       R14 R0 K26 ["onEditFinish"]
       77 SETTABLEKS                       R14 R13 K26 ["onEditFinish"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K20 ["Input"]
       82 CALL                             R7 3 -1
       83 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["controller"]
        3 GETTABLEKS                       R0 R0 K1 ["beginEditingAsync"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["unorderedKeypoints"]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clampKeypointsToYRange"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["unorderedKeypoints"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["current"]
       11 CALL                             R2 4 2
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["controller"]
       16 GETTABLEKS                       R4 R4 K4 ["updateKeypoints"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["minY"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["MinYRange"]
        6 ADD                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["MaxYLimit"]
       10 FASTCALL3                        MATH_CLAMP R0 R3 R4
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [math.clamp]
       15 CALL                             R1 3 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["setMaxY"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["minY"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MinYLimit"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["maxY"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["MinYRange"]
        9 SUB                              R4 R5 R6
       10 FASTCALL3                        MATH_CLAMP R0 R3 R4
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [math.clamp]
       15 CALL                             R1 3 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["setMinY"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 MOVE                             R3 R1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K1 ["maxY"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["NumberSequence"]
        4 GETTABLEKS                       R2 R2 K1 ["Scale"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["useRef"]
        9 GETIMPORT                        R4 K4 [NumberSequence.new]
       11 LOADN                            R5 0
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R4 R4 K5 ["Keypoints"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R6 0 2
       24 GETTABLEKS                       R7 R0 K7 ["unorderedKeypoints"]
       26 GETTABLEKS                       R8 R0 K8 ["controller"]
       28 GETTABLEKS                       R8 R8 K9 ["beginEditingAsync"]
       30 SETLIST                          R6 R7 2 [1]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R7 0 2
       42 GETTABLEKS                       R8 R0 K7 ["unorderedKeypoints"]
       44 GETTABLEKS                       R9 R0 K8 ["controller"]
       46 GETTABLEKS                       R9 R9 K10 ["updateKeypoints"]
       48 SETLIST                          R7 R8 2 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       54 NEWCLOSURE                       R7 P2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 NEWTABLE                         R8 0 4
       60 GETTABLEKS                       R9 R0 K11 ["minY"]
       62 GETTABLEKS                       R10 R0 K12 ["setMaxY"]
       64 MOVE                             R11 R2
       65 MOVE                             R12 R5
       66 SETLIST                          R8 R9 4 [1]
       68 CALL                             R6 2 1
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       72 NEWCLOSURE                       R8 P3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R5
       76 NEWTABLE                         R9 0 4
       78 GETTABLEKS                       R10 R0 K13 ["maxY"]
       80 GETTABLEKS                       R11 R0 K14 ["setMinY"]
       82 MOVE                             R12 R2
       83 MOVE                             R13 R5
       84 SETLIST                          R9 R10 4 [1]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R8 3
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K15 ["Fragment"]
       91 NEWTABLE                         R10 0 0
       93 DUPTABLE                         R11 K18 [{"MaxYInput", "MinYInput"}]
       94 GETUPVAL                         R12 3
       95 GETUPVAL                         R13 4
       96 DUPTABLE                         R14 K26 [{["value"], ["side"] = "Top", ["ZIndex"], ["onChange"], ["onEditStart"], ["onEditFinish"]}]
       97 GETTABLEKS                       R15 R0 K13 ["maxY"]
       99 SETTABLEKS                       R15 R14 K19 ["value"]
      101 GETTABLEKS                       R15 R0 K22 ["ZIndex"]
      103 SETTABLEKS                       R15 R14 K22 ["ZIndex"]
      105 SETTABLEKS                       R6 R14 K23 ["onChange"]
      107 SETTABLEKS                       R4 R14 K24 ["onEditStart"]
      109 GETTABLEKS                       R15 R0 K8 ["controller"]
      111 GETTABLEKS                       R15 R15 K27 ["finishEditing"]
      113 SETTABLEKS                       R15 R14 K25 ["onEditFinish"]
      115 NEWTABLE                         R15 0 0
      117 CALL                             R12 3 1
      118 SETTABLEKS                       R12 R11 K16 ["MaxYInput"]
      120 GETUPVAL                         R12 3
      121 GETUPVAL                         R13 4
      122 DUPTABLE                         R14 K29 [{["value"], ["side"] = "Bottom", ["ZIndex"], ["onChange"], ["onEditStart"], ["onEditFinish"]}]
      123 GETTABLEKS                       R15 R0 K11 ["minY"]
      125 SETTABLEKS                       R15 R14 K19 ["value"]
      127 GETTABLEKS                       R15 R0 K22 ["ZIndex"]
      129 SETTABLEKS                       R15 R14 K22 ["ZIndex"]
      131 SETTABLEKS                       R7 R14 K23 ["onChange"]
      133 SETTABLEKS                       R4 R14 K24 ["onEditStart"]
      135 GETTABLEKS                       R15 R0 K8 ["controller"]
      137 GETTABLEKS                       R15 R15 K27 ["finishEditing"]
      139 SETTABLEKS                       R15 R14 K25 ["onEditFinish"]
      141 NEWTABLE                         R15 0 0
      143 CALL                             R12 3 1
      144 SETTABLEKS                       R12 R11 K17 ["MinYInput"]
      146 CALL                             R8 3 -1
      147 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyEntries"]
       27 GETTABLEKS                       R5 R5 K12 ["PropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequencePropertyView"]
       31 GETTABLEKS                       R5 R5 K14 ["NumberSequenceUtil"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K15 ["PropertyTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K16 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K17 ["ReactUtils"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Components"]
       53 GETTABLEKS                       R9 R9 K7 ["Util"]
       55 GETTABLEKS                       R9 R9 K18 ["Number"]
       57 GETTABLEKS                       R9 R9 K19 ["SingleNumberInput"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K7 ["Util"]
       64 GETTABLEKS                       R10 R10 K20 ["useBindingToState"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K11 ["PropertyEntries"]
       73 GETTABLEKS                       R11 R11 K12 ["PropertyView"]
       75 GETTABLEKS                       R11 R11 K13 ["NumberSequencePropertyView"]
       77 GETTABLEKS                       R11 R11 K21 ["useNumberSequence"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       84 GETTABLEKS                       R12 R12 K23 ["useVisualValues"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R3 K24 ["View"]
       89 GETTABLEKS                       R13 R6 K25 ["createElement"]
       91 DUPCLOSURE                       R14 K26 [PROTO_2]
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R8
       99 DUPCLOSURE                       R15 K27 [PROTO_8]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R14
      105 GETTABLEKS                       R16 R6 K28 ["memo"]
      107 MOVE                             R17 R15
      108 CALL                             R16 1 -1
      109 RETURN                           R16 -1
