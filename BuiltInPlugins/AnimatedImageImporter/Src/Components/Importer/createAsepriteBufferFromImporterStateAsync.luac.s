PROTO_0:
        0 GETUPVAL                         R2 0
        1 ADD                              R1 R2 R0
        2 GETIMPORT                        R2 K2 [buffer.len]
        4 GETUPVAL                         R3 1
        5 CALL                             R2 1 1
        6 JUMPIFNOTLE                      R2 R1 ; [+28]
        8 GETIMPORT                        R1 K4 [buffer.create]
       10 LOADN                            R3 2
       11 GETIMPORT                        R7 K2 [buffer.len]
       13 GETUPVAL                         R8 1
       14 CALL                             R7 1 1
       15 ADD                              R6 R7 R0
       16 FASTCALL2K                       MATH_LOG R6 K5 ; [+4]
       18 LOADK                            R7 K5 [2]
       19 GETIMPORT                        R5 K8 [math.log]
       21 CALL                             R5 2 1
       22 FASTCALL1                        MATH_CEIL R5 ; [+2]
       23 GETIMPORT                        R4 K10 [math.ceil]
       25 CALL                             R4 1 1
       26 POW                              R2 R3 R4
       27 CALL                             R1 1 1
       28 GETIMPORT                        R2 K12 [buffer.copy]
       30 MOVE                             R3 R1
       31 LOADN                            R4 0
       32 GETUPVAL                         R5 1
       33 CALL                             R2 3 0
       34 SETUPVAL                         R1 1
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 FASTCALL3                        BUFFER_WRITEU8 R2 R3 R0
        7 MOVE                             R4 R0
        8 GETIMPORT                        R1 K2 [buffer.writeu8]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 ADDK                             R1 R1 K3 [1]
       13 SETUPVAL                         R1 2
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 FASTCALL3                        BUFFER_WRITEU16 R2 R3 R0
        7 MOVE                             R4 R0
        8 GETIMPORT                        R1 K2 [buffer.writeu16]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 ADDK                             R1 R1 K3 [2]
       13 SETUPVAL                         R1 2
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 FASTCALL3                        BUFFER_WRITEU16 R2 R3 R0
        7 MOVE                             R4 R0
        8 GETIMPORT                        R1 K2 [buffer.writei16]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 ADDK                             R1 R1 K3 [2]
       13 SETUPVAL                         R1 2
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 4
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 FASTCALL3                        BUFFER_WRITEU32 R2 R3 R0
        7 MOVE                             R4 R0
        8 GETIMPORT                        R1 K2 [buffer.writeu32]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 ADDK                             R1 R1 K3 [4]
       13 SETUPVAL                         R1 2
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 4
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 FASTCALL3                        BUFFER_WRITEU32 R2 R3 R0
        7 MOVE                             R4 R0
        8 GETIMPORT                        R1 K2 [buffer.writei32]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 ADDK                             R1 R1 K3 [4]
       13 SETUPVAL                         R1 2
       14 RETURN                           R0 0

PROTO_6:
        0 LENGTH                           R1 R0
        1 GETUPVAL                         R2 0
        2 LOADN                            R3 2
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 FASTCALL3                        BUFFER_WRITEU16 R3 R4 R1
        8 MOVE                             R5 R1
        9 GETIMPORT                        R2 K2 [buffer.writeu16]
       11 CALL                             R2 3 0
       12 GETUPVAL                         R2 2
       13 ADDK                             R2 R2 K3 [2]
       14 SETUPVAL                         R2 2
       15 GETIMPORT                        R1 K6 [string.gmatch]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K7 ["."]
       19 CALL                             R1 2 3
       20 FORGPREP                         R1
       21 FASTCALL1                        STRING_BYTE R4 ; [+3]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R6 K9 [string.byte]
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 0
       27 LOADN                            R8 1
       28 CALL                             R7 1 0
       29 GETUPVAL                         R8 1
       30 GETUPVAL                         R9 2
       31 FASTCALL3                        BUFFER_WRITEU8 R8 R9 R6
       33 MOVE                             R10 R6
       34 GETIMPORT                        R7 K11 [buffer.writeu8]
       36 CALL                             R7 3 0
       37 GETUPVAL                         R7 2
       38 ADDK                             R7 R7 K12 [1]
       39 SETUPVAL                         R7 2
       40 FORGLOOP                         R1 1 ; [-20]
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [buffer.len]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 0
        6 GETIMPORT                        R1 K4 [buffer.copy]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R2 K2 [buffer.len]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 ADD                              R1 R1 R2
       18 SETUPVAL                         R1 2
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 ADD                              R1 R1 R0
        5 SETUPVAL                         R1 1
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 1
        4 SUB                              R3 R4 R5
        5 FASTCALL                         BUFFER_WRITEU32 ; [+2]
        6 GETIMPORT                        R0 K2 [buffer.writeu32]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADN                            R2 4
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 0
        6 LOADN                            R4 0
        7 FASTCALL                         BUFFER_WRITEU32 ; [+2]
        8 GETIMPORT                        R1 K2 [buffer.writeu32]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 0
       12 ADDK                             R1 R1 K3 [4]
       13 SETUPVAL                         R1 0
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K2 [buffer.create]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [buffer.copy]
        6 MOVE                             R2 R0
        7 LOADN                            R3 0
        8 GETUPVAL                         R4 1
        9 LOADN                            R5 0
       10 GETUPVAL                         R6 0
       11 CALL                             R1 5 0
       12 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R0 K2 [buffer.create]
        2 LOADN                            R1 256
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          REF R1
        7 CAPTURE                          REF R0
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          REF R0
       11 CAPTURE                          REF R1
       12 NEWCLOSURE                       R4 P2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          REF R0
       15 CAPTURE                          REF R1
       16 NEWCLOSURE                       R5 P3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          REF R0
       19 CAPTURE                          REF R1
       20 NEWCLOSURE                       R6 P4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          REF R0
       23 CAPTURE                          REF R1
       24 NEWCLOSURE                       R7 P5
       25 CAPTURE                          VAL R2
       26 CAPTURE                          REF R0
       27 CAPTURE                          REF R1
       28 NEWCLOSURE                       R8 P6
       29 CAPTURE                          VAL R2
       30 CAPTURE                          REF R0
       31 CAPTURE                          REF R1
       32 NEWCLOSURE                       R9 P7
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R0
       35 CAPTURE                          REF R1
       36 NEWCLOSURE                       R10 P8
       37 CAPTURE                          VAL R2
       38 CAPTURE                          REF R1
       39 NEWCLOSURE                       R11 P9
       40 CAPTURE                          REF R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          REF R0
       43 NEWCLOSURE                       R12 P10
       44 CAPTURE                          REF R1
       45 CAPTURE                          REF R0
       46 DUPTABLE                         R13 K13 [{"writeByte", "writeWord", "writeShort", "writeDword", "writeLong", "writeString", "writeBuffer", "pad", "prepareSizeDword", "finalize"}]
       47 SETTABLEKS                       R3 R13 K3 ["writeByte"]
       49 SETTABLEKS                       R4 R13 K4 ["writeWord"]
       51 SETTABLEKS                       R5 R13 K5 ["writeShort"]
       53 SETTABLEKS                       R6 R13 K6 ["writeDword"]
       55 SETTABLEKS                       R7 R13 K7 ["writeLong"]
       57 SETTABLEKS                       R8 R13 K8 ["writeString"]
       59 SETTABLEKS                       R9 R13 K9 ["writeBuffer"]
       61 SETTABLEKS                       R10 R13 K10 ["pad"]
       63 SETTABLEKS                       R11 R13 K11 ["prepareSizeDword"]
       65 SETTABLEKS                       R12 R13 K12 ["finalize"]
       67 CLOSEUPVALS                      R0
       68 RETURN                           R13 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["sources"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R8 R1
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R11 R6 K1 ["content"]
       11 NAMECALL                         R9 R9 K2 ["CreateEditableImageAsync"]
       13 CALL                             R9 2 -1
       14 FASTCALL                         TABLE_INSERT ; [+2]
       15 GETIMPORT                        R7 K5 [table.insert]
       17 CALL                             R7 -1 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["sources"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R9 R0 K1 ["sourceIndexToClipNumbers"]
       11 GETTABLE                         R8 R9 R6
       12 JUMPIFNOTEQKNIL                  R8 ; [+9]
       14 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       16 MOVE                             R10 R1
       17 MOVE                             R11 R6
       18 GETIMPORT                        R9 K4 [table.insert]
       20 CALL                             R9 2 0
       21 JUMP                             ; [+23]
       22 GETTABLE                         R9 R2 R8
       23 JUMPIF                           R9 ; [+21]
       24 LOADB                            R9 1
       25 SETTABLE                         R9 R2 R8
       26 GETTABLEKS                       R9 R0 K0 ["sources"]
       28 LOADNIL                          R10
       29 LOADNIL                          R11
       30 FORGPREP                         R9
       31 GETTABLEKS                       R15 R0 K1 ["sourceIndexToClipNumbers"]
       33 GETTABLE                         R14 R15 R12
       34 JUMPIFNOTEQ                      R14 R8 ; [+8]
       36 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       38 MOVE                             R15 R1
       39 MOVE                             R16 R12
       40 GETIMPORT                        R14 K4 [table.insert]
       42 CALL                             R14 2 0
       43 FORGLOOP                         R9 1 ; [-13]
       45 FORGLOOP                         R3 1 ; [-37]
       47 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["writeWord"]
        2 LOADK                            R4 K1 [42464]
        3 CALL                             R3 1 0
        4 GETTABLEKS                       R3 R0 K0 ["writeWord"]
        6 GETTABLEKS                       R5 R1 K2 ["sources"]
        8 LENGTH                           R4 R5
        9 CALL                             R3 1 0
       10 GETIMPORT                        R3 K5 [Vector2.zero]
       12 MOVE                             R4 R2
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R11 R8 K6 ["Size"]
       18 NAMECALL                         R9 R3 K7 ["Max"]
       20 CALL                             R9 2 1
       21 MOVE                             R3 R9
       22 FORGLOOP                         R4 2 ; [-7]
       24 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       26 GETTABLEKS                       R5 R3 K8 ["X"]
       28 CALL                             R4 1 0
       29 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       31 GETTABLEKS                       R5 R3 K9 ["Y"]
       33 CALL                             R4 1 0
       34 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       36 LOADN                            R5 32
       37 CALL                             R4 1 0
       38 GETTABLEKS                       R4 R0 K10 ["writeDword"]
       40 LOADN                            R5 0
       41 CALL                             R4 1 0
       42 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       44 LOADN                            R5 0
       45 CALL                             R4 1 0
       46 GETTABLEKS                       R4 R0 K10 ["writeDword"]
       48 LOADN                            R5 0
       49 CALL                             R4 1 0
       50 GETTABLEKS                       R4 R0 K10 ["writeDword"]
       52 LOADN                            R5 0
       53 CALL                             R4 1 0
       54 GETTABLEKS                       R4 R0 K11 ["writeByte"]
       56 LOADN                            R5 0
       57 CALL                             R4 1 0
       58 GETTABLEKS                       R4 R0 K12 ["pad"]
       60 LOADN                            R5 3
       61 CALL                             R4 1 0
       62 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       64 LOADN                            R5 0
       65 CALL                             R4 1 0
       66 GETTABLEKS                       R4 R0 K11 ["writeByte"]
       68 LOADN                            R5 1
       69 CALL                             R4 1 0
       70 GETTABLEKS                       R4 R0 K11 ["writeByte"]
       72 LOADN                            R5 1
       73 CALL                             R4 1 0
       74 GETTABLEKS                       R4 R0 K13 ["writeShort"]
       76 LOADN                            R5 0
       77 CALL                             R4 1 0
       78 GETTABLEKS                       R4 R0 K13 ["writeShort"]
       80 LOADN                            R5 0
       81 CALL                             R4 1 0
       82 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       84 LOADN                            R5 0
       85 CALL                             R4 1 0
       86 GETTABLEKS                       R4 R0 K0 ["writeWord"]
       88 LOADN                            R5 0
       89 CALL                             R4 1 0
       90 GETTABLEKS                       R4 R0 K12 ["pad"]
       92 LOADN                            R5 84
       93 CALL                             R4 1 0
       94 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["prepareSizeDword"]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R0 K1 ["writeWord"]
        5 LOADN                            R3 8196
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R0 K1 ["writeWord"]
        9 LOADN                            R3 1
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K1 ["writeWord"]
       13 LOADN                            R3 0
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K1 ["writeWord"]
       17 LOADN                            R3 0
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R2 R0 K1 ["writeWord"]
       21 LOADN                            R3 0
       22 CALL                             R2 1 0
       23 GETTABLEKS                       R2 R0 K1 ["writeWord"]
       25 LOADN                            R3 0
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R0 K1 ["writeWord"]
       29 LOADN                            R3 0
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R0 K2 ["writeByte"]
       33 LOADN                            R3 0
       34 CALL                             R2 1 0
       35 GETTABLEKS                       R2 R0 K3 ["pad"]
       37 LOADN                            R3 3
       38 CALL                             R2 1 0
       39 GETTABLEKS                       R2 R0 K4 ["writeString"]
       41 LOADK                            R3 K5 ["Layer"]
       42 CALL                             R2 1 0
       43 MOVE                             R2 R1
       44 CALL                             R2 0 0
       45 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["prepareSizeDword"]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R0 K1 ["writeWord"]
        5 LOADN                            R5 8216
        6 CALL                             R4 1 0
        7 GETTABLEKS                       R4 R0 K1 ["writeWord"]
        9 GETTABLEKS                       R6 R1 K2 ["clips"]
       11 LENGTH                           R5 R6
       12 CALL                             R4 1 0
       13 GETTABLEKS                       R4 R0 K3 ["pad"]
       15 LOADN                            R5 8
       16 CALL                             R4 1 0
       17 GETTABLEKS                       R4 R1 K2 ["clips"]
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADNIL                          R9
       23 LOADN                            R10 0
       24 MOVE                             R11 R2
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 GETTABLEKS                       R17 R1 K4 ["sourceIndexToClipNumbers"]
       30 GETTABLE                         R16 R17 R15
       31 GETTABLEKS                       R17 R8 K5 ["number"]
       33 JUMPIFNOTEQ                      R16 R17 ; [+5]
       35 JUMPIFNOTEQKNIL                  R9 ; [+2]
       37 SUBK                             R9 R14 K6 [1]
       38 ADDK                             R10 R10 K6 [1]
       39 FORGLOOP                         R11 2 ; [-12]
       41 JUMPIFNOTEQKNIL                  R9 ; [+2]
       43 LOADB                            R12 0 +1
       44 LOADB                            R12 1
       45 FASTCALL2K                       ASSERT R12 K7 ; [+4]
       47 LOADK                            R13 K7 ["frameCount == 0"]
       48 GETIMPORT                        R11 K9 [assert]
       50 CALL                             R11 2 0
       51 GETTABLEKS                       R11 R0 K1 ["writeWord"]
       53 MOVE                             R12 R9
       54 CALL                             R11 1 0
       55 GETTABLEKS                       R11 R0 K1 ["writeWord"]
       57 ADD                              R13 R9 R10
       58 SUBK                             R12 R13 K6 [1]
       59 CALL                             R11 1 0
       60 GETTABLEKS                       R11 R0 K10 ["writeByte"]
       62 LOADN                            R12 0
       63 CALL                             R11 1 0
       64 GETTABLEKS                       R11 R0 K1 ["writeWord"]
       66 LOADN                            R12 0
       67 CALL                             R11 1 0
       68 GETTABLEKS                       R11 R0 K3 ["pad"]
       70 LOADN                            R12 6
       71 CALL                             R11 1 0
       72 GETTABLEKS                       R11 R0 K10 ["writeByte"]
       74 LOADN                            R12 0
       75 CALL                             R11 1 0
       76 GETTABLEKS                       R11 R0 K10 ["writeByte"]
       78 LOADN                            R12 0
       79 CALL                             R11 1 0
       80 GETTABLEKS                       R11 R0 K10 ["writeByte"]
       82 LOADN                            R12 0
       83 CALL                             R11 1 0
       84 GETTABLEKS                       R11 R0 K3 ["pad"]
       86 LOADN                            R12 1
       87 CALL                             R11 1 0
       88 GETTABLEKS                       R11 R0 K11 ["writeString"]
       90 GETTABLEKS                       R12 R8 K12 ["name"]
       92 CALL                             R11 1 0
       93 FORGLOOP                         R4 2 ; [-72]
       95 MOVE                             R4 R3
       96 CALL                             R4 0 0
       97 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["prepareSizeDword"]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K1 ["writeWord"]
        5 LOADN                            R4 8197
        6 CALL                             R3 1 0
        7 GETTABLEKS                       R3 R0 K1 ["writeWord"]
        9 LOADN                            R4 0
       10 CALL                             R3 1 0
       11 GETTABLEKS                       R3 R0 K2 ["writeShort"]
       13 LOADN                            R4 0
       14 CALL                             R3 1 0
       15 GETTABLEKS                       R3 R0 K2 ["writeShort"]
       17 LOADN                            R4 0
       18 CALL                             R3 1 0
       19 GETTABLEKS                       R3 R0 K3 ["writeByte"]
       21 LOADN                            R4 255
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R3 R0 K1 ["writeWord"]
       25 LOADN                            R4 0
       26 CALL                             R3 1 0
       27 GETTABLEKS                       R3 R0 K2 ["writeShort"]
       29 LOADN                            R4 0
       30 CALL                             R3 1 0
       31 GETTABLEKS                       R3 R0 K4 ["pad"]
       33 LOADN                            R4 5
       34 CALL                             R3 1 0
       35 GETTABLEKS                       R3 R0 K1 ["writeWord"]
       37 GETTABLEKS                       R4 R1 K5 ["Size"]
       39 GETTABLEKS                       R4 R4 K6 ["X"]
       41 CALL                             R3 1 0
       42 GETTABLEKS                       R3 R0 K1 ["writeWord"]
       44 GETTABLEKS                       R4 R1 K5 ["Size"]
       46 GETTABLEKS                       R4 R4 K7 ["Y"]
       48 CALL                             R3 1 0
       49 GETTABLEKS                       R3 R0 K8 ["writeBuffer"]
       51 GETIMPORT                        R6 K11 [Vector2.zero]
       53 GETTABLEKS                       R7 R1 K5 ["Size"]
       55 NAMECALL                         R4 R1 K12 ["ReadPixelsBuffer"]
       57 CALL                             R4 3 -1
       58 CALL                             R3 -1 0
       59 MOVE                             R3 R2
       60 CALL                             R3 0 0
       61 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 NEWTABLE                         R3 0 0
        8 GETTABLEKS                       R4 R0 K0 ["clips"]
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K1 ["number"]
       15 GETTABLEKS                       R10 R8 K2 ["fps"]
       17 SETTABLE                         R10 R3 R9
       18 FORGLOOP                         R4 2 ; [-6]
       20 GETUPVAL                         R4 2
       21 CALL                             R4 0 1
       22 GETTABLEKS                       R5 R4 K3 ["prepareSizeDword"]
       24 CALL                             R5 0 1
       25 GETUPVAL                         R6 3
       26 MOVE                             R7 R4
       27 MOVE                             R8 R0
       28 MOVE                             R9 R1
       29 CALL                             R6 3 0
       30 LOADB                            R6 0
       31 MOVE                             R7 R2
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETTABLEKS                       R13 R0 K4 ["sourceIndexToClipNumbers"]
       37 GETTABLE                         R12 R13 R11
       38 JUMPIFNOT                        R12 ; [+2]
       39 GETTABLE                         R13 R3 R12
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R13 R0 K5 ["unclippedFps"]
       43 GETTABLEKS                       R14 R4 K3 ["prepareSizeDword"]
       45 CALL                             R14 0 1
       46 GETTABLEKS                       R15 R4 K6 ["writeWord"]
       48 LOADK                            R16 K7 [61946]
       49 CALL                             R15 1 0
       50 GETTABLEKS                       R15 R4 K6 ["writeWord"]
       52 JUMPIFNOT                        R6 ; [+2]
       53 LOADN                            R16 1
       54 JUMP                             ; [+1]
       55 LOADN                            R16 3
       56 CALL                             R15 1 0
       57 GETTABLEKS                       R15 R4 K6 ["writeWord"]
       59 DIVRK                            R18 K9 [1] R13
       60 MULK                             R17 R18 K8 [1000]
       61 FASTCALL1                        MATH_FLOOR R17 ; [+2]
       62 GETIMPORT                        R16 K12 [math.floor]
       64 CALL                             R16 1 1
       65 CALL                             R15 1 0
       66 GETTABLEKS                       R15 R4 K13 ["pad"]
       68 LOADN                            R16 2
       69 CALL                             R15 1 0
       70 GETTABLEKS                       R15 R4 K14 ["writeDword"]
       72 LOADN                            R16 0
       73 CALL                             R15 1 0
       74 JUMPIF                           R6 ; [+9]
       75 LOADB                            R6 1
       76 GETUPVAL                         R15 4
       77 MOVE                             R16 R4
       78 CALL                             R15 1 0
       79 GETUPVAL                         R15 5
       80 MOVE                             R16 R4
       81 MOVE                             R17 R0
       82 MOVE                             R18 R2
       83 CALL                             R15 3 0
       84 GETUPVAL                         R15 6
       85 MOVE                             R16 R4
       86 GETTABLE                         R17 R1 R11
       87 CALL                             R15 2 0
       88 MOVE                             R15 R14
       89 CALL                             R15 0 0
       90 FORGLOOP                         R7 2 ; [-56]
       92 MOVE                             R7 R5
       93 CALL                             R7 0 0
       94 MOVE                             R7 R1
       95 LOADNIL                          R8
       96 LOADNIL                          R9
       97 FORGPREP                         R7
       98 NAMECALL                         R12 R11 K15 ["Destroy"]
      100 CALL                             R12 1 0
      101 FORGLOOP                         R7 2 ; [-4]
      103 GETTABLEKS                       R7 R4 K16 ["finalize"]
      105 CALL                             R7 0 -1
      106 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_12]
       21 DUPCLOSURE                       R4 K13 [PROTO_13]
       22 CAPTURE                          VAL R1
       23 DUPCLOSURE                       R5 K14 [PROTO_14]
       24 DUPCLOSURE                       R6 K15 [PROTO_15]
       25 DUPCLOSURE                       R7 K16 [PROTO_16]
       26 DUPCLOSURE                       R8 K17 [PROTO_17]
       27 DUPCLOSURE                       R9 K18 [PROTO_18]
       28 DUPCLOSURE                       R10 K19 [PROTO_19]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R9
       36 RETURN                           R10 1
