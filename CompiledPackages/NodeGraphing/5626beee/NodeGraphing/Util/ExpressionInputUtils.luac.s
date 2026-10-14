PROTO_0:
        0 LOADN                            R4 0
        1 JUMPIFNOTLE                      R2 R4 ; [+7]
        3 GETIMPORT                        R4 K2 [UDim2.fromOffset]
        5 LOADN                            R5 0
        6 LOADN                            R6 0
        7 CALL                             R4 2 -1
        8 RETURN                           R4 -1
        9 DIV                              R4 R0 R2
       10 DIV                              R5 R1 R2
       11 GETIMPORT                        R6 K2 [UDim2.fromOffset]
       13 GETTABLEKS                       R10 R4 K3 ["X"]
       15 FASTCALL1                        MATH_CEIL R10 ; [+2]
       16 GETIMPORT                        R9 K6 [math.ceil]
       18 CALL                             R9 1 1
       19 ORK                              R10 R3 K7 [0]
       20 ADD                              R8 R9 R10
       21 GETTABLEKS                       R10 R5 K3 ["X"]
       23 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       24 GETIMPORT                        R9 K9 [math.floor]
       26 CALL                             R9 1 1
       27 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       29 GETIMPORT                        R7 K11 [math.max]
       31 CALL                             R7 2 1
       32 GETTABLEKS                       R10 R4 K12 ["Y"]
       34 FASTCALL1                        MATH_CEIL R10 ; [+2]
       35 GETIMPORT                        R9 K6 [math.ceil]
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R11 R5 K12 ["Y"]
       40 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       41 GETIMPORT                        R10 K9 [math.floor]
       43 CALL                             R10 1 1
       44 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       46 GETIMPORT                        R8 K11 [math.max]
       48 CALL                             R8 2 1
       49 CALL                             R6 2 -1
       50 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["CursorPosition"]
        2 JUMPIFNOTEQKN                    R3 K1 [-1] ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K2 ["Text"]
        7 LOADN                            R7 1
        8 SUBK                             R8 R3 K3 [1]
        9 FASTCALL3                        STRING_SUB R4 R7 R8
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K6 [string.sub]
       14 CALL                             R5 3 1
       15 GETIMPORT                        R6 K8 [string.gsub]
       17 MOVE                             R7 R5
       18 LOADK                            R8 K9 ["\n"]
       19 LOADK                            R9 K10 [""]
       20 CALL                             R6 3 2
       21 GETIMPORT                        R8 K8 [string.gsub]
       23 MOVE                             R9 R4
       24 LOADK                            R10 K9 ["\n"]
       25 LOADK                            R11 K10 [""]
       26 CALL                             R8 3 2
       27 GETTABLEKS                       R10 R0 K11 ["LineHeight"]
       29 GETTABLEKS                       R12 R0 K12 ["TextBounds"]
       31 GETTABLEKS                       R12 R12 K13 ["Y"]
       33 LOADN                            R14 1
       34 MUL                              R15 R9 R10
       35 ADD                              R13 R14 R15
       36 DIV                              R11 R12 R13
       37 MUL                              R13 R7 R11
       38 MUL                              R12 R13 R10
       39 ADD                              R13 R12 R11
       40 GETIMPORT                        R15 K15 [string.match]
       42 MOVE                             R16 R5
       43 LOADK                            R17 K16 ["[^\n]*$"]
       44 CALL                             R15 2 1
       45 ORK                              R14 R15 K10 [""]
       46 SETTABLEKS                       R14 R2 K2 ["Text"]
       48 GETTABLEKS                       R14 R2 K12 ["TextBounds"]
       50 GETTABLEKS                       R14 R14 K17 ["X"]
       52 GETTABLEKS                       R15 R1 K18 ["CanvasPosition"]
       54 GETTABLEKS                       R16 R1 K19 ["AbsoluteWindowSize"]
       56 GETTABLEKS                       R17 R15 K17 ["X"]
       58 GETTABLEKS                       R18 R15 K13 ["Y"]
       60 SUBK                             R19 R14 K20 [4]
       61 JUMPIFNOTLT                      R19 R17 ; [+3]
       63 SUBK                             R17 R14 K20 [4]
       64 JUMP                             ; [+10]
       65 ADDK                             R19 R14 K20 [4]
       66 GETTABLEKS                       R21 R16 K17 ["X"]
       68 ADD                              R20 R17 R21
       69 JUMPIFNOTLT                      R20 R19 ; [+5]
       71 ADDK                             R19 R14 K20 [4]
       72 GETTABLEKS                       R20 R16 K17 ["X"]
       74 SUB                              R17 R19 R20
       75 JUMPIFNOTLT                      R12 R18 ; [+3]
       77 MOVE                             R18 R12
       78 JUMP                             ; [+8]
       79 GETTABLEKS                       R20 R16 K13 ["Y"]
       81 ADD                              R19 R18 R20
       82 JUMPIFNOTLT                      R19 R13 ; [+4]
       84 GETTABLEKS                       R19 R16 K13 ["Y"]
       86 SUB                              R18 R13 R19
       87 LOADN                            R20 0
       88 FASTCALL2                        MATH_MAX R20 R17 ; [+4]
       90 MOVE                             R21 R17
       91 GETIMPORT                        R19 K23 [math.max]
       93 CALL                             R19 2 1
       94 MOVE                             R17 R19
       95 LOADN                            R20 0
       96 FASTCALL2                        MATH_MAX R20 R18 ; [+4]
       98 MOVE                             R21 R18
       99 GETIMPORT                        R19 K23 [math.max]
      101 CALL                             R19 2 1
      102 MOVE                             R18 R19
      103 GETTABLEKS                       R19 R15 K17 ["X"]
      105 JUMPIFNOTEQ                      R17 R19 ; [+5]
      107 GETTABLEKS                       R19 R15 K13 ["Y"]
      109 JUMPIFEQ                         R18 R19 ; [+8]
      111 GETIMPORT                        R19 K26 [Vector2.new]
      113 MOVE                             R20 R17
      114 MOVE                             R21 R18
      115 CALL                             R19 2 1
      116 SETTABLEKS                       R19 R1 K18 ["CanvasPosition"]
      118 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getFittedTextBoxSize"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["scrollTextBoxCursorIntoView"]
        9 RETURN                           R0 1
