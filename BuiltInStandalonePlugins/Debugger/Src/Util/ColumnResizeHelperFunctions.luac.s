PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R7 1
        3 LENGTH                           R5 R2
        4 LOADN                            R6 1
        5 FORNPREP                         R5
        6 GETTABLE                         R8 R2 R7
        7 GETTABLE                         R9 R3 R7
        8 SETTABLE                         R9 R4 R8
        9 FORNLOOP                         R5
       10 LENGTH                           R8 R2
       11 ADDK                             R7 R8 K0 [1]
       12 MOVE                             R5 R0
       13 LOADN                            R6 1
       14 FORNPREP                         R5
       15 LENGTH                           R10 R2
       16 SUB                              R9 R7 R10
       17 GETTABLE                         R8 R1 R9
       18 GETTABLE                         R9 R3 R7
       19 SETTABLE                         R9 R4 R8
       20 FORNLOOP                         R5
       21 RETURN                           R4 1

PROTO_1:
        0 LOADN                            R5 0
        1 ADDK                             R8 R0 K0 [1]
        2 MOVE                             R6 R1
        3 LOADN                            R7 1
        4 FORNPREP                         R6
        5 SUB                              R11 R8 R0
        6 GETTABLE                         R10 R2 R11
        7 GETTABLE                         R9 R4 R10
        8 JUMPIFNOTEQKNIL                  R9 ; [+7]
       10 SUB                              R12 R8 R0
       11 GETTABLE                         R11 R2 R12
       12 GETTABLE                         R10 R3 R11
       13 GETTABLEKS                       R9 R10 K1 ["Scale"]
       15 ADD                              R5 R5 R9
       16 FORNLOOP                         R6
       17 RETURN                           R5 1

PROTO_2:
        0 NEWTABLE                         R5 0 0
        2 SUBRK                            R6 R0 K1 ["UDim"]
        3 LOADN                            R9 1
        4 MOVE                             R7 R0
        5 LOADN                            R8 1
        6 FORNPREP                         R7
        7 GETTABLE                         R11 R3 R9
        8 JUMPIFNOT                        R11 ; [+2]
        9 GETTABLE                         R10 R3 R9
       10 JUMP                             ; [+3]
       11 LENGTH                           R12 R3
       12 SUB                              R11 R9 R12
       13 GETTABLE                         R10 R4 R11
       14 GETIMPORT                        R11 K3 [UDim.new]
       16 GETTABLE                         R14 R2 R10
       17 GETTABLEKS                       R13 R14 K4 ["Scale"]
       19 DIV                              R12 R13 R6
       20 LOADN                            R13 0
       21 CALL                             R11 2 1
       22 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       24 MOVE                             R13 R5
       25 MOVE                             R14 R11
       26 GETIMPORT                        R12 K7 [table.insert]
       28 CALL                             R12 2 0
       29 FORNLOOP                         R7
       30 RETURN                           R5 1

PROTO_3:
        0 NEWTABLE                         R5 0 0
        2 SUB                              R6 R0 R1
        3 GETIMPORT                        R7 K2 [UDim.new]
        5 DIVRK                            R8 R3 K0 ["UDim"]
        6 LOADN                            R9 0
        7 CALL                             R7 2 1
        8 LOADN                            R10 1
        9 MOVE                             R8 R0
       10 LOADN                            R9 1
       11 FORNPREP                         R8
       12 GETTABLE                         R12 R4 R10
       13 JUMPIFNOT                        R12 ; [+2]
       14 GETTABLE                         R11 R4 R10
       15 JUMP                             ; [+3]
       16 LENGTH                           R13 R4
       17 SUB                              R12 R10 R13
       18 GETTABLE                         R11 R3 R12
       19 GETTABLE                         R12 R2 R11
       20 JUMPIFNOTEQKNIL                  R12 ; [+9]
       22 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
       24 MOVE                             R13 R5
       25 MOVE                             R14 R7
       26 GETIMPORT                        R12 K6 [table.insert]
       28 CALL                             R12 2 0
       29 JUMP                             ; [+20]
       30 GETTABLEKS                       R13 R7 K7 ["Scale"]
       32 MUL                              R12 R6 R13
       33 GETTABLE                         R15 R2 R11
       34 GETTABLEKS                       R14 R15 K7 ["Scale"]
       36 SUBRK                            R15 R3 K12 [NULL]
       37 MUL                              R13 R14 R15
       38 GETIMPORT                        R14 K2 [UDim.new]
       40 MOVE                             R15 R13
       41 LOADN                            R16 0
       42 CALL                             R14 2 1
       43 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
       45 MOVE                             R16 R5
       46 MOVE                             R17 R14
       47 GETIMPORT                        R15 K6 [table.insert]
       49 CALL                             R15 2 0
       50 FORNLOOP                         R8
       51 RETURN                           R5 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R9 R6 K2 ["Scale"]
        9 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K5 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 [inext] ; [-9]
       17 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 MOVE                             R8 R1
        8 GETIMPORT                        R9 K4 [UDim.new]
       10 MOVE                             R10 R6
       11 LOADN                            R11 0
       12 CALL                             R9 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R7 K7 [table.insert]
       16 CALL                             R7 -1 0
       17 FORGLOOP                         R2 2 [inext] ; [-11]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["fetchOldColumnSizes"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["fetchDeletedColumnsSize"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["updatedSizesAfterRemovingColumns"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["updatedSizesAfterAddingColumns"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["fetchScaleFromColumnSizes"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["fetchSizesFromColumnScales"]
       21 RETURN                           R0 1
