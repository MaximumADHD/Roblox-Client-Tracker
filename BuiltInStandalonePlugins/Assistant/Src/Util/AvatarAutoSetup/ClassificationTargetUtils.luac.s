PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getNewInstanceNameWithPrefix"]
        3 GETTABLEKS                       R3 R0 K1 ["Name"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R0 K1 ["Name"]
        9 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K3 ["BasePart"]
       14 NAMECALL                         R7 R6 K4 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+9]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K0 ["getNewInstanceNameWithPrefix"]
       21 GETTABLEKS                       R8 R6 K1 ["Name"]
       23 MOVE                             R9 R1
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K1 ["Name"]
       27 FORGLOOP                         R2 2 ; [-15]
       29 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 LOADK                            R4 K2 ["BasePart"]
        6 LOADB                            R5 1
        7 NAMECALL                         R2 R0 K3 ["FindFirstChildWhichIsA"]
        9 CALL                             R2 3 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Folder"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R6
       11 MOVE                             R9 R1
       12 CALL                             R7 2 0
       13 JUMP                             ; [+45]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K3 ["isR15Avatar"]
       17 MOVE                             R8 R6
       18 CALL                             R7 1 1
       19 JUMPIF                           R7 ; [+5]
       20 LOADK                            R9 K4 ["BasePart"]
       21 NAMECALL                         R7 R6 K2 ["IsA"]
       23 CALL                             R7 2 1
       24 JUMPIFNOT                        R7 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       27 MOVE                             R8 R1
       28 MOVE                             R9 R6
       29 GETIMPORT                        R7 K7 [table.insert]
       31 CALL                             R7 2 0
       32 JUMP                             ; [+26]
       33 LOADK                            R9 K8 ["Model"]
       34 NAMECALL                         R7 R6 K2 ["IsA"]
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+9]
       38 LOADK                            R10 K4 ["BasePart"]
       39 LOADB                            R11 1
       40 NAMECALL                         R8 R6 K9 ["FindFirstChildWhichIsA"]
       42 CALL                             R8 3 1
       43 JUMPIFNOTEQKNIL                  R8 ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 JUMPIFNOT                        R7 ; [+11]
       48 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       50 MOVE                             R8 R1
       51 MOVE                             R9 R6
       52 GETIMPORT                        R7 K7 [table.insert]
       54 CALL                             R7 2 0
       55 GETUPVAL                         R7 0
       56 MOVE                             R8 R6
       57 MOVE                             R9 R1
       58 CALL                             R7 2 0
       59 FORGLOOP                         R2 2 ; [-56]
       61 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIFEQKNIL                     R3 ; [+15]
        5 JUMPIFEQ                         R3 R0 ; [+13]
        7 LOADN                            R6 1
        8 GETTABLEKS                       R7 R3 K0 ["Name"]
       10 FASTCALL3                        TABLE_INSERT R2 R6 R7
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K3 [table.insert]
       15 CALL                             R4 3 0
       16 GETTABLEKS                       R3 R3 K4 ["Parent"]
       18 JUMPBACK                         ; [-16]
       19 GETIMPORT                        R4 K6 [table.concat]
       21 MOVE                             R5 R2
       22 LOADK                            R6 K7 ["."]
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 LOADB                            R5 1
        5 JUMPIFEQ                         R3 R4 ; [+13]
        7 LOADK                            R6 K0 ["%*.%*"]
        8 NAMECALL                         R8 R0 K1 ["GetFullName"]
       10 CALL                             R8 1 1
       11 MOVE                             R9 R4
       12 NAMECALL                         R6 R6 K2 ["format"]
       14 CALL                             R6 3 1
       15 JUMPIFEQ                         R3 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UniqueId"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+7]
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K4 ["string"] ; [+3]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R8 0 0
        4 GETUPVAL                         R9 0
        5 MOVE                             R10 R1
        6 MOVE                             R11 R8
        7 CALL                             R9 2 0
        8 MOVE                             R5 R8
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R11 R3 K0 ["path"]
       14 GETUPVAL                         R12 1
       15 MOVE                             R13 R1
       16 MOVE                             R14 R9
       17 CALL                             R12 2 1
       18 LOADB                            R10 1
       19 JUMPIFEQ                         R11 R12 ; [+13]
       21 LOADK                            R13 K1 ["%*.%*"]
       22 NAMECALL                         R15 R0 K2 ["GetFullName"]
       24 CALL                             R15 1 1
       25 MOVE                             R16 R12
       26 NAMECALL                         R13 R13 K3 ["format"]
       28 CALL                             R13 3 1
       29 JUMPIFEQ                         R11 R13 ; [+2]
       31 LOADB                            R10 0 +1
       32 LOADB                            R10 1
       33 JUMPIFNOT                        R10 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       36 MOVE                             R11 R4
       37 MOVE                             R12 R9
       38 GETIMPORT                        R10 K6 [table.insert]
       40 CALL                             R10 2 0
       41 FORGLOOP                         R5 2 ; [-30]
       43 LENGTH                           R5 R4
       44 JUMPIFNOTEQKN                    R5 K7 [0] ; [+11]
       46 GETIMPORT                        R5 K9 [error]
       48 LOADK                            R6 K10 ["could not find \"%*\". Use the path of a Model or BasePart under the input."]
       49 GETTABLEKS                       R8 R3 K0 ["path"]
       51 NAMECALL                         R6 R6 K3 ["format"]
       53 CALL                             R6 2 1
       54 LOADN                            R7 0
       55 CALL                             R5 2 0
       56 GETTABLEKS                       R5 R3 K11 ["uniqueId"]
       58 JUMPIFEQKNIL                     R5 ; [+41]
       60 MOVE                             R5 R4
       61 LOADNIL                          R6
       62 LOADNIL                          R7
       63 FORGPREP                         R5
       64 GETTABLE                         R11 R2 R9
       65 GETIMPORT                        R12 K13 [pcall]
       67 NEWCLOSURE                       R13 P0
       68 CAPTURE                          VAL R11
       69 CALL                             R12 1 2
       70 JUMPIFNOT                        R12 ; [+7]
       71 FASTCALL1                        TYPEOF R13 ; [+3]
       72 MOVE                             R15 R13
       73 GETIMPORT                        R14 K15 [typeof]
       75 CALL                             R14 1 1
       76 JUMPIFEQKS                       R14 K16 ["string"] ; [+3]
       78 LOADNIL                          R10
       79 JUMP                             ; [+1]
       80 MOVE                             R10 R13
       81 GETTABLEKS                       R11 R3 K11 ["uniqueId"]
       83 JUMPIFNOTEQ                      R10 R11 ; [+2]
       85 RETURN                           R9 1
       86 FORGLOOP                         R5 2 ; [-23]
       88 GETIMPORT                        R5 K9 [error]
       90 LOADK                            R6 K17 ["uniqueId \"%*\" is not one of the instances at \"%*\"."]
       91 GETTABLEKS                       R8 R3 K11 ["uniqueId"]
       93 GETTABLEKS                       R9 R3 K0 ["path"]
       95 NAMECALL                         R6 R6 K3 ["format"]
       97 CALL                             R6 3 1
       98 LOADN                            R7 0
       99 CALL                             R5 2 0
      100 LENGTH                           R5 R4
      101 LOADN                            R6 1
      102 JUMPIFNOTLT                      R6 R5 ; [+11]
      104 GETIMPORT                        R5 K9 [error]
      106 LOADK                            R6 K18 ["\"%*\" matches more than one instance. Pass the uniqueId from inspect_instance for the one you mean."]
      107 GETTABLEKS                       R8 R3 K0 ["path"]
      109 NAMECALL                         R6 R6 K3 ["format"]
      111 CALL                             R6 2 1
      112 LOADN                            R7 0
      113 CALL                             R5 2 0
      114 GETTABLEN                        R5 R4 1
      115 RETURN                           R5 1

PROTO_9:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R3
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETUPVAL                         R10 0
        7 MOVE                             R11 R0
        8 MOVE                             R12 R1
        9 MOVE                             R13 R2
       10 MOVE                             R14 R9
       11 CALL                             R10 4 1
       12 GETUPVAL                         R12 1
       13 GETTABLEKS                       R13 R9 K0 ["classification"]
       15 GETTABLE                         R11 R12 R13
       16 JUMPIFEQKB                       R11 TRUE ; [+11]
       18 GETIMPORT                        R11 K2 [error]
       20 LOADK                            R12 K3 ["unsupported classification \"%*\""]
       21 GETTABLEKS                       R14 R9 K0 ["classification"]
       23 NAMECALL                         R12 R12 K4 ["format"]
       25 CALL                             R12 2 1
       26 LOADN                            R13 0
       27 CALL                             R11 2 0
       28 MOVE                             R11 R4
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 FORGPREP                         R11
       32 GETTABLEKS                       R16 R15 K5 ["instance"]
       34 JUMPIFNOTEQ                      R16 R10 ; [+11]
       36 GETIMPORT                        R16 K2 [error]
       38 LOADK                            R17 K6 ["\"%*\" is classified more than once."]
       39 GETTABLEKS                       R19 R9 K7 ["path"]
       41 NAMECALL                         R17 R17 K4 ["format"]
       43 CALL                             R17 2 1
       44 LOADN                            R18 0
       45 CALL                             R16 2 0
       46 GETTABLEKS                       R18 R15 K5 ["instance"]
       48 NAMECALL                         R16 R10 K8 ["IsDescendantOf"]
       50 CALL                             R16 2 1
       51 JUMPIF                           R16 ; [+7]
       52 GETTABLEKS                       R16 R15 K5 ["instance"]
       54 MOVE                             R18 R10
       55 NAMECALL                         R16 R16 K8 ["IsDescendantOf"]
       57 CALL                             R16 2 1
       58 JUMPIFNOT                        R16 ; [+12]
       59 GETIMPORT                        R16 K2 [error]
       61 LOADK                            R17 K9 ["\"%*\" overlaps \"%*\"."]
       62 GETTABLEKS                       R19 R9 K7 ["path"]
       64 GETTABLEKS                       R20 R15 K7 ["path"]
       66 NAMECALL                         R17 R17 K4 ["format"]
       68 CALL                             R17 3 1
       69 LOADN                            R18 0
       70 CALL                             R16 2 0
       71 FORGLOOP                         R11 2 ; [-40]
       73 DUPTABLE                         R13 K10 [{"instance", "path", "classification"}]
       74 SETTABLEKS                       R10 R13 K5 ["instance"]
       76 GETTABLEKS                       R14 R9 K7 ["path"]
       78 SETTABLEKS                       R14 R13 K7 ["path"]
       80 GETTABLEKS                       R14 R9 K0 ["classification"]
       82 SETTABLEKS                       R14 R13 K0 ["classification"]
       84 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       86 MOVE                             R12 R4
       87 GETIMPORT                        R11 K13 [table.insert]
       89 CALL                             R11 2 0
       90 FORGLOOP                         R5 2 ; [-85]
       92 RETURN                           R4 1

PROTO_10:
        0 SETTABLE                         R0 R2 R1
        1 NAMECALL                         R3 R1 K0 ["GetChildren"]
        3 CALL                             R3 1 1
        4 LOADN                            R4 0
        5 NAMECALL                         R5 R0 K0 ["GetChildren"]
        7 CALL                             R5 1 3
        8 FORGPREP                         R5
        9 GETTABLEKS                       R10 R9 K1 ["Archivable"]
       11 JUMPIFNOT                        R10 ; [+6]
       12 ADDK                             R4 R4 K2 [1]
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 GETTABLE                         R12 R3 R4
       16 MOVE                             R13 R2
       17 CALL                             R10 3 0
       18 FORGLOOP                         R5 2 ; [-10]
       20 RETURN                           R0 0

PROTO_11:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADK                            R4 K0 ["Model"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+6]
       10 LOADK                            R4 K2 ["Folder"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 LOADK                            R4 K3 ["BasePart"]
       17 LOADB                            R5 1
       18 NAMECALL                         R2 R0 K4 ["FindFirstChildWhichIsA"]
       20 CALL                             R2 3 1
       21 JUMPIFEQKNIL                     R2 ; [+2]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R2 R0 K5 ["Parent"]
       26 NAMECALL                         R3 R0 K6 ["Destroy"]
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 0
       30 MOVE                             R4 R2
       31 MOVE                             R5 R1
       32 CALL                             R3 2 0
       33 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+18]
        6 NAMECALL                         R2 R1 K2 ["GetChildren"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 SETTABLEKS                       R0 R6 K3 ["Parent"]
       12 FORGLOOP                         R2 2 ; [-3]
       14 NAMECALL                         R2 R1 K4 ["Destroy"]
       16 CALL                             R2 1 0
       17 LOADK                            R4 K0 ["Folder"]
       18 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
       20 CALL                             R2 2 1
       21 MOVE                             R1 R2
       22 JUMPBACK                         ; [-19]
       23 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R4 1
        3 DUPTABLE                         R5 K4 [{"path", "classification", "source", "uniqueId"}]
        4 GETUPVAL                         R6 2
        5 GETUPVAL                         R7 3
        6 MOVE                             R8 R3
        7 CALL                             R6 2 1
        8 SETTABLEKS                       R6 R5 K0 ["path"]
       10 SETTABLEKS                       R1 R5 K1 ["classification"]
       12 SETTABLEKS                       R2 R5 K2 ["source"]
       14 GETIMPORT                        R7 K6 [pcall]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R3
       18 CALL                             R7 1 2
       19 JUMPIFNOT                        R7 ; [+7]
       20 FASTCALL1                        TYPEOF R8 ; [+3]
       21 MOVE                             R10 R8
       22 GETIMPORT                        R9 K8 [typeof]
       24 CALL                             R9 1 1
       25 JUMPIFEQKS                       R9 K9 ["string"] ; [+3]
       27 LOADNIL                          R6
       28 JUMP                             ; [+1]
       29 MOVE                             R6 R8
       30 SETTABLEKS                       R6 R5 K3 ["uniqueId"]
       32 SETTABLE                         R5 R4 R0
       33 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R4 3 0
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 MOVE                             R6 R2
       13 MOVE                             R7 R3
       14 MOVE                             R8 R1
       15 CALL                             R4 4 1
       16 NEWTABLE                         R5 0 0
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R10 0 0
       25 GETUPVAL                         R11 3
       26 MOVE                             R12 R2
       27 MOVE                             R13 R10
       28 CALL                             R11 2 0
       29 MOVE                             R7 R10
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 GETUPVAL                         R12 4
       34 GETTABLEKS                       R12 R12 K1 ["isR15Avatar"]
       36 MOVE                             R13 R11
       37 CALL                             R12 1 1
       38 JUMPIFNOT                        R12 ; [+35]
       39 GETTABLEKS                       R12 R11 K2 ["Parent"]
       41 SETTABLEKS                       R2 R11 K2 ["Parent"]
       43 GETUPVAL                         R13 5
       44 MOVE                             R14 R12
       45 MOVE                             R15 R2
       46 CALL                             R13 2 0
       47 GETTABLE                         R12 R3 R11
       48 DUPTABLE                         R13 K9 [{["path"], ["classification"] = "Avatar", ["source"] = "avatar", ["uniqueId"]}]
       49 GETUPVAL                         R14 2
       50 MOVE                             R15 R0
       51 MOVE                             R16 R12
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K3 ["path"]
       55 GETIMPORT                        R15 K11 [pcall]
       57 NEWCLOSURE                       R16 P1
       58 CAPTURE                          VAL R12
       59 CALL                             R15 1 2
       60 JUMPIFNOT                        R15 ; [+7]
       61 FASTCALL1                        TYPEOF R16 ; [+3]
       62 MOVE                             R18 R16
       63 GETIMPORT                        R17 K13 [typeof]
       65 CALL                             R17 1 1
       66 JUMPIFEQKS                       R17 K14 ["string"] ; [+3]
       68 LOADNIL                          R14
       69 JUMP                             ; [+1]
       70 MOVE                             R14 R16
       71 SETTABLEKS                       R14 R13 K8 ["uniqueId"]
       73 SETTABLE                         R13 R5 R11
       74 FORGLOOP                         R7 2 ; [-42]
       76 MOVE                             R7 R4
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 FORGPREP                         R7
       80 GETTABLEKS                       R12 R11 K15 ["instance"]
       82 GETTABLE                         R13 R5 R12
       83 JUMPIFNOTEQKNIL                  R13 ; [+49]
       85 GETTABLEKS                       R13 R12 K2 ["Parent"]
       87 JUMPIFEQKNIL                     R13 ; [+45]
       89 GETUPVAL                         R13 6
       90 MOVE                             R14 R12
       91 GETTABLEKS                       R15 R11 K4 ["classification"]
       93 CALL                             R13 2 0
       94 GETTABLEKS                       R13 R12 K2 ["Parent"]
       96 SETTABLEKS                       R2 R12 K2 ["Parent"]
       98 GETUPVAL                         R14 5
       99 MOVE                             R15 R13
      100 MOVE                             R16 R2
      101 CALL                             R14 2 0
      102 GETTABLEKS                       R13 R11 K4 ["classification"]
      104 GETTABLE                         R14 R3 R12
      105 DUPTABLE                         R15 K17 [{["path"], ["classification"], ["source"] = "caller", ["uniqueId"]}]
      106 GETUPVAL                         R16 2
      107 MOVE                             R17 R0
      108 MOVE                             R18 R14
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K3 ["path"]
      112 SETTABLEKS                       R13 R15 K4 ["classification"]
      114 GETIMPORT                        R17 K11 [pcall]
      116 NEWCLOSURE                       R18 P1
      117 CAPTURE                          VAL R14
      118 CALL                             R17 1 2
      119 JUMPIFNOT                        R17 ; [+7]
      120 FASTCALL1                        TYPEOF R18 ; [+3]
      121 MOVE                             R20 R18
      122 GETIMPORT                        R19 K13 [typeof]
      124 CALL                             R19 1 1
      125 JUMPIFEQKS                       R19 K14 ["string"] ; [+3]
      127 LOADNIL                          R16
      128 JUMP                             ; [+1]
      129 MOVE                             R16 R18
      130 SETTABLEKS                       R16 R15 K8 ["uniqueId"]
      132 SETTABLE                         R15 R5 R12
      133 FORGLOOP                         R7 2 ; [-54]
      135 GETUPVAL                         R7 7
      136 MOVE                             R8 R2
      137 CALL                             R7 1 0
      138 NAMECALL                         R7 R2 K18 ["GetChildren"]
      140 CALL                             R7 1 3
      141 FORGPREP                         R7
      142 GETTABLE                         R12 R5 R11
      143 JUMPIFNOTEQKNIL                  R12 ; [+52]
      145 LOADK                            R14 K19 ["BasePart"]
      146 NAMECALL                         R12 R11 K20 ["IsA"]
      148 CALL                             R12 2 1
      149 JUMPIF                           R12 ; [+15]
      150 LOADK                            R14 K21 ["Model"]
      151 NAMECALL                         R12 R11 K20 ["IsA"]
      153 CALL                             R12 2 1
      154 JUMPIFNOT                        R12 ; [+9]
      155 LOADK                            R15 K19 ["BasePart"]
      156 LOADB                            R16 1
      157 NAMECALL                         R13 R11 K22 ["FindFirstChildWhichIsA"]
      159 CALL                             R13 3 1
      160 JUMPIFNOTEQKNIL                  R13 ; [+2]
      162 LOADB                            R12 0 +1
      163 LOADB                            R12 1
      164 JUMPIFNOT                        R12 ; [+31]
      165 GETUPVAL                         R12 6
      166 MOVE                             R13 R11
      167 LOADK                            R14 K23 ["Body"]
      168 CALL                             R12 2 0
      169 GETTABLE                         R12 R3 R11
      170 DUPTABLE                         R13 K25 [{["path"], ["classification"] = "Body", ["source"] = "default", ["uniqueId"]}]
      171 GETUPVAL                         R14 2
      172 MOVE                             R15 R0
      173 MOVE                             R16 R12
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K3 ["path"]
      177 GETIMPORT                        R15 K11 [pcall]
      179 NEWCLOSURE                       R16 P1
      180 CAPTURE                          VAL R12
      181 CALL                             R15 1 2
      182 JUMPIFNOT                        R15 ; [+7]
      183 FASTCALL1                        TYPEOF R16 ; [+3]
      184 MOVE                             R18 R16
      185 GETIMPORT                        R17 K13 [typeof]
      187 CALL                             R17 1 1
      188 JUMPIFEQKS                       R17 K14 ["string"] ; [+3]
      190 LOADNIL                          R14
      191 JUMP                             ; [+1]
      192 MOVE                             R14 R16
      193 SETTABLEKS                       R14 R13 K8 ["uniqueId"]
      195 SETTABLE                         R13 R5 R11
      196 FORGLOOP                         R7 2 ; [-55]
      198 NEWTABLE                         R7 0 0
      200 NAMECALL                         R8 R2 K18 ["GetChildren"]
      202 CALL                             R8 1 3
      203 FORGPREP                         R8
      204 GETTABLE                         R13 R5 R12
      205 JUMPIFEQKNIL                     R13 ; [+8]
      207 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      209 MOVE                             R15 R7
      210 MOVE                             R16 R13
      211 GETIMPORT                        R14 K28 [table.insert]
      213 CALL                             R14 2 0
      214 FORGLOOP                         R8 2 ; [-11]
      216 MOVE                             R8 R2
      217 MOVE                             R9 R7
      218 RETURN                           R8 2

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["prepareModel"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 2
       10 NAMECALL                         R4 R2 K1 ["Destroy"]
       12 CALL                             R4 1 0
       13 RETURN                           R3 1

PROTO_17:
        0 DUPTABLE                         R1 K6 [{[1] = 0, ["Layered"] = 0, ["EyeLayered"] = 0, ["Rigid"] = 0, ["Avatar"] = 0}]
        1 NAMECALL                         R2 R0 K7 ["GetChildren"]
        3 CALL                             R2 1 3
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K8 ["getClassification"]
        8 GETTABLEKS                       R8 R6 K9 ["Name"]
       10 CALL                             R7 1 1
       11 JUMPIFEQKNIL                     R7 ; [+5]
       13 GETTABLE                         R8 R1 R7
       14 ADDK                             R8 R8 K10 [1]
       15 SETTABLE                         R8 R1 R7
       16 JUMP                             ; [+25]
       17 LOADK                            R10 K11 ["BasePart"]
       18 NAMECALL                         R8 R6 K12 ["IsA"]
       20 CALL                             R8 2 1
       21 JUMPIF                           R8 ; [+15]
       22 LOADK                            R10 K13 ["Model"]
       23 NAMECALL                         R8 R6 K12 ["IsA"]
       25 CALL                             R8 2 1
       26 JUMPIFNOT                        R8 ; [+9]
       27 LOADK                            R11 K11 ["BasePart"]
       28 LOADB                            R12 1
       29 NAMECALL                         R9 R6 K14 ["FindFirstChildWhichIsA"]
       31 CALL                             R9 3 1
       32 JUMPIFNOTEQKNIL                  R9 ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 JUMPIFNOT                        R8 ; [+5]
       37 GETTABLEKS                       R8 R1 K5 ["Avatar"]
       39 ADDK                             R8 R8 K10 [1]
       40 SETTABLEKS                       R8 R1 K5 ["Avatar"]
       42 FORGLOOP                         R2 2 ; [-38]
       44 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarAutoSetup"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetClassificationUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["AvatarAutoSetup"]
       26 GETTABLEKS                       R3 R3 K10 ["BodyRecognitionUtils"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K7 ["Util"]
       35 GETTABLEKS                       R4 R4 K8 ["AvatarAutoSetup"]
       37 GETTABLEKS                       R4 R4 K11 ["Types"]
       39 CALL                             R3 1 1
       40 NEWTABLE                         R4 4 0
       42 DUPTABLE                         R5 K17 [{["Body"] = True, ["Layered"] = True, ["EyeLayered"] = True, ["Rigid"] = True}]
       43 DUPCLOSURE                       R6 K18 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R7 K19 [PROTO_1]
       46 DUPCLOSURE                       R8 K20 [PROTO_2]
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R2
       49 DUPCLOSURE                       R9 K21 [PROTO_3]
       50 CAPTURE                          VAL R8
       51 DUPCLOSURE                       R10 K22 [PROTO_4]
       52 DUPCLOSURE                       R11 K23 [PROTO_5]
       53 CAPTURE                          VAL R10
       54 DUPCLOSURE                       R12 K24 [PROTO_7]
       55 DUPCLOSURE                       R13 K25 [PROTO_8]
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R10
       58 DUPCLOSURE                       R14 K26 [PROTO_9]
       59 CAPTURE                          VAL R13
       60 CAPTURE                          VAL R5
       61 DUPCLOSURE                       R15 K27 [PROTO_10]
       62 CAPTURE                          VAL R15
       63 DUPCLOSURE                       R16 K28 [PROTO_11]
       64 CAPTURE                          VAL R16
       65 DUPCLOSURE                       R17 K29 [PROTO_12]
       66 CAPTURE                          VAL R16
       67 DUPCLOSURE                       R18 K30 [PROTO_13]
       68 DUPCLOSURE                       R19 K31 [PROTO_15]
       69 CAPTURE                          VAL R15
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R16
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R18
       77 SETTABLEKS                       R19 R4 K32 ["prepareModel"]
       79 DUPCLOSURE                       R19 K33 [PROTO_16]
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R19 R4 K34 ["getClassificationPlan"]
       83 DUPCLOSURE                       R19 K35 [PROTO_17]
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R19 R4 K36 ["countClassifications"]
       87 RETURN                           R4 1
