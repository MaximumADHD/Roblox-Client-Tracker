PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K1 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+51]
       25 FASTCALL1                        TYPEOF R1 ; [+3]
       26 MOVE                             R5 R1
       27 GETIMPORT                        R4 K1 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       36 LOADK                            R4 K3 ["Luau"]
       37 GETIMPORT                        R2 K5 [assert]
       39 CALL                             R2 2 0
       40 LENGTH                           R2 R0
       41 LENGTH                           R3 R1
       42 JUMPIFEQ                         R2 R3 ; [+3]
       44 LOADB                            R2 0
       45 RETURN                           R2 1
       46 MOVE                             R2 R0
       47 LOADNIL                          R3
       48 LOADNIL                          R4
       49 FORGPREP                         R2
       50 GETTABLE                         R7 R0 R5
       51 GETTABLE                         R8 R1 R5
       52 JUMPIFEQ                         R7 R8 ; [+3]
       54 LOADB                            R7 0
       55 RETURN                           R7 1
       56 FORGLOOP                         R2 1 ; [-7]
       58 MOVE                             R2 R1
       59 LOADNIL                          R3
       60 LOADNIL                          R4
       61 FORGPREP                         R2
       62 GETTABLE                         R7 R0 R5
       63 GETTABLE                         R8 R1 R5
       64 JUMPIFEQ                         R7 R8 ; [+3]
       66 LOADB                            R7 0
       67 RETURN                           R7 1
       68 FORGLOOP                         R2 1 ; [-7]
       70 GETUPVAL                         R2 0
       71 CALL                             R2 0 1
       72 JUMPIFNOT                        R2 ; [+2]
       73 LOADB                            R2 1
       74 RETURN                           R2 1
       75 GETUPVAL                         R2 0
       76 CALL                             R2 0 1
       77 JUMPIFNOT                        R2 ; [+5]
       78 JUMPIFEQ                         R0 R1 ; [+2]
       80 LOADB                            R2 0 +1
       81 LOADB                            R2 1
       82 RETURN                           R2 1
       83 LOADB                            R2 1
       84 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAvatarPreviewerFixShallowEqual"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
