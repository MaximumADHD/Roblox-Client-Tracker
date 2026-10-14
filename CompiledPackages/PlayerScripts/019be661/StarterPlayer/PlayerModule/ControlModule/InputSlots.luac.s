PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K1 [pairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLE                         R7 R1 R5
       10 JUMPIFEQ                         R7 R6 ; [+3]
       12 LOADB                            R7 0
       13 RETURN                           R7 1
       14 FORGLOOP                         R2 2 ; [-6]
       16 GETIMPORT                        R2 K1 [pairs]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 3
       20 FORGPREP_NEXT                    R2
       21 GETTABLE                         R7 R0 R5
       22 JUMPIFNOTEQKNIL                  R7 ; [+3]
       24 LOADB                            R7 0
       25 RETURN                           R7 1
       26 FORGLOOP                         R2 2 ; [-6]
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+2]
        7 RETURN                           R5 1
        8 FORGLOOP                         R2 2 ; [-4]
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R0 3
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADN                            R3 0
        2 GETUPVAL                         R7 1
        3 LENGTH                           R6 R7
        4 SUBK                             R5 R6 K0 [3]
        5 FASTCALL2                        MATH_MIN R5 R0 ; [+4]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R4 K3 [math.min]
       10 CALL                             R4 2 1
       11 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       13 GETIMPORT                        R2 K5 [math.max]
       15 CALL                             R2 2 1
       16 SETUPVAL                         R2 0
       17 GETUPVAL                         R2 0
       18 JUMPIFEQ                         R2 R1 ; [+5]
       20 GETUPVAL                         R2 2
       21 NAMECALL                         R2 R2 K6 ["Fire"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Event"]
        3 RETURN                           R0 1

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K0 ["InputContexts"]
        9 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMP                             ; [+10]
       13 GETIMPORT                        R1 K3 [script]
       15 GETTABLEKS                       R1 R1 K4 ["Parent"]
       17 GETTABLEKS                       R1 R1 K4 ["Parent"]
       19 LOADK                            R3 K0 ["InputContexts"]
       20 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       22 CALL                             R1 2 1
       23 JUMPIF                           R1 ; [+2]
       24 LOADNIL                          R2
       25 RETURN                           R2 1
       26 LOADK                            R4 K5 ["CharacterContext"]
       27 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       29 CALL                             R2 2 1
       30 JUMPIF                           R2 ; [+2]
       31 LOADNIL                          R3
       32 RETURN                           R3 1
       33 MOVE                             R6 R0
       34 LOADK                            R7 K6 ["Action"]
       35 CONCAT                           R5 R6 R7
       36 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       38 CALL                             R3 2 1
       39 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isEnabled"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["FireCustomInputs"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["SendInputToCCLCharacter"]
       13 GETUPVAL                         R2 2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isEnabled"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["FireCustomInputs"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["SendInputToCCLCharacter"]
       13 GETUPVAL                         R2 2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K3 ["GetAbilities"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K4 ["PreferredInput"]
       15 GETIMPORT                        R5 K7 [Enum.PreferredInput.Touch]
       17 JUMPIFNOTEQ                      R4 R5 ; [+3]
       19 LOADN                            R3 7
       20 JUMP                             ; [+1]
       21 LOADN                            R3 11
       22 GETIMPORT                        R4 K9 [pairs]
       24 GETUPVAL                         R5 0
       25 CALL                             R4 1 3
       26 FORGPREP_NEXT                    R4
       27 GETIMPORT                        R10 K9 [pairs]
       29 MOVE                             R11 R2
       30 CALL                             R10 1 3
       31 FORGPREP_NEXT                    R10
       32 JUMPIFNOTEQ                      R14 R8 ; [+3]
       34 MOVE                             R9 R13
       35 JUMP                             ; [+3]
       36 FORGLOOP                         R10 2 ; [-5]
       38 LOADNIL                          R9
       39 JUMPIFNOT                        R9 ; [+2]
       40 JUMPIFNOTLT                      R3 R7 ; [+4]
       42 GETUPVAL                         R9 0
       43 LOADNIL                          R10
       44 SETTABLE                         R10 R9 R7
       45 FORGLOOP                         R4 2 ; [-19]
       47 NEWTABLE                         R4 0 0
       49 SETUPVAL                         R4 1
       50 NEWTABLE                         R4 0 0
       52 GETIMPORT                        R5 K11 [ipairs]
       54 MOVE                             R6 R2
       55 CALL                             R5 1 3
       56 FORGPREP_INEXT                   R5
       57 GETUPVAL                         R11 0
       58 GETIMPORT                        R12 K9 [pairs]
       60 MOVE                             R13 R11
       61 CALL                             R12 1 3
       62 FORGPREP_NEXT                    R12
       63 JUMPIFNOTEQ                      R16 R9 ; [+3]
       65 MOVE                             R10 R15
       66 JUMP                             ; [+3]
       67 FORGLOOP                         R12 2 ; [-5]
       69 LOADNIL                          R10
       70 JUMPIF                           R10 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       73 MOVE                             R11 R4
       74 MOVE                             R12 R9
       75 GETIMPORT                        R10 K13 [table.insert]
       77 CALL                             R10 2 0
       78 FORGLOOP                         R5 2 [inext] ; [-22]
       80 GETIMPORT                        R5 K11 [ipairs]
       82 MOVE                             R6 R4
       83 CALL                             R5 1 3
       84 FORGPREP_INEXT                   R5
       85 GETUPVAL                         R10 2
       86 MOVE                             R12 R9
       87 NAMECALL                         R10 R10 K14 ["GetAbilityConfig"]
       89 CALL                             R10 2 1
       90 JUMPIFNOT                        R10 ; [+24]
       91 GETTABLEKS                       R12 R10 K15 ["Slot"]
       93 FASTCALL1                        TONUMBER R12 ; [+2]
       94 GETIMPORT                        R11 K17 [tonumber]
       96 CALL                             R11 1 1
       97 LOADN                            R12 0
       98 JUMPIFNOTLT                      R12 R11 ; [+16]
      100 GETUPVAL                         R13 0
      101 GETTABLE                         R12 R13 R11
      102 JUMPIF                           R12 ; [+5]
      103 JUMPIFNOTLE                      R11 R3 ; [+4]
      105 GETUPVAL                         R13 0
      106 SETTABLE                         R9 R13 R11
      107 JUMP                             ; [+7]
      108 GETUPVAL                         R14 1
      109 FASTCALL2                        TABLE_INSERT R14 R9 ; [+4]
      111 MOVE                             R15 R9
      112 GETIMPORT                        R13 K13 [table.insert]
      114 CALL                             R13 2 0
      115 FORGLOOP                         R5 2 [inext] ; [-31]
      117 GETIMPORT                        R5 K11 [ipairs]
      119 MOVE                             R6 R4
      120 CALL                             R5 1 3
      121 FORGPREP_INEXT                   R5
      122 GETUPVAL                         R10 2
      123 MOVE                             R12 R9
      124 NAMECALL                         R10 R10 K14 ["GetAbilityConfig"]
      126 CALL                             R10 2 1
      127 JUMPIFNOT                        R10 ; [+47]
      128 GETTABLEKS                       R12 R10 K15 ["Slot"]
      130 FASTCALL1                        TONUMBER R12 ; [+2]
      131 GETIMPORT                        R11 K17 [tonumber]
      133 CALL                             R11 1 1
      134 JUMPIFNOTEQKN                    R11 K18 [0] ; [+40]
      136 GETUPVAL                         R13 4
      137 GETTABLE                         R12 R13 R9
      138 JUMPIFNOT                        R12 ; [+11]
      139 LOADN                            R13 0
      140 JUMPIFNOTLT                      R13 R12 ; [+9]
      142 JUMPIFNOTLE                      R12 R3 ; [+7]
      144 GETUPVAL                         R14 0
      145 GETTABLE                         R13 R14 R12
      146 JUMPIF                           R13 ; [+3]
      147 GETUPVAL                         R13 0
      148 SETTABLE                         R9 R13 R12
      149 JUMP                             ; [+25]
      150 LOADN                            R13 -1
      151 LOADN                            R16 1
      152 MOVE                             R14 R3
      153 LOADN                            R15 1
      154 FORNPREP                         R14
      155 GETUPVAL                         R18 0
      156 GETTABLE                         R17 R18 R16
      157 JUMPIF                           R17 ; [+2]
      158 MOVE                             R13 R16
      159 JUMP                             ; [+1]
      160 FORNLOOP                         R14
      161 JUMPIFEQKN                       R13 K19 [-1] ; [+6]
      163 GETUPVAL                         R14 0
      164 SETTABLE                         R9 R14 R13
      165 GETUPVAL                         R14 4
      166 SETTABLE                         R13 R14 R9
      167 JUMP                             ; [+7]
      168 GETUPVAL                         R15 1
      169 FASTCALL2                        TABLE_INSERT R15 R9 ; [+4]
      171 MOVE                             R16 R9
      172 GETIMPORT                        R14 K13 [table.insert]
      174 CALL                             R14 2 0
      175 FORGLOOP                         R5 2 [inext] ; [-54]
      177 GETUPVAL                         R5 5
      178 GETTABLEKS                       R5 R5 K20 ["setOverflowScrollIndex"]
      180 GETUPVAL                         R6 5
      181 GETTABLEKS                       R6 R6 K21 ["getOverflowScrollIndex"]
      183 CALL                             R6 0 -1
      184 CALL                             R5 -1 0
      185 GETUPVAL                         R5 6
      186 GETUPVAL                         R6 0
      187 MOVE                             R7 R0
      188 CALL                             R5 2 1
      189 JUMPIFNOT                        R5 ; [+5]
      190 GETUPVAL                         R5 6
      191 GETUPVAL                         R6 1
      192 MOVE                             R7 R1
      193 CALL                             R5 2 1
      194 JUMPIF                           R5 ; [+4]
      195 GETUPVAL                         R5 7
      196 NAMECALL                         R5 R5 K22 ["Fire"]
      198 CALL                             R5 1 0
      199 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["Character"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 0
        6 JUMPIFNOT                        R5 ; [+6]
        7 GETUPVAL                         R7 1
        8 NAMECALL                         R5 R3 K1 ["FindFirstChildOfClass"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R7 1
       14 NAMECALL                         R5 R3 K2 ["FindFirstChild"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 JUMPIF                           R4 ; [+1]
       19 RETURN                           R0 0
       20 NEWTABLE                         R7 1 0
       22 SETTABLE                         R2 R7 R1
       23 NAMECALL                         R5 R4 K3 ["UpdateFields"]
       25 CALL                             R5 2 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+18]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFEQKNIL                     R1 ; [+60]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLE                         R1 R2 R3
       10 JUMPIFEQKS                       R1 K0 [""] ; [+55]
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 4
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 GETTABLE                         R3 R4 R5
       17 MOVE                             R4 R0
       18 CALL                             R1 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 5
       21 GETUPVAL                         R3 1
       22 GETUPVAL                         R4 2
       23 GETTABLE                         R2 R3 R4
       24 CALL                             R1 1 1
       25 JUMPIFNOT                        R1 ; [+40]
       26 GETUPVAL                         R2 6
       27 JUMPIFNOT                        R2 ; [+10]
       28 LOADK                            R4 K1 ["ScriptableBinding"]
       29 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+33]
       33 MOVE                             R5 R0
       34 NAMECALL                         R3 R2 K3 ["Fire"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 7
       39 JUMPIFNOT                        R2 ; [+22]
       40 LOADK                            R4 K1 ["ScriptableBinding"]
       41 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       43 CALL                             R2 2 1
       44 JUMPIFNOT                        R2 ; [+12]
       45 GETIMPORT                        R3 K5 [pcall]
       47 NEWCLOSURE                       R4 P0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 CALL                             R3 1 2
       51 JUMPIF                           R3 ; [+14]
       52 MOVE                             R7 R0
       53 NAMECALL                         R5 R1 K3 ["Fire"]
       55 CALL                             R5 2 0
       56 RETURN                           R0 0
       57 MOVE                             R5 R0
       58 NAMECALL                         R3 R1 K3 ["Fire"]
       60 CALL                             R3 2 0
       61 RETURN                           R0 0
       62 MOVE                             R4 R0
       63 NAMECALL                         R2 R1 K3 ["Fire"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 ADD                              R3 R4 R5
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFEQKNIL                     R1 ; [+8]
        7 JUMPIFEQKS                       R1 K0 [""] ; [+6]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R1
       12 MOVE                             R5 R0
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_14:
        0 DUPCLOSURE                       R0 K0 [PROTO_10]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R2 2
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R2 3
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R1 4
        8 LOADK                            R3 K1 ["InputContexts"]
        9 LOADK                            R4 K2 [∞]
       10 NAMECALL                         R1 R1 K3 ["WaitForChild"]
       12 CALL                             R1 3 1
       13 JUMP                             ; [+10]
       14 GETIMPORT                        R1 K5 [script]
       16 GETTABLEKS                       R1 R1 K6 ["Parent"]
       18 GETTABLEKS                       R1 R1 K6 ["Parent"]
       20 LOADK                            R3 K1 ["InputContexts"]
       21 NAMECALL                         R1 R1 K7 ["FindFirstChild"]
       23 CALL                             R1 2 1
       24 LOADK                            R4 K8 ["CharacterContext"]
       25 NAMECALL                         R2 R1 K3 ["WaitForChild"]
       27 CALL                             R2 2 1
       28 LOADN                            R5 1
       29 LOADN                            R3 11
       30 LOADN                            R4 1
       31 FORNPREP                         R3
       32 LOADK                            R9 K9 ["AbilityAction"]
       33 FASTCALL1                        TOSTRING R5 ; [+3]
       34 MOVE                             R11 R5
       35 GETIMPORT                        R10 K11 [tostring]
       37 CALL                             R10 1 1
       38 CONCAT                           R8 R9 R10
       39 NAMECALL                         R6 R2 K3 ["WaitForChild"]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 5
       43 SETTABLE                         R6 R7 R5
       44 GETTABLEKS                       R7 R6 K12 ["StateChanged"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U9
       55 NAMECALL                         R7 R7 K13 ["Connect"]
       57 CALL                             R7 2 0
       58 FORNLOOP                         R3
       59 GETUPVAL                         R3 2
       60 JUMPIFNOT                        R3 ; [+28]
       61 LOADN                            R5 1
       62 LOADN                            R3 3
       63 LOADN                            R4 1
       64 FORNPREP                         R3
       65 LOADK                            R9 K14 ["OverflowAction"]
       66 FASTCALL1                        TOSTRING R5 ; [+3]
       67 MOVE                             R11 R5
       68 GETIMPORT                        R10 K11 [tostring]
       70 CALL                             R10 1 1
       71 CONCAT                           R8 R9 R10
       72 NAMECALL                         R6 R2 K3 ["WaitForChild"]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R7 10
       76 SETTABLE                         R6 R7 R5
       77 GETTABLEKS                       R7 R6 K12 ["StateChanged"]
       79 NEWCLOSURE                       R9 P2
       80 CAPTURE                          UPVAL U11
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U12
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U4
       85 NAMECALL                         R7 R7 K13 ["Connect"]
       87 CALL                             R7 2 0
       88 FORNLOOP                         R3
       89 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 GETUPVAL                         R3 0
        5 JUMPIF                           R3 ; [+23]
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+11]
        8 GETUPVAL                         R3 2
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R0
       13 GETIMPORT                        R6 K3 [Enum.StepFrequency.Hz60]
       15 NAMECALL                         R3 R3 K4 ["BindToAnimation"]
       17 CALL                             R3 3 0
       18 JUMP                             ; [+10]
       19 GETUPVAL                         R3 2
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 GETIMPORT                        R6 K3 [Enum.StepFrequency.Hz60]
       26 NAMECALL                         R3 R3 K5 ["BindToSimulation"]
       28 CALL                             R3 3 0
       29 NEWTABLE                         R3 0 0
       31 NEWCLOSURE                       R4 P3
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          UPVAL U10
       40 GETUPVAL                         R5 3
       41 NAMECALL                         R5 R5 K6 ["GetAbilitiesChangedSignal"]
       43 CALL                             R5 1 1
       44 MOVE                             R7 R4
       45 NAMECALL                         R5 R5 K7 ["Connect"]
       47 CALL                             R5 2 0
       48 GETUPVAL                         R5 7
       49 LOADK                            R7 K8 ["PreferredInput"]
       50 NAMECALL                         R5 R5 K9 ["GetPropertyChangedSignal"]
       52 CALL                             R5 2 1
       53 MOVE                             R7 R4
       54 NAMECALL                         R5 R5 K7 ["Connect"]
       56 CALL                             R5 2 0
       57 MOVE                             R5 R4
       58 CALL                             R5 0 0
       59 GETIMPORT                        R5 K12 [task.spawn]
       61 NEWCLOSURE                       R6 P4
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U13
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          UPVAL U14
       71 CAPTURE                          UPVAL U15
       72 CAPTURE                          UPVAL U16
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U17
       75 CALL                             R5 1 0
       76 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Event"]
        3 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 LOADK                            R3 K5 ["CommonUtils"]
       10 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETTABLEKS                       R1 R0 K7 ["get"]
       16 LOADK                            R2 K8 ["FlagUtil"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K10 [game]
       20 LOADK                            R4 K11 ["StarterPlayer"]
       21 NAMECALL                         R2 R2 K12 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K10 [game]
       26 LOADK                            R5 K13 ["Players"]
       27 NAMECALL                         R3 R3 K12 ["GetService"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K10 [game]
       32 LOADK                            R6 K14 ["RunService"]
       33 NAMECALL                         R4 R4 K12 ["GetService"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K16 [UserSettings]
       38 CALL                             R5 0 1
       39 LOADK                            R7 K17 ["UserGameSettings"]
       40 NAMECALL                         R5 R5 K12 ["GetService"]
       42 CALL                             R5 2 1
       43 GETIMPORT                        R6 K10 [game]
       45 LOADK                            R8 K18 ["UserInputService"]
       46 NAMECALL                         R6 R6 K12 ["GetService"]
       48 CALL                             R6 2 1
       49 GETIMPORT                        R7 K1 [require]
       51 GETIMPORT                        R8 K3 [script]
       53 GETTABLEKS                       R8 R8 K4 ["Parent"]
       55 LOADK                            R10 K19 ["InputReplication"]
       56 NAMECALL                         R8 R8 K6 ["WaitForChild"]
       58 CALL                             R8 2 -1
       59 CALL                             R7 -1 1
       60 GETIMPORT                        R8 K1 [require]
       62 GETIMPORT                        R9 K3 [script]
       64 GETTABLEKS                       R9 R9 K4 ["Parent"]
       66 LOADK                            R11 K20 ["AvatarAbilitiesInterface"]
       67 NAMECALL                         R9 R9 K6 ["WaitForChild"]
       69 CALL                             R9 2 -1
       70 CALL                             R8 -1 1
       71 GETTABLEKS                       R9 R8 K7 ["get"]
       73 GETTABLEKS                       R10 R3 K21 ["LocalPlayer"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R1 K22 ["getUserFlag"]
       78 LOADK                            R11 K23 ["UserPlayerScriptsSAuthDirectAPIs2"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R1 K22 ["getUserFlag"]
       82 LOADK                            R12 K24 ["UserPlayerScriptsFireThroughScriptableBindings"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R1 K22 ["getUserFlag"]
       86 LOADK                            R13 K25 ["UserPlayerScriptsPlayerControlState2"]
       87 CALL                             R12 1 1
       88 GETTABLEKS                       R13 R1 K22 ["getUserFlag"]
       90 LOADK                            R14 K26 ["UserAbilitiesUserInterfaceB"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R14 R1 K22 ["getUserFlag"]
       94 LOADK                            R15 K27 ["UserPSUseBindToAnimation"]
       95 CALL                             R14 1 1
       96 JUMPIFNOT                        R13 ; [+2]
       97 LOADK                            R15 K28 ["ControlState"]
       98 JUMP                             ; [+1]
       99 LOADK                            R15 K29 ["PlayerControlState"]
      100 NEWTABLE                         R16 16 0
      102 SETTABLEKS                       R16 R16 K30 ["__index"]
      104 NEWTABLE                         R17 0 0
      106 NEWTABLE                         R18 0 0
      108 NEWTABLE                         R19 0 0
      110 NEWTABLE                         R20 0 0
      112 GETIMPORT                        R21 K33 [Instance.new]
      114 LOADK                            R22 K34 ["BindableEvent"]
      115 CALL                             R21 1 1
      116 LOADN                            R22 0
      117 GETIMPORT                        R23 K33 [Instance.new]
      119 LOADK                            R24 K34 ["BindableEvent"]
      120 CALL                             R23 1 1
      121 DUPCLOSURE                       R24 K35 [PROTO_0]
      122 DUPCLOSURE                       R25 K36 [PROTO_1]
      123 DUPCLOSURE                       R26 K37 [PROTO_2]
      124 SETTABLEKS                       R26 R16 K38 ["GetNumOverflowSlots"]
      126 NEWCLOSURE                       R26 P3
      127 CAPTURE                          REF R22
      128 SETTABLEKS                       R26 R16 K39 ["getOverflowScrollIndex"]
      130 NEWCLOSURE                       R26 P4
      131 CAPTURE                          REF R22
      132 CAPTURE                          REF R18
      133 CAPTURE                          VAL R23
      134 SETTABLEKS                       R26 R16 K40 ["setOverflowScrollIndex"]
      136 DUPCLOSURE                       R26 K41 [PROTO_5]
      137 CAPTURE                          VAL R23
      138 SETTABLEKS                       R26 R16 K42 ["getScrollIndexChangedEvent"]
      140 NEWCLOSURE                       R26 P6
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R17
      147 CAPTURE                          REF R18
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R24
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R20
      158 CAPTURE                          REF R22
      159 SETTABLEKS                       R26 R16 K43 ["setupSlotActions"]
      161 DUPCLOSURE                       R26 K44 [PROTO_16]
      162 CAPTURE                          VAL R21
      163 SETTABLEKS                       R26 R16 K45 ["GetSlotMapChangedSignal"]
      165 DUPCLOSURE                       R26 K46 [PROTO_17]
      166 CAPTURE                          VAL R17
      167 SETTABLEKS                       R26 R16 K47 ["GetSlotMap"]
      169 NEWCLOSURE                       R26 P9
      170 CAPTURE                          REF R18
      171 SETTABLEKS                       R26 R16 K48 ["GetAbilitiesInOverflow"]
      173 DUPCLOSURE                       R26 K49 [PROTO_19]
      174 CAPTURE                          VAL R19
      175 SETTABLEKS                       R26 R16 K50 ["GetActionInSlot"]
      177 DUPCLOSURE                       R26 K51 [PROTO_20]
      178 CAPTURE                          VAL R20
      179 SETTABLEKS                       R26 R16 K52 ["GetOverflowAction"]
      181 CLOSEUPVALS                      R18
      182 RETURN                           R16 1
