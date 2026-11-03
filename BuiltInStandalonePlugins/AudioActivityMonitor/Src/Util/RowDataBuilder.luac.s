PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Column"]
        3 JUMPIFEQKNIL                     R2 ; [+43]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Column"]
        8 GETTABLEKS                       R2 R2 K1 ["getValue"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 1
       12 LOADB                            R5 1
       13 CALL                             R2 3 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["Column"]
       17 GETTABLEKS                       R3 R3 K1 ["getValue"]
       19 MOVE                             R4 R1
       20 GETUPVAL                         R5 1
       21 LOADB                            R6 1
       22 CALL                             R3 3 1
       23 JUMPIFEQ                         R2 R3 ; [+23]
       25 JUMPIFNOTEQKNIL                  R2 ; [+3]
       27 LOADB                            R4 0
       28 RETURN                           R4 1
       29 JUMPIFNOTEQKNIL                  R3 ; [+3]
       31 LOADB                            R4 1
       32 RETURN                           R4 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K2 ["Ascending"]
       36 JUMPIFNOT                        R5 ; [+5]
       37 JUMPIFLT                         R2 R3 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 RETURN                           R4 1
       42 JUMPIFLT                         R3 R2 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 RETURN                           R4 1
       47 GETTABLEKS                       R3 R0 K3 ["Data"]
       49 GETTABLEKS                       R3 R3 K4 ["TimeBecameActive"]
       51 GETTABLEKS                       R4 R1 K3 ["Data"]
       53 GETTABLEKS                       R4 R4 K4 ["TimeBecameActive"]
       55 JUMPIFLT                         R4 R3 ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLEKS                       R10 R9 K0 ["Targets"]
        8 JUMPIFNOTEQKNIL                  R10 ; [+16]
       10 GETTABLEKS                       R10 R9 K1 ["Id"]
       12 DUPTABLE                         R11 K4 [{"Data", "Children"}]
       13 SETTABLEKS                       R9 R11 K2 ["Data"]
       15 GETTABLEKS                       R13 R9 K5 ["ShouldBeTargeted"]
       17 JUMPIFNOT                        R13 ; [+3]
       18 NEWTABLE                         R12 0 0
       20 JUMP                             ; [+1]
       21 LOADNIL                          R12
       22 SETTABLEKS                       R12 R11 K3 ["Children"]
       24 SETTABLE                         R11 R4 R10
       25 FORGLOOP                         R5 2 ; [-20]
       27 MOVE                             R5 R0
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R10 R9 K0 ["Targets"]
       33 JUMPIFEQKNIL                     R10 ; [+64]
       35 LOADB                            R10 0
       36 GETTABLEKS                       R11 R9 K0 ["Targets"]
       38 LOADNIL                          R12
       39 LOADNIL                          R13
       40 FORGPREP                         R11
       41 GETTABLEKS                       R17 R15 K1 ["Id"]
       43 GETTABLE                         R16 R4 R17
       44 JUMPIFNOT                        R16 ; [+18]
       45 GETTABLEKS                       R17 R16 K3 ["Children"]
       47 JUMPIFNOT                        R17 ; [+15]
       48 GETTABLEKS                       R18 R16 K3 ["Children"]
       50 DUPTABLE                         R19 K7 [{"Data", "ContributingGain"}]
       51 SETTABLEKS                       R9 R19 K2 ["Data"]
       53 GETTABLEKS                       R20 R15 K6 ["ContributingGain"]
       55 SETTABLEKS                       R20 R19 K6 ["ContributingGain"]
       57 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       59 GETIMPORT                        R17 K10 [table.insert]
       61 CALL                             R17 2 0
       62 LOADB                            R10 1
       63 FORGLOOP                         R11 2 ; [-23]
       65 JUMPIF                           R10 ; [+32]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K1 ["Id"]
       69 GETTABLE                         R11 R4 R12
       70 JUMPIFNOTEQKNIL                  R11 ; [+13]
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K1 ["Id"]
       75 DUPTABLE                         R12 K4 [{"Data", "Children"}]
       76 GETUPVAL                         R13 0
       77 SETTABLEKS                       R13 R12 K2 ["Data"]
       79 NEWTABLE                         R13 0 0
       81 SETTABLEKS                       R13 R12 K3 ["Children"]
       83 SETTABLE                         R12 R4 R11
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R13 R13 K1 ["Id"]
       87 GETTABLE                         R12 R4 R13
       88 GETTABLEKS                       R12 R12 K3 ["Children"]
       90 DUPTABLE                         R13 K12 [{["Data"], ["ContributingGain"] = 0}]
       91 SETTABLEKS                       R9 R13 K2 ["Data"]
       93 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       95 GETIMPORT                        R11 K10 [table.insert]
       97 CALL                             R11 2 0
       98 FORGLOOP                         R5 2 ; [-68]
      100 NEWTABLE                         R5 0 0
      102 MOVE                             R6 R4
      103 LOADNIL                          R7
      104 LOADNIL                          R8
      105 FORGPREP                         R6
      106 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      108 MOVE                             R12 R5
      109 MOVE                             R13 R10
      110 GETIMPORT                        R11 K10 [table.insert]
      112 CALL                             R11 2 0
      113 FORGLOOP                         R6 2 ; [-8]
      115 NEWCLOSURE                       R6 P0
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R3
      118 MOVE                             R7 R5
      119 LOADNIL                          R8
      120 LOADNIL                          R9
      121 FORGPREP                         R7
      122 GETTABLEKS                       R12 R11 K3 ["Children"]
      124 JUMPIFNOT                        R12 ; [+6]
      125 GETIMPORT                        R12 K14 [table.sort]
      127 GETTABLEKS                       R13 R11 K3 ["Children"]
      129 MOVE                             R14 R6
      130 CALL                             R12 2 0
      131 FORGLOOP                         R7 2 ; [-10]
      133 GETIMPORT                        R7 K14 [table.sort]
      135 MOVE                             R8 R5
      136 MOVE                             R9 R6
      137 CALL                             R7 2 0
      138 NEWTABLE                         R7 0 0
      140 MOVE                             R8 R5
      141 LOADNIL                          R9
      142 LOADNIL                          R10
      143 FORGPREP                         R8
      144 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      146 MOVE                             R14 R7
      147 MOVE                             R15 R12
      148 GETIMPORT                        R13 K10 [table.insert]
      150 CALL                             R13 2 0
      151 GETTABLEKS                       R13 R12 K3 ["Children"]
      153 JUMPIFNOT                        R13 ; [+44]
      154 GETTABLEKS                       R15 R12 K2 ["Data"]
      156 GETTABLEKS                       R15 R15 K1 ["Id"]
      158 GETTABLE                         R14 R1 R15
      159 JUMPIFEQKB                       R14 TRUE ; [+2]
      161 LOADB                            R13 0 +1
      162 LOADB                            R13 1
      163 GETTABLEKS                       R14 R12 K3 ["Children"]
      165 LOADNIL                          R15
      166 LOADNIL                          R16
      167 FORGPREP                         R14
      168 JUMPIF                           R13 ; [+11]
      169 GETTABLEKS                       R20 R18 K2 ["Data"]
      171 GETTABLEKS                       R20 R20 K1 ["Id"]
      173 GETTABLE                         R19 R1 R20
      174 JUMPIFEQKB                       R19 TRUE ; [+2]
      176 LOADB                            R13 0 +1
      177 LOADB                            R13 1
      178 FORGLOOP                         R14 2 ; [-11]
      180 JUMPIFNOT                        R13 ; [+17]
      181 LOADB                            R14 1
      182 SETTABLEKS                       R14 R12 K15 ["IsExpanded"]
      184 GETTABLEKS                       R14 R12 K3 ["Children"]
      186 LOADNIL                          R15
      187 LOADNIL                          R16
      188 FORGPREP                         R14
      189 FASTCALL2                        TABLE_INSERT R7 R18 ; [+5]
      191 MOVE                             R20 R7
      192 MOVE                             R21 R18
      193 GETIMPORT                        R19 K10 [table.insert]
      195 CALL                             R19 2 0
      196 FORGLOOP                         R14 2 ; [-8]
      198 FORGLOOP                         R8 2 ; [-55]
      200 RETURN                           R7 1

PROTO_2:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["ShouldBeTargeted"]
        8 JUMPIF                           R8 ; [+6]
        9 ADDK                             R1 R1 K1 [1]
       10 GETTABLEKS                       R8 R7 K2 ["PlaybackState"]
       12 JUMPIFNOTEQKS                    R8 K3 ["Playing"] ; [+2]
       14 ADDK                             R2 R2 K1 [1]
       15 FORGLOOP                         R3 2 ; [-10]
       17 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K27 [{["Id"] = "no outputs", ["Name"] = "(No outputs)", ["ClassName"] = "NoOutputs", ["Path"] = "", ["Active"] = True, ["TimeBecameActive"] = -1, ["Volume"] = , ["PotentialAudibility"] = 0, ["Metering"] = 0, ["Targets"] = , ["ShouldBeTargeted"] = True}]
       15 NEWTABLE                         R3 2 0
       17 DUPCLOSURE                       R4 K28 [PROTO_1]
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R4 R3 K29 ["makeRows"]
       21 DUPCLOSURE                       R4 K30 [PROTO_2]
       22 SETTABLEKS                       R4 R3 K31 ["countVoices"]
       24 RETURN                           R3 1
