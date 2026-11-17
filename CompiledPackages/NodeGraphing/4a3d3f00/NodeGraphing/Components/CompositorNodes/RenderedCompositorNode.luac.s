PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["nodeLibrary"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R6 R5
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLEKS                       R11 R10 K1 ["id"]
       14 SETTABLE                         R10 R0 R11
       15 FORGLOOP                         R6 2 ; [-4]
       17 FORGLOOP                         R1 2 ; [-10]
       19 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePosition"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 GETIMPORT                        R1 K2 [Vector2.zero]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["node"]
        8 GETTABLEKS                       R1 R1 K3 ["id"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 GETTABLEKS                       R1 R1 K1 ["id"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["onDragNodeStart"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["selectNodes"]
       14 MOVE                             R4 R2
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["isShiftPressed"]
       18 CALL                             R5 0 -1
       19 CALL                             R3 -1 0
       20 GETUPVAL                         R3 4
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R1
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeEnded"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["setNodePositions"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["node"]
        4 GETTABLEKS                       R2 R2 K1 ["nodeType"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K2 ["definition"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K0 ["node"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["node"]
        7 GETUPVAL                         R4 3
        8 CALL                             R1 3 3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K1 ["key"]
       12 GETUPVAL                         R7 4
       13 GETTABLEKS                       R7 R7 K2 ["createElement"]
       15 GETUPVAL                         R8 5
       16 DUPTABLE                         R9 K10 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "inputPinInputId", "pinDataType"}]
       17 GETTABLEKS                       R10 R5 K3 ["outputPinNodeId"]
       19 SETTABLEKS                       R10 R9 K3 ["outputPinNodeId"]
       21 GETTABLEKS                       R10 R5 K4 ["outputPinName"]
       23 SETTABLEKS                       R10 R9 K4 ["outputPinName"]
       25 GETTABLEKS                       R10 R5 K5 ["inputPinNodeId"]
       27 SETTABLEKS                       R10 R9 K5 ["inputPinNodeId"]
       29 GETTABLEKS                       R10 R5 K6 ["inputPinName"]
       31 SETTABLEKS                       R10 R9 K6 ["inputPinName"]
       33 GETTABLEKS                       R10 R5 K7 ["inputPinDynamicIndex"]
       35 SETTABLEKS                       R10 R9 K7 ["inputPinDynamicIndex"]
       37 GETTABLEKS                       R10 R5 K8 ["inputPinInputId"]
       39 SETTABLEKS                       R10 R9 K8 ["inputPinInputId"]
       41 GETTABLEKS                       R10 R5 K9 ["pinDataType"]
       43 SETTABLEKS                       R10 R9 K9 ["pinDataType"]
       45 CALL                             R7 2 1
       46 SETTABLE                         R7 R0 R6
       47 FORGLOOP                         R1 2 ; [-38]
       49 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["node"]
        3 JUMPIFNOT                        R3 ; [+12]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["setNodeProperty"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["node"]
       10 GETTABLEKS                       R4 R4 K2 ["id"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R3 4 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["node"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["observeNodePropsById"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["node"]
       10 GETTABLEKS                       R1 R1 K2 ["id"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K3 ["of"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["nodeOverrides"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 GETTABLEKS                       R5 R4 K1 ["nodeId"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K2 ["node"]
       15 GETTABLEKS                       R6 R6 K3 ["id"]
       17 JUMPIFNOTEQ                      R5 R6 ; [+43]
       19 LOADNIL                          R5
       20 GETTABLEKS                       R6 R4 K4 ["inputPinName"]
       22 JUMPIFNOTEQKS                    R6 K5 [""] ; [+12]
       24 GETUPVAL                         R6 3
       25 JUMPIFNOT                        R6 ; [+35]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K6 ["isPropertyParameterized"]
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R8 R4 K7 ["propertyName"]
       32 CALL                             R6 2 2
       33 MOVE                             R5 R7
       34 JUMP                             ; [+12]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K8 ["getInputPanelParameterBindingName"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K2 ["node"]
       41 GETTABLEKS                       R8 R4 K4 ["inputPinName"]
       43 GETTABLEKS                       R9 R4 K7 ["propertyName"]
       45 CALL                             R6 3 1
       46 MOVE                             R5 R6
       47 GETTABLEKS                       R6 R4 K9 ["parameterName"]
       49 JUMPIFEQ                         R5 R6 ; [+11]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K10 ["removeNodeOverride"]
       54 GETTABLEKS                       R7 R4 K1 ["nodeId"]
       56 GETTABLEKS                       R8 R4 K7 ["propertyName"]
       58 GETTABLEKS                       R9 R4 K4 ["inputPinName"]
       60 CALL                             R6 3 0
       61 FORGLOOP                         R0 2 ; [-52]
       63 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+58]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPE R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K1 [type]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+5]
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 JUMPIFNOT                        R6 ; [+38]
       21 LOADNIL                          R7
       22 GETUPVAL                         R8 2
       23 CALL                             R8 0 1
       24 JUMPIFNOT                        R8 ; [+20]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K3 ["getNodeOverride"]
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R9 R9 K4 ["nodeOverrides"]
       31 GETUPVAL                         R10 5
       32 GETTABLEKS                       R10 R10 K5 ["node"]
       34 GETTABLEKS                       R10 R10 K6 ["id"]
       36 MOVE                             R11 R4
       37 LOADK                            R12 K7 [""]
       38 CALL                             R8 4 1
       39 JUMPIFNOT                        R8 ; [+3]
       40 GETTABLEKS                       R7 R8 K8 ["value"]
       42 JUMP                             ; [+6]
       43 LOADNIL                          R7
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K9 ["parameterOverrides"]
       48 GETTABLE                         R7 R8 R6
       49 JUMPIFEQKNIL                     R7 ; [+3]
       51 MOVE                             R8 R7
       52 JUMP                             ; [+4]
       53 GETUPVAL                         R8 7
       54 JUMPIFNOT                        R8 ; [+2]
       55 GETUPVAL                         R9 7
       56 GETTABLE                         R8 R9 R6
       57 SETTABLE                         R8 R0 R4
       58 JUMP                             ; [+1]
       59 SETTABLE                         R5 R0 R4
       60 FORGLOOP                         R1 2 ; [-53]
       62 GETUPVAL                         R1 8
       63 CALL                             R1 0 1
       64 JUMPIFNOT                        R1 ; [+81]
       65 GETUPVAL                         R1 9
       66 JUMPIFNOT                        R1 ; [+79]
       67 GETUPVAL                         R1 9
       68 GETTABLEKS                       R1 R1 K10 ["Properties"]
       70 JUMPIFNOT                        R1 ; [+75]
       71 GETUPVAL                         R1 9
       72 GETTABLEKS                       R1 R1 K10 ["Properties"]
       74 LOADNIL                          R2
       75 LOADNIL                          R3
       76 FORGPREP                         R1
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R7 R7 K5 ["node"]
       80 GETTABLEKS                       R7 R7 K11 ["inputPinToConnectionMap"]
       82 GETTABLEKS                       R8 R5 K12 ["Name"]
       84 GETTABLE                         R6 R7 R8
       85 GETUPVAL                         R7 10
       86 GETTABLEKS                       R7 R7 K13 ["isPropertyParameterized"]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R9 R5 K12 ["Name"]
       91 CALL                             R7 2 1
       92 JUMPIF                           R7 ; [+4]
       93 JUMPIFNOT                        R6 ; [+50]
       94 GETTABLEKS                       R8 R6 K14 ["isValueNodeConnection"]
       96 JUMPIFNOT                        R8 ; [+47]
       97 GETUPVAL                         R9 11
       98 GETTABLEKS                       R10 R5 K12 ["Name"]
      100 GETTABLE                         R8 R9 R10
      101 GETUPVAL                         R9 10
      102 GETTABLEKS                       R9 R9 K15 ["castPropertyValue"]
      104 JUMPIFEQKNIL                     R8 ; [+3]
      106 MOVE                             R10 R8
      107 JUMP                             ; [+3]
      108 GETTABLEKS                       R11 R5 K12 ["Name"]
      110 GETTABLE                         R10 R0 R11
      111 GETTABLEKS                       R11 R5 K16 ["Type"]
      113 CALL                             R9 2 1
      114 JUMPIFNOTEQKNIL                  R9 ; [+15]
      116 GETUPVAL                         R10 0
      117 JUMPIFNOT                        R10 ; [+12]
      118 JUMPIF                           R7 ; [+11]
      119 GETUPVAL                         R10 10
      120 GETTABLEKS                       R10 R10 K15 ["castPropertyValue"]
      122 GETUPVAL                         R12 0
      123 GETTABLEKS                       R13 R5 K12 ["Name"]
      125 GETTABLE                         R11 R12 R13
      126 GETTABLEKS                       R12 R5 K16 ["Type"]
      128 CALL                             R10 2 1
      129 MOVE                             R9 R10
      130 JUMPIFNOTEQKNIL                  R9 ; [+10]
      132 GETUPVAL                         R10 10
      133 GETTABLEKS                       R10 R10 K15 ["castPropertyValue"]
      135 GETTABLEKS                       R11 R5 K17 ["Value"]
      137 GETTABLEKS                       R12 R5 K16 ["Type"]
      139 CALL                             R10 2 1
      140 MOVE                             R9 R10
      141 GETTABLEKS                       R10 R5 K12 ["Name"]
      143 SETTABLE                         R9 R0 R10
      144 FORGLOOP                         R1 2 ; [-68]
      146 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeStateById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R1 K3 ["nodeLibrary"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["useContext"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K1 ["Context"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["useContext"]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K1 ["Context"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K0 ["useContext"]
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K1 ["Context"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K0 ["useContext"]
       50 GETUPVAL                         R8 6
       51 GETTABLEKS                       R8 R8 K1 ["Context"]
       53 CALL                             R7 1 1
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K0 ["useContext"]
       57 GETUPVAL                         R9 7
       58 GETTABLEKS                       R9 R9 K1 ["Context"]
       60 CALL                             R8 1 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R11 0 2
       69 GETTABLEKS                       R12 R0 K4 ["node"]
       71 GETTABLEKS                       R12 R12 K5 ["id"]
       73 GETTABLEKS                       R13 R7 K6 ["observeNodePosition"]
       75 SETLIST                          R11 R12 2 [1]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R10 8
       79 GETTABLEKS                       R10 R10 K7 ["useSignalState"]
       81 MOVE                             R11 R9
       82 CALL                             R10 1 1
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K2 ["useMemo"]
       86 NEWCLOSURE                       R12 P2
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          VAL R9
       89 NEWTABLE                         R13 0 1
       91 MOVE                             R14 R9
       92 SETLIST                          R13 R14 1 [1]
       94 CALL                             R11 2 1
       95 GETUPVAL                         R12 8
       96 GETTABLEKS                       R12 R12 K7 ["useSignalState"]
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R13 R13 K2 ["useMemo"]
      101 NEWCLOSURE                       R14 P3
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R0
      104 NEWTABLE                         R15 0 2
      106 GETTABLEKS                       R16 R0 K4 ["node"]
      108 GETTABLEKS                       R16 R16 K5 ["id"]
      110 GETTABLEKS                       R17 R6 K8 ["nodeRenderInfoDispatcher"]
      112 GETTABLEKS                       R17 R17 K9 ["observe"]
      114 SETLIST                          R15 R16 2 [1]
      116 CALL                             R13 2 -1
      117 CALL                             R12 -1 1
      118 JUMPIFNOT                        R12 ; [+3]
      119 GETTABLEKS                       R13 R12 K10 ["zIndex"]
      121 JUMP                             ; [+1]
      122 LOADN                            R13 0
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R14 R14 K11 ["useCallback"]
      126 NEWCLOSURE                       R15 P4
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R8
      131 CAPTURE                          UPVAL U10
      132 NEWTABLE                         R16 0 4
      134 GETTABLEKS                       R17 R7 K12 ["onDragNodeStart"]
      136 GETTABLEKS                       R18 R6 K13 ["selectNodes"]
      138 GETTABLEKS                       R19 R0 K14 ["isShiftEnabled"]
      140 GETTABLEKS                       R20 R8 K15 ["isShiftPressed"]
      142 SETLIST                          R16 R17 4 [1]
      144 CALL                             R14 2 1
      145 GETUPVAL                         R15 0
      146 GETTABLEKS                       R15 R15 K11 ["useCallback"]
      148 NEWCLOSURE                       R16 P5
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R0
      151 NEWTABLE                         R17 0 2
      153 GETTABLEKS                       R18 R0 K4 ["node"]
      155 GETTABLEKS                       R18 R18 K5 ["id"]
      157 GETTABLEKS                       R19 R7 K16 ["onDragNodeMoved"]
      159 SETLIST                          R17 R18 2 [1]
      161 CALL                             R15 2 1
      162 GETUPVAL                         R16 0
      163 GETTABLEKS                       R16 R16 K11 ["useCallback"]
      165 NEWCLOSURE                       R17 P6
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R6
      169 NEWTABLE                         R18 0 4
      171 GETTABLEKS                       R19 R6 K17 ["setNodePositions"]
      173 GETTABLEKS                       R20 R7 K6 ["observeNodePosition"]
      175 GETTABLEKS                       R21 R7 K18 ["onDragNodeEnded"]
      177 GETTABLEKS                       R22 R0 K4 ["node"]
      179 GETTABLEKS                       R22 R22 K5 ["id"]
      181 SETLIST                          R18 R19 4 [1]
      183 CALL                             R16 2 1
      184 GETUPVAL                         R17 11
      185 GETTABLEKS                       R18 R0 K4 ["node"]
      187 CALL                             R17 1 1
      188 GETUPVAL                         R18 8
      189 GETTABLEKS                       R18 R18 K7 ["useSignalState"]
      191 GETTABLEKS                       R19 R6 K19 ["nodePayloadDispatcher"]
      193 GETTABLEKS                       R19 R19 K20 ["observeMap"]
      195 CALL                             R18 1 1
      196 GETUPVAL                         R19 0
      197 GETTABLEKS                       R19 R19 K2 ["useMemo"]
      199 NEWCLOSURE                       R20 P7
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U12
      203 NEWTABLE                         R21 0 3
      205 GETTABLEKS                       R22 R0 K4 ["node"]
      207 GETTABLEKS                       R22 R22 K21 ["nodeType"]
      209 GETTABLEKS                       R23 R0 K4 ["node"]
      211 MOVE                             R24 R2
      212 SETLIST                          R21 R22 3 [1]
      214 CALL                             R19 2 1
      215 GETUPVAL                         R20 0
      216 GETTABLEKS                       R20 R20 K2 ["useMemo"]
      218 NEWCLOSURE                       R21 P8
      219 CAPTURE                          UPVAL U13
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R18
      223 CAPTURE                          UPVAL U0
      224 CAPTURE                          UPVAL U14
      225 NEWTABLE                         R22 0 7
      227 MOVE                             R23 R19
      228 GETTABLEKS                       R24 R0 K4 ["node"]
      230 GETTABLEKS                       R25 R0 K4 ["node"]
      232 GETTABLEKS                       R25 R25 K22 ["inputPinToConnectionMap"]
      234 GETTABLEKS                       R26 R0 K4 ["node"]
      236 GETTABLEKS                       R26 R26 K23 ["inputLabelPinToConnectionMap"]
      238 GETTABLEKS                       R27 R0 K4 ["node"]
      240 GETTABLEKS                       R27 R27 K24 ["inputPinInputIds"]
      242 GETTABLEKS                       R28 R0 K4 ["node"]
      244 GETTABLEKS                       R28 R28 K25 ["inputConnectionsByInputId"]
      246 MOVE                             R29 R18
      247 SETLIST                          R22 R23 7 [1]
      249 CALL                             R20 2 1
      250 GETUPVAL                         R21 0
      251 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      253 NEWCLOSURE                       R22 P9
      254 CAPTURE                          VAL R0
      255 CAPTURE                          VAL R6
      256 NEWTABLE                         R23 0 2
      258 GETTABLEKS                       R24 R6 K26 ["setNodeProperty"]
      260 GETTABLEKS                       R26 R0 K4 ["node"]
      262 JUMPIFNOT                        R26 ; [+5]
      263 GETTABLEKS                       R25 R0 K4 ["node"]
      265 GETTABLEKS                       R25 R25 K5 ["id"]
      267 JUMPIF                           R25 ; [+1]
      268 LOADNIL                          R25
      269 SETLIST                          R23 R24 2 [1]
      271 CALL                             R21 2 1
      272 GETTABLEKS                       R22 R0 K4 ["node"]
      274 JUMPIFNOT                        R22 ; [+11]
      275 GETTABLEKS                       R23 R0 K4 ["node"]
      277 GETTABLEKS                       R23 R23 K27 ["className"]
      279 GETUPVAL                         R24 15
      280 GETTABLEKS                       R24 R24 K28 ["PARAMETER_NODE_CLASSNAME"]
      282 JUMPIFEQ                         R23 R24 ; [+2]
      284 LOADB                            R22 0 +1
      285 LOADB                            R22 1
      286 GETUPVAL                         R23 0
      287 GETTABLEKS                       R23 R23 K2 ["useMemo"]
      289 NEWCLOSURE                       R24 P10
      290 CAPTURE                          VAL R0
      291 CAPTURE                          VAL R6
      292 CAPTURE                          UPVAL U16
      293 NEWTABLE                         R25 0 1
      295 GETTABLEKS                       R27 R0 K4 ["node"]
      297 JUMPIFNOT                        R27 ; [+5]
      298 GETTABLEKS                       R26 R0 K4 ["node"]
      300 GETTABLEKS                       R26 R26 K5 ["id"]
      302 JUMPIF                           R26 ; [+1]
      303 LOADNIL                          R26
      304 SETLIST                          R25 R26 1 [1]
      306 CALL                             R23 2 1
      307 GETUPVAL                         R24 8
      308 GETTABLEKS                       R24 R24 K7 ["useSignalState"]
      310 MOVE                             R25 R23
      311 CALL                             R24 1 1
      312 GETUPVAL                         R25 0
      313 GETTABLEKS                       R25 R25 K29 ["useEffect"]
      315 NEWCLOSURE                       R26 P11
      316 CAPTURE                          UPVAL U17
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R0
      319 CAPTURE                          VAL R24
      320 CAPTURE                          UPVAL U18
      321 NEWTABLE                         R27 0 4
      323 MOVE                             R28 R24
      324 GETTABLEKS                       R29 R0 K4 ["node"]
      326 GETTABLEKS                       R30 R5 K30 ["nodeOverrides"]
      328 GETTABLEKS                       R31 R5 K31 ["removeNodeOverride"]
      330 SETLIST                          R27 R28 4 [1]
      332 CALL                             R25 2 0
      333 GETUPVAL                         R25 19
      334 GETTABLEKS                       R26 R0 K4 ["node"]
      336 GETTABLEKS                       R26 R26 K22 ["inputPinToConnectionMap"]
      338 CALL                             R25 1 1
      339 GETUPVAL                         R26 8
      340 GETTABLEKS                       R26 R26 K7 ["useSignalState"]
      342 GETTABLEKS                       R27 R3 K32 ["observeParameters"]
      344 CALL                             R26 1 1
      345 GETUPVAL                         R27 0
      346 GETTABLEKS                       R27 R27 K2 ["useMemo"]
      348 NEWCLOSURE                       R28 P12
      349 CAPTURE                          VAL R24
      350 CAPTURE                          UPVAL U20
      351 CAPTURE                          UPVAL U17
      352 CAPTURE                          UPVAL U4
      353 CAPTURE                          VAL R5
      354 CAPTURE                          VAL R0
      355 CAPTURE                          VAL R4
      356 CAPTURE                          VAL R26
      357 CAPTURE                          UPVAL U21
      358 CAPTURE                          VAL R19
      359 CAPTURE                          UPVAL U18
      360 CAPTURE                          VAL R25
      361 NEWTABLE                         R29 0 8
      363 MOVE                             R30 R26
      364 MOVE                             R31 R24
      365 GETTABLEKS                       R32 R4 K33 ["parameterOverrides"]
      367 GETTABLEKS                       R33 R5 K30 ["nodeOverrides"]
      369 GETTABLEKS                       R34 R0 K4 ["node"]
      371 GETTABLEKS                       R34 R34 K5 ["id"]
      373 MOVE                             R35 R25
      374 MOVE                             R36 R19
      375 GETTABLEKS                       R37 R0 K4 ["node"]
      377 GETTABLEKS                       R37 R37 K22 ["inputPinToConnectionMap"]
      379 SETLIST                          R29 R30 8 [1]
      381 CALL                             R27 2 1
      382 GETUPVAL                         R28 8
      383 GETTABLEKS                       R28 R28 K7 ["useSignalState"]
      385 GETUPVAL                         R29 0
      386 GETTABLEKS                       R29 R29 K2 ["useMemo"]
      388 NEWCLOSURE                       R30 P13
      389 CAPTURE                          VAL R6
      390 CAPTURE                          VAL R0
      391 NEWTABLE                         R31 0 2
      393 GETTABLEKS                       R32 R6 K34 ["observeNodeStateById"]
      395 GETTABLEKS                       R33 R0 K4 ["node"]
      397 GETTABLEKS                       R33 R33 K5 ["id"]
      399 SETLIST                          R31 R32 2 [1]
      401 CALL                             R29 2 -1
      402 CALL                             R28 -1 1
      403 DUPTABLE                         R29 K51 [{"text", "editName", "CanDrag", "GraphPayload", "Position", "ObservePosition", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      404 GETTABLEKS                       R30 R17 K52 ["displayName"]
      406 SETTABLEKS                       R30 R29 K35 ["text"]
      408 GETTABLEKS                       R30 R17 K36 ["editName"]
      410 SETTABLEKS                       R30 R29 K36 ["editName"]
      412 GETTABLEKS                       R30 R0 K53 ["canDrag"]
      414 SETTABLEKS                       R30 R29 K37 ["CanDrag"]
      416 GETTABLEKS                       R30 R0 K4 ["node"]
      418 SETTABLEKS                       R30 R29 K38 ["GraphPayload"]
      420 MOVE                             R30 R10
      421 JUMPIF                           R30 ; [+2]
      422 GETIMPORT                        R30 K56 [Vector2.zero]
      424 SETTABLEKS                       R30 R29 K39 ["Position"]
      426 SETTABLEKS                       R11 R29 K40 ["ObservePosition"]
      428 JUMPIFNOT                        R12 ; [+6]
      429 GETTABLEKS                       R30 R12 K57 ["size"]
      431 JUMPIF                           R30 ; [+5]
      432 GETIMPORT                        R30 K56 [Vector2.zero]
      434 JUMP                             ; [+2]
      435 GETIMPORT                        R30 K56 [Vector2.zero]
      437 SETTABLEKS                       R30 R29 K41 ["Size"]
      439 JUMPIFNOT                        R12 ; [+3]
      440 GETTABLEKS                       R30 R12 K58 ["isSelected"]
      442 JUMP                             ; [+1]
      443 LOADB                            R30 0
      444 SETTABLEKS                       R30 R29 K42 ["Selected"]
      446 JUMPIFNOT                        R12 ; [+3]
      447 GETTABLEKS                       R30 R12 K59 ["isCollapsed"]
      449 JUMP                             ; [+1]
      450 LOADB                            R30 0
      451 SETTABLEKS                       R30 R29 K43 ["Collapsed"]
      453 SETTABLEKS                       R13 R29 K44 ["ZIndex"]
      455 SETTABLEKS                       R14 R29 K45 ["OnDragStart"]
      457 SETTABLEKS                       R15 R29 K46 ["OnDragMoved"]
      459 SETTABLEKS                       R16 R29 K47 ["OnDragEnded"]
      461 SETTABLEKS                       R21 R29 K48 ["OnPropertyChanged"]
      463 SETTABLEKS                       R27 R29 K49 ["PropertyLookup"]
      465 MOVE                             R30 R28
      466 JUMPIF                           R30 ; [+1]
      467 GETUPVAL                         R30 22
      468 SETTABLEKS                       R30 R29 K50 ["StateLookup"]
      470 LOADNIL                          R30
      471 JUMPIFNOT                        R22 ; [+16]
      472 GETUPVAL                         R31 23
      473 CALL                             R31 0 1
      474 JUMPIFNOT                        R31 ; [+11]
      475 GETTABLEKS                       R31 R0 K4 ["node"]
      477 GETTABLEKS                       R31 R31 K21 ["nodeType"]
      479 GETUPVAL                         R32 15
      480 GETTABLEKS                       R32 R32 K60 ["EXPRESSION_NODE_CLASSNAME"]
      482 JUMPIFNOTEQ                      R31 R32 ; [+3]
      484 GETUPVAL                         R30 24
      485 JUMP                             ; [+36]
      486 GETUPVAL                         R30 25
      487 JUMP                             ; [+34]
      488 GETTABLEKS                       R31 R1 K61 ["renderOnlyLibrary"]
      490 GETTABLEKS                       R32 R0 K4 ["node"]
      492 GETTABLEKS                       R32 R32 K21 ["nodeType"]
      494 JUMPIFNOT                        R32 ; [+13]
      495 GETTABLEKS                       R33 R0 K4 ["node"]
      497 GETTABLEKS                       R33 R33 K21 ["nodeType"]
      499 GETTABLE                         R32 R2 R33
      500 JUMPIF                           R32 ; [+7]
      501 MOVE                             R32 R31
      502 JUMPIFNOT                        R32 ; [+5]
      503 GETTABLEKS                       R33 R0 K4 ["node"]
      505 GETTABLEKS                       R33 R33 K21 ["nodeType"]
      507 GETTABLE                         R32 R31 R33
      508 JUMPIFNOT                        R32 ; [+3]
      509 GETTABLEKS                       R30 R32 K62 ["render"]
      511 JUMP                             ; [+1]
      512 GETUPVAL                         R30 26
      513 GETIMPORT                        R33 K64 [game]
      515 LOADK                            R35 K65 ["DebugDisableCustomNodes"]
      516 LOADB                            R36 0
      517 NAMECALL                         R33 R33 K66 ["DefineFastFlag"]
      519 CALL                             R33 3 1
      520 JUMPIFNOT                        R33 ; [+1]
      521 GETUPVAL                         R30 26
      522 GETUPVAL                         R31 0
      523 GETTABLEKS                       R31 R31 K67 ["createElement"]
      525 GETUPVAL                         R32 0
      526 GETTABLEKS                       R32 R32 K68 ["Fragment"]
      528 NEWTABLE                         R33 0 0
      530 GETUPVAL                         R34 0
      531 GETTABLEKS                       R34 R34 K67 ["createElement"]
      533 MOVE                             R35 R30
      534 MOVE                             R36 R29
      535 CALL                             R34 2 1
      536 MOVE                             R35 R20
      537 CALL                             R31 4 -1
      538 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorNode"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K10 ["CompositorNodes"]
       32 GETTABLEKS                       R5 R5 K11 ["ExpressionNode"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["GraphContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K12 ["GraphContext"]
       48 GETTABLEKS                       R7 R7 K13 ["GraphContextTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K14 ["ModifierKeysContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K15 ["NodeLibraryContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Components"]
       69 GETTABLEKS                       R10 R10 K16 ["NodePropertyOverrideContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K17 ["NodeViewTypes"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K18 ["ParameterContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K10 ["CompositorNodes"]
       90 GETTABLEKS                       R13 R13 K19 ["ParameterNode"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Components"]
       97 GETTABLEKS                       R14 R14 K20 ["ParameterOverrideContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Components"]
      104 GETTABLEKS                       R15 R15 K21 ["CompositorNodeProperty"]
      106 GETTABLEKS                       R15 R15 K22 ["PropertyUtils"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K23 ["Parent"]
      113 GETTABLEKS                       R16 R16 K24 ["React"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K6 ["Components"]
      120 GETTABLEKS                       R17 R17 K10 ["CompositorNodes"]
      122 GETTABLEKS                       R17 R17 K25 ["RenderedCompositorCurve"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K23 ["Parent"]
      129 GETTABLEKS                       R18 R18 K26 ["Signals"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K23 ["Parent"]
      136 GETTABLEKS                       R19 R19 K27 ["SignalsReact"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K23 ["Parent"]
      143 GETTABLEKS                       R20 R20 K28 ["SignalsUtils"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K29 ["Util"]
      150 GETTABLEKS                       R21 R21 K30 ["bumpNodeZIndex"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K6 ["Components"]
      157 GETTABLEKS                       R22 R22 K10 ["CompositorNodes"]
      159 GETTABLEKS                       R22 R22 K31 ["getConnectionCurves"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R23 R0 K29 ["Util"]
      166 GETTABLEKS                       R23 R23 K32 ["matchParameterBinding"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K5 [require]
      171 GETTABLEKS                       R24 R0 K6 ["Components"]
      173 GETTABLEKS                       R24 R24 K10 ["CompositorNodes"]
      175 GETTABLEKS                       R24 R24 K33 ["synthesizeDefinition"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K5 [require]
      180 GETTABLEKS                       R25 R0 K6 ["Components"]
      182 GETTABLEKS                       R25 R25 K10 ["CompositorNodes"]
      184 GETTABLEKS                       R25 R25 K34 ["useNodeNames"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K5 [require]
      189 GETTABLEKS                       R26 R0 K35 ["Hooks"]
      191 GETTABLEKS                       R26 R26 K36 ["useValueNodeOutputs"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K5 [require]
      196 GETTABLEKS                       R27 R0 K37 ["Flags"]
      198 GETTABLEKS                       R27 R27 K38 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K5 [require]
      203 GETTABLEKS                       R28 R0 K37 ["Flags"]
      205 GETTABLEKS                       R28 R28 K39 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      207 CALL                             R27 1 1
      208 GETIMPORT                        R28 K5 [require]
      210 GETTABLEKS                       R29 R0 K37 ["Flags"]
      212 GETTABLEKS                       R29 R29 K40 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
      214 CALL                             R28 1 1
      215 NEWTABLE                         R29 0 0
      217 DUPCLOSURE                       R30 K41 [PROTO_15]
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R1
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R17
      228 CAPTURE                          VAL R20
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R2
      245 GETTABLEKS                       R31 R15 K42 ["memo"]
      247 MOVE                             R32 R30
      248 CALL                             R31 1 -1
      249 RETURN                           R31 -1
