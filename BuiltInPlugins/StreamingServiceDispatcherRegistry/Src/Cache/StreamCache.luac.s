PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 SETTABLE                         R2 R1 R0
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 0
        7 SETTABLE                         R2 R1 R0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R0
        2 NEWTABLE                         R7 0 0
        4 SETTABLE                         R7 R6 R1
        5 GETUPVAL                         R6 1
        6 DUPTABLE                         R7 K3 [{"handlePacket", "startActiveStream", "streamEnded"}]
        7 SETTABLEKS                       R3 R7 K0 ["handlePacket"]
        9 SETTABLEKS                       R4 R7 K1 ["startActiveStream"]
       11 SETTABLEKS                       R5 R7 K2 ["streamEnded"]
       13 SETTABLE                         R7 R6 R1
       14 JUMPIFNOT                        R2 ; [+15]
       15 GETUPVAL                         R8 2
       16 GETTABLE                         R7 R8 R0
       17 FASTCALL2                        TABLE_INSERT R7 R1 ; [+4]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R6 K6 [table.insert]
       22 CALL                             R6 2 0
       23 GETUPVAL                         R6 3
       24 JUMPIFNOTEQKS                    R6 K7 [""] ; [+5]
       26 SETUPVAL                         R1 3
       27 MOVE                             R6 R4
       28 MOVE                             R7 R0
       29 CALL                             R6 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETUPVAL                         R7 1
        4 GETTABLE                         R6 R7 R0
        5 GETTABLEKS                       R5 R6 K0 ["RequestEnded"]
        7 NOT                              R4 R5
        8 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       10 LOADK                            R5 K1 ["Cannot store packets after the request has ended"]
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R6 1
       15 GETTABLE                         R5 R6 R0
       16 GETTABLE                         R4 R5 R1
       17 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["This function should only be called when FFlagConvAIFixStreamCreationTiming is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R1 R0
       14 LOADK                            R1 K3 [""]
       15 SETUPVAL                         R1 3
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 GETTABLEKS                       R2 R3 K0 ["streamEnded"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R1
        7 GETTABLEKS                       R2 R3 K0 ["streamEnded"]
        9 CALL                             R2 0 0
       10 LOADK                            R2 K1 [""]
       11 SETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 GETTABLE                         R2 R3 R0
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R1
       16 GETUPVAL                         R2 0
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R1
       19 GETIMPORT                        R2 K4 [table.remove]
       21 GETUPVAL                         R4 3
       22 GETTABLE                         R3 R4 R0
       23 LOADN                            R4 1
       24 CALL                             R2 2 0
       25 GETUPVAL                         R4 3
       26 GETTABLE                         R3 R4 R0
       27 GETTABLEN                        R2 R3 1
       28 JUMPIFNOT                        R2 ; [+8]
       29 SETUPVAL                         R2 1
       30 GETUPVAL                         R5 0
       31 GETTABLE                         R4 R5 R2
       32 GETTABLEKS                       R3 R4 K5 ["startActiveStream"]
       34 MOVE                             R4 R0
       35 CALL                             R3 1 0
       36 JUMP                             ; [+26]
       37 GETUPVAL                         R3 4
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+23]
       40 GETUPVAL                         R5 2
       41 GETTABLE                         R4 R5 R0
       42 GETTABLEKS                       R3 R4 K6 ["RequestEnded"]
       44 JUMPIFNOT                        R3 ; [+18]
       45 GETUPVAL                         R4 4
       46 CALL                             R4 0 1
       47 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       49 LOADK                            R5 K7 ["This function should only be called when FFlagConvAIFixStreamCreationTiming is enabled"]
       50 GETIMPORT                        R3 K9 [assert]
       52 CALL                             R3 2 0
       53 GETUPVAL                         R3 2
       54 LOADNIL                          R4
       55 SETTABLE                         R4 R3 R0
       56 GETUPVAL                         R3 3
       57 LOADNIL                          R4
       58 SETTABLE                         R4 R3 R0
       59 LOADK                            R3 K1 [""]
       60 SETUPVAL                         R3 1
       61 LOADNIL                          R3
       62 RETURN                           R3 1
       63 GETUPVAL                         R5 3
       64 GETTABLE                         R4 R5 R0
       65 GETTABLEN                        R3 R4 1
       66 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["This function should only be called when FFlagConvAIFixEmptyBubbleBug is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R2 R3 R0
       10 NOT                              R1 R2
       11 JUMPIF                           R1 ; [+4]
       12 GETUPVAL                         R3 1
       13 GETTABLE                         R2 R3 R0
       14 GETTABLEKS                       R1 R2 K3 ["RequestEnded"]
       16 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R0
        6 GETTABLE                         R3 R4 R1
        7 LENGTH                           R2 R3
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+3]
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R2 K2 [table.remove]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R0
        4 GETTABLE                         R3 R4 R1
        5 LOADN                            R4 1
        6 CALL                             R2 2 1
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R5 R1
        9 GETTABLEKS                       R3 R4 K3 ["handlePacket"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R5 1
       13 GETTABLE                         R4 R5 R1
       14 GETTABLEKS                       R3 R4 K3 ["handlePacket"]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+65]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R1 R2 R0
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 GETTABLE                         R1 R2 R0
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K0 ["RequestEnded"]
       15 GETIMPORT                        R2 K2 [next]
       17 GETUPVAL                         R4 2
       18 GETTABLE                         R3 R4 R0
       19 CALL                             R2 1 1
       20 JUMPIFEQKNIL                     R2 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 GETUPVAL                         R2 3
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+17]
       27 LOADB                            R1 1
       28 GETUPVAL                         R5 2
       29 GETTABLE                         R2 R5 R0
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R7 R8 K3 ["packetExists"]
       36 MOVE                             R8 R0
       37 MOVE                             R9 R5
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+2]
       40 LOADB                            R1 0
       41 JUMP                             ; [+2]
       42 FORGLOOP                         R2 2 ; [-10]
       44 JUMPIFNOT                        R1 ; [+17]
       45 GETUPVAL                         R3 0
       46 CALL                             R3 0 1
       47 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       49 LOADK                            R4 K4 ["This function should only be called when FFlagConvAIFixStreamCreationTiming is enabled"]
       50 GETIMPORT                        R2 K6 [assert]
       52 CALL                             R2 2 0
       53 GETUPVAL                         R2 2
       54 LOADNIL                          R3
       55 SETTABLE                         R3 R2 R0
       56 GETUPVAL                         R2 5
       57 LOADNIL                          R3
       58 SETTABLE                         R3 R2 R0
       59 LOADK                            R2 K7 [""]
       60 SETUPVAL                         R2 6
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 2
       63 GETTABLE                         R2 R3 R0
       64 LOADB                            R3 1
       65 SETTABLEKS                       R3 R2 K0 ["RequestEnded"]
       67 RETURN                           R0 0
       68 GETUPVAL                         R1 2
       69 LOADNIL                          R2
       70 SETTABLE                         R2 R1 R0
       71 GETUPVAL                         R1 5
       72 LOADNIL                          R2
       73 SETTABLE                         R2 R1 R0
       74 LOADK                            R1 K7 [""]
       75 SETUPVAL                         R1 6
       76 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 NEWTABLE                         R0 0 0
        8 SETUPVAL                         R0 2
        9 LOADK                            R0 K0 [""]
       10 SETUPVAL                         R0 3
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["StreamingServiceDispatcherRegistry"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R6 R1 K6 ["Src"]
       13 GETTABLEKS                       R5 R6 K7 ["Flags"]
       15 GETTABLEKS                       R4 R5 K8 ["FFlagConvAIFixEmptyBubbleBug"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R2 R3 K9 ["Get"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R7 R1 K6 ["Src"]
       24 GETTABLEKS                       R6 R7 K7 ["Flags"]
       26 GETTABLEKS                       R5 R6 K10 ["FFlagConvAIFixSpamOnReload"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K9 ["Get"]
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R8 R1 K6 ["Src"]
       35 GETTABLEKS                       R7 R8 K7 ["Flags"]
       37 GETTABLEKS                       R6 R7 K11 ["FFlagConvAIFixStreamCreationTiming"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R4 R5 K9 ["Get"]
       42 NEWTABLE                         R5 0 0
       44 NEWTABLE                         R6 0 0
       46 NEWTABLE                         R7 0 0
       48 LOADK                            R8 K12 [""]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          REF R5
       51 CAPTURE                          REF R6
       52 SETTABLEKS                       R9 R0 K13 ["newRequest"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          REF R8
       56 SETTABLEKS                       R9 R0 K14 ["activeStreamId"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          REF R8
       60 SETTABLEKS                       R9 R0 K15 ["setActiveStreamId"]
       62 NEWCLOSURE                       R9 P3
       63 CAPTURE                          REF R5
       64 CAPTURE                          REF R7
       65 CAPTURE                          REF R6
       66 CAPTURE                          REF R8
       67 SETTABLEKS                       R9 R0 K16 ["requestStreamSubscription"]
       69 NEWCLOSURE                       R9 P4
       70 CAPTURE                          VAL R4
       71 CAPTURE                          REF R5
       72 SETTABLEKS                       R9 R0 K17 ["storeStreamPacket"]
       74 NEWCLOSURE                       R9 P5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          REF R5
       77 CAPTURE                          REF R6
       78 CAPTURE                          REF R8
       79 NEWCLOSURE                       R10 P6
       80 CAPTURE                          REF R7
       81 CAPTURE                          REF R8
       82 CAPTURE                          REF R5
       83 CAPTURE                          REF R6
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R10 R0 K18 ["activeStreamEnded"]
       87 NEWCLOSURE                       R10 P7
       88 CAPTURE                          VAL R2
       89 CAPTURE                          REF R5
       90 SETTABLEKS                       R10 R0 K19 ["isRequestEnded"]
       92 NEWCLOSURE                       R10 P8
       93 CAPTURE                          REF R5
       94 SETTABLEKS                       R10 R0 K20 ["packetExists"]
       96 NEWCLOSURE                       R10 P9
       97 CAPTURE                          REF R5
       98 CAPTURE                          REF R7
       99 SETTABLEKS                       R10 R0 K21 ["handleEarliestPacketForStream"]
      101 NEWCLOSURE                       R10 P10
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R3
      104 CAPTURE                          REF R5
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R0
      107 CAPTURE                          REF R6
      108 CAPTURE                          REF R8
      109 SETTABLEKS                       R10 R0 K22 ["requestEnded"]
      111 NEWCLOSURE                       R10 P11
      112 CAPTURE                          REF R5
      113 CAPTURE                          REF R6
      114 CAPTURE                          REF R7
      115 CAPTURE                          REF R8
      116 SETTABLEKS                       R10 R0 K23 ["clear"]
      118 NEWCLOSURE                       R10 P12
      119 CAPTURE                          REF R5
      120 SETTABLEKS                       R10 R0 K24 ["getStreamCache"]
      122 CLOSEUPVALS                      R5
      123 RETURN                           R0 1
