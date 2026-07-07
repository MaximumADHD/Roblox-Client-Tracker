PROTO_0:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [debug.profilebegin]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K5 [table.pack]
        7 GETUPVAL                         R1 1
        8 GETVARARGS                       R2 -1
        9 CALL                             R1 -1 -1
       10 CALL                             R0 -1 1
       11 GETIMPORT                        R1 K7 [debug.profileend]
       13 CALL                             R1 0 0
       14 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K9 [table.unpack]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 CLOSEUPVALS                      R1
        4 RETURN                           R0 1
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+5]
        7 GETIMPORT                        R2 K2 [debug.info]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K3 ["n"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 LOADB                            R3 0
       14 JUMPIFEQKNIL                     R1 ; [+5]
       16 JUMPIFNOTEQKS                    R1 K4 [""] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       22 LOADK                            R4 K5 ["No label specified, and no name could be derived"]
       23 GETIMPORT                        R2 K7 [assert]
       25 CALL                             R2 2 0
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          REF R1
       28 CAPTURE                          VAL R0
       29 CLOSEUPVALS                      R1
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagDebugExplorerProfiling"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
