PROTO_0:
        0 DUPTABLE                         R1 K1 [{"messages"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["messages"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+4]
        1 GETIMPORT                        R4 K2 [table.sort]
        3 MOVE                             R5 R2
        4 CALL                             R4 1 0
        5 DUPTABLE                         R4 K6 [{"id", "details", "severity"}]
        6 SETTABLEKS                       R1 R4 K3 ["id"]
        8 MOVE                             R5 R2
        9 JUMPIF                           R5 ; [+2]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K4 ["details"]
       14 MOVE                             R5 R3
       15 JUMPIF                           R5 ; [+5]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K7 ["SEVERITY"]
       19 GETTABLEKS                       R5 R5 K8 ["Error"]
       21 SETTABLEKS                       R5 R4 K5 ["severity"]
       23 GETTABLEKS                       R6 R0 K9 ["messages"]
       25 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       27 MOVE                             R7 R4
       28 GETIMPORT                        R5 K11 [table.insert]
       30 CALL                             R5 2 0
       31 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["messages"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R8 R0 K0 ["messages"]
        7 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
        9 MOVE                             R9 R6
       10 GETIMPORT                        R7 K3 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-9]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["messages"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["severity"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["SEVERITY"]
       10 GETTABLEKS                       R7 R7 K3 ["Error"]
       12 JUMPIFNOTLE                      R7 R6 ; [+3]
       14 LOADB                            R6 1
       15 RETURN                           R6 1
       16 FORGLOOP                         R1 2 ; [-12]
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIFEQ                         R7 R6 ; [+3]
        7 LOADB                            R7 0
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLE                         R7 R0 R5
       16 JUMPIFEQ                         R7 R6 ; [+3]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-6]
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+43]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+41]
        4 LOADB                            R2 0
        5 GETTABLEKS                       R3 R0 K0 ["id"]
        7 GETTABLEKS                       R4 R1 K0 ["id"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+35]
       11 LOADB                            R2 0
       12 GETTABLEKS                       R3 R0 K1 ["severity"]
       14 GETTABLEKS                       R4 R1 K1 ["severity"]
       16 JUMPIFNOTEQ                      R3 R4 ; [+28]
       18 GETTABLEKS                       R3 R0 K2 ["details"]
       20 GETTABLEKS                       R4 R1 K2 ["details"]
       22 MOVE                             R5 R3
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 GETTABLE                         R10 R4 R8
       27 JUMPIFEQ                         R10 R9 ; [+3]
       29 LOADB                            R2 0
       30 RETURN                           R2 1
       31 FORGLOOP                         R5 2 ; [-6]
       33 MOVE                             R5 R4
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETTABLE                         R10 R3 R8
       38 JUMPIFEQ                         R10 R9 ; [+3]
       40 LOADB                            R2 0
       41 RETURN                           R2 1
       42 FORGLOOP                         R5 2 ; [-6]
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_6:
        0 DUPCLOSURE                       R2 K0 [PROTO_4]
        1 DUPCLOSURE                       R3 K1 [PROTO_5]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R4 0
        5 RETURN                           R4 1
        6 GETTABLEKS                       R4 R0 K2 ["messages"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R11 R1 K2 ["messages"]
       13 GETTABLE                         R10 R11 R7
       14 MOVE                             R9 R8
       15 JUMPIFNOT                        R9 ; [+43]
       16 MOVE                             R9 R10
       17 JUMPIFNOT                        R9 ; [+41]
       18 LOADB                            R9 0
       19 GETTABLEKS                       R11 R8 K3 ["id"]
       21 GETTABLEKS                       R12 R10 K3 ["id"]
       23 JUMPIFNOTEQ                      R11 R12 ; [+35]
       25 LOADB                            R9 0
       26 GETTABLEKS                       R11 R8 K4 ["severity"]
       28 GETTABLEKS                       R12 R10 K4 ["severity"]
       30 JUMPIFNOTEQ                      R11 R12 ; [+28]
       32 GETTABLEKS                       R11 R8 K5 ["details"]
       34 GETTABLEKS                       R12 R10 K5 ["details"]
       36 MOVE                             R13 R11
       37 LOADNIL                          R14
       38 LOADNIL                          R15
       39 FORGPREP                         R13
       40 GETTABLE                         R18 R12 R16
       41 JUMPIFEQ                         R18 R17 ; [+3]
       43 LOADB                            R9 0
       44 JUMP                             ; [+14]
       45 FORGLOOP                         R13 2 ; [-6]
       47 MOVE                             R13 R12
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 FORGPREP                         R13
       51 GETTABLE                         R18 R11 R16
       52 JUMPIFEQ                         R18 R17 ; [+3]
       54 LOADB                            R9 0
       55 JUMP                             ; [+3]
       56 FORGLOOP                         R13 2 ; [-6]
       58 LOADB                            R9 1
       59 JUMPIF                           R9 ; [+2]
       60 LOADB                            R9 0
       61 RETURN                           R9 1
       62 FORGLOOP                         R4 2 ; [-52]
       64 GETTABLEKS                       R4 R1 K2 ["messages"]
       66 LOADNIL                          R5
       67 LOADNIL                          R6
       68 FORGPREP                         R4
       69 GETTABLEKS                       R11 R0 K2 ["messages"]
       71 GETTABLE                         R10 R11 R7
       72 MOVE                             R9 R8
       73 JUMPIFNOT                        R9 ; [+43]
       74 MOVE                             R9 R10
       75 JUMPIFNOT                        R9 ; [+41]
       76 LOADB                            R9 0
       77 GETTABLEKS                       R11 R8 K3 ["id"]
       79 GETTABLEKS                       R12 R10 K3 ["id"]
       81 JUMPIFNOTEQ                      R11 R12 ; [+35]
       83 LOADB                            R9 0
       84 GETTABLEKS                       R11 R8 K4 ["severity"]
       86 GETTABLEKS                       R12 R10 K4 ["severity"]
       88 JUMPIFNOTEQ                      R11 R12 ; [+28]
       90 GETTABLEKS                       R11 R8 K5 ["details"]
       92 GETTABLEKS                       R12 R10 K5 ["details"]
       94 MOVE                             R13 R11
       95 LOADNIL                          R14
       96 LOADNIL                          R15
       97 FORGPREP                         R13
       98 GETTABLE                         R18 R12 R16
       99 JUMPIFEQ                         R18 R17 ; [+3]
      101 LOADB                            R9 0
      102 JUMP                             ; [+14]
      103 FORGLOOP                         R13 2 ; [-6]
      105 MOVE                             R13 R12
      106 LOADNIL                          R14
      107 LOADNIL                          R15
      108 FORGPREP                         R13
      109 GETTABLE                         R18 R11 R16
      110 JUMPIFEQ                         R18 R17 ; [+3]
      112 LOADB                            R9 0
      113 JUMP                             ; [+3]
      114 FORGLOOP                         R13 2 ; [-6]
      116 LOADB                            R9 1
      117 JUMPIF                           R9 ; [+2]
      118 LOADB                            R9 0
      119 RETURN                           R9 1
      120 FORGLOOP                         R4 2 ; [-52]
      122 LOADB                            R4 1
      123 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["severity"]
        2 GETTABLEKS                       R3 R1 K0 ["severity"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["id"]
        8 GETTABLEKS                       R4 R1 K1 ["id"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["severity"]
       17 GETTABLEKS                       R4 R1 K0 ["severity"]
       19 JUMPIFLT                         R4 R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 GETTABLEKS                       R2 R0 K3 ["messages"]
        4 DUPCLOSURE                       R3 K4 [PROTO_7]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 SETTABLEKS                       R2 R2 K9 ["__index"]
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R3 R2 K11 ["new"]
       24 DUPCLOSURE                       R3 K12 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R2 K13 ["insert"]
       28 DUPCLOSURE                       R3 K14 [PROTO_2]
       29 SETTABLEKS                       R3 R2 K15 ["append"]
       31 DUPCLOSURE                       R3 K16 [PROTO_3]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R3 R2 K17 ["hasErrors"]
       35 DUPCLOSURE                       R3 K18 [PROTO_6]
       36 SETTABLEKS                       R3 R2 K19 ["equals"]
       38 DUPCLOSURE                       R3 K20 [PROTO_8]
       39 SETTABLEKS                       R3 R2 K21 ["sort"]
       41 RETURN                           R2 1
