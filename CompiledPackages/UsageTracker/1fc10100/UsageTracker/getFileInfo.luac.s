PROTO_0:
        0 GETIMPORT                        R3 K1 [game]
        2 GETIMPORT                        R4 K4 [string.split]
        4 MOVE                             R5 R0
        5 LOADK                            R6 K5 ["."]
        6 CALL                             R4 2 3
        7 FORGPREP                         R4
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 JUMP                             ; [+7]
       11 MOVE                             R11 R8
       12 NAMECALL                         R9 R3 K6 ["FindFirstChild"]
       14 CALL                             R9 2 1
       15 MOVE                             R3 R9
       16 FORGLOOP                         R4 2 ; [-9]
       18 FASTCALL1                        TYPEOF R3 ; [+3]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K8 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K9 ["Instance"] ; [+6]
       25 LOADK                            R6 K10 ["ModuleScript"]
       26 NAMECALL                         R4 R3 K11 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIF                           R4 ; [+8]
       30 GETIMPORT                        R4 K13 [warn]
       32 LOADK                            R5 K14 ["path led to non-ModuleScript:"]
       33 MOVE                             R6 R0
       34 GETTABLEKS                       R7 R3 K15 ["ClassName"]
       36 CALL                             R4 3 0
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 JUMPIFNOT                        R3 ; [+26]
       40 GETUPVAL                         R5 0
       41 MOVE                             R7 R3
       42 NAMECALL                         R5 R5 K16 ["GetScriptFilePath"]
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 JUMPIFNOT                        R1 ; [+19]
       47 GETIMPORT                        R5 K18 [string.find]
       49 MOVE                             R6 R4
       50 MOVE                             R7 R1
       51 LOADN                            R8 1
       52 LOADB                            R9 1
       53 CALL                             R5 4 2
       54 JUMPIFNOT                        R5 ; [+11]
       55 JUMPIFNOT                        R2 ; [+2]
       56 MOVE                             R9 R5
       57 JUMP                             ; [+1]
       58 ADDK                             R9 R6 K19 [1]
       59 FASTCALL2                        STRING_SUB R4 R9 ; [+4]
       61 MOVE                             R8 R4
       62 GETIMPORT                        R7 K21 [string.sub]
       64 CALL                             R7 2 1
       65 MOVE                             R4 R7
       66 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreScriptSyncService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
