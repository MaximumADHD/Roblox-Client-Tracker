PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsEdit"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       21 GETUPVAL                         R1 5
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       25 GETUPVAL                         R1 6
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       29 RETURN                           R0 0
       30 JUMPIFNOT                        R0 ; [+25]
       31 GETUPVAL                         R1 1
       32 LOADB                            R2 1
       33 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       35 GETUPVAL                         R1 2
       36 LOADB                            R2 1
       37 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       39 GETUPVAL                         R1 3
       40 LOADB                            R2 0
       41 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       43 GETUPVAL                         R1 4
       44 LOADB                            R2 0
       45 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       47 GETUPVAL                         R1 5
       48 LOADB                            R2 1
       49 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       51 GETUPVAL                         R1 6
       52 LOADB                            R2 1
       53 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       55 RETURN                           R0 0
       56 GETUPVAL                         R1 1
       57 LOADB                            R2 0
       58 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       60 GETUPVAL                         R1 2
       61 LOADB                            R2 0
       62 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       64 GETUPVAL                         R1 3
       65 LOADB                            R2 1
       66 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       68 GETUPVAL                         R1 4
       69 LOADB                            R2 1
       70 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       72 GETUPVAL                         R1 5
       73 LOADB                            R2 0
       74 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       76 GETUPVAL                         R1 6
       77 LOADB                            R2 0
       78 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       80 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pauseButtons"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["IsRunning"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Pause"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["pauseButtons"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Run"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["pauseButtons"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+6]
        5 GETIMPORT                        R0 K2 [workspace]
        7 LOADK                            R2 K3 [0.0166666666666667]
        8 NAMECALL                         R0 R0 K4 ["StepPhysics"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsEdit"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K1 ["Pause"] ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["onPause"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R0 K3 ["Resume"] ; [+6]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K4 ["onResume"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0
       20 JUMPIFNOTEQKS                    R0 K5 ["StepForward"] ; [+5]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K6 ["onStepForward"]
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["syncRunState"]
        3 LOADK                            R3 K3 ["Pause"]
        4 NAMECALL                         R0 R0 K4 ["Invoke"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["syncRunState"]
        3 LOADK                            R3 K3 ["Resume"]
        4 NAMECALL                         R0 R0 K4 ["Invoke"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["syncRunState"]
        3 LOADK                            R3 K3 ["StepForward"]
        4 NAMECALL                         R0 R0 K4 ["Invoke"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 LOADK                            R2 K6 ["SimulationStep"]
       13 NAMECALL                         R0 R0 K7 ["FindFirstAncestor"]
       15 CALL                             R0 2 1
       16 GETIMPORT                        R1 K9 [plugin]
       18 GETTABLEKS                       R2 R0 K10 ["Name"]
       20 SETTABLEKS                       R2 R1 K10 ["Name"]
       22 GETIMPORT                        R1 K12 [game]
       24 LOADK                            R3 K13 ["RunService"]
       25 NAMECALL                         R1 R1 K14 ["GetService"]
       27 CALL                             R1 2 1
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 NEWTABLE                         R8 16 0
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R2
       39 CAPTURE                          REF R3
       40 CAPTURE                          REF R4
       41 CAPTURE                          REF R5
       42 CAPTURE                          REF R6
       43 CAPTURE                          REF R7
       44 SETTABLEKS                       R9 R8 K15 ["pauseButtons"]
       46 DUPCLOSURE                       R9 K16 [PROTO_1]
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R1
       49 LOADK                            R12 K17 ["RunState"]
       50 NAMECALL                         R10 R1 K18 ["GetPropertyChangedSignal"]
       52 CALL                             R10 2 1
       53 MOVE                             R12 R9
       54 NAMECALL                         R10 R10 K19 ["Connect"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R8 K20 ["checkRunState"]
       59 DUPCLOSURE                       R10 K21 [PROTO_2]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R10 R8 K22 ["onPause"]
       64 DUPCLOSURE                       R10 K23 [PROTO_3]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R10 R8 K24 ["onResume"]
       69 DUPCLOSURE                       R10 K25 [PROTO_4]
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R10 R8 K26 ["onStepForward"]
       73 DUPCLOSURE                       R10 K27 [PROTO_5]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R10 R8 K28 ["invokeAction"]
       78 GETIMPORT                        R10 K9 [plugin]
       80 LOADK                            R12 K29 ["syncRunState"]
       81 GETTABLEKS                       R13 R8 K28 ["invokeAction"]
       83 NAMECALL                         R10 R10 K30 ["OnInvoke"]
       85 CALL                             R10 3 0
       86 DUPCLOSURE                       R10 K31 [PROTO_6]
       87 SETTABLEKS                       R10 R8 K32 ["pauseAll"]
       89 DUPCLOSURE                       R10 K33 [PROTO_7]
       90 SETTABLEKS                       R10 R8 K34 ["resumeAll"]
       92 DUPCLOSURE                       R10 K35 [PROTO_8]
       93 SETTABLEKS                       R10 R8 K36 ["stepForwardAll"]
       95 NAMECALL                         R11 R1 K37 ["IsRunning"]
       97 CALL                             R11 1 1
       98 NOT                              R10 R11
       99 GETIMPORT                        R11 K9 [plugin]
      101 LOADK                            R13 K38 ["simulationStep"]
      102 NAMECALL                         R11 R11 K39 ["CreateToolbar"]
      104 CALL                             R11 2 1
      105 LOADK                            R14 K40 ["ResumeAll"]
      106 LOADK                            R15 K41 [""]
      107 LOADK                            R16 K41 [""]
      108 NAMECALL                         R12 R11 K42 ["CreateButton"]
      110 CALL                             R12 4 1
      111 MOVE                             R2 R12
      112 LOADB                            R12 1
      113 SETTABLEKS                       R12 R2 K43 ["ClickableWhenViewportHidden"]
      115 GETTABLEKS                       R12 R2 K44 ["Click"]
      117 GETTABLEKS                       R14 R8 K34 ["resumeAll"]
      119 NAMECALL                         R12 R12 K19 ["Connect"]
      121 CALL                             R12 2 0
      122 LOADK                            R14 K45 ["Resume"]
      123 LOADK                            R15 K41 [""]
      124 LOADK                            R16 K41 [""]
      125 NAMECALL                         R12 R11 K42 ["CreateButton"]
      127 CALL                             R12 4 1
      128 MOVE                             R3 R12
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R3 K43 ["ClickableWhenViewportHidden"]
      132 GETTABLEKS                       R12 R3 K44 ["Click"]
      134 GETTABLEKS                       R14 R8 K24 ["onResume"]
      136 NAMECALL                         R12 R12 K19 ["Connect"]
      138 CALL                             R12 2 0
      139 LOADK                            R14 K46 ["PauseAll"]
      140 LOADK                            R15 K41 [""]
      141 LOADK                            R16 K41 [""]
      142 NAMECALL                         R12 R11 K42 ["CreateButton"]
      144 CALL                             R12 4 1
      145 MOVE                             R4 R12
      146 LOADB                            R12 1
      147 SETTABLEKS                       R12 R4 K43 ["ClickableWhenViewportHidden"]
      149 GETTABLEKS                       R12 R4 K44 ["Click"]
      151 GETTABLEKS                       R14 R8 K32 ["pauseAll"]
      153 NAMECALL                         R12 R12 K19 ["Connect"]
      155 CALL                             R12 2 0
      156 LOADK                            R14 K47 ["Pause"]
      157 LOADK                            R15 K41 [""]
      158 LOADK                            R16 K41 [""]
      159 NAMECALL                         R12 R11 K42 ["CreateButton"]
      161 CALL                             R12 4 1
      162 MOVE                             R5 R12
      163 LOADB                            R12 1
      164 SETTABLEKS                       R12 R5 K43 ["ClickableWhenViewportHidden"]
      166 GETTABLEKS                       R12 R5 K44 ["Click"]
      168 GETTABLEKS                       R14 R8 K22 ["onPause"]
      170 NAMECALL                         R12 R12 K19 ["Connect"]
      172 CALL                             R12 2 0
      173 LOADK                            R14 K48 ["StepForwardAll"]
      174 LOADK                            R15 K41 [""]
      175 LOADK                            R16 K41 [""]
      176 NAMECALL                         R12 R11 K42 ["CreateButton"]
      178 CALL                             R12 4 1
      179 MOVE                             R6 R12
      180 LOADB                            R12 1
      181 SETTABLEKS                       R12 R6 K43 ["ClickableWhenViewportHidden"]
      183 GETTABLEKS                       R12 R6 K44 ["Click"]
      185 GETTABLEKS                       R14 R8 K36 ["stepForwardAll"]
      187 NAMECALL                         R12 R12 K19 ["Connect"]
      189 CALL                             R12 2 0
      190 LOADK                            R14 K49 ["StepForward"]
      191 LOADK                            R15 K41 [""]
      192 LOADK                            R16 K41 [""]
      193 NAMECALL                         R12 R11 K42 ["CreateButton"]
      195 CALL                             R12 4 1
      196 MOVE                             R7 R12
      197 LOADB                            R12 1
      198 SETTABLEKS                       R12 R7 K43 ["ClickableWhenViewportHidden"]
      200 GETTABLEKS                       R12 R7 K44 ["Click"]
      202 GETTABLEKS                       R14 R8 K26 ["onStepForward"]
      204 NAMECALL                         R12 R12 K19 ["Connect"]
      206 CALL                             R12 2 0
      207 GETTABLEKS                       R12 R8 K15 ["pauseButtons"]
      209 MOVE                             R13 R10
      210 CALL                             R12 1 0
      211 CLOSEUPVALS                      R2
      212 RETURN                           R0 0
