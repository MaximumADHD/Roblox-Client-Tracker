PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["getIndexOfInstanceId"]
        2 MOVE                             R5 R2
        3 CALL                             R4 1 1
        4 GETTABLEKS                       R5 R0 K0 ["getIndexOfInstanceId"]
        6 MOVE                             R6 R3
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKNIL                  R4 ; [+10]
       10 GETIMPORT                        R6 K2 [error]
       12 LOADK                            R8 K3 ["Could not find fromIndex (%*)"]
       13 MOVE                             R10 R2
       14 NAMECALL                         R8 R8 K4 ["format"]
       16 CALL                             R8 2 1
       17 MOVE                             R7 R8
       18 CALL                             R6 1 0
       19 JUMPIFNOTEQKNIL                  R5 ; [+10]
       21 GETIMPORT                        R6 K2 [error]
       23 LOADK                            R8 K5 ["Could not find toIndex (%*)"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K4 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 CALL                             R6 1 0
       30 JUMPIFEQKN                       R4 K6 [0] ; [+3]
       32 JUMPIFNOTEQKN                    R5 K6 [0] ; [+2]
       34 RETURN                           R0 0
       35 NEWTABLE                         R6 0 0
       37 GETTABLEKS                       R8 R1 K7 ["getFocusedRootState"]
       39 CALL                             R8 0 1
       40 GETTABLEKS                       R8 R8 K8 ["instanceIdsToNodes"]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K9 ["rootId"]
       45 GETTABLE                         R7 R8 R9
       46 JUMPIFNOTEQKNIL                  R7 ; [+2]
       48 LOADB                            R9 0 +1
       49 LOADB                            R9 1
       50 FASTCALL2K                       ASSERT R9 K10 ; [+4]
       52 LOADK                            R10 K10 ["No root"]
       53 GETIMPORT                        R8 K12 [assert]
       55 CALL                             R8 2 0
       56 GETTABLEKS                       R9 R0 K13 ["getSearch"]
       58 CALL                             R9 0 1
       59 JUMPIFNOTEQKS                    R9 K14 [""] ; [+2]
       61 LOADB                            R8 0 +1
       62 LOADB                            R8 1
       63 MOVE                             R11 R4
       64 MOVE                             R9 R5
       65 JUMPIFNOTEQ                      R4 R5 ; [+3]
       67 LOADN                            R10 1
       68 JUMP                             ; [+6]
       69 SUB                              R13 R5 R4
       70 FASTCALL1                        MATH_SIGN R13 ; [+2]
       71 GETIMPORT                        R12 K17 [math.sign]
       73 CALL                             R12 1 1
       74 MOVE                             R10 R12
       75 FORNPREP                         R9
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R12 R12 K18 ["getNthDescendant"]
       79 GETTABLEKS                       R13 R7 K19 ["children"]
       81 MOVE                             R14 R11
       82 CALL                             R12 2 1
       83 JUMPIFEQKNIL                     R12 ; [+21]
       85 JUMPIFNOT                        R8 ; [+8]
       86 GETTABLEKS                       R13 R0 K20 ["isInstanceIdSearched"]
       88 GETTABLEKS                       R14 R12 K21 ["datum"]
       90 GETTABLEKS                       R14 R14 K22 ["id"]
       92 CALL                             R13 1 1
       93 JUMPIFNOT                        R13 ; [+10]
       94 GETTABLEKS                       R15 R12 K21 ["datum"]
       96 GETTABLEKS                       R15 R15 K22 ["id"]
       98 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
      100 MOVE                             R14 R6
      101 GETIMPORT                        R13 K25 [table.insert]
      103 CALL                             R13 2 0
      104 FORNLOOP                         R9
      105 GETTABLEKS                       R9 R0 K26 ["selectIds"]
      107 GETIMPORT                        R10 K28 [table.freeze]
      109 MOVE                             R11 R6
      110 CALL                             R10 1 -1
      111 CALL                             R9 -1 0
      112 RETURN                           R0 0

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
