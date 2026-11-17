PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["getIndexOfInstanceId"]
        2 MOVE                             R5 R2
        3 CALL                             R4 1 1
        4 GETTABLEKS                       R5 R0 K0 ["getIndexOfInstanceId"]
        6 MOVE                             R6 R3
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKNIL                  R4 ; [+9]
       10 GETIMPORT                        R6 K2 [error]
       12 LOADK                            R7 K3 ["Could not find fromIndex (%*)"]
       13 MOVE                             R9 R2
       14 NAMECALL                         R7 R7 K4 ["format"]
       16 CALL                             R7 2 1
       17 CALL                             R6 1 0
       18 JUMPIFNOTEQKNIL                  R5 ; [+9]
       20 GETIMPORT                        R6 K2 [error]
       22 LOADK                            R7 K5 ["Could not find toIndex (%*)"]
       23 MOVE                             R9 R3
       24 NAMECALL                         R7 R7 K4 ["format"]
       26 CALL                             R7 2 1
       27 CALL                             R6 1 0
       28 JUMPIFEQKN                       R4 K6 [0] ; [+3]
       30 JUMPIFNOTEQKN                    R5 K6 [0] ; [+2]
       32 RETURN                           R0 0
       33 NEWTABLE                         R6 0 0
       35 GETTABLEKS                       R8 R1 K7 ["getFocusedRootState"]
       37 CALL                             R8 0 1
       38 GETTABLEKS                       R8 R8 K8 ["instanceIdsToNodes"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K9 ["rootId"]
       43 GETTABLE                         R7 R8 R9
       44 JUMPIFNOTEQKNIL                  R7 ; [+2]
       46 LOADB                            R9 0 +1
       47 LOADB                            R9 1
       48 FASTCALL2K                       ASSERT R9 K10 ; [+4]
       50 LOADK                            R10 K10 ["No root"]
       51 GETIMPORT                        R8 K12 [assert]
       53 CALL                             R8 2 0
       54 GETTABLEKS                       R9 R0 K13 ["getSearch"]
       56 CALL                             R9 0 1
       57 JUMPIFNOTEQKS                    R9 K14 [""] ; [+2]
       59 LOADB                            R8 0 +1
       60 LOADB                            R8 1
       61 MOVE                             R11 R4
       62 MOVE                             R9 R5
       63 JUMPIFNOTEQ                      R4 R5 ; [+3]
       65 LOADN                            R10 1
       66 JUMP                             ; [+6]
       67 SUB                              R13 R5 R4
       68 FASTCALL1                        MATH_SIGN R13 ; [+2]
       69 GETIMPORT                        R12 K17 [math.sign]
       71 CALL                             R12 1 1
       72 MOVE                             R10 R12
       73 FORNPREP                         R9
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K18 ["getNthDescendant"]
       77 GETTABLEKS                       R13 R7 K19 ["children"]
       79 MOVE                             R14 R11
       80 CALL                             R12 2 1
       81 JUMPIFEQKNIL                     R12 ; [+21]
       83 JUMPIFNOT                        R8 ; [+8]
       84 GETTABLEKS                       R13 R0 K20 ["isInstanceIdSearched"]
       86 GETTABLEKS                       R14 R12 K21 ["datum"]
       88 GETTABLEKS                       R14 R14 K22 ["id"]
       90 CALL                             R13 1 1
       91 JUMPIFNOT                        R13 ; [+10]
       92 GETTABLEKS                       R15 R12 K21 ["datum"]
       94 GETTABLEKS                       R15 R15 K22 ["id"]
       96 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       98 MOVE                             R14 R6
       99 GETIMPORT                        R13 K25 [table.insert]
      101 CALL                             R13 2 0
      102 FORNLOOP                         R9
      103 GETTABLEKS                       R9 R0 K26 ["selectIds"]
      105 GETIMPORT                        R10 K28 [table.freeze]
      107 MOVE                             R11 R6
      108 CALL                             R10 1 -1
      109 CALL                             R9 -1 0
      110 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["ExplorerNodeChildrenMutable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Networking"]
       30 GETTABLEKS                       R5 R5 K11 ["createSession"]
       32 GETTABLEKS                       R5 R5 K12 ["createSessionTypes"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 RETURN                           R5 1
