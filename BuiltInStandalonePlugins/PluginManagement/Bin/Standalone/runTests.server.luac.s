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
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["isCli"]
       28 CALL                             R2 1 1
       29 LOADB                            R3 0
       30 MOVE                             R4 R2
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+1]
       33 LOADB                            R3 1
       34 JUMPIFNOT                        R3 ; [+36]
       35 GETIMPORT                        R4 K4 [require]
       37 GETTABLEKS                       R5 R0 K10 ["Packages"]
       39 GETTABLEKS                       R5 R5 K11 ["Dev"]
       41 GETTABLEKS                       R5 R5 K12 ["TestEZ"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K13 ["TestBootstrap"]
       46 GETTABLEKS                       R6 R4 K14 ["Reporters"]
       48 GETTABLEKS                       R6 R6 K15 ["TextReporterQuiet"]
       50 GETIMPORT                        R7 K17 [print]
       52 LOADK                            R9 K18 ["----- All "]
       53 GETTABLEKS                       R10 R0 K19 ["Name"]
       55 LOADK                            R11 K20 [" Tests ------"]
       56 CONCAT                           R8 R9 R11
       57 CALL                             R7 1 0
       58 NEWTABLE                         R9 0 1
       60 MOVE                             R10 R1
       61 SETLIST                          R9 R10 1 [1]
       63 MOVE                             R10 R6
       64 NAMECALL                         R7 R5 K21 ["run"]
       66 CALL                             R7 3 0
       67 GETIMPORT                        R7 K17 [print]
       69 LOADK                            R8 K22 ["----------------------------------"]
       70 CALL                             R7 1 0
       71 MOVE                             R4 R2
       72 CALL                             R4 0 1
       73 JUMPIFNOT                        R4 ; [+4]
       74 GETIMPORT                        R4 K24 [pcall]
       76 DUPCLOSURE                       R5 K25 [PROTO_0]
       77 CALL                             R4 1 0
       78 RETURN                           R0 0
