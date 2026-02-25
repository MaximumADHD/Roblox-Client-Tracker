PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onAbsoluteSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onAbsoluteSizeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+19]
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["value"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R2 R3 K0 ["current"]
       11 JUMPIFNOT                        R2 ; [+11]
       12 GETTABLEKS                       R4 R2 K2 ["AbsolutePosition"]
       14 GETTABLEKS                       R3 R4 K3 ["Y"]
       16 GETTABLEKS                       R6 R0 K0 ["current"]
       18 GETTABLEKS                       R5 R6 K2 ["AbsolutePosition"]
       20 GETTABLEKS                       R4 R5 K3 ["Y"]
       22 SUB                              R1 R3 R4
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+13]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["current"]
        8 JUMPIFEQ                         R2 R1 ; [+25]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R1 R2 K1 ["current"]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["Default"]
       20 JUMPIFNOTEQ                      R0 R2 ; [+13]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K1 ["current"]
       25 JUMPIFNOTEQ                      R2 R1 ; [+8]
       27 GETUPVAL                         R2 1
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K1 ["current"]
       31 GETUPVAL                         R2 2
       32 LOADNIL                          R3
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["id"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["id"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K0 ["id"]
       12 JUMPIFEQ                         R0 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETUPVAL                         R4 2
       17 JUMPIF                           R4 ; [+5]
       18 MOVE                             R4 R1
       19 JUMPIF                           R4 ; [+3]
       20 GETUPVAL                         R4 3
       21 JUMPIF                           R4 ; [+1]
       22 MOVE                             R4 R2
       23 NOT                              R3 R4
       24 JUMPIFNOT                        R3 ; [+8]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K1 ["Color"]
       28 GETTABLEKS                       R5 R6 K2 ["Stroke"]
       30 GETTABLEKS                       R4 R5 K3 ["Default"]
       32 RETURN                           R4 1
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R5 R6 K1 ["Color"]
       36 GETTABLEKS                       R4 R5 K4 ["None"]
       38 RETURN                           R4 1

PROTO_7:
        0 SUBK                             R4 R1 K0 [1]
        1 MULK                             R3 R4 K1 [2]
        2 ADDK                             R2 R3 K0 [1]
        3 ADDK                             R3 R2 K0 [1]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K2 ["segments"]
        7 LENGTH                           R5 R6
        8 JUMPIFEQ                         R1 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K2 ["segments"]
       15 ADDK                             R7 R1 K0 [1]
       16 GETTABLE                         R5 R6 R7
       17 GETTABLEKS                       R7 R0 K3 ["id"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K4 ["value"]
       22 JUMPIFEQ                         R7 R8 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 MOVE                             R7 R5
       27 JUMPIFNOT                        R7 ; [+9]
       28 GETTABLEKS                       R8 R5 K3 ["id"]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K4 ["value"]
       33 JUMPIFEQ                         R8 R9 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K5 ["createElement"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R9 R10 K6 ["Fragment"]
       43 DUPTABLE                         R10 K8 [{"key"}]
       44 GETTABLEKS                       R12 R0 K3 ["id"]
       46 FASTCALL1                        TOSTRING R12 ; [+2]
       47 GETIMPORT                        R11 K10 [tostring]
       49 CALL                             R11 1 1
       50 SETTABLEKS                       R11 R10 K7 ["key"]
       52 DUPTABLE                         R11 K13 [{"Segment", "Divider"}]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R12 R13 K5 ["createElement"]
       56 GETUPVAL                         R13 2
       57 DUPTABLE                         R14 K22 [{"id", "size", "text", "isActive", "onStateChanged", "onActivated", "LayoutOrder", "testId", "ref"}]
       58 GETTABLEKS                       R15 R0 K3 ["id"]
       60 SETTABLEKS                       R15 R14 K3 ["id"]
       62 GETUPVAL                         R16 0
       63 GETTABLEKS                       R15 R16 K14 ["size"]
       65 SETTABLEKS                       R15 R14 K14 ["size"]
       67 GETTABLEKS                       R15 R0 K15 ["text"]
       69 SETTABLEKS                       R15 R14 K15 ["text"]
       71 GETTABLEKS                       R16 R0 K3 ["id"]
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R17 R18 K4 ["value"]
       76 JUMPIFEQ                         R16 R17 ; [+2]
       78 LOADB                            R15 0 +1
       79 LOADB                            R15 1
       80 SETTABLEKS                       R15 R14 K16 ["isActive"]
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R16 R17 K23 ["FoundationRemoveDividerSegmentedControl"]
       85 JUMPIFNOT                        R16 ; [+2]
       86 LOADNIL                          R15
       87 JUMP                             ; [+3]
       88 NEWCLOSURE                       R15 P0
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R15 R14 K17 ["onStateChanged"]
       93 GETUPVAL                         R16 0
       94 GETTABLEKS                       R15 R16 K18 ["onActivated"]
       96 SETTABLEKS                       R15 R14 K18 ["onActivated"]
       98 SETTABLEKS                       R2 R14 K19 ["LayoutOrder"]
      100 LOADK                            R16 K24 ["%*--segment-%*"]
      101 GETUPVAL                         R19 0
      102 GETTABLEKS                       R18 R19 K20 ["testId"]
      104 GETTABLEKS                       R19 R0 K3 ["id"]
      106 NAMECALL                         R16 R16 K25 ["format"]
      108 CALL                             R16 3 1
      109 MOVE                             R15 R16
      110 SETTABLEKS                       R15 R14 K20 ["testId"]
      112 GETUPVAL                         R16 5
      113 GETTABLEKS                       R17 R0 K3 ["id"]
      115 GETTABLE                         R15 R16 R17
      116 SETTABLEKS                       R15 R14 K21 ["ref"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K11 ["Segment"]
      121 GETUPVAL                         R14 3
      122 GETTABLEKS                       R13 R14 K23 ["FoundationRemoveDividerSegmentedControl"]
      124 JUMPIF                           R13 ; [+1]
      125 JUMPIFNOT                        R4 ; [+2]
      126 LOADNIL                          R12
      127 JUMP                             ; [+34]
      128 GETUPVAL                         R13 1
      129 GETTABLEKS                       R12 R13 K5 ["createElement"]
      131 GETUPVAL                         R13 6
      132 DUPTABLE                         R14 K29 [{"tag", "backgroundStyle", "Size", "LayoutOrder"}]
      133 GETUPVAL                         R17 7
      134 GETTABLEKS                       R16 R17 K30 ["divider"]
      136 GETTABLEKS                       R15 R16 K26 ["tag"]
      138 SETTABLEKS                       R15 R14 K26 ["tag"]
      140 GETUPVAL                         R15 8
      141 NEWCLOSURE                       R17 P1
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R7
      146 CAPTURE                          UPVAL U9
      147 NAMECALL                         R15 R15 K31 ["map"]
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K27 ["backgroundStyle"]
      152 GETUPVAL                         R17 7
      153 GETTABLEKS                       R16 R17 K30 ["divider"]
      155 GETTABLEKS                       R15 R16 K28 ["Size"]
      157 SETTABLEKS                       R15 R14 K28 ["Size"]
      159 SETTABLEKS                       R3 R14 K19 ["LayoutOrder"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K12 ["Divider"]
      164 CALL                             R8 3 -1
      165 RETURN                           R8 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 2
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["id"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["id"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K0 ["id"]
       12 JUMPIFEQ                         R0 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETUPVAL                         R4 2
       17 JUMPIF                           R4 ; [+5]
       18 MOVE                             R4 R1
       19 JUMPIF                           R4 ; [+3]
       20 GETUPVAL                         R4 3
       21 JUMPIF                           R4 ; [+1]
       22 MOVE                             R4 R2
       23 NOT                              R3 R4
       24 JUMPIFNOT                        R3 ; [+8]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K1 ["Color"]
       28 GETTABLEKS                       R5 R6 K2 ["Stroke"]
       30 GETTABLEKS                       R4 R5 K3 ["Default"]
       32 RETURN                           R4 1
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R5 R6 K1 ["Color"]
       36 GETTABLEKS                       R4 R5 K4 ["None"]
       38 RETURN                           R4 1

PROTO_12:
        0 SUBK                             R4 R1 K0 [1]
        1 MULK                             R3 R4 K1 [2]
        2 ADDK                             R2 R3 K0 [1]
        3 ADDK                             R3 R2 K0 [1]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K2 ["segments"]
        7 LENGTH                           R5 R6
        8 JUMPIFEQ                         R1 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K2 ["segments"]
       15 ADDK                             R7 R1 K0 [1]
       16 GETTABLE                         R5 R6 R7
       17 GETTABLEKS                       R7 R0 K3 ["id"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K4 ["value"]
       22 JUMPIFEQ                         R7 R8 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 MOVE                             R7 R5
       27 JUMPIFNOT                        R7 ; [+9]
       28 GETTABLEKS                       R8 R5 K3 ["id"]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K4 ["value"]
       33 JUMPIFEQ                         R8 R9 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K5 ["createElement"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R9 R10 K6 ["Fragment"]
       43 DUPTABLE                         R10 K8 [{"key"}]
       44 GETTABLEKS                       R12 R0 K3 ["id"]
       46 FASTCALL1                        TOSTRING R12 ; [+2]
       47 GETIMPORT                        R11 K10 [tostring]
       49 CALL                             R11 1 1
       50 SETTABLEKS                       R11 R10 K7 ["key"]
       52 DUPTABLE                         R11 K13 [{"Segment", "Divider"}]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R12 R13 K5 ["createElement"]
       56 GETUPVAL                         R13 2
       57 DUPTABLE                         R14 K21 [{"id", "size", "text", "isActive", "onActivated", "onStateChanged", "LayoutOrder", "testId"}]
       58 GETTABLEKS                       R15 R0 K3 ["id"]
       60 SETTABLEKS                       R15 R14 K3 ["id"]
       62 GETUPVAL                         R16 0
       63 GETTABLEKS                       R15 R16 K14 ["size"]
       65 SETTABLEKS                       R15 R14 K14 ["size"]
       67 GETTABLEKS                       R15 R0 K15 ["text"]
       69 SETTABLEKS                       R15 R14 K15 ["text"]
       71 GETTABLEKS                       R16 R0 K3 ["id"]
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R17 R18 K4 ["value"]
       76 JUMPIFEQ                         R16 R17 ; [+2]
       78 LOADB                            R15 0 +1
       79 LOADB                            R15 1
       80 SETTABLEKS                       R15 R14 K16 ["isActive"]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R15 R16 K17 ["onActivated"]
       85 SETTABLEKS                       R15 R14 K17 ["onActivated"]
       87 GETUPVAL                         R17 3
       88 GETTABLEKS                       R16 R17 K22 ["FoundationRemoveDividerSegmentedControl"]
       90 JUMPIFNOT                        R16 ; [+2]
       91 LOADNIL                          R15
       92 JUMP                             ; [+3]
       93 NEWCLOSURE                       R15 P0
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R15 R14 K18 ["onStateChanged"]
       98 SETTABLEKS                       R2 R14 K19 ["LayoutOrder"]
      100 LOADK                            R16 K23 ["%*--segment-%*"]
      101 GETUPVAL                         R19 0
      102 GETTABLEKS                       R18 R19 K20 ["testId"]
      104 GETTABLEKS                       R19 R0 K3 ["id"]
      106 NAMECALL                         R16 R16 K24 ["format"]
      108 CALL                             R16 3 1
      109 MOVE                             R15 R16
      110 SETTABLEKS                       R15 R14 K20 ["testId"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K11 ["Segment"]
      115 GETUPVAL                         R14 3
      116 GETTABLEKS                       R13 R14 K22 ["FoundationRemoveDividerSegmentedControl"]
      118 JUMPIF                           R13 ; [+1]
      119 JUMPIFNOT                        R4 ; [+2]
      120 LOADNIL                          R12
      121 JUMP                             ; [+34]
      122 GETUPVAL                         R13 1
      123 GETTABLEKS                       R12 R13 K5 ["createElement"]
      125 GETUPVAL                         R13 5
      126 DUPTABLE                         R14 K28 [{"tag", "backgroundStyle", "Size", "LayoutOrder"}]
      127 GETUPVAL                         R17 6
      128 GETTABLEKS                       R16 R17 K29 ["divider"]
      130 GETTABLEKS                       R15 R16 K25 ["tag"]
      132 SETTABLEKS                       R15 R14 K25 ["tag"]
      134 GETUPVAL                         R15 7
      135 NEWCLOSURE                       R17 P1
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R7
      140 CAPTURE                          UPVAL U8
      141 NAMECALL                         R15 R15 K30 ["map"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K26 ["backgroundStyle"]
      146 GETUPVAL                         R17 6
      147 GETTABLEKS                       R16 R17 K29 ["divider"]
      149 GETTABLEKS                       R15 R16 K27 ["Size"]
      151 SETTABLEKS                       R15 R14 K27 ["Size"]
      153 SETTABLEKS                       R3 R14 K19 ["LayoutOrder"]
      155 CALL                             R12 2 1
      156 SETTABLEKS                       R12 R11 K12 ["Divider"]
      158 CALL                             R8 3 -1
      159 RETURN                           R8 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useBinding"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 CALL                             R5 0 1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K1 ["useRef"]
       14 LOADNIL                          R7
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 4
       17 MOVE                             R8 R5
       18 GETTABLEKS                       R9 R2 K2 ["size"]
       20 CALL                             R7 2 1
       21 LOADNIL                          R8
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 LOADNIL                          R14
       28 LOADNIL                          R15
       29 LOADNIL                          R16
       30 LOADNIL                          R17
       31 LOADNIL                          R18
       32 GETUPVAL                         R20 5
       33 GETTABLEKS                       R19 R20 K3 ["FoundationAnimateSegmentedControl"]
       35 JUMPIFNOT                        R19 ; [+75]
       36 GETUPVAL                         R20 2
       37 GETTABLEKS                       R19 R20 K1 ["useRef"]
       39 LOADNIL                          R20
       40 CALL                             R19 1 1
       41 MOVE                             R8 R19
       42 GETUPVAL                         R19 6
       43 GETTABLEKS                       R20 R2 K4 ["value"]
       45 OR                               R21 R1 R8
       46 CALL                             R19 2 1
       47 MOVE                             R9 R19
       48 GETTABLEKS                       R10 R9 K5 ["activeItemHeight"]
       50 GETTABLEKS                       R11 R9 K6 ["itemRefs"]
       52 GETTABLEKS                       R12 R9 K7 ["highlightPosition"]
       54 GETTABLEKS                       R13 R9 K8 ["highlightWidth"]
       56 GETUPVAL                         R20 2
       57 GETTABLEKS                       R19 R20 K0 ["useBinding"]
       59 GETIMPORT                        R20 K11 [Vector2.new]
       61 LOADN                            R21 0
       62 LOADN                            R22 0
       63 CALL                             R20 2 -1
       64 CALL                             R19 -1 2
       65 MOVE                             R14 R19
       66 MOVE                             R15 R20
       67 GETUPVAL                         R20 2
       68 GETTABLEKS                       R19 R20 K12 ["useCallback"]
       70 NEWCLOSURE                       R20 P0
       71 CAPTURE                          REF R15
       72 NEWTABLE                         R21 0 1
       74 GETTABLEKS                       R23 R7 K13 ["container"]
       76 GETTABLEKS                       R22 R23 K14 ["tag"]
       78 SETLIST                          R21 R22 1 [1]
       80 CALL                             R19 2 1
       81 MOVE                             R16 R19
       82 GETUPVAL                         R20 2
       83 GETTABLEKS                       R19 R20 K12 ["useCallback"]
       85 NEWCLOSURE                       R20 P1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          REF R16
       88 NEWTABLE                         R21 0 2
       90 GETTABLEKS                       R22 R2 K15 ["onAbsoluteSizeChanged"]
       92 MOVE                             R23 R16
       93 SETLIST                          R21 R22 2 [1]
       95 CALL                             R19 2 1
       96 MOVE                             R18 R19
       97 GETUPVAL                         R20 2
       98 GETTABLEKS                       R19 R20 K12 ["useCallback"]
      100 NEWCLOSURE                       R20 P2
      101 CAPTURE                          REF R11
      102 CAPTURE                          VAL R2
      103 NEWTABLE                         R21 0 1
      105 GETTABLEKS                       R22 R2 K4 ["value"]
      107 SETLIST                          R21 R22 1 [1]
      109 CALL                             R19 2 1
      110 MOVE                             R17 R19
      111 GETUPVAL                         R21 5
      112 GETTABLEKS                       R20 R21 K16 ["FoundationRemoveDividerSegmentedControl"]
      114 JUMPIFNOT                        R20 ; [+2]
      115 LOADNIL                          R19
      116 JUMP                             ; [+13]
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R19 R20 K12 ["useCallback"]
      120 NEWCLOSURE                       R20 P3
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R4
      124 NEWTABLE                         R21 0 1
      126 MOVE                             R22 R3
      127 SETLIST                          R21 R22 1 [1]
      129 CALL                             R19 2 1
      130 GETUPVAL                         R21 5
      131 GETTABLEKS                       R20 R21 K3 ["FoundationAnimateSegmentedControl"]
      133 JUMPIFNOT                        R20 ; [+118]
      134 GETUPVAL                         R21 2
      135 GETTABLEKS                       R20 R21 K17 ["createElement"]
      137 GETUPVAL                         R21 8
      138 DUPTABLE                         R22 K20 [{"Size", "testId"}]
      139 DUPCLOSURE                       R25 K21 [PROTO_4]
      140 NAMECALL                         R23 R14 K22 ["map"]
      142 CALL                             R23 2 1
      143 SETTABLEKS                       R23 R22 K18 ["Size"]
      145 LOADK                            R23 K23 ["--foundation-segmented-control-container"]
      146 SETTABLEKS                       R23 R22 K19 ["testId"]
      148 DUPTABLE                         R23 K26 [{"SegmentsContainer", "Overlay"}]
      149 GETUPVAL                         R25 2
      150 GETTABLEKS                       R24 R25 K17 ["createElement"]
      152 GETUPVAL                         R25 8
      153 GETUPVAL                         R26 0
      154 GETUPVAL                         R27 9
      155 MOVE                             R28 R2
      156 DUPTABLE                         R29 K28 [{"tag", "ref", "testId"}]
      157 GETTABLEKS                       R31 R7 K13 ["container"]
      159 GETTABLEKS                       R30 R31 K14 ["tag"]
      161 SETTABLEKS                       R30 R29 K14 ["tag"]
      163 OR                               R30 R1 R8
      164 SETTABLEKS                       R30 R29 K27 ["ref"]
      166 LOADK                            R30 K29 ["--foundation-segmented-control"]
      167 SETTABLEKS                       R30 R29 K19 ["testId"]
      169 CALL                             R27 2 1
      170 DUPTABLE                         R28 K30 [{"onAbsoluteSizeChanged"}]
      171 SETTABLEKS                       R18 R28 K15 ["onAbsoluteSizeChanged"]
      173 CALL                             R26 2 1
      174 GETUPVAL                         R28 10
      175 GETTABLEKS                       R27 R28 K22 ["map"]
      177 GETTABLEKS                       R28 R2 K31 ["segments"]
      179 NEWCLOSURE                       R29 P5
      180 CAPTURE                          VAL R2
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          UPVAL U11
      183 CAPTURE                          UPVAL U5
      184 CAPTURE                          VAL R19
      185 CAPTURE                          REF R11
      186 CAPTURE                          UPVAL U8
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R5
      190 CALL                             R27 2 -1
      191 CALL                             R24 -1 1
      192 SETTABLEKS                       R24 R23 K24 ["SegmentsContainer"]
      194 GETUPVAL                         R25 2
      195 GETTABLEKS                       R24 R25 K17 ["createElement"]
      197 GETUPVAL                         R25 8
      198 DUPTABLE                         R26 K35 [{"backgroundStyle", "tag", "Size", "Position", "ZIndex", "testId"}]
      199 GETTABLEKS                       R29 R5 K36 ["Color"]
      201 GETTABLEKS                       R28 R29 K37 ["Shift"]
      203 GETTABLEKS                       R27 R28 K38 ["Shift_400"]
      205 SETTABLEKS                       R27 R26 K32 ["backgroundStyle"]
      207 GETTABLEKS                       R28 R7 K39 ["segment"]
      209 GETTABLEKS                       R27 R28 K14 ["tag"]
      211 SETTABLEKS                       R27 R26 K14 ["tag"]
      213 GETUPVAL                         R28 2
      214 GETTABLEKS                       R27 R28 K40 ["joinBindings"]
      216 NEWTABLE                         R28 0 2
      218 MOVE                             R29 R13
      219 MOVE                             R30 R10
      220 SETLIST                          R28 R29 2 [1]
      222 CALL                             R27 1 1
      223 DUPCLOSURE                       R29 K41 [PROTO_8]
      224 NAMECALL                         R27 R27 K22 ["map"]
      226 CALL                             R27 2 1
      227 SETTABLEKS                       R27 R26 K18 ["Size"]
      229 NEWCLOSURE                       R29 P7
      230 CAPTURE                          REF R17
      231 CAPTURE                          VAL R1
      232 CAPTURE                          REF R8
      233 NAMECALL                         R27 R12 K22 ["map"]
      235 CALL                             R27 2 1
      236 SETTABLEKS                       R27 R26 K33 ["Position"]
      238 GETTABLEKS                       R28 R2 K34 ["ZIndex"]
      240 ADDK                             R27 R28 K42 [1]
      241 SETTABLEKS                       R27 R26 K34 ["ZIndex"]
      243 LOADK                            R27 K43 ["--foundation-segmented-control--animated-overlay"]
      244 SETTABLEKS                       R27 R26 K19 ["testId"]
      246 CALL                             R24 2 1
      247 SETTABLEKS                       R24 R23 K25 ["Overlay"]
      249 CALL                             R20 3 -1
      250 CLOSEUPVALS                      R8
      251 RETURN                           R20 -1
      252 GETUPVAL                         R21 2
      253 GETTABLEKS                       R20 R21 K17 ["createElement"]
      255 GETUPVAL                         R21 8
      256 GETUPVAL                         R22 9
      257 MOVE                             R23 R2
      258 DUPTABLE                         R24 K28 [{"tag", "ref", "testId"}]
      259 GETTABLEKS                       R26 R7 K13 ["container"]
      261 GETTABLEKS                       R25 R26 K14 ["tag"]
      263 SETTABLEKS                       R25 R24 K14 ["tag"]
      265 SETTABLEKS                       R1 R24 K27 ["ref"]
      267 LOADK                            R25 K29 ["--foundation-segmented-control"]
      268 SETTABLEKS                       R25 R24 K19 ["testId"]
      270 CALL                             R22 2 1
      271 GETUPVAL                         R24 10
      272 GETTABLEKS                       R23 R24 K22 ["map"]
      274 GETTABLEKS                       R24 R2 K31 ["segments"]
      276 NEWCLOSURE                       R25 P8
      277 CAPTURE                          VAL R2
      278 CAPTURE                          UPVAL U2
      279 CAPTURE                          UPVAL U11
      280 CAPTURE                          UPVAL U5
      281 CAPTURE                          VAL R19
      282 CAPTURE                          UPVAL U8
      283 CAPTURE                          VAL R7
      284 CAPTURE                          VAL R3
      285 CAPTURE                          VAL R5
      286 CALL                             R23 2 -1
      287 CALL                             R20 -1 -1
      288 CLOSEUPVALS                      R8
      289 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["ControlState"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Providers"]
       51 GETTABLEKS                       R10 R11 K16 ["Style"]
       53 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K18 ["Utility"]
       60 GETTABLEKS                       R10 R11 K19 ["withCommonProps"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K18 ["Utility"]
       67 GETTABLEKS                       R11 R12 K20 ["useAnimatedHighlight"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K18 ["Utility"]
       74 GETTABLEKS                       R12 R13 K21 ["withDefaults"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETIMPORT                        R15 K1 [script]
       81 GETTABLEKS                       R14 R15 K4 ["Parent"]
       83 GETTABLEKS                       R13 R14 K22 ["Segment"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETIMPORT                        R16 K1 [script]
       90 GETTABLEKS                       R15 R16 K4 ["Parent"]
       92 GETTABLEKS                       R14 R15 K23 ["useSegmentedControlVariants"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R16 R0 K18 ["Utility"]
       99 GETTABLEKS                       R15 R16 K24 ["Flags"]
      101 CALL                             R14 1 1
      102 DUPTABLE                         R15 K28 [{"size", "testId", "ZIndex"}]
      103 GETTABLEKS                       R16 R7 K29 ["Medium"]
      105 SETTABLEKS                       R16 R15 K25 ["size"]
      107 LOADK                            R16 K30 ["--foundation-segmented-control"]
      108 SETTABLEKS                       R16 R15 K26 ["testId"]
      110 LOADN                            R16 1
      111 SETTABLEKS                       R16 R15 K27 ["ZIndex"]
      113 DUPCLOSURE                       R16 K31 [PROTO_13]
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 GETTABLEKS                       R17 R3 K32 ["memo"]
      128 GETTABLEKS                       R18 R3 K33 ["forwardRef"]
      130 MOVE                             R19 R16
      131 CALL                             R18 1 -1
      132 CALL                             R17 -1 -1
      133 RETURN                           R17 -1
