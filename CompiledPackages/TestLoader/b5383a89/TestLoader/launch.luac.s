PROTO_0:
        0 GETIMPORT                        R3 K1 [pcall]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R3 3 2
        6 JUMPIF                           R3 ; [+4]
        7 GETIMPORT                        R5 K3 [warn]
        9 MOVE                             R6 R4
       10 CALL                             R5 1 0
       11 GETUPVAL                         R5 0
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+13]
       14 GETIMPORT                        R5 K5 [game]
       16 LOADK                            R7 K6 ["ProcessService"]
       17 NAMECALL                         R5 R5 K7 ["GetService"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R3 ; [+2]
       21 LOADN                            R8 0
       22 JUMP                             ; [+1]
       23 LOADN                            R8 1
       24 NAMECALL                         R6 R5 K8 ["ExitAsync"]
       26 CALL                             R6 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["EnableRoactConfigs"]
        5 JUMPIFNOT                        R3 ; [+42]
        6 GETIMPORT                        R3 K2 [_G]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K3 ["__DEV__"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["Packages"]
       14 LOADK                            R5 K5 ["React"]
       15 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+29]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Packages"]
       22 LOADK                            R5 K7 ["Roact"]
       23 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+21]
       27 GETIMPORT                        R3 K9 [require]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K4 ["Packages"]
       32 GETTABLEKS                       R4 R4 K7 ["Roact"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K10 ["setGlobalConfig"]
       37 DUPTABLE                         R5 K14 [{"elementTracing", "propValidation", "typeChecks"}]
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R5 K11 ["elementTracing"]
       41 LOADB                            R6 1
       42 SETTABLEKS                       R6 R5 K12 ["propValidation"]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K13 ["typeChecks"]
       47 CALL                             R4 1 0
       48 GETTABLEKS                       R3 R2 K15 ["RunTests"]
       50 JUMPIF                           R3 ; [+7]
       51 GETTABLEKS                       R3 R2 K16 ["RunRhodiumTests"]
       53 JUMPIF                           R3 ; [+4]
       54 GETTABLEKS                       R3 R2 K17 ["RunUnitTests"]
       56 JUMPIF                           R3 ; [+1]
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 2
       59 CALL                             R3 0 1
       60 JUMPIFNOT                        R3 ; [+5]
       61 GETIMPORT                        R3 K2 [_G]
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K18 ["__ROACT_17_MOCK_SCHEDULER__"]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K4 ["Packages"]
       69 LOADK                            R6 K5 ["React"]
       70 NAMECALL                         R4 R4 K6 ["FindFirstChild"]
       72 CALL                             R4 2 1
       73 JUMPIFNOT                        R4 ; [+2]
       74 LOADB                            R3 1
       75 JUMP                             ; [+24]
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R4 R4 K4 ["Packages"]
       79 LOADK                            R6 K7 ["Roact"]
       80 NAMECALL                         R4 R4 K6 ["FindFirstChild"]
       82 CALL                             R4 2 1
       83 JUMPIFNOT                        R4 ; [+15]
       84 GETIMPORT                        R4 K9 [require]
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K4 ["Packages"]
       89 GETTABLEKS                       R5 R5 K7 ["Roact"]
       91 CALL                             R4 1 1
       92 GETTABLEKS                       R4 R4 K19 ["Ref"]
       94 JUMPIFEQKS                       R4 K20 ["ref"] ; [+2]
       96 LOADB                            R3 0 +1
       97 LOADB                            R3 1
       98 JUMP                             ; [+1]
       99 LOADB                            R3 0
      100 JUMPIFNOT                        R3 ; [+19]
      101 GETUPVAL                         R4 2
      102 CALL                             R4 0 1
      103 JUMPIF                           R4 ; [+16]
      104 GETUPVAL                         R4 3
      105 GETIMPORT                        R6 K22 [script]
      107 GETTABLEKS                       R6 R6 K23 ["Parent"]
      109 GETTABLEKS                       R6 R6 K24 ["runTestsInternal"]
      111 NAMECALL                         R4 R4 K25 ["load"]
      113 CALL                             R4 2 1
      114 GETUPVAL                         R5 4
      115 MOVE                             R6 R4
      116 MOVE                             R7 R1
      117 MOVE                             R8 R2
      118 CALL                             R5 3 0
      119 RETURN                           R0 0
      120 GETIMPORT                        R4 K9 [require]
      122 GETIMPORT                        R5 K22 [script]
      124 GETTABLEKS                       R5 R5 K23 ["Parent"]
      126 GETTABLEKS                       R5 R5 K24 ["runTestsInternal"]
      128 CALL                             R4 1 1
      129 GETUPVAL                         R5 4
      130 MOVE                             R6 R4
      131 MOVE                             R7 R1
      132 MOVE                             R8 R2
      133 CALL                             R5 3 0
      134 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["getPluginParentInternal"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["ModuleLoader"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["getDebugFlags"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["isCli"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["types"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K10 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R7 K11 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R6
       38 RETURN                           R7 1
