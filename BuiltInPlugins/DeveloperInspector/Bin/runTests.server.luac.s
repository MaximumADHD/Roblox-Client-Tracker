PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADN                            R2 1
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 NAMECALL                         R0 R0 K4 ["ExitAsync"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Util"]
       13 GETTABLEKS                       R2 R2 K7 ["commonInit"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 GETTABLEKS                       R3 R2 K10 ["RunTests"]
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+124]
       35 GETIMPORT                        R3 K12 [_G]
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K13 ["__DEV__"]
       40 GETIMPORT                        R3 K12 [_G]
       42 LOADB                            R4 1
       43 SETTABLEKS                       R4 R3 K14 ["__ROACT_17_MOCK_SCHEDULER__"]
       45 GETIMPORT                        R3 K12 [_G]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K15 ["__ROACT_17_INLINE_ACT__"]
       50 GETIMPORT                        R3 K4 [require]
       52 GETTABLEKS                       R4 R0 K16 ["Packages"]
       54 GETTABLEKS                       R4 R4 K17 ["Dev"]
       56 GETTABLEKS                       R4 R4 K18 ["TestEZ"]
       58 CALL                             R3 1 1
       59 GETTABLEKS                       R4 R3 K19 ["TestBootstrap"]
       61 GETTABLEKS                       R5 R3 K20 ["Reporters"]
       63 GETTABLEKS                       R5 R5 K21 ["TeamCityReporter"]
       65 GETTABLEKS                       R6 R3 K20 ["Reporters"]
       67 GETTABLEKS                       R6 R6 K22 ["TextReporter"]
       69 GETTABLEKS                       R7 R2 K23 ["LogTestsQuiet"]
       71 CALL                             R7 0 1
       72 JUMPIFNOT                        R7 ; [+4]
       73 GETTABLEKS                       R7 R3 K20 ["Reporters"]
       75 GETTABLEKS                       R6 R7 K24 ["TextReporterQuiet"]
       77 GETIMPORT                        R9 K12 [_G]
       79 GETTABLEKS                       R8 R9 K25 ["TEAMCITY"]
       81 JUMPIFNOT                        R8 ; [+2]
       82 MOVE                             R7 R5
       83 JUMPIF                           R7 ; [+1]
       84 MOVE                             R7 R6
       85 MOVE                             R6 R7
       86 GETIMPORT                        R7 K27 [print]
       88 LOADK                            R9 K28 ["----- All "]
       89 GETIMPORT                        R10 K1 [script]
       91 GETTABLEKS                       R10 R10 K2 ["Parent"]
       93 GETTABLEKS                       R10 R10 K2 ["Parent"]
       95 GETTABLEKS                       R10 R10 K29 ["Name"]
       97 LOADK                            R11 K30 [" Tests ------"]
       98 CONCAT                           R8 R9 R11
       99 CALL                             R7 1 0
      100 GETIMPORT                        R7 K4 [require]
      102 GETIMPORT                        R8 K1 [script]
      104 GETTABLEKS                       R8 R8 K2 ["Parent"]
      106 GETTABLEKS                       R8 R8 K31 ["defineLuaFlags"]
      108 CALL                             R7 1 0
      109 NEWTABLE                         R9 0 1
      111 GETTABLEKS                       R10 R0 K5 ["Src"]
      113 SETLIST                          R9 R10 1 [1]
      115 MOVE                             R10 R6
      116 NAMECALL                         R7 R4 K32 ["run"]
      118 CALL                             R7 3 1
      119 GETIMPORT                        R8 K27 [print]
      121 LOADK                            R9 K33 ["----------------------------------"]
      122 CALL                             R8 1 0
      123 LOADB                            R8 0
      124 FASTCALL1                        TYPEOF R7 ; [+3]
      125 MOVE                             R10 R7
      126 GETIMPORT                        R9 K35 [typeof]
      128 CALL                             R9 1 1
      129 JUMPIFNOTEQKS                    R9 K36 ["table"] ; [+9]
      131 GETTABLEKS                       R10 R7 K38 ["failureCount"]
      133 ORK                              R9 R10 K37 [0]
      134 LOADN                            R10 0
      135 JUMPIFLT                         R10 R9 ; [+2]
      137 LOADB                            R8 0 +1
      138 LOADB                            R8 1
      139 JUMPIFNOT                        R8 ; [+10]
      140 GETIMPORT                        R9 K40 [game]
      142 LOADK                            R11 K41 ["TestService"]
      143 NAMECALL                         R9 R9 K42 ["GetService"]
      145 CALL                             R9 2 1
      146 LOADK                            R11 K43 ["TestEZ test run failed"]
      147 NAMECALL                         R9 R9 K44 ["Error"]
      149 CALL                             R9 2 0
      150 GETTABLEKS                       R9 R2 K9 ["RunningUnderCLI"]
      152 CALL                             R9 0 1
      153 JUMPIFNOT                        R9 ; [+5]
      154 GETIMPORT                        R9 K46 [pcall]
      156 DUPCLOSURE                       R10 K47 [PROTO_0]
      157 CAPTURE                          VAL R8
      158 CALL                             R9 1 0
      159 RETURN                           R0 0
