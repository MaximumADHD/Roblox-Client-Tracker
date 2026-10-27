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
        1 JUMPIF                           R0 ; [+132]
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
       53 JUMPIFNOTEQKS                    R0 K6 ["function"] ; [+49]
       55 GETIMPORT                        R0 K8 [print]
       57 LOADK                            R1 K9 ["[Blox:debug] SIGNAL-INIT-FN signal=%*, initial type=%*/%*, isGetter(initial)=%*, value=%*"]
       58 GETUPVAL                         R4 5
       59 FASTCALL1                        TOSTRING R4 ; [+2]
       60 GETIMPORT                        R3 K11 [tostring]
       62 CALL                             R3 1 1
       63 GETUPVAL                         R5 2
       64 FASTCALL1                        TYPE R5 ; [+2]
       65 GETIMPORT                        R4 K1 [type]
       67 CALL                             R4 1 1
       68 GETUPVAL                         R6 2
       69 FASTCALL1                        TYPEOF R6 ; [+2]
       70 GETIMPORT                        R5 K5 [typeof]
       72 CALL                             R5 1 1
       73 GETUPVAL                         R8 2
       74 LOADB                            R7 0
       75 FASTCALL1                        TYPE R8 ; [+3]
       76 MOVE                             R10 R8
       77 GETIMPORT                        R9 K1 [type]
       79 CALL                             R9 1 1
       80 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+3]
       82 GETTABLEKS                       R7 R8 K3 ["$$signal"]
       84 FASTCALL1                        TOSTRING R7 ; [+2]
       85 GETIMPORT                        R6 K11 [tostring]
       87 CALL                             R6 1 1
       88 GETUPVAL                         R8 1
       89 FASTCALL1                        TOSTRING R8 ; [+2]
       90 GETIMPORT                        R7 K11 [tostring]
       92 CALL                             R7 1 1
       93 NAMECALL                         R1 R1 K12 ["format"]
       95 CALL                             R1 6 1
       96 CALL                             R0 1 0
       97 GETIMPORT                        R0 K8 [print]
       99 GETIMPORT                        R1 K15 [debug.traceback]
      101 CALL                             R1 0 -1
      102 CALL                             R0 -1 0
      103 GETIMPORT                        R0 K18 [os.clock]
      105 CALL                             R0 0 1
      106 SETUPVAL                         R0 6
      107 NEWTABLE                         R1 0 0
      109 GETUPVAL                         R4 8
      110 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
      112 MOVE                             R3 R1
      113 GETIMPORT                        R2 K20 [setmetatable]
      115 CALL                             R2 2 1
      116 MOVE                             R0 R2
      117 SETUPVAL                         R0 7
      118 GETUPVAL                         R0 9
      119 GETTABLEKS                       R0 R0 K21 ["SHOW_SIGNAL_INTERNALS"]
      121 JUMPIFNOT                        R0 ; [+12]
      122 GETUPVAL                         R0 10
      123 GETUPVAL                         R1 6
      124 SETTABLEKS                       R1 R0 K22 ["version"]
      126 GETUPVAL                         R0 10
      127 GETUPVAL                         R1 1
      128 SETTABLEKS                       R1 R0 K23 ["value"]
      130 GETUPVAL                         R0 10
      131 GETUPVAL                         R1 7
      132 SETTABLEKS                       R1 R0 K24 ["observers"]
      134 RETURN                           R0 0

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
        7 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+40]
        9 LOADB                            R1 0
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K4 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+3]
       17 GETTABLEKS                       R1 R0 K6 ["$$signal"]
       19 JUMPIF                           R1 ; [+28]
       20 GETIMPORT                        R1 K8 [print]
       22 LOADK                            R2 K9 ["[Blox:debug] SETTER-WITH-FN signal=%*, value type=%*, fn=%*"]
       23 GETUPVAL                         R5 1
       24 FASTCALL1                        TOSTRING R5 ; [+2]
       25 GETIMPORT                        R4 K11 [tostring]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R6 2
       29 FASTCALL1                        TYPE R6 ; [+2]
       30 GETIMPORT                        R5 K4 [type]
       32 CALL                             R5 1 1
       33 FASTCALL1                        TOSTRING R0 ; [+3]
       34 MOVE                             R7 R0
       35 GETIMPORT                        R6 K11 [tostring]
       37 CALL                             R6 1 1
       38 NAMECALL                         R2 R2 K12 ["format"]
       40 CALL                             R2 4 1
       41 CALL                             R1 1 0
       42 GETIMPORT                        R1 K8 [print]
       44 GETIMPORT                        R2 K15 [debug.traceback]
       46 CALL                             R2 0 -1
       47 CALL                             R1 -1 0
       48 LOADB                            R2 0
       49 FASTCALL1                        TYPE R0 ; [+3]
       50 MOVE                             R4 R0
       51 GETIMPORT                        R3 K4 [type]
       53 CALL                             R3 1 1
       54 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+3]
       56 GETTABLEKS                       R2 R0 K6 ["$$signal"]
       58 JUMPIFNOT                        R2 ; [+17]
       59 LOADB                            R2 0
       60 FASTCALL1                        TYPE R0 ; [+3]
       61 MOVE                             R4 R0
       62 GETIMPORT                        R3 K4 [type]
       64 CALL                             R3 1 1
       65 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+3]
       67 GETTABLEKS                       R2 R0 K6 ["$$signal"]
       69 JUMPIFNOT                        R2 ; [+4]
       70 MOVE                             R1 R0
       71 GETUPVAL                         R2 3
       72 CALL                             R1 1 1
       73 JUMP                             ; [+15]
       74 MOVE                             R1 R0
       75 JUMP                             ; [+13]
       76 FASTCALL1                        TYPEOF R0 ; [+3]
       77 MOVE                             R3 R0
       78 GETIMPORT                        R2 K1 [typeof]
       80 CALL                             R2 1 1
       81 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+6]
       83 GETUPVAL                         R1 4
       84 MOVE                             R2 R0
       85 GETUPVAL                         R3 2
       86 CALL                             R1 2 1
       87 JUMP                             ; [+1]
       88 MOVE                             R1 R0
       89 GETUPVAL                         R2 4
       90 GETUPVAL                         R3 5
       91 GETUPVAL                         R4 2
       92 MOVE                             R5 R1
       93 CALL                             R2 3 1
       94 JUMPIF                           R2 ; [+67]
       95 FASTCALL1                        TYPEOF R1 ; [+3]
       96 MOVE                             R3 R1
       97 GETIMPORT                        R2 K1 [typeof]
       99 CALL                             R2 1 1
      100 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+29]
      102 GETIMPORT                        R2 K8 [print]
      104 LOADK                            R3 K16 ["[Blox:debug] SETTER-STORING-FN signal=%*, prev type=%*, new=%*"]
      105 GETUPVAL                         R6 1
      106 FASTCALL1                        TOSTRING R6 ; [+2]
      107 GETIMPORT                        R5 K11 [tostring]
      109 CALL                             R5 1 1
      110 GETUPVAL                         R7 2
      111 FASTCALL1                        TYPE R7 ; [+2]
      112 GETIMPORT                        R6 K4 [type]
      114 CALL                             R6 1 1
      115 FASTCALL1                        TOSTRING R1 ; [+3]
      116 MOVE                             R8 R1
      117 GETIMPORT                        R7 K11 [tostring]
      119 CALL                             R7 1 1
      120 NAMECALL                         R3 R3 K12 ["format"]
      122 CALL                             R3 4 1
      123 CALL                             R2 1 0
      124 GETIMPORT                        R2 K8 [print]
      126 GETIMPORT                        R3 K15 [debug.traceback]
      128 CALL                             R3 0 -1
      129 CALL                             R2 -1 0
      130 SETUPVAL                         R1 2
      131 GETIMPORT                        R2 K19 [os.clock]
      133 CALL                             R2 0 1
      134 SETUPVAL                         R2 6
      135 GETUPVAL                         R2 7
      136 LOADNIL                          R3
      137 LOADNIL                          R4
      138 FORGPREP                         R2
      139 MOVE                             R7 R5
      140 CALL                             R7 0 0
      141 FORGLOOP                         R2 1 ; [-3]
      143 GETIMPORT                        R2 K21 [table.clear]
      145 GETUPVAL                         R3 7
      146 CALL                             R2 1 0
      147 GETUPVAL                         R2 8
      148 DUPCLOSURE                       R3 K22 [PROTO_1]
      149 CALL                             R2 1 0
      150 GETUPVAL                         R2 9
      151 GETTABLEKS                       R2 R2 K23 ["SHOW_SIGNAL_INTERNALS"]
      153 JUMPIFNOT                        R2 ; [+8]
      154 GETUPVAL                         R2 10
      155 GETUPVAL                         R3 6
      156 SETTABLEKS                       R3 R2 K24 ["version"]
      158 GETUPVAL                         R2 10
      159 GETUPVAL                         R3 2
      160 SETTABLEKS                       R3 R2 K25 ["value"]
      162 RETURN                           R0 0

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
       13 JUMPIFNOT                        R10 ; [+4]
       14 DUPTABLE                         R9 K4 [{["version"] = 0, ["value"]}]
       15 SETTABLEKS                       R0 R9 K3 ["value"]
       17 JUMP                             ; [+1]
       18 LOADB                            R9 1
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          REF R3
       21 CAPTURE                          REF R5
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          REF R4
       27 CAPTURE                          REF R6
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R9
       31 NEWCLOSURE                       R11 P1
       32 CAPTURE                          REF R6
       33 CAPTURE                          REF R4
       34 NEWCLOSURE                       R12 P2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R11
       37 CAPTURE                          REF R6
       38 NEWCLOSURE                       R13 P3
       39 CAPTURE                          REF R6
       40 NEWTABLE                         R15 1 0
       42 SETTABLEKS                       R9 R15 K5 ["$$signal"]
       44 DUPTABLE                         R16 K7 [{"__call"}]
       45 NEWCLOSURE                       R17 P4
       46 CAPTURE                          VAL R10
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R11
       49 CAPTURE                          REF R6
       50 CAPTURE                          REF R5
       51 SETTABLEKS                       R17 R16 K6 ["__call"]
       53 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
       55 GETIMPORT                        R14 K9 [setmetatable]
       57 CALL                             R14 2 1
       58 MOVE                             R8 R14
       59 NEWCLOSURE                       R14 P5
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R2
       62 CAPTURE                          REF R5
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          REF R4
       67 CAPTURE                          REF R6
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R9
       71 MOVE                             R15 R8
       72 MOVE                             R16 R14
       73 CLOSEUPVALS                      R3
       74 RETURN                           R15 2

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
        0 JUMPIFNOTEQKNIL                  R0 ; [+19]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["[Blox:debug] COMPUTED-NIL-SRC computed=%*"]
        5 GETUPVAL                         R5 0
        6 FASTCALL1                        TOSTRING R5 ; [+2]
        7 GETIMPORT                        R4 K4 [tostring]
        9 CALL                             R4 1 1
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K1 [print]
       16 GETIMPORT                        R2 K8 [debug.traceback]
       18 CALL                             R2 0 -1
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 LOADB                            R2 1
       22 SETTABLE                         R2 R1 R0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R2 0
       25 RETURN                           R1 2

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+69]
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
       28 JUMPIFNOTEQKS                    R0 K4 ["function"] ; [+24]
       30 GETIMPORT                        R0 K6 [print]
       32 LOADK                            R1 K7 ["[Blox:debug] COMPUTED-INIT-FN computed=%*, value=%*"]
       33 GETUPVAL                         R4 8
       34 FASTCALL1                        TOSTRING R4 ; [+2]
       35 GETIMPORT                        R3 K9 [tostring]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R5 4
       39 FASTCALL1                        TOSTRING R5 ; [+2]
       40 GETIMPORT                        R4 K9 [tostring]
       42 CALL                             R4 1 1
       43 NAMECALL                         R1 R1 K10 ["format"]
       45 CALL                             R1 3 1
       46 CALL                             R0 1 0
       47 GETIMPORT                        R0 K6 [print]
       49 GETIMPORT                        R1 K13 [debug.traceback]
       51 CALL                             R1 0 -1
       52 CALL                             R0 -1 0
       53 GETIMPORT                        R0 K16 [os.clock]
       55 CALL                             R0 0 1
       56 SETUPVAL                         R0 9
       57 GETUPVAL                         R0 9
       58 SETUPVAL                         R0 10
       59 GETUPVAL                         R0 11
       60 GETTABLEKS                       R0 R0 K17 ["SHOW_SIGNAL_INTERNALS"]
       62 JUMPIFNOT                        R0 ; [+8]
       63 GETUPVAL                         R0 12
       64 GETUPVAL                         R1 3
       65 SETTABLEKS                       R1 R0 K18 ["sources"]
       67 GETUPVAL                         R0 12
       68 GETUPVAL                         R1 1
       69 SETTABLEKS                       R1 R0 K19 ["observers"]
       71 RETURN                           R0 0

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
       24 JUMPIFNOT                        R12 ; [+2]
       25 DUPTABLE                         R11 K6 [{["version"] = 0}]
       26 JUMP                             ; [+1]
       27 LOADB                            R11 1
       28 NEWCLOSURE                       R12 P0
       29 CAPTURE                          REF R9
       30 NEWCLOSURE                       R13 P1
       31 CAPTURE                          REF R4
       32 CAPTURE                          REF R9
       33 NEWCLOSURE                       R14 P2
       34 CAPTURE                          REF R2
       35 CAPTURE                          REF R8
       36 CAPTURE                          VAL R13
       37 NEWCLOSURE                       R15 P3
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R9
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          REF R8
       42 CAPTURE                          REF R7
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R14
       46 CAPTURE                          REF R2
       47 CAPTURE                          REF R6
       48 CAPTURE                          REF R5
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R11
       51 NEWCLOSURE                       R16 P4
       52 CAPTURE                          REF R8
       53 CAPTURE                          VAL R13
       54 NEWCLOSURE                       R17 P5
       55 CAPTURE                          REF R4
       56 CAPTURE                          REF R8
       57 CAPTURE                          REF R6
       58 CAPTURE                          VAL R13
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R14
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R10
       64 CAPTURE                          REF R7
       65 CAPTURE                          REF R5
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R11
       68 NEWCLOSURE                       R18 P6
       69 CAPTURE                          REF R9
       70 CAPTURE                          VAL R17
       71 CAPTURE                          REF R5
       72 NEWCLOSURE                       R19 P7
       73 CAPTURE                          VAL R18
       74 CAPTURE                          REF R9
       75 NEWTABLE                         R21 1 0
       77 SETTABLEKS                       R11 R21 K7 ["$$signal"]
       79 DUPTABLE                         R22 K9 [{"__call"}]
       80 NEWCLOSURE                       R23 P8
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R17
       83 CAPTURE                          VAL R18
       84 CAPTURE                          REF R9
       85 CAPTURE                          REF R7
       86 SETTABLEKS                       R23 R22 K8 ["__call"]
       88 FASTCALL2                        SETMETATABLE R21 R22 ; [+3]
       90 GETIMPORT                        R20 K11 [setmetatable]
       92 CALL                             R20 2 1
       93 CLOSEUPVALS                      R2
       94 RETURN                           R20 1

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
        0 JUMPIFNOTEQKNIL                  R0 ; [+19]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["[Blox:debug] EFFECT-NIL-SRC effect=%*"]
        5 GETUPVAL                         R5 0
        6 FASTCALL1                        TOSTRING R5 ; [+2]
        7 GETIMPORT                        R4 K4 [tostring]
        9 CALL                             R4 1 1
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K1 [print]
       16 GETIMPORT                        R2 K8 [debug.traceback]
       18 CALL                             R2 0 -1
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 LOADB                            R2 1
       22 SETTABLE                         R2 R1 R0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R2 0
       25 RETURN                           R1 2

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
       38 DUPTABLE                         R12 K18 [{["__mode"] = "k"}]
       39 CALL                             R11 1 1
       40 DUPCLOSURE                       R12 K19 [PROTO_8]
       41 CAPTURE                          VAL R11
       42 DUPCLOSURE                       R13 K20 [PROTO_9]
       43 DUPCLOSURE                       R14 K21 [PROTO_10]
       44 DUPCLOSURE                       R15 K22 [PROTO_11]
       45 CAPTURE                          VAL R14
       46 DUPCLOSURE                       R16 K23 [PROTO_14]
       47 CAPTURE                          VAL R15
       48 CAPTURE                          VAL R0
       49 GETIMPORT                        R17 K25 [_G]
       51 GETTABLEKS                       R17 R17 K26 ["__SIGNALS_VALIDATION_ENABLED__"]
       53 JUMPIF                           R17 ; [+4]
       54 GETIMPORT                        R17 K25 [_G]
       56 GETTABLEKS                       R17 R17 K27 ["__DEV__"]
       58 JUMPIFNOT                        R17 ; [+2]
       59 MOVE                             R18 R16
       60 JUMP                             ; [+1]
       61 MOVE                             R18 R0
       62 DUPCLOSURE                       R19 K28 [PROTO_21]
       63 CAPTURE                          VAL R13
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R20 K29 [PROTO_31]
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R18
       74 CAPTURE                          VAL R0
       75 DUPCLOSURE                       R21 K30 [PROTO_39]
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R18
       78 CAPTURE                          VAL R3
       79 DUPTABLE                         R22 K40 [{"createSignal", "createComputed", "createEffect", "isCallable", "isGetter", "batch", "flush", "schedule", "peek"}]
       80 SETTABLEKS                       R19 R22 K31 ["createSignal"]
       82 SETTABLEKS                       R20 R22 K32 ["createComputed"]
       84 SETTABLEKS                       R21 R22 K33 ["createEffect"]
       86 SETTABLEKS                       R8 R22 K34 ["isCallable"]
       88 SETTABLEKS                       R7 R22 K35 ["isGetter"]
       90 SETTABLEKS                       R4 R22 K36 ["batch"]
       92 SETTABLEKS                       R5 R22 K37 ["flush"]
       94 SETTABLEKS                       R6 R22 K38 ["schedule"]
       96 SETTABLEKS                       R10 R22 K39 ["peek"]
       98 CLOSEUPVALS                      R2
       99 RETURN                           R22 1
