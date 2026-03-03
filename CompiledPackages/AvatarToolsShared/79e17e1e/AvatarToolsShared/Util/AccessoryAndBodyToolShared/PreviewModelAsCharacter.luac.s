PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R0
        6 NOT                              R6 R1
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R1 ; [+15]
        9 GETIMPORT                        R5 K1 [pairs]
       11 MOVE                             R6 R4
       12 CALL                             R5 1 3
       13 FORGPREP_NEXT                    R5
       14 GETUPVAL                         R10 1
       15 MOVE                             R12 R9
       16 GETIMPORT                        R13 K5 [Enum.CageType.Inner]
       18 NAMECALL                         R10 R10 K6 ["PublishCageMeshAsync"]
       20 CALL                             R10 3 1
       21 SETTABLE                         R10 R2 R9
       22 FORGLOOP                         R5 2 ; [-9]
       24 GETIMPORT                        R5 K1 [pairs]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 3
       28 FORGPREP_NEXT                    R5
       29 GETUPVAL                         R10 1
       30 MOVE                             R12 R9
       31 GETIMPORT                        R13 K8 [Enum.CageType.Outer]
       33 NAMECALL                         R10 R10 K6 ["PublishCageMeshAsync"]
       35 CALL                             R10 3 1
       36 SETTABLE                         R10 R3 R9
       37 FORGLOOP                         R5 2 ; [-9]
       39 GETIMPORT                        R5 K10 [ipairs]
       41 NAMECALL                         R6 R0 K11 ["GetDescendants"]
       43 CALL                             R6 1 -1
       44 CALL                             R5 -1 3
       45 FORGPREP_INEXT                   R5
       46 GETTABLE                         R10 R2 R9
       47 JUMPIFNOT                        R10 ; [+3]
       48 GETTABLE                         R10 R2 R9
       49 SETTABLEKS                       R10 R9 K12 ["ReferenceMeshId"]
       51 GETTABLE                         R10 R3 R9
       52 JUMPIFNOT                        R10 ; [+3]
       53 GETTABLE                         R10 R3 R9
       54 SETTABLEKS                       R10 R9 K13 ["CageMeshId"]
       56 FORGLOOP                         R5 2 [inext] ; [-11]
       58 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+2]
        1 LOADB                            R3 0
        2 RETURN                           R3 1
        3 LOADK                            R5 K0 ["wasArchivable"]
        4 GETTABLEKS                       R6 R1 K1 ["Archivable"]
        6 NAMECALL                         R3 R1 K2 ["SetAttribute"]
        8 CALL                             R3 3 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R1 K1 ["Archivable"]
       12 GETIMPORT                        R3 K4 [ipairs]
       14 NAMECALL                         R4 R1 K5 ["GetDescendants"]
       16 CALL                             R4 1 -1
       17 CALL                             R3 -1 3
       18 FORGPREP_INEXT                   R3
       19 LOADK                            R10 K0 ["wasArchivable"]
       20 GETTABLEKS                       R11 R7 K1 ["Archivable"]
       22 NAMECALL                         R8 R7 K2 ["SetAttribute"]
       24 CALL                             R8 3 0
       25 LOADB                            R8 1
       26 SETTABLEKS                       R8 R7 K1 ["Archivable"]
       28 FORGLOOP                         R3 2 [inext] ; [-10]
       30 NAMECALL                         R3 R1 K6 ["Clone"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [game]
       35 LOADK                            R6 K9 ["StarterPlayer"]
       36 NAMECALL                         R4 R4 K10 ["GetService"]
       38 CALL                             R4 2 1
       39 NAMECALL                         R5 R4 K11 ["GetChildren"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K13 [pairs]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 3
       46 FORGPREP_NEXT                    R6
       47 GETTABLEKS                       R11 R10 K14 ["Name"]
       49 JUMPIFNOTEQKS                    R11 K15 ["StarterCharacter"] ; [+4]
       51 NAMECALL                         R11 R10 K16 ["Destroy"]
       53 CALL                             R11 1 0
       54 FORGLOOP                         R6 2 ; [-8]
       56 SETTABLEKS                       R4 R3 K17 ["Parent"]
       58 LOADK                            R6 K15 ["StarterCharacter"]
       59 SETTABLEKS                       R6 R3 K14 ["Name"]
       61 LOADK                            R8 K0 ["wasArchivable"]
       62 NAMECALL                         R6 R1 K18 ["GetAttribute"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R1 K1 ["Archivable"]
       67 LOADK                            R8 K0 ["wasArchivable"]
       68 LOADNIL                          R9
       69 NAMECALL                         R6 R1 K2 ["SetAttribute"]
       71 CALL                             R6 3 0
       72 GETIMPORT                        R6 K4 [ipairs]
       74 NAMECALL                         R7 R1 K5 ["GetDescendants"]
       76 CALL                             R7 1 -1
       77 CALL                             R6 -1 3
       78 FORGPREP_INEXT                   R6
       79 LOADK                            R13 K0 ["wasArchivable"]
       80 NAMECALL                         R11 R10 K18 ["GetAttribute"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K1 ["Archivable"]
       85 LOADK                            R13 K0 ["wasArchivable"]
       86 LOADNIL                          R14
       87 NAMECALL                         R11 R10 K2 ["SetAttribute"]
       89 CALL                             R11 3 0
       90 FORGLOOP                         R6 2 [inext] ; [-12]
       92 LOADK                            R8 K19 ["WrapLayer"]
       93 LOADB                            R9 1
       94 NAMECALL                         R6 R2 K20 ["findFirstChildWhichIsA"]
       96 CALL                             R6 3 1
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R7 R8 K21 ["isClothes"]
      100 MOVE                             R8 R2
      101 CALL                             R7 1 1
      102 JUMPIFNOT                        R7 ; [+21]
      103 JUMPIFNOT                        R6 ; [+20]
      104 GETTABLEKS                       R9 R2 K14 ["Name"]
      106 LOADB                            R10 1
      107 NAMECALL                         R7 R3 K22 ["FindFirstChild"]
      109 CALL                             R7 3 1
      110 JUMPIFNOT                        R7 ; [+13]
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R8 R9 K21 ["isClothes"]
      114 MOVE                             R9 R7
      115 CALL                             R8 1 1
      116 JUMPIFNOT                        R8 ; [+7]
      117 GETUPVAL                         R8 1
      118 MOVE                             R9 R7
      119 LOADB                            R10 1
      120 CALL                             R8 2 0
      121 LOADB                            R8 0
      122 SETTABLEKS                       R8 R7 K23 ["Anchored"]
      124 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [game]
        3 GETTABLEKS                       R0 R1 K2 ["Workspace"]
        5 GETIMPORT                        R1 K1 [game]
        7 LOADK                            R3 K3 ["PublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETIMPORT                        R5 K8 [script]
       15 GETTABLEKS                       R4 R5 K9 ["Parent"]
       17 GETTABLEKS                       R3 R4 K10 ["getDeformerToPartMap"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETIMPORT                        R6 K8 [script]
       24 GETTABLEKS                       R5 R6 K9 ["Parent"]
       26 GETTABLEKS                       R4 R5 K11 ["ItemCharacteristics"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 1 0
       31 DUPCLOSURE                       R5 K12 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R6 K13 [PROTO_1]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R5
       37 SETTABLEKS                       R6 R4 K14 ["SetPreviewAsCharacter"]
       39 RETURN                           R4 1
