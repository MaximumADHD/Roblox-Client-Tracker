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
       20 GETIMPORT                        R1 K9 [pcall]
       22 DUPCLOSURE                       R2 K10 [PROTO_0]
       23 CALL                             R1 1 2
       24 JUMPIFNOT                        R1 ; [+108]
       25 GETIMPORT                        R3 K12 [game]
       27 LOADK                            R5 K13 ["TestService"]
       28 NAMECALL                         R3 R3 K14 ["GetService"]
       30 CALL                             R3 2 1
       31 GETIMPORT                        R4 K1 [require]
       33 GETTABLEKS                       R5 R0 K15 ["Packages"]
       35 GETTABLEKS                       R5 R5 K16 ["Dev"]
       37 GETTABLEKS                       R5 R5 K17 ["Jest"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R4 R4 K18 ["runCLI"]
       42 GETIMPORT                        R5 K20 [_G]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
       47 GETIMPORT                        R5 K20 [_G]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K22 ["__ROACT_17_INLINE_ACT__"]
       52 GETIMPORT                        R5 K12 [game]
       54 LOADK                            R7 K23 ["DebugTextureGeneratorUpdateSnapshots"]
       55 LOADB                            R8 0
       56 NAMECALL                         R5 R5 K24 ["DefineFastFlag"]
       58 CALL                             R5 3 1
       59 GETIMPORT                        R6 K12 [game]
       61 LOADK                            R8 K25 ["DebugTextureGeneratorTestPathPattern"]
       62 LOADK                            R9 K26 [""]
       63 NAMECALL                         R6 R6 K27 ["DefineFastString"]
       65 CALL                             R6 3 1
       66 MOVE                             R7 R4
       67 GETTABLEKS                       R8 R0 K28 ["Src"]
       69 DUPTABLE                         R9 K33 [{"verbose", "ci", "updateSnapshot", "testPathPattern"}]
       70 LOADB                            R10 1
       71 SETTABLEKS                       R10 R9 K29 ["verbose"]
       73 LOADB                            R10 1
       74 SETTABLEKS                       R10 R9 K30 ["ci"]
       76 SETTABLEKS                       R5 R9 K31 ["updateSnapshot"]
       78 JUMPIFNOTEQKS                    R6 K26 [""] ; [+3]
       80 LOADNIL                          R10
       81 JUMP                             ; [+1]
       82 MOVE                             R10 R6
       83 SETTABLEKS                       R10 R9 K32 ["testPathPattern"]
       85 NEWTABLE                         R10 0 2
       87 GETTABLEKS                       R11 R0 K28 ["Src"]
       89 GETTABLEKS                       R12 R0 K34 ["RhodiumTests"]
       91 SETLIST                          R10 R11 2 [1]
       93 CALL                             R7 3 1
       94 NAMECALL                         R7 R7 K35 ["awaitStatus"]
       96 CALL                             R7 1 2
       97 JUMPIFNOTEQKS                    R7 K36 ["Resolved"] ; [+15]
       99 GETTABLEKS                       R9 R8 K37 ["results"]
      101 GETTABLEKS                       R9 R9 K38 ["numFailedTestSuites"]
      103 LOADN                            R10 0
      104 JUMPIFLT                         R10 R9 ; [+8]
      106 GETTABLEKS                       R9 R8 K37 ["results"]
      108 GETTABLEKS                       R9 R9 K39 ["numFailedTests"]
      110 LOADN                            R10 0
      111 JUMPIFNOTLT                      R10 R9 ; [+16]
      113 JUMPIFNOTEQKS                    R7 K40 ["Rejected"] ; [+5]
      115 GETIMPORT                        R9 K42 [print]
      117 MOVE                             R10 R8
      118 CALL                             R9 1 0
      119 LOADK                            R11 K43 ["Jest 3 test run failed"]
      120 NAMECALL                         R9 R3 K44 ["Error"]
      122 CALL                             R9 2 0
      123 LOADN                            R11 1
      124 NAMECALL                         R9 R2 K45 ["ExitAsync"]
      126 CALL                             R9 2 0
      127 RETURN                           R0 0
      128 LOADN                            R11 0
      129 NAMECALL                         R9 R2 K45 ["ExitAsync"]
      131 CALL                             R9 2 0
      132 RETURN                           R0 0
      133 GETIMPORT                        R3 K12 [game]
      135 LOADK                            R5 K46 ["EnableTextureGenerator2"]
      136 NAMECALL                         R3 R3 K47 ["GetFastFlag"]
      138 CALL                             R3 2 1
      139 JUMPIF                           R3 ; [+1]
      140 RETURN                           R0 0
      141 GETIMPORT                        R3 K1 [require]
      143 GETTABLEKS                       R4 R0 K15 ["Packages"]
      145 GETTABLEKS                       R4 R4 K48 ["React"]
      147 CALL                             R3 1 1
      148 GETIMPORT                        R4 K1 [require]
      150 GETTABLEKS                       R5 R0 K15 ["Packages"]
      152 GETTABLEKS                       R5 R5 K49 ["ReactRoblox"]
      154 CALL                             R4 1 1
      155 GETIMPORT                        R5 K1 [require]
      157 GETTABLEKS                       R6 R0 K28 ["Src"]
      159 GETTABLEKS                       R6 R6 K50 ["MainPlugin"]
      161 CALL                             R5 1 1
      162 LOADNIL                          R6
      163 NEWCLOSURE                       R7 P1
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R5
      167 CAPTURE                          REF R6
      168 CAPTURE                          VAL R4
      169 GETIMPORT                        R8 K7 [plugin]
      171 GETTABLEKS                       R8 R8 K51 ["Unloading"]
      173 NEWCLOSURE                       R10 P2
      174 CAPTURE                          REF R6
      175 NAMECALL                         R8 R8 K52 ["Connect"]
      177 CALL                             R8 2 0
      178 MOVE                             R8 R7
      179 CALL                             R8 0 0
      180 CLOSEUPVALS                      R6
      181 RETURN                           R0 0
