PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+8]
        7 LENGTH                           R2 R0
        8 LOADN                            R3 0
        9 JUMPIFLT                         R3 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K1 [typeof]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K3 ["boolean"] ; [+2]
       21 RETURN                           R0 1
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+10]
       29 GETIMPORT                        R2 K6 [next]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKNIL                  R2 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 RETURN                           R1 1
       38 JUMPIFNOTEQKNIL                  R0 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R4 K0 ["."]
        1 LOADN                            R5 1
        2 LOADB                            R6 1
        3 NAMECALL                         R2 R1 K1 ["find"]
        5 CALL                             R2 4 1
        6 JUMPIF                           R2 ; [+2]
        7 GETTABLE                         R2 R0 R1
        8 RETURN                           R2 1
        9 LOADK                            R4 K2 ["[^.]+"]
       10 NAMECALL                         R2 R1 K3 ["gmatch"]
       12 CALL                             R2 2 3
       13 FORGPREP                         R2
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R8 R0
       16 GETIMPORT                        R7 K5 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFEQKS                       R7 K6 ["table"] ; [+3]
       21 LOADNIL                          R7
       22 RETURN                           R7 1
       23 GETTABLE                         R0 R0 R5
       24 FORGLOOP                         R2 1 ; [-11]
       26 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 1
        1 LOADNIL                          R1
        2 RETURN                           R0 2

PROTO_3:
        0 LOADB                            R1 0
        1 MOVE                             R2 R0
        2 RETURN                           R1 2

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["NonEmpty"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R1
       17 GETTABLEKS                       R5 R0 K5 ["field"]
       19 CALL                             R3 2 1
       20 FASTCALL1                        TYPEOF R3 ; [+3]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K7 [typeof]
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKS                    R4 K8 ["string"] ; [+8]
       27 LENGTH                           R4 R3
       28 LOADN                            R5 0
       29 JUMPIFLT                         R5 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 JUMP                             ; [+29]
       34 FASTCALL1                        TYPEOF R3 ; [+3]
       35 MOVE                             R5 R3
       36 GETIMPORT                        R4 K7 [typeof]
       38 CALL                             R4 1 1
       39 JUMPIFNOTEQKS                    R4 K9 ["boolean"] ; [+3]
       41 MOVE                             R2 R3
       42 JUMP                             ; [+20]
       43 FASTCALL1                        TYPEOF R3 ; [+3]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K7 [typeof]
       47 CALL                             R4 1 1
       48 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+10]
       50 GETIMPORT                        R4 K12 [next]
       52 MOVE                             R5 R3
       53 CALL                             R4 1 1
       54 JUMPIFNOTEQKNIL                  R4 ; [+2]
       56 LOADB                            R2 0 +1
       57 LOADB                            R2 1
       58 JUMP                             ; [+4]
       59 JUMPIFNOTEQKNIL                  R3 ; [+2]
       61 LOADB                            R2 0 +1
       62 LOADB                            R2 1
       63 JUMPIFNOT                        R2 ; [+3]
       64 LOADB                            R2 1
       65 LOADNIL                          R3
       66 RETURN                           R2 2
       67 LOADB                            R2 0
       68 MOVE                             R3 R0
       69 RETURN                           R2 2

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Exists"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 GETTABLEKS                       R4 R0 K5 ["field"]
       19 CALL                             R2 2 1
       20 JUMPIFEQKNIL                     R2 ; [+4]
       22 LOADB                            R2 1
       23 LOADNIL                          R3
       24 RETURN                           R2 2
       25 LOADB                            R2 0
       26 MOVE                             R3 R0
       27 RETURN                           R2 2

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Equals"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 GETTABLEKS                       R4 R0 K5 ["field"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R3 R0 K6 ["value"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+4]
       24 LOADB                            R2 1
       25 LOADNIL                          R3
       26 RETURN                           R2 2
       27 LOADB                            R2 0
       28 MOVE                             R3 R0
       29 RETURN                           R2 2

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Range"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 GETTABLEKS                       R4 R0 K5 ["field"]
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKNIL                  R2 ; [+4]
       22 LOADB                            R3 1
       23 LOADNIL                          R4
       24 RETURN                           R3 2
       25 FASTCALL1                        TYPEOF R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K7 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFNOTEQKS                    R4 K8 ["table"] ; [+3]
       32 LENGTH                           R3 R2
       33 JUMP                             ; [+5]
       34 FASTCALL1                        TONUMBER R2 ; [+3]
       35 MOVE                             R4 R2
       36 GETIMPORT                        R3 K10 [tonumber]
       38 CALL                             R3 1 1
       39 JUMPIFNOTEQKNIL                  R3 ; [+4]
       41 LOADB                            R4 0
       42 MOVE                             R5 R0
       43 RETURN                           R4 2
       44 GETTABLEKS                       R4 R0 K11 ["min"]
       46 JUMPIFEQKNIL                     R4 ; [+8]
       48 GETTABLEKS                       R4 R0 K11 ["min"]
       50 JUMPIFNOTLT                      R3 R4 ; [+4]
       52 LOADB                            R4 0
       53 MOVE                             R5 R0
       54 RETURN                           R4 2
       55 GETTABLEKS                       R4 R0 K12 ["max"]
       57 JUMPIFEQKNIL                     R4 ; [+8]
       59 GETTABLEKS                       R4 R0 K12 ["max"]
       61 JUMPIFNOTLT                      R4 R3 ; [+4]
       63 LOADB                            R4 0
       64 MOVE                             R5 R0
       65 RETURN                           R4 2
       66 LOADB                            R4 1
       67 LOADNIL                          R5
       68 RETURN                           R4 2

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["All"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K5 ["rules"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K7 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFEQKS                       R2 K8 ["table"] ; [+4]
       23 LOADB                            R2 0
       24 MOVE                             R3 R0
       25 RETURN                           R2 2
       26 GETTABLEKS                       R2 R0 K5 ["rules"]
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETUPVAL                         R7 1
       32 MOVE                             R8 R6
       33 MOVE                             R9 R1
       34 CALL                             R7 2 2
       35 JUMPIF                           R7 ; [+3]
       36 LOADB                            R9 0
       37 MOVE                             R10 R8
       38 RETURN                           R9 2
       39 FORGLOOP                         R2 2 ; [-9]
       41 LOADB                            R2 1
       42 LOADNIL                          R3
       43 RETURN                           R2 2

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Any"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K5 ["rules"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K7 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFEQKS                       R2 K8 ["table"] ; [+4]
       23 LOADB                            R2 0
       24 MOVE                             R3 R0
       25 RETURN                           R2 2
       26 GETTABLEKS                       R2 R0 K5 ["rules"]
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETUPVAL                         R7 1
       32 MOVE                             R8 R6
       33 MOVE                             R9 R1
       34 CALL                             R7 2 1
       35 JUMPIFNOT                        R7 ; [+3]
       36 LOADB                            R7 1
       37 LOADNIL                          R8
       38 RETURN                           R7 2
       39 FORGLOOP                         R2 2 ; [-9]
       41 LOADB                            R2 0
       42 MOVE                             R3 R0
       43 RETURN                           R2 2

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Not"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K5 ["rule"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K7 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFEQKS                       R2 K8 ["table"] ; [+4]
       23 LOADB                            R2 0
       24 MOVE                             R3 R0
       25 RETURN                           R2 2
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R3 R0 K5 ["rule"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 LOADB                            R2 0
       33 MOVE                             R3 R0
       34 RETURN                           R2 2
       35 LOADB                            R2 1
       36 LOADNIL                          R3
       37 RETURN                           R2 2

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["kind"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Branch"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["evaluator/kind mismatch"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K5 ["field"]
       17 GETTABLE                         R2 R1 R3
       18 GETTABLEKS                       R3 R0 K6 ["cases"]
       20 FASTCALL1                        TYPEOF R3 ; [+3]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R5 K8 [typeof]
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQKS                    R5 K9 ["table"] ; [+10]
       27 FASTCALL1                        TYPEOF R2 ; [+3]
       28 MOVE                             R6 R2
       29 GETIMPORT                        R5 K8 [typeof]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K10 ["string"] ; [+3]
       34 GETTABLE                         R4 R3 R2
       35 JUMP                             ; [+1]
       36 LOADNIL                          R4
       37 MOVE                             R5 R4
       38 JUMPIF                           R5 ; [+2]
       39 GETTABLEKS                       R5 R0 K11 ["default"]
       41 MOVE                             R4 R5
       42 JUMPIFNOTEQKNIL                  R4 ; [+4]
       44 LOADB                            R5 1
       45 LOADNIL                          R6
       46 RETURN                           R5 2
       47 GETUPVAL                         R5 1
       48 MOVE                             R6 R4
       49 MOVE                             R7 R1
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["kind"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+5]
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1
       10 LOADB                            R3 0
       11 MOVE                             R4 R0
       12 RETURN                           R3 2

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["required"]
        8 JUMPIFNOT                        R8 ; [+42]
        9 GETTABLEKS                       R8 R7 K1 ["inputType"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K2 ["Boolean"]
       14 JUMPIFNOTEQ                      R8 R9 ; [+19]
       16 MOVE                             R9 R2
       17 GETUPVAL                         R10 1
       18 DUPTABLE                         R11 K5 [{"kind", "field"}]
       19 GETUPVAL                         R12 2
       20 GETTABLEKS                       R12 R12 K6 ["Exists"]
       22 SETTABLEKS                       R12 R11 K3 ["kind"]
       24 GETTABLEKS                       R12 R7 K7 ["name"]
       26 SETTABLEKS                       R12 R11 K4 ["field"]
       28 CALL                             R10 1 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R8 K10 [table.insert]
       32 CALL                             R8 -1 0
       33 JUMP                             ; [+17]
       34 MOVE                             R9 R2
       35 GETUPVAL                         R10 1
       36 DUPTABLE                         R11 K5 [{"kind", "field"}]
       37 GETUPVAL                         R12 2
       38 GETTABLEKS                       R12 R12 K11 ["NonEmpty"]
       40 SETTABLEKS                       R12 R11 K3 ["kind"]
       42 GETTABLEKS                       R12 R7 K7 ["name"]
       44 SETTABLEKS                       R12 R11 K4 ["field"]
       46 CALL                             R10 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R8 K10 [table.insert]
       50 CALL                             R8 -1 0
       51 GETTABLEKS                       R8 R7 K1 ["inputType"]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K12 ["Number"]
       56 JUMPIFEQ                         R8 R9 ; [+8]
       58 GETTABLEKS                       R8 R7 K1 ["inputType"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K13 ["Array"]
       63 JUMPIFNOTEQ                      R8 R9 ; [+30]
       65 GETTABLEKS                       R8 R7 K14 ["min"]
       67 GETTABLEKS                       R9 R7 K15 ["max"]
       69 JUMPIFNOTEQKNIL                  R8 ; [+3]
       71 JUMPIFEQKNIL                     R9 ; [+22]
       73 MOVE                             R11 R2
       74 GETUPVAL                         R12 1
       75 DUPTABLE                         R13 K16 [{"kind", "field", "min", "max"}]
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K17 ["Range"]
       79 SETTABLEKS                       R14 R13 K3 ["kind"]
       81 GETTABLEKS                       R14 R7 K7 ["name"]
       83 SETTABLEKS                       R14 R13 K4 ["field"]
       85 SETTABLEKS                       R8 R13 K14 ["min"]
       87 SETTABLEKS                       R9 R13 K15 ["max"]
       89 CALL                             R12 1 -1
       90 FASTCALL                         TABLE_INSERT ; [+2]
       91 GETIMPORT                        R10 K10 [table.insert]
       93 CALL                             R10 -1 0
       94 FORGLOOP                         R3 2 ; [-89]
       96 LENGTH                           R3 R2
       97 JUMPIFNOTEQKN                    R3 K18 [0] ; [+2]
       99 RETURN                           R1 1
      100 JUMPIFEQKNIL                     R1 ; [+8]
      102 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
      104 MOVE                             R4 R2
      105 MOVE                             R5 R1
      106 GETIMPORT                        R3 K10 [table.insert]
      108 CALL                             R3 2 0
      109 GETUPVAL                         R3 1
      110 DUPTABLE                         R4 K20 [{"kind", "rules"}]
      111 GETUPVAL                         R5 2
      112 GETTABLEKS                       R5 R5 K21 ["All"]
      114 SETTABLEKS                       R5 R4 K3 ["kind"]
      116 SETTABLEKS                       R2 R4 K19 ["rules"]
      118 CALL                             R3 1 -1
      119 RETURN                           R3 -1

PROTO_14:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 LOADN                            R1 0
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 FASTCALL1                        TYPEOF R5 ; [+3]
       15 MOVE                             R8 R5
       16 GETIMPORT                        R7 K1 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K3 ["number"] ; [+8]
       21 FASTCALL1                        TYPEOF R6 ; [+3]
       22 MOVE                             R8 R6
       23 GETIMPORT                        R7 K1 [typeof]
       25 CALL                             R7 1 1
       26 JUMPIFEQKS                       R7 K4 ["string"] ; [+3]
       28 LOADB                            R7 0
       29 RETURN                           R7 1
       30 ADDK                             R1 R1 K5 [1]
       31 FORGLOOP                         R2 2 ; [-18]
       33 LENGTH                           R3 R0
       34 JUMPIFEQ                         R1 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["inputType"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["String"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+17]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R3 K3 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K4 ["string"] ; [+190]
       14 LOADK                            R4 K5 ["\"%*\" must be a string"]
       15 GETTABLEKS                       R6 R0 K6 ["name"]
       17 NAMECALL                         R4 R4 K7 ["format"]
       19 CALL                             R4 2 1
       20 MOVE                             R3 R4
       21 RETURN                           R3 1
       22 JUMP                             ; [+180]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K8 ["Number"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+17]
       28 FASTCALL1                        TYPEOF R1 ; [+3]
       29 MOVE                             R4 R1
       30 GETIMPORT                        R3 K3 [typeof]
       32 CALL                             R3 1 1
       33 JUMPIFEQKS                       R3 K9 ["number"] ; [+169]
       35 LOADK                            R4 K10 ["\"%*\" must be a number"]
       36 GETTABLEKS                       R6 R0 K6 ["name"]
       38 NAMECALL                         R4 R4 K7 ["format"]
       40 CALL                             R4 2 1
       41 MOVE                             R3 R4
       42 RETURN                           R3 1
       43 JUMP                             ; [+159]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K11 ["Boolean"]
       47 JUMPIFNOTEQ                      R2 R3 ; [+17]
       49 FASTCALL1                        TYPEOF R1 ; [+3]
       50 MOVE                             R4 R1
       51 GETIMPORT                        R3 K3 [typeof]
       53 CALL                             R3 1 1
       54 JUMPIFEQKS                       R3 K12 ["boolean"] ; [+148]
       56 LOADK                            R4 K13 ["\"%*\" must be a boolean"]
       57 GETTABLEKS                       R6 R0 K6 ["name"]
       59 NAMECALL                         R4 R4 K7 ["format"]
       61 CALL                             R4 2 1
       62 MOVE                             R3 R4
       63 RETURN                           R3 1
       64 JUMP                             ; [+138]
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R3 R3 K14 ["Array"]
       68 JUMPIFNOTEQ                      R2 R3 ; [+14]
       70 GETUPVAL                         R3 1
       71 MOVE                             R4 R1
       72 CALL                             R3 1 1
       73 JUMPIF                           R3 ; [+129]
       74 LOADK                            R4 K15 ["\"%*\" must be an array of strings"]
       75 GETTABLEKS                       R6 R0 K6 ["name"]
       77 NAMECALL                         R4 R4 K7 ["format"]
       79 CALL                             R4 2 1
       80 MOVE                             R3 R4
       81 RETURN                           R3 1
       82 JUMP                             ; [+120]
       83 GETTABLEKS                       R3 R0 K0 ["inputType"]
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K16 ["Option"]
       88 JUMPIFNOTEQ                      R3 R4 ; [+42]
       90 FASTCALL1                        TYPEOF R1 ; [+3]
       91 MOVE                             R4 R1
       92 GETIMPORT                        R3 K3 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K4 ["string"] ; [+9]
       97 LOADK                            R4 K17 ["\"%*\" must be one of its options"]
       98 GETTABLEKS                       R6 R0 K6 ["name"]
      100 NAMECALL                         R4 R4 K7 ["format"]
      102 CALL                             R4 2 1
      103 MOVE                             R3 R4
      104 RETURN                           R3 1
      105 GETTABLEKS                       R3 R0 K18 ["options"]
      107 FASTCALL1                        TYPEOF R3 ; [+3]
      108 MOVE                             R5 R3
      109 GETIMPORT                        R4 K3 [typeof]
      111 CALL                             R4 1 1
      112 JUMPIFNOTEQKS                    R4 K19 ["table"] ; [+10]
      114 GETIMPORT                        R4 K21 [table.find]
      116 MOVE                             R5 R3
      117 MOVE                             R6 R1
      118 CALL                             R4 2 1
      119 JUMPIFEQKNIL                     R4 ; [+3]
      121 LOADNIL                          R4
      122 RETURN                           R4 1
      123 LOADK                            R5 K17 ["\"%*\" must be one of its options"]
      124 GETTABLEKS                       R7 R0 K6 ["name"]
      126 NAMECALL                         R5 R5 K7 ["format"]
      128 CALL                             R5 2 1
      129 MOVE                             R4 R5
      130 RETURN                           R4 1
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K22 ["Instance"]
      134 JUMPIFNOTEQ                      R2 R3 ; [+25]
      136 FASTCALL1                        TYPEOF R1 ; [+3]
      137 MOVE                             R4 R1
      138 GETIMPORT                        R3 K3 [typeof]
      140 CALL                             R3 1 1
      141 JUMPIFNOTEQKS                    R3 K19 ["table"] ; [+9]
      143 GETTABLEKS                       R4 R1 K23 ["uniqueId"]
      145 FASTCALL1                        TYPEOF R4 ; [+2]
      146 GETIMPORT                        R3 K3 [typeof]
      148 CALL                             R3 1 1
      149 JUMPIFEQKS                       R3 K4 ["string"] ; [+53]
      151 LOADK                            R4 K24 ["\"%*\" must be a picked instance"]
      152 GETTABLEKS                       R6 R0 K6 ["name"]
      154 NAMECALL                         R4 R4 K7 ["format"]
      156 CALL                             R4 2 1
      157 MOVE                             R3 R4
      158 RETURN                           R3 1
      159 JUMP                             ; [+43]
      160 GETUPVAL                         R3 0
      161 GETTABLEKS                       R3 R3 K25 ["Image"]
      163 JUMPIFNOTEQ                      R2 R3 ; [+39]
      165 FASTCALL1                        TYPEOF R1 ; [+3]
      166 MOVE                             R5 R1
      167 GETIMPORT                        R4 K3 [typeof]
      169 CALL                             R4 1 1
      170 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
      172 LOADB                            R3 0 +1
      173 LOADB                            R3 1
      174 LOADB                            R4 0
      175 FASTCALL1                        TYPEOF R1 ; [+3]
      176 MOVE                             R6 R1
      177 GETIMPORT                        R5 K3 [typeof]
      179 CALL                             R5 1 1
      180 JUMPIFNOTEQKS                    R5 K19 ["table"] ; [+12]
      182 LOADB                            R4 0
      183 GETTABLEKS                       R5 R1 K26 ["data"]
      185 JUMPIFEQKNIL                     R5 ; [+7]
      187 GETTABLEKS                       R5 R1 K27 ["mimeType"]
      189 JUMPIFNOTEQKNIL                  R5 ; [+2]
      191 LOADB                            R4 0 +1
      192 LOADB                            R4 1
      193 JUMPIF                           R3 ; [+9]
      194 JUMPIF                           R4 ; [+8]
      195 LOADK                            R6 K28 ["\"%*\" must be an image"]
      196 GETTABLEKS                       R8 R0 K6 ["name"]
      198 NAMECALL                         R6 R6 K7 ["format"]
      200 CALL                             R6 2 1
      201 MOVE                             R5 R6
      202 RETURN                           R5 1
      203 LOADNIL                          R3
      204 RETURN                           R3 1

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["name"]
        8 GETTABLE                         R8 R1 R9
        9 JUMPIFEQKNIL                     R8 ; [+14]
       11 GETUPVAL                         R9 0
       12 MOVE                             R10 R7
       13 MOVE                             R11 R8
       14 CALL                             R9 2 1
       15 JUMPIFEQKNIL                     R9 ; [+8]
       17 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       19 MOVE                             R11 R2
       20 MOVE                             R12 R9
       21 GETIMPORT                        R10 K3 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R3 2 ; [-19]
       26 LENGTH                           R3 R2
       27 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       29 LOADNIL                          R3
       30 RETURN                           R3 1
       31 GETIMPORT                        R3 K6 [table.concat]
       33 MOVE                             R4 R2
       34 LOADK                            R5 K7 ["; "]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["kind"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["All"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+33]
        7 NEWTABLE                         R2 0 0
        9 GETTABLEKS                       R4 R0 K2 ["rules"]
       11 FASTCALL1                        TYPEOF R4 ; [+2]
       12 GETIMPORT                        R3 K4 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+22]
       17 GETTABLEKS                       R3 R0 K2 ["rules"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETUPVAL                         R8 1
       23 MOVE                             R9 R7
       24 MOVE                             R10 R1
       25 CALL                             R8 2 3
       26 FORGPREP                         R8
       27 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       29 MOVE                             R14 R2
       30 MOVE                             R15 R12
       31 GETIMPORT                        R13 K7 [table.insert]
       33 CALL                             R13 2 0
       34 FORGLOOP                         R8 2 ; [-8]
       36 FORGLOOP                         R3 2 ; [-15]
       38 RETURN                           R2 1
       39 GETTABLEKS                       R2 R0 K0 ["kind"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K8 ["Branch"]
       44 JUMPIFNOTEQ                      R2 R3 ; [+39]
       46 GETTABLEKS                       R3 R0 K9 ["field"]
       48 GETTABLE                         R2 R1 R3
       49 GETTABLEKS                       R5 R0 K10 ["cases"]
       51 FASTCALL1                        TYPEOF R5 ; [+2]
       52 GETIMPORT                        R4 K4 [typeof]
       54 CALL                             R4 1 1
       55 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+12]
       57 FASTCALL1                        TYPEOF R2 ; [+3]
       58 MOVE                             R5 R2
       59 GETIMPORT                        R4 K4 [typeof]
       61 CALL                             R4 1 1
       62 JUMPIFNOTEQKS                    R4 K11 ["string"] ; [+5]
       64 GETTABLEKS                       R4 R0 K10 ["cases"]
       66 GETTABLE                         R3 R4 R2
       67 JUMP                             ; [+1]
       68 LOADNIL                          R3
       69 MOVE                             R4 R3
       70 JUMPIF                           R4 ; [+2]
       71 GETTABLEKS                       R4 R0 K12 ["default"]
       73 MOVE                             R3 R4
       74 JUMPIFEQKNIL                     R3 ; [+6]
       76 GETUPVAL                         R4 1
       77 MOVE                             R5 R3
       78 MOVE                             R6 R1
       79 CALL                             R4 2 1
       80 RETURN                           R4 1
       81 NEWTABLE                         R4 0 0
       83 RETURN                           R4 1
       84 GETUPVAL                         R2 2
       85 MOVE                             R3 R0
       86 MOVE                             R4 R1
       87 CALL                             R2 2 2
       88 JUMPIF                           R2 ; [+2]
       89 JUMPIFNOTEQKNIL                  R3 ; [+4]
       91 NEWTABLE                         R4 0 0
       93 RETURN                           R4 1
       94 NEWTABLE                         R4 0 1
       96 MOVE                             R5 R3
       97 SETLIST                          R4 R5 1 [1]
       99 RETURN                           R4 1

PROTO_18:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETUPVAL                         R7 0
       14 MOVE                             R8 R6
       15 MOVE                             R9 R1
       16 CALL                             R7 2 1
       17 JUMPIFEQKNIL                     R7 ; [+2]
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-8]
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R0 K0 ["kind"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["Range"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+17]
       11 GETTABLEKS                       R2 R0 K2 ["field"]
       13 JUMPIFNOTEQ                      R2 R1 ; [+11]
       15 DUPTABLE                         R2 K5 [{"min", "max"}]
       16 GETTABLEKS                       R3 R0 K3 ["min"]
       18 SETTABLEKS                       R3 R2 K3 ["min"]
       20 GETTABLEKS                       R3 R0 K4 ["max"]
       22 SETTABLEKS                       R3 R2 K4 ["max"]
       24 RETURN                           R2 1
       25 LOADNIL                          R2
       26 RETURN                           R2 1
       27 GETTABLEKS                       R2 R0 K0 ["kind"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K6 ["All"]
       32 JUMPIFNOTEQ                      R2 R3 ; [+7]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R3 R0 K7 ["rules"]
       37 MOVE                             R4 R1
       38 CALL                             R2 2 1
       39 RETURN                           R2 1
       40 GETTABLEKS                       R2 R0 K0 ["kind"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K8 ["Any"]
       45 JUMPIFNOTEQ                      R2 R3 ; [+7]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R3 R0 K7 ["rules"]
       50 MOVE                             R4 R1
       51 CALL                             R2 2 1
       52 RETURN                           R2 1
       53 GETTABLEKS                       R2 R0 K0 ["kind"]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K9 ["Not"]
       58 JUMPIFNOTEQ                      R2 R3 ; [+17]
       60 GETTABLEKS                       R4 R0 K10 ["rule"]
       62 FASTCALL1                        TYPEOF R4 ; [+2]
       63 GETIMPORT                        R3 K12 [typeof]
       65 CALL                             R3 1 1
       66 JUMPIFNOTEQKS                    R3 K13 ["table"] ; [+7]
       68 GETUPVAL                         R2 2
       69 GETTABLEKS                       R3 R0 K10 ["rule"]
       71 MOVE                             R4 R1
       72 CALL                             R2 2 1
       73 RETURN                           R2 1
       74 LOADNIL                          R2
       75 RETURN                           R2 1
       76 GETTABLEKS                       R2 R0 K0 ["kind"]
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K14 ["Branch"]
       81 JUMPIFNOTEQ                      R2 R3 ; [+29]
       83 GETTABLEKS                       R3 R0 K15 ["cases"]
       85 FASTCALL1                        TYPEOF R3 ; [+2]
       86 GETIMPORT                        R2 K12 [typeof]
       88 CALL                             R2 1 1
       89 JUMPIFNOTEQKS                    R2 K13 ["table"] ; [+15]
       91 GETTABLEKS                       R2 R0 K15 ["cases"]
       93 LOADNIL                          R3
       94 LOADNIL                          R4
       95 FORGPREP                         R2
       96 GETUPVAL                         R7 2
       97 MOVE                             R8 R6
       98 MOVE                             R9 R1
       99 CALL                             R7 2 1
      100 JUMPIFEQKNIL                     R7 ; [+2]
      102 RETURN                           R7 1
      103 FORGLOOP                         R2 2 ; [-8]
      105 GETUPVAL                         R2 2
      106 GETTABLEKS                       R3 R0 K16 ["default"]
      108 MOVE                             R4 R1
      109 CALL                             R2 2 -1
      110 RETURN                           R2 -1
      111 LOADNIL                          R2
      112 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["kind"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["NonEmpty"]
        5 JUMPIFEQ                         R2 R3 ; [+8]
        7 GETTABLEKS                       R2 R0 K0 ["kind"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["Exists"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+9]
       14 LOADK                            R3 K3 ["\"%*\" is required"]
       15 GETTABLEKS                       R5 R0 K4 ["field"]
       17 NAMECALL                         R3 R3 K5 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R0 K0 ["kind"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K6 ["Equals"]
       27 JUMPIFNOTEQ                      R2 R3 ; [+15]
       29 LOADK                            R3 K7 ["\"%*\" must equal %*"]
       30 GETTABLEKS                       R5 R0 K4 ["field"]
       32 GETTABLEKS                       R7 R0 K8 ["value"]
       34 FASTCALL1                        TOSTRING R7 ; [+2]
       35 GETIMPORT                        R6 K10 [tostring]
       37 CALL                             R6 1 1
       38 NAMECALL                         R3 R3 K5 ["format"]
       40 CALL                             R3 3 1
       41 MOVE                             R2 R3
       42 RETURN                           R2 1
       43 GETTABLEKS                       R2 R0 K0 ["kind"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K11 ["Range"]
       48 JUMPIFNOTEQ                      R2 R3 ; [+80]
       50 FASTCALL1                        TYPEOF R1 ; [+3]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K13 [typeof]
       54 CALL                             R3 1 1
       55 JUMPIFEQKS                       R3 K14 ["table"] ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 JUMPIFNOT                        R2 ; [+2]
       60 LOADK                            R3 K15 ["have"]
       61 JUMP                             ; [+1]
       62 LOADK                            R3 K16 ["be"]
       63 JUMPIFNOT                        R2 ; [+2]
       64 LOADK                            R4 K17 [" items"]
       65 JUMP                             ; [+1]
       66 LOADK                            R4 K18 [""]
       67 GETTABLEKS                       R5 R0 K19 ["min"]
       69 JUMPIFEQKNIL                     R5 ; [+19]
       71 GETTABLEKS                       R5 R0 K20 ["max"]
       73 JUMPIFEQKNIL                     R5 ; [+15]
       75 LOADK                            R6 K21 ["\"%*\" must %* between %* and %*%*"]
       76 GETTABLEKS                       R8 R0 K4 ["field"]
       78 MOVE                             R9 R3
       79 GETTABLEKS                       R10 R0 K19 ["min"]
       81 GETTABLEKS                       R11 R0 K20 ["max"]
       83 MOVE                             R12 R4
       84 NAMECALL                         R6 R6 K5 ["format"]
       86 CALL                             R6 6 1
       87 MOVE                             R5 R6
       88 RETURN                           R5 1
       89 GETTABLEKS                       R5 R0 K19 ["min"]
       91 JUMPIFEQKNIL                     R5 ; [+13]
       93 LOADK                            R6 K22 ["\"%*\" must %* at least %*%*"]
       94 GETTABLEKS                       R8 R0 K4 ["field"]
       96 MOVE                             R9 R3
       97 GETTABLEKS                       R10 R0 K19 ["min"]
       99 MOVE                             R11 R4
      100 NAMECALL                         R6 R6 K5 ["format"]
      102 CALL                             R6 5 1
      103 MOVE                             R5 R6
      104 RETURN                           R5 1
      105 GETTABLEKS                       R5 R0 K20 ["max"]
      107 JUMPIFEQKNIL                     R5 ; [+13]
      109 LOADK                            R6 K23 ["\"%*\" must %* at most %*%*"]
      110 GETTABLEKS                       R8 R0 K4 ["field"]
      112 MOVE                             R9 R3
      113 GETTABLEKS                       R10 R0 K20 ["max"]
      115 MOVE                             R11 R4
      116 NAMECALL                         R6 R6 K5 ["format"]
      118 CALL                             R6 5 1
      119 MOVE                             R5 R6
      120 RETURN                           R5 1
      121 LOADK                            R6 K24 ["\"%*\" must be a number"]
      122 GETTABLEKS                       R8 R0 K4 ["field"]
      124 NAMECALL                         R6 R6 K5 ["format"]
      126 CALL                             R6 2 1
      127 MOVE                             R5 R6
      128 RETURN                           R5 1
      129 GETTABLEKS                       R2 R0 K0 ["kind"]
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K25 ["Any"]
      134 JUMPIFNOTEQ                      R2 R3 ; [+3]
      136 LOADK                            R2 K26 ["at least one of a set of conditions must be met"]
      137 RETURN                           R2 1
      138 GETTABLEKS                       R2 R0 K0 ["kind"]
      140 GETUPVAL                         R3 0
      141 GETTABLEKS                       R3 R3 K27 ["Not"]
      143 JUMPIFNOTEQ                      R2 R3 ; [+3]
      145 LOADK                            R2 K28 ["a condition that must not hold is currently true"]
      146 RETURN                           R2 1
      147 LOADK                            R3 K29 ["the \"%*\" rule was not satisfied"]
      148 GETTABLEKS                       R5 R0 K0 ["kind"]
      150 NAMECALL                         R3 R3 K5 ["format"]
      152 CALL                             R3 2 1
      153 MOVE                             R2 R3
      154 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["kind"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["NonEmpty"]
        5 JUMPIFEQ                         R1 R2 ; [+29]
        7 GETTABLEKS                       R1 R0 K0 ["kind"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["Exists"]
       12 JUMPIFEQ                         R1 R2 ; [+22]
       14 GETTABLEKS                       R1 R0 K0 ["kind"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["Equals"]
       19 JUMPIFEQ                         R1 R2 ; [+15]
       21 GETTABLEKS                       R1 R0 K0 ["kind"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["Range"]
       26 JUMPIFEQ                         R1 R2 ; [+8]
       28 GETTABLEKS                       R1 R0 K0 ["kind"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K5 ["Branch"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+4]
       35 GETTABLEKS                       R1 R0 K6 ["field"]
       37 RETURN                           R1 1
       38 LOADNIL                          R1
       39 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETIMPORT                        R3 K2 [table.create]
        6 LENGTH                           R4 R2
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R2
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R11 R9 K3 ["kind"]
       16 GETUPVAL                         R12 1
       17 GETTABLEKS                       R12 R12 K4 ["NonEmpty"]
       19 JUMPIFEQ                         R11 R12 ; [+29]
       21 GETTABLEKS                       R11 R9 K3 ["kind"]
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R12 R12 K5 ["Exists"]
       26 JUMPIFEQ                         R11 R12 ; [+22]
       28 GETTABLEKS                       R11 R9 K3 ["kind"]
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K6 ["Equals"]
       33 JUMPIFEQ                         R11 R12 ; [+15]
       35 GETTABLEKS                       R11 R9 K3 ["kind"]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K7 ["Range"]
       40 JUMPIFEQ                         R11 R12 ; [+8]
       42 GETTABLEKS                       R11 R9 K3 ["kind"]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K8 ["Branch"]
       47 JUMPIFNOTEQ                      R11 R12 ; [+4]
       49 GETTABLEKS                       R10 R9 K9 ["field"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R10
       53 JUMPIFEQKNIL                     R10 ; [+6]
       55 GETUPVAL                         R11 2
       56 MOVE                             R12 R1
       57 MOVE                             R13 R10
       58 CALL                             R11 2 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R11
       61 GETUPVAL                         R12 3
       62 MOVE                             R13 R9
       63 MOVE                             R14 R11
       64 CALL                             R12 2 1
       65 GETTABLE                         R13 R4 R12
       66 JUMPIF                           R13 ; [+9]
       67 LOADB                            R13 1
       68 SETTABLE                         R13 R4 R12
       69 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       71 MOVE                             R14 R3
       72 MOVE                             R15 R12
       73 GETIMPORT                        R13 K11 [table.insert]
       75 CALL                             R13 2 0
       76 FORGLOOP                         R5 2 ; [-63]
       78 GETIMPORT                        R5 K13 [table.concat]
       80 MOVE                             R6 R3
       81 LOADK                            R7 K14 ["; "]
       82 CALL                             R5 2 -1
       83 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Util"]
       13 GETTABLEKS                       R3 R3 K7 ["AskInput"]
       15 GETTABLEKS                       R3 R3 K8 ["AskInputTypes"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["RULE_KIND"]
       20 GETTABLEKS                       R4 R2 K10 ["INPUT_TYPE"]
       22 GETTABLEKS                       R5 R2 K11 ["asRule"]
       24 DUPCLOSURE                       R6 K12 [PROTO_0]
       25 DUPCLOSURE                       R7 K13 [PROTO_1]
       26 LOADNIL                          R8
       27 NEWTABLE                         R9 16 0
       29 GETTABLEKS                       R10 R3 K14 ["Always"]
       31 DUPCLOSURE                       R11 K15 [PROTO_2]
       32 SETTABLE                         R11 R9 R10
       33 GETTABLEKS                       R10 R3 K16 ["Never"]
       35 DUPCLOSURE                       R11 K17 [PROTO_3]
       36 SETTABLE                         R11 R9 R10
       37 GETTABLEKS                       R10 R3 K18 ["NonEmpty"]
       39 DUPCLOSURE                       R11 K19 [PROTO_4]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R7
       42 SETTABLE                         R11 R9 R10
       43 GETTABLEKS                       R10 R3 K20 ["Exists"]
       45 DUPCLOSURE                       R11 K21 [PROTO_5]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R7
       48 SETTABLE                         R11 R9 R10
       49 GETTABLEKS                       R10 R3 K22 ["Equals"]
       51 DUPCLOSURE                       R11 K23 [PROTO_6]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 SETTABLE                         R11 R9 R10
       55 GETTABLEKS                       R10 R3 K24 ["Range"]
       57 DUPCLOSURE                       R11 K25 [PROTO_7]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 SETTABLE                         R11 R9 R10
       61 GETTABLEKS                       R10 R3 K26 ["All"]
       63 NEWCLOSURE                       R11 P8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          REF R8
       66 SETTABLE                         R11 R9 R10
       67 GETTABLEKS                       R10 R3 K27 ["Any"]
       69 NEWCLOSURE                       R11 P9
       70 CAPTURE                          VAL R3
       71 CAPTURE                          REF R8
       72 SETTABLE                         R11 R9 R10
       73 GETTABLEKS                       R10 R3 K28 ["Not"]
       75 NEWCLOSURE                       R11 P10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          REF R8
       78 SETTABLE                         R11 R9 R10
       79 GETTABLEKS                       R10 R3 K29 ["Branch"]
       81 NEWCLOSURE                       R11 P11
       82 CAPTURE                          VAL R3
       83 CAPTURE                          REF R8
       84 SETTABLE                         R11 R9 R10
       85 DUPCLOSURE                       R8 K30 [PROTO_12]
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R8 R0 K31 ["evaluateValidation"]
       89 DUPCLOSURE                       R10 K32 [PROTO_13]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R10 R0 K33 ["desugarFields"]
       95 DUPCLOSURE                       R10 K34 [PROTO_14]
       96 DUPCLOSURE                       R11 K35 [PROTO_15]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R10
       99 DUPCLOSURE                       R12 K36 [PROTO_16]
      100 CAPTURE                          VAL R11
      101 SETTABLEKS                       R12 R0 K37 ["validateFieldValues"]
      103 NEWCLOSURE                       R12 P17
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R12
      106 CAPTURE                          REF R8
      107 SETTABLEKS                       R12 R0 K38 ["collectFailures"]
      109 LOADNIL                          R13
      110 NEWCLOSURE                       R14 P18
      111 CAPTURE                          REF R13
      112 NEWCLOSURE                       R13 P19
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R14
      115 CAPTURE                          REF R13
      116 SETTABLEKS                       R13 R0 K39 ["getFieldRange"]
      118 DUPCLOSURE                       R15 K40 [PROTO_20]
      119 CAPTURE                          VAL R3
      120 DUPCLOSURE                       R16 K41 [PROTO_21]
      121 CAPTURE                          VAL R3
      122 DUPCLOSURE                       R17 K42 [PROTO_22]
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R15
      127 SETTABLEKS                       R17 R0 K43 ["summarizeFailures"]
      129 CLOSEUPVALS                      R8
      130 RETURN                           R0 1
