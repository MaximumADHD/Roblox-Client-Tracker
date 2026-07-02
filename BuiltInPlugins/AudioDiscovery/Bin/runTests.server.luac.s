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
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K4 [require]
       18 GETIMPORT                        R2 K1 [script]
       20 GETTABLEKS                       R2 R2 K2 ["Parent"]
       22 GETTABLEKS                       R2 R2 K6 ["commonInit"]
       24 CALL                             R1 1 1
       25 MOVE                             R2 R1
       26 CALL                             R2 0 0
       27 GETIMPORT                        R2 K4 [require]
       29 GETTABLEKS                       R3 R0 K7 ["Src"]
       31 GETTABLEKS                       R3 R3 K8 ["Util"]
       33 GETTABLEKS                       R3 R3 K9 ["DebugFlags"]
       35 CALL                             R2 1 1
       36 GETTABLEKS                       R3 R2 K10 ["RunningUnderCLI"]
       38 CALL                             R3 0 1
       39 JUMPIF                           R3 ; [+4]
       40 GETTABLEKS                       R3 R2 K11 ["RunTests"]
       42 CALL                             R3 0 1
       43 JUMPIFNOT                        R3 ; [+63]
       44 GETIMPORT                        R3 K13 [game]
       46 LOADK                            R5 K14 ["RetireAudioDiscoveryPlugin"]
       47 NAMECALL                         R3 R3 K15 ["GetFastFlag"]
       49 CALL                             R3 2 1
       50 JUMPIF                           R3 ; [+56]
       51 GETIMPORT                        R3 K4 [require]
       53 GETTABLEKS                       R4 R0 K16 ["Packages"]
       55 GETTABLEKS                       R4 R4 K17 ["Dev"]
       57 GETTABLEKS                       R4 R4 K18 ["TestEZ"]
       59 CALL                             R3 1 1
       60 GETTABLEKS                       R4 R3 K19 ["TestBootstrap"]
       62 GETTABLEKS                       R5 R3 K20 ["Reporters"]
       64 GETTABLEKS                       R5 R5 K21 ["TeamCityReporter"]
       66 GETTABLEKS                       R6 R3 K20 ["Reporters"]
       68 GETTABLEKS                       R6 R6 K22 ["TextReporter"]
       70 GETIMPORT                        R9 K25 [_G]
       72 GETTABLEKS                       R8 R9 K23 ["TEAMCITY"]
       74 JUMPIFNOT                        R8 ; [+2]
       75 MOVE                             R7 R5
       76 JUMPIF                           R7 ; [+1]
       77 MOVE                             R7 R6
       78 GETTABLEKS                       R8 R0 K7 ["Src"]
       80 DUPTABLE                         R9 K31 [{["showTimingInfo"] = False, ["testNamePattern"] = , ["extraEnvironment"]}]
       81 NEWTABLE                         R10 0 0
       83 SETTABLEKS                       R10 R9 K30 ["extraEnvironment"]
       85 GETIMPORT                        R10 K33 [print]
       87 LOADK                            R12 K34 ["----- All "]
       88 GETTABLEKS                       R13 R0 K35 ["Name"]
       90 LOADK                            R14 K36 [" Tests ------"]
       91 CONCAT                           R11 R12 R14
       92 CALL                             R10 1 0
       93 NEWTABLE                         R12 0 1
       95 MOVE                             R13 R8
       96 SETLIST                          R12 R13 1 [1]
       98 MOVE                             R13 R7
       99 MOVE                             R14 R9
      100 NAMECALL                         R10 R4 K37 ["run"]
      102 CALL                             R10 4 0
      103 GETIMPORT                        R10 K33 [print]
      105 LOADK                            R11 K38 ["----------------------------------"]
      106 CALL                             R10 1 0
      107 GETTABLEKS                       R3 R2 K10 ["RunningUnderCLI"]
      109 CALL                             R3 0 1
      110 JUMPIFNOT                        R3 ; [+4]
      111 GETIMPORT                        R3 K40 [pcall]
      113 DUPCLOSURE                       R4 K41 [PROTO_0]
      114 CALL                             R3 1 0
      115 RETURN                           R0 0
