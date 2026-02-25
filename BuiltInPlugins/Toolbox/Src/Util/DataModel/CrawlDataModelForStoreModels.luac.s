PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SourceAssetId"]
        3 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 1
        2 NEWTABLE                         R3 0 2
        4 MOVE                             R4 R0
        5 LOADN                            R5 255
        6 SETLIST                          R3 R4 2 [1]
        8 SETLIST                          R2 R3 1 [1]
       10 LENGTH                           R3 R2
       11 LOADN                            R4 0
       12 JUMPIFNOTLT                      R4 R3 ; [+59]
       14 GETIMPORT                        R3 K2 [table.remove]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 GETTABLEN                        R4 R3 1
       19 GETTABLEN                        R5 R3 2
       20 GETIMPORT                        R6 K4 [pcall]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R4
       24 CALL                             R6 1 2
       25 JUMPIFNOT                        R6 ; [+18]
       26 FASTCALL1                        TYPE R7 ; [+3]
       27 MOVE                             R9 R7
       28 GETIMPORT                        R8 K6 [type]
       30 CALL                             R8 1 1
       31 JUMPIFNOTEQKS                    R8 K7 ["number"] ; [+12]
       33 LOADN                            R8 0
       34 JUMPIFNOTLT                      R8 R7 ; [+9]
       36 FASTCALL1                        MATH_FLOOR R7 ; [+3]
       37 MOVE                             R9 R7
       38 GETIMPORT                        R8 K10 [math.floor]
       40 CALL                             R8 1 1
       41 JUMPIFNOTEQ                      R8 R7 ; [+2]
       43 MOVE                             R5 R7
       44 LOADN                            R8 0
       45 JUMPIFNOTLT                      R8 R5 ; [+5]
       47 MOVE                             R8 R1
       48 MOVE                             R9 R4
       49 MOVE                             R10 R5
       50 CALL                             R8 2 0
       51 NAMECALL                         R8 R4 K11 ["GetChildren"]
       53 CALL                             R8 1 1
       54 LENGTH                           R11 R8
       55 LOADN                            R9 1
       56 LOADN                            R10 255
       57 FORNPREP                         R9
       58 NEWTABLE                         R14 0 2
       60 GETTABLE                         R15 R8 R11
       61 MOVE                             R16 R5
       62 SETLIST                          R14 R15 2 [1]
       64 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       66 MOVE                             R13 R2
       67 GETIMPORT                        R12 K13 [table.insert]
       69 CALL                             R12 2 0
       70 FORNLOOP                         R9
       71 JUMPBACK                         ; [-62]
       72 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["SharedFlags"]
       15 GETTABLEKS                       R2 R3 K9 ["getFFlagToolboxCapabilities"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+2]
       21 DUPCLOSURE                       R2 K10 [PROTO_1]
       22 RETURN                           R2 1
       23 DUPCLOSURE                       R2 K11 [PROTO_2]
       24 RETURN                           R2 1
