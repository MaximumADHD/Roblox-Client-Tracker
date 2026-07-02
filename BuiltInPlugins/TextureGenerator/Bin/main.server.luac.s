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
       24 JUMPIFNOT                        R1 ; [+102]
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
       69 DUPTABLE                         R9 K34 [{["verbose"] = True, ["ci"] = True, ["updateSnapshot"], ["testPathPattern"]}]
       70 SETTABLEKS                       R5 R9 K32 ["updateSnapshot"]
       72 JUMPIFNOTEQKS                    R6 K26 [""] ; [+3]
       74 LOADNIL                          R10
       75 JUMP                             ; [+1]
       76 MOVE                             R10 R6
       77 SETTABLEKS                       R10 R9 K33 ["testPathPattern"]
       79 NEWTABLE                         R10 0 2
       81 GETTABLEKS                       R11 R0 K28 ["Src"]
       83 GETTABLEKS                       R12 R0 K35 ["RhodiumTests"]
       85 SETLIST                          R10 R11 2 [1]
       87 CALL                             R7 3 1
       88 NAMECALL                         R7 R7 K36 ["awaitStatus"]
       90 CALL                             R7 1 2
       91 JUMPIFNOTEQKS                    R7 K37 ["Resolved"] ; [+15]
       93 GETTABLEKS                       R9 R8 K38 ["results"]
       95 GETTABLEKS                       R9 R9 K39 ["numFailedTestSuites"]
       97 LOADN                            R10 0
       98 JUMPIFLT                         R10 R9 ; [+8]
      100 GETTABLEKS                       R9 R8 K38 ["results"]
      102 GETTABLEKS                       R9 R9 K40 ["numFailedTests"]
      104 LOADN                            R10 0
      105 JUMPIFNOTLT                      R10 R9 ; [+16]
      107 JUMPIFNOTEQKS                    R7 K41 ["Rejected"] ; [+5]
      109 GETIMPORT                        R9 K43 [print]
      111 MOVE                             R10 R8
      112 CALL                             R9 1 0
      113 LOADK                            R11 K44 ["Jest 3 test run failed"]
      114 NAMECALL                         R9 R3 K45 ["Error"]
      116 CALL                             R9 2 0
      117 LOADN                            R11 1
      118 NAMECALL                         R9 R2 K46 ["ExitAsync"]
      120 CALL                             R9 2 0
      121 RETURN                           R0 0
      122 LOADN                            R11 0
      123 NAMECALL                         R9 R2 K46 ["ExitAsync"]
      125 CALL                             R9 2 0
      126 RETURN                           R0 0
      127 GETIMPORT                        R3 K12 [game]
      129 LOADK                            R5 K47 ["EnableTextureGenerator2"]
      130 NAMECALL                         R3 R3 K48 ["GetFastFlag"]
      132 CALL                             R3 2 1
      133 JUMPIF                           R3 ; [+1]
      134 RETURN                           R0 0
      135 GETIMPORT                        R3 K1 [require]
      137 GETTABLEKS                       R4 R0 K15 ["Packages"]
      139 GETTABLEKS                       R4 R4 K49 ["React"]
      141 CALL                             R3 1 1
      142 GETIMPORT                        R4 K1 [require]
      144 GETTABLEKS                       R5 R0 K15 ["Packages"]
      146 GETTABLEKS                       R5 R5 K50 ["ReactRoblox"]
      148 CALL                             R4 1 1
      149 GETIMPORT                        R5 K1 [require]
      151 GETTABLEKS                       R6 R0 K28 ["Src"]
      153 GETTABLEKS                       R6 R6 K51 ["MainPlugin"]
      155 CALL                             R5 1 1
      156 LOADNIL                          R6
      157 NEWCLOSURE                       R7 P1
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R5
      161 CAPTURE                          REF R6
      162 CAPTURE                          VAL R4
      163 GETIMPORT                        R8 K7 [plugin]
      165 GETTABLEKS                       R8 R8 K52 ["Unloading"]
      167 NEWCLOSURE                       R10 P2
      168 CAPTURE                          REF R6
      169 NAMECALL                         R8 R8 K53 ["Connect"]
      171 CALL                             R8 2 0
      172 MOVE                             R8 R7
      173 CALL                             R8 0 0
      174 CLOSEUPVALS                      R6
      175 RETURN                           R0 0
