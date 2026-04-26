PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["key"]
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 LOADB                            R3 0
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K2 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+11]
       18 GETTABLEKS                       R5 R1 K4 ["AutoUpdate"]
       20 FASTCALL1                        TYPEOF R5 ; [+2]
       21 GETIMPORT                        R4 K2 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFEQKS                       R4 K5 ["boolean"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       30 LOADK                            R4 K6 ["Expected packageLinkStatus to be a table with a boolean AutoUpdate field"]
       31 GETIMPORT                        R2 K8 [assert]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R1 K4 ["AutoUpdate"]
       36 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Fields"]
       11 GETTABLEKS                       R3 R4 K7 ["AllFields"]
       13 GETTABLEKS                       R2 R3 K8 ["PackageLinkStatus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["getField"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K12 ["useVisibleExplorerNodeRange"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
