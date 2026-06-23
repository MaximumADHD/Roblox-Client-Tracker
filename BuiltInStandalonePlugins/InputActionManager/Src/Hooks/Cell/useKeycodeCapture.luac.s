PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["formatCellId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["action"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["binding"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["binding"]
       15 GETTABLEKS                       R2 R2 K2 ["uuid"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["property"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["schema"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["index"]
       28 CALL                             R0 5 -1
       29 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["activeCellId"]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQ                      R0 R1 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["setActiveCellId"]
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+6]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
        8 GETUPVAL                         R1 3
        9 CALL                             R0 1 0
       10 JUMP                             ; [+11]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["activeCellId"]
       14 GETUPVAL                         R1 3
       15 JUMPIFNOTEQ                      R0 R1 ; [+6]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
       20 LOADNIL                          R1
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 DUPCLOSURE                       R1 K2 [PROTO_2]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K3 [Enum.KeyCode.Unknown]
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["schema"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 GETUPVAL                         R5 3
       12 CALL                             R1 4 1
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K5 ["updateBinding"]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 CALL                             R1 3 0
       22 GETUPVAL                         R1 6
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["inputKeycodeSignal"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 NAMECALL                         R0 R0 K1 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_9:
        0 JUMPIFEQKS                       R2 K0 ["Dropdown"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["useContext"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["Context"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["useContext"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["Context"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K1 ["useContext"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K2 ["Context"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R9 0 6
       33 GETTABLEKS                       R10 R0 K4 ["action"]
       35 GETTABLEKS                       R11 R0 K5 ["binding"]
       37 GETTABLEKS                       R12 R0 K6 ["property"]
       39 GETTABLEKS                       R13 R0 K7 ["schema"]
       41 GETTABLEKS                       R14 R0 K8 ["index"]
       43 MOVE                             R15 R5
       44 SETLIST                          R9 R10 6 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K9 ["useState"]
       50 LOADB                            R9 0
       51 CALL                             R8 1 2
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       55 NEWCLOSURE                       R11 P1
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 NEWTABLE                         R12 0 2
       61 MOVE                             R13 R7
       62 MOVE                             R14 R5
       63 SETLIST                          R12 R13 2 [1]
       65 CALL                             R10 2 1
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 NEWTABLE                         R13 0 4
       77 MOVE                             R14 R7
       78 MOVE                             R15 R3
       79 MOVE                             R16 R5
       80 MOVE                             R17 R8
       81 SETLIST                          R13 R14 4 [1]
       83 CALL                             R11 2 1
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       87 NEWCLOSURE                       R13 P3
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R10
       90 NEWTABLE                         R14 0 2
       92 MOVE                             R15 R3
       93 MOVE                             R16 R10
       94 SETLIST                          R14 R15 2 [1]
       96 CALL                             R12 2 0
       97 GETUPVAL                         R12 4
       98 GETTABLEKS                       R12 R12 K12 ["useEventConnection"]
      100 GETTABLEKS                       R13 R5 K13 ["activeCellIdChangedSignal"]
      102 NEWCLOSURE                       R14 P4
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 NEWTABLE                         R15 0 2
      107 MOVE                             R16 R7
      108 GETTABLEKS                       R17 R5 K13 ["activeCellIdChangedSignal"]
      110 SETLIST                          R15 R16 2 [1]
      112 CALL                             R12 3 0
      113 GETUPVAL                         R12 0
      114 GETTABLEKS                       R12 R12 K11 ["useEffect"]
      116 NEWCLOSURE                       R13 P5
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R5
      120 CAPTURE                          UPVAL U5
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R6
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R10
      127 NEWTABLE                         R14 0 12
      129 MOVE                             R15 R10
      130 MOVE                             R16 R3
      131 MOVE                             R17 R1
      132 MOVE                             R18 R4
      133 MOVE                             R19 R8
      134 GETTABLEKS                       R20 R5 K14 ["inputKeycodeSignal"]
      136 GETTABLEKS                       R21 R0 K4 ["action"]
      138 GETTABLEKS                       R22 R0 K5 ["binding"]
      140 GETTABLEKS                       R23 R0 K15 ["onCreated"]
      142 GETTABLEKS                       R24 R0 K6 ["property"]
      144 GETTABLEKS                       R25 R0 K7 ["schema"]
      146 MOVE                             R26 R6
      147 SETLIST                          R14 R15 12 [1]
      149 CALL                             R12 2 0
      150 DUPTABLE                         R12 K19 [{"isListening", "onControlActivated", "stopListening"}]
      151 SETTABLEKS                       R8 R12 K16 ["isListening"]
      153 SETTABLEKS                       R11 R12 K17 ["onControlActivated"]
      155 SETTABLEKS                       R10 R12 K18 ["stopListening"]
      157 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["InputConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["PluginConfiguration"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K13 ["SchemaConfiguration"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Util"]
       61 GETTABLEKS                       R8 R8 K16 ["Cell"]
       63 GETTABLEKS                       R8 R8 K17 ["applyBindingKeycode"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K15 ["Util"]
       72 GETTABLEKS                       R9 R9 K16 ["Cell"]
       74 GETTABLEKS                       R9 R9 K18 ["isKeycodeValidForSchema"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K19 [PROTO_9]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 RETURN                           R9 1
