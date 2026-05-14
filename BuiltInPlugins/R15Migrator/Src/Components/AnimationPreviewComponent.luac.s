PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CreateWorldModels"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["key"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["model"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 0
       13 DUPTABLE                         R2 K5 [{"currentIndex"}]
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 ADD                              R3 R4 R5
       17 SETTABLEKS                       R3 R2 K4 ["currentIndex"]
       19 NAMECALL                         R0 R0 K6 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["values"]
        5 GETTABLEKS                       R2 R0 K2 ["props"]
        7 GETTABLEKS                       R2 R2 K3 ["characters"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
       13 GETTABLEKS                       R2 R2 K1 ["values"]
       15 GETTABLEKS                       R3 R0 K2 ["props"]
       17 GETTABLEKS                       R3 R3 K4 ["convertedCharacters"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K5 ["List"]
       23 GETTABLEKS                       R3 R3 K6 ["join"]
       25 GETTABLEKS                       R4 R0 K7 ["defaultSelections"]
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 CALL                             R3 3 1
       30 SETTABLEKS                       R3 R0 K8 ["selectionModels"]
       32 GETTABLEKS                       R5 R0 K7 ["defaultSelections"]
       34 LENGTH                           R4 R5
       35 LENGTH                           R5 R1
       36 ADD                              R3 R4 R5
       37 MOVE                             R4 R2
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K9 ["GetNpcFromId"]
       44 GETTABLEKS                       R10 R8 K10 ["key"]
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K11 ["IsR15Complete"]
       50 MOVE                             R11 R9
       51 CALL                             R10 1 1
       52 JUMPIFNOT                        R10 ; [+10]
       53 GETIMPORT                        R10 K14 [coroutine.wrap]
       55 NEWCLOSURE                       R11 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CALL                             R10 1 1
       61 CALL                             R10 0 0
       62 RETURN                           R0 0
       63 FORGLOOP                         R4 2 ; [-23]
       65 DUPTABLE                         R6 K16 [{"currentIndex"}]
       66 LOADN                            R7 1
       67 SETTABLEKS                       R7 R6 K15 ["currentIndex"]
       69 NAMECALL                         R4 R0 K17 ["setState"]
       71 CALL                             R4 2 0
       72 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["HumanoidDescription"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K5 [BrickColor.new]
        6 LOADK                            R2 K6 ["Bright yellow"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K7 ["Color"]
       10 SETTABLEKS                       R1 R0 K8 ["HeadColor"]
       12 GETIMPORT                        R1 K5 [BrickColor.new]
       14 LOADK                            R2 K9 ["Bright blue"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Color"]
       18 SETTABLEKS                       R1 R0 K10 ["TorsoColor"]
       20 GETIMPORT                        R1 K5 [BrickColor.new]
       22 LOADK                            R2 K6 ["Bright yellow"]
       23 CALL                             R1 1 1
       24 GETTABLEKS                       R1 R1 K7 ["Color"]
       26 SETTABLEKS                       R1 R0 K11 ["LeftArmColor"]
       28 GETIMPORT                        R1 K5 [BrickColor.new]
       30 LOADK                            R2 K6 ["Bright yellow"]
       31 CALL                             R1 1 1
       32 GETTABLEKS                       R1 R1 K7 ["Color"]
       34 SETTABLEKS                       R1 R0 K12 ["LeftLegColor"]
       36 GETIMPORT                        R1 K5 [BrickColor.new]
       38 LOADK                            R2 K6 ["Bright yellow"]
       39 CALL                             R1 1 1
       40 GETTABLEKS                       R1 R1 K7 ["Color"]
       42 SETTABLEKS                       R1 R0 K13 ["RightLegColor"]
       44 GETIMPORT                        R1 K5 [BrickColor.new]
       46 LOADK                            R2 K6 ["Bright yellow"]
       47 CALL                             R1 1 1
       48 GETTABLEKS                       R1 R1 K7 ["Color"]
       50 SETTABLEKS                       R1 R0 K14 ["RightArmColor"]
       52 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetPreviewSpeed"]
        5 GETTABLEKS                       R2 R0 K2 ["Id"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectionModels"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETTABLEKS                       R0 R0 K1 ["key"]
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["selectionModels"]
       11 GETUPVAL                         R2 1
       12 GETTABLE                         R0 R1 R2
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["props"]
       16 GETTABLEKS                       R1 R1 K3 ["CreateWorldModels"]
       18 GETTABLEKS                       R2 R0 K1 ["key"]
       20 GETTABLEKS                       R3 R0 K4 ["model"]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R0 0
       24 DUPTABLE                         R2 K6 [{"currentIndex"}]
       25 GETUPVAL                         R3 1
       26 SETTABLEKS                       R3 R2 K5 ["currentIndex"]
       28 NAMECALL                         R0 R0 K7 ["setState"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["currentIndex"]
        5 JUMPIFNOTEQ                      R2 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R2 K4 [coroutine.wrap]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 1
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isUnmounting"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R0 ; [+41]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["tracks"]
        9 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R3 K4 [table.insert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K5 ["animators"]
       18 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       20 MOVE                             R5 R2
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K1 ["tracks"]
       27 LENGTH                           R3 R4
       28 LOADN                            R4 1
       29 JUMPIFNOTLT                      R4 R3 ; [+33]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K1 ["tracks"]
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 NAMECALL                         R8 R7 K6 ["Play"]
       39 CALL                             R8 1 0
       40 FORGLOOP                         R3 2 ; [-4]
       42 GETUPVAL                         R3 0
       43 NAMECALL                         R3 R3 K7 ["load"]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K1 ["tracks"]
       50 GETTABLEN                        R3 R4 1
       51 JUMPIFEQ                         R3 R1 ; [+7]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K1 ["tracks"]
       56 GETTABLEN                        R3 R4 2
       57 JUMPIFNOTEQ                      R3 R1 ; [+5]
       59 GETUPVAL                         R3 0
       60 NAMECALL                         R3 R3 K8 ["unload"]
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+4]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K1 ["GetHumanoidDescriptionFromOutfitId"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_8:
        0 NEWTABLE                         R0 0 2
        2 LOADN                            R1 0
        3 LOADK                            R2 K0 [320912307]
        4 SETLIST                          R0 R1 2 [1]
        6 GETUPVAL                         R1 0
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K1 ["defaultSelections"]
       11 MOVE                             R1 R0
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 GETIMPORT                        R6 K3 [pcall]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CALL                             R6 1 2
       22 JUMPIF                           R6 ; [+3]
       23 GETUPVAL                         R8 1
       24 CALL                             R8 0 1
       25 MOVE                             R7 R8
       26 GETUPVAL                         R8 2
       27 MOVE                             R10 R7
       28 GETIMPORT                        R11 K7 [Enum.HumanoidRigType.R6]
       30 NAMECALL                         R8 R8 K8 ["CreateHumanoidModelFromDescription"]
       32 CALL                             R8 3 1
       33 GETUPVAL                         R9 2
       34 MOVE                             R11 R7
       35 GETIMPORT                        R12 K10 [Enum.HumanoidRigType.R15]
       37 NAMECALL                         R9 R9 K8 ["CreateHumanoidModelFromDescription"]
       39 CALL                             R9 3 1
       40 GETUPVAL                         R10 3
       41 MOVE                             R11 R8
       42 CALL                             R10 1 0
       43 GETUPVAL                         R10 3
       44 MOVE                             R11 R9
       45 CALL                             R10 1 0
       46 GETIMPORT                        R10 K13 [Instance.new]
       48 LOADK                            R11 K14 ["WorldModel"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K13 [Instance.new]
       52 LOADK                            R12 K14 ["WorldModel"]
       53 CALL                             R11 1 1
       54 SETTABLEKS                       R10 R8 K15 ["Parent"]
       56 SETTABLEKS                       R11 R9 K15 ["Parent"]
       58 GETUPVAL                         R13 0
       59 GETTABLEKS                       R13 R13 K1 ["defaultSelections"]
       61 DUPTABLE                         R14 K18 [{"resetPreviewModel", "resetConvertedModel"}]
       62 SETTABLEKS                       R10 R14 K16 ["resetPreviewModel"]
       64 SETTABLEKS                       R11 R14 K17 ["resetConvertedModel"]
       66 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
       68 GETIMPORT                        R12 K21 [table.insert]
       70 CALL                             R12 2 0
       71 FORGLOOP                         R1 2 ; [-57]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K22 ["isUnmounting"]
       76 JUMPIFNOT                        R1 ; [+1]
       77 RETURN                           R0 0
       78 GETUPVAL                         R1 4
       79 GETUPVAL                         R2 0
       80 CALL                             R1 1 0
       81 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K5 [{"currentIndex", "isPlaying", "isLoaded", "currentTime", "length"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["currentIndex"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isPlaying"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isLoaded"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["currentTime"]
       13 LOADN                            R2 1
       14 SETTABLEKS                       R2 R1 K4 ["length"]
       16 SETTABLEKS                       R1 R0 K6 ["state"]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K7 ["selectionModels"]
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K8 ["selectSpeed"]
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K9 ["selectItem"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K10 ["new"]
       33 CALL                             R1 0 1
       34 SETTABLEKS                       R1 R0 K11 ["loaded"]
       36 NEWTABLE                         R1 0 0
       38 SETTABLEKS                       R1 R0 K12 ["tracks"]
       40 NEWTABLE                         R1 0 0
       42 SETTABLEKS                       R1 R0 K13 ["animators"]
       44 GETTABLEKS                       R1 R0 K11 ["loaded"]
       46 NEWCLOSURE                       R3 P2
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R1 R1 K14 ["Connect"]
       50 CALL                             R1 2 0
       51 GETIMPORT                        R1 K17 [task.spawn]
       53 NEWCLOSURE                       R2 P3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["previewSpeed"]
        5 MUL                              R1 R0 R2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["animators"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R6 K3 ["StepAnimations"]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-5]
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K5 [{"currentTime"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K6 ["state"]
       23 GETTABLEKS                       R7 R7 K4 ["currentTime"]
       25 ADD                              R6 R7 R1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K6 ["state"]
       29 GETTABLEKS                       R7 R7 K7 ["length"]
       31 MOD                              R5 R6 R7
       32 SETTABLEKS                       R5 R4 K4 ["currentTime"]
       34 NAMECALL                         R2 R2 K8 ["setState"]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["runningConnection"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [game]
        6 LOADK                            R3 K3 ["RunService"]
        7 NAMECALL                         R1 R1 K4 ["GetService"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K5 ["Heartbeat"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R1 R1 K6 ["Connect"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K0 ["runningConnection"]
       19 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["runningConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["runningConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["runningConnection"]
       11 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["start"]
        2 CALL                             R1 1 0
        3 DUPTABLE                         R3 K5 [{"currentTime", "isPlaying", "isLoaded", "length"}]
        4 LOADN                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["currentTime"]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["isPlaying"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["isLoaded"]
       13 GETTABLEKS                       R6 R0 K6 ["tracks"]
       15 GETTABLEN                        R5 R6 1
       16 GETTABLEKS                       R5 R5 K7 ["Length"]
       18 LOADK                            R6 K8 [1E-05]
       19 JUMPIFNOTLT                      R5 R6 ; [+3]
       21 LOADN                            R4 1
       22 JUMP                             ; [+5]
       23 GETTABLEKS                       R5 R0 K6 ["tracks"]
       25 GETTABLEN                        R4 R5 1
       26 GETTABLEKS                       R4 R4 K7 ["Length"]
       28 SETTABLEKS                       R4 R3 K4 ["length"]
       30 NAMECALL                         R1 R0 K9 ["setState"]
       32 CALL                             R1 2 0
       33 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["start"]
        2 CALL                             R1 1 0
        3 DUPTABLE                         R3 K2 [{"isPlaying"}]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["isPlaying"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["stop"]
        2 CALL                             R1 1 0
        3 DUPTABLE                         R3 K2 [{"isPlaying"}]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["isPlaying"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["tracks"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["animators"]
        8 NAMECALL                         R1 R0 K2 ["stop"]
       10 CALL                             R1 1 0
       11 DUPTABLE                         R3 K7 [{"currentTime", "length", "isPlaying", "isLoaded"}]
       12 LOADN                            R4 0
       13 SETTABLEKS                       R4 R3 K3 ["currentTime"]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K4 ["length"]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K5 ["isPlaying"]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K6 ["isLoaded"]
       24 NAMECALL                         R1 R0 K8 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["isPlaying"]
        4 JUMPIFNOT                        R2 ; [+3]
        5 NAMECALL                         R2 R0 K2 ["pause"]
        7 CALL                             R2 1 0
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K0 ["state"]
       11 GETTABLEKS                       R3 R3 K3 ["currentTime"]
       13 JUMPIFNOTLE                      R3 R1 ; [+7]
       15 GETTABLEKS                       R3 R0 K0 ["state"]
       17 GETTABLEKS                       R3 R3 K3 ["currentTime"]
       19 SUB                              R2 R1 R3
       20 JUMP                             ; [+10]
       21 GETTABLEKS                       R4 R0 K0 ["state"]
       23 GETTABLEKS                       R4 R4 K4 ["length"]
       25 GETTABLEKS                       R5 R0 K0 ["state"]
       27 GETTABLEKS                       R5 R5 K3 ["currentTime"]
       29 SUB                              R3 R4 R5
       30 ADD                              R2 R3 R1
       31 GETTABLEKS                       R3 R0 K5 ["animators"]
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R7 K6 ["StepAnimations"]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 ; [-5]
       42 DUPTABLE                         R5 K7 [{"currentTime"}]
       43 SETTABLEKS                       R1 R5 K3 ["currentTime"]
       45 NAMECALL                         R3 R0 K8 ["setState"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isUnmounting"]
        3 NAMECALL                         R1 R0 K1 ["stop"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R0 K2 ["selectionModels"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K3 ["key"]
       13 JUMPIFNOT                        R8 ; [+22]
       14 GETIMPORT                        R8 K6 [string.find]
       16 GETTABLEKS                       R9 R7 K7 ["fullName"]
       18 LOADK                            R10 K8 [".[^.]*$"]
       19 CALL                             R8 2 1
       20 JUMPIF                           R8 ; [+1]
       21 LOADN                            R8 0
       22 GETTABLEKS                       R10 R7 K7 ["fullName"]
       24 ADDK                             R11 R8 K9 [1]
       25 LOADN                            R12 255
       26 FASTCALL                         STRING_SUB ; [+2]
       27 GETIMPORT                        R9 K11 [string.sub]
       29 CALL                             R9 3 1
       30 SETTABLE                         R9 R2 R6
       31 GETUPVAL                         R9 0
       32 GETTABLE                         R10 R2 R6
       33 CALL                             R9 1 1
       34 SETTABLE                         R9 R2 R6
       35 JUMP                             ; [+10]
       36 LOADK                            R14 K12 ["AvatarSelection"]
       37 LOADK                            R15 K13 ["DefaultAvatar"]
       38 NAMECALL                         R12 R1 K14 ["getText"]
       40 CALL                             R12 3 1
       41 MOVE                             R9 R12
       42 LOADK                            R10 K15 [" "]
       43 MOVE                             R11 R6
       44 CONCAT                           R8 R9 R11
       45 SETTABLE                         R8 R2 R6
       46 FORGLOOP                         R3 2 ; [-36]
       48 RETURN                           R2 1

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R7 K2 [{"Id", "Label"}]
        7 SETTABLEKS                       R6 R7 K0 ["Id"]
        9 GETIMPORT                        R8 K5 [string.format]
       11 LOADK                            R9 K6 ["%.2f"]
       12 MOVE                             R10 R6
       13 CALL                             R8 2 1
       14 SETTABLEKS                       R8 R7 K1 ["Label"]
       16 SETTABLE                         R7 R1 R5
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["worldModels"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+4]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 RETURN                           R3 2
        9 GETTABLEKS                       R4 R0 K3 ["selectionModels"]
       11 GETTABLE                         R3 R4 R1
       12 GETTABLEKS                       R4 R3 K4 ["key"]
       14 JUMPIFNOT                        R4 ; [+12]
       15 GETTABLEKS                       R5 R3 K4 ["key"]
       17 GETTABLE                         R4 R2 R5
       18 JUMPIF                           R4 ; [+3]
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 RETURN                           R5 2
       22 GETTABLEKS                       R5 R4 K5 ["resetPreviewModel"]
       24 GETTABLEKS                       R6 R4 K6 ["resetConvertedModel"]
       26 RETURN                           R5 2
       27 GETTABLEKS                       R4 R3 K5 ["resetPreviewModel"]
       29 GETTABLEKS                       R5 R3 K6 ["resetConvertedModel"]
       31 RETURN                           R4 2

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["characterMetadataLoadedVersion"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["characterMetadataLoadedVersion"]
        6 JUMPIFEQ                         R2 R3 ; [+4]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["play"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["pause"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["scrub"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["previewSelection"]
        6 GETTABLEKS                       R4 R1 K3 ["previewSpeed"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K5 ["getAnimationAssetInfo"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETTABLEKS                       R7 R6 K6 ["url"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R7
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K7 ["getConvertedAnimationAssetInfo"]
       26 MOVE                             R9 R6
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R9 R8 K6 ["url"]
       30 GETTABLEKS                       R10 R0 K8 ["state"]
       32 GETTABLEKS                       R10 R10 K9 ["currentIndex"]
       34 MOVE                             R13 R10
       35 NAMECALL                         R11 R0 K10 ["getModels"]
       37 CALL                             R11 2 2
       38 GETTABLEKS                       R13 R0 K8 ["state"]
       40 GETTABLEKS                       R14 R13 K11 ["isPlaying"]
       42 GETTABLEKS                       R15 R13 K12 ["isLoaded"]
       44 GETTABLEKS                       R16 R13 K13 ["currentTime"]
       46 GETTABLEKS                       R17 R13 K14 ["length"]
       48 GETUPVAL                         R18 1
       49 GETTABLEKS                       R18 R18 K15 ["new"]
       51 CALL                             R18 0 1
       52 GETUPVAL                         R19 2
       53 GETTABLEKS                       R19 R19 K16 ["createElement"]
       55 GETUPVAL                         R20 3
       56 DUPTABLE                         R21 K22 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "Spacing"}]
       57 GETIMPORT                        R22 K26 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R22 R21 K17 ["Layout"]
       61 GETIMPORT                        R22 K28 [Enum.HorizontalAlignment.Left]
       63 SETTABLEKS                       R22 R21 K18 ["HorizontalAlignment"]
       65 GETIMPORT                        R22 K30 [Enum.VerticalAlignment.Top]
       67 SETTABLEKS                       R22 R21 K19 ["VerticalAlignment"]
       69 GETIMPORT                        R22 K32 [Enum.AutomaticSize.Y]
       71 SETTABLEKS                       R22 R21 K20 ["AutomaticSize"]
       73 GETTABLEKS                       R22 R2 K21 ["Spacing"]
       75 SETTABLEKS                       R22 R21 K21 ["Spacing"]
       77 DUPTABLE                         R22 K35 [{"PreviewContainer", "PlaybackContainer"}]
       78 GETUPVAL                         R23 2
       79 GETTABLEKS                       R23 R23 K16 ["createElement"]
       81 GETUPVAL                         R24 3
       82 DUPTABLE                         R25 K38 [{"AutomaticSize", "LayoutOrder", "Size"}]
       83 GETIMPORT                        R26 K32 [Enum.AutomaticSize.Y]
       85 SETTABLEKS                       R26 R25 K20 ["AutomaticSize"]
       87 NAMECALL                         R26 R18 K39 ["getNextOrder"]
       89 CALL                             R26 1 1
       90 SETTABLEKS                       R26 R25 K36 ["LayoutOrder"]
       92 GETTABLEKS                       R26 R2 K40 ["PreviewContainerSize"]
       94 SETTABLEKS                       R26 R25 K37 ["Size"]
       96 DUPTABLE                         R26 K42 [{"Avatars"}]
       97 GETUPVAL                         R27 2
       98 GETTABLEKS                       R27 R27 K16 ["createElement"]
      100 GETUPVAL                         R28 4
      101 DUPTABLE                         R29 K48 [{"Animation1", "Animation2", "Model1", "Model2", "Loaded"}]
      102 SETTABLEKS                       R7 R29 K43 ["Animation1"]
      104 SETTABLEKS                       R9 R29 K44 ["Animation2"]
      106 SETTABLEKS                       R11 R29 K45 ["Model1"]
      108 SETTABLEKS                       R12 R29 K46 ["Model2"]
      110 GETTABLEKS                       R30 R0 K49 ["loaded"]
      112 SETTABLEKS                       R30 R29 K47 ["Loaded"]
      114 CALL                             R27 2 1
      115 SETTABLEKS                       R27 R26 K41 ["Avatars"]
      117 CALL                             R23 3 1
      118 SETTABLEKS                       R23 R22 K33 ["PreviewContainer"]
      120 GETUPVAL                         R23 2
      121 GETTABLEKS                       R23 R23 K16 ["createElement"]
      123 GETUPVAL                         R24 3
      124 DUPTABLE                         R25 K55 [{"Padding", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "Spacing", "BackgroundColor3", "BorderColor3", "BackgroundTransparency", "BorderSizePixel"}]
      125 LOADN                            R26 10
      126 SETTABLEKS                       R26 R25 K50 ["Padding"]
      128 NAMECALL                         R26 R18 K39 ["getNextOrder"]
      130 CALL                             R26 1 1
      131 SETTABLEKS                       R26 R25 K36 ["LayoutOrder"]
      133 GETIMPORT                        R26 K26 [Enum.FillDirection.Vertical]
      135 SETTABLEKS                       R26 R25 K17 ["Layout"]
      137 GETIMPORT                        R26 K28 [Enum.HorizontalAlignment.Left]
      139 SETTABLEKS                       R26 R25 K18 ["HorizontalAlignment"]
      141 GETIMPORT                        R26 K30 [Enum.VerticalAlignment.Top]
      143 SETTABLEKS                       R26 R25 K19 ["VerticalAlignment"]
      145 GETIMPORT                        R26 K32 [Enum.AutomaticSize.Y]
      147 SETTABLEKS                       R26 R25 K20 ["AutomaticSize"]
      149 GETTABLEKS                       R26 R2 K21 ["Spacing"]
      151 SETTABLEKS                       R26 R25 K21 ["Spacing"]
      153 GETTABLEKS                       R26 R2 K56 ["BackgroundColor"]
      155 SETTABLEKS                       R26 R25 K51 ["BackgroundColor3"]
      157 GETTABLEKS                       R26 R2 K57 ["PlaybackContainerBorderColor"]
      159 SETTABLEKS                       R26 R25 K52 ["BorderColor3"]
      161 LOADN                            R26 0
      162 SETTABLEKS                       R26 R25 K53 ["BackgroundTransparency"]
      164 LOADN                            R26 1
      165 SETTABLEKS                       R26 R25 K54 ["BorderSizePixel"]
      167 DUPTABLE                         R26 K60 [{"SelectContainer", "Controls"}]
      168 GETUPVAL                         R27 2
      169 GETTABLEKS                       R27 R27 K16 ["createElement"]
      171 GETUPVAL                         R28 3
      172 DUPTABLE                         R29 K61 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "LayoutOrder"}]
      173 GETIMPORT                        R30 K63 [Enum.FillDirection.Horizontal]
      175 SETTABLEKS                       R30 R29 K17 ["Layout"]
      177 GETIMPORT                        R30 K65 [Enum.HorizontalAlignment.Right]
      179 SETTABLEKS                       R30 R29 K18 ["HorizontalAlignment"]
      181 GETIMPORT                        R30 K67 [Enum.VerticalAlignment.Center]
      183 SETTABLEKS                       R30 R29 K19 ["VerticalAlignment"]
      185 GETIMPORT                        R30 K32 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R30 R29 K20 ["AutomaticSize"]
      189 NAMECALL                         R30 R18 K39 ["getNextOrder"]
      191 CALL                             R30 1 1
      192 SETTABLEKS                       R30 R29 K36 ["LayoutOrder"]
      194 DUPTABLE                         R30 K69 [{"Title", "SelectContainer"}]
      195 JUMPIFNOT                        R6 ; [+46]
      196 GETTABLEKS                       R33 R0 K0 ["props"]
      198 GETTABLEKS                       R33 R33 K70 ["animations"]
      200 GETTABLEKS                       R34 R6 K71 ["id"]
      202 GETTABLE                         R32 R33 R34
      203 JUMPIFNOT                        R32 ; [+38]
      204 GETUPVAL                         R31 2
      205 GETTABLEKS                       R31 R31 K16 ["createElement"]
      207 GETUPVAL                         R32 5
      208 DUPTABLE                         R33 K74 [{"Text", "LayoutOrder", "AutomaticSize", "TextXAlignment", "Size"}]
      209 GETTABLEKS                       R35 R0 K0 ["props"]
      211 GETTABLEKS                       R35 R35 K70 ["animations"]
      213 GETTABLEKS                       R36 R6 K71 ["id"]
      215 GETTABLE                         R34 R35 R36
      216 GETTABLEKS                       R34 R34 K75 ["name"]
      218 SETTABLEKS                       R34 R33 K72 ["Text"]
      220 NAMECALL                         R34 R18 K39 ["getNextOrder"]
      222 CALL                             R34 1 1
      223 SETTABLEKS                       R34 R33 K36 ["LayoutOrder"]
      225 GETIMPORT                        R34 K32 [Enum.AutomaticSize.Y]
      227 SETTABLEKS                       R34 R33 K20 ["AutomaticSize"]
      229 GETIMPORT                        R34 K76 [Enum.TextXAlignment.Left]
      231 SETTABLEKS                       R34 R33 K73 ["TextXAlignment"]
      233 GETIMPORT                        R34 K79 [UDim2.fromScale]
      235 LOADK                            R35 K80 [0.5]
      236 LOADN                            R36 0
      237 CALL                             R34 2 1
      238 SETTABLEKS                       R34 R33 K37 ["Size"]
      240 CALL                             R31 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R31
      243 SETTABLEKS                       R31 R30 K68 ["Title"]
      245 GETUPVAL                         R31 2
      246 GETTABLEKS                       R31 R31 K16 ["createElement"]
      248 GETUPVAL                         R32 3
      249 DUPTABLE                         R33 K81 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "Size", "Spacing", "LayoutOrder"}]
      250 GETIMPORT                        R34 K63 [Enum.FillDirection.Horizontal]
      252 SETTABLEKS                       R34 R33 K17 ["Layout"]
      254 GETIMPORT                        R34 K65 [Enum.HorizontalAlignment.Right]
      256 SETTABLEKS                       R34 R33 K18 ["HorizontalAlignment"]
      258 GETIMPORT                        R34 K67 [Enum.VerticalAlignment.Center]
      260 SETTABLEKS                       R34 R33 K19 ["VerticalAlignment"]
      262 GETIMPORT                        R34 K32 [Enum.AutomaticSize.Y]
      264 SETTABLEKS                       R34 R33 K20 ["AutomaticSize"]
      266 GETIMPORT                        R34 K79 [UDim2.fromScale]
      268 LOADK                            R35 K80 [0.5]
      269 LOADN                            R36 0
      270 CALL                             R34 2 1
      271 SETTABLEKS                       R34 R33 K37 ["Size"]
      273 GETTABLEKS                       R34 R2 K21 ["Spacing"]
      275 SETTABLEKS                       R34 R33 K21 ["Spacing"]
      277 NAMECALL                         R34 R18 K39 ["getNextOrder"]
      279 CALL                             R34 1 1
      280 SETTABLEKS                       R34 R33 K36 ["LayoutOrder"]
      282 DUPTABLE                         R34 K86 [{"SpeedLabel", "SpeedInput", "SelectLabel", "SelectInput"}]
      283 GETUPVAL                         R35 2
      284 GETTABLEKS                       R35 R35 K16 ["createElement"]
      286 GETUPVAL                         R36 5
      287 DUPTABLE                         R37 K87 [{"Text", "LayoutOrder", "AutomaticSize"}]
      288 LOADK                            R40 K88 ["AnimationPreview"]
      289 LOADK                            R41 K89 ["PreviewSpeed"]
      290 NAMECALL                         R38 R5 K90 ["getText"]
      292 CALL                             R38 3 1
      293 SETTABLEKS                       R38 R37 K72 ["Text"]
      295 NAMECALL                         R38 R18 K39 ["getNextOrder"]
      297 CALL                             R38 1 1
      298 SETTABLEKS                       R38 R37 K36 ["LayoutOrder"]
      300 GETIMPORT                        R38 K92 [Enum.AutomaticSize.XY]
      302 SETTABLEKS                       R38 R37 K20 ["AutomaticSize"]
      304 CALL                             R35 2 1
      305 SETTABLEKS                       R35 R34 K82 ["SpeedLabel"]
      307 GETUPVAL                         R35 2
      308 GETTABLEKS                       R35 R35 K16 ["createElement"]
      310 GETUPVAL                         R36 6
      311 DUPTABLE                         R37 K97 [{"SelectedId", "Items", "OnItemActivated", "LayoutOrder", "Width"}]
      312 SETTABLEKS                       R4 R37 K93 ["SelectedId"]
      314 NAMECALL                         R38 R0 K98 ["buildSpeedItems"]
      316 CALL                             R38 1 1
      317 SETTABLEKS                       R38 R37 K94 ["Items"]
      319 GETTABLEKS                       R38 R0 K99 ["selectSpeed"]
      321 SETTABLEKS                       R38 R37 K95 ["OnItemActivated"]
      323 NAMECALL                         R38 R18 K39 ["getNextOrder"]
      325 CALL                             R38 1 1
      326 SETTABLEKS                       R38 R37 K36 ["LayoutOrder"]
      328 LOADN                            R38 75
      329 SETTABLEKS                       R38 R37 K96 ["Width"]
      331 CALL                             R35 2 1
      332 SETTABLEKS                       R35 R34 K83 ["SpeedInput"]
      334 GETUPVAL                         R35 2
      335 GETTABLEKS                       R35 R35 K16 ["createElement"]
      337 GETUPVAL                         R36 5
      338 DUPTABLE                         R37 K87 [{"Text", "LayoutOrder", "AutomaticSize"}]
      339 LOADK                            R40 K100 ["AvatarSelection"]
      340 LOADK                            R41 K101 ["Character"]
      341 NAMECALL                         R38 R5 K90 ["getText"]
      343 CALL                             R38 3 1
      344 SETTABLEKS                       R38 R37 K72 ["Text"]
      346 NAMECALL                         R38 R18 K39 ["getNextOrder"]
      348 CALL                             R38 1 1
      349 SETTABLEKS                       R38 R37 K36 ["LayoutOrder"]
      351 GETIMPORT                        R38 K92 [Enum.AutomaticSize.XY]
      353 SETTABLEKS                       R38 R37 K20 ["AutomaticSize"]
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K84 ["SelectLabel"]
      358 GETUPVAL                         R35 2
      359 GETTABLEKS                       R35 R35 K16 ["createElement"]
      361 GETUPVAL                         R36 6
      362 DUPTABLE                         R37 K104 [{"PlaceholderText", "SelectedIndex", "Items", "OnItemActivated", "LayoutOrder", "Width"}]
      363 LOADK                            R40 K100 ["AvatarSelection"]
      364 LOADK                            R41 K105 ["ChooseAvatarPlaceholder"]
      365 NAMECALL                         R38 R5 K90 ["getText"]
      367 CALL                             R38 3 1
      368 SETTABLEKS                       R38 R37 K102 ["PlaceholderText"]
      370 SETTABLEKS                       R10 R37 K103 ["SelectedIndex"]
      372 NAMECALL                         R38 R0 K106 ["buildItems"]
      374 CALL                             R38 1 1
      375 SETTABLEKS                       R38 R37 K94 ["Items"]
      377 GETTABLEKS                       R38 R0 K107 ["selectItem"]
      379 SETTABLEKS                       R38 R37 K95 ["OnItemActivated"]
      381 NAMECALL                         R38 R18 K39 ["getNextOrder"]
      383 CALL                             R38 1 1
      384 SETTABLEKS                       R38 R37 K36 ["LayoutOrder"]
      386 LOADN                            R38 150
      387 SETTABLEKS                       R38 R37 K96 ["Width"]
      389 CALL                             R35 2 1
      390 SETTABLEKS                       R35 R34 K85 ["SelectInput"]
      392 CALL                             R31 3 1
      393 SETTABLEKS                       R31 R30 K58 ["SelectContainer"]
      395 CALL                             R27 3 1
      396 SETTABLEKS                       R27 R26 K58 ["SelectContainer"]
      398 GETUPVAL                         R27 2
      399 GETTABLEKS                       R27 R27 K16 ["createElement"]
      401 GETUPVAL                         R28 7
      402 DUPTABLE                         R29 K115 [{"LayoutOrder", "Size", "CurrentTime", "TimeLength", "IsPlaying", "IsLoaded", "OnPlay", "OnPause", "OnScrub"}]
      403 NAMECALL                         R30 R18 K39 ["getNextOrder"]
      405 CALL                             R30 1 1
      406 SETTABLEKS                       R30 R29 K36 ["LayoutOrder"]
      408 GETIMPORT                        R30 K116 [UDim2.new]
      410 LOADN                            R31 1
      411 LOADN                            R32 0
      412 LOADN                            R33 0
      413 LOADN                            R34 32
      414 CALL                             R30 4 1
      415 SETTABLEKS                       R30 R29 K37 ["Size"]
      417 SETTABLEKS                       R16 R29 K108 ["CurrentTime"]
      419 SETTABLEKS                       R17 R29 K109 ["TimeLength"]
      421 SETTABLEKS                       R14 R29 K110 ["IsPlaying"]
      423 SETTABLEKS                       R15 R29 K111 ["IsLoaded"]
      425 NEWCLOSURE                       R30 P0
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R30 R29 K112 ["OnPlay"]
      429 NEWCLOSURE                       R30 P1
      430 CAPTURE                          VAL R0
      431 SETTABLEKS                       R30 R29 K113 ["OnPause"]
      433 NEWCLOSURE                       R30 P2
      434 CAPTURE                          VAL R0
      435 SETTABLEKS                       R30 R29 K114 ["OnScrub"]
      437 CALL                             R27 2 1
      438 SETTABLEKS                       R27 R26 K59 ["Controls"]
      440 CALL                             R23 3 1
      441 SETTABLEKS                       R23 R22 K34 ["PlaybackContainer"]
      443 CALL                             R19 3 -1
      444 RETURN                           R19 -1

PROTO_27:
        0 DUPTABLE                         R2 K7 [{"animations", "previewSelection", "previewSpeed", "characters", "convertedCharacters", "characterMetadataLoadedVersion", "worldModels"}]
        1 GETTABLEKS                       R3 R0 K8 ["AnimationConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["animations"]
        5 SETTABLEKS                       R3 R2 K0 ["animations"]
        7 GETTABLEKS                       R3 R0 K8 ["AnimationConversion"]
        9 GETTABLEKS                       R3 R3 K1 ["previewSelection"]
       11 SETTABLEKS                       R3 R2 K1 ["previewSelection"]
       13 GETTABLEKS                       R3 R0 K8 ["AnimationConversion"]
       15 GETTABLEKS                       R3 R3 K2 ["previewSpeed"]
       17 SETTABLEKS                       R3 R2 K2 ["previewSpeed"]
       19 GETTABLEKS                       R3 R0 K9 ["CharacterConversion"]
       21 GETTABLEKS                       R3 R3 K3 ["characters"]
       23 SETTABLEKS                       R3 R2 K3 ["characters"]
       25 GETTABLEKS                       R3 R0 K9 ["CharacterConversion"]
       27 GETTABLEKS                       R3 R3 K4 ["convertedCharacters"]
       29 SETTABLEKS                       R3 R2 K4 ["convertedCharacters"]
       31 GETTABLEKS                       R3 R0 K9 ["CharacterConversion"]
       33 GETTABLEKS                       R3 R3 K5 ["characterMetadataLoadedVersion"]
       35 SETTABLEKS                       R3 R2 K5 ["characterMetadataLoadedVersion"]
       37 GETTABLEKS                       R3 R0 K9 ["CharacterConversion"]
       39 GETTABLEKS                       R3 R3 K6 ["worldModels"]
       41 SETTABLEKS                       R3 R2 K6 ["worldModels"]
       43 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R1 K2 [{"CreateWorldModels", "SetPreviewSpeed"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["CreateWorldModels"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetPreviewSpeed"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R1 K10 ["Packages"]
       40 GETTABLEKS                       R7 R7 K15 ["Cryo"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R2 K16 ["UI"]
       45 GETTABLEKS                       R8 R7 K17 ["Pane"]
       47 GETTABLEKS                       R9 R7 K18 ["SelectInput"]
       49 GETTABLEKS                       R10 R7 K19 ["TextLabel"]
       51 GETTABLEKS                       R11 R2 K20 ["Util"]
       53 GETTABLEKS                       R11 R11 K21 ["LayoutOrderIterator"]
       55 GETTABLEKS                       R12 R2 K20 ["Util"]
       57 GETTABLEKS                       R12 R12 K22 ["Signal"]
       59 GETIMPORT                        R13 K9 [require]
       61 GETTABLEKS                       R14 R1 K23 ["Src"]
       63 GETTABLEKS                       R14 R14 K24 ["Modules"]
       65 GETTABLEKS                       R14 R14 K25 ["NpcManager"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K9 [require]
       70 GETTABLEKS                       R15 R1 K23 ["Src"]
       72 GETTABLEKS                       R15 R15 K24 ["Modules"]
       74 GETTABLEKS                       R15 R15 K26 ["NpcIdManager"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R1 K23 ["Src"]
       79 GETTABLEKS                       R15 R15 K27 ["Components"]
       81 GETIMPORT                        R16 K9 [require]
       83 GETTABLEKS                       R17 R15 K28 ["DisplayAvatarsComponent"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K9 [require]
       88 GETTABLEKS                       R18 R15 K29 ["MediaPlayerControls"]
       90 CALL                             R17 1 1
       91 GETTABLEKS                       R18 R1 K23 ["Src"]
       93 GETTABLEKS                       R18 R18 K30 ["Actions"]
       95 GETIMPORT                        R19 K9 [require]
       97 GETTABLEKS                       R20 R18 K31 ["SetPreviewSpeed"]
       99 CALL                             R19 1 1
      100 GETTABLEKS                       R20 R1 K23 ["Src"]
      102 GETTABLEKS                       R20 R20 K32 ["Thunks"]
      104 GETIMPORT                        R21 K9 [require]
      106 GETTABLEKS                       R22 R20 K33 ["CreateWorldModels"]
      108 CALL                             R21 1 1
      109 GETTABLEKS                       R22 R1 K23 ["Src"]
      111 GETTABLEKS                       R22 R22 K20 ["Util"]
      113 GETTABLEKS                       R22 R22 K34 ["AnimationConversion"]
      115 GETIMPORT                        R23 K9 [require]
      117 GETTABLEKS                       R24 R22 K35 ["resetCharacter"]
      119 CALL                             R23 1 1
      120 GETIMPORT                        R24 K9 [require]
      122 GETTABLEKS                       R25 R22 K36 ["AnimationConversionManager"]
      124 CALL                             R24 1 1
      125 GETIMPORT                        R25 K9 [require]
      127 GETTABLEKS                       R26 R1 K23 ["Src"]
      129 GETTABLEKS                       R26 R26 K20 ["Util"]
      131 GETTABLEKS                       R26 R26 K37 ["sanitizeString"]
      133 CALL                             R25 1 1
      134 GETIMPORT                        R26 K9 [require]
      136 GETTABLEKS                       R27 R1 K23 ["Src"]
      138 GETTABLEKS                       R27 R27 K38 ["Resources"]
      140 GETTABLEKS                       R27 R27 K39 ["Constants"]
      142 CALL                             R26 1 1
      143 GETTABLEKS                       R27 R26 K40 ["PreviewSpeeds"]
      145 GETTABLEKS                       R28 R3 K41 ["PureComponent"]
      147 LOADK                            R30 K42 ["AnimationPreviewComponent"]
      148 NAMECALL                         R28 R28 K43 ["extend"]
      150 CALL                             R28 2 1
      151 DUPCLOSURE                       R29 K44 [PROTO_1]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R13
      155 DUPCLOSURE                       R30 K45 [PROTO_2]
      156 DUPCLOSURE                       R31 K46 [PROTO_9]
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R30
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R29
      162 SETTABLEKS                       R31 R28 K47 ["init"]
      164 DUPCLOSURE                       R31 K48 [PROTO_11]
      165 SETTABLEKS                       R31 R28 K49 ["start"]
      167 DUPCLOSURE                       R31 K50 [PROTO_12]
      168 SETTABLEKS                       R31 R28 K51 ["stop"]
      170 DUPCLOSURE                       R31 K52 [PROTO_13]
      171 SETTABLEKS                       R31 R28 K53 ["load"]
      173 DUPCLOSURE                       R31 K54 [PROTO_14]
      174 SETTABLEKS                       R31 R28 K55 ["play"]
      176 DUPCLOSURE                       R31 K56 [PROTO_15]
      177 SETTABLEKS                       R31 R28 K57 ["pause"]
      179 DUPCLOSURE                       R31 K58 [PROTO_16]
      180 SETTABLEKS                       R31 R28 K59 ["unload"]
      182 DUPCLOSURE                       R31 K60 [PROTO_17]
      183 SETTABLEKS                       R31 R28 K61 ["scrub"]
      185 DUPCLOSURE                       R31 K62 [PROTO_18]
      186 SETTABLEKS                       R31 R28 K63 ["willUnmount"]
      188 DUPCLOSURE                       R31 K64 [PROTO_19]
      189 CAPTURE                          VAL R25
      190 SETTABLEKS                       R31 R28 K65 ["buildItems"]
      192 DUPCLOSURE                       R31 K66 [PROTO_20]
      193 CAPTURE                          VAL R27
      194 SETTABLEKS                       R31 R28 K67 ["buildSpeedItems"]
      196 DUPCLOSURE                       R31 K68 [PROTO_21]
      197 SETTABLEKS                       R31 R28 K69 ["getModels"]
      199 DUPCLOSURE                       R31 K70 [PROTO_22]
      200 CAPTURE                          VAL R29
      201 SETTABLEKS                       R31 R28 K71 ["didUpdate"]
      203 DUPCLOSURE                       R31 K72 [PROTO_26]
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R17
      212 SETTABLEKS                       R31 R28 K73 ["render"]
      214 DUPCLOSURE                       R31 K74 [PROTO_27]
      215 GETTABLEKS                       R32 R5 K75 ["withContext"]
      217 DUPTABLE                         R33 K78 [{"Stylizer", "Localization"}]
      218 GETTABLEKS                       R34 R5 K76 ["Stylizer"]
      220 SETTABLEKS                       R34 R33 K76 ["Stylizer"]
      222 GETTABLEKS                       R34 R5 K77 ["Localization"]
      224 SETTABLEKS                       R34 R33 K77 ["Localization"]
      226 CALL                             R32 1 1
      227 MOVE                             R33 R28
      228 CALL                             R32 1 1
      229 MOVE                             R28 R32
      230 DUPCLOSURE                       R32 K79 [PROTO_30]
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R19
      233 GETTABLEKS                       R33 R4 K80 ["connect"]
      235 MOVE                             R34 R31
      236 MOVE                             R35 R32
      237 CALL                             R33 2 1
      238 MOVE                             R34 R28
      239 CALL                             R33 1 -1
      240 RETURN                           R33 -1
