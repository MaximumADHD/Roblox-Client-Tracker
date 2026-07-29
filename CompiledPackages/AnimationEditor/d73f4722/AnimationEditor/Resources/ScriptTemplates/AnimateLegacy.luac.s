PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Stop"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K1 ["Destroy"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 1
       15 NAMECALL                         R0 R0 K1 ["Destroy"]
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 1
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 2
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K0 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K1 ["RegisterAnimationClip"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsStudio"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+23]
        5 GETIMPORT                        R0 K2 [script]
        7 LOADK                            R2 K3 ["SourceAssetId"]
        8 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R1 R0 K5 ["Value"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 JUMPIFNOT                        R1 ; [+9]
       17 JUMPIFEQKS                       R1 K6 [""] ; [+8]
       19 LOADK                            R3 K7 ["rbxassetid://%*"]
       20 MOVE                             R5 R1
       21 NAMECALL                         R3 R3 K8 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 RETURN                           R2 1
       26 LOADNIL                          R2
       27 RETURN                           R2 1
       28 GETUPVAL                         R0 1
       29 CALL                             R0 0 -1
       30 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsStudio"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+23]
        5 GETIMPORT                        R1 K2 [script]
        7 LOADK                            R3 K3 ["SourceAssetId"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R2 R1 K5 ["Value"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R2 ; [+9]
       17 JUMPIFEQKS                       R2 K6 [""] ; [+8]
       19 LOADK                            R3 K7 ["rbxassetid://%*"]
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R3 K8 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R0 R3
       25 JUMP                             ; [+22]
       26 LOADNIL                          R0
       27 JUMP                             ; [+20]
       28 GETUPVAL                         R1 1
       29 JUMPIFNOT                        R1 ; [+2]
       30 GETUPVAL                         R1 2
       31 JUMPIF                           R1 ; [+2]
       32 LOADNIL                          R0
       33 JUMP                             ; [+14]
       34 GETUPVAL                         R1 1
       35 GETUPVAL                         R3 2
       36 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       38 CALL                             R1 2 1
       39 JUMPIF                           R1 ; [+2]
       40 LOADNIL                          R0
       41 JUMP                             ; [+6]
       42 GETUPVAL                         R2 3
       43 MOVE                             R4 R1
       44 NAMECALL                         R2 R2 K9 ["RegisterAnimationClip"]
       46 CALL                             R2 2 1
       47 MOVE                             R0 R2
       48 JUMPIFNOT                        R0 ; [+57]
       49 JUMPIFEQKS                       R0 K6 [""] ; [+56]
       51 GETUPVAL                         R1 4
       52 JUMPIFEQ                         R0 R1 ; [+75]
       54 GETUPVAL                         R1 5
       55 JUMPIFNOT                        R1 ; [+10]
       56 GETUPVAL                         R1 5
       57 NAMECALL                         R1 R1 K10 ["Stop"]
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 5
       61 NAMECALL                         R1 R1 K11 ["Destroy"]
       63 CALL                             R1 1 0
       64 LOADNIL                          R1
       65 SETUPVAL                         R1 5
       66 GETUPVAL                         R1 6
       67 JUMPIFNOT                        R1 ; [+6]
       68 GETUPVAL                         R1 6
       69 NAMECALL                         R1 R1 K11 ["Destroy"]
       71 CALL                             R1 1 0
       72 LOADNIL                          R1
       73 SETUPVAL                         R1 6
       74 LOADNIL                          R1
       75 SETUPVAL                         R1 4
       76 GETIMPORT                        R1 K14 [Instance.new]
       78 LOADK                            R2 K15 ["Animation"]
       79 CALL                             R1 1 1
       80 SETUPVAL                         R1 6
       81 GETUPVAL                         R1 6
       82 SETTABLEKS                       R0 R1 K16 ["AnimationId"]
       84 GETUPVAL                         R1 6
       85 LOADK                            R3 K17 ["AnimationEditor_GraphAnimation"]
       86 NAMECALL                         R1 R1 K18 ["AddTag"]
       88 CALL                             R1 2 0
       89 GETUPVAL                         R1 6
       90 GETIMPORT                        R2 K2 [script]
       92 SETTABLEKS                       R2 R1 K19 ["Parent"]
       94 GETUPVAL                         R1 7
       95 GETUPVAL                         R3 6
       96 NAMECALL                         R1 R1 K20 ["LoadAnimation"]
       98 CALL                             R1 2 1
       99 SETUPVAL                         R1 5
      100 GETUPVAL                         R1 5
      101 NAMECALL                         R1 R1 K21 ["Play"]
      103 CALL                             R1 1 0
      104 SETUPVAL                         R0 4
      105 RETURN                           R0 0
      106 GETUPVAL                         R1 5
      107 JUMPIFNOT                        R1 ; [+10]
      108 GETUPVAL                         R1 5
      109 NAMECALL                         R1 R1 K10 ["Stop"]
      111 CALL                             R1 1 0
      112 GETUPVAL                         R1 5
      113 NAMECALL                         R1 R1 K11 ["Destroy"]
      115 CALL                             R1 1 0
      116 LOADNIL                          R1
      117 SETUPVAL                         R1 5
      118 GETUPVAL                         R1 6
      119 JUMPIFNOT                        R1 ; [+6]
      120 GETUPVAL                         R1 6
      121 NAMECALL                         R1 R1 K11 ["Destroy"]
      123 CALL                             R1 1 0
      124 LOADNIL                          R1
      125 SETUPVAL                         R1 6
      126 LOADNIL                          R1
      127 SETUPVAL                         R1 4
      128 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R3 R2 K6 ["IsRunning"]
       21 CALL                             R3 1 1
       22 JUMPIF                           R3 ; [+1]
       23 RETURN                           R0 0
       24 LOADNIL                          R3
       25 GETIMPORT                        R4 K8 [script]
       27 GETTABLEKS                       R4 R4 K9 ["Parent"]
       29 LOADK                            R7 K10 ["Humanoid"]
       30 NAMECALL                         R5 R4 K11 ["WaitForChild"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K8 [script]
       35 LOADK                            R8 K12 ["GraphName"]
       36 NAMECALL                         R6 R6 K13 ["FindFirstChild"]
       38 CALL                             R6 2 1
       39 JUMPIFNOT                        R6 ; [+3]
       40 GETTABLEKS                       R7 R6 K14 ["Value"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 GETIMPORT                        R8 K8 [script]
       46 LOADK                            R10 K15 ["CharacterName"]
       47 NAMECALL                         R8 R8 K13 ["FindFirstChild"]
       49 CALL                             R8 2 1
       50 JUMPIFNOT                        R8 ; [+3]
       51 GETTABLEKS                       R9 R8 K14 ["Value"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 LOADNIL                          R11
       57 NAMECALL                         R12 R2 K16 ["IsStudio"]
       59 CALL                             R12 1 1
       60 JUMPIFNOT                        R12 ; [+12]
       61 JUMPIFNOT                        R9 ; [+11]
       62 JUMPIFNOT                        R7 ; [+10]
       63 LOADK                            R14 K17 ["AnimationGraphEditor"]
       64 LOADN                            R15 1
       65 NAMECALL                         R12 R1 K11 ["WaitForChild"]
       67 CALL                             R12 3 1
       68 MOVE                             R10 R12
       69 MOVE                             R12 R9
       70 LOADK                            R13 K18 ["_"]
       71 MOVE                             R14 R7
       72 CONCAT                           R11 R12 R14
       73 LOADK                            R15 K19 ["Animator"]
       74 NAMECALL                         R13 R5 K20 ["FindFirstChildOfClass"]
       76 CALL                             R13 2 1
       77 OR                               R12 R13 R5
       78 LOADNIL                          R13
       79 LOADNIL                          R14
       80 NEWCLOSURE                       R15 P0
       81 CAPTURE                          REF R3
       82 CAPTURE                          REF R13
       83 CAPTURE                          REF R14
       84 NEWCLOSURE                       R16 P1
       85 CAPTURE                          REF R10
       86 CAPTURE                          REF R11
       87 CAPTURE                          VAL R0
       88 DUPCLOSURE                       R17 K21 [PROTO_2]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R16
       91 NEWCLOSURE                       R18 P3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          REF R10
       94 CAPTURE                          REF R11
       95 CAPTURE                          VAL R0
       96 CAPTURE                          REF R14
       97 CAPTURE                          REF R3
       98 CAPTURE                          REF R13
       99 CAPTURE                          VAL R12
      100 MOVE                             R19 R18
      101 CALL                             R19 0 0
      102 JUMPIFNOT                        R10 ; [+9]
      103 JUMPIFNOT                        R11 ; [+8]
      104 GETTABLEKS                       R19 R10 K22 ["ChildAdded"]
      106 NEWCLOSURE                       R21 P4
      107 CAPTURE                          REF R11
      108 CAPTURE                          VAL R18
      109 NAMECALL                         R19 R19 K23 ["Connect"]
      111 CALL                             R19 2 0
      112 CLOSEUPVALS                      R3
      113 RETURN                           R0 0
