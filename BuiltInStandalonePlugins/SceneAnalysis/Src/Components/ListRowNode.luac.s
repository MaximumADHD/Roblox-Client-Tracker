PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["id"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIF                           R1 ; [+9]
        5 GETIMPORT                        R1 K3 [UDim2.new]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K4 ["width"]
       10 LOADN                            R3 2
       11 LOADN                            R4 1
       12 LOADN                            R5 0
       13 CALL                             R1 4 1
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 JUMPIFNOT                        R2 ; [+9]
        8 NAMECALL                         R9 R2 K2 ["getBinding"]
       10 CALL                             R9 1 1
       11 NEWCLOSURE                       R11 P0
       12 CAPTURE                          VAL R8
       13 NAMECALL                         R9 R9 K3 ["map"]
       15 CALL                             R9 2 1
       16 JUMPIF                           R9 ; [+8]
       17 GETIMPORT                        R9 K6 [UDim2.new]
       19 GETTABLEKS                       R10 R8 K7 ["width"]
       21 LOADN                            R11 2
       22 LOADN                            R12 1
       23 LOADN                            R13 0
       24 CALL                             R9 4 1
       25 GETTABLEKS                       R10 R8 K8 ["renderCell"]
       27 JUMPIFNOT                        R10 ; [+21]
       28 GETTABLEKS                       R10 R8 K9 ["id"]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K10 ["createElement"]
       33 GETTABLEKS                       R12 R8 K8 ["renderCell"]
       35 DUPTABLE                         R13 K15 [{"displayData", "Size", "LayoutOrder", "col"}]
       36 SETTABLEKS                       R1 R13 K11 ["displayData"]
       38 SETTABLEKS                       R9 R13 K12 ["Size"]
       40 GETTABLEKS                       R14 R8 K16 ["order"]
       42 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       44 SETTABLEKS                       R8 R13 K14 ["col"]
       46 CALL                             R11 2 1
       47 SETTABLE                         R11 R3 R10
       48 JUMP                             ; [+19]
       49 GETTABLEKS                       R10 R8 K9 ["id"]
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R11 R12 K10 ["createElement"]
       54 GETUPVAL                         R12 1
       55 DUPTABLE                         R13 K15 [{"displayData", "Size", "LayoutOrder", "col"}]
       56 SETTABLEKS                       R1 R13 K11 ["displayData"]
       58 SETTABLEKS                       R9 R13 K12 ["Size"]
       60 GETTABLEKS                       R14 R8 K16 ["order"]
       62 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       64 SETTABLEKS                       R8 R13 K14 ["col"]
       66 CALL                             R11 2 1
       67 SETTABLE                         R11 R3 R10
       68 FORGLOOP                         R4 2 [inext] ; [-62]
       70 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R4 R3
        1 LOADK                            R5 K0 ["hovered"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 JUMPIF                           R2 ; [+2]
        4 LOADK                            R6 K1 ["SceneAnalysis-Hovered"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R6
        7 CALL                             R4 2 0
        8 MOVE                             R4 R3
        9 LOADK                            R5 K2 ["selected"]
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADK                            R6 K3 ["SceneAnalysis-Selected"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R6
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["visibleNodeObservable"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETTABLEKS                       R1 R0 K2 ["node"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K2 ["node"]
       13 GETTABLEKS                       R1 R2 K3 ["Id"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K4 ["hoveredNodeId"]
       18 GETTABLEKS                       R3 R4 K1 ["get"]
       20 CALL                             R3 0 1
       21 JUMPIFEQ                         R3 R1 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K5 ["selectedIdsHash"]
       28 JUMPIFNOT                        R3 ; [+6]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K5 ["selectedIdsHash"]
       32 GETTABLEKS                       R3 R4 K1 ["get"]
       34 CALL                             R3 0 1
       35 LOADB                            R4 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K6 ["selectedNodeId"]
       39 GETTABLEKS                       R5 R6 K1 ["get"]
       41 CALL                             R5 0 1
       42 JUMPIFEQ                         R5 R1 ; [+9]
       44 LOADB                            R4 0
       45 JUMPIFEQKNIL                     R3 ; [+6]
       47 GETTABLE                         R5 R3 R1
       48 JUMPIFEQKB                       R5 TRUE ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 GETUPVAL                         R5 1
       53 MOVE                             R6 R5
       54 LOADK                            R7 K7 ["hovered"]
       55 JUMPIFNOT                        R2 ; [+3]
       56 JUMPIF                           R4 ; [+2]
       57 LOADK                            R8 K8 ["SceneAnalysis-Hovered"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R8
       60 CALL                             R6 2 0
       61 MOVE                             R6 R5
       62 LOADK                            R7 K9 ["selected"]
       63 JUMPIFNOT                        R4 ; [+2]
       64 LOADK                            R8 K10 ["SceneAnalysis-Selected"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R8
       67 CALL                             R6 2 0
       68 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Size"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+4]
        8 GETTABLEKS                       R1 R0 K0 ["Size"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K4 ["Sizes"]
       13 JUMPIFNOT                        R1 ; [+42]
       14 GETTABLEKS                       R2 R0 K4 ["Sizes"]
       16 FASTCALL1                        TYPE R2 ; [+2]
       17 GETIMPORT                        R1 K2 [type]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+35]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K6 ["queryInfo"]
       25 JUMPIFNOT                        R1 ; [+5]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K6 ["queryInfo"]
       29 GETTABLEKS                       R1 R2 K7 ["sizeKey"]
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R3 R0 K4 ["Sizes"]
       34 GETTABLE                         R2 R3 R1
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETTABLEKS                       R3 R0 K4 ["Sizes"]
       38 GETTABLE                         R2 R3 R1
       39 RETURN                           R2 1
       40 GETIMPORT                        R2 K9 [next]
       42 GETTABLEKS                       R3 R0 K4 ["Sizes"]
       44 CALL                             R2 1 2
       45 FASTCALL1                        TYPE R3 ; [+3]
       46 MOVE                             R6 R3
       47 GETIMPORT                        R5 K2 [type]
       49 CALL                             R5 1 1
       50 JUMPIFNOTEQKS                    R5 K3 ["number"] ; [+3]
       52 MOVE                             R4 R3
       53 JUMPIF                           R4 ; [+1]
       54 LOADN                            R4 0
       55 RETURN                           R4 1
       56 LOADN                            R1 0
       57 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["node"]
        3 JUMPIF                           R1 ; [+19]
        4 DUPTABLE                         R1 K3 [{"isVisible", "node", "sizeMB"}]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["isVisible"]
        8 DUPTABLE                         R2 K6 [{"Name", "Size"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K7 ["NIL_NODE"]
       12 SETTABLEKS                       R3 R2 K4 ["Name"]
       14 LOADN                            R3 0
       15 SETTABLEKS                       R3 R2 K5 ["Size"]
       17 SETTABLEKS                       R2 R1 K0 ["node"]
       19 LOADK                            R2 K8 ["0B"]
       20 SETTABLEKS                       R2 R1 K2 ["sizeMB"]
       22 RETURN                           R1 1
       23 GETTABLEKS                       R1 R0 K0 ["node"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U1
       27 DUPTABLE                         R3 K3 [{"isVisible", "node", "sizeMB"}]
       28 GETTABLEKS                       R5 R1 K4 ["Name"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K7 ["NIL_NODE"]
       33 JUMPIFNOTEQ                      R5 R6 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 SETTABLEKS                       R4 R3 K1 ["isVisible"]
       39 SETTABLEKS                       R1 R3 K0 ["node"]
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R2
       43 MOVE                             R6 R1
       44 CALL                             R5 1 1
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K2 ["sizeMB"]
       48 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["getColumns"]
        4 CALL                             R1 0 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K1 ["columnWidths"]
        9 CALL                             R0 3 1
       10 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K1 ["node"]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R2 K1 ["node"]
       11 GETTABLEKS                       R3 R4 K2 ["Id"]
       13 GETTABLEKS                       R4 R1 K3 ["UserInputType"]
       15 GETIMPORT                        R5 K6 [Enum.UserInputType.MouseButton1]
       17 JUMPIFNOTEQ                      R4 R5 ; [+79]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K7 ["deselectOnReselect"]
       22 JUMPIFNOT                        R4 ; [+49]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K8 ["selectedIdsHash"]
       26 JUMPIFNOT                        R4 ; [+6]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K8 ["selectedIdsHash"]
       30 GETTABLEKS                       R4 R5 K0 ["get"]
       32 CALL                             R4 0 1
       33 LOADB                            R5 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K9 ["selectedNodeId"]
       37 GETTABLEKS                       R6 R7 K0 ["get"]
       39 CALL                             R6 0 1
       40 JUMPIFEQ                         R6 R3 ; [+9]
       42 LOADB                            R5 0
       43 JUMPIFEQKNIL                     R4 ; [+6]
       45 GETTABLE                         R6 R4 R3
       46 JUMPIFEQKB                       R6 TRUE ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 JUMPIFNOT                        R5 ; [+21]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R6 R7 K10 ["treemapContext"]
       54 JUMPIFNOT                        R6 ; [+6]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R6 R7 K10 ["treemapContext"]
       58 NAMECALL                         R6 R6 K11 ["clearSelectedNodes"]
       60 CALL                             R6 1 0
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R6 R7 K12 ["setSelectedNodeId"]
       64 LOADNIL                          R7
       65 CALL                             R6 1 0
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R6 R7 K13 ["setSelectedIdsHash"]
       69 LOADNIL                          R7
       70 CALL                             R6 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R4 R5 K10 ["treemapContext"]
       75 JUMPIFNOT                        R4 ; [+7]
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R4 R5 K10 ["treemapContext"]
       79 MOVE                             R6 R3
       80 NAMECALL                         R4 R4 K14 ["setSelectedNodeIdFromListView"]
       82 CALL                             R4 2 0
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R4 R5 K12 ["setSelectedNodeId"]
       86 MOVE                             R5 R3
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R4 R5 K13 ["setSelectedIdsHash"]
       91 NEWTABLE                         R5 1 0
       93 LOADB                            R6 1
       94 SETTABLE                         R6 R5 R3
       95 CALL                             R4 1 0
       96 RETURN                           R0 0
       97 GETTABLEKS                       R4 R1 K3 ["UserInputType"]
       99 GETIMPORT                        R5 K16 [Enum.UserInputType.MouseButton2]
      101 JUMPIFNOTEQ                      R4 R5 ; [+29]
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R4 R5 K10 ["treemapContext"]
      106 JUMPIFNOT                        R4 ; [+7]
      107 GETUPVAL                         R5 1
      108 GETTABLEKS                       R4 R5 K10 ["treemapContext"]
      110 MOVE                             R6 R3
      111 NAMECALL                         R4 R4 K14 ["setSelectedNodeIdFromListView"]
      113 CALL                             R4 2 0
      114 GETUPVAL                         R5 1
      115 GETTABLEKS                       R4 R5 K12 ["setSelectedNodeId"]
      117 MOVE                             R5 R3
      118 CALL                             R4 1 0
      119 GETUPVAL                         R5 1
      120 GETTABLEKS                       R4 R5 K13 ["setSelectedIdsHash"]
      122 NEWTABLE                         R5 1 0
      124 LOADB                            R6 1
      125 SETTABLE                         R6 R5 R3
      126 CALL                             R4 1 0
      127 GETUPVAL                         R4 2
      128 MOVE                             R5 R1
      129 MOVE                             R6 R3
      130 CALL                             R4 2 0
      131 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["isVisible"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["query"]
        2 GETTABLEKS                       R2 R0 K1 ["visibleNodeObservable"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R6 R0 K0 ["query"]
       15 GETTABLEKS                       R7 R0 K3 ["queryInfo"]
       17 CALL                             R5 2 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R8 0 5
       26 GETTABLEKS                       R9 R0 K1 ["visibleNodeObservable"]
       28 GETTABLEKS                       R10 R0 K5 ["hoveredNodeId"]
       30 GETTABLEKS                       R11 R0 K6 ["selectedNodeId"]
       32 GETTABLEKS                       R12 R0 K7 ["selectedIdsHash"]
       34 MOVE                             R13 R4
       35 SETLIST                          R8 R9 5 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       41 MOVE                             R8 R2
       42 MOVE                             R9 R6
       43 NEWTABLE                         R10 0 1
       45 MOVE                             R11 R6
       46 SETLIST                          R10 R11 1 [1]
       48 CALL                             R7 3 0
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       52 GETTABLEKS                       R8 R0 K5 ["hoveredNodeId"]
       54 MOVE                             R9 R6
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R6
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R7 3 0
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       64 GETTABLEKS                       R8 R0 K6 ["selectedNodeId"]
       66 MOVE                             R9 R6
       67 NEWTABLE                         R10 0 1
       69 MOVE                             R11 R6
       70 SETLIST                          R10 R11 1 [1]
       72 CALL                             R7 3 0
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       76 GETTABLEKS                       R8 R0 K7 ["selectedIdsHash"]
       78 MOVE                             R9 R6
       79 NEWTABLE                         R10 0 1
       81 MOVE                             R11 R6
       82 SETLIST                          R10 R11 1 [1]
       84 CALL                             R7 3 0
       85 GETTABLEKS                       R7 R2 K9 ["getBinding"]
       87 CALL                             R7 0 1
       88 NEWCLOSURE                       R9 P1
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U5
       92 NAMECALL                         R7 R7 K10 ["map"]
       94 CALL                             R7 2 1
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R8 R9 K11 ["useMemo"]
       98 NEWCLOSURE                       R9 P2
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R0
      103 NEWTABLE                         R10 0 3
      105 GETTABLEKS                       R11 R0 K12 ["columnWidths"]
      107 MOVE                             R12 R7
      108 MOVE                             R13 R1
      109 SETLIST                          R10 R11 3 [1]
      111 CALL                             R8 2 1
      112 DUPTABLE                         R9 K15 [{"Padding", "Layout"}]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R10 R11 K16 ["createElement"]
      116 LOADK                            R11 K17 ["UIPadding"]
      117 DUPTABLE                         R12 K22 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      118 GETIMPORT                        R13 K25 [UDim.new]
      120 LOADN                            R14 0
      121 LOADN                            R15 12
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K18 ["PaddingLeft"]
      125 GETIMPORT                        R13 K25 [UDim.new]
      127 LOADN                            R14 0
      128 LOADN                            R15 4
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K19 ["PaddingRight"]
      132 GETIMPORT                        R13 K25 [UDim.new]
      134 LOADN                            R14 0
      135 LOADN                            R15 2
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K20 ["PaddingTop"]
      139 GETIMPORT                        R13 K25 [UDim.new]
      141 LOADN                            R14 0
      142 LOADN                            R15 2
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K21 ["PaddingBottom"]
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K13 ["Padding"]
      149 GETUPVAL                         R11 0
      150 GETTABLEKS                       R10 R11 K16 ["createElement"]
      152 LOADK                            R11 K26 ["UIListLayout"]
      153 DUPTABLE                         R12 K31 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      154 GETIMPORT                        R13 K34 [Enum.FillDirection.Horizontal]
      156 SETTABLEKS                       R13 R12 K27 ["FillDirection"]
      158 GETIMPORT                        R13 K36 [Enum.HorizontalAlignment.Left]
      160 SETTABLEKS                       R13 R12 K28 ["HorizontalAlignment"]
      162 GETIMPORT                        R13 K38 [Enum.VerticalAlignment.Center]
      164 SETTABLEKS                       R13 R12 K29 ["VerticalAlignment"]
      166 GETIMPORT                        R13 K40 [Enum.SortOrder.LayoutOrder]
      168 SETTABLEKS                       R13 R12 K30 ["SortOrder"]
      170 CALL                             R10 2 1
      171 SETTABLEKS                       R10 R9 K14 ["Layout"]
      173 GETIMPORT                        R10 K42 [pairs]
      175 MOVE                             R11 R8
      176 CALL                             R10 1 3
      177 FORGPREP_NEXT                    R10
      178 SETTABLE                         R14 R9 R13
      179 FORGLOOP                         R10 2 ; [-2]
      181 GETUPVAL                         R11 0
      182 GETTABLEKS                       R10 R11 K4 ["useCallback"]
      184 NEWCLOSURE                       R11 P3
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R5
      188 NEWTABLE                         R12 0 4
      190 MOVE                             R13 R2
      191 MOVE                             R14 R5
      192 GETTABLEKS                       R15 R0 K43 ["setSelectedNodeId"]
      194 GETTABLEKS                       R16 R0 K44 ["deselectOnReselect"]
      196 SETLIST                          R12 R13 4 [1]
      198 CALL                             R10 2 1
      199 GETUPVAL                         R12 0
      200 GETTABLEKS                       R11 R12 K16 ["createElement"]
      202 LOADK                            R12 K45 ["TextButton"]
      203 NEWTABLE                         R13 8 0
      205 LOADB                            R14 1
      206 SETTABLEKS                       R14 R13 K46 ["Active"]
      208 DUPCLOSURE                       R16 K47 [PROTO_8]
      209 NAMECALL                         R14 R7 K10 ["map"]
      211 CALL                             R14 2 1
      212 SETTABLEKS                       R14 R13 K48 ["Visible"]
      214 GETIMPORT                        R14 K51 [UDim2.fromScale]
      216 LOADN                            R15 1
      217 LOADN                            R16 1
      218 CALL                             R14 2 1
      219 SETTABLEKS                       R14 R13 K52 ["Size"]
      221 LOADN                            R14 1
      222 SETTABLEKS                       R14 R13 K53 ["ZIndex"]
      224 SETTABLEKS                       R3 R13 K54 ["ref"]
      226 LOADK                            R14 K55 [""]
      227 SETTABLEKS                       R14 R13 K56 ["Text"]
      229 GETUPVAL                         R15 0
      230 GETTABLEKS                       R14 R15 K57 ["Tag"]
      232 LOADK                            R15 K58 ["SceneAnalysis-DefaultButtonFrame"]
      233 SETTABLE                         R15 R13 R14
      234 GETUPVAL                         R16 0
      235 GETTABLEKS                       R15 R16 K59 ["Event"]
      237 GETTABLEKS                       R14 R15 K60 ["InputBegan"]
      239 SETTABLE                         R10 R13 R14
      240 DUPTABLE                         R14 K63 [{"Contents", "BottomLine"}]
      241 GETUPVAL                         R16 0
      242 GETTABLEKS                       R15 R16 K16 ["createElement"]
      244 LOADK                            R16 K64 ["Frame"]
      245 DUPTABLE                         R17 K67 [{"BackgroundTransparency", "Size", "Position"}]
      246 LOADN                            R18 1
      247 SETTABLEKS                       R18 R17 K65 ["BackgroundTransparency"]
      249 GETIMPORT                        R18 K51 [UDim2.fromScale]
      251 LOADN                            R19 1
      252 LOADN                            R20 1
      253 CALL                             R18 2 1
      254 SETTABLEKS                       R18 R17 K52 ["Size"]
      256 GETIMPORT                        R18 K51 [UDim2.fromScale]
      258 LOADN                            R19 0
      259 LOADN                            R20 0
      260 CALL                             R18 2 1
      261 SETTABLEKS                       R18 R17 K66 ["Position"]
      263 MOVE                             R18 R9
      264 CALL                             R15 3 1
      265 SETTABLEKS                       R15 R14 K61 ["Contents"]
      267 GETUPVAL                         R16 0
      268 GETTABLEKS                       R15 R16 K16 ["createElement"]
      270 LOADK                            R16 K64 ["Frame"]
      271 NEWTABLE                         R17 8 0
      273 GETIMPORT                        R18 K68 [UDim2.new]
      275 LOADN                            R19 1
      276 LOADN                            R20 252
      277 LOADN                            R21 0
      278 LOADN                            R22 1
      279 CALL                             R18 4 1
      280 SETTABLEKS                       R18 R17 K52 ["Size"]
      282 GETIMPORT                        R18 K68 [UDim2.new]
      284 LOADN                            R19 0
      285 LOADN                            R20 2
      286 LOADN                            R21 1
      287 LOADN                            R22 255
      288 CALL                             R18 4 1
      289 SETTABLEKS                       R18 R17 K66 ["Position"]
      291 LOADN                            R18 0
      292 SETTABLEKS                       R18 R17 K69 ["BorderSizePixel"]
      294 LOADN                            R18 2
      295 SETTABLEKS                       R18 R17 K53 ["ZIndex"]
      297 GETUPVAL                         R19 0
      298 GETTABLEKS                       R18 R19 K57 ["Tag"]
      300 LOADK                            R19 K70 ["SceneAnalysis-StrokeDefault"]
      301 SETTABLE                         R19 R17 R18
      302 CALL                             R15 2 1
      303 SETTABLEKS                       R15 R14 K62 ["BottomLine"]
      305 CALL                             R11 3 -1
      306 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R5 K12 ["useListRange"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Hooks"]
       38 GETTABLEKS                       R5 R6 K13 ["useImperativeTagger"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K11 ["Hooks"]
       47 GETTABLEKS                       R6 R7 K14 ["useInstanceContextMenu"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K15 ["Util"]
       56 GETTABLEKS                       R7 R8 K16 ["Observable"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R10 K17 ["Components"]
       65 GETTABLEKS                       R8 R9 K18 ["StandardTextCell"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R11 K15 ["Util"]
       74 GETTABLEKS                       R9 R10 K19 ["formatSize"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K20 [PROTO_1]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 DUPCLOSURE                       R10 K21 [PROTO_2]
       81 DUPCLOSURE                       R11 K22 [PROTO_9]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 RETURN                           R11 1
