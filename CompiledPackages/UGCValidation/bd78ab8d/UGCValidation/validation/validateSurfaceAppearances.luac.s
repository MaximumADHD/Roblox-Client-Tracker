PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["allowEditableInstances"]
        2 NAMECALL                         R3 R0 K1 ["GetDescendants"]
        4 CALL                             R3 1 1
        5 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R0
        9 GETIMPORT                        R4 K4 [table.insert]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K5 ["new"]
       15 CALL                             R4 0 1
       16 GETIMPORT                        R5 K7 [pairs]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 3
       20 FORGPREP_NEXT                    R5
       21 LOADK                            R12 K8 ["MeshPart"]
       22 NAMECALL                         R10 R9 K9 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+88]
       26 GETTABLEKS                       R11 R9 K10 ["TextureID"]
       28 JUMPIFNOTEQKS                    R11 K11 [""] ; [+2]
       30 LOADB                            R10 0 +1
       31 LOADB                            R10 1
       32 JUMPIFNOT                        R2 ; [+19]
       33 JUMPIF                           R10 ; [+18]
       34 GETTABLEKS                       R11 R9 K12 ["TextureContent"]
       36 GETTABLEKS                       R13 R11 K13 ["Uri"]
       38 JUMPIFEQKNIL                     R13 ; [+6]
       40 LOADB                            R12 1
       41 GETTABLEKS                       R13 R11 K13 ["Uri"]
       43 JUMPIFNOTEQKS                    R13 K11 [""] ; [+7]
       45 GETTABLEKS                       R13 R11 K14 ["Object"]
       47 JUMPIFNOTEQKNIL                  R13 ; [+2]
       49 LOADB                            R12 0 +1
       50 LOADB                            R12 1
       51 MOVE                             R10 R12
       52 LOADK                            R13 K15 ["SurfaceAppearance"]
       53 NAMECALL                         R11 R9 K16 ["FindFirstChildWhichIsA"]
       55 CALL                             R11 2 1
       56 JUMPIFNOT                        R10 ; [+29]
       57 JUMPIFNOT                        R11 ; [+56]
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R12 R13 K17 ["reportFailure"]
       61 GETUPVAL                         R15 1
       62 GETTABLEKS                       R14 R15 K18 ["ErrorType"]
       64 GETTABLEKS                       R13 R14 K19 ["validateSurfaceAppearances_MeshPartHasTexture"]
       66 LOADNIL                          R14
       67 MOVE                             R15 R1
       68 CALL                             R12 3 0
       69 LOADB                            R14 0
       70 NEWTABLE                         R15 0 1
       72 LOADK                            R17 K20 ["TextureID and SurfaceAppearance are both defined for MeshPart (%*). Publishing will only use SurfaceApperance."]
       73 NAMECALL                         R19 R9 K21 ["GetFullName"]
       75 CALL                             R19 1 1
       76 NAMECALL                         R17 R17 K22 ["format"]
       78 CALL                             R17 2 1
       79 MOVE                             R16 R17
       80 SETLIST                          R15 R16 1 [1]
       82 NAMECALL                         R12 R4 K23 ["updateReasons"]
       84 CALL                             R12 3 0
       85 JUMP                             ; [+28]
       86 JUMPIF                           R11 ; [+27]
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R12 R13 K17 ["reportFailure"]
       90 GETUPVAL                         R15 1
       91 GETTABLEKS                       R14 R15 K18 ["ErrorType"]
       93 GETTABLEKS                       R13 R14 K24 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
       95 LOADNIL                          R14
       96 MOVE                             R15 R1
       97 CALL                             R12 3 0
       98 LOADB                            R14 0
       99 NEWTABLE                         R15 0 1
      101 LOADK                            R17 K25 ["(%*) has an empty TextureID and no child SurfaceAppearance instance. You need to define at least one of them."]
      102 NAMECALL                         R19 R9 K21 ["GetFullName"]
      104 CALL                             R19 1 1
      105 NAMECALL                         R17 R17 K22 ["format"]
      107 CALL                             R17 2 1
      108 MOVE                             R16 R17
      109 SETLIST                          R15 R16 1 [1]
      111 NAMECALL                         R12 R4 K23 ["updateReasons"]
      113 CALL                             R12 3 0
      114 FORGLOOP                         R5 2 ; [-94]
      116 NAMECALL                         R5 R4 K26 ["getFinalResults"]
      118 CALL                             R5 1 -1
      119 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["FailureReasonsAccumulator"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K9 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
