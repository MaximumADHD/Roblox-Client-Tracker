PROTO_0:
        0 LOADK                            R4 K0 ["%s"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [utf8.offset]
        2 MOVE                             R3 R0
        3 ADDK                             R4 R1 K3 [1]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 SUBK                             R3 R2 K3 [1]
        8 RETURN                           R3 1
        9 LENGTH                           R3 R0
       10 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R5 4 0
        2 GETUPVAL                         R6 0
        3 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
        5 GETIMPORT                        R4 K1 [setmetatable]
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R0 R4 K2 ["_text"]
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 MOVE                             R9 R3
       13 NAMECALL                         R5 R4 K3 ["_guessInitialBreak"]
       15 CALL                             R5 4 1
       16 SETTABLEKS                       R5 R4 K4 ["_initialGuess"]
       18 GETTABLEKS                       R5 R4 K4 ["_initialGuess"]
       20 SETTABLEKS                       R5 R4 K5 ["_index"]
       22 LOADN                            R7 1
       23 NAMECALL                         R5 R4 K6 ["setDirection"]
       25 CALL                             R5 2 0
       26 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R9 R0 K0 ["_text"]
        2 LENGTH                           R8 R9
        3 MUL                              R7 R8 R3
        4 DIV                              R6 R7 R2
        5 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        6 GETIMPORT                        R5 K3 [math.floor]
        8 CALL                             R5 1 1
        9 FASTCALL2K                       MATH_MAX R5 K4 ; [+4]
       11 LOADK                            R6 K4 [1]
       12 GETIMPORT                        R4 K6 [math.max]
       14 CALL                             R4 2 1
       15 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_index"]
        2 GETTABLEKS                       R2 R0 K1 ["direction"]
        4 JUMPIFNOTEQKN                    R2 K2 [1] ; [+6]
        6 GETTABLEKS                       R3 R0 K3 ["_text"]
        8 LENGTH                           R2 R3
        9 JUMPIFLE                         R1 R2 ; [+8]
       11 GETTABLEKS                       R2 R0 K1 ["direction"]
       13 JUMPIFNOTEQKN                    R2 K4 [-1] ; [+31]
       15 LOADN                            R2 0
       16 JUMPIFNOTLT                      R2 R1 ; [+28]
       18 GETTABLEKS                       R2 R0 K3 ["_text"]
       20 MOVE                             R4 R1
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K5 ["sub"]
       24 CALL                             R2 3 1
       25 LOADK                            R6 K6 ["%s"]
       26 NAMECALL                         R4 R2 K7 ["match"]
       28 CALL                             R4 2 1
       29 JUMPIFNOTEQKNIL                  R4 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 JUMPIFNOT                        R3 ; [+7]
       34 GETTABLEKS                       R4 R0 K8 ["_step"]
       36 ADD                              R3 R1 R4
       37 SETTABLEKS                       R3 R0 K0 ["_index"]
       39 SUBK                             R3 R1 K2 [1]
       40 RETURN                           R3 1
       41 GETTABLEKS                       R3 R0 K8 ["_step"]
       43 ADD                              R1 R1 R3
       44 JUMPBACK                         ; [-43]
       45 RETURN                           R1 1

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["direction"]
        2 JUMPIFEQKN                       R1 K1 [1] ; [+5]
        4 GETTABLEKS                       R2 R0 K2 ["_initialGuess"]
        6 SETTABLEKS                       R2 R0 K3 ["_index"]
        8 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
       10 LOADN                            R2 1
       11 JUMP                             ; [+1]
       12 LOADN                            R2 255
       13 SETTABLEKS                       R2 R0 K4 ["_step"]
       15 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R5 4 0
        2 GETUPVAL                         R6 0
        3 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
        5 GETIMPORT                        R4 K1 [setmetatable]
        7 CALL                             R4 2 1
        8 SETTABLEKS                       R0 R4 K2 ["_text"]
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 MOVE                             R9 R3
       13 NAMECALL                         R5 R4 K3 ["_guessInitialBreak"]
       15 CALL                             R5 4 1
       16 SETTABLEKS                       R5 R4 K4 ["_initialGuess"]
       18 GETTABLEKS                       R5 R4 K4 ["_initialGuess"]
       20 SETTABLEKS                       R5 R4 K5 ["_codepointIndex"]
       22 LOADN                            R5 0
       23 SETTABLEKS                       R5 R4 K6 ["_step"]
       25 RETURN                           R4 1

PROTO_7:
        0 MUL                              R7 R1 R3
        1 DIV                              R6 R7 R2
        2 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        3 GETIMPORT                        R5 K2 [math.floor]
        5 CALL                             R5 1 1
        6 FASTCALL2K                       MATH_MAX R5 K3 ; [+4]
        8 LOADK                            R6 K3 [1]
        9 GETIMPORT                        R4 K5 [math.max]
       11 CALL                             R4 2 1
       12 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_codepointIndex"]
        2 GETTABLEKS                       R2 R0 K1 ["_step"]
        4 ADD                              R1 R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["_codepointIndex"]
        7 GETTABLEKS                       R2 R0 K2 ["_text"]
        9 GETTABLEKS                       R3 R0 K0 ["_codepointIndex"]
       11 GETIMPORT                        R4 K5 [utf8.offset]
       13 MOVE                             R5 R2
       14 ADDK                             R6 R3 K6 [1]
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+3]
       18 SUBK                             R1 R4 K6 [1]
       19 RETURN                           R1 1
       20 LENGTH                           R1 R2
       21 RETURN                           R1 1

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["direction"]
        2 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
        4 LOADN                            R2 1
        5 JUMP                             ; [+1]
        6 LOADN                            R2 255
        7 SETTABLEKS                       R2 R0 K2 ["_step"]
        9 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R6 R0 K0 ["new"]
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 MOVE                             R10 R5
        6 CALL                             R6 4 1
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 NAMECALL                         R12 R6 K1 ["findPossibleBreak"]
       14 CALL                             R12 1 1
       15 MOVE                             R8 R12
       16 LOADN                            R14 1
       17 MOVE                             R15 R8
       18 NAMECALL                         R12 R2 K2 ["sub"]
       20 CALL                             R12 3 1
       21 MOVE                             R7 R12
       22 MOVE                             R12 R1
       23 MOVE                             R13 R7
       24 CALL                             R12 1 1
       25 JUMPIFNOTLT                      R5 R12 ; [+3]
       27 LOADN                            R9 255
       28 JUMP                             ; [+1]
       29 LOADN                            R9 1
       30 MOVE                             R11 R8
       31 MOVE                             R15 R9
       32 NAMECALL                         R13 R6 K3 ["setDirection"]
       34 CALL                             R13 2 0
       35 LOADN                            R13 0
       36 JUMPIFNOTLT                      R13 R3 ; [+36]
       38 NAMECALL                         R14 R6 K1 ["findPossibleBreak"]
       40 CALL                             R14 1 1
       41 MOVE                             R8 R14
       42 LOADN                            R16 1
       43 MOVE                             R17 R8
       44 NAMECALL                         R14 R2 K2 ["sub"]
       46 CALL                             R14 3 1
       47 MOVE                             R7 R14
       48 MOVE                             R14 R1
       49 MOVE                             R15 R7
       50 CALL                             R14 1 1
       51 MOVE                             R12 R14
       52 JUMPIFNOTLT                      R5 R12 ; [+3]
       54 LOADN                            R10 255
       55 JUMP                             ; [+1]
       56 LOADN                            R10 1
       57 JUMPIFEQ                         R9 R10 ; [+11]
       59 JUMPIFNOTEQKN                    R9 K4 [1] ; [+13]
       61 MOVE                             R8 R11
       62 LOADN                            R16 1
       63 MOVE                             R17 R8
       64 NAMECALL                         R14 R2 K2 ["sub"]
       66 CALL                             R14 3 1
       67 MOVE                             R7 R14
       68 RETURN                           R7 2
       69 MOVE                             R9 R10
       70 MOVE                             R11 R8
       71 ADDK                             R13 R13 K4 [1]
       72 JUMPBACK                         ; [-37]
       73 RETURN                           R7 2

PROTO_11:
        0 GETIMPORT                        R4 K2 [utf8.len]
        2 MOVE                             R5 R2
        3 CALL                             R4 1 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+6]
        6 GETIMPORT                        R5 K4 [warn]
        8 LOADK                            R6 K5 ["Failed to get string length, it is probably malformed or non utf8"]
        9 CALL                             R5 1 0
       10 RETURN                           R2 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R5 1 1
       14 JUMPIFNOTLE                      R5 R3 ; [+2]
       16 RETURN                           R2 1
       17 LOADNIL                          R6
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K6 ["Word"]
       21 JUMPIFNOTEQ                      R0 R7 ; [+3]
       23 GETUPVAL                         R6 1
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R6 2
       26 GETUPVAL                         R7 3
       27 MOVE                             R8 R6
       28 MOVE                             R9 R1
       29 MOVE                             R10 R2
       30 MOVE                             R11 R4
       31 MOVE                             R12 R5
       32 MOVE                             R13 R3
       33 CALL                             R7 6 2
       34 JUMPIFEQKN                       R8 K7 [0] ; [+4]
       36 LENGTH                           R9 R2
       37 JUMPIFNOTEQ                      R8 R9 ; [+2]
       39 RETURN                           R2 1
       40 ADDK                             R11 R8 K8 [1]
       41 NAMECALL                         R9 R2 K9 ["sub"]
       43 CALL                             R9 2 1
       44 MOVE                             R10 R7
       45 MOVE                             R11 R9
       46 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["TextSplitByEnum"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 NEWTABLE                         R4 8 0
       16 SETTABLEKS                       R4 R4 K9 ["__index"]
       18 DUPCLOSURE                       R5 K10 [PROTO_2]
       19 CAPTURE                          VAL R4
       20 SETTABLEKS                       R5 R4 K11 ["new"]
       22 DUPCLOSURE                       R5 K12 [PROTO_3]
       23 SETTABLEKS                       R5 R4 K13 ["_guessInitialBreak"]
       25 DUPCLOSURE                       R5 K14 [PROTO_4]
       26 SETTABLEKS                       R5 R4 K15 ["findPossibleBreak"]
       28 DUPCLOSURE                       R5 K16 [PROTO_5]
       29 SETTABLEKS                       R5 R4 K17 ["setDirection"]
       31 NEWTABLE                         R5 8 0
       33 SETTABLEKS                       R5 R5 K9 ["__index"]
       35 DUPCLOSURE                       R6 K18 [PROTO_6]
       36 CAPTURE                          VAL R5
       37 SETTABLEKS                       R6 R5 K11 ["new"]
       39 DUPCLOSURE                       R6 K19 [PROTO_7]
       40 SETTABLEKS                       R6 R5 K13 ["_guessInitialBreak"]
       42 DUPCLOSURE                       R6 K20 [PROTO_8]
       43 SETTABLEKS                       R6 R5 K15 ["findPossibleBreak"]
       45 DUPCLOSURE                       R6 K21 [PROTO_9]
       46 SETTABLEKS                       R6 R5 K17 ["setDirection"]
       48 DUPCLOSURE                       R6 K22 [PROTO_10]
       49 DUPCLOSURE                       R7 K23 [PROTO_11]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 RETURN                           R7 1
