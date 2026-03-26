PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["convertImageDataToTempIdAsync"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["releaseTempIdAsync"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["tempId"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["loading"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["status"]
        9 JUMPIFNOTEQKS                    R0 K2 ["error"] ; [+13]
       11 GETIMPORT                        R0 K4 [warn]
       13 LOADK                            R2 K5 ["Failed to convert image data to temp ID: %*"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K6 ["problem"]
       17 NAMECALL                         R2 R2 K7 ["format"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 CALL                             R0 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R0 R1 K8 ["value"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R2 R0 K9 ["tempId"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 2
       31 GETIMPORT                        R2 K12 [Vector2.new]
       33 GETTABLEKS                       R3 R0 K13 ["width"]
       35 GETTABLEKS                       R4 R0 K14 ["height"]
       37 CALL                             R2 2 -1
       38 CALL                             R1 -1 0
       39 NEWCLOSURE                       R1 P0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R0
       42 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 GETIMPORT                        R4 K4 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 -1
       13 CALL                             R3 -1 2
       14 GETTABLEKS                       R6 R0 K5 ["imageContent"]
       16 GETTABLEKS                       R5 R6 K6 ["data"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K7 ["useAsync"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R5
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U2
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R6
       41 SETLIST                          R9 R10 1 [1]
       43 CALL                             R7 2 0
       44 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       46 LOADNIL                          R7
       47 RETURN                           R7 1
       48 GETTABLEKS                       R8 R3 K9 ["Y"]
       50 JUMPIFNOTEQKN                    R8 K10 [0] ; [+3]
       52 LOADN                            R7 1
       53 JUMP                             ; [+5]
       54 GETTABLEKS                       R8 R3 K11 ["X"]
       56 GETTABLEKS                       R9 R3 K9 ["Y"]
       58 DIV                              R7 R8 R9
       59 GETUPVAL                         R8 3
       60 CALL                             R8 0 1
       61 JUMPIF                           R8 ; [+3]
       62 GETUPVAL                         R8 4
       63 CALL                             R8 0 1
       64 JUMPIFNOT                        R8 ; [+43]
       65 GETUPVAL                         R8 5
       66 GETUPVAL                         R9 6
       67 DUPTABLE                         R10 K20 [{"tag", "Size", "ScaleType", "sizeConstraint", "aspectRatio", "Image", "LayoutOrder", "testId"}]
       68 LOADK                            R11 K21 ["radius-small"]
       69 SETTABLEKS                       R11 R10 K12 ["tag"]
       71 GETIMPORT                        R11 K24 [UDim2.fromOffset]
       73 GETTABLEKS                       R12 R3 K11 ["X"]
       75 GETTABLEKS                       R13 R3 K9 ["Y"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K13 ["Size"]
       80 GETIMPORT                        R11 K27 [Enum.ScaleType.Fit]
       82 SETTABLEKS                       R11 R10 K14 ["ScaleType"]
       84 DUPTABLE                         R11 K29 [{"MaxSize"}]
       85 GETTABLEKS                       R12 R0 K30 ["maxSize"]
       87 SETTABLEKS                       R12 R11 K28 ["MaxSize"]
       89 SETTABLEKS                       R11 R10 K15 ["sizeConstraint"]
       91 SETTABLEKS                       R7 R10 K16 ["aspectRatio"]
       93 SETTABLEKS                       R1 R10 K17 ["Image"]
       95 GETTABLEKS                       R11 R0 K18 ["LayoutOrder"]
       97 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       99 GETUPVAL                         R13 7
      100 GETTABLEKS                       R12 R13 K31 ["ImageContent"]
      102 GETTABLEKS                       R11 R12 K17 ["Image"]
      104 SETTABLEKS                       R11 R10 K19 ["testId"]
      106 CALL                             R8 2 -1
      107 RETURN                           R8 -1
      108 GETUPVAL                         R8 5
      109 GETUPVAL                         R9 6
      110 DUPTABLE                         R10 K33 [{"tag", "Size", "ScaleType", "SizeConstraint", "sizeConstraint", "aspectRatio", "Image", "LayoutOrder", "testId"}]
      111 LOADK                            R11 K34 ["size-full-0 auto-y radius-small"]
      112 SETTABLEKS                       R11 R10 K12 ["tag"]
      114 GETIMPORT                        R11 K36 [UDim2.fromScale]
      116 LOADN                            R12 1
      117 LOADN                            R13 1
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K13 ["Size"]
      121 GETIMPORT                        R11 K27 [Enum.ScaleType.Fit]
      123 SETTABLEKS                       R11 R10 K14 ["ScaleType"]
      125 GETIMPORT                        R11 K38 [Enum.SizeConstraint.RelativeXX]
      127 SETTABLEKS                       R11 R10 K32 ["SizeConstraint"]
      129 DUPTABLE                         R11 K29 [{"MaxSize"}]
      130 SETTABLEKS                       R3 R11 K28 ["MaxSize"]
      132 SETTABLEKS                       R11 R10 K15 ["sizeConstraint"]
      134 SETTABLEKS                       R7 R10 K16 ["aspectRatio"]
      136 SETTABLEKS                       R1 R10 K17 ["Image"]
      138 GETTABLEKS                       R11 R0 K18 ["LayoutOrder"]
      140 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      142 GETUPVAL                         R13 7
      143 GETTABLEKS                       R12 R13 K31 ["ImageContent"]
      145 GETTABLEKS                       R11 R12 K17 ["Image"]
      147 SETTABLEKS                       R11 R10 K19 ["testId"]
      149 CALL                             R8 2 -1
      150 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R9 K16 ["FFlagEnablePrimitiveGenTool"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Flags"]
       58 GETTABLEKS                       R9 R10 K17 ["FFlagMaxSizeForImageContent"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R2 K18 ["Image"]
       63 GETTABLEKS                       R10 R3 K19 ["createElement"]
       65 DUPCLOSURE                       R11 K20 [PROTO_4]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R5
       74 GETTABLEKS                       R12 R3 K21 ["memo"]
       76 MOVE                             R13 R11
       77 CALL                             R12 1 -1
       78 RETURN                           R12 -1
