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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K7 [game]
       12 LOADK                            R2 K8 ["ImprovePluginSpeed_ManageCollaborators"]
       13 NAMECALL                         R0 R0 K9 ["GetFastFlag"]
       15 CALL                             R0 2 1
       16 GETIMPORT                        R1 K3 [script]
       18 GETTABLEKS                       R1 R1 K4 ["Parent"]
       20 GETTABLEKS                       R1 R1 K4 ["Parent"]
       22 JUMPIF                           R0 ; [+11]
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K10 ["commonInit"]
       31 CALL                             R2 1 1
       32 MOVE                             R3 R2
       33 CALL                             R3 0 0
       34 GETIMPORT                        R2 K1 [require]
       36 GETTABLEKS                       R3 R1 K11 ["Src"]
       38 GETTABLEKS                       R3 R3 K12 ["Util"]
       40 GETTABLEKS                       R3 R3 K13 ["DebugFlags"]
       42 CALL                             R2 1 1
       43 GETTABLEKS                       R3 R2 K14 ["RunningUnderCLI"]
       45 CALL                             R3 0 1
       46 JUMPIF                           R3 ; [+4]
       47 GETTABLEKS                       R3 R2 K15 ["RunTests"]
       49 CALL                             R3 0 1
       50 JUMPIFNOT                        R3 ; [+68]
       51 JUMPIFNOT                        R0 ; [+11]
       52 GETIMPORT                        R3 K1 [require]
       54 GETIMPORT                        R4 K3 [script]
       56 GETTABLEKS                       R4 R4 K4 ["Parent"]
       58 GETTABLEKS                       R4 R4 K10 ["commonInit"]
       60 CALL                             R3 1 1
       61 MOVE                             R4 R3
       62 CALL                             R4 0 0
       63 GETIMPORT                        R3 K1 [require]
       65 GETTABLEKS                       R4 R1 K16 ["Packages"]
       67 GETTABLEKS                       R4 R4 K17 ["Dev"]
       69 GETTABLEKS                       R4 R4 K18 ["TestEZ"]
       71 CALL                             R3 1 1
       72 GETTABLEKS                       R4 R3 K19 ["TestBootstrap"]
       74 GETTABLEKS                       R5 R3 K20 ["Reporters"]
       76 GETTABLEKS                       R5 R5 K21 ["TeamCityReporter"]
       78 GETTABLEKS                       R6 R3 K20 ["Reporters"]
       80 GETTABLEKS                       R6 R6 K22 ["TextReporter"]
       82 GETIMPORT                        R9 K25 [_G]
       84 GETTABLEKS                       R8 R9 K23 ["TEAMCITY"]
       86 JUMPIFNOT                        R8 ; [+2]
       87 MOVE                             R7 R5
       88 JUMPIF                           R7 ; [+1]
       89 MOVE                             R7 R6
       90 GETTABLEKS                       R8 R1 K11 ["Src"]
       92 DUPTABLE                         R9 K31 [{["showTimingInfo"] = False, ["testNamePattern"] = , ["extraEnvironment"]}]
       93 NEWTABLE                         R10 0 0
       95 SETTABLEKS                       R10 R9 K30 ["extraEnvironment"]
       97 GETIMPORT                        R10 K33 [print]
       99 LOADK                            R12 K34 ["----- All "]
      100 GETTABLEKS                       R13 R1 K35 ["Name"]
      102 LOADK                            R14 K36 [" Tests ------"]
      103 CONCAT                           R11 R12 R14
      104 CALL                             R10 1 0
      105 NEWTABLE                         R12 0 1
      107 MOVE                             R13 R8
      108 SETLIST                          R12 R13 1 [1]
      110 MOVE                             R13 R7
      111 MOVE                             R14 R9
      112 NAMECALL                         R10 R4 K37 ["run"]
      114 CALL                             R10 4 0
      115 GETIMPORT                        R10 K33 [print]
      117 LOADK                            R11 K38 ["----------------------------------"]
      118 CALL                             R10 1 0
      119 GETTABLEKS                       R3 R2 K14 ["RunningUnderCLI"]
      121 CALL                             R3 0 1
      122 JUMPIFNOT                        R3 ; [+4]
      123 GETIMPORT                        R3 K40 [pcall]
      125 DUPCLOSURE                       R4 K41 [PROTO_0]
      126 CALL                             R3 1 0
      127 RETURN                           R0 0
