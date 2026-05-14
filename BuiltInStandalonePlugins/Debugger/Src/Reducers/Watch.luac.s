PROTO_0:
        0 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
        2 GETTABLE                         R4 R0 R5
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL1                        ASSERT R3 ; [+2]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R4 R1 K0 ["debuggerStateToken"]
       13 GETTABLE                         R3 R0 R4
       14 GETTABLEKS                       R4 R1 K3 ["threadId"]
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFNOTEQKNIL                  R2 ; [+9]
       19 GETTABLEKS                       R3 R1 K0 ["debuggerStateToken"]
       21 GETTABLE                         R2 R0 R3
       22 GETTABLEKS                       R3 R1 K3 ["threadId"]
       24 NEWTABLE                         R4 0 0
       26 SETTABLE                         R4 R2 R3
       27 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
       29 GETTABLE                         R4 R0 R5
       30 GETTABLEKS                       R5 R1 K3 ["threadId"]
       32 GETTABLE                         R3 R4 R5
       33 GETTABLEKS                       R4 R1 K4 ["frameNumber"]
       35 GETTABLE                         R2 R3 R4
       36 JUMPIFNOTEQKNIL                  R2 ; [+12]
       38 GETTABLEKS                       R4 R1 K0 ["debuggerStateToken"]
       40 GETTABLE                         R3 R0 R4
       41 GETTABLEKS                       R4 R1 K3 ["threadId"]
       43 GETTABLE                         R2 R3 R4
       44 GETTABLEKS                       R3 R1 K4 ["frameNumber"]
       46 NEWTABLE                         R4 0 0
       48 SETTABLE                         R4 R2 R3
       49 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
       51 GETTABLE                         R4 R0 R5
       52 GETTABLEKS                       R5 R1 K3 ["threadId"]
       54 GETTABLE                         R3 R4 R5
       55 GETTABLEKS                       R4 R1 K4 ["frameNumber"]
       57 GETTABLE                         R2 R3 R4
       58 GETTABLEKS                       R2 R2 K5 ["Variables"]
       60 JUMPIFNOTEQKNIL                  R2 ; [+14]
       62 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
       64 GETTABLE                         R4 R0 R5
       65 GETTABLEKS                       R5 R1 K3 ["threadId"]
       67 GETTABLE                         R3 R4 R5
       68 GETTABLEKS                       R4 R1 K4 ["frameNumber"]
       70 GETTABLE                         R2 R3 R4
       71 NEWTABLE                         R3 0 0
       73 SETTABLEKS                       R3 R2 K5 ["Variables"]
       75 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
       77 GETTABLE                         R4 R0 R5
       78 GETTABLEKS                       R5 R1 K3 ["threadId"]
       80 GETTABLE                         R3 R4 R5
       81 GETTABLEKS                       R4 R1 K4 ["frameNumber"]
       83 GETTABLE                         R2 R3 R4
       84 GETTABLEKS                       R2 R2 K6 ["Watches"]
       86 JUMPIFNOTEQKNIL                  R2 ; [+14]
       88 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
       90 GETTABLE                         R4 R0 R5
       91 GETTABLEKS                       R5 R1 K3 ["threadId"]
       93 GETTABLE                         R3 R4 R5
       94 GETTABLEKS                       R4 R1 K4 ["frameNumber"]
       96 GETTABLE                         R2 R3 R4
       97 NEWTABLE                         R3 0 0
       99 SETTABLEKS                       R3 R2 K6 ["Watches"]
      101 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["debuggerStateToken"]
        2 GETTABLE                         R2 R0 R3
        3 JUMPIFNOTEQKNIL                  R2 ; [+8]
        5 LOADB                            R3 0
        6 FASTCALL1                        ASSERT R3 ; [+2]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 1 0
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R4 R1 K0 ["debuggerStateToken"]
       14 GETTABLE                         R3 R0 R4
       15 GETTABLEKS                       R4 R1 K3 ["threadId"]
       17 GETTABLE                         R2 R3 R4
       18 JUMPIFNOTEQKNIL                  R2 ; [+8]
       20 LOADB                            R3 0
       21 FASTCALL1                        ASSERT R3 ; [+2]
       22 GETIMPORT                        R2 K2 [assert]
       24 CALL                             R2 1 0
       25 LOADB                            R2 0
       26 RETURN                           R2 1
       27 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
       29 GETTABLE                         R4 R0 R5
       30 GETTABLEKS                       R5 R1 K3 ["threadId"]
       32 GETTABLE                         R3 R4 R5
       33 GETTABLEKS                       R4 R1 K4 ["frameNumber"]
       35 GETTABLE                         R2 R3 R4
       36 JUMPIFNOTEQKNIL                  R2 ; [+8]
       38 LOADB                            R3 0
       39 FASTCALL1                        ASSERT R3 ; [+2]
       40 GETIMPORT                        R2 K2 [assert]
       42 CALL                             R2 1 0
       43 LOADB                            R2 0
       44 RETURN                           R2 1
       45 LOADB                            R2 1
       46 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["stepStateBundle"]
        2 GETTABLEKS                       R5 R2 K1 ["debuggerStateToken"]
        4 GETTABLE                         R4 R0 R5
        5 JUMPIFNOTEQKNIL                  R4 ; [+8]
        7 LOADB                            R5 0
        8 FASTCALL1                        ASSERT R5 ; [+2]
        9 GETIMPORT                        R4 K3 [assert]
       11 CALL                             R4 1 0
       12 LOADB                            R3 0
       13 JUMP                             ; [+34]
       14 GETTABLEKS                       R6 R2 K1 ["debuggerStateToken"]
       16 GETTABLE                         R5 R0 R6
       17 GETTABLEKS                       R6 R2 K4 ["threadId"]
       19 GETTABLE                         R4 R5 R6
       20 JUMPIFNOTEQKNIL                  R4 ; [+8]
       22 LOADB                            R5 0
       23 FASTCALL1                        ASSERT R5 ; [+2]
       24 GETIMPORT                        R4 K3 [assert]
       26 CALL                             R4 1 0
       27 LOADB                            R3 0
       28 JUMP                             ; [+19]
       29 GETTABLEKS                       R7 R2 K1 ["debuggerStateToken"]
       31 GETTABLE                         R6 R0 R7
       32 GETTABLEKS                       R7 R2 K4 ["threadId"]
       34 GETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R6 R2 K5 ["frameNumber"]
       37 GETTABLE                         R4 R5 R6
       38 JUMPIFNOTEQKNIL                  R4 ; [+8]
       40 LOADB                            R5 0
       41 FASTCALL1                        ASSERT R5 ; [+2]
       42 GETIMPORT                        R4 K3 [assert]
       44 CALL                             R4 1 0
       45 LOADB                            R3 0
       46 JUMP                             ; [+1]
       47 LOADB                            R3 1
       48 JUMPIFNOTEQKB                    R3 FALSE ; [+3]
       50 LOADB                            R3 0
       51 RETURN                           R3 1
       52 GETTABLEKS                       R6 R2 K1 ["debuggerStateToken"]
       54 GETTABLE                         R5 R0 R6
       55 GETTABLEKS                       R6 R2 K4 ["threadId"]
       57 GETTABLE                         R4 R5 R6
       58 GETTABLEKS                       R5 R2 K5 ["frameNumber"]
       60 GETTABLE                         R3 R4 R5
       61 GETTABLEKS                       R4 R3 K6 ["Variables"]
       63 JUMPIFNOTEQKNIL                  R4 ; [+8]
       65 LOADB                            R5 0
       66 FASTCALL1                        ASSERT R5 ; [+2]
       67 GETIMPORT                        R4 K3 [assert]
       69 CALL                             R4 1 0
       70 LOADB                            R4 0
       71 RETURN                           R4 1
       72 GETTABLEKS                       R4 R1 K7 ["path"]
       74 JUMPIFEQKNIL                     R4 ; [+15]
       76 GETTABLEKS                       R5 R3 K6 ["Variables"]
       78 GETTABLEKS                       R6 R1 K7 ["path"]
       80 GETTABLE                         R4 R5 R6
       81 JUMPIFNOTEQKNIL                  R4 ; [+8]
       83 LOADB                            R5 0
       84 FASTCALL1                        ASSERT R5 ; [+2]
       85 GETIMPORT                        R4 K3 [assert]
       87 CALL                             R4 1 0
       88 LOADB                            R4 0
       89 RETURN                           R4 1
       90 GETTABLEKS                       R4 R1 K8 ["parentPath"]
       92 JUMPIFEQKNIL                     R4 ; [+15]
       94 GETTABLEKS                       R5 R3 K6 ["Variables"]
       96 GETTABLEKS                       R6 R1 K8 ["parentPath"]
       98 GETTABLE                         R4 R5 R6
       99 JUMPIFNOTEQKNIL                  R4 ; [+8]
      101 LOADB                            R5 0
      102 FASTCALL1                        ASSERT R5 ; [+2]
      103 GETIMPORT                        R4 K3 [assert]
      105 CALL                             R4 1 0
      106 LOADB                            R4 0
      107 RETURN                           R4 1
      108 LOADB                            R4 1
      109 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
        2 GETTABLE                         R4 R0 R5
        3 JUMPIFNOTEQKNIL                  R4 ; [+8]
        5 LOADB                            R5 0
        6 FASTCALL1                        ASSERT R5 ; [+2]
        7 GETIMPORT                        R4 K2 [assert]
        9 CALL                             R4 1 0
       10 LOADB                            R3 0
       11 JUMP                             ; [+34]
       12 GETTABLEKS                       R6 R1 K0 ["debuggerStateToken"]
       14 GETTABLE                         R5 R0 R6
       15 GETTABLEKS                       R6 R1 K3 ["threadId"]
       17 GETTABLE                         R4 R5 R6
       18 JUMPIFNOTEQKNIL                  R4 ; [+8]
       20 LOADB                            R5 0
       21 FASTCALL1                        ASSERT R5 ; [+2]
       22 GETIMPORT                        R4 K2 [assert]
       24 CALL                             R4 1 0
       25 LOADB                            R3 0
       26 JUMP                             ; [+19]
       27 GETTABLEKS                       R7 R1 K0 ["debuggerStateToken"]
       29 GETTABLE                         R6 R0 R7
       30 GETTABLEKS                       R7 R1 K3 ["threadId"]
       32 GETTABLE                         R5 R6 R7
       33 GETTABLEKS                       R6 R1 K4 ["frameNumber"]
       35 GETTABLE                         R4 R5 R6
       36 JUMPIFNOTEQKNIL                  R4 ; [+8]
       38 LOADB                            R5 0
       39 FASTCALL1                        ASSERT R5 ; [+2]
       40 GETIMPORT                        R4 K2 [assert]
       42 CALL                             R4 1 0
       43 LOADB                            R3 0
       44 JUMP                             ; [+1]
       45 LOADB                            R3 1
       46 JUMPIFNOTEQKB                    R3 FALSE ; [+3]
       48 LOADB                            R3 0
       49 RETURN                           R3 1
       50 GETTABLEKS                       R6 R1 K0 ["debuggerStateToken"]
       52 GETTABLE                         R5 R0 R6
       53 GETTABLEKS                       R6 R1 K3 ["threadId"]
       55 GETTABLE                         R4 R5 R6
       56 GETTABLEKS                       R5 R1 K4 ["frameNumber"]
       58 GETTABLE                         R3 R4 R5
       59 GETTABLEKS                       R4 R3 K5 ["Watches"]
       61 JUMPIFNOTEQKNIL                  R4 ; [+8]
       63 LOADB                            R5 0
       64 FASTCALL1                        ASSERT R5 ; [+2]
       65 GETIMPORT                        R4 K2 [assert]
       67 CALL                             R4 1 0
       68 LOADB                            R4 0
       69 RETURN                           R4 1
       70 GETTABLEKS                       R4 R2 K6 ["path"]
       72 JUMPIFEQKNIL                     R4 ; [+15]
       74 GETTABLEKS                       R5 R3 K5 ["Watches"]
       76 GETTABLEKS                       R6 R2 K6 ["path"]
       78 GETTABLE                         R4 R5 R6
       79 JUMPIFNOTEQKNIL                  R4 ; [+8]
       81 LOADB                            R5 0
       82 FASTCALL1                        ASSERT R5 ; [+2]
       83 GETIMPORT                        R4 K2 [assert]
       85 CALL                             R4 1 0
       86 LOADB                            R4 0
       87 RETURN                           R4 1
       88 GETTABLEKS                       R4 R2 K7 ["parentPath"]
       90 JUMPIFEQKNIL                     R4 ; [+15]
       92 GETTABLEKS                       R5 R3 K5 ["Watches"]
       94 GETTABLEKS                       R6 R2 K7 ["parentPath"]
       96 GETTABLE                         R4 R5 R6
       97 JUMPIFNOTEQKNIL                  R4 ; [+8]
       99 LOADB                            R5 0
      100 FASTCALL1                        ASSERT R5 ; [+2]
      101 GETIMPORT                        R4 K2 [assert]
      103 CALL                             R4 1 0
      104 LOADB                            R4 0
      105 RETURN                           R4 1
      106 LOADB                            R4 1
      107 RETURN                           R4 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+2]
        7 RETURN                           R5 1
        8 FORGLOOP                         R2 2 ; [-4]
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R5 R0 K0 ["stateTokenToRoots"]
        2 GETTABLEKS                       R6 R1 K1 ["debuggerStateToken"]
        4 GETTABLE                         R4 R5 R6
        5 JUMPIFEQKNIL                     R4 ; [+12]
        7 LOADB                            R3 0
        8 GETTABLEKS                       R6 R0 K0 ["stateTokenToRoots"]
       10 GETTABLEKS                       R7 R1 K1 ["debuggerStateToken"]
       12 GETTABLE                         R5 R6 R7
       13 GETTABLEKS                       R6 R1 K2 ["threadId"]
       15 GETTABLE                         R4 R5 R6
       16 JUMPIFNOTEQKNIL                  R4 ; [+21]
       18 LOADB                            R3 1
       19 GETTABLEKS                       R5 R0 K3 ["stateTokenToFlattenedTree"]
       21 GETTABLEKS                       R6 R1 K1 ["debuggerStateToken"]
       23 GETTABLE                         R4 R5 R6
       24 JUMPIFEQKNIL                     R4 ; [+13]
       26 GETTABLEKS                       R6 R0 K3 ["stateTokenToFlattenedTree"]
       28 GETTABLEKS                       R7 R1 K1 ["debuggerStateToken"]
       30 GETTABLE                         R5 R6 R7
       31 GETTABLEKS                       R6 R1 K2 ["threadId"]
       33 GETTABLE                         R4 R5 R6
       34 JUMPIFEQKNIL                     R4 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 FASTCALL1                        ASSERT R3 ; [+2]
       39 GETIMPORT                        R2 K5 [assert]
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K6 ["Dictionary"]
       45 GETTABLEKS                       R2 R2 K7 ["join"]
       47 MOVE                             R3 R0
       48 DUPTABLE                         R4 K8 [{"stateTokenToRoots", "stateTokenToFlattenedTree"}]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K6 ["Dictionary"]
       52 GETTABLEKS                       R5 R5 K7 ["join"]
       54 GETTABLEKS                       R6 R0 K0 ["stateTokenToRoots"]
       56 NEWTABLE                         R7 1 0
       58 GETTABLEKS                       R8 R1 K1 ["debuggerStateToken"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K6 ["Dictionary"]
       63 GETTABLEKS                       R9 R9 K7 ["join"]
       65 GETTABLEKS                       R11 R0 K0 ["stateTokenToRoots"]
       67 GETTABLEKS                       R12 R1 K1 ["debuggerStateToken"]
       69 GETTABLE                         R10 R11 R12
       70 JUMPIF                           R10 ; [+2]
       71 NEWTABLE                         R10 0 0
       73 NEWTABLE                         R11 1 0
       75 GETTABLEKS                       R12 R1 K2 ["threadId"]
       77 NEWTABLE                         R13 0 0
       79 SETTABLE                         R13 R11 R12
       80 CALL                             R9 2 1
       81 SETTABLE                         R9 R7 R8
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K0 ["stateTokenToRoots"]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K6 ["Dictionary"]
       88 GETTABLEKS                       R5 R5 K7 ["join"]
       90 GETTABLEKS                       R6 R0 K3 ["stateTokenToFlattenedTree"]
       92 NEWTABLE                         R7 1 0
       94 GETTABLEKS                       R8 R1 K1 ["debuggerStateToken"]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K6 ["Dictionary"]
       99 GETTABLEKS                       R9 R9 K7 ["join"]
      101 GETTABLEKS                       R11 R0 K3 ["stateTokenToFlattenedTree"]
      103 GETTABLEKS                       R12 R1 K1 ["debuggerStateToken"]
      105 GETTABLE                         R10 R11 R12
      106 JUMPIF                           R10 ; [+2]
      107 NEWTABLE                         R10 0 0
      109 NEWTABLE                         R11 1 0
      111 GETTABLEKS                       R12 R1 K2 ["threadId"]
      113 NEWTABLE                         R13 0 0
      115 SETTABLE                         R13 R11 R12
      116 CALL                             R9 2 1
      117 SETTABLE                         R9 R7 R8
      118 CALL                             R5 2 1
      119 SETTABLEKS                       R5 R4 K3 ["stateTokenToFlattenedTree"]
      121 CALL                             R2 2 -1
      122 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["stateTokenToRoots"]
        2 GETTABLEKS                       R6 R1 K1 ["debuggerStateToken"]
        4 GETTABLE                         R4 R5 R6
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K3 [assert]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R4 R0 K0 ["stateTokenToRoots"]
       15 GETTABLEKS                       R5 R1 K1 ["debuggerStateToken"]
       17 GETTABLE                         R3 R4 R5
       18 GETTABLEKS                       R4 R1 K4 ["threadId"]
       20 GETTABLE                         R2 R3 R4
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 RETURN                           R0 1
       24 LOADB                            R3 0
       25 GETTABLEKS                       R5 R0 K5 ["stateTokenToFlattenedTree"]
       27 GETTABLEKS                       R6 R1 K1 ["debuggerStateToken"]
       29 GETTABLE                         R4 R5 R6
       30 JUMPIFEQKNIL                     R4 ; [+13]
       32 GETTABLEKS                       R6 R0 K5 ["stateTokenToFlattenedTree"]
       34 GETTABLEKS                       R7 R1 K1 ["debuggerStateToken"]
       36 GETTABLE                         R5 R6 R7
       37 GETTABLEKS                       R6 R1 K4 ["threadId"]
       39 GETTABLE                         R4 R5 R6
       40 JUMPIFNOTEQKNIL                  R4 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 FASTCALL1                        ASSERT R3 ; [+2]
       45 GETIMPORT                        R2 K3 [assert]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R4 R0 K0 ["stateTokenToRoots"]
       51 GETTABLEKS                       R5 R1 K1 ["debuggerStateToken"]
       53 GETTABLE                         R3 R4 R5
       54 CALL                             R2 1 1
       55 GETTABLEKS                       R3 R1 K4 ["threadId"]
       57 LOADNIL                          R4
       58 SETTABLE                         R4 R2 R3
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R5 R0 K5 ["stateTokenToFlattenedTree"]
       62 GETTABLEKS                       R6 R1 K1 ["debuggerStateToken"]
       64 GETTABLE                         R4 R5 R6
       65 CALL                             R3 1 1
       66 GETTABLEKS                       R4 R1 K4 ["threadId"]
       68 LOADNIL                          R5
       69 SETTABLE                         R5 R3 R4
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K6 ["Dictionary"]
       73 GETTABLEKS                       R4 R4 K7 ["join"]
       75 MOVE                             R5 R0
       76 DUPTABLE                         R6 K8 [{"stateTokenToRoots", "stateTokenToFlattenedTree"}]
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       80 GETTABLEKS                       R7 R7 K7 ["join"]
       82 GETTABLEKS                       R8 R0 K0 ["stateTokenToRoots"]
       84 NEWTABLE                         R9 1 0
       86 GETTABLEKS                       R10 R1 K1 ["debuggerStateToken"]
       88 SETTABLE                         R2 R9 R10
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K0 ["stateTokenToRoots"]
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       95 GETTABLEKS                       R7 R7 K7 ["join"]
       97 GETTABLEKS                       R8 R0 K5 ["stateTokenToFlattenedTree"]
       99 NEWTABLE                         R9 1 0
      101 GETTABLEKS                       R10 R1 K1 ["debuggerStateToken"]
      103 SETTABLE                         R3 R9 R10
      104 CALL                             R7 2 1
      105 SETTABLEKS                       R7 R6 K5 ["stateTokenToFlattenedTree"]
      107 CALL                             R4 2 -1
      108 RETURN                           R4 -1

PROTO_7:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["stateTokenToRoots"]
        3 GETTABLEKS                       R5 R1 K1 ["debuggerStateToken"]
        5 GETTABLE                         R3 R4 R5
        6 JUMPIFEQKNIL                     R3 ; [+10]
        8 GETTABLEKS                       R4 R0 K2 ["stateTokenToFlattenedTree"]
       10 GETTABLEKS                       R5 R1 K1 ["debuggerStateToken"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIFNOTEQKNIL                  R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 LOADB                            R3 1
       18 GETIMPORT                        R4 K4 [pairs]
       20 GETTABLEKS                       R5 R0 K0 ["stateTokenToRoots"]
       22 CALL                             R4 1 3
       23 FORGPREP_NEXT                    R4
       24 LOADB                            R3 0
       25 FORGLOOP                         R4 2 ; [-2]
       27 OR                               R5 R2 R3
       28 FASTCALL1                        ASSERT R5 ; [+2]
       29 GETIMPORT                        R4 K6 [assert]
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K7 ["Dictionary"]
       35 GETTABLEKS                       R4 R4 K8 ["join"]
       37 MOVE                             R5 R0
       38 DUPTABLE                         R6 K9 [{"stateTokenToRoots", "stateTokenToFlattenedTree"}]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K7 ["Dictionary"]
       42 GETTABLEKS                       R7 R7 K8 ["join"]
       44 GETTABLEKS                       R8 R0 K0 ["stateTokenToRoots"]
       46 NEWTABLE                         R9 1 0
       48 GETTABLEKS                       R10 R1 K1 ["debuggerStateToken"]
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R11 R11 K10 ["None"]
       53 SETTABLE                         R11 R9 R10
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K0 ["stateTokenToRoots"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K7 ["Dictionary"]
       60 GETTABLEKS                       R7 R7 K8 ["join"]
       62 GETTABLEKS                       R8 R0 K2 ["stateTokenToFlattenedTree"]
       64 NEWTABLE                         R9 1 0
       66 GETTABLEKS                       R10 R1 K1 ["debuggerStateToken"]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K10 ["None"]
       71 SETTABLE                         R11 R9 R10
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K2 ["stateTokenToFlattenedTree"]
       75 CALL                             R4 2 -1
       76 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToRoots"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R1 K1 ["stepStateBundle"]
       11 GETTABLEKS                       R7 R3 K2 ["debuggerStateToken"]
       13 GETTABLE                         R6 R2 R7
       14 GETTABLEKS                       R7 R3 K3 ["threadId"]
       16 GETTABLE                         R5 R6 R7
       17 GETTABLEKS                       R6 R3 K4 ["frameNumber"]
       19 GETTABLE                         R4 R5 R6
       20 GETTABLEKS                       R4 R4 K5 ["Variables"]
       22 GETIMPORT                        R5 K7 [ipairs]
       24 GETTABLEKS                       R6 R1 K8 ["tokenizedList"]
       26 CALL                             R5 1 3
       27 FORGPREP_INEXT                   R5
       28 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       30 MOVE                             R11 R4
       31 MOVE                             R12 R9
       32 GETIMPORT                        R10 K11 [table.insert]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 [inext] ; [-8]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R6 R0 K12 ["stateTokenToFlattenedTree"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R5
       43 GETTABLEKS                       R8 R1 K1 ["stepStateBundle"]
       45 CALL                             R6 2 0
       46 GETTABLEKS                       R9 R3 K2 ["debuggerStateToken"]
       48 GETTABLE                         R8 R5 R9
       49 GETTABLEKS                       R9 R3 K3 ["threadId"]
       51 GETTABLE                         R7 R8 R9
       52 GETTABLEKS                       R8 R3 K4 ["frameNumber"]
       54 GETTABLE                         R6 R7 R8
       55 GETTABLEKS                       R6 R6 K5 ["Variables"]
       57 GETIMPORT                        R7 K14 [pairs]
       59 GETTABLEKS                       R8 R1 K15 ["newVarsMapping"]
       61 CALL                             R7 1 3
       62 FORGPREP_NEXT                    R7
       63 SETTABLE                         R11 R6 R10
       64 FORGLOOP                         R7 2 ; [-2]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K16 ["Dictionary"]
       69 GETTABLEKS                       R7 R7 K17 ["join"]
       71 MOVE                             R8 R0
       72 DUPTABLE                         R9 K18 [{"stateTokenToRoots", "stateTokenToFlattenedTree"}]
       73 SETTABLEKS                       R2 R9 K0 ["stateTokenToRoots"]
       75 SETTABLEKS                       R5 R9 K12 ["stateTokenToFlattenedTree"]
       77 CALL                             R7 2 -1
       78 RETURN                           R7 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToFlattenedTree"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       10 RETURN                           R0 1
       11 GETTABLEKS                       R3 R1 K1 ["stepStateBundle"]
       13 GETTABLEKS                       R7 R3 K2 ["debuggerStateToken"]
       15 GETTABLE                         R6 R2 R7
       16 GETTABLEKS                       R7 R3 K3 ["threadId"]
       18 GETTABLE                         R5 R6 R7
       19 GETTABLEKS                       R6 R3 K4 ["frameNumber"]
       21 GETTABLE                         R4 R5 R6
       22 GETTABLEKS                       R4 R4 K5 ["Variables"]
       24 GETIMPORT                        R5 K7 [pairs]
       26 GETTABLEKS                       R6 R1 K8 ["newVarsMapping"]
       28 CALL                             R5 1 3
       29 FORGPREP_NEXT                    R5
       30 SETTABLE                         R9 R4 R8
       31 FORGLOOP                         R5 2 ; [-2]
       33 GETTABLEKS                       R6 R1 K9 ["parentPath"]
       35 GETTABLE                         R5 R4 R6
       36 GETTABLEKS                       R5 R5 K10 ["childPaths"]
       38 GETIMPORT                        R6 K12 [ipairs]
       40 GETTABLEKS                       R7 R1 K13 ["childKeys"]
       42 CALL                             R6 1 3
       43 FORGPREP_INEXT                   R6
       44 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       46 MOVE                             R12 R5
       47 MOVE                             R13 R10
       48 GETIMPORT                        R11 K16 [table.insert]
       50 CALL                             R11 2 0
       51 FORGLOOP                         R6 2 [inext] ; [-8]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K17 ["Dictionary"]
       56 GETTABLEKS                       R6 R6 K18 ["join"]
       58 MOVE                             R7 R0
       59 DUPTABLE                         R8 K19 [{"stateTokenToFlattenedTree"}]
       60 SETTABLEKS                       R2 R8 K0 ["stateTokenToFlattenedTree"]
       62 CALL                             R6 2 -1
       63 RETURN                           R6 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToFlattenedTree"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R1 K1 ["stepStateBundle"]
        6 LOADNIL                          R4
        7 GETTABLEKS                       R5 R1 K2 ["isVariablesTab"]
        9 JUMPIFNOT                        R5 ; [+19]
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R2
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       16 RETURN                           R0 1
       17 GETTABLEKS                       R8 R3 K3 ["debuggerStateToken"]
       19 GETTABLE                         R7 R2 R8
       20 GETTABLEKS                       R8 R3 K4 ["threadId"]
       22 GETTABLE                         R6 R7 R8
       23 GETTABLEKS                       R7 R3 K5 ["frameNumber"]
       25 GETTABLE                         R5 R6 R7
       26 GETTABLEKS                       R4 R5 K6 ["Variables"]
       28 JUMP                             ; [+20]
       29 GETUPVAL                         R5 2
       30 MOVE                             R6 R2
       31 GETTABLEKS                       R7 R1 K1 ["stepStateBundle"]
       33 MOVE                             R8 R1
       34 CALL                             R5 3 1
       35 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       37 RETURN                           R0 1
       38 GETTABLEKS                       R8 R3 K3 ["debuggerStateToken"]
       40 GETTABLE                         R7 R2 R8
       41 GETTABLEKS                       R8 R3 K4 ["threadId"]
       43 GETTABLE                         R6 R7 R8
       44 GETTABLEKS                       R7 R3 K5 ["frameNumber"]
       46 GETTABLE                         R5 R6 R7
       47 GETTABLEKS                       R4 R5 K7 ["Watches"]
       49 GETTABLEKS                       R6 R1 K8 ["parentPath"]
       51 GETTABLE                         R5 R4 R6
       52 NEWTABLE                         R6 0 0
       54 SETTABLEKS                       R6 R5 K9 ["childPaths"]
       56 GETTABLEKS                       R6 R1 K8 ["parentPath"]
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R7 R7 K10 ["SeparationToken"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K11 ["DummyRowName"]
       64 CONCAT                           R5 R6 R8
       65 LOADNIL                          R6
       66 SETTABLE                         R6 R4 R5
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R6 R6 K12 ["Dictionary"]
       70 GETTABLEKS                       R6 R6 K13 ["join"]
       72 MOVE                             R7 R0
       73 DUPTABLE                         R8 K14 [{"stateTokenToFlattenedTree"}]
       74 SETTABLEKS                       R2 R8 K0 ["stateTokenToFlattenedTree"]
       76 CALL                             R6 2 -1
       77 RETURN                           R6 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"pathToExpansionState"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["pathToExpansionState"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["path"]
       18 GETTABLEKS                       R9 R1 K5 ["expanded"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["pathToExpansionState"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"expressionToExpansionState"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["expressionToExpansionState"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["path"]
       18 GETTABLEKS                       R9 R1 K5 ["expanded"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["expressionToExpansionState"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToFlattenedTree"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       10 RETURN                           R0 1
       11 GETTABLEKS                       R3 R1 K1 ["stepStateBundle"]
       13 GETTABLEKS                       R7 R3 K2 ["debuggerStateToken"]
       15 GETTABLE                         R6 R2 R7
       16 GETTABLEKS                       R7 R3 K3 ["threadId"]
       18 GETTABLE                         R5 R6 R7
       19 GETTABLEKS                       R6 R3 K4 ["frameNumber"]
       21 GETTABLE                         R4 R5 R6
       22 GETTABLEKS                       R4 R4 K5 ["Variables"]
       24 GETIMPORT                        R5 K7 [pairs]
       26 GETTABLEKS                       R6 R1 K8 ["textFilterMap"]
       28 CALL                             R5 1 3
       29 FORGPREP_NEXT                    R5
       30 GETTABLE                         R10 R4 R8
       31 SETTABLEKS                       R9 R10 K9 ["scopeFilteredOut"]
       33 FORGLOOP                         R5 2 ; [-4]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K10 ["Dictionary"]
       38 GETTABLEKS                       R5 R5 K11 ["join"]
       40 MOVE                             R6 R0
       41 DUPTABLE                         R7 K12 [{"stateTokenToFlattenedTree"}]
       42 SETTABLEKS                       R2 R7 K0 ["stateTokenToFlattenedTree"]
       44 CALL                             R5 2 -1
       45 RETURN                           R5 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToFlattenedTree"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       10 RETURN                           R0 1
       11 GETTABLEKS                       R3 R1 K1 ["stepStateBundle"]
       13 GETTABLEKS                       R5 R1 K2 ["isVariablesTab"]
       15 JUMPIFNOT                        R5 ; [+12]
       16 GETTABLEKS                       R7 R3 K3 ["debuggerStateToken"]
       18 GETTABLE                         R6 R2 R7
       19 GETTABLEKS                       R7 R3 K4 ["threadId"]
       21 GETTABLE                         R5 R6 R7
       22 GETTABLEKS                       R6 R3 K5 ["frameNumber"]
       24 GETTABLE                         R4 R5 R6
       25 GETTABLEKS                       R4 R4 K6 ["Variables"]
       27 JUMP                             ; [+11]
       28 GETTABLEKS                       R7 R3 K3 ["debuggerStateToken"]
       30 GETTABLE                         R6 R2 R7
       31 GETTABLEKS                       R7 R3 K4 ["threadId"]
       33 GETTABLE                         R5 R6 R7
       34 GETTABLEKS                       R6 R3 K5 ["frameNumber"]
       36 GETTABLE                         R4 R5 R6
       37 GETTABLEKS                       R4 R4 K7 ["Watches"]
       39 GETIMPORT                        R5 K9 [pairs]
       41 GETTABLEKS                       R6 R1 K10 ["textFilterMap"]
       43 CALL                             R5 1 3
       44 FORGPREP_NEXT                    R5
       45 GETTABLE                         R10 R4 R8
       46 SETTABLEKS                       R9 R10 K11 ["textFilteredOut"]
       48 FORGLOOP                         R5 2 ; [-4]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K12 ["Dictionary"]
       53 GETTABLEKS                       R5 R5 K13 ["join"]
       55 MOVE                             R6 R0
       56 DUPTABLE                         R7 K14 [{"stateTokenToFlattenedTree"}]
       57 SETTABLEKS                       R2 R7 K0 ["stateTokenToFlattenedTree"]
       59 CALL                             R5 2 -1
       60 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentTab"}]
        7 GETTABLEKS                       R5 R1 K2 ["currentTab"]
        9 SETTABLEKS                       R5 R4 K2 ["currentTab"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfEnabledScopes"}]
        7 GETTABLEKS                       R5 R1 K2 ["listOfEnabledScopes"]
        9 SETTABLEKS                       R5 R4 K2 ["listOfEnabledScopes"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfVariablesColumns"}]
        7 GETTABLEKS                       R5 R1 K2 ["listOfVariablesColumns"]
        9 SETTABLEKS                       R5 R4 K2 ["listOfVariablesColumns"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfMyWatchesColumns"}]
        7 GETTABLEKS                       R5 R1 K2 ["listOfMyWatchesColumns"]
        9 SETTABLEKS                       R5 R4 K2 ["listOfMyWatchesColumns"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToFlattenedTree"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
        8 MOVE                             R6 R1
        9 CALL                             R3 3 1
       10 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       12 RETURN                           R0 1
       13 GETTABLEKS                       R6 R1 K1 ["stepStateBundle"]
       15 GETTABLEKS                       R6 R6 K2 ["debuggerStateToken"]
       17 GETTABLE                         R5 R2 R6
       18 GETTABLEKS                       R6 R1 K1 ["stepStateBundle"]
       20 GETTABLEKS                       R6 R6 K3 ["threadId"]
       22 GETTABLE                         R4 R5 R6
       23 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
       25 GETTABLEKS                       R5 R5 K4 ["frameNumber"]
       27 GETTABLE                         R3 R4 R5
       28 GETTABLEKS                       R3 R3 K5 ["Watches"]
       30 GETIMPORT                        R4 K7 [pairs]
       32 GETTABLEKS                       R5 R1 K8 ["newVarsMapping"]
       34 CALL                             R4 1 3
       35 FORGPREP_NEXT                    R4
       36 SETTABLE                         R8 R3 R7
       37 FORGLOOP                         R4 2 ; [-2]
       39 GETTABLEKS                       R5 R1 K9 ["parentPath"]
       41 GETTABLE                         R4 R3 R5
       42 GETTABLEKS                       R4 R4 K10 ["childPaths"]
       44 GETIMPORT                        R5 K12 [ipairs]
       46 GETTABLEKS                       R6 R1 K13 ["childKeys"]
       48 CALL                             R5 1 3
       49 FORGPREP_INEXT                   R5
       50 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       52 MOVE                             R11 R4
       53 MOVE                             R12 R9
       54 GETIMPORT                        R10 K16 [table.insert]
       56 CALL                             R10 2 0
       57 FORGLOOP                         R5 2 [inext] ; [-8]
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K17 ["Dictionary"]
       62 GETTABLEKS                       R5 R5 K18 ["join"]
       64 MOVE                             R6 R0
       65 DUPTABLE                         R7 K19 [{"stateTokenToFlattenedTree"}]
       66 SETTABLEKS                       R2 R7 K0 ["stateTokenToFlattenedTree"]
       68 CALL                             R5 2 -1
       69 RETURN                           R5 -1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["listOfExpressions"]
        2 GETTABLEKS                       R4 R1 K1 ["expression"]
        4 GETIMPORT                        R5 K3 [pairs]
        6 MOVE                             R6 R3
        7 CALL                             R5 1 3
        8 FORGPREP_NEXT                    R5
        9 JUMPIFNOTEQ                      R9 R4 ; [+3]
       11 MOVE                             R2 R8
       12 JUMP                             ; [+3]
       13 FORGLOOP                         R5 2 ; [-5]
       15 LOADNIL                          R2
       16 JUMPIFEQKNIL                     R2 ; [+2]
       18 RETURN                           R0 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K4 ["Dictionary"]
       22 GETTABLEKS                       R2 R2 K5 ["join"]
       24 MOVE                             R3 R0
       25 DUPTABLE                         R4 K6 [{"listOfExpressions"}]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["List"]
       29 GETTABLEKS                       R5 R5 K5 ["join"]
       31 GETTABLEKS                       R6 R0 K0 ["listOfExpressions"]
       33 NEWTABLE                         R7 0 1
       35 GETTABLEKS                       R8 R1 K1 ["expression"]
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K0 ["listOfExpressions"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["listOfExpressions"]
        2 GETTABLEKS                       R4 R1 K1 ["newExpression"]
        4 GETIMPORT                        R5 K3 [pairs]
        6 MOVE                             R6 R3
        7 CALL                             R5 1 3
        8 FORGPREP_NEXT                    R5
        9 JUMPIFNOTEQ                      R9 R4 ; [+3]
       11 MOVE                             R2 R8
       12 JUMP                             ; [+3]
       13 FORGLOOP                         R5 2 ; [-5]
       15 LOADNIL                          R2
       16 JUMPIFEQKNIL                     R2 ; [+2]
       18 RETURN                           R0 1
       19 GETTABLEKS                       R3 R0 K0 ["listOfExpressions"]
       21 GETTABLEKS                       R4 R1 K4 ["oldExpression"]
       23 GETIMPORT                        R5 K3 [pairs]
       25 MOVE                             R6 R3
       26 CALL                             R5 1 3
       27 FORGPREP_NEXT                    R5
       28 JUMPIFNOTEQ                      R9 R4 ; [+3]
       30 MOVE                             R2 R8
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R5 2 ; [-5]
       34 LOADNIL                          R2
       35 JUMPIFNOTEQKNIL                  R2 ; [+2]
       37 RETURN                           R0 1
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R3 R0 K0 ["listOfExpressions"]
       41 CALL                             R2 1 1
       42 GETTABLEKS                       R4 R1 K4 ["oldExpression"]
       44 GETIMPORT                        R5 K3 [pairs]
       46 MOVE                             R6 R2
       47 CALL                             R5 1 3
       48 FORGPREP_NEXT                    R5
       49 JUMPIFNOTEQ                      R9 R4 ; [+3]
       51 MOVE                             R3 R8
       52 JUMP                             ; [+3]
       53 FORGLOOP                         R5 2 ; [-5]
       55 LOADNIL                          R3
       56 GETTABLEKS                       R4 R1 K1 ["newExpression"]
       58 SETTABLE                         R4 R2 R3
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K5 ["Dictionary"]
       62 GETTABLEKS                       R4 R4 K6 ["join"]
       64 MOVE                             R5 R0
       65 DUPTABLE                         R6 K7 [{"listOfExpressions"}]
       66 SETTABLEKS                       R2 R6 K0 ["listOfExpressions"]
       68 CALL                             R4 2 -1
       69 RETURN                           R4 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToRoots"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R6 R1 K1 ["stepStateBundle"]
       11 GETTABLEKS                       R6 R6 K2 ["debuggerStateToken"]
       13 GETTABLE                         R5 R2 R6
       14 GETTABLEKS                       R6 R1 K1 ["stepStateBundle"]
       16 GETTABLEKS                       R6 R6 K3 ["threadId"]
       18 GETTABLE                         R4 R5 R6
       19 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
       21 GETTABLEKS                       R5 R5 K4 ["frameNumber"]
       23 GETTABLE                         R3 R4 R5
       24 GETTABLEKS                       R3 R3 K5 ["Watches"]
       26 GETTABLEKS                       R6 R1 K6 ["watchRow"]
       28 GETTABLEKS                       R6 R6 K7 ["pathColumn"]
       30 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R4 K10 [table.insert]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R5 R0 K11 ["stateTokenToFlattenedTree"]
       39 CALL                             R4 1 1
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R4
       42 GETTABLEKS                       R7 R1 K1 ["stepStateBundle"]
       44 CALL                             R5 2 0
       45 GETTABLEKS                       R8 R1 K1 ["stepStateBundle"]
       47 GETTABLEKS                       R8 R8 K2 ["debuggerStateToken"]
       49 GETTABLE                         R7 R4 R8
       50 GETTABLEKS                       R8 R1 K1 ["stepStateBundle"]
       52 GETTABLEKS                       R8 R8 K3 ["threadId"]
       54 GETTABLE                         R6 R7 R8
       55 GETTABLEKS                       R7 R1 K1 ["stepStateBundle"]
       57 GETTABLEKS                       R7 R7 K4 ["frameNumber"]
       59 GETTABLE                         R5 R6 R7
       60 GETTABLEKS                       R5 R5 K5 ["Watches"]
       62 GETTABLEKS                       R6 R1 K6 ["watchRow"]
       64 GETTABLEKS                       R6 R6 K7 ["pathColumn"]
       66 GETTABLEKS                       R7 R1 K6 ["watchRow"]
       68 SETTABLE                         R7 R5 R6
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K12 ["Dictionary"]
       72 GETTABLEKS                       R6 R6 K13 ["join"]
       74 MOVE                             R7 R0
       75 DUPTABLE                         R8 K14 [{"stateTokenToRoots", "stateTokenToFlattenedTree"}]
       76 SETTABLEKS                       R2 R8 K0 ["stateTokenToRoots"]
       78 SETTABLEKS                       R4 R8 K11 ["stateTokenToFlattenedTree"]
       80 CALL                             R6 2 -1
       81 RETURN                           R6 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["stateTokenToRoots"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R6 R1 K1 ["stepStateBundle"]
       11 GETTABLEKS                       R6 R6 K2 ["debuggerStateToken"]
       13 GETTABLE                         R5 R2 R6
       14 GETTABLEKS                       R6 R1 K1 ["stepStateBundle"]
       16 GETTABLEKS                       R6 R6 K3 ["threadId"]
       18 GETTABLE                         R4 R5 R6
       19 GETTABLEKS                       R5 R1 K1 ["stepStateBundle"]
       21 GETTABLEKS                       R5 R5 K4 ["frameNumber"]
       23 GETTABLE                         R3 R4 R5
       24 GETTABLEKS                       R3 R3 K5 ["Watches"]
       26 GETTABLEKS                       R4 R1 K6 ["watchRows"]
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 GETTABLEKS                       R11 R8 K7 ["pathColumn"]
       33 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       35 MOVE                             R10 R3
       36 GETIMPORT                        R9 K10 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R4 2 ; [-9]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R5 R0 K11 ["stateTokenToFlattenedTree"]
       44 CALL                             R4 1 1
       45 GETUPVAL                         R5 1
       46 MOVE                             R6 R4
       47 GETTABLEKS                       R7 R1 K1 ["stepStateBundle"]
       49 CALL                             R5 2 0
       50 GETTABLEKS                       R8 R1 K1 ["stepStateBundle"]
       52 GETTABLEKS                       R8 R8 K2 ["debuggerStateToken"]
       54 GETTABLE                         R7 R4 R8
       55 GETTABLEKS                       R8 R1 K1 ["stepStateBundle"]
       57 GETTABLEKS                       R8 R8 K3 ["threadId"]
       59 GETTABLE                         R6 R7 R8
       60 GETTABLEKS                       R7 R1 K1 ["stepStateBundle"]
       62 GETTABLEKS                       R7 R7 K4 ["frameNumber"]
       64 GETTABLE                         R5 R6 R7
       65 GETTABLEKS                       R5 R5 K5 ["Watches"]
       67 GETTABLEKS                       R6 R1 K6 ["watchRows"]
       69 LOADNIL                          R7
       70 LOADNIL                          R8
       71 FORGPREP                         R6
       72 GETTABLEKS                       R11 R10 K7 ["pathColumn"]
       74 SETTABLE                         R10 R5 R11
       75 FORGLOOP                         R6 2 ; [-4]
       77 GETUPVAL                         R6 2
       78 GETTABLEKS                       R6 R6 K12 ["Dictionary"]
       80 GETTABLEKS                       R6 R6 K13 ["join"]
       82 MOVE                             R7 R0
       83 DUPTABLE                         R8 K14 [{"stateTokenToRoots", "stateTokenToFlattenedTree"}]
       84 SETTABLEKS                       R2 R8 K0 ["stateTokenToRoots"]
       86 SETTABLEKS                       R4 R8 K11 ["stateTokenToFlattenedTree"]
       88 CALL                             R6 2 -1
       89 RETURN                           R6 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfExpressions"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["List"]
       10 GETTABLEKS                       R5 R5 K5 ["removeValue"]
       12 GETTABLEKS                       R6 R0 K2 ["listOfExpressions"]
       14 GETTABLEKS                       R7 R1 K6 ["expression"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["listOfExpressions"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfExpressions"}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K2 ["listOfExpressions"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["isVariablesTab"]
        2 JUMPIFNOT                        R2 ; [+21]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
        6 GETTABLEKS                       R2 R2 K2 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K4 [{"pathToExpansionState"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       13 GETTABLEKS                       R5 R5 K2 ["join"]
       15 GETTABLEKS                       R6 R0 K3 ["pathToExpansionState"]
       17 GETTABLEKS                       R7 R1 K5 ["expansionMapping"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K3 ["pathToExpansionState"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       27 GETTABLEKS                       R2 R2 K2 ["join"]
       29 MOVE                             R3 R0
       30 DUPTABLE                         R4 K7 [{"expressionToExpansionState"}]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       34 GETTABLEKS                       R5 R5 K2 ["join"]
       36 GETTABLEKS                       R6 R0 K6 ["expressionToExpansionState"]
       38 GETTABLEKS                       R7 R1 K5 ["expansionMapping"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K6 ["expressionToExpansionState"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"filterText"}]
        7 GETTABLEKS                       R5 R1 K2 ["filterText"]
        9 SETTABLEKS                       R5 R4 K2 ["filterText"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["currentTab"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Variables"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+18]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       10 GETTABLEKS                       R2 R2 K3 ["join"]
       12 MOVE                             R3 R0
       13 DUPTABLE                         R4 K6 [{"variablesSortDirection", "variablesColumnIndex"}]
       14 GETTABLEKS                       R5 R1 K7 ["sortDirection"]
       16 SETTABLEKS                       R5 R4 K4 ["variablesSortDirection"]
       18 GETTABLEKS                       R5 R1 K8 ["columnIndex"]
       20 SETTABLEKS                       R5 R4 K5 ["variablesColumnIndex"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       27 GETTABLEKS                       R2 R2 K3 ["join"]
       29 MOVE                             R3 R0
       30 DUPTABLE                         R4 K11 [{"watchesSortDirection", "watchesColumnIndex"}]
       31 GETTABLEKS                       R5 R1 K7 ["sortDirection"]
       33 SETTABLEKS                       R5 R4 K9 ["watchesSortDirection"]
       35 GETTABLEKS                       R5 R1 K8 ["columnIndex"]
       37 SETTABLEKS                       R5 R4 K10 ["watchesColumnIndex"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Models"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Packages"]
       35 GETTABLEKS                       R6 R6 K11 ["Framework"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K12 ["Util"]
       40 GETTABLEKS                       R7 R6 K13 ["deepCopy"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R3 K14 ["Watch"]
       46 GETTABLEKS                       R9 R9 K15 ["SetVariablesScopeFilteredOut"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R3 K14 ["Watch"]
       53 GETTABLEKS                       R10 R10 K16 ["SetVariablesTextFilteredOut"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R11 R3 K14 ["Watch"]
       60 GETTABLEKS                       R11 R11 K17 ["SetVariableExpanded"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K4 [require]
       65 GETTABLEKS                       R12 R3 K14 ["Watch"]
       67 GETTABLEKS                       R12 R12 K18 ["AddRootVariables"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K4 [require]
       72 GETTABLEKS                       R13 R3 K14 ["Watch"]
       74 GETTABLEKS                       R13 R13 K19 ["AddChildVariables"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K4 [require]
       79 GETTABLEKS                       R14 R3 K14 ["Watch"]
       81 GETTABLEKS                       R14 R14 K20 ["RemoveDummyVariableFromParent"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K4 [require]
       86 GETTABLEKS                       R15 R3 K14 ["Watch"]
       88 GETTABLEKS                       R15 R15 K21 ["AddChildExpression"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K4 [require]
       93 GETTABLEKS                       R16 R3 K14 ["Watch"]
       95 GETTABLEKS                       R16 R16 K22 ["AddExpression"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K4 [require]
      100 GETTABLEKS                       R17 R3 K14 ["Watch"]
      102 GETTABLEKS                       R17 R17 K23 ["ChangeExpression"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K4 [require]
      107 GETTABLEKS                       R18 R3 K14 ["Watch"]
      109 GETTABLEKS                       R18 R18 K24 ["ExpressionEvaluated"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K4 [require]
      114 GETTABLEKS                       R19 R3 K14 ["Watch"]
      116 GETTABLEKS                       R19 R19 K25 ["ExpressionsEvaluated"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K4 [require]
      121 GETTABLEKS                       R20 R3 K14 ["Watch"]
      123 GETTABLEKS                       R20 R20 K26 ["RemoveExpression"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K4 [require]
      128 GETTABLEKS                       R21 R3 K14 ["Watch"]
      130 GETTABLEKS                       R21 R21 K27 ["SetExpansionTree"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K4 [require]
      135 GETTABLEKS                       R22 R3 K14 ["Watch"]
      137 GETTABLEKS                       R22 R22 K28 ["SetWatchSortState"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K4 [require]
      142 GETTABLEKS                       R23 R3 K14 ["Watch"]
      144 GETTABLEKS                       R23 R23 K29 ["SetExpressionExpanded"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K4 [require]
      149 GETTABLEKS                       R24 R3 K14 ["Watch"]
      151 GETTABLEKS                       R24 R24 K30 ["ClearAllExpressions"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K4 [require]
      156 GETTABLEKS                       R25 R3 K31 ["Common"]
      158 GETTABLEKS                       R25 R25 K32 ["SimPaused"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K4 [require]
      163 GETTABLEKS                       R26 R3 K31 ["Common"]
      165 GETTABLEKS                       R26 R26 K33 ["Resumed"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K4 [require]
      170 GETTABLEKS                       R27 R3 K31 ["Common"]
      172 GETTABLEKS                       R27 R27 K34 ["ClearConnectionData"]
      174 CALL                             R26 1 1
      175 GETIMPORT                        R27 K4 [require]
      177 GETTABLEKS                       R28 R3 K14 ["Watch"]
      179 GETTABLEKS                       R28 R28 K35 ["ScopeFilterChange"]
      181 CALL                             R27 1 1
      182 GETIMPORT                        R28 K4 [require]
      184 GETTABLEKS                       R29 R3 K14 ["Watch"]
      186 GETTABLEKS                       R29 R29 K36 ["VariablesFilterChange"]
      188 CALL                             R28 1 1
      189 GETIMPORT                        R29 K4 [require]
      191 GETTABLEKS                       R30 R3 K14 ["Watch"]
      193 GETTABLEKS                       R30 R30 K37 ["MyWatchesFilterChange"]
      195 CALL                             R29 1 1
      196 GETIMPORT                        R30 K4 [require]
      198 GETTABLEKS                       R31 R3 K14 ["Watch"]
      200 GETTABLEKS                       R31 R31 K38 ["SetTab"]
      202 CALL                             R30 1 1
      203 GETIMPORT                        R31 K4 [require]
      205 GETTABLEKS                       R32 R3 K14 ["Watch"]
      207 GETTABLEKS                       R32 R32 K39 ["FilterTextChanged"]
      209 CALL                             R31 1 1
      210 GETIMPORT                        R32 K4 [require]
      212 GETTABLEKS                       R33 R4 K40 ["DebuggerStateToken"]
      214 CALL                             R32 1 1
      215 GETIMPORT                        R33 K4 [require]
      217 GETTABLEKS                       R34 R4 K14 ["Watch"]
      219 GETTABLEKS                       R34 R34 K41 ["VariableRow"]
      221 CALL                             R33 1 1
      222 GETIMPORT                        R34 K4 [require]
      224 GETTABLEKS                       R35 R4 K14 ["Watch"]
      226 GETTABLEKS                       R35 R35 K42 ["WatchRow"]
      228 CALL                             R34 1 1
      229 GETIMPORT                        R35 K4 [require]
      231 GETTABLEKS                       R36 R4 K14 ["Watch"]
      233 GETTABLEKS                       R36 R36 K43 ["ScopeEnum"]
      235 CALL                             R35 1 1
      236 GETIMPORT                        R36 K4 [require]
      238 GETTABLEKS                       R37 R4 K14 ["Watch"]
      240 GETTABLEKS                       R37 R37 K44 ["TableTab"]
      242 CALL                             R36 1 1
      243 GETIMPORT                        R37 K4 [require]
      245 GETTABLEKS                       R38 R4 K14 ["Watch"]
      247 GETTABLEKS                       R38 R38 K45 ["VariablesColumnEnum"]
      249 CALL                             R37 1 1
      250 GETIMPORT                        R38 K4 [require]
      252 GETTABLEKS                       R39 R4 K14 ["Watch"]
      254 GETTABLEKS                       R39 R39 K46 ["MyWatchesColumnEnum"]
      256 CALL                             R38 1 1
      257 GETIMPORT                        R39 K4 [require]
      259 GETTABLEKS                       R40 R0 K8 ["Src"]
      261 GETTABLEKS                       R40 R40 K12 ["Util"]
      263 GETTABLEKS                       R40 R40 K47 ["Constants"]
      265 CALL                             R39 1 1
      266 DUPCLOSURE                       R40 K48 [PROTO_0]
      267 DUPCLOSURE                       R41 K49 [PROTO_1]
      268 DUPCLOSURE                       R42 K50 [PROTO_2]
      269 DUPCLOSURE                       R43 K51 [PROTO_3]
      270 DUPCLOSURE                       R44 K52 [PROTO_4]
      271 DUPTABLE                         R45 K67 [{"stateTokenToRoots", "stateTokenToFlattenedTree", "currentTab", "listOfEnabledScopes", "listOfVariablesColumns", "listOfMyWatchesColumns", "listOfExpressions", "pathToExpansionState", "expressionToExpansionState", "filterText", "variablesSortDirection", "variablesColumnIndex", "watchesSortDirection", "watchesColumnIndex"}]
      272 NEWTABLE                         R46 0 0
      274 SETTABLEKS                       R46 R45 K53 ["stateTokenToRoots"]
      276 NEWTABLE                         R46 0 0
      278 SETTABLEKS                       R46 R45 K54 ["stateTokenToFlattenedTree"]
      280 GETTABLEKS                       R46 R36 K68 ["Variables"]
      282 SETTABLEKS                       R46 R45 K55 ["currentTab"]
      284 NEWTABLE                         R46 0 3
      286 GETTABLEKS                       R47 R35 K69 ["Local"]
      288 GETTABLEKS                       R48 R35 K70 ["Upvalue"]
      290 GETTABLEKS                       R49 R35 K71 ["Global"]
      292 SETLIST                          R46 R47 3 [1]
      294 SETTABLEKS                       R46 R45 K56 ["listOfEnabledScopes"]
      296 NEWTABLE                         R46 0 3
      298 GETTABLEKS                       R47 R37 K72 ["Scope"]
      300 GETTABLEKS                       R48 R37 K73 ["Value"]
      302 GETTABLEKS                       R49 R37 K74 ["DataType"]
      304 SETLIST                          R46 R47 3 [1]
      306 SETTABLEKS                       R46 R45 K57 ["listOfVariablesColumns"]
      308 NEWTABLE                         R46 0 2
      310 GETTABLEKS                       R47 R38 K73 ["Value"]
      312 GETTABLEKS                       R48 R38 K74 ["DataType"]
      314 SETLIST                          R46 R47 2 [1]
      316 SETTABLEKS                       R46 R45 K58 ["listOfMyWatchesColumns"]
      318 NEWTABLE                         R46 0 0
      320 SETTABLEKS                       R46 R45 K59 ["listOfExpressions"]
      322 NEWTABLE                         R46 0 0
      324 SETTABLEKS                       R46 R45 K60 ["pathToExpansionState"]
      326 NEWTABLE                         R46 0 0
      328 SETTABLEKS                       R46 R45 K61 ["expressionToExpansionState"]
      330 LOADK                            R46 K75 [""]
      331 SETTABLEKS                       R46 R45 K62 ["filterText"]
      333 LOADNIL                          R46
      334 SETTABLEKS                       R46 R45 K63 ["variablesSortDirection"]
      336 LOADNIL                          R46
      337 SETTABLEKS                       R46 R45 K64 ["variablesColumnIndex"]
      339 LOADNIL                          R46
      340 SETTABLEKS                       R46 R45 K65 ["watchesSortDirection"]
      342 LOADNIL                          R46
      343 SETTABLEKS                       R46 R45 K66 ["watchesColumnIndex"]
      345 GETTABLEKS                       R46 R1 K76 ["createReducer"]
      347 MOVE                             R47 R45
      348 NEWTABLE                         R48 32 0
      350 GETTABLEKS                       R49 R24 K77 ["name"]
      352 DUPCLOSURE                       R50 K78 [PROTO_5]
      353 CAPTURE                          VAL R2
      354 SETTABLE                         R50 R48 R49
      355 GETTABLEKS                       R49 R25 K77 ["name"]
      357 DUPCLOSURE                       R50 K79 [PROTO_6]
      358 CAPTURE                          VAL R7
      359 CAPTURE                          VAL R2
      360 SETTABLE                         R50 R48 R49
      361 GETTABLEKS                       R49 R26 K77 ["name"]
      363 DUPCLOSURE                       R50 K80 [PROTO_7]
      364 CAPTURE                          VAL R2
      365 SETTABLE                         R50 R48 R49
      366 GETTABLEKS                       R49 R11 K77 ["name"]
      368 DUPCLOSURE                       R50 K81 [PROTO_8]
      369 CAPTURE                          VAL R7
      370 CAPTURE                          VAL R40
      371 CAPTURE                          VAL R2
      372 SETTABLE                         R50 R48 R49
      373 GETTABLEKS                       R49 R12 K77 ["name"]
      375 DUPCLOSURE                       R50 K82 [PROTO_9]
      376 CAPTURE                          VAL R7
      377 CAPTURE                          VAL R42
      378 CAPTURE                          VAL R2
      379 SETTABLE                         R50 R48 R49
      380 GETTABLEKS                       R49 R13 K77 ["name"]
      382 DUPCLOSURE                       R50 K83 [PROTO_10]
      383 CAPTURE                          VAL R7
      384 CAPTURE                          VAL R42
      385 CAPTURE                          VAL R43
      386 CAPTURE                          VAL R39
      387 CAPTURE                          VAL R2
      388 SETTABLE                         R50 R48 R49
      389 GETTABLEKS                       R49 R10 K77 ["name"]
      391 DUPCLOSURE                       R50 K84 [PROTO_11]
      392 CAPTURE                          VAL R2
      393 SETTABLE                         R50 R48 R49
      394 GETTABLEKS                       R49 R22 K77 ["name"]
      396 DUPCLOSURE                       R50 K85 [PROTO_12]
      397 CAPTURE                          VAL R2
      398 SETTABLE                         R50 R48 R49
      399 GETTABLEKS                       R49 R8 K77 ["name"]
      401 DUPCLOSURE                       R50 K86 [PROTO_13]
      402 CAPTURE                          VAL R7
      403 CAPTURE                          VAL R42
      404 CAPTURE                          VAL R2
      405 SETTABLE                         R50 R48 R49
      406 GETTABLEKS                       R49 R9 K77 ["name"]
      408 DUPCLOSURE                       R50 K87 [PROTO_14]
      409 CAPTURE                          VAL R7
      410 CAPTURE                          VAL R42
      411 CAPTURE                          VAL R2
      412 SETTABLE                         R50 R48 R49
      413 GETTABLEKS                       R49 R30 K77 ["name"]
      415 DUPCLOSURE                       R50 K88 [PROTO_15]
      416 CAPTURE                          VAL R2
      417 SETTABLE                         R50 R48 R49
      418 GETTABLEKS                       R49 R27 K77 ["name"]
      420 DUPCLOSURE                       R50 K89 [PROTO_16]
      421 CAPTURE                          VAL R2
      422 SETTABLE                         R50 R48 R49
      423 GETTABLEKS                       R49 R28 K77 ["name"]
      425 DUPCLOSURE                       R50 K90 [PROTO_17]
      426 CAPTURE                          VAL R2
      427 SETTABLE                         R50 R48 R49
      428 GETTABLEKS                       R49 R29 K77 ["name"]
      430 DUPCLOSURE                       R50 K91 [PROTO_18]
      431 CAPTURE                          VAL R2
      432 SETTABLE                         R50 R48 R49
      433 GETTABLEKS                       R49 R14 K77 ["name"]
      435 DUPCLOSURE                       R50 K92 [PROTO_19]
      436 CAPTURE                          VAL R7
      437 CAPTURE                          VAL R43
      438 CAPTURE                          VAL R2
      439 SETTABLE                         R50 R48 R49
      440 GETTABLEKS                       R49 R15 K77 ["name"]
      442 DUPCLOSURE                       R50 K93 [PROTO_20]
      443 CAPTURE                          VAL R2
      444 SETTABLE                         R50 R48 R49
      445 GETTABLEKS                       R49 R16 K77 ["name"]
      447 DUPCLOSURE                       R50 K94 [PROTO_21]
      448 CAPTURE                          VAL R7
      449 CAPTURE                          VAL R2
      450 SETTABLE                         R50 R48 R49
      451 GETTABLEKS                       R49 R17 K77 ["name"]
      453 DUPCLOSURE                       R50 K95 [PROTO_22]
      454 CAPTURE                          VAL R7
      455 CAPTURE                          VAL R40
      456 CAPTURE                          VAL R2
      457 SETTABLE                         R50 R48 R49
      458 GETTABLEKS                       R49 R18 K77 ["name"]
      460 DUPCLOSURE                       R50 K96 [PROTO_23]
      461 CAPTURE                          VAL R7
      462 CAPTURE                          VAL R40
      463 CAPTURE                          VAL R2
      464 SETTABLE                         R50 R48 R49
      465 GETTABLEKS                       R49 R19 K77 ["name"]
      467 DUPCLOSURE                       R50 K97 [PROTO_24]
      468 CAPTURE                          VAL R2
      469 SETTABLE                         R50 R48 R49
      470 GETTABLEKS                       R49 R23 K77 ["name"]
      472 DUPCLOSURE                       R50 K98 [PROTO_25]
      473 CAPTURE                          VAL R2
      474 SETTABLE                         R50 R48 R49
      475 GETTABLEKS                       R49 R20 K77 ["name"]
      477 DUPCLOSURE                       R50 K99 [PROTO_26]
      478 CAPTURE                          VAL R2
      479 SETTABLE                         R50 R48 R49
      480 GETTABLEKS                       R49 R31 K77 ["name"]
      482 DUPCLOSURE                       R50 K100 [PROTO_27]
      483 CAPTURE                          VAL R2
      484 SETTABLE                         R50 R48 R49
      485 GETTABLEKS                       R49 R21 K77 ["name"]
      487 DUPCLOSURE                       R50 K101 [PROTO_28]
      488 CAPTURE                          VAL R36
      489 CAPTURE                          VAL R2
      490 SETTABLE                         R50 R48 R49
      491 CALL                             R46 2 -1
      492 RETURN                           R46 -1
