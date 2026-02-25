PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["keys"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 ORK                              R1 R1 K0 ["Anonymous"]
        1 GETUPVAL                         R2 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+2]
        8 RETURN                           R2 1
        9 MOVE                             R3 R1
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K3 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+12]
       17 GETTABLEKS                       R5 R0 K5 ["__componentName"]
       19 FASTCALL1                        TYPEOF R5 ; [+2]
       20 GETIMPORT                        R4 K3 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+4]
       25 GETTABLEKS                       R3 R0 K5 ["__componentName"]
       27 JUMP                             ; [+33]
       28 FASTCALL1                        TYPEOF R0 ; [+3]
       29 MOVE                             R5 R0
       30 GETIMPORT                        R4 K3 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+16]
       35 GETTABLEKS                       R5 R0 K7 ["name"]
       37 FASTCALL1                        TYPEOF R5 ; [+2]
       38 GETIMPORT                        R4 K3 [typeof]
       40 CALL                             R4 1 1
       41 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+8]
       43 GETTABLEKS                       R4 R0 K7 ["name"]
       45 JUMPIFEQKS                       R4 K8 [""] ; [+4]
       47 GETTABLEKS                       R3 R0 K7 ["name"]
       49 JUMP                             ; [+11]
       50 FASTCALL1                        TYPEOF R0 ; [+3]
       51 MOVE                             R5 R0
       52 GETIMPORT                        R4 K3 [typeof]
       54 CALL                             R4 1 1
       55 JUMPIFNOTEQKS                    R4 K9 ["function"] ; [+5]
       57 GETUPVAL                         R4 1
       58 MOVE                             R5 R0
       59 CALL                             R4 1 1
       60 OR                               R3 R4 R3
       61 GETUPVAL                         R4 0
       62 MOVE                             R6 R0
       63 MOVE                             R7 R3
       64 NAMECALL                         R4 R4 K10 ["set"]
       66 CALL                             R4 3 0
       67 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R4 R0
        1 JUMPIFNOT                        R4 ; [+2]
        2 GETTABLEKS                       R4 R0 K0 ["displayName"]
        4 MOVE                             R5 R4
        5 JUMPIF                           R5 ; [+12]
        6 LOADK                            R6 K1 ["%*(%*)"]
        7 MOVE                             R8 R2
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R9 R10 K2 ["getDisplayName"]
       11 MOVE                             R10 R1
       12 MOVE                             R11 R3
       13 CALL                             R9 2 1
       14 NAMECALL                         R6 R6 K3 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLE                      R2 R3 ; [+23]
        6 GETTABLE                         R3 R0 R2
        7 LOADK                            R4 K0 [65536]
        8 JUMPIFNOTLE                      R4 R3 ; [+10]
       10 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R3
       14 GETIMPORT                        R4 K3 [table.insert]
       16 CALL                             R4 2 0
       17 ADDK                             R2 R2 K4 [2]
       18 JUMP                             ; [+8]
       19 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       21 MOVE                             R5 R1
       22 MOVE                             R6 R3
       23 GETIMPORT                        R4 K3 [table.insert]
       25 CALL                             R4 2 0
       26 ADDK                             R2 R2 K5 [1]
       27 JUMPBACK                         ; [-25]
       28 GETIMPORT                        R3 K8 [utf8.char]
       30 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       31 MOVE                             R5 R1
       32 GETIMPORT                        R4 K10 [table.unpack]
       34 CALL                             R4 1 -1
       35 CALL                             R3 -1 -1
       36 RETURN                           R3 -1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [utf8.codes]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R7 K3 [65536]
        8 JUMPIFNOTLT                      R6 R7 ; [+9]
       10 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 GETIMPORT                        R7 K6 [table.insert]
       16 CALL                             R7 2 0
       17 JUMP                             ; [+23]
       18 SUBK                             R7 R6 K3 [65536]
       19 DIVK                             R10 R7 K8 [1024]
       20 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       21 GETIMPORT                        R9 K11 [math.floor]
       23 CALL                             R9 1 1
       24 ADDK                             R8 R9 K7 [55296]
       25 MODK                             R10 R7 K8 [1024]
       26 ADDK                             R9 R10 K12 [56320]
       27 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       29 MOVE                             R11 R1
       30 MOVE                             R12 R8
       31 GETIMPORT                        R10 K6 [table.insert]
       33 CALL                             R10 2 0
       34 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       36 MOVE                             R11 R1
       37 MOVE                             R12 R9
       38 GETIMPORT                        R10 K6 [table.insert]
       40 CALL                             R10 2 0
       41 FORGLOOP                         R2 2 ; [-35]
       43 NEWTABLE                         R2 0 0
       45 LOADN                            R5 1
       46 LENGTH                           R3 R1
       47 LOADN                            R4 1
       48 FORNPREP                         R3
       49 GETTABLE                         R6 R1 R5
       50 LOADK                            R7 K7 [55296]
       51 JUMPIFNOTLE                      R7 R6 ; [+24]
       53 LOADK                            R7 K13 [56319]
       54 JUMPIFNOTLE                      R6 R7 ; [+21]
       56 LENGTH                           R7 R1
       57 JUMPIFNOTLT                      R5 R7 ; [+18]
       59 ADDK                             R8 R5 K14 [1]
       60 GETTABLE                         R7 R1 R8
       61 LOADK                            R8 K12 [56320]
       62 JUMPIFNOTLE                      R8 R7 ; [+11]
       64 LOADK                            R8 K15 [57343]
       65 JUMPIFNOTLE                      R7 R8 ; [+8]
       67 SUBK                             R11 R6 K7 [55296]
       68 MULK                             R10 R11 K8 [1024]
       69 SUBK                             R11 R7 K12 [56320]
       70 ADD                              R9 R10 R11
       71 ADDK                             R8 R9 K3 [65536]
       72 SETTABLE                         R8 R2 R5
       73 JUMP                             ; [+3]
       74 SETTABLE                         R6 R2 R5
       75 JUMP                             ; [+1]
       76 SETTABLE                         R6 R2 R5
       77 FORNLOOP                         R3
       78 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_8:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 NEWTABLE                         R3 0 1
        4 GETIMPORT                        R4 K2 [string.format]
        6 LOADK                            R5 K3 ["operations for renderer:%s and root:%s"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R7 R1
        9 GETIMPORT                        R6 K5 [tostring]
       11 CALL                             R6 1 1
       12 FASTCALL1                        TOSTRING R2 ; [+3]
       13 MOVE                             R8 R2
       14 GETIMPORT                        R7 K5 [tostring]
       16 CALL                             R7 1 1
       17 CALL                             R4 3 -1
       18 SETLIST                          R3 R4 -1 [1]
       20 LOADN                            R4 3
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          REF R4
       23 NEWTABLE                         R6 0 1
       25 LOADK                            R7 K6 [""]
       26 SETLIST                          R6 R7 1 [1]
       28 MOVE                             R9 R4
       29 ADDK                             R4 R4 K7 [1]
       30 MOVE                             R8 R9
       31 GETTABLE                         R7 R0 R8
       32 ADD                              R8 R4 R7
       33 JUMPIFNOTLT                      R4 R8 ; [+13]
       35 MOVE                             R11 R4
       36 ADDK                             R4 R4 K7 [1]
       37 MOVE                             R10 R11
       38 GETTABLE                         R9 R0 R10
       39 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
       41 MOVE                             R11 R6
       42 MOVE                             R12 R9
       43 GETIMPORT                        R10 K10 [table.insert]
       45 CALL                             R10 2 0
       46 JUMPBACK                         ; [-14]
       47 LENGTH                           R9 R0
       48 JUMPIFNOTLT                      R4 R9 ; [+118]
       50 GETTABLE                         R9 R0 R4
       51 GETUPVAL                         R10 0
       52 JUMPIFNOTEQ                      R9 R10 ; [+43]
       54 ADDK                             R11 R4 K7 [1]
       55 GETTABLE                         R10 R0 R11
       56 ADDK                             R12 R4 K11 [2]
       57 GETTABLE                         R11 R0 R12
       58 ADDK                             R4 R4 K12 [3]
       59 GETUPVAL                         R12 1
       60 JUMPIFNOTEQ                      R11 R12 ; [+14]
       62 MOVE                             R13 R3
       63 GETIMPORT                        R14 K2 [string.format]
       65 LOADK                            R15 K13 ["Add new root node %d"]
       66 MOVE                             R16 R10
       67 CALL                             R14 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R12 K10 [table.insert]
       71 CALL                             R12 -1 0
       72 ADDK                             R4 R4 K7 [1]
       73 ADDK                             R4 R4 K7 [1]
       74 JUMP                             ; [+91]
       75 GETTABLE                         R12 R0 R4
       76 ADDK                             R4 R4 K7 [1]
       77 ADDK                             R4 R4 K7 [1]
       78 GETTABLE                         R13 R0 R4
       79 ADDK                             R15 R13 K7 [1]
       80 GETTABLE                         R14 R6 R15
       81 ADDK                             R4 R4 K7 [1]
       82 ADDK                             R4 R4 K7 [1]
       83 MOVE                             R16 R3
       84 GETIMPORT                        R17 K2 [string.format]
       86 LOADK                            R18 K14 ["Add node %d (%s) as child of %d"]
       87 MOVE                             R19 R10
       88 ORK                              R20 R14 K15 ["null"]
       89 MOVE                             R21 R12
       90 CALL                             R17 4 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R15 K10 [table.insert]
       94 CALL                             R15 -1 0
       95 JUMP                             ; [+70]
       96 GETUPVAL                         R10 2
       97 JUMPIFNOTEQ                      R9 R10 ; [+22]
       99 ADDK                             R11 R4 K7 [1]
      100 GETTABLE                         R10 R0 R11
      101 ADDK                             R4 R4 K11 [2]
      102 LOADN                            R13 1
      103 MOVE                             R11 R10
      104 LOADN                            R12 1
      105 FORNPREP                         R11
      106 GETTABLE                         R14 R0 R4
      107 ADDK                             R4 R4 K7 [1]
      108 MOVE                             R16 R3
      109 GETIMPORT                        R17 K2 [string.format]
      111 LOADK                            R18 K16 ["Remove node %d"]
      112 MOVE                             R19 R14
      113 CALL                             R17 2 -1
      114 FASTCALL                         TABLE_INSERT ; [+2]
      115 GETIMPORT                        R15 K10 [table.insert]
      117 CALL                             R15 -1 0
      118 FORNLOOP                         R11
      119 JUMP                             ; [+46]
      120 GETUPVAL                         R10 3
      121 JUMPIFNOTEQ                      R9 R10 ; [+31]
      123 ADDK                             R11 R4 K7 [1]
      124 GETTABLE                         R10 R0 R11
      125 ADDK                             R12 R4 K11 [2]
      126 GETTABLE                         R11 R0 R12
      127 ADDK                             R4 R4 K12 [3]
      128 GETUPVAL                         R13 4
      129 GETTABLEKS                       R12 R13 K17 ["slice"]
      131 MOVE                             R13 R0
      132 MOVE                             R14 R4
      133 ADD                              R15 R4 R11
      134 CALL                             R12 3 1
      135 ADD                              R4 R4 R11
      136 MOVE                             R14 R3
      137 GETIMPORT                        R15 K2 [string.format]
      139 LOADK                            R16 K18 ["Re-order node %d children %s"]
      140 MOVE                             R17 R10
      141 GETUPVAL                         R19 4
      142 GETTABLEKS                       R18 R19 K19 ["join"]
      144 MOVE                             R19 R12
      145 LOADK                            R20 K20 [","]
      146 CALL                             R18 2 -1
      147 CALL                             R15 -1 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R13 K10 [table.insert]
      151 CALL                             R13 -1 0
      152 JUMP                             ; [+13]
      153 GETUPVAL                         R10 5
      154 JUMPIFNOTEQ                      R9 R10 ; [+3]
      156 ADDK                             R4 R4 K12 [3]
      157 JUMP                             ; [+8]
      158 GETIMPORT                        R10 K22 [error]
      160 GETIMPORT                        R11 K2 [string.format]
      162 LOADK                            R12 K23 ["Unsupported Bridge operation %d"]
      163 MOVE                             R13 R9
      164 CALL                             R11 2 -1
      165 CALL                             R10 -1 0
      166 JUMPBACK                         ; [-120]
      167 GETIMPORT                        R9 K25 [print]
      169 GETIMPORT                        R10 K27 [table.concat]
      171 MOVE                             R11 R3
      172 LOADK                            R12 K28 ["\n  "]
      173 CALL                             R10 2 -1
      174 CALL                             R9 -1 0
      175 CLOSEUPVALS                      R4
      176 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{"type", "value", "isEnabled"}]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K0 ["type"]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K1 ["value"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["isEnabled"]
       12 SETLIST                          R0 R1 1 [1]
       14 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R1 2
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_10]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R2 R3 K3 ["getDefaultComponentFilters"]
       11 CALL                             R2 0 -1
       12 RETURN                           R2 -1
       13 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        6 CALL                             R3 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R1 2
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_13]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        6 CALL                             R3 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R1 2
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_17:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_16]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 LOADB                            R2 0
       10 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K0 ["JSONEncode"]
        6 CALL                             R3 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 RETURN                           R2 2
        5 LOADNIL                          R2
        6 GETUPVAL                         R3 0
        7 JUMPIFEQ                         R1 R3 ; [+10]
        9 GETUPVAL                         R3 1
       10 JUMPIFEQ                         R1 R3 ; [+7]
       12 GETUPVAL                         R3 2
       13 JUMPIFEQ                         R1 R3 ; [+4]
       15 GETUPVAL                         R3 3
       16 JUMPIFNOTEQ                      R1 R3 ; [+32]
       18 GETIMPORT                        R3 K2 [string.find]
       20 MOVE                             R4 R0
       21 LOADK                            R5 K3 ["("]
       22 LOADN                            R6 1
       23 LOADB                            R7 1
       24 CALL                             R3 4 1
       25 JUMPIFNOT                        R3 ; [+23]
       26 NEWTABLE                         R3 0 0
       28 GETIMPORT                        R4 K5 [string.gmatch]
       30 MOVE                             R5 R0
       31 LOADK                            R6 K6 ["[^()]+"]
       32 CALL                             R4 2 3
       33 FORGPREP                         R4
       34 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       36 MOVE                             R10 R3
       37 MOVE                             R11 R7
       38 GETIMPORT                        R9 K9 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 1 ; [-8]
       43 LENGTH                           R4 R3
       44 GETTABLE                         R5 R3 R4
       45 LOADNIL                          R6
       46 SETTABLE                         R6 R3 R4
       47 MOVE                             R0 R5
       48 MOVE                             R2 R3
       49 GETUPVAL                         R3 3
       50 JUMPIFNOTEQ                      R1 R3 ; [+17]
       52 JUMPIFNOTEQKNIL                  R2 ; [+8]
       54 NEWTABLE                         R3 0 1
       56 LOADK                            R4 K10 ["Memo"]
       57 SETLIST                          R3 R4 1 [1]
       59 MOVE                             R2 R3
       60 JUMP                             ; [+25]
       61 GETUPVAL                         R4 4
       62 GETTABLEKS                       R3 R4 K11 ["unshift"]
       64 MOVE                             R4 R2
       65 LOADK                            R5 K10 ["Memo"]
       66 CALL                             R3 2 0
       67 JUMP                             ; [+18]
       68 GETUPVAL                         R3 1
       69 JUMPIFNOTEQ                      R1 R3 ; [+16]
       71 JUMPIFNOTEQKNIL                  R2 ; [+8]
       73 NEWTABLE                         R3 0 1
       75 LOADK                            R4 K12 ["ForwardRef"]
       76 SETLIST                          R3 R4 1 [1]
       78 MOVE                             R2 R3
       79 JUMP                             ; [+6]
       80 GETUPVAL                         R4 4
       81 GETTABLEKS                       R3 R4 K11 ["unshift"]
       83 MOVE                             R4 R2
       84 LOADK                            R5 K12 ["ForwardRef"]
       85 CALL                             R3 2 0
       86 MOVE                             R3 R0
       87 MOVE                             R4 R2
       88 RETURN                           R3 2

PROTO_20:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIFEQ                         R7 R6 ; [+3]
        7 LOADB                            R7 1
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_21:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLE                         R2 R0 R1
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 GETTABLE                         R2 R0 R1
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["reduce"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_21]
        5 MOVE                             R5 R0
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_23:
        0 LENGTH                           R2 R1
        1 GETTABLE                         R3 R1 R2
        2 JUMPIFEQKNIL                     R0 ; [+30]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["getInObject"]
        7 MOVE                             R5 R0
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K1 ["slice"]
       11 MOVE                             R7 R1
       12 LOADN                            R8 0
       13 MOVE                             R9 R2
       14 CALL                             R6 3 -1
       15 CALL                             R4 -1 1
       16 JUMPIFNOT                        R4 ; [+16]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K2 ["isArray"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 1
       22 JUMPIFNOT                        R5 ; [+8]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K3 ["splice"]
       26 MOVE                             R6 R4
       27 MOVE                             R7 R3
       28 LOADN                            R8 1
       29 CALL                             R5 3 0
       30 RETURN                           R0 0
       31 LOADNIL                          R5
       32 SETTABLE                         R5 R4 R3
       33 RETURN                           R0 0

PROTO_24:
        0 LENGTH                           R3 R1
        1 JUMPIFEQKNIL                     R0 ; [+34]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["getInObject"]
        6 MOVE                             R5 R0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["slice"]
       10 MOVE                             R7 R1
       11 LOADN                            R8 1
       12 MOVE                             R9 R3
       13 CALL                             R6 3 -1
       14 CALL                             R4 -1 1
       15 JUMPIFNOT                        R4 ; [+20]
       16 GETTABLE                         R5 R1 R3
       17 GETTABLE                         R6 R2 R3
       18 GETTABLE                         R7 R4 R5
       19 SETTABLE                         R7 R4 R6
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K2 ["isArray"]
       23 MOVE                             R8 R4
       24 CALL                             R7 1 1
       25 JUMPIFNOT                        R7 ; [+8]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K3 ["splice"]
       29 MOVE                             R8 R4
       30 MOVE                             R9 R5
       31 LOADN                            R10 1
       32 CALL                             R7 3 0
       33 RETURN                           R0 0
       34 LOADNIL                          R7
       35 SETTABLE                         R7 R4 R5
       36 RETURN                           R0 0

PROTO_25:
        0 LENGTH                           R3 R1
        1 GETTABLE                         R4 R1 R3
        2 JUMPIFEQKNIL                     R0 ; [+15]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K0 ["getInObject"]
        7 MOVE                             R6 R0
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K1 ["slice"]
       11 MOVE                             R8 R1
       12 LOADN                            R9 1
       13 MOVE                             R10 R3
       14 CALL                             R7 3 -1
       15 CALL                             R5 -1 1
       16 JUMPIFNOT                        R5 ; [+1]
       17 SETTABLE                         R2 R5 R4
       18 RETURN                           R0 0

PROTO_26:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["nil"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADK                            R1 K1 ["react_element"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+3]
       17 LOADK                            R2 K4 ["boolean"]
       18 RETURN                           R2 1
       19 JUMPIFNOTEQKS                    R1 K5 ["function"] ; [+3]
       21 LOADK                            R2 K5 ["function"]
       22 RETURN                           R2 1
       23 JUMPIFNOTEQKS                    R1 K6 ["number"] ; [+19]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K7 ["isNaN"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 JUMPIFNOT                        R2 ; [+2]
       31 LOADK                            R2 K8 ["nan"]
       32 RETURN                           R2 1
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K9 ["isFinite"]
       36 MOVE                             R3 R0
       37 CALL                             R2 1 1
       38 JUMPIF                           R2 ; [+2]
       39 LOADK                            R2 K10 ["infinity"]
       40 RETURN                           R2 1
       41 LOADK                            R2 K6 ["number"]
       42 RETURN                           R2 1
       43 JUMPIFNOTEQKS                    R1 K11 ["table"] ; [+11]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R2 R3 K12 ["isArray"]
       48 MOVE                             R3 R0
       49 CALL                             R2 1 1
       50 JUMPIFNOT                        R2 ; [+2]
       51 LOADK                            R2 K13 ["array"]
       52 RETURN                           R2 1
       53 LOADK                            R2 K11 ["table"]
       54 RETURN                           R2 1
       55 JUMPIFNOTEQKS                    R1 K14 ["string"] ; [+3]
       57 LOADK                            R2 K14 ["string"]
       58 RETURN                           R2 1
       59 JUMPIFNOTEQKS                    R1 K0 ["nil"] ; [+3]
       61 LOADK                            R2 K0 ["nil"]
       62 RETURN                           R2 1
       63 LOADK                            R2 K15 ["unknown"]
       64 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADK                            R2 K0 ["ContextConsumer"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 2
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADK                            R2 K1 ["ContextProvider"]
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 3
       14 JUMPIFNOTEQ                      R1 R2 ; [+3]
       16 LOADK                            R2 K2 ["ForwardRef"]
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 4
       19 JUMPIFNOTEQ                      R1 R2 ; [+3]
       21 LOADK                            R2 K3 ["Fragment"]
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 5
       24 JUMPIFNOTEQ                      R1 R2 ; [+3]
       26 LOADK                            R2 K4 ["Lazy"]
       27 RETURN                           R2 1
       28 GETUPVAL                         R2 6
       29 JUMPIFNOTEQ                      R1 R2 ; [+3]
       31 LOADK                            R2 K5 ["Memo"]
       32 RETURN                           R2 1
       33 GETUPVAL                         R2 7
       34 JUMPIFNOTEQ                      R1 R2 ; [+3]
       36 LOADK                            R2 K6 ["Portal"]
       37 RETURN                           R2 1
       38 GETUPVAL                         R2 8
       39 JUMPIFNOTEQ                      R1 R2 ; [+3]
       41 LOADK                            R2 K7 ["Profiler"]
       42 RETURN                           R2 1
       43 GETUPVAL                         R2 9
       44 JUMPIFNOTEQ                      R1 R2 ; [+3]
       46 LOADK                            R2 K8 ["StrictMode"]
       47 RETURN                           R2 1
       48 GETUPVAL                         R2 10
       49 JUMPIFNOTEQ                      R1 R2 ; [+3]
       51 LOADK                            R2 K9 ["Suspense"]
       52 RETURN                           R2 1
       53 GETUPVAL                         R2 11
       54 JUMPIFNOTEQ                      R1 R2 ; [+3]
       56 LOADK                            R2 K10 ["SuspenseList"]
       57 RETURN                           R2 1
       58 JUMPIFNOT                        R0 ; [+3]
       59 GETTABLEKS                       R2 R0 K11 ["type"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R2
       63 FASTCALL1                        TYPEOF R2 ; [+3]
       64 MOVE                             R4 R2
       65 GETIMPORT                        R3 K13 [typeof]
       67 CALL                             R3 1 1
       68 JUMPIFNOTEQKS                    R3 K14 ["string"] ; [+2]
       70 RETURN                           R2 1
       71 FASTCALL1                        TYPEOF R2 ; [+3]
       72 MOVE                             R4 R2
       73 GETIMPORT                        R3 K13 [typeof]
       75 CALL                             R3 1 1
       76 JUMPIFNOTEQKS                    R3 K15 ["function"] ; [+8]
       78 GETUPVAL                         R4 12
       79 GETTABLEKS                       R3 R4 K16 ["getDisplayName"]
       81 MOVE                             R4 R2
       82 LOADK                            R5 K17 ["Anonymous"]
       83 CALL                             R3 2 -1
       84 RETURN                           R3 -1
       85 JUMPIFEQKNIL                     R2 ; [+3]
       87 LOADK                            R3 K18 ["NotImplementedInDevtools"]
       88 RETURN                           R3 1
       89 LOADK                            R3 K19 ["Element"]
       90 RETURN                           R3 1

PROTO_28:
        0 ORK                              R1 R1 K0 [50]
        1 FASTCALL1                        STRING_LEN R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K3 [string.len]
        5 CALL                             R2 1 1
        6 JUMPIFNOTLT                      R1 R2 ; [+13]
        8 LOADN                            R7 1
        9 ADDK                             R8 R1 K4 [1]
       10 FASTCALL3                        STRING_SUB R0 R7 R8
       12 MOVE                             R6 R0
       13 GETIMPORT                        R5 K6 [string.sub]
       15 CALL                             R5 3 1
       16 MOVE                             R3 R5
       17 LOADK                            R4 K7 ["…"]
       18 CONCAT                           R2 R3 R4
       19 RETURN                           R2 1
       20 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getDataType"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K1 ["html_element"] ; [+33]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["<%s />"]
       10 GETIMPORT                        R6 K7 [string.lower]
       12 GETTABLEKS                       R7 R0 K8 ["tagName"]
       14 CALL                             R6 1 2
       15 ORK                              R7 R7 K9 [50]
       16 FASTCALL1                        STRING_LEN R6 ; [+3]
       17 MOVE                             R9 R6
       18 GETIMPORT                        R8 K11 [string.len]
       20 CALL                             R8 1 1
       21 JUMPIFNOTLT                      R7 R8 ; [+13]
       23 LOADN                            R12 1
       24 ADDK                             R13 R7 K12 [1]
       25 FASTCALL3                        STRING_SUB R6 R12 R13
       27 MOVE                             R11 R6
       28 GETIMPORT                        R10 K14 [string.sub]
       30 CALL                             R10 3 1
       31 MOVE                             R8 R10
       32 LOADK                            R9 K15 ["…"]
       33 CONCAT                           R5 R8 R9
       34 JUMP                             ; [+2]
       35 MOVE                             R5 R6
       36 JUMP                             ; [0]
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1
       39 JUMPIFNOTEQKS                    R2 K16 ["function"] ; [+36]
       41 GETIMPORT                        R3 K19 [debug.info]
       43 MOVE                             R4 R0
       44 LOADK                            R5 K20 ["n"]
       45 CALL                             R3 2 1
       46 LOADK                            R6 K21 ["ƒ %*()"]
       47 MOVE                             R8 R3
       48 NAMECALL                         R6 R6 K3 ["format"]
       50 CALL                             R6 2 1
       51 MOVE                             R5 R6
       52 LOADNIL                          R6
       53 ORK                              R6 R6 K9 [50]
       54 FASTCALL1                        STRING_LEN R5 ; [+3]
       55 MOVE                             R8 R5
       56 GETIMPORT                        R7 K11 [string.len]
       58 CALL                             R7 1 1
       59 JUMPIFNOTLT                      R6 R7 ; [+13]
       61 LOADN                            R11 1
       62 ADDK                             R12 R6 K12 [1]
       63 FASTCALL3                        STRING_SUB R5 R11 R12
       65 MOVE                             R10 R5
       66 GETIMPORT                        R9 K14 [string.sub]
       68 CALL                             R9 3 1
       69 MOVE                             R7 R9
       70 LOADK                            R8 K15 ["…"]
       71 CONCAT                           R4 R7 R8
       72 RETURN                           R4 1
       73 MOVE                             R4 R5
       74 RETURN                           R4 1
       75 RETURN                           R4 1
       76 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+11]
       78 GETIMPORT                        R3 K4 [string.format]
       80 LOADK                            R4 K22 ["\"%s\""]
       81 FASTCALL1                        TOSTRING R0 ; [+3]
       82 MOVE                             R6 R0
       83 GETIMPORT                        R5 K24 [tostring]
       85 CALL                             R5 1 1
       86 CALL                             R3 2 -1
       87 RETURN                           R3 -1
       88 JUMPIFNOTEQKS                    R2 K25 ["react_element"] ; [+35]
       90 GETIMPORT                        R3 K4 [string.format]
       92 LOADK                            R4 K5 ["<%s />"]
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R7 R8 K27 ["getDisplayNameForReactElement"]
       96 MOVE                             R8 R0
       97 CALL                             R7 1 1
       98 ORK                              R6 R7 K26 ["Unknown"]
       99 LOADNIL                          R7
      100 ORK                              R7 R7 K9 [50]
      101 FASTCALL1                        STRING_LEN R6 ; [+3]
      102 MOVE                             R9 R6
      103 GETIMPORT                        R8 K11 [string.len]
      105 CALL                             R8 1 1
      106 JUMPIFNOTLT                      R7 R8 ; [+13]
      108 LOADN                            R12 1
      109 ADDK                             R13 R7 K12 [1]
      110 FASTCALL3                        STRING_SUB R6 R12 R13
      112 MOVE                             R11 R6
      113 GETIMPORT                        R10 K14 [string.sub]
      115 CALL                             R10 3 1
      116 MOVE                             R8 R10
      117 LOADK                            R9 K15 ["…"]
      118 CONCAT                           R5 R8 R9
      119 JUMP                             ; [+2]
      120 MOVE                             R5 R6
      121 JUMP                             ; [0]
      122 CALL                             R3 2 -1
      123 RETURN                           R3 -1
      124 JUMPIFNOTEQKS                    R2 K28 ["array"] ; [+66]
      126 JUMPIFNOT                        R1 ; [+57]
      127 LOADK                            R3 K29 [""]
      128 LOADN                            R6 1
      129 LENGTH                           R4 R0
      130 LOADN                            R5 1
      131 FORNPREP                         R4
      132 LOADN                            R7 1
      133 JUMPIFNOTLT                      R7 R6 ; [+4]
      135 MOVE                             R7 R3
      136 LOADK                            R8 K30 [", "]
      137 CONCAT                           R3 R7 R8
      138 MOVE                             R7 R3
      139 GETUPVAL                         R9 0
      140 GETTABLEKS                       R8 R9 K31 ["formatDataForPreview"]
      142 GETTABLE                         R9 R0 R6
      143 LOADB                            R10 0
      144 CALL                             R8 2 1
      145 CONCAT                           R3 R7 R8
      146 FASTCALL1                        STRING_LEN R3 ; [+3]
      147 MOVE                             R8 R3
      148 GETIMPORT                        R7 K11 [string.len]
      150 CALL                             R7 1 1
      151 LOADN                            R8 50
      152 JUMPIFLT                         R8 R7 ; [+2]
      154 FORNLOOP                         R4
      155 GETIMPORT                        R4 K4 [string.format]
      157 LOADK                            R5 K32 ["[%s]"]
      158 MOVE                             R7 R3
      159 LOADNIL                          R8
      160 ORK                              R8 R8 K9 [50]
      161 FASTCALL1                        STRING_LEN R7 ; [+3]
      162 MOVE                             R10 R7
      163 GETIMPORT                        R9 K11 [string.len]
      165 CALL                             R9 1 1
      166 JUMPIFNOTLT                      R8 R9 ; [+13]
      168 LOADN                            R13 1
      169 ADDK                             R14 R8 K12 [1]
      170 FASTCALL3                        STRING_SUB R7 R13 R14
      172 MOVE                             R12 R7
      173 GETIMPORT                        R11 K14 [string.sub]
      175 CALL                             R11 3 1
      176 MOVE                             R9 R11
      177 LOADK                            R10 K15 ["…"]
      178 CONCAT                           R6 R9 R10
      179 JUMP                             ; [+2]
      180 MOVE                             R6 R7
      181 JUMP                             ; [0]
      182 CALL                             R4 2 -1
      183 RETURN                           R4 -1
      184 LOADK                            R4 K33 ["Array(%*)"]
      185 LENGTH                           R6 R0
      186 NAMECALL                         R4 R4 K3 ["format"]
      188 CALL                             R4 2 1
      189 MOVE                             R3 R4
      190 RETURN                           R3 1
      191 JUMPIFNOTEQKS                    R2 K34 ["table"] ; [+83]
      193 JUMPIFNOT                        R1 ; [+79]
      194 GETUPVAL                         R4 0
      195 GETTABLEKS                       R3 R4 K35 ["getAllEnumerableKeys"]
      197 MOVE                             R4 R0
      198 CALL                             R3 1 1
      199 GETIMPORT                        R4 K37 [table.sort]
      201 MOVE                             R5 R3
      202 GETUPVAL                         R7 0
      203 GETTABLEKS                       R6 R7 K38 ["alphaSortKeys"]
      205 CALL                             R4 2 0
      206 LOADK                            R4 K29 [""]
      207 LOADN                            R7 1
      208 LENGTH                           R5 R3
      209 LOADN                            R6 1
      210 FORNPREP                         R5
      211 GETTABLE                         R8 R3 R7
      212 LOADN                            R9 1
      213 JUMPIFNOTLT                      R9 R7 ; [+4]
      215 MOVE                             R9 R4
      216 LOADK                            R10 K30 [", "]
      217 CONCAT                           R4 R9 R10
      218 MOVE                             R9 R4
      219 GETIMPORT                        R10 K4 [string.format]
      221 LOADK                            R11 K39 ["%s: %s"]
      222 FASTCALL1                        TOSTRING R8 ; [+3]
      223 MOVE                             R13 R8
      224 GETIMPORT                        R12 K24 [tostring]
      226 CALL                             R12 1 1
      227 GETUPVAL                         R14 0
      228 GETTABLEKS                       R13 R14 K31 ["formatDataForPreview"]
      230 GETTABLE                         R14 R0 R8
      231 LOADB                            R15 0
      232 CALL                             R13 2 -1
      233 CALL                             R10 -1 1
      234 CONCAT                           R4 R9 R10
      235 FASTCALL1                        STRING_LEN R4 ; [+3]
      236 MOVE                             R10 R4
      237 GETIMPORT                        R9 K11 [string.len]
      239 CALL                             R9 1 1
      240 LOADN                            R10 50
      241 JUMPIFLT                         R10 R9 ; [+2]
      243 FORNLOOP                         R5
      244 GETIMPORT                        R5 K4 [string.format]
      246 LOADK                            R6 K40 ["{%s}"]
      247 MOVE                             R8 R4
      248 LOADNIL                          R9
      249 ORK                              R9 R9 K9 [50]
      250 FASTCALL1                        STRING_LEN R8 ; [+3]
      251 MOVE                             R11 R8
      252 GETIMPORT                        R10 K11 [string.len]
      254 CALL                             R10 1 1
      255 JUMPIFNOTLT                      R9 R10 ; [+13]
      257 LOADN                            R14 1
      258 ADDK                             R15 R9 K12 [1]
      259 FASTCALL3                        STRING_SUB R8 R14 R15
      261 MOVE                             R13 R8
      262 GETIMPORT                        R12 K14 [string.sub]
      264 CALL                             R12 3 1
      265 MOVE                             R10 R12
      266 LOADK                            R11 K15 ["…"]
      267 CONCAT                           R7 R10 R11
      268 JUMP                             ; [+2]
      269 MOVE                             R7 R8
      270 JUMP                             ; [0]
      271 CALL                             R5 2 -1
      272 RETURN                           R5 -1
      273 LOADK                            R3 K41 ["{…}"]
      274 RETURN                           R3 1
      275 JUMPIFEQKS                       R2 K42 ["boolean"] ; [+11]
      277 JUMPIFEQKS                       R2 K43 ["number"] ; [+9]
      279 JUMPIFEQKS                       R2 K44 ["infinity"] ; [+7]
      281 JUMPIFEQKS                       R2 K45 ["nan"] ; [+5]
      283 JUMPIFEQKS                       R2 K46 ["null"] ; [+3]
      285 JUMPIFNOTEQKS                    R2 K47 ["undefined"] ; [+7]
      287 FASTCALL1                        TOSTRING R0 ; [+3]
      288 MOVE                             R4 R0
      289 GETIMPORT                        R3 K24 [tostring]
      291 CALL                             R3 1 1
      292 RETURN                           R3 1
      293 GETIMPORT                        R3 K49 [pcall]
      295 GETUPVAL                         R4 1
      296 LOADK                            R6 K29 [""]
      297 FASTCALL1                        TOSTRING R0 ; [+3]
      298 MOVE                             R8 R0
      299 GETIMPORT                        R7 K24 [tostring]
      301 CALL                             R7 1 1
      302 CONCAT                           R5 R6 R7
      303 CALL                             R3 2 2
      304 JUMPIFNOT                        R3 ; [+2]
      305 MOVE                             R5 R4
      306 RETURN                           R5 1
      307 LOADK                            R5 K50 ["unserializable"]
      308 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["WeakMap"]
       16 GETTABLEKS                       R4 R1 K8 ["Number"]
       18 GETTABLEKS                       R5 R1 K9 ["Object"]
       20 GETIMPORT                        R6 K11 [game]
       22 LOADK                            R8 K12 ["HttpService"]
       23 NAMECALL                         R6 R6 K13 ["GetService"]
       25 CALL                             R6 2 1
       26 NEWTABLE                         R7 32 0
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R0 K14 ["Shared"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R9 R8 K15 ["getComponentName"]
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K16 ["ReactIs"]
       39 CALL                             R10 1 1
       40 GETTABLEKS                       R11 R10 K17 ["isElement"]
       42 GETTABLEKS                       R12 R10 K18 ["typeOf"]
       44 GETTABLEKS                       R13 R10 K19 ["ContextConsumer"]
       46 GETTABLEKS                       R14 R10 K20 ["ContextProvider"]
       48 GETTABLEKS                       R15 R10 K21 ["ForwardRef"]
       50 GETTABLEKS                       R16 R10 K22 ["Fragment"]
       52 GETTABLEKS                       R17 R10 K23 ["Lazy"]
       54 GETTABLEKS                       R18 R10 K24 ["Memo"]
       56 GETTABLEKS                       R19 R10 K25 ["Portal"]
       58 GETTABLEKS                       R20 R10 K26 ["Profiler"]
       60 GETTABLEKS                       R21 R10 K27 ["StrictMode"]
       62 GETTABLEKS                       R22 R10 K28 ["Suspense"]
       64 GETIMPORT                        R24 K4 [require]
       66 GETTABLEKS                       R25 R0 K14 ["Shared"]
       68 CALL                             R24 1 1
       69 GETTABLEKS                       R23 R24 K29 ["ReactSymbols"]
       71 GETTABLEKS                       R24 R23 K30 ["REACT_SUSPENSE_LIST_TYPE"]
       73 GETIMPORT                        R25 K4 [require]
       75 GETIMPORT                        R28 K1 [script]
       77 GETTABLEKS                       R27 R28 K2 ["Parent"]
       79 GETTABLEKS                       R26 R27 K31 ["constants"]
       81 CALL                             R25 1 1
       82 GETTABLEKS                       R26 R25 K32 ["TREE_OPERATION_ADD"]
       84 GETTABLEKS                       R27 R25 K33 ["TREE_OPERATION_REMOVE"]
       86 GETTABLEKS                       R28 R25 K34 ["TREE_OPERATION_REORDER_CHILDREN"]
       88 GETTABLEKS                       R29 R25 K35 ["TREE_OPERATION_UPDATE_TREE_BASE_DURATION"]
       90 GETIMPORT                        R30 K4 [require]
       92 GETIMPORT                        R33 K1 [script]
       94 GETTABLEKS                       R32 R33 K2 ["Parent"]
       96 GETTABLEKS                       R31 R32 K36 ["types"]
       98 CALL                             R30 1 1
       99 GETTABLEKS                       R31 R30 K37 ["ElementTypeRoot"]
      101 GETTABLEKS                       R32 R25 K38 ["LOCAL_STORAGE_FILTER_PREFERENCES_KEY"]
      103 GETTABLEKS                       R33 R25 K39 ["LOCAL_STORAGE_SHOULD_BREAK_ON_CONSOLE_ERRORS"]
      105 GETTABLEKS                       R34 R25 K40 ["LOCAL_STORAGE_SHOULD_PATCH_CONSOLE_KEY"]
      107 GETTABLEKS                       R35 R30 K41 ["ComponentFilterElementType"]
      109 GETTABLEKS                       R36 R30 K42 ["ElementTypeHostComponent"]
      111 GETTABLEKS                       R37 R30 K43 ["ElementTypeClass"]
      113 GETTABLEKS                       R38 R30 K44 ["ElementTypeForwardRef"]
      115 GETTABLEKS                       R39 R30 K45 ["ElementTypeFunction"]
      117 GETTABLEKS                       R40 R30 K46 ["ElementTypeMemo"]
      119 GETIMPORT                        R41 K4 [require]
      121 GETIMPORT                        R44 K1 [script]
      123 GETTABLEKS                       R43 R44 K2 ["Parent"]
      125 GETTABLEKS                       R42 R43 K47 ["storage"]
      127 CALL                             R41 1 1
      128 GETTABLEKS                       R42 R41 K48 ["localStorageGetItem"]
      130 GETTABLEKS                       R43 R41 K49 ["localStorageSetItem"]
      132 GETTABLEKS                       R44 R3 K50 ["new"]
      134 CALL                             R44 0 1
      135 DUPCLOSURE                       R45 K51 [PROTO_0]
      136 SETTABLEKS                       R45 R7 K52 ["alphaSortKeys"]
      138 DUPCLOSURE                       R45 K53 [PROTO_1]
      139 CAPTURE                          VAL R5
      140 SETTABLEKS                       R45 R7 K54 ["getAllEnumerableKeys"]
      142 DUPCLOSURE                       R45 K55 [PROTO_2]
      143 CAPTURE                          VAL R44
      144 CAPTURE                          VAL R9
      145 SETTABLEKS                       R45 R7 K56 ["getDisplayName"]
      147 DUPCLOSURE                       R45 K57 [PROTO_3]
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R45 R7 K58 ["getWrappedDisplayName"]
      151 LOADN                            R45 0
      152 NEWCLOSURE                       R46 P4
      153 CAPTURE                          REF R45
      154 SETTABLEKS                       R46 R7 K59 ["getUID"]
      156 DUPCLOSURE                       R46 K60 [PROTO_5]
      157 SETTABLEKS                       R46 R7 K61 ["utfDecodeString"]
      159 DUPCLOSURE                       R46 K62 [PROTO_6]
      160 SETTABLEKS                       R46 R7 K63 ["utfEncodeString"]
      162 DUPCLOSURE                       R46 K64 [PROTO_8]
      163 CAPTURE                          VAL R26
      164 CAPTURE                          VAL R31
      165 CAPTURE                          VAL R27
      166 CAPTURE                          VAL R28
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R29
      169 SETTABLEKS                       R46 R7 K65 ["printOperationsArray"]
      171 DUPCLOSURE                       R46 K66 [PROTO_9]
      172 CAPTURE                          VAL R35
      173 CAPTURE                          VAL R36
      174 SETTABLEKS                       R46 R7 K67 ["getDefaultComponentFilters"]
      176 DUPCLOSURE                       R46 K68 [PROTO_11]
      177 CAPTURE                          VAL R42
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R7
      181 SETTABLEKS                       R46 R7 K69 ["getSavedComponentFilters"]
      183 DUPCLOSURE                       R46 K70 [PROTO_12]
      184 CAPTURE                          VAL R43
      185 CAPTURE                          VAL R32
      186 CAPTURE                          VAL R6
      187 SETTABLEKS                       R46 R7 K71 ["saveComponentFilters"]
      189 DUPCLOSURE                       R46 K72 [PROTO_14]
      190 CAPTURE                          VAL R42
      191 CAPTURE                          VAL R34
      192 CAPTURE                          VAL R6
      193 SETTABLEKS                       R46 R7 K73 ["getAppendComponentStack"]
      195 DUPCLOSURE                       R46 K74 [PROTO_15]
      196 CAPTURE                          VAL R43
      197 CAPTURE                          VAL R34
      198 CAPTURE                          VAL R6
      199 SETTABLEKS                       R46 R7 K75 ["setAppendComponentStack"]
      201 DUPCLOSURE                       R46 K76 [PROTO_17]
      202 CAPTURE                          VAL R42
      203 CAPTURE                          VAL R33
      204 CAPTURE                          VAL R6
      205 SETTABLEKS                       R46 R7 K77 ["getBreakOnConsoleErrors"]
      207 DUPCLOSURE                       R46 K78 [PROTO_18]
      208 CAPTURE                          VAL R43
      209 CAPTURE                          VAL R33
      210 CAPTURE                          VAL R6
      211 SETTABLEKS                       R46 R7 K79 ["setBreakOnConsoleErrors"]
      213 DUPCLOSURE                       R46 K80 [PROTO_19]
      214 CAPTURE                          VAL R37
      215 CAPTURE                          VAL R38
      216 CAPTURE                          VAL R39
      217 CAPTURE                          VAL R40
      218 CAPTURE                          VAL R2
      219 SETTABLEKS                       R46 R7 K81 ["separateDisplayNameAndHOCs"]
      221 DUPCLOSURE                       R46 K82 [PROTO_20]
      222 SETTABLEKS                       R46 R7 K83 ["shallowDiffers"]
      224 DUPCLOSURE                       R46 K84 [PROTO_22]
      225 CAPTURE                          VAL R2
      226 SETTABLEKS                       R46 R7 K85 ["getInObject"]
      228 DUPCLOSURE                       R46 K86 [PROTO_23]
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R2
      231 SETTABLEKS                       R46 R7 K87 ["deletePathInObject"]
      233 DUPCLOSURE                       R46 K88 [PROTO_24]
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R2
      236 SETTABLEKS                       R46 R7 K89 ["renamePathInObject"]
      238 DUPCLOSURE                       R46 K90 [PROTO_25]
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R2
      241 SETTABLEKS                       R46 R7 K91 ["setInObject"]
      243 DUPCLOSURE                       R46 K92 [PROTO_26]
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R2
      247 SETTABLEKS                       R46 R7 K93 ["getDataType"]
      249 DUPCLOSURE                       R46 K94 [PROTO_27]
      250 CAPTURE                          VAL R12
      251 CAPTURE                          VAL R13
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R15
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R17
      256 CAPTURE                          VAL R18
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R20
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R7
      263 SETTABLEKS                       R46 R7 K95 ["getDisplayNameForReactElement"]
      265 DUPCLOSURE                       R46 K96 [PROTO_28]
      266 DUPCLOSURE                       R47 K97 [PROTO_29]
      267 CAPTURE                          VAL R7
      268 CAPTURE                          VAL R46
      269 SETTABLEKS                       R47 R7 K98 ["formatDataForPreview"]
      271 CLOSEUPVALS                      R45
      272 RETURN                           R7 1
