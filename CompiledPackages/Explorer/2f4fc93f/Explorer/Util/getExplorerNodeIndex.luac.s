PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["parent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADN                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K1 ["children"]
        8 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       10 MOVE                             R4 R2
       11 LOADK                            R5 K2 ["Parent has no children"]
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R2 K5 ["array"]
       17 JUMPIFNOT                        R3 ; [+24]
       18 LOADN                            R4 1
       19 LOADN                            R5 1
       20 GETTABLE                         R6 R3 R4
       21 ADDK                             R4 R4 K6 [1]
       22 JUMPIFNOTEQKNIL                  R6 ; [+6]
       24 GETIMPORT                        R7 K8 [error]
       26 LOADK                            R8 K9 ["Explorer node not found in parent's children"]
       27 CALL                             R7 1 0
       28 JUMP                             ; [+7]
       29 JUMPIFNOTEQ                      R6 R0 ; [+2]
       31 JUMP                             ; [+5]
       32 GETUPVAL                         R7 0
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 ADD                              R5 R5 R7
       36 JUMPBACK                         ; [-17]
       37 GETUPVAL                         R7 1
       38 MOVE                             R8 R1
       39 CALL                             R7 1 1
       40 ADD                              R6 R7 R5
       41 RETURN                           R6 1
       42 GETTABLEKS                       R4 R2 K10 ["tree"]
       44 JUMPIFNOT                        R4 ; [+34]
       45 MOVE                             R4 R0
       46 GETTABLEKS                       R5 R4 K11 ["childNodeParent"]
       48 LOADN                            R6 1
       49 GETTABLEKS                       R7 R4 K12 ["childNodeLeft"]
       51 JUMPIFNOT                        R7 ; [+5]
       52 GETTABLEKS                       R7 R4 K12 ["childNodeLeft"]
       54 GETTABLEKS                       R7 R7 K13 ["childNodeTreeCount"]
       56 ADD                              R6 R6 R7
       57 JUMPIFNOT                        R5 ; [+16]
       58 GETTABLEKS                       R7 R5 K12 ["childNodeLeft"]
       60 JUMPIFEQ                         R4 R7 ; [+9]
       62 GETUPVAL                         R8 0
       63 MOVE                             R9 R5
       64 CALL                             R8 1 1
       65 ADD                              R6 R6 R8
       66 JUMPIFNOT                        R7 ; [+3]
       67 GETTABLEKS                       R8 R7 K13 ["childNodeTreeCount"]
       69 ADD                              R6 R6 R8
       70 MOVE                             R4 R5
       71 GETTABLEKS                       R5 R5 K11 ["childNodeParent"]
       73 JUMPBACK                         ; [-17]
       74 GETUPVAL                         R8 1
       75 MOVE                             R9 R1
       76 CALL                             R8 1 1
       77 ADD                              R7 R8 R6
       78 RETURN                           R7 1
       79 LOADN                            R4 1
       80 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["getTreeCount"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Util"]
       23 GETTABLEKS                       R4 R4 K9 ["profile"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 MOVE                             R5 R3
       30 MOVE                             R6 R4
       31 CALL                             R5 1 -1
       32 RETURN                           R5 -1
