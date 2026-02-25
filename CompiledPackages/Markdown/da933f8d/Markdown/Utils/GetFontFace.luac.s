PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["GetFontFace is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 MOVE                             R1 R0
        9 JUMPIFNOT                        R1 ; [+2]
       10 GETTABLEKS                       R1 R0 K3 ["Font"]
       12 FASTCALL1                        TYPEOF R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K5 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K6 ["EnumItem"] ; [+11]
       19 LOADK                            R4 K3 ["Font"]
       20 NAMECALL                         R2 R1 K7 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETIMPORT                        R2 K9 [Font.fromEnum]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Utils"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["FFlagMarkdownStudioThemeColors"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
