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
        3 GETTABLEKS                       R5 R5 K1 ["Present"]
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

PROTO_6:
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
       20 FASTCALL1                        TYPEOF R2 ; [+3]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R4 K7 [typeof]
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKS                    R4 K8 ["table"] ; [+3]
       27 LENGTH                           R3 R2
       28 JUMP                             ; [+5]
       29 FASTCALL1                        TONUMBER R2 ; [+3]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K10 [tonumber]
       33 CALL                             R3 1 1
       34 JUMPIFNOTEQKNIL                  R3 ; [+4]
       36 LOADB                            R4 0
       37 MOVE                             R5 R0
       38 RETURN                           R4 2
       39 GETTABLEKS                       R4 R0 K11 ["min"]
       41 JUMPIFEQKNIL                     R4 ; [+8]
       43 GETTABLEKS                       R4 R0 K11 ["min"]
       45 JUMPIFNOTLT                      R3 R4 ; [+4]
       47 LOADB                            R4 0
       48 MOVE                             R5 R0
       49 RETURN                           R4 2
       50 GETTABLEKS                       R4 R0 K12 ["max"]
       52 JUMPIFEQKNIL                     R4 ; [+8]
       54 GETTABLEKS                       R4 R0 K12 ["max"]
       56 JUMPIFNOTLT                      R4 R3 ; [+4]
       58 LOADB                            R4 0
       59 MOVE                             R5 R0
       60 RETURN                           R4 2
       61 LOADB                            R4 1
       62 LOADNIL                          R5
       63 RETURN                           R4 2

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["kind"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+5]
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1
       10 LOADB                            R3 1
       11 LOADNIL                          R4
       12 RETURN                           R3 2

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["kind"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Present"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+9]
        7 LOADK                            R3 K2 ["\"%*\" is required"]
        8 GETTABLEKS                       R5 R0 K3 ["field"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K0 ["kind"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["Equals"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+15]
       22 LOADK                            R3 K6 ["\"%*\" must equal %*"]
       23 GETTABLEKS                       R5 R0 K3 ["field"]
       25 GETTABLEKS                       R7 R0 K7 ["value"]
       27 FASTCALL1                        TOSTRING R7 ; [+2]
       28 GETIMPORT                        R6 K9 [tostring]
       30 CALL                             R6 1 1
       31 NAMECALL                         R3 R3 K4 ["format"]
       33 CALL                             R3 3 1
       34 MOVE                             R2 R3
       35 RETURN                           R2 1
       36 GETTABLEKS                       R2 R0 K0 ["kind"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K10 ["Range"]
       41 JUMPIFNOTEQ                      R2 R3 ; [+80]
       43 FASTCALL1                        TYPEOF R1 ; [+3]
       44 MOVE                             R4 R1
       45 GETIMPORT                        R3 K12 [typeof]
       47 CALL                             R3 1 1
       48 JUMPIFEQKS                       R3 K13 ["table"] ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 JUMPIFNOT                        R2 ; [+2]
       53 LOADK                            R3 K14 ["have"]
       54 JUMP                             ; [+1]
       55 LOADK                            R3 K15 ["be"]
       56 JUMPIFNOT                        R2 ; [+2]
       57 LOADK                            R4 K16 [" items"]
       58 JUMP                             ; [+1]
       59 LOADK                            R4 K17 [""]
       60 GETTABLEKS                       R5 R0 K18 ["min"]
       62 JUMPIFEQKNIL                     R5 ; [+19]
       64 GETTABLEKS                       R5 R0 K19 ["max"]
       66 JUMPIFEQKNIL                     R5 ; [+15]
       68 LOADK                            R6 K20 ["\"%*\" must %* between %* and %*%*"]
       69 GETTABLEKS                       R8 R0 K3 ["field"]
       71 MOVE                             R9 R3
       72 GETTABLEKS                       R10 R0 K18 ["min"]
       74 GETTABLEKS                       R11 R0 K19 ["max"]
       76 MOVE                             R12 R4
       77 NAMECALL                         R6 R6 K4 ["format"]
       79 CALL                             R6 6 1
       80 MOVE                             R5 R6
       81 RETURN                           R5 1
       82 GETTABLEKS                       R5 R0 K18 ["min"]
       84 JUMPIFEQKNIL                     R5 ; [+13]
       86 LOADK                            R6 K21 ["\"%*\" must %* at least %*%*"]
       87 GETTABLEKS                       R8 R0 K3 ["field"]
       89 MOVE                             R9 R3
       90 GETTABLEKS                       R10 R0 K18 ["min"]
       92 MOVE                             R11 R4
       93 NAMECALL                         R6 R6 K4 ["format"]
       95 CALL                             R6 5 1
       96 MOVE                             R5 R6
       97 RETURN                           R5 1
       98 GETTABLEKS                       R5 R0 K19 ["max"]
      100 JUMPIFEQKNIL                     R5 ; [+13]
      102 LOADK                            R6 K22 ["\"%*\" must %* at most %*%*"]
      103 GETTABLEKS                       R8 R0 K3 ["field"]
      105 MOVE                             R9 R3
      106 GETTABLEKS                       R10 R0 K19 ["max"]
      108 MOVE                             R11 R4
      109 NAMECALL                         R6 R6 K4 ["format"]
      111 CALL                             R6 5 1
      112 MOVE                             R5 R6
      113 RETURN                           R5 1
      114 LOADK                            R6 K23 ["\"%*\" must be a number"]
      115 GETTABLEKS                       R8 R0 K3 ["field"]
      117 NAMECALL                         R6 R6 K4 ["format"]
      119 CALL                             R6 2 1
      120 MOVE                             R5 R6
      121 RETURN                           R5 1
      122 GETTABLEKS                       R2 R0 K0 ["kind"]
      124 GETUPVAL                         R3 0
      125 GETTABLEKS                       R3 R3 K24 ["Any"]
      127 JUMPIFNOTEQ                      R2 R3 ; [+3]
      129 LOADK                            R2 K25 ["at least one of a set of conditions must be met"]
      130 RETURN                           R2 1
      131 GETTABLEKS                       R2 R0 K0 ["kind"]
      133 GETUPVAL                         R3 0
      134 GETTABLEKS                       R3 R3 K26 ["Not"]
      136 JUMPIFNOTEQ                      R2 R3 ; [+3]
      138 LOADK                            R2 K27 ["a condition that must not hold is currently true"]
      139 RETURN                           R2 1
      140 LOADK                            R3 K28 ["the \"%*\" rule was not satisfied"]
      141 GETTABLEKS                       R5 R0 K0 ["kind"]
      143 NAMECALL                         R3 R3 K4 ["format"]
      145 CALL                             R3 2 1
      146 MOVE                             R2 R3
      147 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["kind"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Present"]
        5 JUMPIFEQ                         R1 R2 ; [+22]
        7 GETTABLEKS                       R1 R0 K0 ["kind"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["Equals"]
       12 JUMPIFEQ                         R1 R2 ; [+15]
       14 GETTABLEKS                       R1 R0 K0 ["kind"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["Range"]
       19 JUMPIFEQ                         R1 R2 ; [+8]
       21 GETTABLEKS                       R1 R0 K0 ["kind"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["Branch"]
       26 JUMPIFNOTEQ                      R1 R2 ; [+4]
       28 GETTABLEKS                       R1 R0 K5 ["field"]
       30 RETURN                           R1 1
       31 LOADNIL                          R1
       32 RETURN                           R1 1

PROTO_17:
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
       17 GETTABLEKS                       R12 R12 K4 ["Present"]
       19 JUMPIFEQ                         R11 R12 ; [+22]
       21 GETTABLEKS                       R11 R9 K3 ["kind"]
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R12 R12 K5 ["Equals"]
       26 JUMPIFEQ                         R11 R12 ; [+15]
       28 GETTABLEKS                       R11 R9 K3 ["kind"]
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K6 ["Range"]
       33 JUMPIFEQ                         R11 R12 ; [+8]
       35 GETTABLEKS                       R11 R9 K3 ["kind"]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K7 ["Branch"]
       40 JUMPIFNOTEQ                      R11 R12 ; [+4]
       42 GETTABLEKS                       R10 R9 K8 ["field"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R10
       46 JUMPIFEQKNIL                     R10 ; [+6]
       48 GETUPVAL                         R11 2
       49 MOVE                             R12 R1
       50 MOVE                             R13 R10
       51 CALL                             R11 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R11
       54 GETUPVAL                         R12 3
       55 MOVE                             R13 R9
       56 MOVE                             R14 R11
       57 CALL                             R12 2 1
       58 GETTABLE                         R13 R4 R12
       59 JUMPIF                           R13 ; [+9]
       60 LOADB                            R13 1
       61 SETTABLE                         R13 R4 R12
       62 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       64 MOVE                             R14 R3
       65 MOVE                             R15 R12
       66 GETIMPORT                        R13 K10 [table.insert]
       68 CALL                             R13 2 0
       69 FORGLOOP                         R5 2 ; [-56]
       71 GETIMPORT                        R5 K12 [table.concat]
       73 MOVE                             R6 R3
       74 LOADK                            R7 K13 ["; "]
       75 CALL                             R5 2 -1
       76 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
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
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 DUPCLOSURE                       R5 K11 [PROTO_1]
       22 LOADNIL                          R6
       23 NEWTABLE                         R7 16 0
       25 GETTABLEKS                       R8 R3 K12 ["Always"]
       27 DUPCLOSURE                       R9 K13 [PROTO_2]
       28 SETTABLE                         R9 R7 R8
       29 GETTABLEKS                       R8 R3 K14 ["Never"]
       31 DUPCLOSURE                       R9 K15 [PROTO_3]
       32 SETTABLE                         R9 R7 R8
       33 GETTABLEKS                       R8 R3 K16 ["Present"]
       35 DUPCLOSURE                       R9 K17 [PROTO_4]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 SETTABLE                         R9 R7 R8
       39 GETTABLEKS                       R8 R3 K18 ["Equals"]
       41 DUPCLOSURE                       R9 K19 [PROTO_5]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 SETTABLE                         R9 R7 R8
       45 GETTABLEKS                       R8 R3 K20 ["Range"]
       47 DUPCLOSURE                       R9 K21 [PROTO_6]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 SETTABLE                         R9 R7 R8
       51 GETTABLEKS                       R8 R3 K22 ["All"]
       53 NEWCLOSURE                       R9 P7
       54 CAPTURE                          VAL R3
       55 CAPTURE                          REF R6
       56 SETTABLE                         R9 R7 R8
       57 GETTABLEKS                       R8 R3 K23 ["Any"]
       59 NEWCLOSURE                       R9 P8
       60 CAPTURE                          VAL R3
       61 CAPTURE                          REF R6
       62 SETTABLE                         R9 R7 R8
       63 GETTABLEKS                       R8 R3 K24 ["Not"]
       65 NEWCLOSURE                       R9 P9
       66 CAPTURE                          VAL R3
       67 CAPTURE                          REF R6
       68 SETTABLE                         R9 R7 R8
       69 GETTABLEKS                       R8 R3 K25 ["Branch"]
       71 NEWCLOSURE                       R9 P10
       72 CAPTURE                          VAL R3
       73 CAPTURE                          REF R6
       74 SETTABLE                         R9 R7 R8
       75 DUPCLOSURE                       R6 K26 [PROTO_11]
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R6 R0 K27 ["evaluateValidation"]
       79 NEWCLOSURE                       R8 P12
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R8
       82 CAPTURE                          REF R6
       83 SETTABLEKS                       R8 R0 K28 ["collectFailures"]
       85 LOADNIL                          R9
       86 NEWCLOSURE                       R10 P13
       87 CAPTURE                          REF R9
       88 NEWCLOSURE                       R9 P14
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          REF R9
       92 SETTABLEKS                       R9 R0 K29 ["getFieldRange"]
       94 DUPCLOSURE                       R11 K30 [PROTO_15]
       95 CAPTURE                          VAL R3
       96 DUPCLOSURE                       R12 K31 [PROTO_16]
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R13 K32 [PROTO_17]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R11
      103 SETTABLEKS                       R13 R0 K33 ["summarizeFailures"]
      105 CLOSEUPVALS                      R6
      106 RETURN                           R0 1
