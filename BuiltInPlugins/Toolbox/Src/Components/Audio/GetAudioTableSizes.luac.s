PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["SOUND_EFFECTS"]
        3 GETTABLEKS                       R3 R4 K1 ["name"]
        5 JUMPIFEQ                         R0 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["MUSIC"]
       12 GETTABLEKS                       R4 R5 K1 ["name"]
       14 JUMPIFEQ                         R0 R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 NOT                              R4 R3
       19 JUMPIFNOT                        R4 ; [+1]
       20 NOT                              R4 R2
       21 NEWTABLE                         R5 8 0
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K3 ["ICON"]
       26 GETIMPORT                        R8 K6 [UDim2.fromScale]
       28 LOADN                            R9 0
       29 LOADN                            R10 1
       30 CALL                             R8 2 1
       31 GETIMPORT                        R9 K8 [UDim2.fromOffset]
       33 GETUPVAL                         R10 2
       34 LOADN                            R11 0
       35 CALL                             R9 2 1
       36 ADD                              R7 R8 R9
       37 SETTABLE                         R7 R5 R6
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K9 ["TITLE"]
       41 GETIMPORT                        R8 K6 [UDim2.fromScale]
       43 LOADK                            R9 K10 [0.5]
       44 LOADN                            R10 1
       45 CALL                             R8 2 1
       46 GETIMPORT                        R9 K8 [UDim2.fromOffset]
       48 GETUPVAL                         R11 2
       49 ADDK                             R10 R11 K11 [50]
       50 LOADN                            R11 0
       51 CALL                             R9 2 1
       52 SUB                              R7 R8 R9
       53 SETTABLE                         R7 R5 R6
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K12 ["CREATOR"]
       57 GETIMPORT                        R7 K6 [UDim2.fromScale]
       59 LOADK                            R8 K13 [0.25]
       60 LOADN                            R9 1
       61 CALL                             R7 2 1
       62 SETTABLE                         R7 R5 R6
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R6 R7 K14 ["TAGS"]
       66 GETIMPORT                        R7 K6 [UDim2.fromScale]
       68 LOADK                            R8 K13 [0.25]
       69 LOADN                            R9 1
       70 CALL                             R7 2 1
       71 SETTABLE                         R7 R5 R6
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R6 R7 K15 ["LENGTH"]
       75 GETIMPORT                        R8 K6 [UDim2.fromScale]
       77 LOADN                            R9 0
       78 LOADN                            R10 1
       79 CALL                             R8 2 1
       80 GETIMPORT                        R9 K8 [UDim2.fromOffset]
       82 LOADN                            R10 50
       83 LOADN                            R11 0
       84 CALL                             R9 2 1
       85 ADD                              R7 R8 R9
       86 SETTABLE                         R7 R5 R6
       87 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R6 R0 K4 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Types"]
       22 GETTABLEKS                       R4 R5 K10 ["Category"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K7 [require]
       27 GETTABLEKS                       R8 R0 K4 ["Src"]
       29 GETTABLEKS                       R7 R8 K5 ["Util"]
       31 GETTABLEKS                       R6 R7 K11 ["SharedFlags"]
       33 GETTABLEKS                       R5 R6 K12 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R2 K13 ["AUDIO_ROW"]
       38 GETTABLEKS                       R5 R6 K14 ["COLUMNS"]
       40 MOVE                             R7 R4
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+5]
       43 GETTABLEKS                       R7 R2 K15 ["ITEM_ROW"]
       45 GETTABLEKS                       R6 R7 K16 ["LEFT_RIGHT_PADDING"]
       47 JUMP                             ; [+4]
       48 GETTABLEKS                       R7 R2 K13 ["AUDIO_ROW"]
       50 GETTABLEKS                       R6 R7 K16 ["LEFT_RIGHT_PADDING"]
       52 GETTABLEKS                       R9 R2 K13 ["AUDIO_ROW"]
       54 GETTABLEKS                       R8 R9 K17 ["ICON_SIZE"]
       56 MULK                             R9 R6 K18 [2]
       57 ADD                              R7 R8 R9
       58 DUPCLOSURE                       R8 K19 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 RETURN                           R8 1
