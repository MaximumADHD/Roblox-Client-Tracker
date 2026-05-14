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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImprovePluginSpeed_ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 JUMPIF                           R0 ; [+11]
       14 GETIMPORT                        R2 K8 [require]
       16 GETIMPORT                        R3 K5 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["commonInit"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R2
       24 CALL                             R3 0 0
       25 GETIMPORT                        R2 K8 [require]
       27 GETTABLEKS                       R3 R1 K10 ["Src"]
       29 GETTABLEKS                       R3 R3 K11 ["Util"]
       31 GETTABLEKS                       R3 R3 K12 ["DebugFlags"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R2 K13 ["RunningUnderCLI"]
       36 CALL                             R3 0 1
       37 JUMPIF                           R3 ; [+4]
       38 GETTABLEKS                       R3 R2 K14 ["RunTests"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+74]
       42 JUMPIFNOT                        R0 ; [+11]
       43 GETIMPORT                        R3 K8 [require]
       45 GETIMPORT                        R4 K5 [script]
       47 GETTABLEKS                       R4 R4 K6 ["Parent"]
       49 GETTABLEKS                       R4 R4 K9 ["commonInit"]
       51 CALL                             R3 1 1
       52 MOVE                             R4 R3
       53 CALL                             R4 0 0
       54 GETIMPORT                        R3 K8 [require]
       56 GETTABLEKS                       R4 R1 K15 ["Packages"]
       58 GETTABLEKS                       R4 R4 K16 ["Dev"]
       60 GETTABLEKS                       R4 R4 K17 ["TestEZ"]
       62 CALL                             R3 1 1
       63 GETTABLEKS                       R4 R3 K18 ["TestBootstrap"]
       65 GETTABLEKS                       R5 R3 K19 ["Reporters"]
       67 GETTABLEKS                       R5 R5 K20 ["TeamCityReporter"]
       69 GETTABLEKS                       R6 R3 K19 ["Reporters"]
       71 GETTABLEKS                       R6 R6 K21 ["TextReporter"]
       73 GETIMPORT                        R9 K24 [_G]
       75 GETTABLEKS                       R8 R9 K22 ["TEAMCITY"]
       77 JUMPIFNOT                        R8 ; [+2]
       78 MOVE                             R7 R5
       79 JUMPIF                           R7 ; [+1]
       80 MOVE                             R7 R6
       81 GETTABLEKS                       R8 R1 K10 ["Src"]
       83 DUPTABLE                         R9 K28 [{"showTimingInfo", "testNamePattern", "extraEnvironment"}]
       84 LOADB                            R10 0
       85 SETTABLEKS                       R10 R9 K25 ["showTimingInfo"]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K26 ["testNamePattern"]
       90 NEWTABLE                         R10 0 0
       92 SETTABLEKS                       R10 R9 K27 ["extraEnvironment"]
       94 GETIMPORT                        R10 K30 [print]
       96 LOADK                            R12 K31 ["----- All "]
       97 GETTABLEKS                       R13 R1 K32 ["Name"]
       99 LOADK                            R14 K33 [" Tests ------"]
      100 CONCAT                           R11 R12 R14
      101 CALL                             R10 1 0
      102 NEWTABLE                         R12 0 1
      104 MOVE                             R13 R8
      105 SETLIST                          R12 R13 1 [1]
      107 MOVE                             R13 R7
      108 MOVE                             R14 R9
      109 NAMECALL                         R10 R4 K34 ["run"]
      111 CALL                             R10 4 0
      112 GETIMPORT                        R10 K30 [print]
      114 LOADK                            R11 K35 ["----------------------------------"]
      115 CALL                             R10 1 0
      116 GETTABLEKS                       R3 R2 K13 ["RunningUnderCLI"]
      118 CALL                             R3 0 1
      119 JUMPIFNOT                        R3 ; [+4]
      120 GETIMPORT                        R3 K37 [pcall]
      122 DUPCLOSURE                       R4 K38 [PROTO_0]
      123 CALL                             R3 1 0
      124 RETURN                           R0 0
