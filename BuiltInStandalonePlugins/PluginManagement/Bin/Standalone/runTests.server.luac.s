PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADN                            R2 0
        7 NAMECALL                         R0 R0 K4 ["ExitAsync"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["defineLuaFlags"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K5 ["Src"]
       20 GETTABLEKS                       R2 R0 K8 ["Packages"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K5 ["Src"]
       26 GETTABLEKS                       R4 R4 K9 ["Util"]
       28 GETTABLEKS                       R4 R4 K10 ["isCli"]
       30 CALL                             R3 1 1
       31 LOADB                            R4 0
       32 MOVE                             R5 R3
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+1]
       35 LOADB                            R4 1
       36 JUMPIFNOT                        R4 ; [+37]
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Packages"]
       41 GETTABLEKS                       R6 R6 K11 ["Dev"]
       43 GETTABLEKS                       R6 R6 K12 ["TestEZ"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K13 ["TestBootstrap"]
       48 GETTABLEKS                       R7 R5 K14 ["Reporters"]
       50 GETTABLEKS                       R7 R7 K15 ["TextReporterQuiet"]
       52 GETIMPORT                        R8 K17 [print]
       54 LOADK                            R10 K18 ["----- All "]
       55 GETTABLEKS                       R11 R0 K19 ["Name"]
       57 LOADK                            R12 K20 [" Tests ------"]
       58 CONCAT                           R9 R10 R12
       59 CALL                             R8 1 0
       60 NEWTABLE                         R10 0 2
       62 MOVE                             R11 R1
       63 MOVE                             R12 R2
       64 SETLIST                          R10 R11 2 [1]
       66 MOVE                             R11 R7
       67 NAMECALL                         R8 R6 K21 ["run"]
       69 CALL                             R8 3 0
       70 GETIMPORT                        R8 K17 [print]
       72 LOADK                            R9 K22 ["----------------------------------"]
       73 CALL                             R8 1 0
       74 MOVE                             R5 R3
       75 CALL                             R5 0 1
       76 JUMPIFNOT                        R5 ; [+4]
       77 GETIMPORT                        R5 K24 [pcall]
       79 DUPCLOSURE                       R6 K25 [PROTO_0]
       80 CALL                             R5 1 0
       81 RETURN                           R0 0
