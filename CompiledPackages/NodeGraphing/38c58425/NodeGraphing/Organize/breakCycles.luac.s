PROTO_0:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 ["\0"]
        2 MOVE                             R5 R1
        3 CONCAT                           R2 R3 R5
        4 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["nodeIds"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADN                            R7 0
        8 SETTABLE                         R7 R1 R6
        9 FORGLOOP                         R2 2 ; [-3]
       11 NEWTABLE                         R2 0 0
       13 GETTABLEKS                       R3 R0 K0 ["nodeIds"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETTABLE                         R8 R1 R7
       19 JUMPIFNOTEQKN                    R8 K1 [0] ; [+70]
       21 NEWTABLE                         R8 0 1
       23 DUPTABLE                         R9 K5 [{["node"], ["index"] = 1}]
       24 SETTABLEKS                       R7 R9 K2 ["node"]
       26 SETLIST                          R8 R9 1 [1]
       28 LOADN                            R9 1
       29 SETTABLE                         R9 R1 R7
       30 LENGTH                           R9 R8
       31 LOADN                            R10 0
       32 JUMPIFNOTLT                      R10 R9 ; [+57]
       34 LENGTH                           R10 R8
       35 GETTABLE                         R9 R8 R10
       36 GETTABLEKS                       R11 R0 K6 ["outAdj"]
       38 GETTABLEKS                       R12 R9 K2 ["node"]
       40 GETTABLE                         R10 R11 R12
       41 GETTABLEKS                       R11 R9 K3 ["index"]
       43 LENGTH                           R12 R10
       44 JUMPIFNOTLT                      R12 R11 ; [+10]
       46 GETTABLEKS                       R11 R9 K2 ["node"]
       48 LOADN                            R12 2
       49 SETTABLE                         R12 R1 R11
       50 GETIMPORT                        R11 K9 [table.remove]
       52 MOVE                             R12 R8
       53 CALL                             R11 1 0
       54 JUMP                             ; [+34]
       55 GETTABLEKS                       R12 R9 K3 ["index"]
       57 GETTABLE                         R11 R10 R12
       58 GETTABLEKS                       R12 R9 K3 ["index"]
       60 ADDK                             R12 R12 K4 [1]
       61 SETTABLEKS                       R12 R9 K3 ["index"]
       63 GETTABLE                         R12 R1 R11
       64 JUMPIFNOTEQKN                    R12 K1 [0] ; [+13]
       66 LOADN                            R12 1
       67 SETTABLE                         R12 R1 R11
       68 DUPTABLE                         R14 K5 [{["node"], ["index"] = 1}]
       69 SETTABLEKS                       R11 R14 K2 ["node"]
       71 FASTCALL2                        TABLE_INSERT R8 R14 ; [+4]
       73 MOVE                             R13 R8
       74 GETIMPORT                        R12 K11 [table.insert]
       76 CALL                             R12 2 0
       77 JUMP                             ; [+11]
       78 GETTABLE                         R12 R1 R11
       79 JUMPIFNOTEQKN                    R12 K4 [1] ; [+9]
       81 GETTABLEKS                       R13 R9 K2 ["node"]
       83 MOVE                             R14 R13
       84 LOADK                            R15 K12 ["\0"]
       85 MOVE                             R16 R11
       86 CONCAT                           R12 R14 R16
       87 LOADB                            R13 1
       88 SETTABLE                         R13 R2 R12
       89 JUMPBACK                         ; [-60]
       90 FORGLOOP                         R3 2 ; [-73]
       92 GETIMPORT                        R3 K14 [next]
       94 MOVE                             R4 R2
       95 CALL                             R3 1 1
       96 JUMPIFNOTEQKNIL                  R3 ; [+7]
       98 DUPTABLE                         R3 K17 [{"graph", "reversedKeys"}]
       99 SETTABLEKS                       R0 R3 K15 ["graph"]
      101 SETTABLEKS                       R2 R3 K16 ["reversedKeys"]
      103 RETURN                           R3 1
      104 NEWTABLE                         R3 0 0
      106 NEWTABLE                         R4 0 0
      108 GETTABLEKS                       R5 R0 K18 ["edges"]
      110 LOADNIL                          R6
      111 LOADNIL                          R7
      112 FORGPREP                         R5
      113 GETTABLEKS                       R10 R9 K19 ["from"]
      115 GETTABLEKS                       R11 R9 K20 ["to"]
      117 GETTABLEKS                       R12 R9 K21 ["toPort"]
      119 MOVE                             R17 R10
      120 LOADK                            R18 K12 ["\0"]
      121 MOVE                             R19 R11
      122 CONCAT                           R14 R17 R19
      123 GETTABLE                         R13 R2 R14
      124 JUMPIFNOT                        R13 ; [+4]
      125 MOVE                             R13 R11
      126 MOVE                             R11 R10
      127 MOVE                             R10 R13
      128 GETUPVAL                         R12 0
      129 JUMPIFEQ                         R10 R11 ; [+22]
      131 MOVE                             R16 R10
      132 LOADK                            R17 K12 ["\0"]
      133 MOVE                             R18 R11
      134 CONCAT                           R13 R16 R18
      135 GETTABLE                         R14 R4 R13
      136 JUMPIF                           R14 ; [+15]
      137 LOADB                            R14 1
      138 SETTABLE                         R14 R4 R13
      139 DUPTABLE                         R16 K22 [{"from", "to", "toPort"}]
      140 SETTABLEKS                       R10 R16 K19 ["from"]
      142 SETTABLEKS                       R11 R16 K20 ["to"]
      144 SETTABLEKS                       R12 R16 K21 ["toPort"]
      146 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
      148 MOVE                             R15 R3
      149 GETIMPORT                        R14 K11 [table.insert]
      151 CALL                             R14 2 0
      152 FORGLOOP                         R5 2 ; [-40]
      154 GETIMPORT                        R5 K24 [table.sort]
      156 MOVE                             R6 R3
      157 DUPCLOSURE                       R7 K25 [PROTO_1]
      158 CALL                             R5 2 0
      159 NEWTABLE                         R5 0 0
      161 NEWTABLE                         R6 0 0
      163 GETTABLEKS                       R7 R0 K0 ["nodeIds"]
      165 LOADNIL                          R8
      166 LOADNIL                          R9
      167 FORGPREP                         R7
      168 NEWTABLE                         R12 0 0
      170 SETTABLE                         R12 R5 R11
      171 NEWTABLE                         R12 0 0
      173 SETTABLE                         R12 R6 R11
      174 FORGLOOP                         R7 2 ; [-7]
      176 MOVE                             R7 R3
      177 LOADNIL                          R8
      178 LOADNIL                          R9
      179 FORGPREP                         R7
      180 GETTABLEKS                       R14 R11 K19 ["from"]
      182 GETTABLE                         R13 R5 R14
      183 GETTABLEKS                       R14 R11 K20 ["to"]
      185 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
      187 GETIMPORT                        R12 K11 [table.insert]
      189 CALL                             R12 2 0
      190 GETTABLEKS                       R14 R11 K20 ["to"]
      192 GETTABLE                         R13 R6 R14
      193 GETTABLEKS                       R14 R11 K19 ["from"]
      195 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
      197 GETIMPORT                        R12 K11 [table.insert]
      199 CALL                             R12 2 0
      200 FORGLOOP                         R7 2 ; [-21]
      202 DUPTABLE                         R7 K27 [{"nodeIds", "edges", "outAdj", "inAdj"}]
      203 GETTABLEKS                       R8 R0 K0 ["nodeIds"]
      205 SETTABLEKS                       R8 R7 K0 ["nodeIds"]
      207 SETTABLEKS                       R3 R7 K18 ["edges"]
      209 SETTABLEKS                       R5 R7 K6 ["outAdj"]
      211 SETTABLEKS                       R6 R7 K26 ["inAdj"]
      213 DUPTABLE                         R8 K17 [{"graph", "reversedKeys"}]
      214 SETTABLEKS                       R7 R8 K15 ["graph"]
      216 SETTABLEKS                       R2 R8 K16 ["reversedKeys"]
      218 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Organize"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Organize"]
       18 GETTABLEKS                       R3 R3 K8 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["CENTERED_PORT_OFFSET"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 DUPCLOSURE                       R5 K11 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 RETURN                           R5 1
