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
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Bin"]
       11 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K4 [require]
       16 GETTABLEKS                       R2 R0 K5 ["Bin"]
       18 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioFixPluginManagementPluginTests"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R0 K8 ["Src"]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 LOADNIL                          R4
       26 MOVE                             R5 R1
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Bin"]
       33 GETTABLEKS                       R6 R6 K10 ["isCli"]
       35 CALL                             R5 1 1
       36 MOVE                             R4 R5
       37 LOADB                            R5 0
       38 MOVE                             R6 R1
       39 CALL                             R6 0 1
       40 JUMPIFNOT                        R6 ; [+4]
       41 MOVE                             R6 R4
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+1]
       44 LOADB                            R5 1
       45 JUMPIFNOT                        R5 ; [+37]
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Packages"]
       50 GETTABLEKS                       R7 R7 K11 ["Dev"]
       52 GETTABLEKS                       R7 R7 K12 ["TestEZ"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R6 K13 ["TestBootstrap"]
       57 GETTABLEKS                       R8 R6 K14 ["Reporters"]
       59 GETTABLEKS                       R8 R8 K15 ["TextReporterQuiet"]
       61 GETIMPORT                        R9 K17 [print]
       63 LOADK                            R11 K18 ["----- All "]
       64 GETTABLEKS                       R12 R0 K19 ["Name"]
       66 LOADK                            R13 K20 [" Tests ------"]
       67 CONCAT                           R10 R11 R13
       68 CALL                             R9 1 0
       69 NEWTABLE                         R11 0 2
       71 MOVE                             R12 R2
       72 MOVE                             R13 R3
       73 SETLIST                          R11 R12 2 [1]
       75 MOVE                             R12 R8
       76 NAMECALL                         R9 R7 K21 ["run"]
       78 CALL                             R9 3 0
       79 GETIMPORT                        R9 K17 [print]
       81 LOADK                            R10 K22 ["----------------------------------"]
       82 CALL                             R9 1 0
       83 MOVE                             R6 R1
       84 CALL                             R6 0 1
       85 JUMPIFNOT                        R6 ; [+7]
       86 MOVE                             R6 R4
       87 CALL                             R6 0 1
       88 JUMPIFNOT                        R6 ; [+4]
       89 GETIMPORT                        R6 K24 [pcall]
       91 DUPCLOSURE                       R7 K25 [PROTO_0]
       92 CALL                             R6 1 0
       93 RETURN                           R0 0
