PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDatas"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 CALL                             R0 5 1
        9 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R0 K1 ["consumerConfig"]
        4 GETTABLEKS                       R3 R3 K2 ["preloadedEditableMeshes"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R0 K1 ["consumerConfig"]
       11 GETTABLEKS                       R4 R4 K3 ["preloadedEditableImages"]
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 0
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+40]
       19 GETTABLEKS                       R5 R0 K1 ["consumerConfig"]
       21 GETTABLEKS                       R5 R5 K4 ["consumerEnv"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["ConsumerEnv"]
       26 GETTABLEKS                       R6 R6 K6 ["IEC"]
       28 JUMPIFEQ                         R5 R6 ; [+30]
       30 GETTABLEKS                       R6 R0 K1 ["consumerConfig"]
       32 GETTABLEKS                       R6 R6 K4 ["consumerEnv"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["ConsumerEnv"]
       37 GETTABLEKS                       R7 R7 K7 ["Backend"]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 GETIMPORT                        R6 K9 [pcall]
       45 GETUPVAL                         R7 2
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R2
       49 SETLIST                          R8 R9 1 [1]
       51 DUPTABLE                         R9 K12 [{"isServer", "bypassFlags"}]
       52 SETTABLEKS                       R5 R9 K10 ["isServer"]
       54 NEWTABLE                         R10 0 0
       56 SETTABLEKS                       R10 R9 K11 ["bypassFlags"]
       58 CALL                             R6 3 0
       59 LOADNIL                          R5
       60 GETUPVAL                         R6 3
       61 CALL                             R6 0 1
       62 JUMPIFNOT                        R6 ; [+14]
       63 GETTABLEKS                       R6 R0 K1 ["consumerConfig"]
       65 GETTABLEKS                       R6 R6 K4 ["consumerEnv"]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K5 ["ConsumerEnv"]
       70 GETTABLEKS                       R7 R7 K6 ["IEC"]
       72 JUMPIFEQ                         R6 R7 ; [+2]
       74 LOADB                            R5 0 +1
       75 LOADB                            R5 1
       76 JUMP                             ; [+10]
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R8 R0 K1 ["consumerConfig"]
       80 GETTABLEKS                       R8 R8 K13 ["source"]
       82 GETTABLE                         R6 R7 R8
       83 JUMPIFEQKB                       R6 TRUE ; [+2]
       85 LOADB                            R5 0 +1
       86 LOADB                            R5 1
       87 GETUPVAL                         R6 5
       88 LOADNIL                          R7
       89 LOADNIL                          R8
       90 FORGPREP                         R6
       91 GETTABLE                         R11 R1 R10
       92 JUMPIFNOT                        R11 ; [+18]
       93 GETIMPORT                        R11 K9 [pcall]
       95 NEWCLOSURE                       R12 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R10
       99 CAPTURE                          REF R5
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CALL                             R11 1 2
      103 JUMPIFNOT                        R11 ; [+3]
      104 JUMPIFNOT                        R12 ; [+2]
      105 SETTABLE                         R12 R0 R10
      106 JUMP                             ; [+4]
      107 GETUPVAL                         R13 7
      108 GETTABLEKS                       R13 R13 K14 ["DATA_FETCH_FAILURE"]
      110 SETTABLE                         R13 R0 R10
      111 FORGLOOP                         R6 2 ; [-21]
      113 GETUPVAL                         R7 8
      114 GETTABLEKS                       R7 R7 K15 ["curveAnimations"]
      116 GETTABLE                         R6 R1 R7
      117 JUMPIFNOT                        R6 ; [+12]
      118 GETUPVAL                         R6 9
      119 GETTABLEKS                       R6 R6 K16 ["getData"]
      121 MOVE                             R7 R2
      122 CALL                             R6 1 1
      123 MOVE                             R7 R6
      124 JUMPIF                           R7 ; [+3]
      125 GETUPVAL                         R7 7
      126 GETTABLEKS                       R7 R7 K14 ["DATA_FETCH_FAILURE"]
      128 SETTABLEKS                       R7 R0 K15 ["curveAnimations"]
      130 GETUPVAL                         R7 8
      131 GETTABLEKS                       R7 R7 K17 ["curveAnimComputedFrames"]
      133 GETTABLE                         R6 R1 R7
      134 JUMPIFNOT                        R6 ; [+29]
      135 GETTABLEKS                       R6 R0 K15 ["curveAnimations"]
      137 JUMPIFNOT                        R6 ; [+21]
      138 GETTABLEKS                       R6 R0 K15 ["curveAnimations"]
      140 GETUPVAL                         R7 7
      141 GETTABLEKS                       R7 R7 K14 ["DATA_FETCH_FAILURE"]
      143 JUMPIFEQ                         R6 R7 ; [+15]
      145 GETUPVAL                         R6 10
      146 GETTABLEKS                       R6 R6 K16 ["getData"]
      148 GETTABLEKS                       R7 R0 K15 ["curveAnimations"]
      150 CALL                             R6 1 1
      151 MOVE                             R7 R6
      152 JUMPIF                           R7 ; [+3]
      153 GETUPVAL                         R7 7
      154 GETTABLEKS                       R7 R7 K14 ["DATA_FETCH_FAILURE"]
      156 SETTABLEKS                       R7 R0 K17 ["curveAnimComputedFrames"]
      158 JUMP                             ; [+5]
      159 GETUPVAL                         R6 7
      160 GETTABLEKS                       R6 R6 K14 ["DATA_FETCH_FAILURE"]
      162 SETTABLEKS                       R6 R0 K17 ["curveAnimComputedFrames"]
      164 GETUPVAL                         R6 3
      165 CALL                             R6 0 1
      166 JUMPIFNOT                        R6 ; [+31]
      167 GETUPVAL                         R7 8
      168 GETTABLEKS                       R7 R7 K18 ["contentIds"]
      170 GETTABLE                         R6 R1 R7
      171 JUMPIFNOT                        R6 ; [+7]
      172 GETUPVAL                         R6 11
      173 GETTABLEKS                       R6 R6 K16 ["getData"]
      175 MOVE                             R7 R0
      176 CALL                             R6 1 1
      177 SETTABLEKS                       R6 R0 K18 ["contentIds"]
      179 GETUPVAL                         R7 8
      180 GETTABLEKS                       R7 R7 K19 ["hsrAssets"]
      182 GETTABLE                         R6 R1 R7
      183 JUMPIFNOT                        R6 ; [+14]
      184 GETUPVAL                         R6 12
      185 GETTABLEKS                       R6 R6 K16 ["getData"]
      187 MOVE                             R7 R2
      188 GETTABLEKS                       R8 R0 K1 ["consumerConfig"]
      190 CALL                             R6 2 1
      191 MOVE                             R7 R6
      192 JUMPIF                           R7 ; [+3]
      193 GETUPVAL                         R7 7
      194 GETTABLEKS                       R7 R7 K14 ["DATA_FETCH_FAILURE"]
      196 SETTABLEKS                       R7 R0 K19 ["hsrAssets"]
      198 GETUPVAL                         R7 8
      199 GETTABLEKS                       R7 R7 K20 ["curveAnimBoneData"]
      201 GETTABLE                         R6 R1 R7
      202 JUMPIFNOT                        R6 ; [+12]
      203 GETUPVAL                         R6 13
      204 GETTABLEKS                       R6 R6 K16 ["getData"]
      206 GETUPVAL                         R8 8
      207 GETTABLEKS                       R8 R8 K15 ["curveAnimations"]
      209 GETTABLE                         R7 R0 R8
      210 CALL                             R6 1 1
      211 GETUPVAL                         R7 8
      212 GETTABLEKS                       R7 R7 K20 ["curveAnimBoneData"]
      214 SETTABLE                         R6 R0 R7
      215 CLOSEUPVALS                      R5
      216 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["validationSystem"]
       13 GETTABLEKS                       R2 R2 K6 ["ValidationEnums"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K7 ["dataFetchModules"]
       22 GETTABLEKS                       R3 R3 K8 ["FetchEditables"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["validationSystem"]
       29 GETTABLEKS                       R4 R4 K7 ["dataFetchModules"]
       31 GETTABLEKS                       R4 R4 K9 ["FetchCurveAnimations"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["validationSystem"]
       38 GETTABLEKS                       R5 R5 K7 ["dataFetchModules"]
       40 GETTABLEKS                       R5 R5 K10 ["FetchCurveAnimComputedFrames"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["validationSystem"]
       47 GETTABLEKS                       R6 R6 K7 ["dataFetchModules"]
       49 GETTABLEKS                       R6 R6 K11 ["FetchContentIds"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K5 ["validationSystem"]
       56 GETTABLEKS                       R7 R7 K7 ["dataFetchModules"]
       58 GETTABLEKS                       R7 R7 K12 ["FetchHSRAssets"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K5 ["validationSystem"]
       65 GETTABLEKS                       R8 R8 K7 ["dataFetchModules"]
       67 GETTABLEKS                       R8 R8 K13 ["FetchCurveAnimBoneData"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K14 ["util"]
       74 GETTABLEKS                       R9 R9 K15 ["Types"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R9 R1 K16 ["SharedDataMember"]
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R0 K17 ["flags"]
       83 GETTABLEKS                       R11 R11 K18 ["getFFlagUGCValidateMigrateSchemaProperties"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K4 [require]
       88 GETTABLEKS                       R12 R0 K17 ["flags"]
       90 GETTABLEKS                       R12 R12 K19 ["getFFlagUGCValidateMigrateBodyPartBounds"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R13 R0 K14 ["util"]
       97 GETTABLEKS                       R13 R13 K20 ["resetPhysicsData"]
       99 CALL                             R12 1 1
      100 NEWTABLE                         R13 0 4
      102 GETTABLEKS                       R14 R9 K21 ["renderMeshesData"]
      104 GETTABLEKS                       R15 R9 K22 ["innerCagesData"]
      106 GETTABLEKS                       R16 R9 K23 ["outerCagesData"]
      108 GETTABLEKS                       R17 R9 K24 ["meshTextures"]
      110 SETLIST                          R13 R14 4 [1]
      112 DUPTABLE                         R14 K28 [{["InExpServer"] = True, ["InExpClient"] = True}]
      113 NEWTABLE                         R15 2 0
      115 NEWTABLE                         R16 0 0
      117 SETTABLEKS                       R16 R15 K29 ["DATA_FETCH_FAILURE"]
      119 DUPCLOSURE                       R16 K30 [PROTO_1]
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R16 R15 K31 ["storeDesiredData"]
      136 RETURN                           R15 1
