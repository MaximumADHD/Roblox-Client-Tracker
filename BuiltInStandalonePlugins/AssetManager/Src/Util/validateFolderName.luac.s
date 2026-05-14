PROTO_0:
        0 LOADN                            R3 1
        1 LENGTH                           R1 R0
        2 LOADN                            R2 1
        3 FORNPREP                         R1
        4 FASTCALL3                        STRING_SUB R0 R3 R3
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 MOVE                             R7 R3
        9 GETIMPORT                        R4 K2 [string.sub]
       11 CALL                             R4 3 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K3 ["FolderForbiddenChars"]
       15 GETTABLE                         R5 R6 R4
       16 JUMPIFNOT                        R5 ; [+2]
       17 LOADB                            R5 0
       18 RETURN                           R5 1
       19 FASTCALL1                        STRING_BYTE R4 ; [+3]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K5 [string.byte]
       23 CALL                             R5 1 1
       24 LOADN                            R6 0
       25 JUMPIFNOTLE                      R6 R5 ; [+4]
       27 LOADN                            R6 31
       28 JUMPIFLE                         R5 R6 ; [+9]
       30 JUMPIFEQKN                       R5 K6 [127] ; [+7]
       32 LOADN                            R6 128
       33 JUMPIFNOTLE                      R6 R5 ; [+6]
       35 LOADN                            R6 159
       36 JUMPIFNOTLE                      R5 R6 ; [+3]
       38 LOADB                            R6 0
       39 RETURN                           R6 1
       40 FORNLOOP                         R1
       41 GETIMPORT                        R1 K8 [string.match]
       43 MOVE                             R2 R0
       44 LOADK                            R3 K9 ["%.%s*$"]
       45 CALL                             R1 2 1
       46 JUMPIFNOT                        R1 ; [+2]
       47 LOADB                            R1 0
       48 RETURN                           R1 1
       49 LOADB                            R1 1
       50 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
