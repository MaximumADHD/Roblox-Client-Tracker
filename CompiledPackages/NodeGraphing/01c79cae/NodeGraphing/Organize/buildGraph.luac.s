PROTO_0:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 ["\0"]
        2 MOVE                             R5 R1
        3 CONCAT                           R2 R3 R5
        4 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 ORK                              R1 R2 K0 [∞]
        5 RETURN                           R1 1
        6 LOADK                            R1 K0 [∞]
        7 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["measured"]
        2 GETTABLEKS                       R3 R1 K0 ["measured"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["measured"]
        8 GETTABLEKS                       R4 R1 K0 ["measured"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["parent"]
       17 GETTABLEKS                       R3 R1 K1 ["parent"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["parent"]
       23 GETTABLEKS                       R4 R1 K1 ["parent"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R2 R0 K2 ["tier"]
       32 GETTABLEKS                       R3 R1 K2 ["tier"]
       34 JUMPIFEQ                         R2 R3 ; [+10]
       36 GETTABLEKS                       R3 R0 K2 ["tier"]
       38 GETTABLEKS                       R4 R1 K2 ["tier"]
       40 JUMPIFLT                         R3 R4 ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 RETURN                           R2 1
       45 GETTABLEKS                       R2 R0 K3 ["a"]
       47 GETTABLEKS                       R3 R1 K3 ["a"]
       49 JUMPIFEQ                         R2 R3 ; [+10]
       51 GETTABLEKS                       R3 R0 K3 ["a"]
       53 GETTABLEKS                       R4 R1 K3 ["a"]
       55 JUMPIFLT                         R3 R4 ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 RETURN                           R2 1
       60 GETTABLEKS                       R3 R0 K4 ["b"]
       62 GETTABLEKS                       R4 R1 K4 ["b"]
       64 JUMPIFLT                         R3 R4 ; [+2]
       66 LOADB                            R2 0 +1
       67 LOADB                            R2 1
       68 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["inputPinIds"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 SETTABLE                         R6 R2 R7
        8 FORGLOOP                         R3 2 ; [-2]
       10 NEWTABLE                         R3 0 0
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 0
       16 GETTABLEKS                       R6 R0 K0 ["inputPinIds"]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 LOADB                            R11 1
       22 SETTABLE                         R11 R5 R10
       23 GETTABLEKS                       R12 R0 K1 ["inputPinToConnectionMap"]
       25 GETTABLE                         R11 R12 R10
       26 DUPTABLE                         R14 K10 [{["wireId"], ["measured"], ["parent"], ["tier"] = 0, ["a"], ["b"] = ""}]
       27 JUMPIFNOT                        R11 ; [+3]
       28 GETTABLEKS                       R15 R11 K2 ["wireId"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R15
       32 SETTABLEKS                       R15 R14 K2 ["wireId"]
       34 JUMPIFNOT                        R1 ; [+3]
       35 GETTABLE                         R16 R1 R10
       36 ORK                              R15 R16 K11 [∞]
       37 JUMP                             ; [+1]
       38 LOADK                            R15 K11 [∞]
       39 SETTABLEKS                       R15 R14 K3 ["measured"]
       41 GETTABLE                         R15 R2 R10
       42 SETTABLEKS                       R15 R14 K4 ["parent"]
       44 SETTABLEKS                       R10 R14 K7 ["a"]
       46 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       48 MOVE                             R13 R3
       49 GETIMPORT                        R12 K14 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R6 2 ; [-32]
       54 GETTABLEKS                       R6 R0 K1 ["inputPinToConnectionMap"]
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 JUMPIFEQKNIL                     R10 ; [+23]
       61 GETTABLE                         R11 R5 R9
       62 JUMPIF                           R11 ; [+20]
       63 DUPTABLE                         R13 K16 [{["wireId"], ["measured"], ["parent"] = -∞, ["tier"] = 0, ["a"], ["b"] = ""}]
       64 GETTABLEKS                       R14 R10 K2 ["wireId"]
       66 SETTABLEKS                       R14 R13 K2 ["wireId"]
       68 JUMPIFNOT                        R1 ; [+3]
       69 GETTABLE                         R15 R1 R9
       70 ORK                              R14 R15 K11 [∞]
       71 JUMP                             ; [+1]
       72 LOADK                            R14 K11 [∞]
       73 SETTABLEKS                       R14 R13 K3 ["measured"]
       75 SETTABLEKS                       R9 R13 K7 ["a"]
       77 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       79 MOVE                             R12 R3
       80 GETIMPORT                        R11 K14 [table.insert]
       82 CALL                             R11 2 0
       83 FORGLOOP                         R6 2 ; [-25]
       85 GETTABLEKS                       R6 R0 K17 ["inputLabelPinToConnectionMap"]
       87 LOADNIL                          R7
       88 LOADNIL                          R8
       89 FORGPREP                         R6
       90 MOVE                             R11 R10
       91 LOADNIL                          R12
       92 LOADNIL                          R13
       93 FORGPREP                         R11
       94 DUPTABLE                         R18 K19 [{["wireId"], ["measured"], ["parent"], ["tier"] = 1, ["a"], ["b"]}]
       95 GETTABLEKS                       R19 R15 K2 ["wireId"]
       97 SETTABLEKS                       R19 R18 K2 ["wireId"]
       99 JUMPIFNOT                        R1 ; [+3]
      100 GETTABLE                         R20 R1 R9
      101 ORK                              R19 R20 K11 [∞]
      102 JUMP                             ; [+1]
      103 LOADK                            R19 K11 [∞]
      104 SETTABLEKS                       R19 R18 K3 ["measured"]
      106 GETTABLE                         R20 R2 R14
      107 ORK                              R19 R20 K11 [∞]
      108 SETTABLEKS                       R19 R18 K4 ["parent"]
      110 SETTABLEKS                       R9 R18 K7 ["a"]
      112 SETTABLEKS                       R14 R18 K8 ["b"]
      114 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
      116 MOVE                             R17 R3
      117 GETIMPORT                        R16 K14 [table.insert]
      119 CALL                             R16 2 0
      120 FORGLOOP                         R11 2 ; [-27]
      122 FORGLOOP                         R6 2 ; [-33]
      124 GETIMPORT                        R6 K21 [table.sort]
      126 MOVE                             R7 R3
      127 DUPCLOSURE                       R8 K22 [PROTO_2]
      128 CALL                             R6 2 0
      129 LENGTH                           R6 R3
      130 NEWTABLE                         R7 0 0
      132 MOVE                             R8 R3
      133 LOADNIL                          R9
      134 LOADNIL                          R10
      135 FORGPREP                         R8
      136 GETTABLEKS                       R13 R12 K2 ["wireId"]
      138 JUMPIFEQKNIL                     R13 ; [+6]
      140 GETTABLEKS                       R13 R12 K2 ["wireId"]
      142 SUBK                             R15 R11 K23 [0.5]
      143 DIV                              R14 R15 R6
      144 SETTABLE                         R14 R7 R13
      145 FORGLOOP                         R8 2 ; [-10]
      147 RETURN                           R7 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["outputNodeId"]
        5 GETTABLEKS                       R3 R0 K1 ["inputNodeId"]
        7 JUMPIFEQ                         R2 R3 ; [+7]
        9 GETUPVAL                         R5 0
       10 GETTABLE                         R4 R5 R2
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETUPVAL                         R5 0
       13 GETTABLE                         R4 R5 R3
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 MOVE                             R5 R2
       17 LOADK                            R6 K2 ["\0"]
       18 MOVE                             R7 R3
       19 CONCAT                           R4 R5 R7
       20 GETUPVAL                         R6 1
       21 GETTABLE                         R5 R6 R4
       22 JUMPIFNOTEQKNIL                  R5 ; [+9]
       24 DUPTABLE                         R6 K8 [{["from"], ["to"], ["offsetSum"] = 0, ["offsetCount"] = 0}]
       25 SETTABLEKS                       R2 R6 K3 ["from"]
       27 SETTABLEKS                       R3 R6 K4 ["to"]
       29 MOVE                             R5 R6
       30 GETUPVAL                         R6 1
       31 SETTABLE                         R5 R6 R4
       32 GETTABLEKS                       R6 R5 K5 ["offsetSum"]
       34 ADD                              R6 R6 R1
       35 SETTABLEKS                       R6 R5 K5 ["offsetSum"]
       37 GETTABLEKS                       R6 R5 K7 ["offsetCount"]
       39 ADDK                             R6 R6 K9 [1]
       40 SETTABLEKS                       R6 R5 K7 ["offsetCount"]
       42 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["from"]
        2 GETTABLEKS                       R3 R1 K0 ["from"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["to"]
        8 GETTABLEKS                       R4 R1 K1 ["to"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["from"]
       17 GETTABLEKS                       R4 R1 K0 ["from"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       10 MOVE                             R10 R2
       11 MOVE                             R11 R7
       12 GETIMPORT                        R9 K2 [table.insert]
       14 CALL                             R9 2 0
       15 LOADB                            R9 1
       16 SETTABLE                         R9 R3 R7
       17 FORGLOOP                         R4 1 ; [-10]
       19 GETIMPORT                        R4 K4 [table.sort]
       21 MOVE                             R5 R2
       22 CALL                             R4 1 0
       23 NEWTABLE                         R4 0 0
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 MOVE                             R6 R2
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 GETTABLE                         R11 R0 R10
       33 GETUPVAL                         R12 0
       34 MOVE                             R13 R11
       35 JUMPIFNOT                        R1 ; [+2]
       36 GETTABLE                         R14 R1 R10
       37 JUMP                             ; [+1]
       38 LOADNIL                          R14
       39 CALL                             R12 2 1
       40 GETTABLEKS                       R13 R11 K5 ["inputPinToConnectionMap"]
       42 LOADNIL                          R14
       43 LOADNIL                          R15
       44 FORGPREP                         R13
       45 MOVE                             R18 R5
       46 MOVE                             R19 R17
       47 JUMPIFNOT                        R17 ; [+6]
       48 GETTABLEKS                       R21 R17 K6 ["wireId"]
       50 GETTABLE                         R20 R12 R21
       51 JUMPIF                           R20 ; [+3]
       52 GETUPVAL                         R20 1
       53 JUMP                             ; [+1]
       54 GETUPVAL                         R20 1
       55 CALL                             R18 2 0
       56 FORGLOOP                         R13 2 ; [-12]
       58 GETTABLEKS                       R13 R11 K7 ["inputLabelPinToConnectionMap"]
       60 LOADNIL                          R14
       61 LOADNIL                          R15
       62 FORGPREP                         R13
       63 MOVE                             R18 R17
       64 LOADNIL                          R19
       65 LOADNIL                          R20
       66 FORGPREP                         R18
       67 MOVE                             R23 R5
       68 MOVE                             R24 R22
       69 GETTABLEKS                       R26 R22 K6 ["wireId"]
       71 GETTABLE                         R25 R12 R26
       72 JUMPIF                           R25 ; [+1]
       73 GETUPVAL                         R25 1
       74 CALL                             R23 2 0
       75 FORGLOOP                         R18 2 ; [-9]
       77 FORGLOOP                         R13 2 ; [-15]
       79 FORGLOOP                         R6 2 ; [-48]
       81 NEWTABLE                         R6 0 0
       83 MOVE                             R7 R4
       84 LOADNIL                          R8
       85 LOADNIL                          R9
       86 FORGPREP                         R7
       87 DUPTABLE                         R14 K11 [{"from", "to", "toPort"}]
       88 GETTABLEKS                       R15 R11 K8 ["from"]
       90 SETTABLEKS                       R15 R14 K8 ["from"]
       92 GETTABLEKS                       R15 R11 K9 ["to"]
       94 SETTABLEKS                       R15 R14 K9 ["to"]
       96 GETTABLEKS                       R16 R11 K12 ["offsetSum"]
       98 GETTABLEKS                       R17 R11 K13 ["offsetCount"]
      100 DIV                              R15 R16 R17
      101 SETTABLEKS                       R15 R14 K10 ["toPort"]
      103 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      105 MOVE                             R13 R6
      106 GETIMPORT                        R12 K2 [table.insert]
      108 CALL                             R12 2 0
      109 FORGLOOP                         R7 2 ; [-23]
      111 GETIMPORT                        R7 K4 [table.sort]
      113 MOVE                             R8 R6
      114 DUPCLOSURE                       R9 K14 [PROTO_5]
      115 CALL                             R7 2 0
      116 NEWTABLE                         R7 0 0
      118 NEWTABLE                         R8 0 0
      120 MOVE                             R9 R2
      121 LOADNIL                          R10
      122 LOADNIL                          R11
      123 FORGPREP                         R9
      124 NEWTABLE                         R14 0 0
      126 SETTABLE                         R14 R7 R13
      127 NEWTABLE                         R14 0 0
      129 SETTABLE                         R14 R8 R13
      130 FORGLOOP                         R9 2 ; [-7]
      132 MOVE                             R9 R6
      133 LOADNIL                          R10
      134 LOADNIL                          R11
      135 FORGPREP                         R9
      136 GETTABLEKS                       R16 R13 K8 ["from"]
      138 GETTABLE                         R15 R7 R16
      139 GETTABLEKS                       R16 R13 K9 ["to"]
      141 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      143 GETIMPORT                        R14 K2 [table.insert]
      145 CALL                             R14 2 0
      146 GETTABLEKS                       R16 R13 K9 ["to"]
      148 GETTABLE                         R15 R8 R16
      149 GETTABLEKS                       R16 R13 K8 ["from"]
      151 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      153 GETIMPORT                        R14 K2 [table.insert]
      155 CALL                             R14 2 0
      156 FORGLOOP                         R9 2 ; [-21]
      158 DUPTABLE                         R9 K19 [{"nodeIds", "edges", "outAdj", "inAdj"}]
      159 SETTABLEKS                       R2 R9 K15 ["nodeIds"]
      161 SETTABLEKS                       R6 R9 K16 ["edges"]
      163 SETTABLEKS                       R7 R9 K17 ["outAdj"]
      165 SETTABLEKS                       R8 R9 K18 ["inAdj"]
      167 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Organize"]
       16 GETTABLEKS                       R3 R3 K8 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Organize"]
       23 GETTABLEKS                       R4 R4 K9 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K10 ["CENTERED_PORT_OFFSET"]
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 DUPCLOSURE                       R6 K12 [PROTO_3]
       30 DUPCLOSURE                       R7 K13 [PROTO_6]
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R4
       33 RETURN                           R7 1
