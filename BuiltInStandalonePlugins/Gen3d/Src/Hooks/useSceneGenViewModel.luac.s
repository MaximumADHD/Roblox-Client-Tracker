PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["View"]
        3 GETTABLEKS                       R0 R0 K1 ["subscribe"]
        5 GETUPVAL                         R1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["View"]
        4 GETTABLEKS                       R1 R1 K1 ["sendIntent"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 GETVARARGS                       R4 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Next"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Back"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKNIL                     R2 ; [+12]
        2 JUMPIFNOTEQ                      R2 R2 ; [+10]
        4 FASTCALL1                        MATH_ABS R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K2 [math.abs]
        8 CALL                             R4 1 1
        9 JUMPIFEQKN                       R4 K3 [Infinity] ; [+3]
       11 MOVE                             R3 R2
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 0
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["SetBoundsAxis"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R3
       21 CALL                             R4 4 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetPrompt"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetUseMeshGen"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetQuality"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PickImage"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["RemoveImage"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Generate"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Close"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPTABLE                         R1 K10 [{"next", "back", "setBoundsAxis", "setPrompt", "setUseMeshGen", "setQuality", "pickImage", "removeImage", "generate", "close"}]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R2 R1 K0 ["next"]
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R2 R1 K1 ["back"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R2 R1 K2 ["setBoundsAxis"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R2 R1 K3 ["setPrompt"]
       24 NEWCLOSURE                       R2 P5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R2 R1 K4 ["setUseMeshGen"]
       29 NEWCLOSURE                       R2 P6
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R2 R1 K5 ["setQuality"]
       34 NEWCLOSURE                       R2 P7
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U2
       37 SETTABLEKS                       R2 R1 K6 ["pickImage"]
       39 NEWCLOSURE                       R2 P8
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R2 R1 K7 ["removeImage"]
       44 NEWCLOSURE                       R2 P9
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R2 R1 K8 ["generate"]
       49 NEWCLOSURE                       R2 P10
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R2 R1 K9 ["close"]
       54 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R0 K21 [{"activeRunCount", "maxRuns", "prompt", "useMeshGen", "quality", "imageIds", "imageLoading", "imageError", "step", "bounds", "boundsError", "next", "back", "setBoundsAxis", "setPrompt", "setUseMeshGen", "setQuality", "pickImage", "removeImage", "generate", "close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeRunCount"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["maxRuns"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["prompt"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["useMeshGen"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["quality"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["imageIds"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["imageLoading"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["imageError"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["step"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["bounds"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["boundsError"]
       34 GETUPVAL                         R1 11
       35 GETTABLEKS                       R1 R1 K11 ["next"]
       37 SETTABLEKS                       R1 R0 K11 ["next"]
       39 GETUPVAL                         R1 11
       40 GETTABLEKS                       R1 R1 K12 ["back"]
       42 SETTABLEKS                       R1 R0 K12 ["back"]
       44 GETUPVAL                         R1 11
       45 GETTABLEKS                       R1 R1 K13 ["setBoundsAxis"]
       47 SETTABLEKS                       R1 R0 K13 ["setBoundsAxis"]
       49 GETUPVAL                         R1 11
       50 GETTABLEKS                       R1 R1 K14 ["setPrompt"]
       52 SETTABLEKS                       R1 R0 K14 ["setPrompt"]
       54 GETUPVAL                         R1 11
       55 GETTABLEKS                       R1 R1 K15 ["setUseMeshGen"]
       57 SETTABLEKS                       R1 R0 K15 ["setUseMeshGen"]
       59 GETUPVAL                         R1 11
       60 GETTABLEKS                       R1 R1 K16 ["setQuality"]
       62 SETTABLEKS                       R1 R0 K16 ["setQuality"]
       64 GETUPVAL                         R1 11
       65 GETTABLEKS                       R1 R1 K17 ["pickImage"]
       67 SETTABLEKS                       R1 R0 K17 ["pickImage"]
       69 GETUPVAL                         R1 11
       70 GETTABLEKS                       R1 R1 K18 ["removeImage"]
       72 SETTABLEKS                       R1 R0 K18 ["removeImage"]
       74 GETUPVAL                         R1 11
       75 GETTABLEKS                       R1 R1 K19 ["generate"]
       77 SETTABLEKS                       R1 R0 K19 ["generate"]
       79 GETUPVAL                         R1 11
       80 GETTABLEKS                       R1 R1 K20 ["close"]
       82 SETTABLEKS                       R1 R0 K20 ["close"]
       84 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 NEWTABLE                         R6 0 1
       14 MOVE                             R7 R0
       15 SETLIST                          R6 R7 1 [1]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R0
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 LOADB                            R5 0
       32 JUMPIFEQKNIL                     R2 ; [+12]
       34 LOADB                            R5 0
       35 GETTABLEKS                       R6 R2 K3 ["editSessionId"]
       37 JUMPIFNOTEQ                      R6 R1 ; [+7]
       39 GETTABLEKS                       R6 R2 K4 ["visible"]
       41 JUMPIFEQKB                       R6 TRUE ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 JUMPIFNOT                        R2 ; [+3]
       46 GETTABLEKS                       R6 R2 K5 ["activeRunCount"]
       48 JUMP                             ; [+1]
       49 LOADN                            R6 0
       50 JUMPIFNOT                        R2 ; [+3]
       51 GETTABLEKS                       R7 R2 K6 ["maxRuns"]
       53 JUMP                             ; [+3]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K7 ["MAX_RUNS"]
       57 JUMPIFNOT                        R2 ; [+3]
       58 GETTABLEKS                       R8 R2 K8 ["prompt"]
       60 JUMP                             ; [+1]
       61 LOADK                            R8 K9 [""]
       62 JUMPIFNOT                        R2 ; [+3]
       63 GETTABLEKS                       R9 R2 K10 ["useMeshGen"]
       65 JUMP                             ; [+1]
       66 LOADB                            R9 0
       67 JUMPIFNOT                        R2 ; [+3]
       68 GETTABLEKS                       R10 R2 K11 ["quality"]
       70 JUMP                             ; [+5]
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R10 R10 K12 ["Constants"]
       74 GETTABLEKS                       R10 R10 K13 ["DEFAULT_SCENE_QUALITY"]
       76 JUMPIFNOT                        R2 ; [+3]
       77 GETTABLEKS                       R11 R2 K14 ["imageIds"]
       79 JUMP                             ; [+1]
       80 GETUPVAL                         R11 4
       81 JUMPIFNOT                        R2 ; [+3]
       82 GETTABLEKS                       R12 R2 K15 ["imageLoading"]
       84 JUMP                             ; [+1]
       85 LOADB                            R12 0
       86 JUMPIFNOT                        R2 ; [+3]
       87 GETTABLEKS                       R13 R2 K16 ["imageError"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R13
       91 JUMPIFNOT                        R2 ; [+3]
       92 GETTABLEKS                       R14 R2 K17 ["step"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R14
       96 JUMPIFNOT                        R2 ; [+3]
       97 GETTABLEKS                       R15 R2 K18 ["bounds"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R15
      101 JUMPIFNOT                        R2 ; [+3]
      102 GETTABLEKS                       R16 R2 K19 ["boundsError"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R16
      106 GETUPVAL                         R17 0
      107 GETTABLEKS                       R17 R17 K2 ["useMemo"]
      109 NEWCLOSURE                       R18 P2
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R4
      122 NEWTABLE                         R19 0 12
      124 MOVE                             R20 R6
      125 MOVE                             R21 R7
      126 MOVE                             R22 R8
      127 MOVE                             R23 R9
      128 MOVE                             R24 R10
      129 MOVE                             R25 R11
      130 MOVE                             R26 R12
      131 MOVE                             R27 R13
      132 MOVE                             R28 R14
      133 MOVE                             R29 R15
      134 MOVE                             R30 R16
      135 MOVE                             R31 R4
      136 SETLIST                          R19 R20 12 [1]
      138 CALL                             R17 2 1
      139 DUPTABLE                         R18 K21 [{"visible", "value"}]
      140 SETTABLEKS                       R5 R18 K4 ["visible"]
      142 SETTABLEKS                       R17 R18 K20 ["value"]
      144 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["SceneGenViewModel"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["Intents"]
       32 GETIMPORT                        R5 K15 [table.freeze]
       34 NEWTABLE                         R6 0 0
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K16 [PROTO_15]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
