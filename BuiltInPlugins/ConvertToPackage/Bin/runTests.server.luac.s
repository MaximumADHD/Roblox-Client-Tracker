PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["Reporters"]
       12 GETTABLEKS                       R1 R1 K6 ["TeamCityReporter"]
       14 GETTABLEKS                       R2 R0 K5 ["Reporters"]
       16 GETTABLEKS                       R2 R2 K7 ["TextReporter"]
       18 GETIMPORT                        R5 K10 [_G]
       20 GETTABLEKS                       R4 R5 K8 ["TEAMCITY"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 MOVE                             R3 R1
       24 JUMPIF                           R3 ; [+1]
       25 MOVE                             R3 R2
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Util"]
       22 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R0 K6 ["Src"]
       27 DUPCLOSURE                       R3 K9 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 GETTABLEKS                       R4 R1 K10 ["RunTests"]
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+85]
       33 GETIMPORT                        R5 K12 [_G]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K13 ["__ROACT_17_MOCK_SCHEDULER__"]
       38 GETIMPORT                        R5 K12 [_G]
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R5 K14 ["__ROACT_17_INLINE_ACT__"]
       43 GETIMPORT                        R5 K1 [require]
       45 GETTABLEKS                       R6 R0 K15 ["Packages"]
       47 GETTABLEKS                       R6 R6 K16 ["Dev"]
       49 GETTABLEKS                       R6 R6 K17 ["TestEZ"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R5 K18 ["TestBootstrap"]
       54 GETIMPORT                        R8 K1 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Packages"]
       58 GETTABLEKS                       R9 R9 K16 ["Dev"]
       60 GETTABLEKS                       R9 R9 K17 ["TestEZ"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R8 K19 ["Reporters"]
       65 GETTABLEKS                       R9 R9 K20 ["TeamCityReporter"]
       67 GETTABLEKS                       R10 R8 K19 ["Reporters"]
       69 GETTABLEKS                       R10 R10 K21 ["TextReporter"]
       71 GETIMPORT                        R12 K12 [_G]
       73 GETTABLEKS                       R11 R12 K22 ["TEAMCITY"]
       75 JUMPIFNOT                        R11 ; [+2]
       76 MOVE                             R7 R9
       77 JUMPIF                           R7 ; [+1]
       78 MOVE                             R7 R10
       79 GETIMPORT                        R8 K24 [print]
       81 LOADK                            R10 K25 ["----- All "]
       82 GETIMPORT                        R11 K3 [script]
       84 GETTABLEKS                       R11 R11 K4 ["Parent"]
       86 GETTABLEKS                       R11 R11 K4 ["Parent"]
       88 GETTABLEKS                       R11 R11 K26 ["Name"]
       90 LOADK                            R12 K27 [" Tests ------"]
       91 CONCAT                           R9 R10 R12
       92 CALL                             R8 1 0
       93 NEWTABLE                         R10 0 1
       95 MOVE                             R11 R2
       96 SETLIST                          R10 R11 1 [1]
       98 MOVE                             R11 R7
       99 NAMECALL                         R8 R6 K28 ["run"]
      101 CALL                             R8 3 0
      102 GETIMPORT                        R8 K24 [print]
      104 LOADK                            R9 K29 ["----------------------------------"]
      105 CALL                             R8 1 0
      106 GETIMPORT                        R8 K31 [game]
      108 JUMPIFNOT                        R8 ; [+9]
      109 GETIMPORT                        R8 K31 [game]
      111 LOADK                            R10 K32 ["RunService"]
      112 NAMECALL                         R8 R8 K33 ["GetService"]
      114 CALL                             R8 2 1
      115 NAMECALL                         R8 R8 K34 ["Stop"]
      117 CALL                             R8 1 0
      118 RETURN                           R0 0
