PROTO_0:
        0 DUPTABLE                         R4 K4 [{"category", "severity", "message", "path"}]
        1 SETTABLEKS                       R0 R4 K0 ["category"]
        3 ORK                              R5 R3 K5 ["error"]
        4 SETTABLEKS                       R5 R4 K1 ["severity"]
        6 SETTABLEKS                       R1 R4 K2 ["message"]
        8 SETTABLEKS                       R2 R4 K3 ["path"]
       10 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["diagnostics"]}]
        1 NEWTABLE                         R2 0 1
        3 MOVE                             R3 R0
        4 SETLIST                          R2 R3 1 [1]
        6 SETTABLEKS                       R2 R1 K2 ["diagnostics"]
        8 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 SETTABLE                         R6 R1 R5
        7 FORGLOOP                         R2 2 ; [-2]
        9 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+4]
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 RETURN                           R3 2
       10 GETTABLE                         R3 R1 R0
       11 JUMPIFNOT                        R3 ; [+5]
       12 LOADNIL                          R3
       13 DUPTABLE                         R4 K10 [{["category"] = "cyclic-definition", ["severity"] = "error", ["message"] = "Cycle in contract-owned container", ["path"]}]
       14 SETTABLEKS                       R2 R4 K9 ["path"]
       16 RETURN                           R3 2
       17 LOADB                            R3 1
       18 SETTABLE                         R3 R1 R0
       19 NEWTABLE                         R3 0 0
       21 MOVE                             R4 R0
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETUPVAL                         R9 0
       26 MOVE                             R10 R8
       27 MOVE                             R11 R1
       28 MOVE                             R13 R2
       29 LOADK                            R14 K11 ["."]
       30 FASTCALL1                        TOSTRING R7 ; [+3]
       31 MOVE                             R16 R7
       32 GETIMPORT                        R15 K13 [tostring]
       34 CALL                             R15 1 1
       35 CONCAT                           R12 R13 R15
       36 CALL                             R9 3 2
       37 JUMPIFNOT                        R10 ; [+5]
       38 LOADNIL                          R11
       39 SETTABLE                         R11 R1 R0
       40 LOADNIL                          R11
       41 MOVE                             R12 R10
       42 RETURN                           R11 2
       43 SETTABLE                         R9 R3 R7
       44 FORGLOOP                         R4 2 ; [-20]
       46 LOADNIL                          R4
       47 SETTABLE                         R4 R1 R0
       48 MOVE                             R4 R3
       49 LOADNIL                          R5
       50 RETURN                           R4 2

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+4]
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 RETURN                           R3 2
       10 GETTABLE                         R3 R1 R0
       11 JUMPIFNOT                        R3 ; [+5]
       12 LOADNIL                          R3
       13 DUPTABLE                         R4 K10 [{["category"] = "cyclic-definition", ["severity"] = "error", ["message"] = "Cycle in contract-owned stories container", ["path"]}]
       14 SETTABLEKS                       R2 R4 K9 ["path"]
       16 RETURN                           R3 2
       17 LOADB                            R3 1
       18 SETTABLE                         R3 R1 R0
       19 NEWTABLE                         R3 0 0
       21 MOVE                             R4 R0
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 JUMPIFNOTEQ                      R8 R0 ; [+8]
       27 LOADNIL                          R9
       28 SETTABLE                         R9 R1 R0
       29 LOADNIL                          R9
       30 DUPTABLE                         R10 K10 [{["category"] = "cyclic-definition", ["severity"] = "error", ["message"] = "Cycle in contract-owned stories container", ["path"]}]
       31 SETTABLEKS                       R2 R10 K9 ["path"]
       33 RETURN                           R9 2
       34 FASTCALL1                        TYPE R8 ; [+3]
       35 MOVE                             R10 R8
       36 GETIMPORT                        R9 K1 [type]
       38 CALL                             R9 1 1
       39 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+33]
       41 GETTABLEKS                       R9 R8 K11 ["story"]
       43 JUMPIFNOTEQKNIL                  R9 ; [+9]
       45 GETTABLEKS                       R9 R8 K12 ["name"]
       47 JUMPIFNOTEQKNIL                  R9 ; [+5]
       49 GETTABLEKS                       R9 R8 K13 ["summary"]
       51 JUMPIFEQKNIL                     R9 ; [+21]
       53 GETUPVAL                         R9 0
       54 MOVE                             R10 R8
       55 MOVE                             R11 R1
       56 MOVE                             R13 R2
       57 LOADK                            R14 K14 ["."]
       58 FASTCALL1                        TOSTRING R7 ; [+3]
       59 MOVE                             R16 R7
       60 GETIMPORT                        R15 K16 [tostring]
       62 CALL                             R15 1 1
       63 CONCAT                           R12 R13 R15
       64 CALL                             R9 3 2
       65 JUMPIFNOT                        R10 ; [+5]
       66 LOADNIL                          R11
       67 SETTABLE                         R11 R1 R0
       68 LOADNIL                          R11
       69 MOVE                             R12 R10
       70 RETURN                           R11 2
       71 SETTABLE                         R9 R3 R7
       72 JUMP                             ; [+1]
       73 SETTABLE                         R8 R3 R7
       74 FORGLOOP                         R4 2 ; [-50]
       76 LOADNIL                          R4
       77 SETTABLE                         R4 R1 R0
       78 MOVE                             R4 R3
       79 LOADNIL                          R5
       80 RETURN                           R4 2

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+6]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K10 [{["category"] = "invalid-story-definition", ["severity"] = "error", ["message"] = "Story definition must be a table", ["path"]}]
        9 SETTABLEKS                       R1 R3 K9 ["path"]
       11 RETURN                           R2 2
       12 NEWTABLE                         R2 1 0
       14 LOADB                            R3 1
       15 SETTABLE                         R3 R2 R0
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R0
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 JUMPIFEQKS                       R7 K11 ["controls"] ; [+3]
       24 JUMPIFNOTEQKS                    R7 K12 ["props"] ; [+15]
       26 GETUPVAL                         R9 0
       27 MOVE                             R10 R8
       28 MOVE                             R11 R2
       29 MOVE                             R13 R1
       30 LOADK                            R14 K13 ["."]
       31 MOVE                             R15 R7
       32 CONCAT                           R12 R13 R15
       33 CALL                             R9 3 2
       34 JUMPIFNOT                        R10 ; [+3]
       35 LOADNIL                          R11
       36 MOVE                             R12 R10
       37 RETURN                           R11 2
       38 SETTABLE                         R9 R3 R7
       39 JUMP                             ; [+16]
       40 JUMPIFNOTEQKS                    R7 K14 ["stories"] ; [+14]
       42 GETUPVAL                         R9 1
       43 MOVE                             R10 R8
       44 MOVE                             R11 R2
       45 MOVE                             R13 R1
       46 LOADK                            R14 K15 [".stories"]
       47 CONCAT                           R12 R13 R14
       48 CALL                             R9 3 2
       49 JUMPIFNOT                        R10 ; [+3]
       50 LOADNIL                          R11
       51 MOVE                             R12 R10
       52 RETURN                           R11 2
       53 SETTABLE                         R9 R3 R7
       54 JUMP                             ; [+1]
       55 SETTABLE                         R8 R3 R7
       56 FORGLOOP                         R4 2 ; [-35]
       58 MOVE                             R4 R3
       59 LOADNIL                          R5
       60 RETURN                           R4 2

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLE                         R7 R0 R6
       14 JUMPIFEQKNIL                     R7 ; [+15]
       16 LOADK                            R9 K3 ["Lifecycle field '"]
       17 MOVE                             R10 R6
       18 LOADK                            R11 K4 ["' is not supported by Story Contract v1"]
       19 CONCAT                           R8 R9 R11
       20 MOVE                             R10 R1
       21 LOADK                            R11 K5 ["."]
       22 MOVE                             R12 R6
       23 CONCAT                           R9 R10 R12
       24 DUPTABLE                         R7 K12 [{["category"] = "unsupported-legacy-lifecycle", ["severity"] = "error", ["message"], ["path"]}]
       25 SETTABLEKS                       R8 R7 K10 ["message"]
       27 SETTABLEKS                       R9 R7 K11 ["path"]
       29 RETURN                           R7 1
       30 FORGLOOP                         R2 2 ; [-18]
       32 LOADNIL                          R2
       33 RETURN                           R2 1

PROTO_7:
        0 ORK                              R1 R0 K0 ["Story"]
        1 FASTCALL2K                       STRING_SUB R1 K1 ; [+5]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 [-6]
        5 GETIMPORT                        R2 K4 [string.sub]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKS                    R2 K5 [".story"] ; [+10]
       10 LOADN                            R4 1
       11 LOADN                            R5 -7
       12 FASTCALL3                        STRING_SUB R1 R4 R5
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K4 [string.sub]
       17 CALL                             R2 3 1
       18 RETURN                           R2 1
       19 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R2 K5 [{[1], ["summary"] = "", ["controls"], ["props"]}]
        1 ORK                              R4 R1 K6 ["Story"]
        2 FASTCALL2K                       STRING_SUB R4 K7 ; [+5]
        4 MOVE                             R6 R4
        5 LOADK                            R7 K7 [-6]
        6 GETIMPORT                        R5 K10 [string.sub]
        8 CALL                             R5 2 1
        9 JUMPIFNOTEQKS                    R5 K11 [".story"] ; [+11]
       11 LOADN                            R7 1
       12 LOADN                            R8 -7
       13 FASTCALL3                        STRING_SUB R4 R7 R8
       15 MOVE                             R6 R4
       16 GETIMPORT                        R5 K10 [string.sub]
       18 CALL                             R5 3 1
       19 MOVE                             R3 R5
       20 JUMP                             ; [+1]
       21 MOVE                             R3 R4
       22 SETTABLEKS                       R3 R2 K0 ["name"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K3 ["controls"]
       28 NEWTABLE                         R3 0 0
       30 SETTABLEKS                       R3 R2 K4 ["props"]
       32 MOVE                             R3 R0
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 SETTABLE                         R7 R2 R6
       37 FORGLOOP                         R3 2 ; [-2]
       39 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADK                            R4 K0 ["storybook.definition"]
        3 CALL                             R2 2 2
        4 JUMPIFNOT                        R3 ; [+3]
        5 LOADNIL                          R4
        6 MOVE                             R5 R3
        7 RETURN                           R4 2
        8 FASTCALL1                        ASSERT R2 ; [+3]
        9 MOVE                             R5 R2
       10 GETIMPORT                        R4 K2 [assert]
       12 CALL                             R4 1 0
       13 NEWTABLE                         R5 0 0
       15 MOVE                             R6 R0
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 SETTABLE                         R10 R5 R9
       20 FORGLOOP                         R6 2 ; [-2]
       22 MOVE                             R4 R5
       23 MOVE                             R5 R2
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 SETTABLE                         R9 R4 R8
       28 FORGLOOP                         R5 2 ; [-2]
       30 MOVE                             R5 R4
       31 LOADNIL                          R6
       32 RETURN                           R5 2

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+21]
        1 GETTABLEKS                       R3 R1 K0 ["isElement"]
        3 FASTCALL1                        TYPE R3 ; [+2]
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+14]
        9 GETIMPORT                        R2 K5 [pcall]
       11 GETTABLEKS                       R3 R1 K0 ["isElement"]
       13 MOVE                             R4 R0
       14 CALL                             R2 2 2
       15 MOVE                             R4 R2
       16 JUMPIFNOT                        R4 ; [+4]
       17 JUMPIFEQKB                       R3 TRUE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1
       22 LOADB                            R2 0
       23 FASTCALL1                        TYPE R0 ; [+3]
       24 MOVE                             R4 R0
       25 GETIMPORT                        R3 K2 [type]
       27 CALL                             R3 1 1
       28 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+12]
       30 LOADB                            R2 0
       31 GETTABLEKS                       R3 R0 K7 ["$$typeof"]
       33 JUMPIFEQKNIL                     R3 ; [+7]
       35 GETTABLEKS                       R3 R0 K1 ["type"]
       37 JUMPIFNOTEQKNIL                  R3 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+20]
        1 GETTABLEKS                       R3 R1 K0 ["isValidElementType"]
        3 FASTCALL1                        TYPE R3 ; [+2]
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+13]
        9 GETIMPORT                        R2 K5 [pcall]
       11 GETTABLEKS                       R3 R1 K0 ["isValidElementType"]
       13 MOVE                             R4 R0
       14 CALL                             R2 2 2
       15 JUMPIFNOT                        R2 ; [+5]
       16 JUMPIFEQKB                       R3 TRUE ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 LOADB                            R2 1
       22 FASTCALL1                        TYPE R0 ; [+3]
       23 MOVE                             R4 R0
       24 GETIMPORT                        R3 K2 [type]
       26 CALL                             R3 1 1
       27 JUMPIFEQKS                       R3 K3 ["function"] ; [+10]
       29 FASTCALL1                        TYPE R0 ; [+3]
       30 MOVE                             R4 R0
       31 GETIMPORT                        R3 K2 [type]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K6 ["string"] ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+21]
        1 GETTABLEKS                       R5 R1 K0 ["isElement"]
        3 FASTCALL1                        TYPE R5 ; [+2]
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+14]
        9 GETIMPORT                        R4 K5 [pcall]
       11 GETTABLEKS                       R5 R1 K0 ["isElement"]
       13 MOVE                             R6 R0
       14 CALL                             R4 2 2
       15 MOVE                             R3 R4
       16 JUMPIFNOT                        R3 ; [+24]
       17 JUMPIFEQKB                       R5 TRUE ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMP                             ; [+19]
       22 LOADB                            R3 0
       23 FASTCALL1                        TYPE R0 ; [+3]
       24 MOVE                             R5 R0
       25 GETIMPORT                        R4 K2 [type]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+12]
       30 LOADB                            R3 0
       31 GETTABLEKS                       R4 R0 K7 ["$$typeof"]
       33 JUMPIFEQKNIL                     R4 ; [+7]
       35 GETTABLEKS                       R4 R0 K1 ["type"]
       37 JUMPIFNOTEQKNIL                  R4 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 JUMPIFNOT                        R3 ; [+5]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          VAL R0
       44 LOADK                            R4 K8 ["elementHost"]
       45 LOADNIL                          R5
       46 RETURN                           R3 3
       47 JUMPIFNOT                        R1 ; [+20]
       48 GETTABLEKS                       R5 R1 K9 ["isValidElementType"]
       50 FASTCALL1                        TYPE R5 ; [+2]
       51 GETIMPORT                        R4 K2 [type]
       53 CALL                             R4 1 1
       54 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+13]
       56 GETIMPORT                        R4 K5 [pcall]
       58 GETTABLEKS                       R5 R1 K9 ["isValidElementType"]
       60 MOVE                             R6 R0
       61 CALL                             R4 2 2
       62 JUMPIFNOT                        R4 ; [+5]
       63 JUMPIFEQKB                       R5 TRUE ; [+2]
       65 LOADB                            R3 0 +1
       66 LOADB                            R3 1
       67 JUMP                             ; [+17]
       68 LOADB                            R3 1
       69 FASTCALL1                        TYPE R0 ; [+3]
       70 MOVE                             R5 R0
       71 GETIMPORT                        R4 K2 [type]
       73 CALL                             R4 1 1
       74 JUMPIFEQKS                       R4 K3 ["function"] ; [+10]
       76 FASTCALL1                        TYPE R0 ; [+3]
       77 MOVE                             R5 R0
       78 GETIMPORT                        R4 K2 [type]
       80 CALL                             R4 1 1
       81 JUMPIFEQKS                       R4 K10 ["string"] ; [+2]
       83 LOADB                            R3 0 +1
       84 LOADB                            R3 1
       85 JUMPIFNOT                        R3 ; [+23]
       86 FASTCALL1                        TYPE R0 ; [+3]
       87 MOVE                             R5 R0
       88 GETIMPORT                        R4 K2 [type]
       90 CALL                             R4 1 1
       91 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+3]
       93 LOADK                            R3 K3 ["function"]
       94 JUMP                             ; [+10]
       95 FASTCALL1                        TYPE R0 ; [+3]
       96 MOVE                             R5 R0
       97 GETIMPORT                        R4 K2 [type]
       99 CALL                             R4 1 1
      100 JUMPIFNOTEQKS                    R4 K10 ["string"] ; [+3]
      102 LOADK                            R3 K11 ["host"]
      103 JUMP                             ; [+1]
      104 LOADK                            R3 K12 ["component"]
      105 MOVE                             R4 R0
      106 MOVE                             R5 R3
      107 LOADNIL                          R6
      108 RETURN                           R4 3
      109 LOADNIL                          R3
      110 LOADNIL                          R4
      111 DUPTABLE                         R5 K20 [{["category"] = "unsupported-element-type", ["severity"] = "error", ["message"] = "Unsupported story element type", ["path"]}]
      112 SETTABLEKS                       R2 R5 K19 ["path"]
      114 RETURN                           R3 3

PROTO_14:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+32]
        7 GETTABLEKS                       R2 R0 K3 ["story"]
        9 JUMPIFEQKNIL                     R2 ; [+28]
       11 GETTABLEKS                       R2 R0 K3 ["story"]
       13 GETTABLEKS                       R5 R0 K4 ["name"]
       15 FASTCALL1                        TYPE R5 ; [+2]
       16 GETIMPORT                        R4 K1 [type]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+4]
       21 GETTABLEKS                       R3 R0 K4 ["name"]
       23 JUMP                             ; [+1]
       24 MOVE                             R3 R1
       25 GETTABLEKS                       R6 R0 K6 ["summary"]
       27 FASTCALL1                        TYPE R6 ; [+2]
       28 GETIMPORT                        R5 K1 [type]
       30 CALL                             R5 1 1
       31 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+4]
       33 GETTABLEKS                       R4 R0 K6 ["summary"]
       35 RETURN                           R2 3
       36 LOADK                            R4 K7 [""]
       37 RETURN                           R2 3
       38 MOVE                             R2 R0
       39 MOVE                             R3 R1
       40 LOADK                            R4 K7 [""]
       41 RETURN                           R2 3

PROTO_15:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 LOADNIL                          R1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 RETURN                           R1 3
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K1 [type]
       10 CALL                             R1 1 1
       11 JUMPIFEQKS                       R1 K2 ["table"] ; [+5]
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 DUPTABLE                         R3 K11 [{["category"] = "invalid-variant-table", ["severity"] = "error", ["message"] = "'stories' must be a table", ["path"] = "stories"}]
       16 RETURN                           R1 3
       17 NEWTABLE                         R1 0 0
       19 NEWTABLE                         R2 0 0
       21 MOVE                             R3 R0
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 FASTCALL1                        TYPE R6 ; [+3]
       26 MOVE                             R9 R6
       27 GETIMPORT                        R8 K1 [type]
       29 CALL                             R8 1 1
       30 JUMPIFNOTEQKS                    R8 K12 ["number"] ; [+15]
       32 MODK                             R8 R6 K13 [1]
       33 JUMPIFNOTEQKN                    R8 K14 [0] ; [+12]
       35 LOADN                            R8 1
       36 JUMPIFNOTLE                      R8 R6 ; [+9]
       38 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       40 MOVE                             R9 R1
       41 MOVE                             R10 R6
       42 GETIMPORT                        R8 K16 [table.insert]
       44 CALL                             R8 2 0
       45 JUMP                             ; [+19]
       46 FASTCALL1                        TYPE R6 ; [+3]
       47 MOVE                             R9 R6
       48 GETIMPORT                        R8 K1 [type]
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKS                    R8 K17 ["string"] ; [+9]
       53 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       55 MOVE                             R9 R2
       56 MOVE                             R10 R6
       57 GETIMPORT                        R8 K16 [table.insert]
       59 CALL                             R8 2 0
       60 JUMP                             ; [+4]
       61 LOADNIL                          R8
       62 LOADNIL                          R9
       63 DUPTABLE                         R10 K19 [{["category"] = "invalid-variant-table", ["severity"] = "error", ["message"] = "Unsupported stories key", ["path"] = "stories"}]
       64 RETURN                           R8 3
       65 FORGLOOP                         R3 1 ; [-41]
       67 LENGTH                           R3 R1
       68 LOADN                            R4 0
       69 JUMPIFNOTLT                      R4 R3 ; [+9]
       71 LENGTH                           R3 R2
       72 LOADN                            R4 0
       73 JUMPIFNOTLT                      R4 R3 ; [+5]
       75 LOADNIL                          R3
       76 LOADNIL                          R4
       77 DUPTABLE                         R5 K21 [{["category"] = "invalid-variant-table", ["severity"] = "error", ["message"] = "Mixed numeric and string stories keys", ["path"] = "stories"}]
       78 RETURN                           R3 3
       79 LENGTH                           R3 R1
       80 LOADN                            R4 0
       81 JUMPIFNOTLT                      R4 R3 ; [+21]
       83 GETIMPORT                        R3 K23 [table.sort]
       85 MOVE                             R4 R1
       86 CALL                             R3 1 0
       87 MOVE                             R3 R1
       88 LOADNIL                          R4
       89 LOADNIL                          R5
       90 FORGPREP                         R3
       91 JUMPIFEQ                         R7 R6 ; [+5]
       93 LOADNIL                          R8
       94 LOADNIL                          R9
       95 DUPTABLE                         R10 K25 [{["category"] = "invalid-variant-table", ["severity"] = "error", ["message"] = "Array stories must be contiguous", ["path"] = "stories"}]
       96 RETURN                           R8 3
       97 FORGLOOP                         R3 2 ; [-7]
       99 LOADK                            R3 K26 ["array"]
      100 MOVE                             R4 R1
      101 LOADNIL                          R5
      102 RETURN                           R3 3
      103 GETIMPORT                        R3 K23 [table.sort]
      105 MOVE                             R4 R2
      106 CALL                             R3 1 0
      107 LOADK                            R3 K27 ["keyed"]
      108 MOVE                             R4 R2
      109 LOADNIL                          R5
      110 RETURN                           R3 3

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["story"]
        4 JUMPIFEQKNIL                     R3 ; [+50]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K0 ["story"]
        9 MOVE                             R5 R1
       10 LOADK                            R6 K0 ["story"]
       11 CALL                             R3 3 3
       12 JUMPIFNOT                        R5 ; [+3]
       13 LOADNIL                          R6
       14 MOVE                             R7 R5
       15 RETURN                           R6 2
       16 DUPTABLE                         R8 K7 [{["id"] = "__primary", ["name"], ["summary"], ["component"], ["componentKind"]}]
       17 GETTABLEKS                       R11 R0 K3 ["name"]
       19 FASTCALL1                        TYPE R11 ; [+2]
       20 GETIMPORT                        R10 K9 [type]
       22 CALL                             R10 1 1
       23 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+4]
       25 GETTABLEKS                       R9 R0 K3 ["name"]
       27 JUMP                             ; [+1]
       28 LOADK                            R9 K11 ["Story"]
       29 SETTABLEKS                       R9 R8 K3 ["name"]
       31 GETTABLEKS                       R11 R0 K4 ["summary"]
       33 FASTCALL1                        TYPE R11 ; [+2]
       34 GETIMPORT                        R10 K9 [type]
       36 CALL                             R10 1 1
       37 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+4]
       39 GETTABLEKS                       R9 R0 K4 ["summary"]
       41 JUMP                             ; [+1]
       42 LOADK                            R9 K12 [""]
       43 SETTABLEKS                       R9 R8 K4 ["summary"]
       45 SETTABLEKS                       R3 R8 K5 ["component"]
       47 SETTABLEKS                       R4 R8 K6 ["componentKind"]
       49 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       51 MOVE                             R7 R2
       52 GETIMPORT                        R6 K15 [table.insert]
       54 CALL                             R6 2 0
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R4 R0 K16 ["stories"]
       58 CALL                             R3 1 3
       59 JUMPIFNOT                        R5 ; [+3]
       60 LOADNIL                          R6
       61 MOVE                             R7 R5
       62 RETURN                           R6 2
       63 JUMPIFNOT                        R3 ; [+84]
       64 JUMPIFNOT                        R4 ; [+83]
       65 MOVE                             R6 R4
       66 LOADNIL                          R7
       67 LOADNIL                          R8
       68 FORGPREP                         R6
       69 FASTCALL1                        TOSTRING R10 ; [+3]
       70 MOVE                             R12 R10
       71 GETIMPORT                        R11 K18 [tostring]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R16 R0 K16 ["stories"]
       76 GETTABLE                         R15 R16 R10
       77 FASTCALL1                        TYPE R15 ; [+3]
       78 MOVE                             R17 R15
       79 GETIMPORT                        R16 K9 [type]
       81 CALL                             R16 1 1
       82 JUMPIFNOTEQKS                    R16 K13 ["table"] ; [+32]
       84 GETTABLEKS                       R16 R15 K0 ["story"]
       86 JUMPIFEQKNIL                     R16 ; [+28]
       88 GETTABLEKS                       R12 R15 K0 ["story"]
       90 GETTABLEKS                       R17 R15 K3 ["name"]
       92 FASTCALL1                        TYPE R17 ; [+2]
       93 GETIMPORT                        R16 K9 [type]
       95 CALL                             R16 1 1
       96 JUMPIFNOTEQKS                    R16 K10 ["string"] ; [+4]
       98 GETTABLEKS                       R13 R15 K3 ["name"]
      100 JUMP                             ; [+1]
      101 MOVE                             R13 R11
      102 GETTABLEKS                       R17 R15 K4 ["summary"]
      104 FASTCALL1                        TYPE R17 ; [+2]
      105 GETIMPORT                        R16 K9 [type]
      107 CALL                             R16 1 1
      108 JUMPIFNOTEQKS                    R16 K10 ["string"] ; [+4]
      110 GETTABLEKS                       R14 R15 K4 ["summary"]
      112 JUMP                             ; [+5]
      113 LOADK                            R14 K12 [""]
      114 JUMP                             ; [+3]
      115 MOVE                             R12 R15
      116 MOVE                             R13 R11
      117 LOADK                            R14 K12 [""]
      118 GETUPVAL                         R15 0
      119 MOVE                             R16 R12
      120 MOVE                             R17 R1
      121 LOADK                            R19 K19 ["stories."]
      122 MOVE                             R20 R11
      123 CONCAT                           R18 R19 R20
      124 CALL                             R15 3 3
      125 JUMPIFNOT                        R17 ; [+3]
      126 LOADNIL                          R18
      127 MOVE                             R19 R17
      128 RETURN                           R18 2
      129 DUPTABLE                         R20 K20 [{"id", "name", "summary", "component", "componentKind"}]
      130 SETTABLEKS                       R11 R20 K1 ["id"]
      132 SETTABLEKS                       R13 R20 K3 ["name"]
      134 SETTABLEKS                       R14 R20 K4 ["summary"]
      136 SETTABLEKS                       R15 R20 K5 ["component"]
      138 SETTABLEKS                       R16 R20 K6 ["componentKind"]
      140 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
      142 MOVE                             R19 R2
      143 GETIMPORT                        R18 K15 [table.insert]
      145 CALL                             R18 2 0
      146 FORGLOOP                         R6 2 ; [-78]
      148 LENGTH                           R6 R2
      149 JUMPIFNOTEQKN                    R6 K21 [0] ; [+4]
      151 LOADNIL                          R6
      152 DUPTABLE                         R7 K30 [{["category"] = "invalid-story-definition", ["severity"] = "error", ["message"] = "Story definition must contain 'story', 'stories', or both", ["path"] = "definition"}]
      153 RETURN                           R6 2
      154 MOVE                             R6 R2
      155 LOADNIL                          R7
      156 RETURN                           R6 2

PROTO_17:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["roact"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+6]
       11 GETTABLEKS                       R3 R1 K4 ["reactRoblox"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+2]
       15 RETURN                           R0 1
       16 DUPTABLE                         R3 K7 [{"react", "reactRoblox", "declaredBy"}]
       17 GETTABLEKS                       R5 R1 K3 ["roact"]
       19 JUMPIFEQKNIL                     R5 ; [+4]
       21 GETTABLEKS                       R4 R1 K3 ["roact"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R4 R0 K5 ["react"]
       26 SETTABLEKS                       R4 R3 K5 ["react"]
       28 GETTABLEKS                       R5 R1 K4 ["reactRoblox"]
       30 JUMPIFEQKNIL                     R5 ; [+4]
       32 GETTABLEKS                       R4 R1 K4 ["reactRoblox"]
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R4 R0 K4 ["reactRoblox"]
       37 SETTABLEKS                       R4 R3 K4 ["reactRoblox"]
       39 SETTABLEKS                       R2 R3 K6 ["declaredBy"]
       41 RETURN                           R3 1

PROTO_18:
        0 GETTABLEKS                       R5 R0 K0 ["implicitHarness"]
        2 JUMPIF                           R5 ; [+2]
        3 NEWTABLE                         R5 0 0
        5 DUPTABLE                         R6 K5 [{["react"], ["reactRoblox"], ["declaredBy"] = "implicit"}]
        6 GETTABLEKS                       R7 R5 K6 ["roact"]
        8 SETTABLEKS                       R7 R6 K1 ["react"]
       10 GETTABLEKS                       R7 R5 K2 ["reactRoblox"]
       12 SETTABLEKS                       R7 R6 K2 ["reactRoblox"]
       14 GETUPVAL                         R7 0
       15 MOVE                             R8 R6
       16 GETTABLEKS                       R9 R0 K7 ["storybook"]
       18 LOADK                            R10 K8 ["harness"]
       19 CALL                             R7 3 1
       20 MOVE                             R6 R7
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R6
       23 MOVE                             R9 R1
       24 LOADK                            R10 K9 ["definition"]
       25 CALL                             R7 3 1
       26 MOVE                             R6 R7
       27 GETUPVAL                         R7 0
       28 MOVE                             R8 R6
       29 MOVE                             R9 R2
       30 LOADK                            R10 K10 ["storybookDefinition"]
       31 CALL                             R7 3 1
       32 MOVE                             R6 R7
       33 JUMPIFNOT                        R4 ; [+6]
       34 GETUPVAL                         R7 0
       35 MOVE                             R8 R6
       36 MOVE                             R9 R3
       37 LOADK                            R10 K11 ["mapDefinition"]
       38 CALL                             R7 3 1
       39 MOVE                             R6 R7
       40 GETTABLEKS                       R7 R6 K1 ["react"]
       42 JUMPIFNOTEQKNIL                  R7 ; [+4]
       44 LOADNIL                          R7
       45 DUPTABLE                         R8 K20 [{["category"] = "renderer-incompatible", ["severity"] = "error", ["message"] = "No React/Roact renderer was declared", ["path"] = "renderer"}]
       46 RETURN                           R7 2
       47 GETTABLEKS                       R7 R0 K21 ["isRendererCompatible"]
       49 JUMPIFNOT                        R7 ; [+14]
       50 GETTABLEKS                       R7 R0 K21 ["isRendererCompatible"]
       52 GETTABLEKS                       R8 R6 K1 ["react"]
       54 GETTABLEKS                       R9 R6 K2 ["reactRoblox"]
       56 CALL                             R7 2 2
       57 JUMPIF                           R7 ; [+6]
       58 LOADNIL                          R9
       59 ORK                              R11 R8 K22 ["Renderer pair is incompatible"]
       60 DUPTABLE                         R10 K23 [{["category"] = "renderer-incompatible", ["severity"] = "error", ["message"], ["path"] = "renderer"}]
       61 SETTABLEKS                       R11 R10 K16 ["message"]
       63 RETURN                           R9 2
       64 MOVE                             R7 R6
       65 LOADNIL                          R8
       66 RETURN                           R7 2

PROTO_19:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[_%-%s]+"]
        4 LOADK                            R4 K4 [" "]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQKS                    R1 K5 [""] ; [+3]
        8 LOADK                            R2 K6 ["Control"]
        9 RETURN                           R2 1
       10 GETIMPORT                        R5 K8 [string.upper]
       12 LOADN                            R8 1
       13 LOADN                            R9 1
       14 FASTCALL3                        STRING_SUB R1 R8 R9
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K10 [string.sub]
       19 CALL                             R6 3 1
       20 CALL                             R5 1 1
       21 MOVE                             R3 R5
       22 FASTCALL2K                       STRING_SUB R1 K11 ; [+5]
       24 MOVE                             R5 R1
       25 LOADK                            R6 K11 [2]
       26 GETIMPORT                        R4 K10 [string.sub]
       28 CALL                             R4 2 1
       29 CONCAT                           R2 R3 R4
       30 RETURN                           R2 1

PROTO_20:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+4]
        7 LENGTH                           R1 R0
        8 JUMPIFNOTEQKN                    R1 K3 [0] ; [+4]
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 RETURN                           R1 2
       13 GETTABLEN                        R2 R0 1
       14 FASTCALL1                        TYPE R2 ; [+2]
       15 GETIMPORT                        R1 K1 [type]
       17 CALL                             R1 1 1
       18 JUMPIFEQKS                       R1 K4 ["string"] ; [+8]
       20 JUMPIFEQKS                       R1 K5 ["number"] ; [+6]
       22 JUMPIFEQKS                       R1 K6 ["boolean"] ; [+4]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 RETURN                           R2 2
       27 LOADN                            R2 0
       28 MOVE                             R3 R0
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 FASTCALL1                        TYPE R6 ; [+3]
       33 MOVE                             R9 R6
       34 GETIMPORT                        R8 K1 [type]
       36 CALL                             R8 1 1
       37 JUMPIFNOTEQKS                    R8 K5 ["number"] ; [+14]
       39 MODK                             R8 R6 K7 [1]
       40 JUMPIFNOTEQKN                    R8 K3 [0] ; [+11]
       42 LOADN                            R8 1
       43 JUMPIFLT                         R6 R8 ; [+8]
       45 FASTCALL1                        TYPE R7 ; [+3]
       46 MOVE                             R9 R7
       47 GETIMPORT                        R8 K1 [type]
       49 CALL                             R8 1 1
       50 JUMPIFEQ                         R8 R1 ; [+4]
       52 LOADNIL                          R8
       53 LOADNIL                          R9
       54 RETURN                           R8 2
       55 ADDK                             R2 R2 K7 [1]
       56 FORGLOOP                         R3 2 ; [-25]
       58 LENGTH                           R3 R0
       59 JUMPIFEQ                         R2 R3 ; [+4]
       61 LOADNIL                          R3
       62 LOADNIL                          R4
       63 RETURN                           R3 2
       64 NEWTABLE                         R3 0 0
       66 MOVE                             R4 R0
       67 LOADNIL                          R5
       68 LOADNIL                          R6
       69 FORGPREP                         R4
       70 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       72 MOVE                             R10 R3
       73 MOVE                             R11 R8
       74 GETIMPORT                        R9 K9 [table.insert]
       76 CALL                             R9 2 0
       77 FORGLOOP                         R4 2 ; [-8]
       79 MOVE                             R4 R3
       80 MOVE                             R5 R1
       81 RETURN                           R4 2

PROTO_21:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["boolean"] ; [+5]
        7 JUMPIFEQKS                       R2 K3 ["number"] ; [+3]
        9 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+42]
       11 DUPTABLE                         R3 K11 [{["id"], ["label"], ["kind"], ["default"], ["editable"] = True}]
       12 SETTABLEKS                       R0 R3 K5 ["id"]
       14 GETIMPORT                        R5 K13 [string.gsub]
       16 MOVE                             R6 R0
       17 LOADK                            R7 K14 ["[_%-%s]+"]
       18 LOADK                            R8 K15 [" "]
       19 CALL                             R5 3 1
       20 JUMPIFNOTEQKS                    R5 K16 [""] ; [+3]
       22 LOADK                            R4 K17 ["Control"]
       23 JUMP                             ; [+20]
       24 GETIMPORT                        R8 K19 [string.upper]
       26 LOADN                            R11 1
       27 LOADN                            R12 1
       28 FASTCALL3                        STRING_SUB R5 R11 R12
       30 MOVE                             R10 R5
       31 GETIMPORT                        R9 K21 [string.sub]
       33 CALL                             R9 3 1
       34 CALL                             R8 1 1
       35 MOVE                             R6 R8
       36 FASTCALL2K                       STRING_SUB R5 K22 ; [+5]
       38 MOVE                             R8 R5
       39 LOADK                            R9 K22 [2]
       40 GETIMPORT                        R7 K21 [string.sub]
       42 CALL                             R7 2 1
       43 CONCAT                           R4 R6 R7
       44 SETTABLEKS                       R4 R3 K6 ["label"]
       46 SETTABLEKS                       R2 R3 K7 ["kind"]
       48 SETTABLEKS                       R1 R3 K8 ["default"]
       50 LOADNIL                          R4
       51 RETURN                           R3 2
       52 JUMPIFNOTEQKS                    R2 K23 ["Color3"] ; [+40]
       54 DUPTABLE                         R3 K25 [{["id"], ["label"], ["kind"] = "color3", ["default"], ["editable"] = True}]
       55 SETTABLEKS                       R0 R3 K5 ["id"]
       57 GETIMPORT                        R5 K13 [string.gsub]
       59 MOVE                             R6 R0
       60 LOADK                            R7 K14 ["[_%-%s]+"]
       61 LOADK                            R8 K15 [" "]
       62 CALL                             R5 3 1
       63 JUMPIFNOTEQKS                    R5 K16 [""] ; [+3]
       65 LOADK                            R4 K17 ["Control"]
       66 JUMP                             ; [+20]
       67 GETIMPORT                        R8 K19 [string.upper]
       69 LOADN                            R11 1
       70 LOADN                            R12 1
       71 FASTCALL3                        STRING_SUB R5 R11 R12
       73 MOVE                             R10 R5
       74 GETIMPORT                        R9 K21 [string.sub]
       76 CALL                             R9 3 1
       77 CALL                             R8 1 1
       78 MOVE                             R6 R8
       79 FASTCALL2K                       STRING_SUB R5 K22 ; [+5]
       81 MOVE                             R8 R5
       82 LOADK                            R9 K22 [2]
       83 GETIMPORT                        R7 K21 [string.sub]
       85 CALL                             R7 2 1
       86 CONCAT                           R4 R6 R7
       87 SETTABLEKS                       R4 R3 K6 ["label"]
       89 SETTABLEKS                       R1 R3 K8 ["default"]
       91 LOADNIL                          R4
       92 RETURN                           R3 2
       93 GETUPVAL                         R3 0
       94 MOVE                             R4 R1
       95 CALL                             R3 1 2
       96 JUMPIFNOT                        R3 ; [+80]
       97 JUMPIFNOT                        R4 ; [+79]
       98 NEWTABLE                         R5 0 0
      100 MOVE                             R6 R3
      101 LOADNIL                          R7
      102 LOADNIL                          R8
      103 FORGPREP                         R6
      104 DUPTABLE                         R13 K27 [{"id", "value", "label"}]
      105 LOADK                            R15 K28 ["__choice:"]
      106 MOVE                             R16 R0
      107 LOADK                            R17 K29 [":"]
      108 FASTCALL1                        TOSTRING R9 ; [+3]
      109 MOVE                             R19 R9
      110 GETIMPORT                        R18 K31 [tostring]
      112 CALL                             R18 1 1
      113 CONCAT                           R14 R15 R18
      114 SETTABLEKS                       R14 R13 K5 ["id"]
      116 SETTABLEKS                       R10 R13 K26 ["value"]
      118 FASTCALL1                        TOSTRING R10 ; [+3]
      119 MOVE                             R15 R10
      120 GETIMPORT                        R14 K31 [tostring]
      122 CALL                             R14 1 1
      123 SETTABLEKS                       R14 R13 K6 ["label"]
      125 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      127 MOVE                             R12 R5
      128 GETIMPORT                        R11 K34 [table.insert]
      130 CALL                             R11 2 0
      131 FORGLOOP                         R6 2 ; [-28]
      133 DUPTABLE                         R6 K38 [{["id"], ["label"], ["kind"] = "choose", ["default"], ["editable"] = True, ["valueType"], ["options"]}]
      134 SETTABLEKS                       R0 R6 K5 ["id"]
      136 GETIMPORT                        R8 K13 [string.gsub]
      138 MOVE                             R9 R0
      139 LOADK                            R10 K14 ["[_%-%s]+"]
      140 LOADK                            R11 K15 [" "]
      141 CALL                             R8 3 1
      142 JUMPIFNOTEQKS                    R8 K16 [""] ; [+3]
      144 LOADK                            R7 K17 ["Control"]
      145 JUMP                             ; [+20]
      146 GETIMPORT                        R11 K19 [string.upper]
      148 LOADN                            R14 1
      149 LOADN                            R15 1
      150 FASTCALL3                        STRING_SUB R8 R14 R15
      152 MOVE                             R13 R8
      153 GETIMPORT                        R12 K21 [string.sub]
      155 CALL                             R12 3 1
      156 CALL                             R11 1 1
      157 MOVE                             R9 R11
      158 FASTCALL2K                       STRING_SUB R8 K22 ; [+5]
      160 MOVE                             R11 R8
      161 LOADK                            R12 K22 [2]
      162 GETIMPORT                        R10 K21 [string.sub]
      164 CALL                             R10 2 1
      165 CONCAT                           R7 R9 R10
      166 SETTABLEKS                       R7 R6 K6 ["label"]
      168 GETTABLEN                        R7 R3 1
      169 SETTABLEKS                       R7 R6 K8 ["default"]
      171 SETTABLEKS                       R4 R6 K36 ["valueType"]
      173 SETTABLEKS                       R5 R6 K37 ["options"]
      175 LOADNIL                          R7
      176 RETURN                           R6 2
      177 DUPTABLE                         R5 K41 [{["id"], ["label"], ["kind"] = "passthrough", ["default"], ["editable"] = False, ["valueType"]}]
      178 SETTABLEKS                       R0 R5 K5 ["id"]
      180 GETIMPORT                        R7 K13 [string.gsub]
      182 MOVE                             R8 R0
      183 LOADK                            R9 K14 ["[_%-%s]+"]
      184 LOADK                            R10 K15 [" "]
      185 CALL                             R7 3 1
      186 JUMPIFNOTEQKS                    R7 K16 [""] ; [+3]
      188 LOADK                            R6 K17 ["Control"]
      189 JUMP                             ; [+20]
      190 GETIMPORT                        R10 K19 [string.upper]
      192 LOADN                            R13 1
      193 LOADN                            R14 1
      194 FASTCALL3                        STRING_SUB R7 R13 R14
      196 MOVE                             R12 R7
      197 GETIMPORT                        R11 K21 [string.sub]
      199 CALL                             R11 3 1
      200 CALL                             R10 1 1
      201 MOVE                             R8 R10
      202 FASTCALL2K                       STRING_SUB R7 K22 ; [+5]
      204 MOVE                             R10 R7
      205 LOADK                            R11 K22 [2]
      206 GETIMPORT                        R9 K21 [string.sub]
      208 CALL                             R9 2 1
      209 CONCAT                           R6 R8 R9
      210 SETTABLEKS                       R6 R5 K6 ["label"]
      212 SETTABLEKS                       R1 R5 K8 ["default"]
      214 SETTABLEKS                       R2 R5 K36 ["valueType"]
      216 LOADK                            R7 K42 ["Story control '"]
      217 MOVE                             R8 R0
      218 LOADK                            R9 K43 ["' is not editable and will pass through unchanged."]
      219 CONCAT                           R6 R7 R9
      220 RETURN                           R5 2

PROTO_22:
        0 DUPTABLE                         R1 K4 [{"controls", "byId", "defaultValues", "warnings"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["controls"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["byId"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["defaultValues"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["warnings"]
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K6 [type]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K7 ["table"] ; [+2]
       24 RETURN                           R1 1
       25 NEWTABLE                         R2 0 0
       27 MOVE                             R3 R0
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 FASTCALL1                        TYPE R6 ; [+3]
       32 MOVE                             R9 R6
       33 GETIMPORT                        R8 K6 [type]
       35 CALL                             R8 1 1
       36 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+8]
       38 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       40 MOVE                             R9 R2
       41 MOVE                             R10 R6
       42 GETIMPORT                        R8 K10 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 1 ; [-15]
       47 GETIMPORT                        R3 K12 [table.sort]
       49 MOVE                             R4 R2
       50 CALL                             R3 1 0
       51 MOVE                             R3 R2
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 GETUPVAL                         R8 0
       56 MOVE                             R9 R7
       57 GETTABLE                         R10 R0 R7
       58 CALL                             R8 2 2
       59 GETTABLEKS                       R11 R1 K0 ["controls"]
       61 FASTCALL2                        TABLE_INSERT R11 R8 ; [+4]
       63 MOVE                             R12 R8
       64 GETIMPORT                        R10 K10 [table.insert]
       66 CALL                             R10 2 0
       67 GETTABLEKS                       R10 R1 K1 ["byId"]
       69 SETTABLE                         R8 R10 R7
       70 GETTABLEKS                       R10 R1 K2 ["defaultValues"]
       72 GETTABLEKS                       R11 R8 K13 ["default"]
       74 SETTABLE                         R11 R10 R7
       75 JUMPIFNOT                        R9 ; [+8]
       76 GETTABLEKS                       R11 R1 K3 ["warnings"]
       78 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       80 MOVE                             R12 R9
       81 GETIMPORT                        R10 K10 [table.insert]
       83 CALL                             R10 2 0
       84 FORGLOOP                         R3 2 ; [-30]
       86 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["options"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K0 ["options"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["value"]
       12 JUMPIFNOTEQ                      R7 R1 ; [+3]
       14 LOADB                            R7 1
       15 RETURN                           R7 1
       16 FORGLOOP                         R2 2 ; [-7]
       18 LOADB                            R2 0
       19 RETURN                           R2 1

PROTO_24:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R0 K0 ["byId"]
        8 GETTABLE                         R8 R9 R6
        9 JUMPIF                           R8 ; [+19]
       10 LOADK                            R13 K1 ["Unknown control '"]
       11 MOVE                             R14 R6
       12 LOADK                            R15 K2 ["'"]
       13 CONCAT                           R12 R13 R15
       14 LOADK                            R14 K3 ["controls."]
       15 MOVE                             R15 R6
       16 CONCAT                           R13 R14 R15
       17 DUPTABLE                         R11 K10 [{["category"] = "control-validation", ["severity"] = "error", ["message"], ["path"]}]
       18 SETTABLEKS                       R12 R11 K8 ["message"]
       20 SETTABLEKS                       R13 R11 K9 ["path"]
       22 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       24 MOVE                             R10 R2
       25 GETIMPORT                        R9 K13 [table.insert]
       27 CALL                             R9 2 0
       28 JUMP                             ; [+130]
       29 GETTABLEKS                       R9 R8 K14 ["editable"]
       31 JUMPIF                           R9 ; [+19]
       32 LOADK                            R13 K15 ["Control '"]
       33 MOVE                             R14 R6
       34 LOADK                            R15 K16 ["' is not editable"]
       35 CONCAT                           R12 R13 R15
       36 LOADK                            R14 K3 ["controls."]
       37 MOVE                             R15 R6
       38 CONCAT                           R13 R14 R15
       39 DUPTABLE                         R11 K10 [{["category"] = "control-validation", ["severity"] = "error", ["message"], ["path"]}]
       40 SETTABLEKS                       R12 R11 K8 ["message"]
       42 SETTABLEKS                       R13 R11 K9 ["path"]
       44 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       46 MOVE                             R10 R2
       47 GETIMPORT                        R9 K13 [table.insert]
       49 CALL                             R9 2 0
       50 JUMP                             ; [+108]
       51 GETTABLEKS                       R9 R8 K17 ["kind"]
       53 JUMPIFNOTEQKS                    R9 K18 ["choose"] ; [+40]
       55 GETTABLEKS                       R10 R8 K19 ["options"]
       57 JUMPIF                           R10 ; [+2]
       58 LOADB                            R9 0
       59 JUMP                             ; [+14]
       60 GETTABLEKS                       R10 R8 K19 ["options"]
       62 LOADNIL                          R11
       63 LOADNIL                          R12
       64 FORGPREP                         R10
       65 GETTABLEKS                       R15 R14 K20 ["value"]
       67 JUMPIFNOTEQ                      R15 R7 ; [+3]
       69 LOADB                            R9 1
       70 JUMP                             ; [+3]
       71 FORGLOOP                         R10 2 ; [-7]
       73 LOADB                            R9 0
       74 JUMPIF                           R9 ; [+19]
       75 LOADK                            R13 K21 ["Invalid choice for control '"]
       76 MOVE                             R14 R6
       77 LOADK                            R15 K2 ["'"]
       78 CONCAT                           R12 R13 R15
       79 LOADK                            R14 K3 ["controls."]
       80 MOVE                             R15 R6
       81 CONCAT                           R13 R14 R15
       82 DUPTABLE                         R11 K10 [{["category"] = "control-validation", ["severity"] = "error", ["message"], ["path"]}]
       83 SETTABLEKS                       R12 R11 K8 ["message"]
       85 SETTABLEKS                       R13 R11 K9 ["path"]
       87 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       89 MOVE                             R10 R2
       90 GETIMPORT                        R9 K13 [table.insert]
       92 CALL                             R9 2 0
       93 JUMP                             ; [+65]
       94 GETTABLEKS                       R9 R8 K17 ["kind"]
       96 JUMPIFNOTEQKS                    R9 K22 ["color3"] ; [+27]
       98 FASTCALL1                        TYPEOF R7 ; [+3]
       99 MOVE                             R10 R7
      100 GETIMPORT                        R9 K24 [typeof]
      102 CALL                             R9 1 1
      103 JUMPIFEQKS                       R9 K25 ["Color3"] ; [+20]
      105 LOADK                            R13 K26 ["Expected Color3 for control '"]
      106 MOVE                             R14 R6
      107 LOADK                            R15 K2 ["'"]
      108 CONCAT                           R12 R13 R15
      109 LOADK                            R14 K3 ["controls."]
      110 MOVE                             R15 R6
      111 CONCAT                           R13 R14 R15
      112 DUPTABLE                         R11 K10 [{["category"] = "control-validation", ["severity"] = "error", ["message"], ["path"]}]
      113 SETTABLEKS                       R12 R11 K8 ["message"]
      115 SETTABLEKS                       R13 R11 K9 ["path"]
      117 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      119 MOVE                             R10 R2
      120 GETIMPORT                        R9 K13 [table.insert]
      122 CALL                             R9 2 0
      123 JUMP                             ; [+35]
      124 GETTABLEKS                       R9 R8 K17 ["kind"]
      126 JUMPIFEQKS                       R9 K18 ["choose"] ; [+32]
      128 GETTABLEKS                       R9 R8 K17 ["kind"]
      130 JUMPIFEQKS                       R9 K22 ["color3"] ; [+28]
      132 FASTCALL1                        TYPE R7 ; [+3]
      133 MOVE                             R10 R7
      134 GETIMPORT                        R9 K28 [type]
      136 CALL                             R9 1 1
      137 GETTABLEKS                       R10 R8 K17 ["kind"]
      139 JUMPIFEQ                         R9 R10 ; [+19]
      141 LOADK                            R13 K29 ["Invalid type for control '"]
      142 MOVE                             R14 R6
      143 LOADK                            R15 K2 ["'"]
      144 CONCAT                           R12 R13 R15
      145 LOADK                            R14 K3 ["controls."]
      146 MOVE                             R15 R6
      147 CONCAT                           R13 R14 R15
      148 DUPTABLE                         R11 K10 [{["category"] = "control-validation", ["severity"] = "error", ["message"], ["path"]}]
      149 SETTABLEKS                       R12 R11 K8 ["message"]
      151 SETTABLEKS                       R13 R11 K9 ["path"]
      153 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      155 MOVE                             R10 R2
      156 GETIMPORT                        R9 K13 [table.insert]
      158 CALL                             R9 2 0
      159 FORGLOOP                         R3 2 ; [-154]
      161 LENGTH                           R4 R2
      162 JUMPIFEQKN                       R4 K30 [0] ; [+2]
      164 LOADB                            R3 0 +1
      165 LOADB                            R3 1
      166 MOVE                             R4 R2
      167 RETURN                           R3 2

PROTO_25:
        0 GETTABLEKS                       R4 R2 K0 ["defaultValues"]
        2 NEWTABLE                         R5 0 0
        4 MOVE                             R6 R4
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 SETTABLE                         R10 R5 R9
        9 FORGLOOP                         R6 2 ; [-2]
       11 MOVE                             R3 R5
       12 JUMPIFNOT                        R0 ; [+1]
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R4 R2 K1 ["byId"]
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 GETTABLEKS                       R10 R0 K1 ["byId"]
       22 GETTABLE                         R9 R10 R7
       23 GETTABLE                         R10 R1 R7
       24 JUMPIFNOT                        R9 ; [+18]
       25 JUMPIFEQKNIL                     R10 ; [+17]
       27 GETTABLEKS                       R11 R9 K2 ["kind"]
       29 GETTABLEKS                       R12 R8 K2 ["kind"]
       31 JUMPIFNOTEQ                      R11 R12 ; [+11]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K3 ["validateControlChanges"]
       36 MOVE                             R12 R2
       37 NEWTABLE                         R13 1 0
       39 SETTABLE                         R10 R13 R7
       40 CALL                             R11 2 1
       41 JUMPIFNOT                        R11 ; [+1]
       42 SETTABLE                         R10 R3 R7
       43 FORGLOOP                         R4 2 ; [-24]
       45 RETURN                           R3 1

PROTO_26:
        0 JUMPIFNOT                        R1 ; [+11]
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["id"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R1 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 MOVE                             R2 R0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R6 K0 ["id"]
       18 JUMPIFNOTEQKS                    R7 K1 ["__primary"] ; [+3]
       20 LOADK                            R7 K1 ["__primary"]
       21 RETURN                           R7 1
       22 FORGLOOP                         R2 2 ; [-7]
       24 GETTABLEN                        R3 R0 1
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEN                        R2 R0 1
       27 GETTABLEKS                       R2 R2 K0 ["id"]
       29 RETURN                           R2 1
       30 LOADNIL                          R2
       31 RETURN                           R2 1

PROTO_27:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 LOADK                            R5 K0 ["definition"]
        7 CALL                             R3 2 2
        8 JUMPIFNOT                        R4 ; [+9]
        9 DUPTABLE                         R5 K4 [{["ok"] = False, ["diagnostics"]}]
       10 NEWTABLE                         R6 0 1
       12 MOVE                             R7 R4
       13 SETLIST                          R6 R7 1 [1]
       15 SETTABLEKS                       R6 R5 K3 ["diagnostics"]
       17 RETURN                           R5 1
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R3
       20 LOADK                            R7 K0 ["definition"]
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R5 ; [+9]
       23 DUPTABLE                         R6 K4 [{["ok"] = False, ["diagnostics"]}]
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R5
       27 SETLIST                          R7 R8 1 [1]
       29 SETTABLEKS                       R7 R6 K3 ["diagnostics"]
       31 RETURN                           R6 1
       32 GETUPVAL                         R6 2
       33 MOVE                             R7 R3
       34 GETTABLEKS                       R8 R2 K5 ["moduleScriptName"]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 3
       38 MOVE                             R8 R6
       39 GETTABLEKS                       R9 R2 K6 ["reactIs"]
       41 CALL                             R7 2 2
       42 JUMPIFNOT                        R8 ; [+9]
       43 DUPTABLE                         R9 K4 [{["ok"] = False, ["diagnostics"]}]
       44 NEWTABLE                         R10 0 1
       46 MOVE                             R11 R8
       47 SETLIST                          R10 R11 1 [1]
       49 SETTABLEKS                       R10 R9 K3 ["diagnostics"]
       51 RETURN                           R9 1
       52 FASTCALL1                        ASSERT R7 ; [+3]
       53 MOVE                             R10 R7
       54 GETIMPORT                        R9 K8 [assert]
       56 CALL                             R9 1 0
       57 GETTABLEKS                       R9 R2 K9 ["storybook"]
       59 GETUPVAL                         R10 1
       60 MOVE                             R11 R9
       61 LOADK                            R12 K9 ["storybook"]
       62 CALL                             R10 2 1
       63 JUMPIFNOT                        R10 ; [+9]
       64 DUPTABLE                         R11 K4 [{["ok"] = False, ["diagnostics"]}]
       65 NEWTABLE                         R12 0 1
       67 MOVE                             R13 R10
       68 SETLIST                          R12 R13 1 [1]
       70 SETTABLEKS                       R12 R11 K3 ["diagnostics"]
       72 RETURN                           R11 1
       73 FASTCALL1                        TYPE R9 ; [+3]
       74 MOVE                             R13 R9
       75 GETIMPORT                        R12 K11 [type]
       77 CALL                             R12 1 1
       78 JUMPIFNOTEQKS                    R12 K12 ["table"] ; [+4]
       80 GETTABLEKS                       R11 R9 K0 ["definition"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R11
       84 JUMPIFEQKNIL                     R11 ; [+74]
       86 GETUPVAL                         R12 1
       87 MOVE                             R13 R11
       88 LOADK                            R14 K13 ["storybook.definition"]
       89 CALL                             R12 2 1
       90 JUMPIFNOT                        R12 ; [+9]
       91 DUPTABLE                         R13 K4 [{["ok"] = False, ["diagnostics"]}]
       92 NEWTABLE                         R14 0 1
       94 MOVE                             R15 R12
       95 SETLIST                          R14 R15 1 [1]
       97 SETTABLEKS                       R14 R13 K3 ["diagnostics"]
       99 RETURN                           R13 1
      100 MOVE                             R15 R6
      101 GETUPVAL                         R16 0
      102 MOVE                             R17 R11
      103 LOADK                            R18 K13 ["storybook.definition"]
      104 CALL                             R16 2 2
      105 JUMPIFNOT                        R17 ; [+3]
      106 LOADNIL                          R13
      107 MOVE                             R14 R17
      108 JUMP                             ; [+24]
      109 FASTCALL1                        ASSERT R16 ; [+3]
      110 MOVE                             R19 R16
      111 GETIMPORT                        R18 K8 [assert]
      113 CALL                             R18 1 0
      114 NEWTABLE                         R19 0 0
      116 MOVE                             R20 R15
      117 LOADNIL                          R21
      118 LOADNIL                          R22
      119 FORGPREP                         R20
      120 SETTABLE                         R24 R19 R23
      121 FORGLOOP                         R20 2 ; [-2]
      123 MOVE                             R18 R19
      124 MOVE                             R19 R16
      125 LOADNIL                          R20
      126 LOADNIL                          R21
      127 FORGPREP                         R19
      128 SETTABLE                         R23 R18 R22
      129 FORGLOOP                         R19 2 ; [-2]
      131 MOVE                             R13 R18
      132 LOADNIL                          R14
      133 JUMPIFNOT                        R14 ; [+9]
      134 DUPTABLE                         R15 K4 [{["ok"] = False, ["diagnostics"]}]
      135 NEWTABLE                         R16 0 1
      137 MOVE                             R17 R14
      138 SETLIST                          R16 R17 1 [1]
      140 SETTABLEKS                       R16 R15 K3 ["diagnostics"]
      142 RETURN                           R15 1
      143 MOVE                             R6 R13
      144 GETUPVAL                         R15 3
      145 MOVE                             R16 R6
      146 GETTABLEKS                       R17 R2 K6 ["reactIs"]
      148 CALL                             R15 2 2
      149 JUMPIFNOT                        R16 ; [+9]
      150 DUPTABLE                         R17 K4 [{["ok"] = False, ["diagnostics"]}]
      151 NEWTABLE                         R18 0 1
      153 MOVE                             R19 R16
      154 SETLIST                          R18 R19 1 [1]
      156 SETTABLEKS                       R18 R17 K3 ["diagnostics"]
      158 RETURN                           R17 1
      159 LOADB                            R12 0
      160 FASTCALL1                        TYPE R9 ; [+3]
      161 MOVE                             R14 R9
      162 GETIMPORT                        R13 K11 [type]
      164 CALL                             R13 1 1
      165 JUMPIFNOTEQKS                    R13 K12 ["table"] ; [+106]
      167 GETTABLEKS                       R13 R9 K14 ["mapDefinition"]
      169 JUMPIFEQKNIL                     R13 ; [+102]
      171 GETTABLEKS                       R14 R9 K14 ["mapDefinition"]
      173 FASTCALL1                        TYPE R14 ; [+2]
      174 GETIMPORT                        R13 K11 [type]
      176 CALL                             R13 1 1
      177 JUMPIFEQKS                       R13 K15 ["function"] ; [+11]
      179 DUPTABLE                         R14 K24 [{["category"] = "map-definition-failure", ["severity"] = "error", ["message"] = "mapDefinition must be a function", ["path"] = "storybook.mapDefinition"}]
      180 DUPTABLE                         R13 K4 [{["ok"] = False, ["diagnostics"]}]
      181 NEWTABLE                         R15 0 1
      183 MOVE                             R16 R14
      184 SETLIST                          R15 R16 1 [1]
      186 SETTABLEKS                       R15 R13 K3 ["diagnostics"]
      188 RETURN                           R13 1
      189 GETUPVAL                         R13 0
      190 MOVE                             R14 R6
      191 LOADK                            R15 K25 ["mapDefinition.input"]
      192 CALL                             R13 2 2
      193 JUMPIFNOT                        R14 ; [+9]
      194 DUPTABLE                         R15 K4 [{["ok"] = False, ["diagnostics"]}]
      195 NEWTABLE                         R16 0 1
      197 MOVE                             R17 R14
      198 SETLIST                          R16 R17 1 [1]
      200 SETTABLEKS                       R16 R15 K3 ["diagnostics"]
      202 RETURN                           R15 1
      203 GETIMPORT                        R15 K27 [pcall]
      205 GETTABLEKS                       R16 R9 K14 ["mapDefinition"]
      207 MOVE                             R17 R13
      208 CALL                             R15 2 2
      209 JUMPIF                           R15 ; [+17]
      210 FASTCALL1                        TOSTRING R16 ; [+3]
      211 MOVE                             R20 R16
      212 GETIMPORT                        R19 K29 [tostring]
      214 CALL                             R19 1 1
      215 DUPTABLE                         R18 K30 [{["category"] = "map-definition-failure", ["severity"] = "error", ["message"], ["path"] = "storybook.mapDefinition"}]
      216 SETTABLEKS                       R19 R18 K20 ["message"]
      218 DUPTABLE                         R17 K4 [{["ok"] = False, ["diagnostics"]}]
      219 NEWTABLE                         R19 0 1
      221 MOVE                             R20 R18
      222 SETLIST                          R19 R20 1 [1]
      224 SETTABLEKS                       R19 R17 K3 ["diagnostics"]
      226 RETURN                           R17 1
      227 GETUPVAL                         R17 0
      228 MOVE                             R18 R16
      229 LOADK                            R19 K31 ["mapDefinition.result"]
      230 CALL                             R17 2 2
      231 JUMPIFNOT                        R18 ; [+19]
      232 GETTABLEKS                       R21 R18 K20 ["message"]
      234 GETTABLEKS                       R23 R18 K22 ["path"]
      236 ORK                              R22 R23 K23 ["storybook.mapDefinition"]
      237 DUPTABLE                         R20 K32 [{["category"] = "map-definition-failure", ["severity"] = "error", ["message"], ["path"]}]
      238 SETTABLEKS                       R21 R20 K20 ["message"]
      240 SETTABLEKS                       R22 R20 K22 ["path"]
      242 DUPTABLE                         R19 K4 [{["ok"] = False, ["diagnostics"]}]
      243 NEWTABLE                         R21 0 1
      245 MOVE                             R22 R20
      246 SETLIST                          R21 R22 1 [1]
      248 SETTABLEKS                       R21 R19 K3 ["diagnostics"]
      250 RETURN                           R19 1
      251 GETUPVAL                         R19 1
      252 MOVE                             R20 R17
      253 LOADK                            R21 K31 ["mapDefinition.result"]
      254 CALL                             R19 2 1
      255 JUMPIFNOT                        R19 ; [+9]
      256 DUPTABLE                         R20 K4 [{["ok"] = False, ["diagnostics"]}]
      257 NEWTABLE                         R21 0 1
      259 MOVE                             R22 R19
      260 SETLIST                          R21 R22 1 [1]
      262 SETTABLEKS                       R21 R20 K3 ["diagnostics"]
      264 RETURN                           R20 1
      265 GETUPVAL                         R20 2
      266 MOVE                             R21 R17
      267 GETTABLEKS                       R22 R2 K5 ["moduleScriptName"]
      269 CALL                             R20 2 1
      270 MOVE                             R6 R20
      271 LOADB                            R12 1
      272 GETUPVAL                         R13 4
      273 MOVE                             R14 R2
      274 MOVE                             R15 R3
      275 MOVE                             R16 R11
      276 MOVE                             R17 R6
      277 MOVE                             R18 R12
      278 CALL                             R13 5 2
      279 JUMPIFNOT                        R14 ; [+9]
      280 DUPTABLE                         R15 K4 [{["ok"] = False, ["diagnostics"]}]
      281 NEWTABLE                         R16 0 1
      283 MOVE                             R17 R14
      284 SETLIST                          R16 R17 1 [1]
      286 SETTABLEKS                       R16 R15 K3 ["diagnostics"]
      288 RETURN                           R15 1
      289 GETUPVAL                         R15 3
      290 MOVE                             R16 R6
      291 GETTABLEKS                       R17 R2 K6 ["reactIs"]
      293 CALL                             R15 2 2
      294 JUMPIFNOT                        R16 ; [+9]
      295 DUPTABLE                         R17 K4 [{["ok"] = False, ["diagnostics"]}]
      296 NEWTABLE                         R18 0 1
      298 MOVE                             R19 R16
      299 SETLIST                          R18 R19 1 [1]
      301 SETTABLEKS                       R18 R17 K3 ["diagnostics"]
      303 RETURN                           R17 1
      304 FASTCALL1                        ASSERT R15 ; [+3]
      305 MOVE                             R18 R15
      306 GETIMPORT                        R17 K8 [assert]
      308 CALL                             R17 1 0
      309 FASTCALL1                        TYPE R9 ; [+3]
      310 MOVE                             R18 R9
      311 GETIMPORT                        R17 K11 [type]
      313 CALL                             R17 1 1
      314 JUMPIFNOTEQKS                    R17 K12 ["table"] ; [+93]
      316 GETTABLEKS                       R17 R9 K33 ["mapStory"]
      318 JUMPIFEQKNIL                     R17 ; [+89]
      320 GETTABLEKS                       R18 R9 K33 ["mapStory"]
      322 FASTCALL1                        TYPE R18 ; [+2]
      323 GETIMPORT                        R17 K11 [type]
      325 CALL                             R17 1 1
      326 JUMPIFEQKS                       R17 K15 ["function"] ; [+11]
      328 DUPTABLE                         R18 K37 [{["category"] = "map-story-failure", ["severity"] = "error", ["message"] = "mapStory must be a function", ["path"] = "storybook.mapStory"}]
      329 DUPTABLE                         R17 K4 [{["ok"] = False, ["diagnostics"]}]
      330 NEWTABLE                         R19 0 1
      332 MOVE                             R20 R18
      333 SETLIST                          R19 R20 1 [1]
      335 SETTABLEKS                       R19 R17 K3 ["diagnostics"]
      337 RETURN                           R17 1
      338 MOVE                             R17 R15
      339 LOADNIL                          R18
      340 LOADNIL                          R19
      341 FORGPREP                         R17
      342 GETIMPORT                        R22 K27 [pcall]
      344 GETTABLEKS                       R23 R9 K33 ["mapStory"]
      346 GETTABLEKS                       R24 R21 K38 ["component"]
      348 CALL                             R22 2 2
      349 JUMPIF                           R22 ; [+23]
      350 FASTCALL1                        TOSTRING R23 ; [+3]
      351 MOVE                             R27 R23
      352 GETIMPORT                        R26 K29 [tostring]
      354 CALL                             R26 1 1
      355 LOADK                            R28 K39 ["variants."]
      356 GETTABLEKS                       R29 R21 K40 ["id"]
      358 CONCAT                           R27 R28 R29
      359 DUPTABLE                         R25 K41 [{["category"] = "map-story-failure", ["severity"] = "error", ["message"], ["path"]}]
      360 SETTABLEKS                       R26 R25 K20 ["message"]
      362 SETTABLEKS                       R27 R25 K22 ["path"]
      364 DUPTABLE                         R24 K4 [{["ok"] = False, ["diagnostics"]}]
      365 NEWTABLE                         R26 0 1
      367 MOVE                             R27 R25
      368 SETLIST                          R26 R27 1 [1]
      370 SETTABLEKS                       R26 R24 K3 ["diagnostics"]
      372 RETURN                           R24 1
      373 GETUPVAL                         R24 5
      374 MOVE                             R25 R23
      375 GETTABLEKS                       R26 R2 K6 ["reactIs"]
      377 LOADK                            R28 K39 ["variants."]
      378 GETTABLEKS                       R29 R21 K40 ["id"]
      380 LOADK                            R30 K42 [".mapStory"]
      381 CONCAT                           R27 R28 R30
      382 CALL                             R24 3 3
      383 JUMPIFNOT                        R26 ; [+18]
      384 GETTABLEKS                       R29 R26 K20 ["message"]
      386 GETTABLEKS                       R30 R26 K22 ["path"]
      388 DUPTABLE                         R28 K41 [{["category"] = "map-story-failure", ["severity"] = "error", ["message"], ["path"]}]
      389 SETTABLEKS                       R29 R28 K20 ["message"]
      391 SETTABLEKS                       R30 R28 K22 ["path"]
      393 DUPTABLE                         R27 K4 [{["ok"] = False, ["diagnostics"]}]
      394 NEWTABLE                         R29 0 1
      396 MOVE                             R30 R28
      397 SETLIST                          R29 R30 1 [1]
      399 SETTABLEKS                       R29 R27 K3 ["diagnostics"]
      401 RETURN                           R27 1
      402 SETTABLEKS                       R24 R21 K38 ["component"]
      404 SETTABLEKS                       R25 R21 K43 ["componentKind"]
      406 FORGLOOP                         R17 2 ; [-65]
      408 GETUPVAL                         R17 6
      409 GETTABLEKS                       R18 R6 K44 ["controls"]
      411 CALL                             R17 1 1
      412 NEWTABLE                         R18 0 0
      414 GETTABLEKS                       R19 R17 K45 ["warnings"]
      416 LOADNIL                          R20
      417 LOADNIL                          R21
      418 FORGPREP                         R19
      419 DUPTABLE                         R26 K48 [{["category"] = "control-passthrough", ["severity"] = "warning", ["message"], ["path"] = "controls"}]
      420 SETTABLEKS                       R23 R26 K20 ["message"]
      422 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      424 MOVE                             R25 R18
      425 GETIMPORT                        R24 K50 [table.insert]
      427 CALL                             R24 2 0
      428 FORGLOOP                         R19 2 ; [-10]
      430 DUPTABLE                         R19 K56 [{["ok"] = True, [2], ["variants"], ["defaultVariantId"], ["controlSchema"], ["rendererContext"], ["diagnostics"]}]
      431 SETTABLEKS                       R6 R19 K0 ["definition"]
      433 SETTABLEKS                       R15 R19 K52 ["variants"]
      435 GETUPVAL                         R20 7
      436 GETTABLEKS                       R20 R20 K57 ["resolveDefaultVariantId"]
      438 MOVE                             R21 R15
      439 LOADNIL                          R22
      440 CALL                             R20 2 1
      441 SETTABLEKS                       R20 R19 K53 ["defaultVariantId"]
      443 SETTABLEKS                       R17 R19 K54 ["controlSchema"]
      445 SETTABLEKS                       R13 R19 K55 ["rendererContext"]
      447 SETTABLEKS                       R18 R19 K3 ["diagnostics"]
      449 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 3
        3 LOADK                            R1 K0 ["create"]
        4 LOADK                            R2 K1 ["destroy"]
        5 LOADK                            R3 K2 ["before"]
        6 SETLIST                          R0 R1 3 [1]
        8 DUPTABLE                         R1 K6 [{["PRIMARY_VARIANT_ID"] = "__primary", ["RESERVED_LIFECYCLE_FIELDS"]}]
        9 SETTABLEKS                       R0 R1 K5 ["RESERVED_LIFECYCLE_FIELDS"]
       11 DUPCLOSURE                       R2 K7 [PROTO_0]
       12 DUPCLOSURE                       R3 K8 [PROTO_1]
       13 DUPCLOSURE                       R4 K9 [PROTO_2]
       14 DUPCLOSURE                       R5 K10 [PROTO_3]
       15 CAPTURE                          VAL R5
       16 DUPCLOSURE                       R6 K11 [PROTO_4]
       17 CAPTURE                          VAL R5
       18 DUPCLOSURE                       R7 K12 [PROTO_5]
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R6
       21 DUPCLOSURE                       R8 K13 [PROTO_6]
       22 CAPTURE                          VAL R0
       23 DUPCLOSURE                       R9 K14 [PROTO_7]
       24 DUPCLOSURE                       R10 K15 [PROTO_8]
       25 DUPCLOSURE                       R11 K16 [PROTO_9]
       26 CAPTURE                          VAL R7
       27 DUPCLOSURE                       R12 K17 [PROTO_10]
       28 DUPCLOSURE                       R13 K18 [PROTO_11]
       29 DUPCLOSURE                       R14 K19 [PROTO_13]
       30 DUPCLOSURE                       R15 K20 [PROTO_14]
       31 DUPCLOSURE                       R16 K21 [PROTO_15]
       32 DUPCLOSURE                       R17 K22 [PROTO_16]
       33 CAPTURE                          VAL R14
       34 CAPTURE                          VAL R16
       35 DUPCLOSURE                       R18 K23 [PROTO_17]
       36 DUPCLOSURE                       R19 K24 [PROTO_18]
       37 CAPTURE                          VAL R18
       38 DUPCLOSURE                       R20 K25 [PROTO_19]
       39 DUPCLOSURE                       R21 K26 [PROTO_20]
       40 DUPCLOSURE                       R22 K27 [PROTO_21]
       41 CAPTURE                          VAL R21
       42 DUPCLOSURE                       R23 K28 [PROTO_22]
       43 CAPTURE                          VAL R22
       44 DUPCLOSURE                       R24 K29 [PROTO_23]
       45 DUPCLOSURE                       R25 K30 [PROTO_24]
       46 SETTABLEKS                       R25 R1 K31 ["validateControlChanges"]
       48 DUPCLOSURE                       R25 K32 [PROTO_25]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R25 R1 K33 ["mergeControlValuesOnReload"]
       52 DUPCLOSURE                       R25 K34 [PROTO_26]
       53 SETTABLEKS                       R25 R1 K35 ["resolveDefaultVariantId"]
       55 DUPCLOSURE                       R25 K36 [PROTO_27]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R17
       60 CAPTURE                          VAL R19
       61 CAPTURE                          VAL R14
       62 CAPTURE                          VAL R23
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R25 R1 K37 ["normalize"]
       66 SETTABLEKS                       R22 R1 K38 ["classifyControl"]
       68 SETTABLEKS                       R23 R1 K39 ["buildControlSchema"]
       70 RETURN                           R1 1
