PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["ImprovePluginSpeed_TagEditor"]
       10 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [_G]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K9 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETIMPORT                        R3 K11 [pcall]
       21 DUPCLOSURE                       R4 K12 [PROTO_0]
       22 CALL                             R3 1 2
       23 JUMPIFNOT                        R3 ; [+2]
       24 JUMPIF                           R4 ; [+1]
       25 RETURN                           R0 0
       26 GETIMPORT                        R3 K14 [require]
       28 GETTABLEKS                       R4 R0 K15 ["Src"]
       30 GETTABLEKS                       R4 R4 K16 ["Util"]
       32 GETTABLEKS                       R4 R4 K17 ["DebugFlags"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K18 ["RunningUnderCLI"]
       37 CALL                             R4 0 1
       38 JUMPIF                           R4 ; [+4]
       39 GETTABLEKS                       R4 R3 K19 ["RunTests"]
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+80]
       43 GETIMPORT                        R4 K14 [require]
       45 GETIMPORT                        R5 K1 [script]
       47 GETTABLEKS                       R5 R5 K2 ["Parent"]
       49 GETTABLEKS                       R5 R5 K20 ["defineLuaFlags"]
       51 CALL                             R4 1 0
       52 JUMPIFNOT                        R1 ; [+11]
       53 GETIMPORT                        R4 K14 [require]
       55 GETIMPORT                        R5 K1 [script]
       57 GETTABLEKS                       R5 R5 K2 ["Parent"]
       59 GETTABLEKS                       R5 R5 K21 ["commonInit"]
       61 CALL                             R4 1 1
       62 MOVE                             R5 R4
       63 CALL                             R5 0 0
       64 GETIMPORT                        R4 K14 [require]
       66 GETTABLEKS                       R5 R0 K22 ["Packages"]
       68 GETTABLEKS                       R5 R5 K23 ["Dev"]
       70 GETTABLEKS                       R5 R5 K24 ["Jest"]
       72 CALL                             R4 1 1
       73 GETTABLEKS                       R4 R4 K25 ["runCLI"]
       75 GETIMPORT                        R5 K11 [pcall]
       77 DUPCLOSURE                       R6 K26 [PROTO_1]
       78 CALL                             R5 1 2
       79 MOVE                             R7 R4
       80 GETTABLEKS                       R8 R0 K15 ["Src"]
       82 DUPTABLE                         R9 K30 [{["verbose"] = False, ["ci"] = False}]
       83 NEWTABLE                         R10 0 1
       85 GETTABLEKS                       R11 R0 K15 ["Src"]
       87 SETLIST                          R10 R11 1 [1]
       89 CALL                             R7 3 1
       90 NAMECALL                         R7 R7 K31 ["awaitStatus"]
       92 CALL                             R7 1 2
       93 JUMPIFNOTEQKS                    R7 K32 ["Rejected"] ; [+5]
       95 GETIMPORT                        R9 K34 [print]
       97 MOVE                             R10 R8
       98 CALL                             R9 1 0
       99 JUMPIFNOTEQKS                    R7 K35 ["Resolved"] ; [+18]
      101 GETTABLEKS                       R9 R8 K36 ["results"]
      103 GETTABLEKS                       R9 R9 K37 ["numFailedTestSuites"]
      105 JUMPIFNOTEQKN                    R9 K38 [0] ; [+12]
      107 GETTABLEKS                       R9 R8 K36 ["results"]
      109 GETTABLEKS                       R9 R9 K39 ["numFailedTests"]
      111 JUMPIFNOTEQKN                    R9 K38 [0] ; [+6]
      113 JUMPIFNOT                        R5 ; [+4]
      114 LOADN                            R11 0
      115 NAMECALL                         R9 R6 K40 ["ExitAsync"]
      117 CALL                             R9 2 0
      118 JUMPIFNOT                        R5 ; [+4]
      119 LOADN                            R11 1
      120 NAMECALL                         R9 R6 K40 ["ExitAsync"]
      122 CALL                             R9 2 0
      123 RETURN                           R0 0
