PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+2]
       11 RETURN                           R0 1
       12 GETTABLE                         R3 R0 R1
       13 ORK                              R2 R3 K3 [0]
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K0 ["current"]
       17 JUMPIFNOT                        R0 ; [+10]
       18 GETIMPORT                        R0 K3 [task.cancel]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K0 ["current"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 1
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K0 ["current"]
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+68]
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R0 R1 K0 ["current"]
       13 JUMPIFNOT                        R0 ; [+10]
       14 GETIMPORT                        R0 K3 [task.cancel]
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R1 R2 K0 ["current"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R1 R2 K4 ["delay"]
       27 JUMPIFNOTEQKNIL                  R1 ; [+3]
       29 LOADN                            R0 0
       30 JUMP                             ; [+12]
       31 FASTCALL1                        TYPE R1 ; [+3]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K6 [type]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+3]
       38 MOVE                             R0 R1
       39 JUMP                             ; [+3]
       40 GETTABLEKS                       R2 R1 K9 ["open"]
       42 ORK                              R0 R2 K8 [0]
       43 LOADN                            R1 0
       44 JUMPIFNOTLE                      R0 R1 ; [+5]
       46 GETUPVAL                         R1 2
       47 LOADB                            R2 1
       48 CALL                             R1 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 6
       51 JUMPIFNOT                        R1 ; [+1]
       52 RETURN                           R0 0
       53 GETUPVAL                         R2 7
       54 GETTABLEKS                       R1 R2 K0 ["current"]
       56 JUMPIFNOT                        R1 ; [+10]
       57 GETIMPORT                        R1 K3 [task.cancel]
       59 GETUPVAL                         R3 7
       60 GETTABLEKS                       R2 R3 K0 ["current"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 7
       64 LOADNIL                          R2
       65 SETTABLEKS                       R2 R1 K0 ["current"]
       67 GETUPVAL                         R1 7
       68 GETIMPORT                        R2 K10 [task.delay]
       70 MOVE                             R3 R0
       71 NEWCLOSURE                       R4 P0
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          UPVAL U2
       74 CALL                             R2 2 1
       75 SETTABLEKS                       R2 R1 K0 ["current"]
       77 RETURN                           R0 0
       78 GETUPVAL                         R1 7
       79 GETTABLEKS                       R0 R1 K0 ["current"]
       81 JUMPIFNOT                        R0 ; [+10]
       82 GETIMPORT                        R0 K3 [task.cancel]
       84 GETUPVAL                         R2 7
       85 GETTABLEKS                       R1 R2 K0 ["current"]
       87 CALL                             R0 1 0
       88 GETUPVAL                         R0 7
       89 LOADNIL                          R1
       90 SETTABLEKS                       R1 R0 K0 ["current"]
       92 GETUPVAL                         R2 5
       93 GETTABLEKS                       R1 R2 K4 ["delay"]
       95 JUMPIFNOTEQKNIL                  R1 ; [+3]
       97 LOADN                            R0 0
       98 JUMP                             ; [+12]
       99 FASTCALL1                        TYPE R1 ; [+3]
      100 MOVE                             R3 R1
      101 GETIMPORT                        R2 K6 [type]
      103 CALL                             R2 1 1
      104 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+3]
      106 MOVE                             R0 R1
      107 JUMP                             ; [+3]
      108 GETTABLEKS                       R2 R1 K11 ["close"]
      110 ORK                              R0 R2 K8 [0]
      111 LOADN                            R1 0
      112 JUMPIFNOTLE                      R0 R1 ; [+5]
      114 GETUPVAL                         R1 2
      115 LOADB                            R2 0
      116 CALL                             R1 1 0
      117 RETURN                           R0 0
      118 GETUPVAL                         R1 6
      119 JUMPIF                           R1 ; [+1]
      120 RETURN                           R0 0
      121 GETUPVAL                         R2 4
      122 GETTABLEKS                       R1 R2 K0 ["current"]
      124 JUMPIFNOT                        R1 ; [+10]
      125 GETIMPORT                        R1 K3 [task.cancel]
      127 GETUPVAL                         R3 4
      128 GETTABLEKS                       R2 R3 K0 ["current"]
      130 CALL                             R1 1 0
      131 GETUPVAL                         R1 4
      132 LOADNIL                          R2
      133 SETTABLEKS                       R2 R1 K0 ["current"]
      135 GETUPVAL                         R1 4
      136 GETIMPORT                        R2 K10 [task.delay]
      138 MOVE                             R3 R0
      139 NEWCLOSURE                       R4 P1
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          UPVAL U2
      142 CALL                             R2 2 1
      143 SETTABLEKS                       R2 R1 K0 ["current"]
      145 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["enabled"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+3]
        4 LOADB                            R2 1
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R2 R1 K0 ["enabled"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K2 ["useRef"]
       16 LOADNIL                          R6
       17 CALL                             R5 1 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K2 ["useRef"]
       21 LOADNIL                          R7
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K2 ["useRef"]
       26 MOVE                             R8 R0
       27 CALL                             R7 1 1
       28 SETTABLEKS                       R0 R7 K3 ["current"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 NEWTABLE                         R10 0 0
       38 CALL                             R8 2 1
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R11 0 4
       53 MOVE                             R12 R0
       54 MOVE                             R13 R2
       55 GETTABLEKS                       R14 R1 K6 ["delay"]
       57 MOVE                             R15 R3
       58 SETLIST                          R11 R12 4 [1]
       60 CALL                             R9 2 0
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R9 R10 K5 ["useEffect"]
       64 NEWCLOSURE                       R10 P2
       65 CAPTURE                          VAL R8
       66 NEWTABLE                         R11 0 0
       68 CALL                             R9 2 0
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       72 NEWCLOSURE                       R10 P3
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 NEWTABLE                         R11 0 2
       78 MOVE                             R12 R8
       79 MOVE                             R13 R4
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 1
       83 MOVE                             R10 R3
       84 DUPTABLE                         R11 K9 [{"cancel", "flush"}]
       85 SETTABLEKS                       R8 R11 K7 ["cancel"]
       87 SETTABLEKS                       R9 R11 K8 ["flush"]
       89 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_8]
       16 CAPTURE                          VAL R2
       17 RETURN                           R4 1
