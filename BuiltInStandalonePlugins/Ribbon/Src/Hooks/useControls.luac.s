PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K3 [{"Controls", "Actions", "Settings"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["Controls"]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K1 ["Actions"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["Settings"]
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 MOVE                             R5 R1
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 ADDK                             R4 R4 K4 [1]
       22 MOVE                             R10 R9
       23 MOVE                             R11 R0
       24 CALL                             R10 1 1
       25 GETTABLEKS                       R11 R10 K5 ["state"]
       27 JUMPIFNOTEQKS                    R11 K6 ["loading"] ; [+2]
       29 ADDK                             R3 R3 K4 [1]
       30 GETTABLEKS                       R11 R10 K5 ["state"]
       32 JUMPIFNOTEQKS                    R11 K7 ["ready"] ; [+20]
       34 GETTABLEKS                       R11 R10 K8 ["kind"]
       36 JUMPIFNOTEQKS                    R11 K9 ["action"] ; [+7]
       38 GETTABLEKS                       R11 R2 K1 ["Actions"]
       40 GETTABLEKS                       R12 R10 K10 ["value"]
       42 SETTABLE                         R12 R11 R8
       43 JUMP                             ; [+9]
       44 GETTABLEKS                       R11 R10 K8 ["kind"]
       46 JUMPIFNOTEQKS                    R11 K11 ["setting"] ; [+6]
       48 GETTABLEKS                       R11 R2 K2 ["Settings"]
       50 GETTABLEKS                       R12 R10 K10 ["value"]
       52 SETTABLE                         R12 R11 R8
       53 FORGLOOP                         R5 2 ; [-33]
       55 GETUPVAL                         R5 2
       56 JUMPIF                           R5 ; [+47]
       57 JUMPIFNOTEQKN                    R3 K12 [0] ; [+46]
       59 LOADN                            R5 0
       60 JUMPIFNOTLT                      R5 R4 ; [+43]
       62 LOADB                            R5 1
       63 SETUPVAL                         R5 2
       64 GETIMPORT                        R7 K16 [os.clock]
       66 CALL                             R7 0 1
       67 GETUPVAL                         R8 3
       68 SUB                              R6 R7 R8
       69 MULK                             R5 R6 K13 [1000]
       70 DIV                              R6 R5 R4
       71 GETUPVAL                         R7 4
       72 GETUPVAL                         R10 5
       73 GETTABLEKS                       R9 R10 K17 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
       75 GETUPVAL                         R11 5
       76 GETTABLEKS                       R10 R11 K18 ["DEFAULT_METADATA"]
       78 MOVE                             R11 R5
       79 NAMECALL                         R7 R7 K19 ["LogStat"]
       81 CALL                             R7 4 0
       82 GETUPVAL                         R7 4
       83 GETUPVAL                         R10 5
       84 GETTABLEKS                       R9 R10 K20 ["USE_CONTROLS_NUM_ITEMS"]
       86 GETUPVAL                         R11 5
       87 GETTABLEKS                       R10 R11 K18 ["DEFAULT_METADATA"]
       89 MOVE                             R11 R4
       90 NAMECALL                         R7 R7 K19 ["LogStat"]
       92 CALL                             R7 4 0
       93 GETUPVAL                         R7 4
       94 GETUPVAL                         R10 5
       95 GETTABLEKS                       R9 R10 K21 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
       97 GETUPVAL                         R11 5
       98 GETTABLEKS                       R10 R11 K18 ["DEFAULT_METADATA"]
      100 MOVE                             R11 R6
      101 NAMECALL                         R7 R7 K19 ["LogStat"]
      103 CALL                             R7 4 0
      104 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R2 R2 K3 ["watchControls"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K4 ["createComputed"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          REF R1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CALL                             R3 1 -1
       20 CLOSEUPVALS                      R1
       21 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Category"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Actions"] ; [+9]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["toString"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLE                         R0 R1 R2
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K0 ["Category"]
       14 JUMPIFNOTEQKS                    R1 K3 ["Settings"] ; [+8]
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K2 ["toString"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLE                         R0 R1 R2
       23 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"Controls", "Actions", "Settings"}]
        1 GETTABLEKS                       R2 R0 K0 ["Controls"]
        3 SETTABLEKS                       R2 R1 K0 ["Controls"]
        5 GETTABLEKS                       R2 R0 K1 ["Actions"]
        7 SETTABLEKS                       R2 R1 K1 ["Actions"]
        9 GETTABLEKS                       R2 R0 K2 ["Settings"]
       11 SETTABLEKS                       R2 R1 K2 ["Settings"]
       13 GETTABLEKS                       R2 R1 K2 ["Settings"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["toString"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K5 ["Uri"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 SETTABLE                         R4 R2 R3
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K4 ["toString"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K5 ["Uri"]
       31 CALL                             R3 1 1
       32 LOADB                            R4 1
       33 SETTABLE                         R4 R2 R3
       34 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["MultiBindAsync"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+15]
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R8 2
       12 GETUPVAL                         R11 3
       13 NAMECALL                         R9 R6 K2 ["Connect"]
       15 CALL                             R9 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+1]
       17 GETUPVAL                         R7 4
       18 CALL                             R7 -1 0
       19 FORGLOOP                         R2 2 ; [-9]
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K4 [warn]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"Controls", "Actions", "Settings"}]
        1 GETTABLEKS                       R2 R0 K0 ["Controls"]
        3 SETTABLEKS                       R2 R1 K0 ["Controls"]
        5 GETTABLEKS                       R2 R0 K1 ["Actions"]
        7 SETTABLEKS                       R2 R1 K1 ["Actions"]
        9 GETTABLEKS                       R2 R0 K2 ["Settings"]
       11 SETTABLEKS                       R2 R1 K2 ["Settings"]
       13 GETTABLEKS                       R2 R1 K1 ["Actions"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["toString"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K5 ["Uri"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 SETTABLE                         R4 R2 R3
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K4 ["toString"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K5 ["Uri"]
       31 CALL                             R3 1 1
       32 LOADB                            R4 1
       33 SETTABLE                         R4 R2 R3
       34 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["MultiBindToChangedAsync"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+15]
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R9 2
       13 GETUPVAL                         R12 3
       14 NAMECALL                         R10 R7 K2 ["Connect"]
       16 CALL                             R10 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+1]
       18 GETUPVAL                         R8 4
       19 CALL                             R8 -1 0
       20 FORGLOOP                         R3 2 ; [-9]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 5
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETIMPORT                        R3 K4 [warn]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K3 [{"Controls", "Actions", "Settings"}]
        1 GETTABLEKS                       R2 R0 K0 ["Controls"]
        3 SETTABLEKS                       R2 R1 K0 ["Controls"]
        5 GETTABLEKS                       R2 R0 K1 ["Actions"]
        7 SETTABLEKS                       R2 R1 K1 ["Actions"]
        9 GETTABLEKS                       R2 R0 K2 ["Settings"]
       11 SETTABLEKS                       R2 R1 K2 ["Settings"]
       13 GETUPVAL                         R2 0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETUPVAL                         R8 1
       18 GETUPVAL                         R10 2
       19 GETTABLEKS                       R9 R10 K4 ["toString"]
       21 GETTABLEKS                       R10 R6 K5 ["Uri"]
       23 CALL                             R9 1 1
       24 GETTABLE                         R7 R8 R9
       25 JUMPIF                           R7 ; [+9]
       26 GETTABLEKS                       R7 R1 K1 ["Actions"]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K4 ["toString"]
       31 GETTABLEKS                       R9 R6 K5 ["Uri"]
       33 CALL                             R8 1 1
       34 SETTABLE                         R6 R7 R8
       35 FORGLOOP                         R2 2 ; [-19]
       37 GETUPVAL                         R2 3
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 GETUPVAL                         R8 4
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R9 R10 K4 ["toString"]
       45 GETTABLEKS                       R10 R6 K5 ["Uri"]
       47 CALL                             R9 1 1
       48 GETTABLE                         R7 R8 R9
       49 JUMPIF                           R7 ; [+9]
       50 GETTABLEKS                       R7 R1 K2 ["Settings"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K4 ["toString"]
       55 GETTABLEKS                       R9 R6 K5 ["Uri"]
       57 CALL                             R8 1 1
       58 SETTABLE                         R6 R7 R8
       59 FORGLOOP                         R2 2 ; [-19]
       61 RETURN                           R1 1

PROTO_12:
        0 LOADB                            R0 1
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETIMPORT                        R1 K1 [wait]
        4 CALL                             R1 0 0
        5 LOADB                            R0 0
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETIMPORT                        R6 K4 [coroutine.status]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 JUMPIFEQKS                       R6 K5 ["dead"] ; [+2]
       16 LOADB                            R0 1
       17 FORGLOOP                         R1 2 ; [-8]
       19 JUMPBACK                         ; [-19]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K6 ["GetAsync"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 3
       26 GETUPVAL                         R4 4
       27 NAMECALL                         R2 R2 K6 ["GetAsync"]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 5
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U8
       37 CALL                             R3 1 0
       38 GETIMPORT                        R5 K10 [os.clock]
       40 CALL                             R5 0 1
       41 GETUPVAL                         R6 9
       42 SUB                              R4 R5 R6
       43 MULK                             R3 R4 K7 [1000]
       44 GETUPVAL                         R6 2
       45 LENGTH                           R5 R6
       46 GETUPVAL                         R7 4
       47 LENGTH                           R6 R7
       48 ADD                              R4 R5 R6
       49 LOADN                            R5 0
       50 JUMPIFNOTLT                      R5 R4 ; [+35]
       52 DIV                              R5 R3 R4
       53 GETUPVAL                         R6 10
       54 GETUPVAL                         R9 11
       55 GETTABLEKS                       R8 R9 K11 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
       57 GETUPVAL                         R10 11
       58 GETTABLEKS                       R9 R10 K12 ["DEFAULT_METADATA"]
       60 MOVE                             R10 R3
       61 NAMECALL                         R6 R6 K13 ["LogStat"]
       63 CALL                             R6 4 0
       64 GETUPVAL                         R6 10
       65 GETUPVAL                         R9 11
       66 GETTABLEKS                       R8 R9 K14 ["USE_CONTROLS_NUM_ITEMS"]
       68 GETUPVAL                         R10 11
       69 GETTABLEKS                       R9 R10 K12 ["DEFAULT_METADATA"]
       71 MOVE                             R10 R4
       72 NAMECALL                         R6 R6 K13 ["LogStat"]
       74 CALL                             R6 4 0
       75 GETUPVAL                         R6 10
       76 GETUPVAL                         R9 11
       77 GETTABLEKS                       R8 R9 K15 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
       79 GETUPVAL                         R10 11
       80 GETTABLEKS                       R9 R10 K12 ["DEFAULT_METADATA"]
       82 MOVE                             R10 R5
       83 NAMECALL                         R6 R6 K13 ["LogStat"]
       85 CALL                             R6 4 0
       86 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETIMPORT                        R5 K2 [coroutine.status]
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 JUMPIFEQKS                       R5 K3 ["dead"] ; [+5]
       10 GETIMPORT                        R5 K5 [coroutine.close]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 ; [-11]
       16 GETUPVAL                         R0 1
       17 LOADNIL                          R1
       18 LOADNIL                          R2
       19 FORGPREP                         R0
       20 NAMECALL                         R5 R4 K6 ["Disconnect"]
       22 CALL                             R5 1 0
       23 FORGLOOP                         R0 2 ; [-4]
       25 GETUPVAL                         R0 2
       26 LOADNIL                          R1
       27 LOADNIL                          R2
       28 FORGPREP                         R0
       29 NAMECALL                         R5 R4 K6 ["Disconnect"]
       31 CALL                             R5 1 0
       32 FORGLOOP                         R0 2 ; [-4]
       34 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 GETUPVAL                         R6 3
       14 CALL                             R3 3 0
       15 LOADNIL                          R3
       16 NEWTABLE                         R4 0 0
       18 LOADNIL                          R5
       19 NEWTABLE                         R6 0 0
       21 GETUPVAL                         R7 4
       22 MOVE                             R8 R2
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 5
       25 MOVE                             R10 R7
       26 NAMECALL                         R8 R8 K3 ["GetAsync"]
       28 CALL                             R8 2 1
       29 MOVE                             R5 R8
       30 MOVE                             R8 R5
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 FORGPREP                         R8
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R13 R14 K4 ["toString"]
       37 GETTABLEKS                       R14 R12 K5 ["Uri"]
       39 CALL                             R13 1 1
       40 SETTABLE                         R12 R6 R13
       41 GETTABLEKS                       R13 R12 K6 ["Values"]
       43 JUMPIFNOT                        R13 ; [+19]
       44 GETTABLEKS                       R13 R12 K6 ["Values"]
       46 LOADNIL                          R14
       47 LOADNIL                          R15
       48 FORGPREP                         R13
       49 GETTABLEKS                       R18 R17 K7 ["Action"]
       51 JUMPIFNOT                        R18 ; [+9]
       52 GETUPVAL                         R19 2
       53 GETTABLEKS                       R18 R19 K4 ["toString"]
       55 GETTABLEKS                       R19 R17 K7 ["Action"]
       57 CALL                             R18 1 1
       58 GETTABLEKS                       R19 R17 K7 ["Action"]
       60 SETTABLE                         R19 R1 R18
       61 FORGLOOP                         R13 2 ; [-13]
       63 FORGLOOP                         R8 2 ; [-30]
       65 GETUPVAL                         R8 4
       66 MOVE                             R9 R1
       67 CALL                             R8 1 1
       68 GETUPVAL                         R9 6
       69 MOVE                             R11 R8
       70 NAMECALL                         R9 R9 K3 ["GetAsync"]
       72 CALL                             R9 2 1
       73 MOVE                             R3 R9
       74 MOVE                             R9 R3
       75 LOADNIL                          R10
       76 LOADNIL                          R11
       77 FORGPREP                         R9
       78 GETUPVAL                         R15 2
       79 GETTABLEKS                       R14 R15 K4 ["toString"]
       81 GETTABLEKS                       R15 R13 K5 ["Uri"]
       83 CALL                             R14 1 1
       84 SETTABLE                         R13 R4 R14
       85 FORGLOOP                         R9 2 ; [-8]
       87 GETUPVAL                         R9 7
       88 DUPTABLE                         R10 K11 [{"Controls", "Actions", "Settings"}]
       89 GETUPVAL                         R11 1
       90 SETTABLEKS                       R11 R10 K8 ["Controls"]
       92 SETTABLEKS                       R4 R10 K9 ["Actions"]
       94 SETTABLEKS                       R6 R10 K10 ["Settings"]
       96 CALL                             R9 1 0
       97 NEWTABLE                         R9 0 0
       99 NEWTABLE                         R10 0 0
      101 NEWTABLE                         R11 0 0
      103 NEWCLOSURE                       R12 P1
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          VAL R11
      107 NEWTABLE                         R13 0 0
      109 NEWCLOSURE                       R14 P2
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 CAPTURE                          UPVAL U8
      115 GETIMPORT                        R15 K14 [task.defer]
      117 MOVE                             R16 R14
      118 CALL                             R15 1 1
      119 FASTCALL2                        TABLE_INSERT R9 R15 ; [+4]
      121 MOVE                             R17 R9
      122 MOVE                             R18 R15
      123 GETUPVAL                         R16 8
      124 CALL                             R16 2 0
      125 NEWCLOSURE                       R16 P3
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          VAL R10
      129 NEWTABLE                         R17 0 0
      131 NEWCLOSURE                       R18 P4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R16
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          UPVAL U3
      138 GETIMPORT                        R19 K14 [task.defer]
      140 MOVE                             R20 R18
      141 CALL                             R19 1 1
      142 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      144 MOVE                             R21 R9
      145 MOVE                             R22 R19
      146 GETUPVAL                         R20 8
      147 CALL                             R20 2 0
      148 NEWCLOSURE                       R20 P5
      149 CAPTURE                          VAL R9
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          VAL R8
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          VAL R7
      154 CAPTURE                          UPVAL U7
      155 CAPTURE                          VAL R10
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          UPVAL U10
      161 LENGTH                           R21 R9
      162 LOADN                            R22 0
      163 JUMPIFNOTLT                      R22 R21 ; [+5]
      165 GETIMPORT                        R21 K14 [task.defer]
      167 MOVE                             R22 R20
      168 CALL                             R21 1 0
      169 NEWCLOSURE                       R21 P6
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R17
      173 RETURN                           R21 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+23]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 3
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 NEWTABLE                         R6 0 2
       15 MOVE                             R7 R3
       16 MOVE                             R8 R1
       17 SETLIST                          R6 R7 2 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R6 7
       21 GETTABLEKS                       R5 R6 K0 ["useSignalState"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 -1
       25 RETURN                           R5 -1
       26 LOADK                            R5 K1 ["Actions"]
       27 NAMECALL                         R3 R0 K2 ["GetPluginComponent"]
       29 CALL                             R3 2 1
       30 LOADK                            R6 K3 ["Settings"]
       31 NAMECALL                         R4 R0 K2 ["GetPluginComponent"]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 8
       35 DUPTABLE                         R6 K5 [{"Controls", "Actions", "Settings"}]
       36 NEWTABLE                         R7 0 0
       38 SETTABLEKS                       R7 R6 K4 ["Controls"]
       40 NEWTABLE                         R7 0 0
       42 SETTABLEKS                       R7 R6 K1 ["Actions"]
       44 NEWTABLE                         R7 0 0
       46 SETTABLEKS                       R7 R6 K3 ["Settings"]
       48 CALL                             R5 1 2
       49 GETUPVAL                         R7 9
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U12
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R6
       59 CAPTURE                          UPVAL U13
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 NEWTABLE                         R9 0 3
       64 MOVE                             R10 R1
       65 MOVE                             R11 R6
       66 MOVE                             R12 R2
       67 SETLIST                          R9 R10 3 [1]
       69 CALL                             R7 2 0
       70 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TelemetryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["useContext"]
       22 GETTABLEKS                       R4 R2 K13 ["useEffect"]
       24 GETTABLEKS                       R5 R2 K14 ["useMemo"]
       26 GETTABLEKS                       R6 R2 K15 ["useState"]
       28 GETIMPORT                        R7 K9 [require]
       30 GETTABLEKS                       R10 R0 K16 ["Src"]
       32 GETTABLEKS                       R9 R10 K17 ["SharedFlags"]
       34 GETTABLEKS                       R8 R9 K18 ["getFeatureRibbonControlsCaching"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K9 [require]
       39 GETTABLEKS                       R11 R0 K16 ["Src"]
       41 GETTABLEKS                       R10 R11 K19 ["Contexts"]
       43 GETTABLEKS                       R9 R10 K20 ["ControlSignalStoreContext"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K9 [require]
       48 GETTABLEKS                       R11 R0 K10 ["Packages"]
       50 GETTABLEKS                       R10 R11 K21 ["Signals"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K9 [require]
       55 GETTABLEKS                       R12 R0 K10 ["Packages"]
       57 GETTABLEKS                       R11 R12 K22 ["SignalsReact"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K9 [require]
       62 GETTABLEKS                       R13 R0 K10 ["Packages"]
       64 GETTABLEKS                       R12 R13 K23 ["StudioFoundation"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R13 R11 K24 ["Util"]
       69 GETTABLEKS                       R12 R13 K25 ["StudioUri"]
       71 GETIMPORT                        R13 K9 [require]
       73 GETTABLEKS                       R15 R0 K16 ["Src"]
       75 GETTABLEKS                       R14 R15 K26 ["Types"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K9 [require]
       80 GETTABLEKS                       R17 R0 K16 ["Src"]
       82 GETTABLEKS                       R16 R17 K24 ["Util"]
       84 GETTABLEKS                       R15 R16 K27 ["visitControlUris"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K30 [table.insert]
       89 GETIMPORT                        R16 K9 [require]
       91 GETTABLEKS                       R18 R0 K10 ["Packages"]
       93 GETTABLEKS                       R17 R18 K31 ["Dash"]
       95 CALL                             R16 1 1
       96 GETTABLEKS                       R17 R16 K32 ["values"]
       98 GETIMPORT                        R18 K9 [require]
      100 GETTABLEKS                       R21 R0 K16 ["Src"]
      102 GETTABLEKS                       R20 R21 K33 ["Resources"]
      104 GETTABLEKS                       R19 R20 K34 ["TelemetryConfigs"]
      106 CALL                             R18 1 1
      107 DUPCLOSURE                       R19 K35 [PROTO_15]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R15
      122 RETURN                           R19 1
