PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 LOADN                            R4 0
       10 JUMPIFLE                         R4 R0 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 LOADK                            R4 K2 ["CellRenderMask must contain a non-negative number os cells"]
       15 CALL                             R2 2 0
       16 SETTABLEKS                       R0 R1 K3 ["_numCells"]
       18 JUMPIFNOTEQKN                    R0 K4 [0] ; [+6]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K5 ["_regions"]
       24 RETURN                           R1 1
       25 NEWTABLE                         R2 0 1
       27 DUPTABLE                         R3 K9 [{"first", "last", "isSpacer"}]
       28 LOADN                            R4 0
       29 SETTABLEKS                       R4 R3 K6 ["first"]
       31 SUBK                             R4 R0 K10 [1]
       32 SETTABLEKS                       R4 R3 K7 ["last"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K8 ["isSpacer"]
       37 SETLIST                          R2 R3 1 [1]
       39 SETTABLEKS                       R2 R1 K5 ["_regions"]
       41 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_regions"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 GETTABLEKS                       R4 R1 K0 ["first"]
        4 LOADN                            R5 0
        5 JUMPIFNOTLE                      R5 R4 ; [+29]
        7 LOADB                            R3 0
        8 GETTABLEKS                       R4 R1 K0 ["first"]
       10 GETTABLEKS                       R5 R0 K1 ["_numCells"]
       12 JUMPIFNOTLT                      R4 R5 ; [+22]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R1 K2 ["last"]
       17 LOADN                            R5 0
       18 JUMPIFNOTLE                      R5 R4 ; [+16]
       20 LOADB                            R3 0
       21 GETTABLEKS                       R4 R1 K2 ["last"]
       23 GETTABLEKS                       R5 R0 K1 ["_numCells"]
       25 JUMPIFNOTLT                      R4 R5 ; [+9]
       27 GETTABLEKS                       R4 R1 K2 ["last"]
       29 GETTABLEKS                       R5 R1 K0 ["first"]
       31 JUMPIFLE                         R5 R4 ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 LOADK                            R4 K3 ["CellRenderMask.addCells called with invalid cell range"]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R4 R1 K0 ["first"]
       39 NAMECALL                         R2 R0 K4 ["_findRegion"]
       41 CALL                             R2 2 2
       42 GETTABLEKS                       R6 R1 K2 ["last"]
       44 NAMECALL                         R4 R0 K4 ["_findRegion"]
       46 CALL                             R4 2 2
       47 JUMPIFNOTEQ                      R3 R5 ; [+5]
       49 GETTABLEKS                       R6 R2 K5 ["isSpacer"]
       51 JUMPIF                           R6 ; [+1]
       52 RETURN                           R0 0
       53 NEWTABLE                         R6 0 0
       55 NEWTABLE                         R7 0 0
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R8 R9 K6 ["assign"]
       60 NEWTABLE                         R9 0 0
       62 MOVE                             R10 R1
       63 DUPTABLE                         R11 K7 [{"isSpacer"}]
       64 LOADB                            R12 0
       65 SETTABLEKS                       R12 R11 K5 ["isSpacer"]
       67 CALL                             R8 3 1
       68 GETTABLEKS                       R9 R2 K0 ["first"]
       70 GETTABLEKS                       R10 R8 K0 ["first"]
       72 JUMPIFNOTLT                      R9 R10 ; [+28]
       74 GETTABLEKS                       R9 R2 K5 ["isSpacer"]
       76 JUMPIFNOT                        R9 ; [+20]
       77 DUPTABLE                         R11 K8 [{"first", "last", "isSpacer"}]
       78 GETTABLEKS                       R12 R2 K0 ["first"]
       80 SETTABLEKS                       R12 R11 K0 ["first"]
       82 GETTABLEKS                       R13 R8 K0 ["first"]
       84 SUBK                             R12 R13 K9 [1]
       85 SETTABLEKS                       R12 R11 K2 ["last"]
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K5 ["isSpacer"]
       90 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
       92 MOVE                             R10 R6
       93 GETIMPORT                        R9 K12 [table.insert]
       95 CALL                             R9 2 0
       96 JUMP                             ; [+4]
       97 GETTABLEKS                       R9 R2 K0 ["first"]
       99 SETTABLEKS                       R9 R8 K0 ["first"]
      101 GETTABLEKS                       R9 R4 K2 ["last"]
      103 GETTABLEKS                       R10 R8 K2 ["last"]
      105 JUMPIFNOTLT                      R10 R9 ; [+28]
      107 GETTABLEKS                       R9 R4 K5 ["isSpacer"]
      109 JUMPIFNOT                        R9 ; [+20]
      110 DUPTABLE                         R11 K8 [{"first", "last", "isSpacer"}]
      111 GETTABLEKS                       R13 R8 K2 ["last"]
      113 ADDK                             R12 R13 K9 [1]
      114 SETTABLEKS                       R12 R11 K0 ["first"]
      116 GETTABLEKS                       R12 R4 K2 ["last"]
      118 SETTABLEKS                       R12 R11 K2 ["last"]
      120 LOADB                            R12 1
      121 SETTABLEKS                       R12 R11 K5 ["isSpacer"]
      123 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      125 MOVE                             R10 R7
      126 GETIMPORT                        R9 K12 [table.insert]
      128 CALL                             R9 2 0
      129 JUMP                             ; [+4]
      130 GETTABLEKS                       R9 R4 K2 ["last"]
      132 SETTABLEKS                       R9 R8 K2 ["last"]
      134 GETUPVAL                         R10 2
      135 GETTABLEKS                       R9 R10 K13 ["concat"]
      137 MOVE                             R10 R6
      138 NEWTABLE                         R11 0 1
      140 MOVE                             R12 R8
      141 SETLIST                          R11 R12 1 [1]
      143 MOVE                             R12 R7
      144 CALL                             R9 3 1
      145 SUB                              R11 R5 R3
      146 ADDK                             R10 R11 K9 [1]
      147 GETUPVAL                         R12 2
      148 GETTABLEKS                       R11 R12 K14 ["splice"]
      150 GETTABLEKS                       R12 R0 K15 ["_regions"]
      152 MOVE                             R13 R3
      153 MOVE                             R14 R10
      154 FASTCALL1                        TABLE_UNPACK R9 ; [+3]
      155 MOVE                             R16 R9
      156 GETIMPORT                        R15 K17 [table.unpack]
      158 CALL                             R15 1 -1
      159 CALL                             R11 -1 0
      160 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["first"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["_regions"]
        6 GETTABLE                         R5 R6 R1
        7 GETTABLEKS                       R4 R5 K0 ["first"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+24]
       11 LOADB                            R2 0
       12 GETTABLEKS                       R3 R0 K2 ["last"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K1 ["_regions"]
       17 GETTABLE                         R5 R6 R1
       18 GETTABLEKS                       R4 R5 K2 ["last"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+13]
       22 GETTABLEKS                       R3 R0 K3 ["isSpacer"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K1 ["_regions"]
       27 GETTABLE                         R5 R6 R1
       28 GETTABLEKS                       R4 R5 K3 ["isSpacer"]
       30 JUMPIFEQ                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_numCells"]
        3 GETTABLEKS                       R4 R1 K0 ["_numCells"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+18]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R4 R0 K1 ["_regions"]
       10 LENGTH                           R3 R4
       11 GETTABLEKS                       R5 R1 K1 ["_regions"]
       13 LENGTH                           R4 R5
       14 JUMPIFNOTEQ                      R3 R4 ; [+9]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K2 ["every"]
       19 GETTABLEKS                       R3 R0 K1 ["_regions"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R1
       23 CALL                             R2 2 1
       24 RETURN                           R2 1

PROTO_5:
        0 LOADN                            R2 1
        1 GETTABLEKS                       R4 R0 K0 ["_regions"]
        3 LENGTH                           R3 R4
        4 JUMPIFNOTLE                      R2 R3 ; [+33]
        6 ADD                              R6 R2 R3
        7 DIVK                             R5 R6 K1 [2]
        8 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        9 GETIMPORT                        R4 K4 [math.floor]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R6 R0 K0 ["_regions"]
       14 GETTABLE                         R5 R6 R4
       15 GETTABLEKS                       R6 R5 K5 ["first"]
       17 JUMPIFNOTLE                      R6 R1 ; [+8]
       19 GETTABLEKS                       R6 R5 K6 ["last"]
       21 JUMPIFNOTLE                      R1 R6 ; [+4]
       23 MOVE                             R6 R5
       24 MOVE                             R7 R4
       25 RETURN                           R6 2
       26 GETTABLEKS                       R6 R5 K5 ["first"]
       28 JUMPIFNOTLT                      R1 R6 ; [+3]
       30 SUBK                             R3 R4 K7 [1]
       31 JUMP                             ; [+5]
       32 GETTABLEKS                       R6 R5 K6 ["last"]
       34 JUMPIFNOTLT                      R6 R1 ; [+2]
       36 ADDK                             R2 R4 K7 [1]
       37 JUMPBACK                         ; [-34]
       38 GETUPVAL                         R4 0
       39 LOADB                            R5 0
       40 GETIMPORT                        R6 K10 [string.format]
       42 LOADK                            R7 K11 ["A region was not found containing cellIdx %s"]
       43 FASTCALL1                        TOSTRING R1 ; [+3]
       44 MOVE                             R9 R1
       45 GETIMPORT                        R8 K13 [tostring]
       47 CALL                             R8 1 1
       48 CALL                             R6 2 -1
       49 CALL                             R4 -1 0
       50 LOADNIL                          R4
       51 LOADNIL                          R5
       52 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 NEWTABLE                         R5 1 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R8 R0 K8 ["jsUtils"]
       24 GETTABLEKS                       R7 R8 K9 ["invariant"]
       26 CALL                             R6 1 1
       27 NEWTABLE                         R7 8 0
       29 SETTABLEKS                       R7 R7 K10 ["__index"]
       31 DUPCLOSURE                       R8 K11 [PROTO_0]
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R6
       34 SETTABLEKS                       R8 R7 K12 ["new"]
       36 DUPCLOSURE                       R8 K13 [PROTO_1]
       37 SETTABLEKS                       R8 R7 K14 ["enumerateRegions"]
       39 DUPCLOSURE                       R8 K15 [PROTO_2]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R8 R7 K16 ["addCells"]
       45 DUPCLOSURE                       R8 K17 [PROTO_4]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R8 R7 K18 ["equals"]
       49 DUPCLOSURE                       R8 K19 [PROTO_5]
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R8 R7 K20 ["_findRegion"]
       53 SETTABLEKS                       R7 R5 K21 ["CellRenderMask"]
       55 RETURN                           R5 1
