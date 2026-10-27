PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["MAX_WIDTH"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["COMPACT_MIN_WIDTH"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["RESIZE_HANDLE_WIDTH"]
       12 SUB                              R4 R0 R5
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["MAX_BODY_WIDTH_RATIO"]
       16 MUL                              R3 R4 R5
       17 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       19 GETIMPORT                        R1 K7 [math.max]
       21 CALL                             R1 2 1
       22 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R3 R0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["getMaxWidth"]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 -1
        6 FASTCALL                         MATH_MIN ; [+2]
        7 GETIMPORT                        R2 K3 [math.min]
        9 CALL                             R2 -1 1
       10 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMaxWidth"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["MIN_WIDTH"]
        8 JUMPIFNOTLT                      R1 R3 ; [+5]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["COMPACT_MIN_WIDTH"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K1 ["MIN_WIDTH"]
       17 MOVE                             R3 R2
       18 MOVE                             R4 R1
       19 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADN                            R1 300
        4 SETTABLEKS                       R1 R0 K0 ["DEFAULT_WIDTH"]
        6 LOADN                            R1 420
        7 SETTABLEKS                       R1 R0 K1 ["MAX_WIDTH"]
        9 LOADN                            R1 240
       10 SETTABLEKS                       R1 R0 K2 ["MIN_WIDTH"]
       12 LOADN                            R1 160
       13 SETTABLEKS                       R1 R0 K3 ["COMPACT_MIN_WIDTH"]
       15 LOADK                            R1 K4 [0.6]
       16 SETTABLEKS                       R1 R0 K5 ["MAX_BODY_WIDTH_RATIO"]
       18 LOADN                            R1 6
       19 SETTABLEKS                       R1 R0 K6 ["RESIZE_HANDLE_WIDTH"]
       21 DUPCLOSURE                       R1 K7 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K8 ["getMaxWidth"]
       25 DUPCLOSURE                       R1 K9 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K10 ["getRenderedWidth"]
       29 DUPCLOSURE                       R1 K11 [PROTO_2]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K12 ["getResizeBounds"]
       33 RETURN                           R0 1
