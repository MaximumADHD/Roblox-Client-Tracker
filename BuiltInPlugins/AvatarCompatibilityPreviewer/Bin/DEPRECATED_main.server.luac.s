PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["EDITING_TOOLS_GUI_NAMES"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R5 K1 ["FindFirstChild"]
       10 CALL                             R5 2 1
       11 JUMPIFEQKNIL                     R5 ; [+4]
       13 NAMECALL                         R6 R5 K2 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R0 2 ; [-11]
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K3 ["CLONED_DUMMY_NAME"]
       22 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
       24 CALL                             R0 2 1
       25 JUMPIFEQKNIL                     R0 ; [+4]
       27 NAMECALL                         R1 R0 K2 ["Destroy"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K3 ["createElement"]
       15 GETUPVAL                         R1 4
       16 DUPTABLE                         R2 K5 [{"Plugin"}]
       17 GETIMPORT                        R3 K1 [plugin]
       19 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R2 6
       23 GETTABLEKS                       R1 R2 K6 ["createRoot"]
       25 GETIMPORT                        R2 K9 [Instance.new]
       27 LOADK                            R3 K10 ["Frame"]
       28 CALL                             R2 1 -1
       29 CALL                             R1 -1 1
       30 SETUPVAL                         R1 5
       31 GETUPVAL                         R1 5
       32 MOVE                             R3 R0
       33 NAMECALL                         R1 R1 K11 ["render"]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 7
       37 NAMECALL                         R1 R1 K12 ["IsRunning"]
       39 CALL                             R1 1 1
       40 JUMPIF                           R1 ; [+4]
       41 GETUPVAL                         R2 8
       42 GETTABLEKS                       R1 R2 K13 ["reset"]
       44 CALL                             R1 0 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+2]
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["TestService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Workspace"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [plugin]
       27 JUMPIF                           R4 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R6 K10 [script]
       31 GETTABLEKS                       R5 R6 K11 ["Parent"]
       33 GETTABLEKS                       R4 R5 K11 ["Parent"]
       35 GETIMPORT                        R5 K13 [require]
       37 GETTABLEKS                       R8 R4 K14 ["Src"]
       39 GETTABLEKS                       R7 R8 K15 ["Flags"]
       41 GETTABLEKS                       R6 R7 K16 ["getFFlagAvatarAutosetupOptionsInput"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R5
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+1]
       47 RETURN                           R0 0
       48 GETIMPORT                        R6 K18 [pcall]
       50 DUPCLOSURE                       R7 K19 [PROTO_0]
       51 CALL                             R6 1 2
       52 JUMPIFNOT                        R6 ; [+102]
       53 GETIMPORT                        R9 K13 [require]
       55 GETTABLEKS                       R12 R4 K20 ["Packages"]
       57 GETTABLEKS                       R11 R12 K21 ["Dev"]
       59 GETTABLEKS                       R10 R11 K22 ["Jest"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R8 R9 K23 ["runCLI"]
       64 GETIMPORT                        R9 K25 [_G]
       66 LOADB                            R10 1
       67 SETTABLEKS                       R10 R9 K26 ["__ROACT_17_MOCK_SCHEDULER__"]
       69 GETIMPORT                        R9 K25 [_G]
       71 LOADB                            R10 1
       72 SETTABLEKS                       R10 R9 K27 ["__ROACT_17_INLINE_ACT__"]
       74 GETIMPORT                        R9 K1 [game]
       76 LOADK                            R11 K28 ["DebugAvatarPreviewerUpdateSnapshots"]
       77 LOADB                            R12 0
       78 NAMECALL                         R9 R9 K29 ["DefineFastFlag"]
       80 CALL                             R9 3 1
       81 GETIMPORT                        R10 K1 [game]
       83 LOADK                            R12 K30 ["DebugAvatarPreviewerTestPathPattern"]
       84 LOADK                            R13 K31 [""]
       85 NAMECALL                         R10 R10 K32 ["DefineFastString"]
       87 CALL                             R10 3 1
       88 MOVE                             R11 R8
       89 GETTABLEKS                       R12 R4 K14 ["Src"]
       91 DUPTABLE                         R13 K37 [{"verbose", "ci", "updateSnapshot", "testPathPattern"}]
       92 LOADB                            R14 1
       93 SETTABLEKS                       R14 R13 K33 ["verbose"]
       95 LOADB                            R14 1
       96 SETTABLEKS                       R14 R13 K34 ["ci"]
       98 SETTABLEKS                       R9 R13 K35 ["updateSnapshot"]
      100 JUMPIFNOTEQKS                    R10 K31 [""] ; [+3]
      102 LOADNIL                          R14
      103 JUMP                             ; [+1]
      104 MOVE                             R14 R10
      105 SETTABLEKS                       R14 R13 K36 ["testPathPattern"]
      107 NEWTABLE                         R14 0 2
      109 GETTABLEKS                       R15 R4 K14 ["Src"]
      111 GETTABLEKS                       R16 R4 K38 ["RhodiumTests"]
      113 SETLIST                          R14 R15 2 [1]
      115 CALL                             R11 3 1
      116 NAMECALL                         R11 R11 K39 ["awaitStatus"]
      118 CALL                             R11 1 2
      119 JUMPIFNOTEQKS                    R11 K40 ["Resolved"] ; [+15]
      121 GETTABLEKS                       R14 R12 K41 ["results"]
      123 GETTABLEKS                       R13 R14 K42 ["numFailedTestSuites"]
      125 LOADN                            R14 0
      126 JUMPIFLT                         R14 R13 ; [+8]
      128 GETTABLEKS                       R14 R12 K41 ["results"]
      130 GETTABLEKS                       R13 R14 K43 ["numFailedTests"]
      132 LOADN                            R14 0
      133 JUMPIFNOTLT                      R14 R13 ; [+16]
      135 JUMPIFNOTEQKS                    R11 K44 ["Rejected"] ; [+5]
      137 GETIMPORT                        R13 K46 [print]
      139 MOVE                             R14 R12
      140 CALL                             R13 1 0
      141 LOADK                            R15 K47 ["Jest 3 test run failed"]
      142 NAMECALL                         R13 R2 K48 ["Error"]
      144 CALL                             R13 2 0
      145 LOADN                            R15 1
      146 NAMECALL                         R13 R7 K49 ["ExitAsync"]
      148 CALL                             R13 2 0
      149 RETURN                           R0 0
      150 LOADN                            R15 0
      151 NAMECALL                         R13 R7 K49 ["ExitAsync"]
      153 CALL                             R13 2 0
      154 RETURN                           R0 0
      155 GETIMPORT                        R8 K13 [require]
      157 GETTABLEKS                       R10 R4 K20 ["Packages"]
      159 GETTABLEKS                       R9 R10 K50 ["React"]
      161 CALL                             R8 1 1
      162 GETIMPORT                        R9 K13 [require]
      164 GETTABLEKS                       R11 R4 K20 ["Packages"]
      166 GETTABLEKS                       R10 R11 K51 ["ReactRoblox"]
      168 CALL                             R9 1 1
      169 GETIMPORT                        R10 K13 [require]
      171 GETTABLEKS                       R13 R4 K14 ["Src"]
      173 GETTABLEKS                       R12 R13 K52 ["Util"]
      175 GETTABLEKS                       R11 R12 K53 ["Constants"]
      177 CALL                             R10 1 1
      178 GETIMPORT                        R11 K13 [require]
      180 GETTABLEKS                       R13 R4 K14 ["Src"]
      182 GETTABLEKS                       R12 R13 K54 ["MainPlugin"]
      184 CALL                             R11 1 1
      185 GETIMPORT                        R12 K13 [require]
      187 GETTABLEKS                       R15 R4 K14 ["Src"]
      189 GETTABLEKS                       R14 R15 K52 ["Util"]
      191 GETTABLEKS                       R13 R14 K55 ["TestInExperienceUtil"]
      193 CALL                             R12 1 1
      194 GETIMPORT                        R13 K13 [require]
      196 GETTABLEKS                       R16 R4 K14 ["Src"]
      198 GETTABLEKS                       R15 R16 K15 ["Flags"]
      200 GETTABLEKS                       R14 R15 K56 ["getFFlagAvatarPreviewerEditingTools"]
      202 CALL                             R13 1 1
      203 DUPCLOSURE                       R14 K57 [PROTO_1]
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R0
      206 CAPTURE                          VAL R3
      207 LOADNIL                          R15
      208 NEWCLOSURE                       R16 P2
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R11
      214 CAPTURE                          REF R15
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R12
      218 GETIMPORT                        R18 K8 [plugin]
      220 GETTABLEKS                       R17 R18 K58 ["Unloading"]
      222 NEWCLOSURE                       R19 P3
      223 CAPTURE                          REF R15
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R14
      226 NAMECALL                         R17 R17 K59 ["Connect"]
      228 CALL                             R17 2 0
      229 MOVE                             R17 R16
      230 CALL                             R17 0 0
      231 CLOSEUPVALS                      R15
      232 RETURN                           R0 0
