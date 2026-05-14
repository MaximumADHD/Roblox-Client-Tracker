PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+23]
        7 GETTABLEKS                       R2 R1 K3 ["props"]
        9 JUMPIFNOT                        R2 ; [+19]
       10 GETTABLEKS                       R2 R1 K3 ["props"]
       12 GETTABLEKS                       R2 R2 K4 ["presenceId"]
       14 JUMPIFNOT                        R2 ; [+14]
       15 GETIMPORT                        R2 K7 [string.format]
       17 LOADK                            R3 K8 ["%s:%s"]
       18 MOVE                             R4 R0
       19 GETTABLEKS                       R6 R1 K3 ["props"]
       21 GETTABLEKS                       R6 R6 K4 ["presenceId"]
       23 FASTCALL1                        TOSTRING R6 ; [+2]
       24 GETIMPORT                        R5 K10 [tostring]
       26 CALL                             R5 1 1
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1
       29 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [pairs]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K5 ["type"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K6 ["Entering"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+18]
       16 DUPTABLE                         R7 K11 [{"isPresent", "component", "safeToRemove", "dictionaryKey"}]
       17 LOADB                            R8 1
       18 SETTABLEKS                       R8 R7 K7 ["isPresent"]
       20 GETTABLEKS                       R8 R6 K8 ["component"]
       22 SETTABLEKS                       R8 R7 K8 ["component"]
       24 LOADB                            R8 0
       25 SETTABLEKS                       R8 R7 K9 ["safeToRemove"]
       27 GETTABLEKS                       R8 R6 K10 ["dictionaryKey"]
       29 SETTABLEKS                       R8 R7 K10 ["dictionaryKey"]
       31 SETTABLE                         R7 R1 R5
       32 JUMP                             ; [+34]
       33 GETTABLEKS                       R7 R6 K5 ["type"]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K12 ["Exiting"]
       38 JUMPIFNOTEQ                      R7 R8 ; [+28]
       40 GETTABLE                         R7 R1 R5
       41 JUMPIFNOT                        R7 ; [+25]
       42 GETTABLE                         R7 R1 R5
       43 GETTABLEKS                       R7 R7 K7 ["isPresent"]
       45 JUMPIFNOT                        R7 ; [+21]
       46 DUPTABLE                         R7 K11 [{"isPresent", "component", "safeToRemove", "dictionaryKey"}]
       47 LOADB                            R8 0
       48 SETTABLEKS                       R8 R7 K7 ["isPresent"]
       50 GETTABLEKS                       R8 R6 K8 ["component"]
       52 SETTABLEKS                       R8 R7 K8 ["component"]
       54 LOADB                            R8 0
       55 SETTABLEKS                       R8 R7 K9 ["safeToRemove"]
       57 GETTABLEKS                       R8 R6 K10 ["dictionaryKey"]
       59 SETTABLEKS                       R8 R7 K10 ["dictionaryKey"]
       61 SETTABLE                         R7 R1 R5
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K13 ["current"]
       65 LOADB                            R8 1
       66 SETTABLE                         R8 R7 R5
       67 FORGLOOP                         R2 2 ; [-59]
       69 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+67]
        5 GETUPVAL                         R2 0
        6 FASTCALL1                        TYPEOF R2 ; [+2]
        7 GETIMPORT                        R1 K1 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+60]
       12 GETIMPORT                        R1 K4 [pairs]
       14 GETUPVAL                         R2 0
       15 CALL                             R1 1 3
       16 FORGPREP_NEXT                    R1
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K1 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+46]
       24 GETTABLEKS                       R6 R5 K5 ["type"]
       26 JUMPIFEQKNIL                     R6 ; [+42]
       28 FASTCALL1                        TYPEOF R5 ; [+3]
       29 MOVE                             R8 R5
       30 GETIMPORT                        R7 K1 [typeof]
       32 CALL                             R7 1 1
       33 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+23]
       35 GETTABLEKS                       R7 R5 K6 ["props"]
       37 JUMPIFNOT                        R7 ; [+19]
       38 GETTABLEKS                       R7 R5 K6 ["props"]
       40 GETTABLEKS                       R7 R7 K7 ["presenceId"]
       42 JUMPIFNOT                        R7 ; [+14]
       43 GETIMPORT                        R6 K10 [string.format]
       45 LOADK                            R7 K11 ["%s:%s"]
       46 MOVE                             R8 R4
       47 GETTABLEKS                       R10 R5 K6 ["props"]
       49 GETTABLEKS                       R10 R10 K7 ["presenceId"]
       51 FASTCALL1                        TOSTRING R10 ; [+2]
       52 GETIMPORT                        R9 K13 [tostring]
       54 CALL                             R9 1 1
       55 CALL                             R6 3 1
       56 JUMP                             ; [+1]
       57 MOVE                             R6 R4
       58 DUPTABLE                         R7 K16 [{"type", "component", "dictionaryKey"}]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K17 ["Entering"]
       62 SETTABLEKS                       R8 R7 K5 ["type"]
       64 SETTABLEKS                       R5 R7 K14 ["component"]
       66 SETTABLEKS                       R4 R7 K15 ["dictionaryKey"]
       68 SETTABLE                         R7 R0 R6
       69 FORGLOOP                         R1 2 ; [-53]
       71 GETIMPORT                        R1 K4 [pairs]
       73 GETUPVAL                         R2 2
       74 CALL                             R1 1 3
       75 FORGPREP_NEXT                    R1
       76 LOADB                            R6 0
       77 GETUPVAL                         R7 0
       78 JUMPIFEQKNIL                     R7 ; [+60]
       80 GETUPVAL                         R8 0
       81 FASTCALL1                        TYPEOF R8 ; [+2]
       82 GETIMPORT                        R7 K1 [typeof]
       84 CALL                             R7 1 1
       85 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+53]
       87 GETIMPORT                        R7 K4 [pairs]
       89 GETUPVAL                         R8 0
       90 CALL                             R7 1 3
       91 FORGPREP_NEXT                    R7
       92 FASTCALL1                        TYPEOF R11 ; [+3]
       93 MOVE                             R13 R11
       94 GETIMPORT                        R12 K1 [typeof]
       96 CALL                             R12 1 1
       97 JUMPIFNOTEQKS                    R12 K2 ["table"] ; [+39]
       99 GETTABLEKS                       R12 R11 K5 ["type"]
      101 JUMPIFEQKNIL                     R12 ; [+35]
      103 FASTCALL1                        TYPEOF R11 ; [+3]
      104 MOVE                             R14 R11
      105 GETIMPORT                        R13 K1 [typeof]
      107 CALL                             R13 1 1
      108 JUMPIFNOTEQKS                    R13 K2 ["table"] ; [+23]
      110 GETTABLEKS                       R13 R11 K6 ["props"]
      112 JUMPIFNOT                        R13 ; [+19]
      113 GETTABLEKS                       R13 R11 K6 ["props"]
      115 GETTABLEKS                       R13 R13 K7 ["presenceId"]
      117 JUMPIFNOT                        R13 ; [+14]
      118 GETIMPORT                        R12 K10 [string.format]
      120 LOADK                            R13 K11 ["%s:%s"]
      121 MOVE                             R14 R10
      122 GETTABLEKS                       R16 R11 K6 ["props"]
      124 GETTABLEKS                       R16 R16 K7 ["presenceId"]
      126 FASTCALL1                        TOSTRING R16 ; [+2]
      127 GETIMPORT                        R15 K13 [tostring]
      129 CALL                             R15 1 1
      130 CALL                             R12 3 1
      131 JUMP                             ; [+1]
      132 MOVE                             R12 R10
      133 JUMPIFNOTEQ                      R12 R4 ; [+3]
      135 LOADB                            R6 1
      136 JUMP                             ; [+2]
      137 FORGLOOP                         R7 2 ; [-46]
      139 JUMPIF                           R6 ; [+18]
      140 GETTABLEKS                       R7 R5 K18 ["isPresent"]
      142 JUMPIFNOT                        R7 ; [+15]
      143 DUPTABLE                         R7 K16 [{"type", "component", "dictionaryKey"}]
      144 GETUPVAL                         R8 1
      145 GETTABLEKS                       R8 R8 K19 ["Exiting"]
      147 SETTABLEKS                       R8 R7 K5 ["type"]
      149 GETTABLEKS                       R8 R5 K14 ["component"]
      151 SETTABLEKS                       R8 R7 K14 ["component"]
      153 GETTABLEKS                       R8 R5 K15 ["dictionaryKey"]
      155 SETTABLEKS                       R8 R7 K15 ["dictionaryKey"]
      157 SETTABLE                         R7 R0 R4
      158 FORGLOOP                         R1 2 ; [-83]
      160 GETIMPORT                        R1 K21 [next]
      162 MOVE                             R2 R0
      163 CALL                             R1 1 1
      164 JUMPIFEQKNIL                     R1 ; [+7]
      166 GETUPVAL                         R1 3
      167 NEWCLOSURE                       R2 P0
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U1
      170 CAPTURE                          UPVAL U4
      171 CALL                             R1 1 0
      172 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R1 R3
        6 JUMPIFNOT                        R2 ; [+21]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R3 K7 [{"isPresent", "component", "safeToRemove", "dictionaryKey"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K3 ["isPresent"]
       12 GETUPVAL                         R5 0
       13 GETTABLE                         R4 R1 R5
       14 GETTABLEKS                       R4 R4 K4 ["component"]
       16 SETTABLEKS                       R4 R3 K4 ["component"]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K5 ["safeToRemove"]
       21 GETUPVAL                         R5 0
       22 GETTABLE                         R4 R1 R5
       23 GETTABLEKS                       R4 R4 K6 ["dictionaryKey"]
       25 SETTABLEKS                       R4 R3 K6 ["dictionaryKey"]
       27 SETTABLE                         R3 R1 R2
       28 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R1 R0
       10 GETUPVAL                         R1 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R8 0
        8 GETTABLE                         R7 R8 R5
        9 JUMPIF                           R7 ; [+2]
       10 SETTABLE                         R6 R1 R5
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R7 1
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETUPVAL                         R7 1
       15 MOVE                             R8 R5
       16 CALL                             R7 1 0
       17 FORGLOOP                         R2 2 ; [-11]
       19 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 GETIMPORT                        R2 K1 [pairs]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R6 K2 ["safeToRemove"]
       10 JUMPIFNOT                        R7 ; [+3]
       11 LOADB                            R1 1
       12 LOADB                            R7 1
       13 SETTABLE                         R7 R0 R5
       14 FORGLOOP                         R2 2 ; [-7]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R2 1
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETTABLEKS                       R3 R0 K1 ["childData"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K1 ["childData"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETTABLEKS                       R4 R0 K2 ["onExitComplete"]
       12 JUMPIFEQKNIL                     R4 ; [+4]
       14 GETTABLEKS                       R3 R0 K2 ["onExitComplete"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useState"]
       21 NEWTABLE                         R5 0 0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K4 ["useRef"]
       27 NEWTABLE                         R7 0 0
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R6
       39 NEWTABLE                         R9 0 1
       41 MOVE                             R10 R1
       42 SETLIST                          R9 R10 1 [1]
       44 CALL                             R7 2 0
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R9 0 0
       53 CALL                             R7 2 1
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       57 NEWCLOSURE                       R9 P2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 NEWTABLE                         R10 0 1
       63 MOVE                             R11 R4
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 0
       67 NEWTABLE                         R8 0 0
       69 GETIMPORT                        R9 K8 [pairs]
       71 MOVE                             R10 R4
       72 CALL                             R9 1 3
       73 FORGPREP_NEXT                    R9
       74 GETTABLEKS                       R14 R13 K9 ["safeToRemove"]
       76 JUMPIF                           R14 ; [+32]
       77 MOVE                             R15 R8
       78 GETUPVAL                         R16 0
       79 GETTABLEKS                       R16 R16 K10 ["createElement"]
       81 GETUPVAL                         R17 2
       82 DUPTABLE                         R18 K14 [{"key", "presenceId", "isPresent", "onExitComplete", "childData", "children"}]
       83 SETTABLEKS                       R12 R18 K11 ["key"]
       85 SETTABLEKS                       R12 R18 K12 ["presenceId"]
       87 GETTABLEKS                       R19 R13 K13 ["isPresent"]
       89 SETTABLEKS                       R19 R18 K13 ["isPresent"]
       91 NEWCLOSURE                       R19 P3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 SETTABLEKS                       R19 R18 K2 ["onExitComplete"]
       96 SETTABLEKS                       R2 R18 K1 ["childData"]
       98 GETTABLEKS                       R19 R13 K15 ["component"]
      100 SETTABLEKS                       R19 R18 K0 ["children"]
      102 GETTABLEKS                       R19 R13 K15 ["component"]
      104 CALL                             R16 3 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R14 K18 [table.insert]
      108 CALL                             R14 -1 0
      109 FORGLOOP                         R9 2 ; [-36]
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R9 R9 K10 ["createElement"]
      114 GETUPVAL                         R10 0
      115 GETTABLEKS                       R10 R10 K19 ["Fragment"]
      117 NEWTABLE                         R11 0 0
      119 MOVE                             R12 R8
      120 CALL                             R9 3 -1
      121 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K6 ["PresenceChild"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Enums"]
       27 GETTABLEKS                       R5 R5 K8 ["PresenceState"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K9 [PROTO_0]
       31 DUPCLOSURE                       R6 K10 [PROTO_8]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 RETURN                           R6 1
