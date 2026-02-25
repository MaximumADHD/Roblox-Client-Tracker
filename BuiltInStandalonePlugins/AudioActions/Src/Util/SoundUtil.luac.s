PROTO_0:
        0 MUL                              R4 R2 R1
        1 SUBRK                            R6 R0 K2 [NULL]
        2 MUL                              R5 R6 R0
        3 ADD                              R3 R4 R5
        4 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTLE                      R1 R2 ; [+3]
        2 LOADN                            R3 0
        3 RETURN                           R3 1
        4 DIV                              R3 R0 R2
        5 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTLE                      R1 R2 ; [+3]
        2 LOADN                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOTEQ                      R1 R0 ; [+3]
        6 LOADN                            R3 0
        7 RETURN                           R3 1
        8 SUB                              R6 R2 R0
        9 SUB                              R7 R1 R0
       10 DIV                              R5 R6 R7
       11 SUBRK                            R4 R0 K5 [NULL]
       12 FASTCALL2K                       MATH_POW R4 K1 ; [+4]
       14 LOADK                            R5 K1 [2]
       15 GETIMPORT                        R3 K4 [math.pow]
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Sound"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+9]
        8 LOADK                            R3 K2 ["SoundGroup"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+4]
       13 LOADK                            R3 K3 ["SoundService"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 RETURN                           R1 1

PROTO_4:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R2 R0 K0 ["Parent"]
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETTABLEKS                       R2 R0 K0 ["Parent"]
        8 LOADK                            R4 K1 ["BasePart"]
        9 NAMECALL                         R2 R2 K2 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+6]
       13 GETTABLEKS                       R2 R0 K0 ["Parent"]
       15 LOADK                            R4 K3 ["Attachment"]
       16 NAMECALL                         R2 R2 K2 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFEQKB                       R2 TRUE ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 ["Sound"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETTABLEKS                       R1 R0 K2 ["SoundGroup"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R1 R0 K2 ["SoundGroup"]
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["SoundService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 LOADK                            R3 K2 ["SoundGroup"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+20]
       23 GETTABLEKS                       R1 R0 K7 ["Parent"]
       25 JUMPIFNOT                        R1 ; [+10]
       26 GETTABLEKS                       R1 R0 K7 ["Parent"]
       28 LOADK                            R3 K2 ["SoundGroup"]
       29 NAMECALL                         R1 R1 K1 ["IsA"]
       31 CALL                             R1 2 1
       32 JUMPIFNOT                        R1 ; [+3]
       33 GETTABLEKS                       R1 R0 K7 ["Parent"]
       35 RETURN                           R1 1
       36 GETIMPORT                        R1 K4 [game]
       38 LOADK                            R3 K5 ["SoundService"]
       39 NAMECALL                         R1 R1 K6 ["GetService"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1
       43 LOADNIL                          R1
       44 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["Sound"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+5]
        7 LOADK                            R4 K2 ["SoundGroup"]
        8 NAMECALL                         R2 R0 K1 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+27]
       12 NAMECALL                         R2 R0 K3 ["GetChildren"]
       14 CALL                             R2 1 3
       15 FORGPREP                         R2
       16 LOADK                            R9 K4 ["SoundEffect"]
       17 NAMECALL                         R7 R6 K1 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R6
       25 GETIMPORT                        R7 K7 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-13]
       30 LENGTH                           R2 R1
       31 LOADN                            R3 0
       32 JUMPIFNOTLT                      R3 R2 ; [+6]
       34 GETIMPORT                        R2 K9 [table.sort]
       36 MOVE                             R3 R1
       37 DUPCLOSURE                       R4 K10 [PROTO_6]
       38 CALL                             R2 2 0
       39 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K3 [Enum.RollOffMode.Linear]
        4 JUMPIFNOTEQ                      R0 R4 ; [+6]
        6 LOADN                            R4 1
        7 SETTABLE                         R4 R3 R1
        8 LOADN                            R4 0
        9 SETTABLE                         R4 R3 R2
       10 RETURN                           R3 1
       11 GETIMPORT                        R4 K5 [Enum.RollOffMode.Inverse]
       13 JUMPIFNOTEQ                      R0 R4 ; [+19]
       15 LOADN                            R6 0
       16 LOADN                            R4 100
       17 LOADN                            R5 1
       18 FORNPREP                         R4
       19 DIVK                             R8 R6 K6 [100]
       20 MUL                              R9 R8 R2
       21 SUBRK                            R11 R7 K8 ["LinearSquare"]
       22 MUL                              R10 R11 R1
       23 ADD                              R7 R9 R10
       24 JUMPIFNOTLE                      R2 R7 ; [+3]
       26 LOADN                            R8 0
       27 JUMP                             ; [+2]
       28 DIV                              R8 R1 R7
       29 JUMP                             ; [0]
       30 SETTABLE                         R8 R3 R7
       31 FORNLOOP                         R4
       32 RETURN                           R3 1
       33 GETIMPORT                        R4 K9 [Enum.RollOffMode.LinearSquare]
       35 JUMPIFNOTEQ                      R0 R4 ; [+32]
       37 LOADN                            R6 0
       38 LOADN                            R4 100
       39 LOADN                            R5 1
       40 FORNPREP                         R4
       41 DIVK                             R8 R6 K6 [100]
       42 MUL                              R9 R8 R2
       43 SUBRK                            R11 R7 K8 ["LinearSquare"]
       44 MUL                              R10 R11 R1
       45 ADD                              R7 R9 R10
       46 JUMPIFNOTLE                      R2 R7 ; [+3]
       48 LOADN                            R8 0
       49 JUMP                             ; [+15]
       50 JUMPIFNOTEQ                      R2 R1 ; [+3]
       52 LOADN                            R8 0
       53 JUMP                             ; [+11]
       54 SUB                              R11 R7 R1
       55 SUB                              R12 R2 R1
       56 DIV                              R10 R11 R12
       57 SUBRK                            R9 R7 K10 [2]
       58 FASTCALL2K                       MATH_POW R9 K10 ; [+4]
       60 LOADK                            R10 K10 [2]
       61 GETIMPORT                        R8 K13 [math.pow]
       63 CALL                             R8 2 1
       64 JUMP                             ; [0]
       65 SETTABLE                         R8 R3 R7
       66 FORNLOOP                         R4
       67 RETURN                           R3 1
       68 GETIMPORT                        R4 K15 [Enum.RollOffMode.InverseTapered]
       70 JUMPIFNOTEQ                      R0 R4 ; [+42]
       72 LOADN                            R6 0
       73 LOADN                            R4 100
       74 LOADN                            R5 1
       75 FORNPREP                         R4
       76 DIVK                             R8 R6 K6 [100]
       77 MUL                              R9 R8 R2
       78 SUBRK                            R11 R7 K8 ["LinearSquare"]
       79 MUL                              R10 R11 R1
       80 ADD                              R7 R9 R10
       81 JUMPIFNOTLE                      R2 R7 ; [+3]
       83 LOADN                            R9 0
       84 JUMP                             ; [+2]
       85 DIV                              R9 R1 R7
       86 JUMP                             ; [0]
       87 JUMPIFNOTLE                      R2 R7 ; [+3]
       89 LOADN                            R10 0
       90 JUMP                             ; [+15]
       91 JUMPIFNOTEQ                      R2 R1 ; [+3]
       93 LOADN                            R10 0
       94 JUMP                             ; [+11]
       95 SUB                              R13 R7 R1
       96 SUB                              R14 R2 R1
       97 DIV                              R12 R13 R14
       98 SUBRK                            R11 R7 K12 ["pow"]
       99 FASTCALL2K                       MATH_POW R11 K10 ; [+4]
      101 LOADK                            R12 K10 [2]
      102 GETIMPORT                        R10 K13 [math.pow]
      104 CALL                             R10 2 1
      105 JUMP                             ; [0]
      106 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
      108 GETIMPORT                        R8 K17 [math.min]
      110 CALL                             R8 2 1
      111 SETTABLE                         R8 R3 R7
      112 FORNLOOP                         R4
      113 RETURN                           R3 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Script"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["AutoPlay"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 SETTABLEKS                       R0 R1 K6 ["Parent"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K7 ["Enabled"]
       12 GETIMPORT                        R2 K11 [Enum.RunContext.Legacy]
       14 SETTABLEKS                       R2 R1 K9 ["RunContext"]
       16 LOADK                            R2 K12 ["script.Parent:Play()\n"]
       17 SETTABLEKS                       R2 R1 K13 ["Source"]
       19 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Script"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["ListenerScript"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 SETTABLEKS                       R0 R1 K6 ["Parent"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K7 ["Enabled"]
       12 GETIMPORT                        R2 K11 [Enum.RunContext.Client]
       14 SETTABLEKS                       R2 R1 K9 ["RunContext"]
       16 LOADK                            R2 K12 ["local listener = script.Parent\nlocal camera = workspace.CurrentCamera\nlistener.Parent = camera\n"]
       17 SETTABLEKS                       R2 R1 K13 ["Source"]
       19 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Script"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["TremoloScript"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 SETTABLEKS                       R0 R1 K6 ["Parent"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K7 ["Enabled"]
       12 GETIMPORT                        R2 K11 [Enum.RunContext.Client]
       14 SETTABLEKS                       R2 R1 K9 ["RunContext"]
       16 LOADK                            R2 K12 ["local fader = script.Parent\nlocal RunService = game:GetService(\"RunService\")\nlocal radians = 0\n\nlocal function getFrequency() : number\n\tlocal frequency = fader:GetAttribute(\"Frequency\") or 5\n\treturn math.clamp(frequency, 0.1, 20)\nend\n\nlocal function getDepth() : number\n\tlocal depth = fader:GetAttribute(\"Depth\") or 1\n\treturn math.clamp(depth, 0, 1)\nend\n\nlocal function getDuty() : number\n\tlocal duty = fader:GetAttribute(\"Duty\") or 0.5\n\treturn math.clamp(duty, 0, 1)\nend\n\nlocal function update(deltaTime : number)\n\tlocal volume = 1 + getDepth() * math.sin(radians)\n\tradians += math.pi * getFrequency() / 24000 * deltaTime\n\tif radians > math.pi * 2 then\n\t\tradians -= math.pi * 2\n\tend\nend\n\nRunService.Heartbeat:Connect(update)\n"]
       17 SETTABLEKS                       R2 R1 K13 ["Source"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 NEWTABLE                         R3 8 0
        6 DUPCLOSURE                       R4 K3 [PROTO_3]
        7 SETTABLEKS                       R4 R3 K4 ["isSoundApi"]
        9 DUPCLOSURE                       R4 K5 [PROTO_4]
       10 SETTABLEKS                       R4 R3 K6 ["is3d"]
       12 DUPCLOSURE                       R4 K7 [PROTO_5]
       13 SETTABLEKS                       R4 R3 K8 ["getDestination"]
       15 DUPCLOSURE                       R4 K9 [PROTO_7]
       16 SETTABLEKS                       R4 R3 K10 ["getEffects"]
       18 DUPCLOSURE                       R4 K11 [PROTO_8]
       19 SETTABLEKS                       R4 R3 K12 ["serializeRolloffMode"]
       21 DUPCLOSURE                       R4 K13 [PROTO_9]
       22 SETTABLEKS                       R4 R3 K14 ["makeAutoplayScript"]
       24 DUPCLOSURE                       R4 K15 [PROTO_10]
       25 SETTABLEKS                       R4 R3 K16 ["makeListenerScript"]
       27 DUPCLOSURE                       R4 K17 [PROTO_11]
       28 SETTABLEKS                       R4 R3 K18 ["makeTremoloScript"]
       30 RETURN                           R3 1
