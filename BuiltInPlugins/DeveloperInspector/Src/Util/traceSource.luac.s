PROTO_0:
        0 LOADNIL                          R1
        1 LOADN                            R2 0
        2 GETIMPORT                        R3 K2 [string.split]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 [":"]
        6 CALL                             R3 2 1
        7 GETIMPORT                        R4 K2 [string.split]
        9 GETTABLEN                        R5 R3 2
       10 LOADK                            R6 K4 [" "]
       11 CALL                             R4 2 1
       12 MOVE                             R2 R4
       13 GETTABLEN                        R5 R2 1
       14 FASTCALL1                        TONUMBER R5 ; [+2]
       15 GETIMPORT                        R4 K6 [tonumber]
       17 CALL                             R4 1 1
       18 MOVE                             R2 R4
       19 GETIMPORT                        R4 K2 [string.split]
       21 GETTABLEN                        R5 R3 1
       22 LOADK                            R6 K7 ["."]
       23 CALL                             R4 2 1
       24 GETIMPORT                        R5 K9 [string.lower]
       26 GETTABLEN                        R6 R4 1
       27 CALL                             R5 1 1
       28 LOADK                            R8 K10 ["builtin"]
       29 NAMECALL                         R6 R5 K11 ["find"]
       31 CALL                             R6 2 1
       32 JUMPIFNOT                        R6 ; [+38]
       33 GETTABLEN                        R7 R4 1
       34 LOADK                            R8 K12 [".rbxm"]
       35 CONCAT                           R6 R7 R8
       36 GETIMPORT                        R7 K14 [game]
       38 LOADK                            R9 K15 ["PluginDebugService"]
       39 NAMECALL                         R7 R7 K16 ["GetService"]
       41 CALL                             R7 2 1
       42 MOVE                             R9 R6
       43 NAMECALL                         R7 R7 K17 ["FindFirstChild"]
       45 CALL                             R7 2 1
       46 JUMPIF                           R7 ; [+11]
       47 GETIMPORT                        R7 K19 [warn]
       49 LOADK                            R8 K20 ["Traceback unavailable: %s is not in PluginDebugService"]
       50 MOVE                             R10 R6
       51 NAMECALL                         R8 R8 K21 ["format"]
       53 CALL                             R8 2 -1
       54 CALL                             R7 -1 0
       55 LOADNIL                          R7
       56 LOADNIL                          R8
       57 RETURN                           R7 2
       58 LOADN                            R9 1
       59 LOADK                            R10 K15 ["PluginDebugService"]
       60 FASTCALL3                        TABLE_INSERT R4 R9 R10
       62 MOVE                             R8 R4
       63 GETIMPORT                        R7 K24 [table.insert]
       65 CALL                             R7 3 0
       66 GETIMPORT                        R7 K9 [string.lower]
       68 GETTABLEN                        R8 R4 1
       69 CALL                             R7 1 1
       70 MOVE                             R5 R7
       71 LOADK                            R8 K25 ["plugindebugservice"]
       72 NAMECALL                         R6 R5 K11 ["find"]
       74 CALL                             R6 2 1
       75 JUMPIFNOT                        R6 ; [+22]
       76 GETTABLEN                        R6 R4 3
       77 JUMPIFNOTEQKS                    R6 K26 ["rbxm"] ; [+10]
       79 GETTABLEN                        R7 R4 2
       80 LOADK                            R8 K12 [".rbxm"]
       81 CONCAT                           R6 R7 R8
       82 SETTABLEN                        R6 R4 2
       83 GETIMPORT                        R6 K28 [table.remove]
       85 MOVE                             R7 R4
       86 LOADN                            R8 3
       87 CALL                             R6 2 0
       88 GETUPVAL                         R6 0
       89 JUMPIF                           R6 ; [+8]
       90 GETIMPORT                        R6 K19 [warn]
       92 LOADK                            R7 K29 ["Traceback unavailable: %s is disabled."]
       93 MOVE                             R9 R5
       94 NAMECALL                         R7 R7 K21 ["format"]
       96 CALL                             R7 2 -1
       97 CALL                             R6 -1 0
       98 LOADK                            R8 K30 ["coregui"]
       99 NAMECALL                         R6 R5 K11 ["find"]
      101 CALL                             R6 2 1
      102 JUMPIFNOT                        R6 ; [+10]
      103 GETUPVAL                         R6 1
      104 JUMPIF                           R6 ; [+8]
      105 GETIMPORT                        R6 K19 [warn]
      107 LOADK                            R7 K29 ["Traceback unavailable: %s is disabled."]
      108 MOVE                             R9 R5
      109 NAMECALL                         R7 R7 K21 ["format"]
      111 CALL                             R7 2 -1
      112 CALL                             R6 -1 0
      113 GETIMPORT                        R6 K14 [game]
      115 GETTABLEN                        R8 R4 1
      116 NAMECALL                         R6 R6 K16 ["GetService"]
      118 CALL                             R6 2 1
      119 MOVE                             R1 R6
      120 JUMPIF                           R1 ; [+11]
      121 GETIMPORT                        R6 K19 [warn]
      123 LOADK                            R7 K31 ["Unable to find traceback. Does the path %s exist in the explorer?"]
      124 MOVE                             R9 R0
      125 NAMECALL                         R7 R7 K21 ["format"]
      127 CALL                             R7 2 -1
      128 CALL                             R6 -1 0
      129 LOADNIL                          R6
      130 LOADNIL                          R7
      131 RETURN                           R6 2
      132 LOADN                            R8 2
      133 LENGTH                           R6 R4
      134 LOADN                            R7 1
      135 FORNPREP                         R6
      136 GETTABLE                         R11 R4 R8
      137 LOADB                            R12 1
      138 NAMECALL                         R9 R1 K17 ["FindFirstChild"]
      140 CALL                             R9 3 1
      141 MOVE                             R1 R9
      142 FORNLOOP                         R6
      143 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["DebugFlags"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["RunningUnderCLI"]
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 JUMPIFNOT                        R1 ; [+3]
       15 LOADB                            R2 1
       16 LOADB                            R3 1
       17 JUMP                             ; [+14]
       18 GETIMPORT                        R5 K9 [settings]
       20 CALL                             R5 0 1
       21 GETTABLEKS                       R4 R5 K10 ["Studio"]
       23 GETTABLEKS                       R2 R4 K7 ["Show Core GUI in Explorer while Playing"]
       25 GETIMPORT                        R5 K9 [settings]
       27 CALL                             R5 0 1
       28 GETTABLEKS                       R4 R5 K10 ["Studio"]
       30 GETTABLEKS                       R3 R4 K11 ["PluginDebuggingEnabled"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          REF R3
       34 CAPTURE                          REF R2
       35 CLOSEUPVALS                      R2
       36 RETURN                           R4 1
