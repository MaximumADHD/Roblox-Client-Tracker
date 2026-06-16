PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+19]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 MOVE                             R6 R5
       11 CALL                             R6 0 0
       12 FORGLOOP                         R1 2 ; [-3]
       14 GETIMPORT                        R1 K2 [table.clear]
       16 GETUPVAL                         R2 1
       17 CALL                             R1 1 0
       18 LOADB                            R1 0
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0
       21 MOVE                             R1 R0
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
        8 GETTABLEKS                       R1 R0 K3 ["$$signal"]
       10 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+30]
        8 LOADB                            R1 0
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [type]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+22]
       16 FASTCALL1                        GETMETATABLE R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K5 [getmetatable]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+15]
       22 FASTCALL1                        GETMETATABLE R0 ; [+3]
       23 MOVE                             R4 R0
       24 GETIMPORT                        R3 K5 [getmetatable]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R3 R3 K6 ["__call"]
       29 FASTCALL1                        TYPEOF R3 ; [+2]
       30 GETIMPORT                        R2 K8 [typeof]
       32 CALL                             R2 1 1
       33 JUMPIFEQKS                       R2 K2 ["function"] ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 RETURN                           R1 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
        8 GETTABLEKS                       R1 R0 K3 ["$$signal"]
       10 JUMPIFNOT                        R1 ; [+4]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [setmetatable]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_9:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_10:
        0 PREPVARARGS                      1
        1 JUMPIF                           R0 ; [+5]
        2 GETVARARGS                       R1 1
        3 GETIMPORT                        R2 K1 [error]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      2
        1 MOVE                             R2 R0
        2 CALL                             R2 0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 GETVARARGS                       R4 -1
        6 CALL                             R2 -1 0
        7 GETVARARGS                       R2 -1
        8 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["attempted to use scope beyond scope's lifetime"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_13:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R2 1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          REF R2
        6 GETUPVAL                         R5 0
        7 MOVE                             R6 R4
        8 GETIMPORT                        R7 K1 [pcall]
       10 GETUPVAL                         R8 1
       11 MOVE                             R9 R0
       12 MOVE                             R10 R3
       13 CALL                             R7 3 -1
       14 CALL                             R5 -1 -1
       15 CLOSEUPVALS                      R2
       16 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+133]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R2 2
        5 LOADB                            R1 0
        6 FASTCALL1                        TYPE R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K1 [type]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+3]
       13 GETTABLEKS                       R1 R2 K3 ["$$signal"]
       15 JUMPIFNOT                        R1 ; [+19]
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 0
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K1 [type]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+3]
       25 GETTABLEKS                       R2 R1 K3 ["$$signal"]
       27 JUMPIFNOT                        R2 ; [+5]
       28 MOVE                             R2 R1
       29 GETUPVAL                         R3 3
       30 CALL                             R2 1 1
       31 MOVE                             R0 R2
       32 JUMP                             ; [+14]
       33 MOVE                             R0 R1
       34 JUMP                             ; [+12]
       35 GETUPVAL                         R2 2
       36 FASTCALL1                        TYPEOF R2 ; [+2]
       37 GETIMPORT                        R1 K5 [typeof]
       39 CALL                             R1 1 1
       40 JUMPIFNOTEQKS                    R1 K6 ["function"] ; [+5]
       42 GETUPVAL                         R0 4
       43 GETUPVAL                         R1 2
       44 CALL                             R0 1 1
       45 JUMP                             ; [+1]
       46 GETUPVAL                         R0 2
       47 SETUPVAL                         R0 1
       48 GETUPVAL                         R1 1
       49 FASTCALL1                        TYPEOF R1 ; [+2]
       50 GETIMPORT                        R0 K5 [typeof]
       52 CALL                             R0 1 1
       53 JUMPIFNOTEQKS                    R0 K6 ["function"] ; [+50]
       55 GETIMPORT                        R0 K8 [print]
       57 LOADK                            R2 K9 ["[Blox:debug] SIGNAL-INIT-FN signal=%*, initial type=%*/%*, isGetter(initial)=%*, value=%*"]
       58 GETUPVAL                         R5 5
       59 FASTCALL1                        TOSTRING R5 ; [+2]
       60 GETIMPORT                        R4 K11 [tostring]
       62 CALL                             R4 1 1
       63 GETUPVAL                         R6 2
       64 FASTCALL1                        TYPE R6 ; [+2]
       65 GETIMPORT                        R5 K1 [type]
       67 CALL                             R5 1 1
       68 GETUPVAL                         R7 2
       69 FASTCALL1                        TYPEOF R7 ; [+2]
       70 GETIMPORT                        R6 K5 [typeof]
       72 CALL                             R6 1 1
       73 GETUPVAL                         R9 2
       74 LOADB                            R8 0
       75 FASTCALL1                        TYPE R9 ; [+3]
       76 MOVE                             R11 R9
       77 GETIMPORT                        R10 K1 [type]
       79 CALL                             R10 1 1
       80 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+3]
       82 GETTABLEKS                       R8 R9 K3 ["$$signal"]
       84 FASTCALL1                        TOSTRING R8 ; [+2]
       85 GETIMPORT                        R7 K11 [tostring]
       87 CALL                             R7 1 1
       88 GETUPVAL                         R9 1
       89 FASTCALL1                        TOSTRING R9 ; [+2]
       90 GETIMPORT                        R8 K11 [tostring]
       92 CALL                             R8 1 1
       93 NAMECALL                         R2 R2 K12 ["format"]
       95 CALL                             R2 6 1
       96 MOVE                             R1 R2
       97 CALL                             R0 1 0
       98 GETIMPORT                        R0 K8 [print]
      100 GETIMPORT                        R1 K15 [debug.traceback]
      102 CALL                             R1 0 -1
      103 CALL                             R0 -1 0
      104 GETIMPORT                        R0 K18 [os.clock]
      106 CALL                             R0 0 1
      107 SETUPVAL                         R0 6
      108 NEWTABLE                         R1 0 0
      110 GETUPVAL                         R4 8
      111 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
      113 MOVE                             R3 R1
      114 GETIMPORT                        R2 K20 [setmetatable]
      116 CALL                             R2 2 1
      117 MOVE                             R0 R2
      118 SETUPVAL                         R0 7
      119 GETUPVAL                         R0 9
      120 GETTABLEKS                       R0 R0 K21 ["SHOW_SIGNAL_INTERNALS"]
      122 JUMPIFNOT                        R0 ; [+12]
      123 GETUPVAL                         R0 10
      124 GETUPVAL                         R1 6
      125 SETTABLEKS                       R1 R0 K22 ["version"]
      127 GETUPVAL                         R0 10
      128 GETUPVAL                         R1 1
      129 SETTABLEKS                       R1 R0 K23 ["value"]
      131 GETUPVAL                         R0 10
      132 GETUPVAL                         R1 7
      133 SETTABLEKS                       R1 R0 K24 ["observers"]
      135 RETURN                           R0 0

PROTO_16:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R3 0
        4 LOADNIL                          R4
        5 SETTABLE                         R4 R3 R0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R3 0
        8 ORK                              R4 R2 K0 [True]
        9 SETTABLE                         R4 R3 R0
       10 LOADN                            R3 0
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 1
       13 RETURN                           R3 1

PROTO_17:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["function"] ; [+10]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["log"]
       10 LOADK                            R2 K4 ["Signals"]
       11 LOADK                            R3 K5 ["Invalid requestor scope"]
       12 GETIMPORT                        R4 K8 [debug.traceback]
       14 CALL                             R4 0 -1
       15 CALL                             R1 -1 0
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K1 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       27 LOADK                            R3 K9 ["Signals: requestor scope must be a function"]
       28 GETIMPORT                        R1 K11 [assert]
       30 CALL                             R1 2 0
       31 MOVE                             R1 R0
       32 GETUPVAL                         R2 1
       33 CALL                             R1 1 2
       34 JUMPIFNOT                        R1 ; [+3]
       35 GETUPVAL                         R3 2
       36 ORK                              R4 R2 K12 [True]
       37 SETTABLE                         R4 R3 R1
       38 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 1 ; [-3]
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 0
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["function"] ; [+10]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["log"]
       12 LOADK                            R3 K4 ["Signals"]
       13 LOADK                            R4 K5 ["Invalid requestor scope"]
       14 GETIMPORT                        R5 K8 [debug.traceback]
       16 CALL                             R5 0 -1
       17 CALL                             R2 -1 0
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K1 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       29 LOADK                            R4 K9 ["Signals: requestor scope must be a function"]
       30 GETIMPORT                        R2 K11 [assert]
       32 CALL                             R2 2 0
       33 MOVE                             R2 R1
       34 GETUPVAL                         R3 2
       35 CALL                             R2 1 2
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETUPVAL                         R4 3
       38 ORK                              R5 R3 K12 [True]
       39 SETTABLE                         R5 R4 R2
       40 GETUPVAL                         R2 4
       41 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+41]
        9 LOADB                            R1 0
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K4 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+3]
       17 GETTABLEKS                       R1 R0 K6 ["$$signal"]
       19 JUMPIF                           R1 ; [+29]
       20 GETIMPORT                        R1 K8 [print]
       22 LOADK                            R3 K9 ["[Blox:debug] SETTER-WITH-FN signal=%*, value type=%*, fn=%*"]
       23 GETUPVAL                         R6 1
       24 FASTCALL1                        TOSTRING R6 ; [+2]
       25 GETIMPORT                        R5 K11 [tostring]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R7 2
       29 FASTCALL1                        TYPE R7 ; [+2]
       30 GETIMPORT                        R6 K4 [type]
       32 CALL                             R6 1 1
       33 FASTCALL1                        TOSTRING R0 ; [+3]
       34 MOVE                             R8 R0
       35 GETIMPORT                        R7 K11 [tostring]
       37 CALL                             R7 1 1
       38 NAMECALL                         R3 R3 K12 ["format"]
       40 CALL                             R3 4 1
       41 MOVE                             R2 R3
       42 CALL                             R1 1 0
       43 GETIMPORT                        R1 K8 [print]
       45 GETIMPORT                        R2 K15 [debug.traceback]
       47 CALL                             R2 0 -1
       48 CALL                             R1 -1 0
       49 LOADB                            R2 0
       50 FASTCALL1                        TYPE R0 ; [+3]
       51 MOVE                             R4 R0
       52 GETIMPORT                        R3 K4 [type]
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+3]
       57 GETTABLEKS                       R2 R0 K6 ["$$signal"]
       59 JUMPIFNOT                        R2 ; [+17]
       60 LOADB                            R2 0
       61 FASTCALL1                        TYPE R0 ; [+3]
       62 MOVE                             R4 R0
       63 GETIMPORT                        R3 K4 [type]
       65 CALL                             R3 1 1
       66 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+3]
       68 GETTABLEKS                       R2 R0 K6 ["$$signal"]
       70 JUMPIFNOT                        R2 ; [+4]
       71 MOVE                             R1 R0
       72 GETUPVAL                         R2 3
       73 CALL                             R1 1 1
       74 JUMP                             ; [+15]
       75 MOVE                             R1 R0
       76 JUMP                             ; [+13]
       77 FASTCALL1                        TYPEOF R0 ; [+3]
       78 MOVE                             R3 R0
       79 GETIMPORT                        R2 K1 [typeof]
       81 CALL                             R2 1 1
       82 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+6]
       84 GETUPVAL                         R1 4
       85 MOVE                             R2 R0
       86 GETUPVAL                         R3 2
       87 CALL                             R1 2 1
       88 JUMP                             ; [+1]
       89 MOVE                             R1 R0
       90 GETUPVAL                         R2 4
       91 GETUPVAL                         R3 5
       92 GETUPVAL                         R4 2
       93 MOVE                             R5 R1
       94 CALL                             R2 3 1
       95 JUMPIF                           R2 ; [+68]
       96 FASTCALL1                        TYPEOF R1 ; [+3]
       97 MOVE                             R3 R1
       98 GETIMPORT                        R2 K1 [typeof]
      100 CALL                             R2 1 1
      101 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+30]
      103 GETIMPORT                        R2 K8 [print]
      105 LOADK                            R4 K16 ["[Blox:debug] SETTER-STORING-FN signal=%*, prev type=%*, new=%*"]
      106 GETUPVAL                         R7 1
      107 FASTCALL1                        TOSTRING R7 ; [+2]
      108 GETIMPORT                        R6 K11 [tostring]
      110 CALL                             R6 1 1
      111 GETUPVAL                         R8 2
      112 FASTCALL1                        TYPE R8 ; [+2]
      113 GETIMPORT                        R7 K4 [type]
      115 CALL                             R7 1 1
      116 FASTCALL1                        TOSTRING R1 ; [+3]
      117 MOVE                             R9 R1
      118 GETIMPORT                        R8 K11 [tostring]
      120 CALL                             R8 1 1
      121 NAMECALL                         R4 R4 K12 ["format"]
      123 CALL                             R4 4 1
      124 MOVE                             R3 R4
      125 CALL                             R2 1 0
      126 GETIMPORT                        R2 K8 [print]
      128 GETIMPORT                        R3 K15 [debug.traceback]
      130 CALL                             R3 0 -1
      131 CALL                             R2 -1 0
      132 SETUPVAL                         R1 2
      133 GETIMPORT                        R2 K19 [os.clock]
      135 CALL                             R2 0 1
      136 SETUPVAL                         R2 6
      137 GETUPVAL                         R2 7
      138 LOADNIL                          R3
      139 LOADNIL                          R4
      140 FORGPREP                         R2
      141 MOVE                             R7 R5
      142 CALL                             R7 0 0
      143 FORGLOOP                         R2 1 ; [-3]
      145 GETIMPORT                        R2 K21 [table.clear]
      147 GETUPVAL                         R3 7
      148 CALL                             R2 1 0
      149 GETUPVAL                         R2 8
      150 DUPCLOSURE                       R3 K22 [PROTO_1]
      151 CALL                             R2 1 0
      152 GETUPVAL                         R2 9
      153 GETTABLEKS                       R2 R2 K23 ["SHOW_SIGNAL_INTERNALS"]
      155 JUMPIFNOT                        R2 ; [+8]
      156 GETUPVAL                         R2 10
      157 GETUPVAL                         R3 6
      158 SETTABLEKS                       R3 R2 K24 ["version"]
      160 GETUPVAL                         R2 10
      161 GETUPVAL                         R3 2
      162 SETTABLEKS                       R3 R2 K25 ["value"]
      164 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R3 0
        1 LOADN                            R4 0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 MOVE                             R7 R1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R7 0
        9 LOADNIL                          R8
       10 GETUPVAL                         R10 1
       11 GETTABLEKS                       R10 R10 K0 ["SHOW_SIGNAL_INTERNALS"]
       13 JUMPIFNOT                        R10 ; [+7]
       14 DUPTABLE                         R9 K3 [{"version", "value"}]
       15 LOADN                            R10 0
       16 SETTABLEKS                       R10 R9 K1 ["version"]
       18 SETTABLEKS                       R0 R9 K2 ["value"]
       20 JUMP                             ; [+1]
       21 LOADB                            R9 1
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          REF R3
       24 CAPTURE                          REF R5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          REF R4
       30 CAPTURE                          REF R6
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R9
       34 NEWCLOSURE                       R11 P1
       35 CAPTURE                          REF R6
       36 CAPTURE                          REF R4
       37 NEWCLOSURE                       R12 P2
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R11
       40 CAPTURE                          REF R6
       41 NEWCLOSURE                       R13 P3
       42 CAPTURE                          REF R6
       43 NEWTABLE                         R15 1 0
       45 SETTABLEKS                       R9 R15 K4 ["$$signal"]
       47 DUPTABLE                         R16 K6 [{"__call"}]
       48 NEWCLOSURE                       R17 P4
       49 CAPTURE                          VAL R10
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R11
       52 CAPTURE                          REF R6
       53 CAPTURE                          REF R5
       54 SETTABLEKS                       R17 R16 K5 ["__call"]
       56 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
       58 GETIMPORT                        R14 K8 [setmetatable]
       60 CALL                             R14 2 1
       61 MOVE                             R8 R14
       62 NEWCLOSURE                       R14 P5
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R5
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          REF R4
       70 CAPTURE                          REF R6
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          VAL R9
       74 MOVE                             R15 R8
       75 MOVE                             R16 R14
       76 CLOSEUPVALS                      R3
       77 RETURN                           R15 2

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 1 ; [-3]
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+14]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R3
        9 CALL                             R5 0 0
       10 FORGLOOP                         R0 1 ; [-3]
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOTEQKNIL                  R0 ; [+20]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R3 K2 ["[Blox:debug] COMPUTED-NIL-SRC computed=%*"]
        5 GETUPVAL                         R6 0
        6 FASTCALL1                        TOSTRING R6 ; [+2]
        7 GETIMPORT                        R5 K4 [tostring]
        9 CALL                             R5 1 1
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 GETIMPORT                        R1 K1 [print]
       17 GETIMPORT                        R2 K8 [debug.traceback]
       19 CALL                             R2 0 -1
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 1
       22 LOADB                            R2 1
       23 SETTABLE                         R2 R1 R0
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 0
       26 RETURN                           R1 2

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+70]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R4 2
        7 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K1 [setmetatable]
       12 CALL                             R2 2 1
       13 MOVE                             R0 R2
       14 SETUPVAL                         R0 1
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 3
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 6
       20 GETUPVAL                         R2 7
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 4
       23 GETUPVAL                         R1 4
       24 FASTCALL1                        TYPEOF R1 ; [+2]
       25 GETIMPORT                        R0 K3 [typeof]
       27 CALL                             R0 1 1
       28 JUMPIFNOTEQKS                    R0 K4 ["function"] ; [+25]
       30 GETIMPORT                        R0 K6 [print]
       32 LOADK                            R2 K7 ["[Blox:debug] COMPUTED-INIT-FN computed=%*, value=%*"]
       33 GETUPVAL                         R5 8
       34 FASTCALL1                        TOSTRING R5 ; [+2]
       35 GETIMPORT                        R4 K9 [tostring]
       37 CALL                             R4 1 1
       38 GETUPVAL                         R6 4
       39 FASTCALL1                        TOSTRING R6 ; [+2]
       40 GETIMPORT                        R5 K9 [tostring]
       42 CALL                             R5 1 1
       43 NAMECALL                         R2 R2 K10 ["format"]
       45 CALL                             R2 3 1
       46 MOVE                             R1 R2
       47 CALL                             R0 1 0
       48 GETIMPORT                        R0 K6 [print]
       50 GETIMPORT                        R1 K13 [debug.traceback]
       52 CALL                             R1 0 -1
       53 CALL                             R0 -1 0
       54 GETIMPORT                        R0 K16 [os.clock]
       56 CALL                             R0 0 1
       57 SETUPVAL                         R0 9
       58 GETUPVAL                         R0 9
       59 SETUPVAL                         R0 10
       60 GETUPVAL                         R0 11
       61 GETTABLEKS                       R0 R0 K17 ["SHOW_SIGNAL_INTERNALS"]
       63 JUMPIFNOT                        R0 ; [+8]
       64 GETUPVAL                         R0 12
       65 GETUPVAL                         R1 3
       66 SETTABLEKS                       R1 R0 K18 ["sources"]
       68 GETUPVAL                         R0 12
       69 GETUPVAL                         R1 1
       70 SETTABLEKS                       R1 R0 K19 ["observers"]
       72 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 GETUPVAL                         R6 1
        6 LOADB                            R7 1
        7 CALL                             R5 2 0
        8 FORGLOOP                         R0 1 ; [-5]
       10 GETIMPORT                        R0 K2 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+66]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R3
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 JUMPIFNOTLT                      R6 R5 ; [+45]
       13 GETUPVAL                         R6 1
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R11 R9
       18 GETUPVAL                         R12 3
       19 LOADB                            R13 1
       20 CALL                             R11 2 0
       21 FORGLOOP                         R6 1 ; [-5]
       23 GETIMPORT                        R6 K2 [table.clear]
       25 GETUPVAL                         R7 1
       26 CALL                             R6 1 0
       27 GETUPVAL                         R6 4
       28 GETUPVAL                         R7 5
       29 GETUPVAL                         R8 6
       30 CALL                             R6 2 1
       31 GETIMPORT                        R7 K5 [os.clock]
       33 CALL                             R7 0 1
       34 SETUPVAL                         R7 2
       35 GETUPVAL                         R7 7
       36 GETUPVAL                         R8 8
       37 GETUPVAL                         R9 9
       38 MOVE                             R10 R6
       39 CALL                             R7 3 1
       40 JUMPIF                           R7 ; [+15]
       41 SETUPVAL                         R6 9
       42 GETUPVAL                         R7 2
       43 SETUPVAL                         R7 10
       44 GETUPVAL                         R7 11
       45 GETTABLEKS                       R7 R7 K6 ["SHOW_SIGNAL_INTERNALS"]
       47 JUMPIFNOT                        R7 ; [+8]
       48 GETUPVAL                         R7 12
       49 GETUPVAL                         R8 10
       50 SETTABLEKS                       R8 R7 K7 ["version"]
       52 GETUPVAL                         R7 12
       53 GETUPVAL                         R8 9
       54 SETTABLEKS                       R8 R7 K8 ["value"]
       56 RETURN                           R0 0
       57 FORGLOOP                         R0 1 ; [-50]
       59 GETUPVAL                         R0 1
       60 LOADNIL                          R1
       61 LOADNIL                          R2
       62 FORGPREP                         R0
       63 MOVE                             R5 R3
       64 GETUPVAL                         R6 3
       65 CALL                             R5 1 0
       66 FORGLOOP                         R0 1 ; [-4]
       68 RETURN                           R0 0

PROTO_28:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R3 0
        4 LOADNIL                          R4
        5 SETTABLE                         R4 R3 R0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R3 0
        8 ORK                              R4 R2 K0 [True]
        9 SETTABLE                         R4 R3 R0
       10 LOADN                            R3 0
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 0
       14 GETUPVAL                         R3 2
       15 RETURN                           R3 1

PROTO_29:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["Signals: requestor scope must be defined"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 MOVE                             R1 R0
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R3 1
       15 ORK                              R4 R2 K3 [True]
       16 SETTABLE                         R4 R3 R1
       17 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 0
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 0
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       10 LOADK                            R4 K0 ["Signals: requestor scope must be defined"]
       11 GETIMPORT                        R2 K2 [assert]
       13 CALL                             R2 2 0
       14 MOVE                             R2 R1
       15 GETUPVAL                         R3 2
       16 CALL                             R2 1 2
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETUPVAL                         R4 3
       19 ORK                              R5 R3 K3 [True]
       20 SETTABLE                         R5 R4 R2
       21 GETUPVAL                         R2 4
       22 RETURN                           R2 1

PROTO_31:
        0 LOADB                            R3 0
        1 LOADB                            R4 0
        2 LOADN                            R5 0
        3 LOADN                            R6 0
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R8 R1
        6 GETIMPORT                        R7 K1 [typeof]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+3]
       11 MOVE                             R2 R1
       12 LOADNIL                          R1
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 JUMPIFEQKNIL                     R1 ; [+3]
       18 MOVE                             R10 R1
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R10 0
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K3 ["SHOW_SIGNAL_INTERNALS"]
       24 JUMPIFNOT                        R12 ; [+5]
       25 DUPTABLE                         R11 K5 [{"version"}]
       26 LOADN                            R12 0
       27 SETTABLEKS                       R12 R11 K4 ["version"]
       29 JUMP                             ; [+1]
       30 LOADB                            R11 1
       31 NEWCLOSURE                       R12 P0
       32 CAPTURE                          REF R9
       33 NEWCLOSURE                       R13 P1
       34 CAPTURE                          REF R4
       35 CAPTURE                          REF R9
       36 NEWCLOSURE                       R14 P2
       37 CAPTURE                          REF R2
       38 CAPTURE                          REF R8
       39 CAPTURE                          VAL R13
       40 NEWCLOSURE                       R15 P3
       41 CAPTURE                          REF R3
       42 CAPTURE                          REF R9
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          REF R8
       45 CAPTURE                          REF R7
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R14
       49 CAPTURE                          REF R2
       50 CAPTURE                          REF R6
       51 CAPTURE                          REF R5
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R11
       54 NEWCLOSURE                       R16 P4
       55 CAPTURE                          REF R8
       56 CAPTURE                          VAL R13
       57 NEWCLOSURE                       R17 P5
       58 CAPTURE                          REF R4
       59 CAPTURE                          REF R8
       60 CAPTURE                          REF R6
       61 CAPTURE                          VAL R13
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R14
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R10
       67 CAPTURE                          REF R7
       68 CAPTURE                          REF R5
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R11
       71 NEWCLOSURE                       R18 P6
       72 CAPTURE                          REF R9
       73 CAPTURE                          VAL R17
       74 CAPTURE                          REF R5
       75 NEWCLOSURE                       R19 P7
       76 CAPTURE                          VAL R18
       77 CAPTURE                          REF R9
       78 NEWTABLE                         R21 1 0
       80 SETTABLEKS                       R11 R21 K6 ["$$signal"]
       82 DUPTABLE                         R22 K8 [{"__call"}]
       83 NEWCLOSURE                       R23 P8
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R18
       87 CAPTURE                          REF R9
       88 CAPTURE                          REF R7
       89 SETTABLEKS                       R23 R22 K7 ["__call"]
       91 FASTCALL2                        SETMETATABLE R21 R22 ; [+3]
       93 GETIMPORT                        R20 K10 [setmetatable]
       95 CALL                             R20 2 1
       96 CLOSEUPVALS                      R2
       97 RETURN                           R20 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 GETUPVAL                         R6 1
        6 LOADB                            R7 1
        7 CALL                             R5 2 0
        8 FORGLOOP                         R0 1 ; [-5]
       10 GETIMPORT                        R0 K2 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_34:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 MOVE                             R5 R3
       15 GETUPVAL                         R6 4
       16 LOADB                            R7 1
       17 CALL                             R5 2 0
       18 FORGLOOP                         R0 1 ; [-5]
       20 GETIMPORT                        R0 K2 [table.clear]
       22 GETUPVAL                         R1 3
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOTEQKNIL                  R0 ; [+20]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R3 K2 ["[Blox:debug] EFFECT-NIL-SRC effect=%*"]
        5 GETUPVAL                         R6 0
        6 FASTCALL1                        TOSTRING R6 ; [+2]
        7 GETIMPORT                        R5 K4 [tostring]
        9 CALL                             R5 1 1
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 GETIMPORT                        R1 K1 [print]
       17 GETIMPORT                        R2 K8 [debug.traceback]
       19 CALL                             R2 0 -1
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 1
       22 LOADB                            R2 1
       23 SETTABLE                         R2 R1 R0
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 0
       26 RETURN                           R1 2

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 CALL                             R0 2 1
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K1 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+2]
       19 SETUPVAL                         R0 0
       20 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+90]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+27]
        6 GETUPVAL                         R0 3
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 3
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 3
       11 GETUPVAL                         R1 4
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R0 5
       15 GETUPVAL                         R1 6
       16 GETUPVAL                         R2 7
       17 CALL                             R0 2 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K1 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+2]
       25 SETUPVAL                         R0 3
       26 GETIMPORT                        R0 K5 [os.clock]
       28 CALL                             R0 0 1
       29 SETUPVAL                         R0 8
       30 LOADB                            R0 1
       31 SETUPVAL                         R0 2
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 9
       34 LOADNIL                          R1
       35 LOADNIL                          R2
       36 FORGPREP                         R0
       37 MOVE                             R5 R3
       38 CALL                             R5 0 1
       39 GETUPVAL                         R6 8
       40 JUMPIFNOTLT                      R6 R5 ; [+40]
       42 GETUPVAL                         R6 9
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 MOVE                             R11 R9
       47 GETUPVAL                         R12 10
       48 LOADB                            R13 1
       49 CALL                             R11 2 0
       50 FORGLOOP                         R6 1 ; [-5]
       52 GETIMPORT                        R6 K8 [table.clear]
       54 GETUPVAL                         R7 9
       55 CALL                             R6 1 0
       56 GETUPVAL                         R6 3
       57 JUMPIFNOT                        R6 ; [+6]
       58 GETUPVAL                         R6 3
       59 LOADNIL                          R7
       60 SETUPVAL                         R7 3
       61 GETUPVAL                         R7 4
       62 MOVE                             R8 R6
       63 CALL                             R7 1 0
       64 GETUPVAL                         R6 5
       65 GETUPVAL                         R7 6
       66 GETUPVAL                         R8 7
       67 CALL                             R6 2 1
       68 FASTCALL1                        TYPEOF R6 ; [+3]
       69 MOVE                             R8 R6
       70 GETIMPORT                        R7 K1 [typeof]
       72 CALL                             R7 1 1
       73 JUMPIFNOTEQKS                    R7 K2 ["function"] ; [+2]
       75 SETUPVAL                         R6 3
       76 GETIMPORT                        R6 K5 [os.clock]
       78 CALL                             R6 0 1
       79 SETUPVAL                         R6 8
       80 RETURN                           R0 0
       81 FORGLOOP                         R0 1 ; [-45]
       83 GETUPVAL                         R0 9
       84 LOADNIL                          R1
       85 LOADNIL                          R2
       86 FORGPREP                         R0
       87 MOVE                             R5 R3
       88 GETUPVAL                         R6 10
       89 CALL                             R5 1 0
       90 FORGLOOP                         R0 1 ; [-4]
       92 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+16]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R2 4
       14 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R1 K2 [table.insert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_39:
        0 LOADB                            R3 0
        1 LOADB                            R4 0
        2 LOADB                            R5 0
        3 LOADN                            R6 0
        4 LOADNIL                          R7
        5 NEWTABLE                         R8 0 0
        7 LOADNIL                          R9
        8 NEWCLOSURE                       R10 P0
        9 CAPTURE                          REF R7
       10 CAPTURE                          UPVAL U0
       11 NEWCLOSURE                       R11 P1
       12 CAPTURE                          VAL R8
       13 CAPTURE                          REF R9
       14 NEWCLOSURE                       R12 P2
       15 CAPTURE                          REF R5
       16 CAPTURE                          REF R7
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R8
       19 CAPTURE                          REF R9
       20 NEWCLOSURE                       R13 P3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R8
       23 CAPTURE                          REF R9
       24 NEWCLOSURE                       R14 P4
       25 CAPTURE                          REF R7
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R13
       30 NEWCLOSURE                       R15 P5
       31 CAPTURE                          REF R5
       32 CAPTURE                          REF R4
       33 CAPTURE                          REF R3
       34 CAPTURE                          REF R7
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R13
       39 CAPTURE                          REF R6
       40 CAPTURE                          VAL R8
       41 CAPTURE                          REF R9
       42 NEWCLOSURE                       R9 P6
       43 CAPTURE                          REF R5
       44 CAPTURE                          REF R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R15
       47 CAPTURE                          UPVAL U2
       48 JUMPIFNOT                        R1 ; [+5]
       49 LOADB                            R4 1
       50 MOVE                             R16 R1
       51 MOVE                             R17 R15
       52 CALL                             R16 1 0
       53 JUMP                             ; [+23]
       54 JUMPIFNOT                        R7 ; [+5]
       55 MOVE                             R16 R7
       56 LOADNIL                          R7
       57 GETUPVAL                         R17 0
       58 MOVE                             R18 R16
       59 CALL                             R17 1 0
       60 GETUPVAL                         R16 1
       61 MOVE                             R17 R0
       62 MOVE                             R18 R13
       63 CALL                             R16 2 1
       64 FASTCALL1                        TYPEOF R16 ; [+3]
       65 MOVE                             R18 R16
       66 GETIMPORT                        R17 K1 [typeof]
       68 CALL                             R17 1 1
       69 JUMPIFNOTEQKS                    R17 K2 ["function"] ; [+2]
       71 MOVE                             R7 R16
       72 GETIMPORT                        R16 K5 [os.clock]
       74 CALL                             R16 0 1
       75 MOVE                             R6 R16
       76 LOADB                            R3 1
       77 CLOSEUPVALS                      R3
       78 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["callUserSpace"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Debug"]
       20 CALL                             R1 1 1
       21 LOADB                            R2 0
       22 NEWTABLE                         R3 0 0
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R3
       27 DUPCLOSURE                       R5 K7 [PROTO_2]
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R6 K8 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R7 K9 [PROTO_4]
       32 DUPCLOSURE                       R8 K10 [PROTO_5]
       33 DUPCLOSURE                       R9 K11 [PROTO_6]
       34 DUPCLOSURE                       R10 K12 [PROTO_7]
       35 CAPTURE                          VAL R9
       36 GETIMPORT                        R11 K15 [table.freeze]
       38 DUPTABLE                         R12 K17 [{"__mode"}]
       39 LOADK                            R13 K18 ["k"]
       40 SETTABLEKS                       R13 R12 K16 ["__mode"]
       42 CALL                             R11 1 1
       43 DUPCLOSURE                       R12 K19 [PROTO_8]
       44 CAPTURE                          VAL R11
       45 DUPCLOSURE                       R13 K20 [PROTO_9]
       46 DUPCLOSURE                       R14 K21 [PROTO_10]
       47 DUPCLOSURE                       R15 K22 [PROTO_11]
       48 CAPTURE                          VAL R14
       49 DUPCLOSURE                       R16 K23 [PROTO_14]
       50 CAPTURE                          VAL R15
       51 CAPTURE                          VAL R0
       52 GETIMPORT                        R17 K25 [_G]
       54 GETTABLEKS                       R17 R17 K26 ["__SIGNALS_VALIDATION_ENABLED__"]
       56 JUMPIF                           R17 ; [+4]
       57 GETIMPORT                        R17 K25 [_G]
       59 GETTABLEKS                       R17 R17 K27 ["__DEV__"]
       61 JUMPIFNOT                        R17 ; [+2]
       62 MOVE                             R18 R16
       63 JUMP                             ; [+1]
       64 MOVE                             R18 R0
       65 DUPCLOSURE                       R19 K28 [PROTO_21]
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R20 K29 [PROTO_31]
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R18
       77 CAPTURE                          VAL R0
       78 DUPCLOSURE                       R21 K30 [PROTO_39]
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R18
       81 CAPTURE                          VAL R3
       82 DUPTABLE                         R22 K40 [{"createSignal", "createComputed", "createEffect", "isCallable", "isGetter", "batch", "flush", "schedule", "peek"}]
       83 SETTABLEKS                       R19 R22 K31 ["createSignal"]
       85 SETTABLEKS                       R20 R22 K32 ["createComputed"]
       87 SETTABLEKS                       R21 R22 K33 ["createEffect"]
       89 SETTABLEKS                       R8 R22 K34 ["isCallable"]
       91 SETTABLEKS                       R7 R22 K35 ["isGetter"]
       93 SETTABLEKS                       R4 R22 K36 ["batch"]
       95 SETTABLEKS                       R5 R22 K37 ["flush"]
       97 SETTABLEKS                       R6 R22 K38 ["schedule"]
       99 SETTABLEKS                       R10 R22 K39 ["peek"]
      101 CLOSEUPVALS                      R2
      102 RETURN                           R22 1
