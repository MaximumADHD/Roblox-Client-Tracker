PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["MeshId"]
        3 GETUPVAL                         R3 2
        4 CALL                             R0 3 2
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to retrieve MeshContent"]
        9 CALL                             R2 1 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 NAMECALL                         R0 R0 K0 ["ValidatePartBBoxAfterFullFacs"]
        8 CALL                             R0 6 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R2 K1 [assert]
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 DIVK                             R2 R3 K2 [100]
        9 GETTABLEKS                       R3 R0 K3 ["Head"]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R3
       13 MOVE                             R7 R1
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 2
       16 MOVE                             R7 R3
       17 MOVE                             R8 R1
       18 LOADB                            R9 1
       19 CALL                             R6 3 1
       20 DIV                              R4 R5 R6
       21 GETUPVAL                         R5 3
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 MOVE                             R7 R1
       27 CALL                             R5 2 2
       28 JUMPIF                           R5 ; [+18]
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R7 R8 K4 ["reportFailure"]
       32 GETUPVAL                         R10 5
       33 GETTABLEKS                       R9 R10 K5 ["ErrorType"]
       35 GETTABLEKS                       R8 R9 K6 ["validateEachBodyPartFacsBounds_FailedToExecute"]
       37 LOADNIL                          R9
       38 MOVE                             R10 R1
       39 CALL                             R7 3 0
       40 LOADB                            R7 0
       41 NEWTABLE                         R8 0 1
       43 LOADK                            R9 K7 ["Could not load head data for FACS bounds test. Please try again later or make a bug report."]
       44 SETLIST                          R8 R9 1 [1]
       46 RETURN                           R7 2
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R7 R8 K8 ["new"]
       50 CALL                             R7 0 1
       51 MOVE                             R8 R0
       52 LOADNIL                          R9
       53 LOADNIL                          R10
       54 FORGPREP                         R8
       55 JUMPIFEQKS                       R11 K3 ["Head"] ; [+94]
       57 GETUPVAL                         R14 2
       58 MOVE                             R15 R12
       59 MOVE                             R16 R1
       60 CALL                             R14 2 1
       61 GETUPVAL                         R15 2
       62 MOVE                             R16 R12
       63 MOVE                             R17 R1
       64 LOADB                            R18 1
       65 CALL                             R15 3 1
       66 DIV                              R13 R14 R15
       67 GETUPVAL                         R14 4
       68 MOVE                             R15 R12
       69 LOADK                            R16 K9 ["MeshId"]
       70 MOVE                             R17 R1
       71 CALL                             R14 3 2
       72 JUMPIF                           R14 ; [+23]
       73 GETUPVAL                         R17 5
       74 GETTABLEKS                       R16 R17 K4 ["reportFailure"]
       76 GETUPVAL                         R19 5
       77 GETTABLEKS                       R18 R19 K5 ["ErrorType"]
       79 GETTABLEKS                       R17 R18 K6 ["validateEachBodyPartFacsBounds_FailedToExecute"]
       81 LOADNIL                          R18
       82 MOVE                             R19 R1
       83 CALL                             R16 3 0
       84 LOADB                            R16 0
       85 NEWTABLE                         R17 0 1
       87 LOADK                            R19 K10 ["Could not load %* editable mesh for body FACS test."]
       88 MOVE                             R21 R11
       89 NAMECALL                         R19 R19 K11 ["format"]
       91 CALL                             R19 2 1
       92 MOVE                             R18 R19
       93 SETLIST                          R17 R18 1 [1]
       95 RETURN                           R16 2
       96 FASTCALL1                        ASSERT R15 ; [+3]
       97 MOVE                             R17 R15
       98 GETIMPORT                        R16 K1 [assert]
      100 CALL                             R16 1 0
      101 GETUPVAL                         R16 3
      102 NEWCLOSURE                       R17 P1
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R2
      109 MOVE                             R18 R1
      110 CALL                             R16 2 2
      111 JUMPIF                           R16 ; [+23]
      112 GETUPVAL                         R19 5
      113 GETTABLEKS                       R18 R19 K4 ["reportFailure"]
      115 GETUPVAL                         R21 5
      116 GETTABLEKS                       R20 R21 K5 ["ErrorType"]
      118 GETTABLEKS                       R19 R20 K6 ["validateEachBodyPartFacsBounds_FailedToExecute"]
      120 LOADNIL                          R20
      121 MOVE                             R21 R1
      122 CALL                             R18 3 0
      123 LOADB                            R18 0
      124 NEWTABLE                         R19 0 1
      126 LOADK                            R21 K12 ["Could not get post-facs size of %*."]
      127 MOVE                             R23 R11
      128 NAMECALL                         R21 R21 K11 ["format"]
      130 CALL                             R21 2 1
      131 MOVE                             R20 R21
      132 SETLIST                          R19 R20 1 [1]
      134 RETURN                           R18 2
      135 JUMPIF                           R17 ; [+14]
      136 LOADB                            R20 0
      137 NEWTABLE                         R21 0 1
      139 LOADK                            R23 K13 ["%* is skinned to face joints in a way that can result in expanded size for some facial expressions. Please adjust your skinning or facial animation data."]
      140 MOVE                             R25 R11
      141 NAMECALL                         R23 R23 K11 ["format"]
      143 CALL                             R23 2 1
      144 MOVE                             R22 R23
      145 SETLIST                          R21 R22 1 [1]
      147 NAMECALL                         R18 R7 K14 ["updateReasons"]
      149 CALL                             R18 3 0
      150 FORGLOOP                         R8 2 ; [-96]
      152 NAMECALL                         R8 R7 K15 ["getFinalResults"]
      154 CALL                             R8 1 2
      155 JUMPIF                           R8 ; [+11]
      156 GETUPVAL                         R11 5
      157 GETTABLEKS                       R10 R11 K4 ["reportFailure"]
      159 GETUPVAL                         R13 5
      160 GETTABLEKS                       R12 R13 K5 ["ErrorType"]
      162 GETTABLEKS                       R11 R12 K16 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
      164 LOADNIL                          R12
      165 MOVE                             R13 R1
      166 CALL                             R10 3 0
      167 NAMECALL                         R10 R7 K15 ["getFinalResults"]
      169 CALL                             R10 1 -1
      170 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K10 ["util"]
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R3 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R3 K12 ["FailureReasonsAccumulator"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R7 R3 K13 ["pcallDeferred"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K8 [require]
       37 GETTABLEKS                       R9 R0 K10 ["util"]
       39 GETTABLEKS                       R8 R9 K14 ["getEditableMeshFromContext"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K8 [require]
       44 GETTABLEKS                       R10 R0 K10 ["util"]
       46 GETTABLEKS                       R9 R10 K15 ["getExpectedPartSize"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R0 K16 ["flags"]
       51 GETIMPORT                        R10 K8 [require]
       53 GETTABLEKS                       R11 R9 K17 ["getEngineFeatureUGCValidationFullBodyFacs"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K8 [require]
       58 GETTABLEKS                       R12 R9 K18 ["getFIntUGCValidationAcceptableBodyFacsExpansion"]
       60 CALL                             R11 1 1
       61 DUPCLOSURE                       R12 K19 [PROTO_2]
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R1
       70 RETURN                           R12 1
