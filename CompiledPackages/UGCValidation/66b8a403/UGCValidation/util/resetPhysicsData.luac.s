PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["CollisionFidelity"]
        5 NAMECALL                         R0 R0 K1 ["ResetCollisionFidelity"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETIMPORT                        R3 K3 [game]
        5 LOADK                            R5 K4 ["EngineResetCollisionFidelity"]
        6 NAMECALL                         R3 R3 K5 ["GetEngineFeature"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+3]
       10 LOADB                            R3 0
       11 LOADK                            R4 K6 ["EngineResetCollisionFidelity is not enabled"]
       12 RETURN                           R3 2
       13 GETTABLEKS                       R4 R1 K7 ["bypassFlags"]
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETTABLEKS                       R4 R1 K7 ["bypassFlags"]
       18 GETTABLEKS                       R3 R4 K8 ["skipPhysicsDataReset"]
       20 JUMP                             ; [+1]
       21 LOADB                            R3 0
       22 MOVE                             R4 R0
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FORGPREP                         R4
       26 NAMECALL                         R9 R8 K9 ["GetDescendants"]
       28 CALL                             R9 1 1
       29 LOADN                            R12 1
       30 FASTCALL3                        TABLE_INSERT R9 R12 R8
       32 MOVE                             R11 R9
       33 MOVE                             R13 R8
       34 GETIMPORT                        R10 K12 [table.insert]
       36 CALL                             R10 3 0
       37 MOVE                             R10 R9
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 FORGPREP                         R10
       41 LOADK                            R17 K13 ["MeshPart"]
       42 NAMECALL                         R15 R14 K14 ["IsA"]
       44 CALL                             R15 2 1
       45 JUMPIFNOT                        R15 ; [+63]
       46 JUMPIF                           R3 ; [+62]
       47 GETIMPORT                        R15 K16 [pcall]
       49 NEWCLOSURE                       R16 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R14
       52 CALL                             R15 1 1
       53 JUMPIF                           R15 ; [+21]
       54 GETTABLEKS                       R16 R1 K17 ["isServer"]
       56 JUMPIFNOT                        R16 ; [+4]
       57 GETIMPORT                        R16 K19 [error]
       59 LOADK                            R17 K20 ["Failed to load mesh data"]
       60 CALL                             R16 1 0
       61 GETUPVAL                         R17 1
       62 GETTABLEKS                       R16 R17 K21 ["reportFailure"]
       64 GETUPVAL                         R19 1
       65 GETTABLEKS                       R18 R19 K22 ["ErrorType"]
       67 GETTABLEKS                       R17 R18 K23 ["resetPhysicsData_FailedToLoadMesh"]
       69 LOADNIL                          R18
       70 MOVE                             R19 R1
       71 CALL                             R16 3 0
       72 LOADB                            R16 0
       73 LOADK                            R17 K20 ["Failed to load mesh data"]
       74 RETURN                           R16 2
       75 GETUPVAL                         R16 2
       76 CALL                             R16 0 1
       77 JUMPIFNOT                        R16 ; [+31]
       78 NAMECALL                         R16 R14 K24 ["GetMass"]
       80 CALL                             R16 1 1
       81 GETUPVAL                         R17 3
       82 CALL                             R17 0 1
       83 JUMPIFNOTLT                      R17 R16 ; [+25]
       85 GETUPVAL                         R17 1
       86 GETTABLEKS                       R16 R17 K21 ["reportFailure"]
       88 GETUPVAL                         R19 1
       89 GETTABLEKS                       R18 R19 K22 ["ErrorType"]
       91 GETTABLEKS                       R17 R18 K25 ["resetPhysicsData_LargeMass"]
       93 LOADNIL                          R18
       94 MOVE                             R19 R1
       95 CALL                             R16 3 0
       96 LOADB                            R16 0
       97 GETIMPORT                        R17 K28 [string.format]
       99 LOADK                            R18 K29 ["%s has a mass of %d while the limit is %d."]
      100 GETTABLEKS                       R19 R14 K30 ["Name"]
      102 NAMECALL                         R20 R14 K24 ["GetMass"]
      104 CALL                             R20 1 1
      105 GETUPVAL                         R21 3
      106 CALL                             R21 0 -1
      107 CALL                             R17 -1 -1
      108 RETURN                           R16 -1
      109 FORGLOOP                         R10 2 ; [-69]
      111 FORGLOOP                         R4 2 ; [-86]
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R4 R5 K31 ["recordScriptTime"]
      116 GETIMPORT                        R6 K33 [script]
      118 GETTABLEKS                       R5 R6 K30 ["Name"]
      120 MOVE                             R6 R2
      121 MOVE                             R7 R1
      122 CALL                             R4 3 0
      123 LOADB                            R4 1
      124 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Analytics"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R6 R1 K12 ["flags"]
       29 GETTABLEKS                       R5 R6 K13 ["getFFlagUGCValidatePartMass"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R7 R1 K12 ["flags"]
       36 GETTABLEKS                       R6 R7 K14 ["getFIntUGCValidationPartMaxMass"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
