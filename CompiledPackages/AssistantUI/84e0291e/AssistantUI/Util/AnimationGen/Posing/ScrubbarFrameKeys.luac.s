PROTO_0:
        0 LOADN                            R2 0
        1 GETUPVAL                         R5 0
        2 MUL                              R4 R0 R5
        3 FASTCALL1                        MATH_ROUND R4 ; [+2]
        4 GETIMPORT                        R3 K2 [math.round]
        6 CALL                             R3 1 1
        7 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        9 GETIMPORT                        R1 K4 [math.max]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K0 ["timeToFrameIndex"]
       11 MOVE                             R9 R7
       12 CALL                             R8 1 1
       13 GETTABLE                         R9 R1 R8
       14 JUMPIF                           R9 ; [+9]
       15 LOADB                            R9 1
       16 SETTABLE                         R9 R1 R8
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R10 R2
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K3 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R3 2 ; [-17]
       26 GETIMPORT                        R3 K5 [table.sort]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R1 1
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 FASTCALL1                        TYPEOF R5 ; [+3]
       10 MOVE                             R9 R5
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 JUMPIFNOTEQKS                    R8 K2 ["number"] ; [+3]
       16 MOVE                             R7 R5
       17 JUMP                             ; [+14]
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R9 R5
       20 GETIMPORT                        R8 K1 [typeof]
       22 CALL                             R8 1 1
       23 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+7]
       25 FASTCALL1                        TONUMBER R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K5 [tonumber]
       29 CALL                             R7 1 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 JUMPIFEQKNIL                     R7 ; [+16]
       34 LOADN                            R8 0
       35 JUMPIFNOTLE                      R8 R7 ; [+13]
       37 LOADK                            R8 K6 [Infinity]
       38 JUMPIFNOTLT                      R7 R8 ; [+10]
       40 FASTCALL1                        MATH_ROUND R7 ; [+3]
       41 MOVE                             R9 R7
       42 GETIMPORT                        R8 K9 [math.round]
       44 CALL                             R8 1 1
       45 GETTABLE                         R9 R1 R8
       46 JUMPIFNOTEQKNIL                  R9 ; [+2]
       48 SETTABLE                         R6 R1 R8
       49 FORGLOOP                         R2 2 ; [-41]
       51 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R1 1
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K0 ["timeToFrameIndex"]
       12 MOVE                             R8 R5
       13 CALL                             R7 1 1
       14 GETTABLE                         R8 R1 R7
       15 JUMPIFNOTEQKNIL                  R8 ; [+2]
       17 SETTABLE                         R6 R1 R7
       18 FORGLOOP                         R2 2 ; [-10]
       20 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLE                         R2 R0 R1
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 RETURN                           R1 1
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 FASTCALL1                        TYPEOF R5 ; [+3]
       13 MOVE                             R9 R5
       14 GETIMPORT                        R8 K1 [typeof]
       16 CALL                             R8 1 1
       17 JUMPIFNOTEQKS                    R8 K2 ["number"] ; [+3]
       19 MOVE                             R7 R5
       20 JUMP                             ; [+14]
       21 FASTCALL1                        TYPEOF R5 ; [+3]
       22 MOVE                             R9 R5
       23 GETIMPORT                        R8 K1 [typeof]
       25 CALL                             R8 1 1
       26 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+7]
       28 FASTCALL1                        TONUMBER R5 ; [+3]
       29 MOVE                             R8 R5
       30 GETIMPORT                        R7 K5 [tonumber]
       32 CALL                             R7 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 JUMPIFEQKNIL                     R7 ; [+9]
       37 ADDK                             R9 R7 K6 [0.5]
       38 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       39 GETIMPORT                        R8 K9 [math.floor]
       41 CALL                             R8 1 1
       42 JUMPIFNOTEQ                      R8 R1 ; [+2]
       44 RETURN                           R5 1
       45 FORGLOOP                         R2 1 ; [-34]
       47 LOADNIL                          R2
       48 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenConstants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["DEFAULT_GENERATION_FPS"]
       18 NEWTABLE                         R3 8 0
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K11 ["timeToFrameIndex"]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R4 R3 K13 ["frameIndexToTime"]
       28 DUPCLOSURE                       R4 K14 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K15 ["keyframeFrameIndices"]
       32 DUPCLOSURE                       R4 K16 [PROTO_3]
       33 SETTABLEKS                       R4 R3 K17 ["normalizeFrameMap"]
       35 DUPCLOSURE                       R4 K18 [PROTO_4]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R3 K19 ["remapStringListByFrameIndex"]
       39 DUPCLOSURE                       R4 K20 [PROTO_5]
       40 SETTABLEKS                       R4 R3 K21 ["resolveFrameIndex"]
       42 RETURN                           R3 1
