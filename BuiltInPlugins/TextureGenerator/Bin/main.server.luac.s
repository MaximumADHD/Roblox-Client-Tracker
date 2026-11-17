PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K6 ["createRoot"]
       20 GETIMPORT                        R2 K9 [Instance.new]
       22 LOADK                            R3 K10 ["Frame"]
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 1
       25 SETUPVAL                         R1 3
       26 GETUPVAL                         R1 3
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K11 ["render"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K7 [plugin]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R0 K3 [script]
       16 GETTABLEKS                       R0 R0 K4 ["Parent"]
       18 GETTABLEKS                       R0 R0 K4 ["Parent"]
       20 DUPCLOSURE                       R2 K8 [PROTO_0]
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R1 K10 [pcall]
       24 CALL                             R1 1 2
       25 JUMPIFNOT                        R1 ; [+102]
       26 GETIMPORT                        R3 K12 [game]
       28 LOADK                            R5 K13 ["TestService"]
       29 NAMECALL                         R3 R3 K14 ["GetService"]
       31 CALL                             R3 2 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETTABLEKS                       R5 R0 K15 ["Packages"]
       36 GETTABLEKS                       R5 R5 K16 ["Dev"]
       38 GETTABLEKS                       R5 R5 K17 ["Jest"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K18 ["runCLI"]
       43 GETIMPORT                        R5 K20 [_G]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
       48 GETIMPORT                        R5 K20 [_G]
       50 LOADB                            R6 1
       51 SETTABLEKS                       R6 R5 K22 ["__ROACT_17_INLINE_ACT__"]
       53 GETIMPORT                        R5 K12 [game]
       55 LOADK                            R7 K23 ["DebugTextureGeneratorUpdateSnapshots"]
       56 LOADB                            R8 0
       57 NAMECALL                         R5 R5 K24 ["DefineFastFlag"]
       59 CALL                             R5 3 1
       60 GETIMPORT                        R6 K12 [game]
       62 LOADK                            R8 K25 ["DebugTextureGeneratorTestPathPattern"]
       63 LOADK                            R9 K26 [""]
       64 NAMECALL                         R6 R6 K27 ["DefineFastString"]
       66 CALL                             R6 3 1
       67 MOVE                             R7 R4
       68 GETTABLEKS                       R8 R0 K28 ["Src"]
       70 DUPTABLE                         R9 K34 [{["verbose"] = True, ["ci"] = True, ["updateSnapshot"], ["testPathPattern"]}]
       71 SETTABLEKS                       R5 R9 K32 ["updateSnapshot"]
       73 JUMPIFNOTEQKS                    R6 K26 [""] ; [+3]
       75 LOADNIL                          R10
       76 JUMP                             ; [+1]
       77 MOVE                             R10 R6
       78 SETTABLEKS                       R10 R9 K33 ["testPathPattern"]
       80 NEWTABLE                         R10 0 2
       82 GETTABLEKS                       R11 R0 K28 ["Src"]
       84 GETTABLEKS                       R12 R0 K35 ["RhodiumTests"]
       86 SETLIST                          R10 R11 2 [1]
       88 CALL                             R7 3 1
       89 NAMECALL                         R7 R7 K36 ["awaitStatus"]
       91 CALL                             R7 1 2
       92 JUMPIFNOTEQKS                    R7 K37 ["Resolved"] ; [+15]
       94 GETTABLEKS                       R9 R8 K38 ["results"]
       96 GETTABLEKS                       R9 R9 K39 ["numFailedTestSuites"]
       98 LOADN                            R10 0
       99 JUMPIFLT                         R10 R9 ; [+8]
      101 GETTABLEKS                       R9 R8 K38 ["results"]
      103 GETTABLEKS                       R9 R9 K40 ["numFailedTests"]
      105 LOADN                            R10 0
      106 JUMPIFNOTLT                      R10 R9 ; [+16]
      108 JUMPIFNOTEQKS                    R7 K41 ["Rejected"] ; [+5]
      110 GETIMPORT                        R9 K43 [print]
      112 MOVE                             R10 R8
      113 CALL                             R9 1 0
      114 LOADK                            R11 K44 ["Jest 3 test run failed"]
      115 NAMECALL                         R9 R3 K45 ["Error"]
      117 CALL                             R9 2 0
      118 LOADN                            R11 1
      119 NAMECALL                         R9 R2 K46 ["ExitAsync"]
      121 CALL                             R9 2 0
      122 RETURN                           R0 0
      123 LOADN                            R11 0
      124 NAMECALL                         R9 R2 K46 ["ExitAsync"]
      126 CALL                             R9 2 0
      127 RETURN                           R0 0
      128 GETIMPORT                        R3 K12 [game]
      130 LOADK                            R5 K47 ["EnableTextureGenerator2"]
      131 NAMECALL                         R3 R3 K48 ["GetFastFlag"]
      133 CALL                             R3 2 1
      134 JUMPIF                           R3 ; [+1]
      135 RETURN                           R0 0
      136 GETIMPORT                        R3 K1 [require]
      138 GETTABLEKS                       R4 R0 K15 ["Packages"]
      140 GETTABLEKS                       R4 R4 K49 ["React"]
      142 CALL                             R3 1 1
      143 GETIMPORT                        R4 K1 [require]
      145 GETTABLEKS                       R5 R0 K15 ["Packages"]
      147 GETTABLEKS                       R5 R5 K50 ["ReactRoblox"]
      149 CALL                             R4 1 1
      150 GETIMPORT                        R5 K1 [require]
      152 GETTABLEKS                       R6 R0 K28 ["Src"]
      154 GETTABLEKS                       R6 R6 K51 ["MainPlugin"]
      156 CALL                             R5 1 1
      157 LOADNIL                          R6
      158 NEWCLOSURE                       R7 P1
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R5
      162 CAPTURE                          REF R6
      163 CAPTURE                          VAL R4
      164 GETIMPORT                        R8 K7 [plugin]
      166 GETTABLEKS                       R8 R8 K52 ["Unloading"]
      168 NEWCLOSURE                       R10 P2
      169 CAPTURE                          REF R6
      170 NAMECALL                         R8 R8 K53 ["Connect"]
      172 CALL                             R8 2 0
      173 MOVE                             R8 R7
      174 CALL                             R8 0 0
      175 CLOSEUPVALS                      R6
      176 RETURN                           R0 0
