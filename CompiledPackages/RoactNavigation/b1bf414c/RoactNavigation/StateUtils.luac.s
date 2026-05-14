PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["key must be a string"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETIMPORT                        R2 K9 [ipairs]
       32 GETTABLEKS                       R3 R0 K10 ["routes"]
       34 CALL                             R2 1 3
       35 FORGPREP_INEXT                   R2
       36 GETTABLEKS                       R7 R6 K11 ["key"]
       38 JUMPIFNOTEQ                      R7 R1 ; [+2]
       40 RETURN                           R6 1
       41 FORGLOOP                         R2 2 [inext] ; [-6]
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["number"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["index must be a number"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 LOADN                            R4 0
       31 JUMPIFLE                         R4 R1 ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       37 LOADK                            R4 K8 ["index must be non-negative"]
       38 GETIMPORT                        R2 K5 [assert]
       40 CALL                             R2 2 0
       41 GETTABLEKS                       R3 R0 K9 ["routes"]
       43 GETTABLE                         R2 R3 R1
       44 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["state must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["index"]
       17 LOADN                            R2 0
       18 JUMPIFNOTLE                      R1 R2 ; [+3]
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETTABLEKS                       R3 R0 K7 ["routes"]
       24 GETTABLE                         R2 R3 R1
       25 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["key must be a string"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETIMPORT                        R2 K9 [ipairs]
       32 GETTABLEKS                       R3 R0 K10 ["routes"]
       34 CALL                             R2 1 3
       35 FORGPREP_INEXT                   R2
       36 GETTABLEKS                       R7 R6 K11 ["key"]
       38 JUMPIFNOTEQ                      R7 R1 ; [+2]
       40 RETURN                           R5 1
       41 FORGLOOP                         R2 2 [inext] ; [-6]
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["key must be a string"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETIMPORT                        R2 K9 [ipairs]
       32 GETTABLEKS                       R3 R0 K10 ["routes"]
       34 CALL                             R2 1 3
       35 FORGPREP_INEXT                   R2
       36 GETTABLEKS                       R7 R6 K11 ["key"]
       38 JUMPIFNOTEQ                      R7 R1 ; [+3]
       40 LOADB                            R7 1
       41 RETURN                           R7 1
       42 FORGLOOP                         R2 2 [inext] ; [-7]
       44 LOADB                            R2 0
       45 RETURN                           R2 1

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["route must be a table"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K7 ["indexOf"]
       33 MOVE                             R5 R0
       34 GETTABLEKS                       R6 R1 K8 ["key"]
       36 CALL                             R4 2 1
       37 JUMPIFEQKNIL                     R4 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 GETIMPORT                        R4 K11 [string.format]
       43 LOADK                            R5 K12 ["route with key '%s' already exists"]
       44 GETTABLEKS                       R6 R1 K8 ["key"]
       46 CALL                             R4 2 -1
       47 FASTCALL                         ASSERT ; [+2]
       48 GETIMPORT                        R2 K5 [assert]
       50 CALL                             R2 -1 0
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R2 R2 K13 ["List"]
       54 GETTABLEKS                       R2 R2 K14 ["join"]
       56 GETTABLEKS                       R3 R0 K15 ["routes"]
       58 NEWTABLE                         R4 0 1
       60 MOVE                             R5 R1
       61 SETLIST                          R4 R5 1 [1]
       63 CALL                             R2 2 1
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R3 R3 K16 ["Dictionary"]
       67 GETTABLEKS                       R3 R3 K14 ["join"]
       69 MOVE                             R4 R0
       70 DUPTABLE                         R5 K18 [{"index", "routes"}]
       71 LENGTH                           R6 R2
       72 SETTABLEKS                       R6 R5 K17 ["index"]
       74 SETTABLEKS                       R2 R5 K15 ["routes"]
       76 CALL                             R3 2 -1
       77 RETURN                           R3 -1

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["state must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R2 R0 K6 ["routes"]
       17 LENGTH                           R1 R2
       18 JUMPIFNOTEQKN                    R1 K7 [0] ; [+2]
       20 RETURN                           R0 1
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K8 ["List"]
       24 GETTABLEKS                       R1 R1 K9 ["removeIndex"]
       26 GETTABLEKS                       R2 R0 K6 ["routes"]
       28 GETTABLEKS                       R4 R0 K6 ["routes"]
       30 LENGTH                           R3 R4
       31 CALL                             R1 2 1
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K10 ["Dictionary"]
       35 GETTABLEKS                       R2 R2 K11 ["join"]
       37 MOVE                             R3 R0
       38 DUPTABLE                         R4 K13 [{"index", "routes"}]
       39 LENGTH                           R5 R1
       40 SETTABLEKS                       R5 R4 K12 ["index"]
       42 SETTABLEKS                       R1 R4 K6 ["routes"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["number"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["index must be a number"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R0 K8 ["index"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+2]
       34 RETURN                           R0 1
       35 GETTABLEKS                       R5 R0 K9 ["routes"]
       37 GETTABLE                         R4 R5 R1
       38 JUMPIFNOTEQKNIL                  R4 ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 GETIMPORT                        R4 K12 [string.format]
       44 LOADK                            R5 K13 ["cannot jump to out-of-range index '%d'"]
       45 MOVE                             R6 R1
       46 CALL                             R4 2 -1
       47 FASTCALL                         ASSERT ; [+2]
       48 GETIMPORT                        R2 K5 [assert]
       50 CALL                             R2 -1 0
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K14 ["Dictionary"]
       54 GETTABLEKS                       R2 R2 K15 ["join"]
       56 MOVE                             R3 R0
       57 DUPTABLE                         R4 K16 [{"index"}]
       58 SETTABLEKS                       R1 R4 K8 ["index"]
       60 CALL                             R2 2 -1
       61 RETURN                           R2 -1

PROTO_8:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["state must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["key must be a string"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K8 ["indexOf"]
       33 MOVE                             R3 R0
       34 MOVE                             R4 R1
       35 CALL                             R2 2 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K9 ["jumpToIndex"]
       39 MOVE                             R4 R0
       40 MOVE                             R5 R2
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

PROTO_9:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["state must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R2 R0 K7 ["index"]
       17 SUBK                             R1 R2 K6 [1]
       18 GETTABLEKS                       R3 R0 K8 ["routes"]
       20 GETTABLE                         R2 R3 R1
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K9 ["jumpToIndex"]
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_10:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["state must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R2 R0 K7 ["index"]
       17 ADDK                             R1 R2 K6 [1]
       18 GETTABLEKS                       R3 R0 K8 ["routes"]
       20 GETTABLE                         R2 R3 R1
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K9 ["jumpToIndex"]
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_11:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["state must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["string"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       26 LOADK                            R5 K7 ["key must be a string"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [type]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       41 LOADK                            R5 K8 ["route must be a table"]
       42 GETIMPORT                        R3 K5 [assert]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K9 ["indexOf"]
       48 MOVE                             R4 R0
       49 MOVE                             R5 R1
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K10 ["replaceAtIndex"]
       54 MOVE                             R5 R0
       55 MOVE                             R6 R3
       56 MOVE                             R7 R2
       57 CALL                             R4 3 1
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K11 ["Dictionary"]
       61 GETTABLEKS                       R5 R5 K12 ["join"]
       63 MOVE                             R6 R4
       64 DUPTABLE                         R7 K14 [{"routes"}]
       65 NEWTABLE                         R8 0 1
       67 GETTABLEKS                       R10 R4 K13 ["routes"]
       69 LOADN                            R11 1
       70 FASTCALL3                        TABLE_UNPACK R10 R11 R3
       72 MOVE                             R12 R3
       73 GETIMPORT                        R9 K16 [unpack]
       75 CALL                             R9 3 -1
       76 SETLIST                          R8 R9 -1 [1]
       78 SETTABLEKS                       R8 R7 K13 ["routes"]
       80 CALL                             R5 2 -1
       81 RETURN                           R5 -1

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [type]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["table"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       11 LOADK                            R6 K3 ["state must be a table"]
       12 GETIMPORT                        R4 K5 [assert]
       14 CALL                             R4 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K1 [type]
       19 CALL                             R6 1 1
       20 JUMPIFEQKS                       R6 K6 ["string"] ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       26 LOADK                            R6 K7 ["key must be a string"]
       27 GETIMPORT                        R4 K5 [assert]
       29 CALL                             R4 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R7 R2
       32 GETIMPORT                        R6 K1 [type]
       34 CALL                             R6 1 1
       35 JUMPIFEQKS                       R6 K2 ["table"] ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       41 LOADK                            R6 K8 ["route must be a table"]
       42 GETIMPORT                        R4 K5 [assert]
       44 CALL                             R4 2 0
       45 LOADB                            R5 1
       46 JUMPIFEQKNIL                     R3 ; [+10]
       48 FASTCALL1                        TYPE R3 ; [+3]
       49 MOVE                             R7 R3
       50 GETIMPORT                        R6 K1 [type]
       52 CALL                             R6 1 1
       53 JUMPIFEQKS                       R6 K9 ["boolean"] ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       59 LOADK                            R6 K10 ["preserveIndex must be nil or a boolean"]
       60 GETIMPORT                        R4 K5 [assert]
       62 CALL                             R4 2 0
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K11 ["indexOf"]
       66 MOVE                             R5 R0
       67 MOVE                             R6 R1
       68 CALL                             R4 2 1
       69 JUMPIFNOT                        R3 ; [+3]
       70 GETTABLEKS                       R5 R0 K12 ["index"]
       72 JUMPIF                           R5 ; [+1]
       73 MOVE                             R5 R4
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K13 ["replaceAtIndex"]
       77 MOVE                             R7 R0
       78 MOVE                             R8 R4
       79 MOVE                             R9 R2
       80 CALL                             R6 3 1
       81 SETTABLEKS                       R5 R6 K12 ["index"]
       83 RETURN                           R6 1

PROTO_13:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["state must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       26 LOADK                            R5 K7 ["index must be a number"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [type]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       41 LOADK                            R5 K8 ["route must be a table"]
       42 GETIMPORT                        R3 K5 [assert]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R6 R0 K9 ["routes"]
       47 GETTABLE                         R5 R6 R1
       48 JUMPIFNOTEQKNIL                  R5 ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 GETIMPORT                        R5 K12 [string.format]
       54 LOADK                            R6 K13 ["index '%d' does not exist in route '%s'"]
       55 MOVE                             R7 R1
       56 GETTABLEKS                       R8 R2 K14 ["key"]
       58 CALL                             R5 3 -1
       59 FASTCALL                         ASSERT ; [+2]
       60 GETIMPORT                        R3 K5 [assert]
       62 CALL                             R3 -1 0
       63 GETTABLEKS                       R4 R0 K9 ["routes"]
       65 GETTABLE                         R3 R4 R1
       66 JUMPIFNOTEQ                      R3 R2 ; [+6]
       68 GETTABLEKS                       R3 R0 K15 ["index"]
       70 JUMPIFNOTEQ                      R1 R3 ; [+2]
       72 RETURN                           R0 1
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K16 ["List"]
       76 GETTABLEKS                       R3 R3 K17 ["join"]
       78 GETTABLEKS                       R4 R0 K9 ["routes"]
       80 CALL                             R3 1 1
       81 SETTABLE                         R2 R3 R1
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K18 ["Dictionary"]
       85 GETTABLEKS                       R4 R4 K17 ["join"]
       87 MOVE                             R5 R0
       88 DUPTABLE                         R6 K19 [{"index", "routes"}]
       89 SETTABLEKS                       R1 R6 K15 ["index"]
       91 SETTABLEKS                       R3 R6 K9 ["routes"]
       93 CALL                             R4 2 -1
       94 RETURN                           R4 -1

PROTO_14:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["state must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 LOADB                            R4 0
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K1 [type]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+7]
       23 LENGTH                           R5 R1
       24 LOADN                            R6 0
       25 JUMPIFLT                         R6 R5 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       31 LOADK                            R5 K6 ["routes must be a list with at least one element"]
       32 GETIMPORT                        R3 K5 [assert]
       34 CALL                             R3 2 0
       35 LOADB                            R4 1
       36 JUMPIFEQKNIL                     R2 ; [+10]
       38 FASTCALL1                        TYPE R2 ; [+3]
       39 MOVE                             R6 R2
       40 GETIMPORT                        R5 K1 [type]
       42 CALL                             R5 1 1
       43 JUMPIFEQKS                       R5 K7 ["number"] ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       49 LOADK                            R5 K8 ["index must be a number or nil"]
       50 GETIMPORT                        R3 K5 [assert]
       52 CALL                             R3 2 0
       53 JUMPIF                           R2 ; [+2]
       54 LENGTH                           R3 R1
       55 JUMPIF                           R3 ; [+1]
       56 MOVE                             R3 R2
       57 GETTABLEKS                       R5 R0 K9 ["routes"]
       59 LENGTH                           R4 R5
       60 LENGTH                           R5 R1
       61 JUMPIFNOTEQ                      R4 R5 ; [+21]
       63 GETTABLEKS                       R4 R0 K10 ["index"]
       65 JUMPIFNOTEQ                      R4 R3 ; [+17]
       67 LOADB                            R4 1
       68 LOADN                            R7 1
       69 LENGTH                           R5 R1
       70 LOADN                            R6 1
       71 FORNPREP                         R5
       72 GETTABLEKS                       R9 R0 K9 ["routes"]
       74 GETTABLE                         R8 R9 R7
       75 GETTABLE                         R9 R1 R7
       76 JUMPIFEQ                         R8 R9 ; [+3]
       78 LOADB                            R4 0
       79 JUMP                             ; [+1]
       80 FORNLOOP                         R5
       81 JUMPIFNOT                        R4 ; [+1]
       82 RETURN                           R0 1
       83 GETTABLE                         R6 R1 R3
       84 JUMPIFNOTEQKNIL                  R6 ; [+2]
       86 LOADB                            R5 0 +1
       87 LOADB                            R5 1
       88 GETIMPORT                        R6 K13 [string.format]
       90 LOADK                            R7 K14 ["cannot reset index '%d' that does not exist"]
       91 MOVE                             R8 R3
       92 CALL                             R6 2 -1
       93 FASTCALL                         ASSERT ; [+2]
       94 GETIMPORT                        R4 K5 [assert]
       96 CALL                             R4 -1 0
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K15 ["Dictionary"]
      100 GETTABLEKS                       R4 R4 K16 ["join"]
      102 MOVE                             R5 R0
      103 DUPTABLE                         R6 K17 [{"index", "routes"}]
      104 SETTABLEKS                       R3 R6 K10 ["index"]
      106 SETTABLEKS                       R1 R6 K9 ["routes"]
      108 CALL                             R4 2 -1
      109 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       11 CALL                             R0 1 1
       12 NEWTABLE                         R1 16 0
       14 SETTABLEKS                       R1 R1 K6 ["__index"]
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 SETTABLEKS                       R2 R1 K8 ["get"]
       19 DUPCLOSURE                       R2 K9 [PROTO_1]
       20 SETTABLEKS                       R2 R1 K10 ["getAtIndex"]
       22 DUPCLOSURE                       R2 K11 [PROTO_2]
       23 SETTABLEKS                       R2 R1 K12 ["getActiveRoute"]
       25 DUPCLOSURE                       R2 K13 [PROTO_3]
       26 SETTABLEKS                       R2 R1 K14 ["indexOf"]
       28 DUPCLOSURE                       R2 K15 [PROTO_4]
       29 SETTABLEKS                       R2 R1 K16 ["has"]
       31 DUPCLOSURE                       R2 K17 [PROTO_5]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R1 K18 ["push"]
       36 DUPCLOSURE                       R2 K19 [PROTO_6]
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R1 K20 ["pop"]
       40 DUPCLOSURE                       R2 K21 [PROTO_7]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R1 K22 ["jumpToIndex"]
       44 DUPCLOSURE                       R2 K23 [PROTO_8]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R2 R1 K24 ["jumpTo"]
       48 DUPCLOSURE                       R2 K25 [PROTO_9]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R2 R1 K26 ["back"]
       52 DUPCLOSURE                       R2 K27 [PROTO_10]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R2 R1 K28 ["forward"]
       56 DUPCLOSURE                       R2 K29 [PROTO_11]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R2 R1 K30 ["replaceAndPrune"]
       61 DUPCLOSURE                       R2 K31 [PROTO_12]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R2 R1 K32 ["replaceAt"]
       65 DUPCLOSURE                       R2 K33 [PROTO_13]
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R2 R1 K34 ["replaceAtIndex"]
       69 DUPCLOSURE                       R2 K35 [PROTO_14]
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R2 R1 K36 ["reset"]
       73 RETURN                           R1 1
