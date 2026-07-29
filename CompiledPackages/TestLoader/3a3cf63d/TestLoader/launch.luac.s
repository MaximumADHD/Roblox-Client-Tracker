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
        5 JUMPIFNOT                        R3 ; [+33]
        6 GETIMPORT                        R3 K2 [_G]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K3 ["__DEV__"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["Packages"]
       14 LOADK                            R5 K5 ["React"]
       15 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+20]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Packages"]
       22 LOADK                            R5 K7 ["Roact"]
       23 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+12]
       27 GETIMPORT                        R3 K9 [require]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K4 ["Packages"]
       32 GETTABLEKS                       R4 R4 K7 ["Roact"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K10 ["setGlobalConfig"]
       37 DUPTABLE                         R5 K15 [{["elementTracing"] = True, ["propValidation"] = True, ["typeChecks"] = True}]
       38 CALL                             R4 1 0
       39 GETTABLEKS                       R3 R2 K16 ["RunTests"]
       41 JUMPIF                           R3 ; [+7]
       42 GETTABLEKS                       R3 R2 K17 ["RunRhodiumTests"]
       44 JUMPIF                           R3 ; [+4]
       45 GETTABLEKS                       R3 R2 K18 ["RunUnitTests"]
       47 JUMPIF                           R3 ; [+1]
       48 RETURN                           R0 0
       49 GETUPVAL                         R3 2
       50 CALL                             R3 0 1
       51 JUMPIFNOT                        R3 ; [+5]
       52 GETIMPORT                        R3 K2 [_G]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K19 ["__ROACT_17_MOCK_SCHEDULER__"]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K4 ["Packages"]
       60 LOADK                            R6 K5 ["React"]
       61 NAMECALL                         R4 R4 K6 ["FindFirstChild"]
       63 CALL                             R4 2 1
       64 JUMPIFNOT                        R4 ; [+2]
       65 LOADB                            R3 1
       66 JUMP                             ; [+24]
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K4 ["Packages"]
       70 LOADK                            R6 K7 ["Roact"]
       71 NAMECALL                         R4 R4 K6 ["FindFirstChild"]
       73 CALL                             R4 2 1
       74 JUMPIFNOT                        R4 ; [+15]
       75 GETIMPORT                        R4 K9 [require]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K4 ["Packages"]
       80 GETTABLEKS                       R5 R5 K7 ["Roact"]
       82 CALL                             R4 1 1
       83 GETTABLEKS                       R4 R4 K20 ["Ref"]
       85 JUMPIFEQKS                       R4 K21 ["ref"] ; [+2]
       87 LOADB                            R3 0 +1
       88 LOADB                            R3 1
       89 JUMP                             ; [+1]
       90 LOADB                            R3 0
       91 JUMPIFNOT                        R3 ; [+19]
       92 GETUPVAL                         R4 2
       93 CALL                             R4 0 1
       94 JUMPIF                           R4 ; [+16]
       95 GETUPVAL                         R4 3
       96 GETIMPORT                        R6 K23 [script]
       98 GETTABLEKS                       R6 R6 K24 ["Parent"]
      100 GETTABLEKS                       R6 R6 K25 ["runTestsInternal"]
      102 NAMECALL                         R4 R4 K26 ["load"]
      104 CALL                             R4 2 1
      105 GETUPVAL                         R5 4
      106 MOVE                             R6 R4
      107 MOVE                             R7 R1
      108 MOVE                             R8 R2
      109 CALL                             R5 3 0
      110 RETURN                           R0 0
      111 GETIMPORT                        R4 K9 [require]
      113 GETIMPORT                        R5 K23 [script]
      115 GETTABLEKS                       R5 R5 K24 ["Parent"]
      117 GETTABLEKS                       R5 R5 K25 ["runTestsInternal"]
      119 CALL                             R4 1 1
      120 GETUPVAL                         R5 4
      121 MOVE                             R6 R4
      122 MOVE                             R7 R1
      123 MOVE                             R8 R2
      124 CALL                             R5 3 0
      125 RETURN                           R0 0

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
