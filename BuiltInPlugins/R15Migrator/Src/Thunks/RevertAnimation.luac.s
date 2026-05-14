PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateProgress"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["animations"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 GETTABLEKS                       R5 R1 K1 ["AnimationConversion"]
       14 GETTABLEKS                       R5 R5 K3 ["selection"]
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 NEWTABLE                         R10 0 0
       21 GETTABLE                         R11 R3 R8
       22 GETIMPORT                        R12 K5 [next]
       24 GETTABLEKS                       R13 R11 K6 ["oldRefs"]
       26 CALL                             R12 1 1
       27 JUMPIFNOT                        R12 ; [+89]
       28 GETTABLEKS                       R12 R11 K6 ["oldRefs"]
       30 LOADNIL                          R13
       31 LOADNIL                          R14
       32 FORGPREP                         R12
       33 GETUPVAL                         R19 1
       34 GETTABLEKS                       R19 R19 K7 ["LocalAsset"]
       36 NAMECALL                         R17 R16 K8 ["IsA"]
       38 CALL                             R17 2 1
       39 JUMPIFNOT                        R17 ; [+32]
       40 GETUPVAL                         R17 2
       41 GETTABLEKS                       R17 R17 K9 ["getR6KeyframeSequence"]
       43 MOVE                             R18 R15
       44 CALL                             R17 1 1
       45 NAMECALL                         R18 R15 K10 ["ClearAllChildren"]
       47 CALL                             R18 1 0
       48 NAMECALL                         R18 R17 K11 ["GetChildren"]
       50 CALL                             R18 1 3
       51 FORGPREP                         R18
       52 NAMECALL                         R23 R22 K12 ["Clone"]
       54 CALL                             R23 1 1
       55 SETTABLEKS                       R15 R23 K13 ["Parent"]
       57 FORGLOOP                         R18 2 ; [-6]
       59 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       61 MOVE                             R19 R10
       62 MOVE                             R20 R15
       63 GETIMPORT                        R18 K16 [table.insert]
       65 CALL                             R18 2 0
       66 GETUPVAL                         R18 3
       67 MOVE                             R20 R15
       68 NAMECALL                         R18 R18 K17 ["addTag"]
       70 CALL                             R18 2 0
       71 JUMP                             ; [+39]
       72 GETUPVAL                         R19 1
       73 GETTABLEKS                       R19 R19 K18 ["AnimationInstance"]
       75 NAMECALL                         R17 R16 K8 ["IsA"]
       77 CALL                             R17 2 1
       78 JUMPIFNOT                        R17 ; [+17]
       79 GETTABLEKS                       R17 R16 K19 ["url"]
       81 SETTABLEKS                       R17 R15 K20 ["AnimationId"]
       83 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       85 MOVE                             R18 R10
       86 MOVE                             R19 R15
       87 GETIMPORT                        R17 K16 [table.insert]
       89 CALL                             R17 2 0
       90 GETUPVAL                         R17 3
       91 MOVE                             R19 R15
       92 NAMECALL                         R17 R17 K17 ["addTag"]
       94 CALL                             R17 2 0
       95 JUMP                             ; [+15]
       96 GETUPVAL                         R19 1
       97 GETTABLEKS                       R19 R19 K21 ["AssetIdString"]
       99 NAMECALL                         R17 R16 K8 ["IsA"]
      101 CALL                             R17 2 1
      102 JUMPIFNOT                        R17 ; [+8]
      103 GETUPVAL                         R17 4
      104 GETTABLEKS                       R19 R15 K22 ["scriptInstance"]
      106 NAMECALL                         R17 R17 K23 ["findScriptGUID"]
      108 CALL                             R17 2 1
      109 LOADB                            R18 1
      110 SETTABLE                         R18 R4 R17
      111 FORGLOOP                         R12 2 ; [-79]
      113 MOVE                             R14 R10
      114 NAMECALL                         R12 R11 K24 ["addRefs"]
      116 CALL                             R12 2 0
      117 FORGLOOP                         R5 1 ; [-99]
      119 GETIMPORT                        R5 K5 [next]
      121 MOVE                             R6 R4
      122 CALL                             R5 1 1
      123 JUMPIFNOT                        R5 ; [+23]
      124 GETUPVAL                         R5 5
      125 GETTABLEKS                       R5 R5 K25 ["Dictionary"]
      127 GETTABLEKS                       R5 R5 K26 ["keys"]
      129 MOVE                             R6 R4
      130 CALL                             R5 1 1
      131 GETUPVAL                         R6 6
      132 GETTABLEKS                       R6 R6 K27 ["new"]
      134 LOADK                            R7 K28 ["Revert"]
      135 LENGTH                           R8 R5
      136 MOVE                             R9 R0
      137 CALL                             R6 3 1
      138 GETUPVAL                         R7 7
      139 MOVE                             R8 R5
      140 GETUPVAL                         R9 4
      141 NEWCLOSURE                       R10 P0
      142 CAPTURE                          VAL R6
      143 CALL                             R7 3 0
      144 NAMECALL                         R7 R6 K29 ["clearProgressBar"]
      146 CALL                             R7 1 0
      147 GETUPVAL                         R7 8
      148 MOVE                             R8 R3
      149 CALL                             R7 1 -1
      150 NAMECALL                         R5 R0 K30 ["dispatch"]
      152 CALL                             R5 -1 0
      153 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["deepCopy"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R4 K12 ["SaveInterface"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R4 K13 ["PublishTagging"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R6 R6 K14 ["AnimationTagging"]
       41 GETTABLEKS                       R7 R4 K15 ["AnimationConversion"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K16 ["constants"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R8 K17 ["AssetType"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R4 K18 ["ScriptHistory"]
       54 GETTABLEKS                       R11 R11 K19 ["revertScripts"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R4 K20 ["ScriptConversionProgressTracker"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R12 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R12 K21 ["Actions"]
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R12 K22 ["SetAnimations"]
       70 CALL                             R13 1 1
       71 DUPCLOSURE                       R14 K23 [PROTO_2]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R13
       80 RETURN                           R14 1
