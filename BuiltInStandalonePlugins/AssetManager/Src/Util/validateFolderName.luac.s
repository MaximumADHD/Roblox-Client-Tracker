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

PROTO_1:
        0 GETIMPORT                        R1 K2 [utf8.codes]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETIMPORT                        R6 K4 [utf8.char]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K5 ["FolderForbiddenChars"]
       12 GETTABLE                         R7 R8 R6
       13 JUMPIFNOT                        R7 ; [+2]
       14 LOADB                            R7 0
       15 RETURN                           R7 1
       16 LOADN                            R7 0
       17 JUMPIFNOTLE                      R7 R5 ; [+4]
       19 LOADN                            R7 31
       20 JUMPIFLE                         R5 R7 ; [+9]
       22 JUMPIFEQKN                       R5 K6 [127] ; [+7]
       24 LOADN                            R7 128
       25 JUMPIFNOTLE                      R7 R5 ; [+6]
       27 LOADN                            R7 159
       28 JUMPIFNOTLE                      R5 R7 ; [+3]
       30 LOADB                            R7 0
       31 RETURN                           R7 1
       32 FORGLOOP                         R1 2 ; [-28]
       34 GETIMPORT                        R1 K9 [string.match]
       36 MOVE                             R2 R0
       37 LOADK                            R3 K10 ["%.%s*$"]
       38 CALL                             R1 2 1
       39 JUMPIFNOT                        R1 ; [+2]
       40 LOADB                            R1 0
       41 RETURN                           R1 1
       42 LOADB                            R1 1
       43 RETURN                           R1 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagAmrFixFolderNameValidation"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 MOVE                             R6 R2
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+2]
       32 MOVE                             R5 R4
       33 RETURN                           R5 1
       34 MOVE                             R5 R3
       35 RETURN                           R5 1
