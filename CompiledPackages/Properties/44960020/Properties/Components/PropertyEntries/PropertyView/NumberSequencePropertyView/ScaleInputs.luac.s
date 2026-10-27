PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1], ["multiple"] = False}]
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Bindings"]
        7 GETTABLEKS                       R2 R2 K2 ["map"]
        9 MOVE                             R3 R1
       10 DUPCLOSURE                       R4 K3 [PROTO_0]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R4 R0 K4 ["side"]
       14 JUMPIFEQKS                       R4 K5 ["Top"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R5 R4 K6 ["NumberSequence"]
       22 GETTABLEKS                       R5 R5 K7 ["Scale"]
       24 GETUPVAL                         R6 3
       25 GETUPVAL                         R7 4
       26 DUPTABLE                         R8 K12 [{["tag"] = "anchor-center-right size-1000-0 auto-y", ["Position"], ["ZIndex"]}]
       27 GETIMPORT                        R9 K15 [UDim2.new]
       29 LOADN                            R10 0
       30 GETTABLEKS                       R12 R5 K16 ["InputRightMargin"]
       32 MINUS                            R11 R12
       33 JUMPIFNOT                        R3 ; [+2]
       34 LOADN                            R12 0
       35 JUMP                             ; [+1]
       36 LOADN                            R12 1
       37 JUMPIFNOT                        R3 ; [+3]
       38 GETTABLEKS                       R13 R5 K17 ["InputTopMargin"]
       40 JUMP                             ; [+3]
       41 GETTABLEKS                       R14 R5 K17 ["InputTopMargin"]
       43 MINUS                            R13 R14
       44 CALL                             R9 4 1
       45 SETTABLEKS                       R9 R8 K10 ["Position"]
       47 GETTABLEKS                       R9 R0 K11 ["ZIndex"]
       49 SETTABLEKS                       R9 R8 K11 ["ZIndex"]
       51 DUPTABLE                         R9 K19 [{"Input"}]
       52 GETUPVAL                         R10 3
       53 GETUPVAL                         R11 5
       54 DUPTABLE                         R12 K24 [{["propertyPart"], ["readonly"] = False, ["onEdit"]}]
       55 SETTABLEKS                       R2 R12 K20 ["propertyPart"]
       57 GETTABLEKS                       R13 R0 K23 ["onEdit"]
       59 SETTABLEKS                       R13 R12 K23 ["onEdit"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K18 ["Input"]
       64 CALL                             R6 3 -1
       65 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clampKeypointsToYRange"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["unorderedKeypoints"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["current"]
       11 CALL                             R2 4 1
       12 RETURN                           R2 1

PROTO_3:
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
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_4:
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
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Capture"] ; [+7]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["unorderedKeypoints"]
        8 SETTABLEKS                       R3 R2 K3 ["current"]
       10 GETTABLEKS                       R2 R0 K4 ["value"]
       12 JUMPIFEQKNIL                     R2 ; [+9]
       14 GETTABLEKS                       R3 R0 K4 ["value"]
       16 FASTCALL1                        TYPEOF R3 ; [+2]
       17 GETIMPORT                        R2 K6 [typeof]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+11]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K8 ["controller"]
       25 GETTABLEKS                       R2 R2 K9 ["updateKeypoints"]
       27 GETUPVAL                         R3 2
       28 MOVE                             R4 R0
       29 MOVE                             R5 R1
       30 CALL                             R3 2 -1
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

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
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R6 0 1
       25 GETTABLEKS                       R7 R0 K7 ["unorderedKeypoints"]
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 4
       39 GETTABLEKS                       R8 R0 K8 ["minY"]
       41 GETTABLEKS                       R9 R0 K9 ["setMaxY"]
       43 MOVE                             R10 R2
       44 MOVE                             R11 R4
       45 SETLIST                          R7 R8 4 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R4
       55 NEWTABLE                         R8 0 4
       57 GETTABLEKS                       R9 R0 K10 ["maxY"]
       59 GETTABLEKS                       R10 R0 K11 ["setMinY"]
       61 MOVE                             R11 R2
       62 MOVE                             R12 R4
       63 SETLIST                          R8 R9 4 [1]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K12 ["useEventCallback"]
       69 NEWCLOSURE                       R8 P3
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U4
       73 CALL                             R7 1 1
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K12 ["useEventCallback"]
       77 NEWCLOSURE                       R9 P4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R5
       80 CALL                             R8 1 1
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K12 ["useEventCallback"]
       84 NEWCLOSURE                       R10 P5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 CALL                             R9 1 1
       88 GETUPVAL                         R10 5
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R11 R11 K13 ["Fragment"]
       92 NEWTABLE                         R12 0 0
       94 DUPTABLE                         R13 K16 [{"MaxYInput", "MinYInput"}]
       95 GETUPVAL                         R14 5
       96 GETUPVAL                         R15 6
       97 DUPTABLE                         R16 K22 [{["value"], ["side"] = "Top", ["ZIndex"], ["onEdit"]}]
       98 GETTABLEKS                       R17 R0 K10 ["maxY"]
      100 SETTABLEKS                       R17 R16 K17 ["value"]
      102 GETTABLEKS                       R17 R0 K20 ["ZIndex"]
      104 SETTABLEKS                       R17 R16 K20 ["ZIndex"]
      106 SETTABLEKS                       R8 R16 K21 ["onEdit"]
      108 NEWTABLE                         R17 0 0
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K14 ["MaxYInput"]
      113 GETUPVAL                         R14 5
      114 GETUPVAL                         R15 6
      115 DUPTABLE                         R16 K24 [{["value"], ["side"] = "Bottom", ["ZIndex"], ["onEdit"]}]
      116 GETTABLEKS                       R17 R0 K8 ["minY"]
      118 SETTABLEKS                       R17 R16 K17 ["value"]
      120 GETTABLEKS                       R17 R0 K20 ["ZIndex"]
      122 SETTABLEKS                       R17 R16 K20 ["ZIndex"]
      124 SETTABLEKS                       R9 R16 K21 ["onEdit"]
      126 NEWTABLE                         R17 0 0
      128 CALL                             R14 3 1
      129 SETTABLEKS                       R14 R13 K15 ["MinYInput"]
      131 CALL                             R10 3 -1
      132 RETURN                           R10 -1

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
       51 GETTABLEKS                       R9 R0 K18 ["RpcTypes"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Components"]
       58 GETTABLEKS                       R10 R10 K7 ["Util"]
       60 GETTABLEKS                       R10 R10 K19 ["Number"]
       62 GETTABLEKS                       R10 R10 K20 ["SingleNumberInput"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Components"]
       69 GETTABLEKS                       R11 R11 K7 ["Util"]
       71 GETTABLEKS                       R11 R11 K21 ["EditingOperation"]
       73 GETTABLEKS                       R11 R11 K22 ["mapValueEditingOperationValue"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K7 ["Util"]
       80 GETTABLEKS                       R12 R12 K23 ["useBindingToState"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K10 ["Components"]
       87 GETTABLEKS                       R13 R13 K11 ["PropertyEntries"]
       89 GETTABLEKS                       R13 R13 K12 ["PropertyView"]
       91 GETTABLEKS                       R13 R13 K13 ["NumberSequencePropertyView"]
       93 GETTABLEKS                       R13 R13 K24 ["useNumberSequence"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      100 GETTABLEKS                       R14 R14 K26 ["useVisualValues"]
      102 CALL                             R13 1 1
      103 GETTABLEKS                       R14 R3 K27 ["View"]
      105 GETTABLEKS                       R15 R6 K28 ["createElement"]
      107 DUPCLOSURE                       R16 K29 [PROTO_1]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R9
      114 DUPCLOSURE                       R17 K30 [PROTO_8]
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R16
      122 GETTABLEKS                       R18 R6 K31 ["memo"]
      124 MOVE                             R19 R17
      125 CALL                             R18 1 -1
      126 RETURN                           R18 -1
