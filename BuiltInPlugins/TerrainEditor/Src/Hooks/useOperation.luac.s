PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["operation"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K4 [{"Operation", "Paused", "Progress"}]
        6 SETTABLEKS                       R0 R2 K1 ["Operation"]
        8 NAMECALL                         R3 R0 K5 ["isPaused"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K2 ["Paused"]
       13 NAMECALL                         R3 R0 K6 ["getProgress"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K3 ["Progress"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 2
       20 NAMECALL                         R2 R0 K7 ["hasStarted"]
       22 CALL                             R2 1 -1
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnOperationChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["join"]
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K2 [{"Paused"}]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K1 ["Paused"]
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["join"]
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K3 [{"Progress", "TimeRemaining"}]
        6 SETTABLEKS                       R0 R5 K1 ["Progress"]
        8 SETTABLEKS                       R1 R5 K2 ["TimeRemaining"]
       10 CALL                             R3 2 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["join"]
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K2 [{"Paused"}]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K1 ["Paused"]
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Operation"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["Operation"]
        8 GETTABLEKS                       R0 R1 K1 ["Canceled"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R0 R0 K2 ["Connect"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["Operation"]
       18 GETTABLEKS                       R1 R2 K3 ["Finished"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U1
       22 NAMECALL                         R1 R1 K2 ["Connect"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K0 ["Operation"]
       28 GETTABLEKS                       R2 R3 K4 ["Paused"]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U0
       34 NAMECALL                         R2 R2 K2 ["Connect"]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K0 ["Operation"]
       40 GETTABLEKS                       R3 R4 K5 ["ProgressChanged"]
       42 NEWCLOSURE                       R5 P3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U0
       46 NAMECALL                         R3 R3 K2 ["Connect"]
       48 CALL                             R3 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K0 ["Operation"]
       52 GETTABLEKS                       R4 R5 K6 ["Resumed"]
       54 NEWCLOSURE                       R6 P4
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U0
       58 NAMECALL                         R4 R4 K2 ["Connect"]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K0 ["Operation"]
       64 GETTABLEKS                       R5 R6 K7 ["Started"]
       66 NEWCLOSURE                       R7 P5
       67 CAPTURE                          UPVAL U1
       68 NAMECALL                         R5 R5 K2 ["Connect"]
       70 CALL                             R5 2 1
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R6 R7 K0 ["Operation"]
       74 NAMECALL                         R6 R6 K8 ["hasFinished"]
       76 CALL                             R6 1 1
       77 JUMPIFNOT                        R6 ; [+3]
       78 GETUPVAL                         R6 1
       79 LOADB                            R7 0
       80 CALL                             R6 1 0
       81 NEWCLOSURE                       R6 P6
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 RETURN                           R6 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Operation"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["Operation"]
        7 NAMECALL                         R0 R0 K1 ["isPaused"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+6]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R0 R1 K0 ["Operation"]
       14 NAMECALL                         R0 R0 K2 ["pause"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Operation"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["Operation"]
        7 NAMECALL                         R0 R0 K1 ["isPaused"]
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R0 R1 K0 ["Operation"]
       14 NAMECALL                         R0 R0 K2 ["resume"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Operation"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["Operation"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["getTool"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 LOADB                            R3 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 DUPTABLE                         R5 K4 [{"Operation", "Paused", "Progress"}]
        8 GETUPVAL                         R6 0
        9 NAMECALL                         R7 R1 K5 ["operation"]
       11 CALL                             R7 1 -1
       12 CALL                             R6 -1 1
       13 SETTABLEKS                       R6 R5 K1 ["Operation"]
       15 GETUPVAL                         R6 0
       16 LOADB                            R7 0
       17 CALL                             R6 1 1
       18 SETTABLEKS                       R6 R5 K2 ["Paused"]
       20 GETUPVAL                         R6 0
       21 LOADN                            R7 0
       22 CALL                             R6 1 1
       23 SETTABLEKS                       R6 R5 K3 ["Progress"]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 1
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R3
       31 NEWTABLE                         R8 0 1
       33 MOVE                             R9 R1
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 1
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U2
       43 NEWTABLE                         R8 0 5
       45 MOVE                             R9 R1
       46 GETTABLEKS                       R10 R4 K1 ["Operation"]
       48 GETTABLEKS                       R11 R4 K2 ["Paused"]
       50 GETTABLEKS                       R12 R4 K3 ["Progress"]
       52 GETTABLEKS                       R13 R4 K6 ["TimeRemaining"]
       54 SETLIST                          R8 R9 5 [1]
       56 CALL                             R6 2 0
       57 GETUPVAL                         R6 3
       58 NEWCLOSURE                       R7 P2
       59 CAPTURE                          VAL R4
       60 NEWTABLE                         R8 0 2
       62 MOVE                             R9 R1
       63 GETTABLEKS                       R10 R4 K1 ["Operation"]
       65 SETLIST                          R8 R9 2 [1]
       67 CALL                             R6 2 1
       68 GETUPVAL                         R7 3
       69 NEWCLOSURE                       R8 P3
       70 CAPTURE                          VAL R4
       71 NEWTABLE                         R9 0 2
       73 MOVE                             R10 R1
       74 GETTABLEKS                       R11 R4 K1 ["Operation"]
       76 SETLIST                          R9 R10 2 [1]
       78 CALL                             R7 2 1
       79 GETUPVAL                         R8 3
       80 NEWCLOSURE                       R9 P4
       81 CAPTURE                          VAL R4
       82 NEWTABLE                         R10 0 2
       84 MOVE                             R11 R1
       85 GETTABLEKS                       R12 R4 K1 ["Operation"]
       87 SETLIST                          R10 R11 2 [1]
       89 CALL                             R8 2 1
       90 GETTABLEKS                       R9 R4 K1 ["Operation"]
       92 JUMPIFNOT                        R9 ; [+65]
       93 DUPTABLE                         R9 K14 [{"Description", "Enabled", "OnCancel", "OnClose", "OnPause", "OnResume", "Paused", "Progress", "TimeRemaining", "Title"}]
       94 GETTABLEKS                       R10 R4 K1 ["Operation"]
       96 NAMECALL                         R10 R10 K15 ["getDescription"]
       98 CALL                             R10 1 1
       99 SETTABLEKS                       R10 R9 K7 ["Description"]
      101 SETTABLEKS                       R2 R9 K8 ["Enabled"]
      103 GETTABLEKS                       R11 R4 K1 ["Operation"]
      105 NAMECALL                         R11 R11 K16 ["canCancel"]
      107 CALL                             R11 1 1
      108 JUMPIFNOT                        R11 ; [+2]
      109 MOVE                             R10 R8
      110 JUMP                             ; [+1]
      111 LOADNIL                          R10
      112 SETTABLEKS                       R10 R9 K9 ["OnCancel"]
      114 SETTABLEKS                       R8 R9 K10 ["OnClose"]
      116 GETTABLEKS                       R11 R4 K1 ["Operation"]
      118 NAMECALL                         R11 R11 K17 ["canPause"]
      120 CALL                             R11 1 1
      121 JUMPIFNOT                        R11 ; [+2]
      122 MOVE                             R10 R6
      123 JUMP                             ; [+1]
      124 LOADNIL                          R10
      125 SETTABLEKS                       R10 R9 K11 ["OnPause"]
      127 GETTABLEKS                       R11 R4 K1 ["Operation"]
      129 NAMECALL                         R11 R11 K18 ["canResume"]
      131 CALL                             R11 1 1
      132 JUMPIFNOT                        R11 ; [+2]
      133 MOVE                             R10 R7
      134 JUMP                             ; [+1]
      135 LOADNIL                          R10
      136 SETTABLEKS                       R10 R9 K12 ["OnResume"]
      138 GETTABLEKS                       R10 R4 K2 ["Paused"]
      140 SETTABLEKS                       R10 R9 K2 ["Paused"]
      142 GETTABLEKS                       R10 R4 K3 ["Progress"]
      144 SETTABLEKS                       R10 R9 K3 ["Progress"]
      146 GETTABLEKS                       R10 R4 K6 ["TimeRemaining"]
      148 SETTABLEKS                       R10 R9 K6 ["TimeRemaining"]
      150 GETTABLEKS                       R10 R4 K1 ["Operation"]
      152 NAMECALL                         R10 R10 K19 ["getName"]
      154 CALL                             R10 1 1
      155 SETTABLEKS                       R10 R9 K13 ["Title"]
      157 RETURN                           R9 1
      158 LOADNIL                          R9
      159 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       23 GETTABLEKS                       R4 R2 K10 ["useState"]
       25 GETTABLEKS                       R5 R2 K11 ["useEffect"]
       27 DUPCLOSURE                       R6 K12 [PROTO_14]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R6 1
