PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 2
        4 SETTABLE                         R3 R0 R2
        5 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R1 K0 ["\"%s\""]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+22]
        9 GETTABLEKS                       R3 R2 K3 ["params"]
       11 JUMPIFNOT                        R3 ; [+18]
       12 JUMPIFNOT                        R1 ; [+11]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["assign"]
       16 GETIMPORT                        R4 K6 [table.clone]
       18 GETTABLEKS                       R5 R2 K3 ["params"]
       20 CALL                             R4 1 1
       21 MOVE                             R5 R1
       22 CALL                             R3 2 1
       23 RETURN                           R3 1
       24 GETIMPORT                        R3 K6 [table.clone]
       26 GETTABLEKS                       R4 R2 K3 ["params"]
       28 CALL                             R3 1 1
       29 RETURN                           R3 1
       30 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMP                             ; [+1]
        5 LOADNIL                          R1
        6 GETUPVAL                         R4 2
        7 GETTABLE                         R3 R4 R0
        8 FASTCALL1                        TYPE R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K1 [type]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+24]
       15 GETTABLEKS                       R4 R3 K3 ["params"]
       17 JUMPIFNOT                        R4 ; [+20]
       18 JUMPIFNOT                        R1 ; [+12]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K4 ["assign"]
       22 GETIMPORT                        R5 K6 [table.clone]
       24 GETTABLEKS                       R6 R3 K3 ["params"]
       26 CALL                             R5 1 1
       27 MOVE                             R6 R1
       28 CALL                             R4 2 1
       29 MOVE                             R2 R4
       30 JUMP                             ; [+8]
       31 GETIMPORT                        R4 K6 [table.clone]
       33 GETTABLEKS                       R5 R3 K3 ["params"]
       35 CALL                             R4 1 1
       36 MOVE                             R2 R4
       37 JUMP                             ; [+1]
       38 MOVE                             R2 R1
       39 GETUPVAL                         R4 4
       40 GETTABLE                         R3 R4 R0
       41 JUMPIFNOT                        R3 ; [+23]
       42 GETUPVAL                         R4 5
       43 GETTABLEKS                       R4 R4 K7 ["init"]
       45 CALL                             R4 0 1
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K4 ["assign"]
       49 GETIMPORT                        R6 K6 [table.clone]
       51 GETTABLEKS                       R7 R3 K8 ["getStateForAction"]
       53 MOVE                             R8 R4
       54 CALL                             R7 1 -1
       55 CALL                             R6 -1 1
       56 DUPTABLE                         R7 K11 [{"key", "routeName", "params"}]
       57 SETTABLEKS                       R0 R7 K9 ["key"]
       59 SETTABLEKS                       R0 R7 K10 ["routeName"]
       61 SETTABLEKS                       R2 R7 K3 ["params"]
       63 CALL                             R5 2 -1
       64 RETURN                           R5 -1
       65 DUPTABLE                         R4 K11 [{"key", "routeName", "params"}]
       66 SETTABLEKS                       R0 R4 K9 ["key"]
       68 SETTABLEKS                       R0 R4 K10 ["routeName"]
       70 SETTABLEKS                       R2 R4 K3 ["params"]
       72 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_7:
        0 MOVE                             R3 R2
        1 JUMPIFNOT                        R1 ; [+39]
        2 JUMPIFNOT                        R2 ; [+38]
        3 GETTABLEKS                       R4 R1 K0 ["index"]
        5 GETTABLEKS                       R5 R2 K0 ["index"]
        7 JUMPIFEQ                         R4 R5 ; [+33]
        9 GETUPVAL                         R4 0
       10 JUMPIFNOT                        R4 ; [+30]
       11 GETTABLEKS                       R5 R1 K1 ["routes"]
       13 GETTABLEKS                       R6 R1 K0 ["index"]
       15 GETTABLE                         R4 R5 R6
       16 GETTABLEKS                       R4 R4 K2 ["routeName"]
       18 GETIMPORT                        R5 K5 [table.clone]
       20 GETTABLEKS                       R6 R2 K1 ["routes"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R1 K0 ["index"]
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R4
       27 CALL                             R7 1 1
       28 SETTABLE                         R7 R5 R6
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K6 ["assign"]
       32 GETIMPORT                        R7 K5 [table.clone]
       34 MOVE                             R8 R2
       35 CALL                             R7 1 1
       36 DUPTABLE                         R8 K7 [{"routes"}]
       37 SETTABLEKS                       R5 R8 K1 ["routes"]
       39 CALL                             R6 2 1
       40 MOVE                             R3 R6
       41 GETUPVAL                         R4 3
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K8 ["History"]
       45 JUMPIFNOTEQ                      R4 R5 ; [+9]
       47 JUMPIFNOT                        R1 ; [+8]
       48 JUMPIFNOT                        R3 ; [+7]
       49 GETTABLEKS                       R4 R3 K0 ["index"]
       51 GETTABLEKS                       R5 R1 K0 ["index"]
       53 JUMPIFNOTEQ                      R4 R5 ; [+2]
       55 RETURN                           R3 1
       56 JUMPIFNOT                        R1 ; [+3]
       57 GETTABLEKS                       R4 R1 K9 ["routeKeyHistory"]
       59 JUMP                             ; [+2]
       60 NEWTABLE                         R4 0 0
       62 GETTABLEKS                       R5 R0 K10 ["type"]
       64 GETUPVAL                         R6 5
       65 GETTABLEKS                       R6 R6 K11 ["Navigate"]
       67 JUMPIFNOTEQ                      R5 R6 ; [+24]
       69 GETTABLEKS                       R6 R3 K1 ["routes"]
       71 GETTABLEKS                       R7 R3 K0 ["index"]
       73 GETTABLE                         R5 R6 R7
       74 GETTABLEKS                       R5 R5 K12 ["key"]
       76 GETUPVAL                         R6 6
       77 GETTABLEKS                       R6 R6 K13 ["filter"]
       79 MOVE                             R7 R4
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R5
       82 CALL                             R6 2 1
       83 MOVE                             R4 R6
       84 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
       86 MOVE                             R7 R4
       87 MOVE                             R8 R5
       88 GETIMPORT                        R6 K15 [table.insert]
       90 CALL                             R6 2 0
       91 JUMP                             ; [+17]
       92 GETTABLEKS                       R5 R0 K10 ["type"]
       94 GETUPVAL                         R6 5
       95 GETTABLEKS                       R6 R6 K16 ["Back"]
       97 JUMPIFNOTEQ                      R5 R6 ; [+11]
       99 GETIMPORT                        R5 K5 [table.clone]
      101 MOVE                             R6 R4
      102 CALL                             R5 1 1
      103 MOVE                             R4 R5
      104 GETIMPORT                        R5 K18 [table.remove]
      106 MOVE                             R6 R4
      107 LENGTH                           R7 R4
      108 CALL                             R5 2 0
      109 GETUPVAL                         R5 2
      110 GETTABLEKS                       R5 R5 K6 ["assign"]
      112 GETIMPORT                        R6 K5 [table.clone]
      114 MOVE                             R7 R3
      115 CALL                             R6 1 1
      116 DUPTABLE                         R7 K19 [{"routeKeyHistory"}]
      117 SETTABLEKS                       R4 R7 K9 ["routeKeyHistory"]
      119 CALL                             R5 2 -1
      120 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 DUPTABLE                         R1 K3 [{"routes", "index"}]
        7 SETTABLEKS                       R0 R1 K1 ["routes"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K2 ["index"]
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R3 5
       14 GETTABLEKS                       R3 R3 K4 ["History"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+12]
       18 GETUPVAL                         R3 3
       19 GETTABLE                         R2 R0 R3
       20 GETTABLEKS                       R2 R2 K5 ["key"]
       22 NEWTABLE                         R3 0 1
       24 MOVE                             R4 R2
       25 SETLIST                          R3 R4 1 [1]
       27 SETTABLEKS                       R3 R1 K6 ["routeKeyHistory"]
       29 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["routeName"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+3]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+2]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["assign"]
       12 GETIMPORT                        R3 K4 [table.clone]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 DUPTABLE                         R4 K6 [{"params"}]
       17 GETTABLEKS                       R6 R0 K5 ["params"]
       19 JUMPIFNOT                        R6 ; [+12]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K1 ["assign"]
       23 GETIMPORT                        R6 K4 [table.clone]
       25 GETTABLEKS                       R7 R0 K5 ["params"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 3
       29 MOVE                             R8 R1
       30 CALL                             R5 3 1
       31 JUMP                             ; [+9]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K1 ["assign"]
       35 GETIMPORT                        R6 K4 [table.clone]
       37 GETUPVAL                         R7 3
       38 CALL                             R6 1 1
       39 MOVE                             R7 R1
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K5 ["params"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["routeName"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["routeName"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["routeName"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R1 R2 ; [+23]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["assign"]
        6 GETIMPORT                        R3 K3 [table.clone]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 DUPTABLE                         R4 K5 [{"params"}]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K0 ["assign"]
       14 GETIMPORT                        R6 K3 [table.clone]
       16 GETTABLEKS                       R7 R0 K4 ["params"]
       18 CALL                             R6 1 1
       19 GETUPVAL                         R7 2
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K4 ["params"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
       25 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["routeName"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+4]
        5 SETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 JUMPIFNOTEQ                      R1 R3 ; [+3]
        5 LOADB                            R3 0
        6 RETURN                           R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLE                         R3 R4 R1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETTABLEKS                       R4 R2 K0 ["getStateForAction"]
       12 GETUPVAL                         R5 3
       13 MOVE                             R6 R3
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 JUMPIF                           R3 ; [+3]
       17 SETUPVAL                         R1 1
       18 LOADB                            R4 1
       19 RETURN                           R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R4 R5 R1
       22 JUMPIFEQ                         R3 R4 ; [+11]
       24 GETIMPORT                        R4 K3 [table.clone]
       26 GETUPVAL                         R5 2
       27 CALL                             R4 1 1
       28 SETUPVAL                         R4 2
       29 GETUPVAL                         R4 2
       30 SETTABLE                         R3 R4 R1
       31 SETUPVAL                         R1 1
       32 LOADB                            R4 1
       33 RETURN                           R4 1
       34 LOADB                            R4 0
       35 RETURN                           R4 1

PROTO_17:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+2]
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R4 R3 K3 ["index"]
       13 GETTABLEKS                       R5 R0 K4 ["type"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["Init"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+17]
       20 GETTABLEKS                       R5 R0 K6 ["params"]
       22 JUMPIFNOT                        R5 ; [+13]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K7 ["map"]
       26 GETTABLEKS                       R7 R3 K8 ["routes"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R5
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R3 K8 ["routes"]
       36 GETTABLEKS                       R5 R0 K4 ["type"]
       38 GETUPVAL                         R6 6
       39 GETTABLEKS                       R6 R6 K9 ["JumpTo"]
       41 JUMPIFNOTEQ                      R5 R6 ; [+82]
       43 GETTABLEKS                       R5 R0 K10 ["key"]
       45 JUMPIFEQKNIL                     R5 ; [+7]
       47 GETTABLEKS                       R5 R0 K10 ["key"]
       49 GETTABLEKS                       R6 R3 K10 ["key"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+72]
       53 GETTABLEKS                       R5 R0 K6 ["params"]
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K11 ["findIndex"]
       58 GETTABLEKS                       R7 R3 K8 ["routes"]
       60 NEWCLOSURE                       R8 P1
       61 CAPTURE                          VAL R0
       62 CALL                             R6 2 1
       63 LOADN                            R7 1
       64 JUMPIFNOTLT                      R6 R7 ; [+26]
       66 GETIMPORT                        R7 K13 [error]
       68 LOADK                            R12 K14 ["There is no route named '%s' in the navigator with the key '%s'.\n"]
       69 GETTABLEKS                       R14 R0 K15 ["routeName"]
       71 GETTABLEKS                       R15 R0 K10 ["key"]
       73 NAMECALL                         R12 R12 K16 ["format"]
       75 CALL                             R12 3 1
       76 MOVE                             R9 R12
       77 LOADK                            R10 K17 ["Must be one of: "]
       78 GETIMPORT                        R11 K19 [table.concat]
       80 GETUPVAL                         R12 2
       81 GETTABLEKS                       R12 R12 K7 ["map"]
       83 GETTABLEKS                       R13 R3 K8 ["routes"]
       85 DUPCLOSURE                       R14 K20 [PROTO_12]
       86 CALL                             R12 2 1
       87 LOADK                            R13 K21 [","]
       88 CALL                             R11 2 1
       89 CONCAT                           R8 R9 R11
       90 CALL                             R7 1 0
       91 GETTABLEKS                       R7 R3 K8 ["routes"]
       93 JUMPIFNOT                        R5 ; [+11]
       94 GETTABLEKS                       R8 R3 K8 ["routes"]
       96 GETTABLEKS                       R8 R8 K7 ["map"]
       98 NEWCLOSURE                       R9 P3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          VAL R5
      102 CALL                             R8 1 -1
      103 CLOSEUPVALS                      R4
      104 RETURN                           R8 -1
      105 GETUPVAL                         R8 7
      106 MOVE                             R9 R0
      107 MOVE                             R10 R2
      108 GETUPVAL                         R11 5
      109 GETTABLEKS                       R11 R11 K22 ["assign"]
      111 GETIMPORT                        R12 K2 [table.clone]
      113 MOVE                             R13 R3
      114 CALL                             R12 1 1
      115 DUPTABLE                         R13 K23 [{"routes", "index"}]
      116 SETTABLEKS                       R7 R13 K8 ["routes"]
      118 SETTABLEKS                       R6 R13 K3 ["index"]
      120 CALL                             R11 2 -1
      121 CALL                             R8 -1 -1
      122 CLOSEUPVALS                      R4
      123 RETURN                           R8 -1
      124 GETTABLEKS                       R6 R3 K8 ["routes"]
      126 GETTABLEKS                       R7 R3 K3 ["index"]
      128 GETTABLE                         R5 R6 R7
      129 GETUPVAL                         R7 8
      130 GETUPVAL                         R9 9
      131 GETTABLEKS                       R10 R3 K3 ["index"]
      133 GETTABLE                         R8 R9 R10
      134 GETTABLE                         R6 R7 R8
      135 JUMPIFNOT                        R6 ; [+38]
      136 GETTABLEKS                       R7 R6 K24 ["getStateForAction"]
      138 MOVE                             R8 R0
      139 MOVE                             R9 R5
      140 CALL                             R7 2 1
      141 JUMPIF                           R7 ; [+4]
      142 JUMPIFNOT                        R1 ; [+3]
      143 LOADNIL                          R8
      144 CLOSEUPVALS                      R4
      145 RETURN                           R8 1
      146 JUMPIFNOT                        R7 ; [+27]
      147 JUMPIFEQ                         R7 R5 ; [+26]
      149 GETIMPORT                        R8 K2 [table.clone]
      151 GETTABLEKS                       R9 R3 K8 ["routes"]
      153 CALL                             R8 1 1
      154 GETTABLEKS                       R9 R3 K3 ["index"]
      156 SETTABLE                         R7 R8 R9
      157 GETUPVAL                         R9 7
      158 MOVE                             R10 R0
      159 MOVE                             R11 R2
      160 GETUPVAL                         R12 5
      161 GETTABLEKS                       R12 R12 K22 ["assign"]
      163 GETIMPORT                        R13 K2 [table.clone]
      165 MOVE                             R14 R3
      166 CALL                             R13 1 1
      167 DUPTABLE                         R14 K25 [{"routes"}]
      168 SETTABLEKS                       R8 R14 K8 ["routes"]
      170 CALL                             R12 2 -1
      171 CALL                             R9 -1 -1
      172 CLOSEUPVALS                      R4
      173 RETURN                           R9 -1
      174 LOADB                            R7 1
      175 GETTABLEKS                       R8 R0 K10 ["key"]
      177 JUMPIFEQKNIL                     R8 ; [+9]
      179 GETTABLEKS                       R8 R0 K10 ["key"]
      181 GETTABLEKS                       R9 R5 K10 ["key"]
      183 JUMPIFEQ                         R8 R9 ; [+2]
      185 LOADB                            R7 0 +1
      186 LOADB                            R7 1
      187 GETTABLEKS                       R8 R0 K4 ["type"]
      189 GETUPVAL                         R9 1
      190 GETTABLEKS                       R9 R9 K26 ["Back"]
      192 JUMPIFNOTEQ                      R8 R9 ; [+53]
      194 JUMPIFNOT                        R7 ; [+8]
      195 GETUPVAL                         R8 10
      196 GETUPVAL                         R9 11
      197 GETTABLEKS                       R9 R9 K27 ["InitialRoute"]
      199 JUMPIFNOTEQ                      R8 R9 ; [+3]
      201 GETUPVAL                         R4 12
      202 JUMP                             ; [+43]
      203 JUMPIFNOT                        R7 ; [+15]
      204 GETUPVAL                         R8 10
      205 GETUPVAL                         R9 11
      206 GETTABLEKS                       R9 R9 K28 ["Order"]
      208 JUMPIFNOTEQ                      R8 R9 ; [+10]
      210 LOADN                            R9 1
      211 SUBK                             R10 R4 K29 [1]
      212 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      214 GETIMPORT                        R8 K32 [math.max]
      216 CALL                             R8 2 1
      217 MOVE                             R4 R8
      218 JUMP                             ; [+27]
      219 JUMPIFNOT                        R7 ; [+26]
      220 GETUPVAL                         R8 10
      221 GETUPVAL                         R9 11
      222 GETTABLEKS                       R9 R9 K33 ["History"]
      224 JUMPIFNOTEQ                      R8 R9 ; [+21]
      226 GETTABLEKS                       R9 R3 K34 ["routeKeyHistory"]
      228 LENGTH                           R8 R9
      229 LOADN                            R9 1
      230 JUMPIFNOTLT                      R9 R8 ; [+15]
      232 GETTABLEKS                       R9 R3 K34 ["routeKeyHistory"]
      234 GETTABLEKS                       R12 R3 K34 ["routeKeyHistory"]
      236 LENGTH                           R11 R12
      237 SUBK                             R10 R11 K29 [1]
      238 GETTABLE                         R8 R9 R10
      239 GETUPVAL                         R9 2
      240 GETTABLEKS                       R9 R9 K35 ["indexOf"]
      242 GETUPVAL                         R10 9
      243 MOVE                             R11 R8
      244 CALL                             R9 2 1
      245 MOVE                             R4 R9
      246 LOADB                            R8 0
      247 GETTABLEKS                       R9 R0 K4 ["type"]
      249 GETUPVAL                         R10 1
      250 GETTABLEKS                       R10 R10 K36 ["Navigate"]
      252 JUMPIFNOTEQ                      R9 R10 ; [+118]
      254 GETUPVAL                         R9 2
      255 GETTABLEKS                       R9 R9 K37 ["find"]
      257 GETUPVAL                         R10 9
      258 NEWCLOSURE                       R11 P4
      259 CAPTURE                          VAL R0
      260 CAPTURE                          REF R4
      261 CALL                             R9 2 1
      262 JUMPIFNOTEQKNIL                  R9 ; [+2]
      264 LOADB                            R8 0 +1
      265 LOADB                            R8 1
      266 JUMPIFNOT                        R8 ; [+104]
      267 GETTABLEKS                       R10 R3 K8 ["routes"]
      269 GETTABLE                         R9 R10 R4
      270 GETUPVAL                         R11 8
      271 GETTABLEKS                       R12 R0 K15 ["routeName"]
      273 GETTABLE                         R10 R11 R12
      274 MOVE                             R11 R9
      275 GETTABLEKS                       R12 R0 K38 ["action"]
      277 JUMPIFNOT                        R12 ; [+9]
      278 JUMPIFNOT                        R10 ; [+8]
      279 GETTABLEKS                       R12 R10 K24 ["getStateForAction"]
      281 GETTABLEKS                       R13 R0 K38 ["action"]
      283 MOVE                             R14 R9
      284 CALL                             R12 2 1
      285 JUMPIFNOT                        R12 ; [+1]
      286 MOVE                             R11 R12
      287 GETTABLEKS                       R12 R0 K6 ["params"]
      289 JUMPIFNOT                        R12 ; [+43]
      290 GETUPVAL                         R12 5
      291 GETTABLEKS                       R12 R12 K22 ["assign"]
      293 GETIMPORT                        R13 K2 [table.clone]
      295 MOVE                             R14 R11
      296 CALL                             R13 1 1
      297 DUPTABLE                         R14 K39 [{"params"}]
      298 GETTABLEKS                       R16 R0 K6 ["params"]
      300 GETUPVAL                         R17 5
      301 GETTABLEKS                       R17 R17 K40 ["None"]
      303 JUMPIFNOTEQ                      R16 R17 ; [+5]
      305 GETUPVAL                         R15 5
      306 GETTABLEKS                       R15 R15 K40 ["None"]
      308 JUMP                             ; [+20]
      309 GETTABLEKS                       R16 R11 K6 ["params"]
      311 JUMPIFNOT                        R16 ; [+12]
      312 GETUPVAL                         R15 5
      313 GETTABLEKS                       R15 R15 K22 ["assign"]
      315 GETIMPORT                        R16 K2 [table.clone]
      317 GETTABLEKS                       R17 R11 K6 ["params"]
      319 CALL                             R16 1 1
      320 GETTABLEKS                       R17 R0 K6 ["params"]
      322 CALL                             R15 2 1
      323 JUMP                             ; [+5]
      324 GETIMPORT                        R15 K2 [table.clone]
      326 GETTABLEKS                       R16 R0 K6 ["params"]
      328 CALL                             R15 1 1
      329 SETTABLEKS                       R15 R14 K6 ["params"]
      331 CALL                             R12 2 1
      332 MOVE                             R11 R12
      333 JUMPIFEQ                         R11 R9 ; [+27]
      335 GETIMPORT                        R12 K2 [table.clone]
      337 GETTABLEKS                       R13 R3 K8 ["routes"]
      339 CALL                             R12 1 1
      340 SETTABLE                         R11 R12 R4
      341 GETUPVAL                         R13 5
      342 GETTABLEKS                       R13 R13 K22 ["assign"]
      344 GETIMPORT                        R14 K2 [table.clone]
      346 MOVE                             R15 R3
      347 CALL                             R14 1 1
      348 DUPTABLE                         R15 K23 [{"routes", "index"}]
      349 SETTABLEKS                       R12 R15 K8 ["routes"]
      351 SETTABLEKS                       R4 R15 K3 ["index"]
      353 CALL                             R13 2 1
      354 GETUPVAL                         R14 7
      355 MOVE                             R15 R0
      356 MOVE                             R16 R2
      357 MOVE                             R17 R13
      358 CALL                             R14 3 -1
      359 CLOSEUPVALS                      R4
      360 RETURN                           R14 -1
      361 JUMPIFNOTEQ                      R11 R9 ; [+9]
      363 GETTABLEKS                       R12 R3 K3 ["index"]
      365 JUMPIFNOTEQ                      R12 R4 ; [+5]
      367 JUMPIFNOT                        R2 ; [+3]
      368 LOADNIL                          R12
      369 CLOSEUPVALS                      R4
      370 RETURN                           R12 1
      371 GETTABLEKS                       R9 R0 K4 ["type"]
      373 GETUPVAL                         R10 1
      374 GETTABLEKS                       R10 R10 K41 ["SetParams"]
      376 JUMPIFNOTEQ                      R9 R10 ; [+102]
      378 GETTABLEKS                       R9 R0 K10 ["key"]
      380 GETUPVAL                         R10 2
      381 GETTABLEKS                       R10 R10 K11 ["findIndex"]
      383 GETTABLEKS                       R11 R3 K8 ["routes"]
      385 NEWCLOSURE                       R12 P5
      386 CAPTURE                          VAL R9
      387 CALL                             R10 2 1
      388 LOADN                            R11 0
      389 JUMPIFNOTLT                      R11 R10 ; [+89]
      391 GETTABLEKS                       R12 R3 K8 ["routes"]
      393 GETTABLE                         R11 R12 R10
      394 GETUPVAL                         R12 5
      395 GETTABLEKS                       R12 R12 K40 ["None"]
      397 GETTABLEKS                       R13 R0 K6 ["params"]
      399 GETUPVAL                         R14 5
      400 GETTABLEKS                       R14 R14 K40 ["None"]
      402 JUMPIFEQ                         R13 R14 ; [+42]
      404 GETTABLEKS                       R13 R11 K6 ["params"]
      406 JUMPIFNOT                        R13 ; [+16]
      407 GETTABLEKS                       R13 R0 K6 ["params"]
      409 JUMPIFNOT                        R13 ; [+13]
      410 GETUPVAL                         R13 5
      411 GETTABLEKS                       R13 R13 K22 ["assign"]
      413 GETIMPORT                        R14 K2 [table.clone]
      415 GETTABLEKS                       R15 R11 K6 ["params"]
      417 CALL                             R14 1 1
      418 GETTABLEKS                       R15 R0 K6 ["params"]
      420 CALL                             R13 2 1
      421 MOVE                             R12 R13
      422 JUMP                             ; [+22]
      423 GETTABLEKS                       R13 R11 K6 ["params"]
      425 JUMPIFNOT                        R13 ; [+7]
      426 GETIMPORT                        R13 K2 [table.clone]
      428 GETTABLEKS                       R14 R11 K6 ["params"]
      430 CALL                             R13 1 1
      431 MOVE                             R12 R13
      432 JUMP                             ; [+12]
      433 GETTABLEKS                       R13 R0 K6 ["params"]
      435 JUMPIFNOT                        R13 ; [+7]
      436 GETIMPORT                        R13 K2 [table.clone]
      438 GETTABLEKS                       R14 R0 K6 ["params"]
      440 CALL                             R13 1 1
      441 MOVE                             R12 R13
      442 JUMP                             ; [+2]
      443 NEWTABLE                         R12 0 0
      445 GETIMPORT                        R13 K2 [table.clone]
      447 GETTABLEKS                       R14 R3 K8 ["routes"]
      449 CALL                             R13 1 1
      450 GETUPVAL                         R14 5
      451 GETTABLEKS                       R14 R14 K22 ["assign"]
      453 GETIMPORT                        R15 K2 [table.clone]
      455 MOVE                             R16 R11
      456 CALL                             R15 1 1
      457 DUPTABLE                         R16 K39 [{"params"}]
      458 SETTABLEKS                       R12 R16 K6 ["params"]
      460 CALL                             R14 2 1
      461 SETTABLE                         R14 R13 R10
      462 GETUPVAL                         R14 7
      463 MOVE                             R15 R0
      464 MOVE                             R16 R2
      465 GETUPVAL                         R17 5
      466 GETTABLEKS                       R17 R17 K22 ["assign"]
      468 GETIMPORT                        R18 K2 [table.clone]
      470 MOVE                             R19 R3
      471 CALL                             R18 1 1
      472 DUPTABLE                         R19 K25 [{"routes"}]
      473 SETTABLEKS                       R13 R19 K8 ["routes"]
      475 CALL                             R17 2 -1
      476 CALL                             R14 -1 -1
      477 CLOSEUPVALS                      R4
      478 RETURN                           R14 -1
      479 GETTABLEKS                       R9 R3 K3 ["index"]
      481 JUMPIFEQ                         R4 R9 ; [+18]
      483 GETUPVAL                         R9 7
      484 MOVE                             R10 R0
      485 MOVE                             R11 R2
      486 GETUPVAL                         R12 5
      487 GETTABLEKS                       R12 R12 K22 ["assign"]
      489 GETIMPORT                        R13 K2 [table.clone]
      491 MOVE                             R14 R3
      492 CALL                             R13 1 1
      493 DUPTABLE                         R14 K42 [{"index"}]
      494 SETTABLEKS                       R4 R14 K3 ["index"]
      496 CALL                             R12 2 -1
      497 CALL                             R9 -1 -1
      498 CLOSEUPVALS                      R4
      499 RETURN                           R9 -1
      500 JUMPIFNOT                        R8 ; [+3]
      501 JUMPIF                           R1 ; [+2]
      502 CLOSEUPVALS                      R4
      503 RETURN                           R3 1
      504 JUMPIFNOT                        R8 ; [+6]
      505 GETIMPORT                        R9 K2 [table.clone]
      507 MOVE                             R10 R3
      508 CALL                             R9 1 -1
      509 CLOSEUPVALS                      R4
      510 RETURN                           R9 -1
      511 LOADB                            R9 1
      512 GETTABLEKS                       R10 R0 K4 ["type"]
      514 GETUPVAL                         R11 1
      515 GETTABLEKS                       R11 R11 K26 ["Back"]
      517 JUMPIFEQ                         R10 R11 ; [+18]
      519 LOADB                            R9 1
      520 GETTABLEKS                       R10 R0 K4 ["type"]
      522 GETUPVAL                         R11 13
      523 GETTABLEKS                       R11 R11 K43 ["Pop"]
      525 JUMPIFEQ                         R10 R11 ; [+10]
      527 GETTABLEKS                       R10 R0 K4 ["type"]
      529 GETUPVAL                         R11 13
      530 GETTABLEKS                       R11 R11 K44 ["PopToTop"]
      532 JUMPIFEQ                         R10 R11 ; [+2]
      534 LOADB                            R9 0 +1
      535 LOADB                            R9 1
      536 NOT                              R10 R9
      537 JUMPIF                           R10 ; [+14]
      538 LOADB                            R10 0
      539 GETTABLEKS                       R11 R0 K4 ["type"]
      541 GETUPVAL                         R12 1
      542 GETTABLEKS                       R12 R12 K26 ["Back"]
      544 JUMPIFNOTEQ                      R11 R12 ; [+7]
      546 GETTABLEKS                       R11 R0 K10 ["key"]
      548 JUMPIFNOTEQKNIL                  R11 ; [+2]
      550 LOADB                            R10 0 +1
      551 LOADB                            R10 1
      552 JUMPIFNOT                        R10 ; [+47]
      553 GETTABLEKS                       R11 R3 K3 ["index"]
      555 GETTABLEKS                       R12 R3 K8 ["routes"]
      557 GETUPVAL                         R13 2
      558 GETTABLEKS                       R13 R13 K37 ["find"]
      560 GETUPVAL                         R14 9
      561 NEWCLOSURE                       R15 P6
      562 CAPTURE                          UPVAL U8
      563 CAPTURE                          REF R11
      564 CAPTURE                          REF R12
      565 CAPTURE                          VAL R0
      566 CALL                             R13 2 0
      567 GETTABLEKS                       R13 R0 K45 ["preserveFocus"]
      569 JUMPIFNOT                        R13 ; [+2]
      570 GETTABLEKS                       R11 R3 K3 ["index"]
      572 GETTABLEKS                       R13 R3 K3 ["index"]
      574 JUMPIFNOTEQ                      R11 R13 ; [+5]
      576 GETTABLEKS                       R13 R3 K8 ["routes"]
      578 JUMPIFEQ                         R12 R13 ; [+20]
      580 GETUPVAL                         R13 7
      581 MOVE                             R14 R0
      582 MOVE                             R15 R2
      583 GETUPVAL                         R16 5
      584 GETTABLEKS                       R16 R16 K22 ["assign"]
      586 GETIMPORT                        R17 K2 [table.clone]
      588 MOVE                             R18 R3
      589 CALL                             R17 1 1
      590 DUPTABLE                         R18 K46 [{"index", "routes"}]
      591 SETTABLEKS                       R11 R18 K3 ["index"]
      593 SETTABLEKS                       R12 R18 K8 ["routes"]
      595 CALL                             R16 2 -1
      596 CALL                             R13 -1 -1
      597 CLOSEUPVALS                      R4
      598 RETURN                           R13 -1
      599 CLOSEUPVALS                      R11
      600 CLOSEUPVALS                      R4
      601 RETURN                           R3 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 GETTABLEKS                       R3 R0 K1 ["index"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R1 K2 ["routeName"]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R2
       12 LOADK                            R5 K3 ["There is no route defined for index '%d'. Check that you passed in a navigation state with a valid tab/screen index."]
       13 GETTABLEKS                       R6 R0 K1 ["index"]
       15 CALL                             R3 3 0
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R2
       18 JUMPIFNOT                        R3 ; [+9]
       19 GETTABLEKS                       R4 R3 K4 ["getComponentForState"]
       21 GETTABLEKS                       R6 R0 K0 ["routes"]
       23 GETTABLEKS                       R7 R0 K1 ["index"]
       25 GETTABLE                         R5 R6 R7
       26 CALL                             R4 1 -1
       27 RETURN                           R4 -1
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R2
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 GETTABLEKS                       R3 R0 K1 ["index"]
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 MOVE                             R2 R1
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R1 R2
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["reduce"]
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 3
       14 NEWTABLE                         R6 0 0
       16 CALL                             R3 3 -1
       17 CALL                             R2 -1 1
       18 GETTABLEKS                       R3 R1 K1 ["order"]
       20 JUMPIF                           R3 ; [+6]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["map"]
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 4
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R1 K3 ["getCustomActionCreators"]
       29 JUMPIF                           R4 ; [+1]
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R5 R1 K4 ["initialRouteParams"]
       33 GETTABLEKS                       R6 R1 K5 ["initialRouteName"]
       35 JUMPIF                           R6 ; [+1]
       36 GETTABLEN                        R6 R3 1
       37 GETTABLEKS                       R7 R1 K6 ["backBehavior"]
       39 JUMPIF                           R7 ; [+3]
       40 GETUPVAL                         R7 6
       41 GETTABLEKS                       R7 R7 K7 ["None"]
       43 LOADB                            R8 1
       44 GETTABLEKS                       R9 R1 K8 ["resetOnBlur"]
       46 JUMPIFEQKNIL                     R9 ; [+3]
       48 GETTABLEKS                       R8 R1 K8 ["resetOnBlur"]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K9 ["indexOf"]
       53 MOVE                             R10 R3
       54 MOVE                             R11 R6
       55 CALL                             R9 2 1
       56 LOADN                            R10 1
       57 JUMPIFNOTLT                      R9 R10 ; [+21]
       59 GETIMPORT                        R10 K12 [table.concat]
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K2 ["map"]
       64 MOVE                             R12 R3
       65 DUPCLOSURE                       R13 K13 [PROTO_3]
       66 CALL                             R11 2 1
       67 LOADK                            R12 K14 [", "]
       68 CALL                             R10 2 1
       69 GETIMPORT                        R11 K16 [error]
       71 LOADK                            R12 K17 ["Invalid initialRouteName '%s'. Should be one of %s"]
       72 MOVE                             R14 R6
       73 MOVE                             R15 R10
       74 NAMECALL                         R12 R12 K18 ["format"]
       76 CALL                             R12 3 1
       77 LOADN                            R13 2
       78 CALL                             R11 2 0
       79 NEWTABLE                         R10 0 0
       81 MOVE                             R11 R3
       82 LOADNIL                          R12
       83 LOADNIL                          R13
       84 FORGPREP                         R11
       85 GETUPVAL                         R16 7
       86 MOVE                             R17 R2
       87 MOVE                             R18 R15
       88 CALL                             R16 2 1
       89 FASTCALL1                        TYPE R16 ; [+3]
       90 MOVE                             R18 R16
       91 GETIMPORT                        R17 K20 [type]
       93 CALL                             R17 1 1
       94 JUMPIFNOTEQKS                    R17 K10 ["table"] ; [+8]
       96 GETTABLEKS                       R17 R16 K21 ["router"]
       98 JUMPIFNOT                        R17 ; [+4]
       99 GETTABLEKS                       R17 R16 K21 ["router"]
      101 SETTABLE                         R17 R10 R15
      102 JUMP                             ; [+2]
      103 LOADB                            R17 0
      104 SETTABLE                         R17 R10 R15
      105 FORGLOOP                         R11 2 ; [-21]
      107 NEWCLOSURE                       R11 P1
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U8
      110 GETUPVAL                         R12 9
      111 MOVE                             R13 R10
      112 MOVE                             R14 R2
      113 MOVE                             R15 R1
      114 CALL                             R12 3 1
      115 GETTABLEKS                       R13 R12 K22 ["getPathAndParamsForRoute"]
      117 GETTABLEKS                       R14 R12 K23 ["getActionForPathAndParams"]
      119 NEWCLOSURE                       R15 P2
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          VAL R10
      125 CAPTURE                          UPVAL U10
      126 NEWCLOSURE                       R16 P3
      127 CAPTURE                          REF R8
      128 CAPTURE                          VAL R15
      129 CAPTURE                          UPVAL U8
      130 CAPTURE                          VAL R7
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          UPVAL U10
      133 CAPTURE                          UPVAL U2
      134 NEWCLOSURE                       R17 P4
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R7
      140 CAPTURE                          UPVAL U6
      141 DUPTABLE                         R18 K27 [{"childRouters", "getActionCreators", "getScreenOptions"}]
      142 SETTABLEKS                       R10 R18 K24 ["childRouters"]
      144 NEWCLOSURE                       R19 P5
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R19 R18 K25 ["getActionCreators"]
      148 GETUPVAL                         R19 11
      149 MOVE                             R20 R2
      150 GETTABLEKS                       R21 R1 K28 ["defaultNavigationOptions"]
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K26 ["getScreenOptions"]
      155 NEWCLOSURE                       R19 P6
      156 CAPTURE                          VAL R17
      157 CAPTURE                          UPVAL U10
      158 CAPTURE                          UPVAL U2
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R5
      161 CAPTURE                          UPVAL U8
      162 CAPTURE                          UPVAL U12
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R7
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          VAL R9
      169 CAPTURE                          UPVAL U13
      170 SETTABLEKS                       R19 R18 K29 ["getStateForAction"]
      172 NEWCLOSURE                       R19 P7
      173 CAPTURE                          UPVAL U14
      174 CAPTURE                          VAL R10
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          VAL R2
      177 SETTABLEKS                       R19 R18 K30 ["getComponentForState"]
      179 NEWCLOSURE                       R19 P8
      180 CAPTURE                          UPVAL U7
      181 CAPTURE                          VAL R2
      182 SETTABLEKS                       R19 R18 K31 ["getComponentForRouteName"]
      184 NEWCLOSURE                       R19 P9
      185 CAPTURE                          VAL R13
      186 SETTABLEKS                       R19 R18 K32 ["getPathAndParamsForState"]
      188 NEWCLOSURE                       R19 P10
      189 CAPTURE                          VAL R14
      190 SETTABLEKS                       R19 R18 K23 ["getActionForPathAndParams"]
      192 CLOSEUPVALS                      R8
      193 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["NavigationActions"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K9 ["BackBehavior"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R8 R8 K2 ["Parent"]
       34 GETTABLEKS                       R8 R8 K10 ["getScreenForRouteName"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K4 [require]
       39 GETIMPORT                        R9 K1 [script]
       41 GETTABLEKS                       R9 R9 K2 ["Parent"]
       43 GETTABLEKS                       R9 R9 K11 ["createConfigGetter"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R10 R10 K2 ["Parent"]
       52 GETTABLEKS                       R10 R10 K12 ["validateRouteConfigMap"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K4 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K2 ["Parent"]
       61 GETTABLEKS                       R11 R11 K13 ["validateRouteConfigArray"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R0 K14 ["utils"]
       68 GETTABLEKS                       R12 R12 K15 ["invariant"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETTABLEKS                       R13 R0 K16 ["routers"]
       75 GETTABLEKS                       R13 R13 K17 ["StackActions"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K4 [require]
       80 GETIMPORT                        R14 K1 [script]
       82 GETTABLEKS                       R14 R14 K2 ["Parent"]
       84 GETTABLEKS                       R14 R14 K18 ["SwitchActions"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K4 [require]
       89 GETIMPORT                        R15 K1 [script]
       91 GETTABLEKS                       R15 R15 K2 ["Parent"]
       93 GETTABLEKS                       R15 R15 K19 ["pathUtils"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R14 K20 ["createPathParser"]
       98 DUPCLOSURE                       R16 K21 [PROTO_0]
       99 DUPCLOSURE                       R17 K22 [PROTO_1]
      100 DUPCLOSURE                       R18 K23 [PROTO_2]
      101 DUPCLOSURE                       R19 K24 [PROTO_22]
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R11
      117 RETURN                           R19 1
