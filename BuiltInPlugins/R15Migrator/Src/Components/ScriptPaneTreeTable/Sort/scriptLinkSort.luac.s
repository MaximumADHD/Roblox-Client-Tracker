PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Range"]
        2 GETTABLEKS                       R4 R1 K0 ["Range"]
        4 GETIMPORT                        R5 K4 [Enum.SortDirection.Descending]
        6 JUMPIFNOTEQ                      R2 R5 ; [+23]
        8 JUMPIFNOT                        R3 ; [+6]
        9 JUMPIFNOT                        R4 ; [+5]
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R3 K5 ["__lt"]
       13 CALL                             R5 2 -1
       14 RETURN                           R5 -1
       15 GETTABLEKS                       R6 R0 K6 ["Script"]
       17 NAMECALL                         R6 R6 K7 ["GetFullName"]
       19 CALL                             R6 1 1
       20 GETTABLEKS                       R7 R1 K6 ["Script"]
       22 NAMECALL                         R7 R7 K7 ["GetFullName"]
       24 CALL                             R7 1 1
       25 JUMPIFLT                         R6 R7 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 RETURN                           R5 1
       30 JUMPIFNOT                        R3 ; [+7]
       31 JUMPIFNOT                        R4 ; [+6]
       32 MOVE                             R8 R4
       33 NAMECALL                         R6 R3 K8 ["__le"]
       35 CALL                             R6 2 1
       36 NOT                              R5 R6
       37 RETURN                           R5 1
       38 GETTABLEKS                       R6 R0 K6 ["Script"]
       40 NAMECALL                         R6 R6 K7 ["GetFullName"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K6 ["Script"]
       45 NAMECALL                         R7 R7 K7 ["GetFullName"]
       47 CALL                             R7 1 1
       48 JUMPIFLT                         R7 R6 ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ScriptAnalysis"]
       15 GETTABLEKS                       R2 R2 K9 ["Range"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_0]
       19 RETURN                           R2 1
