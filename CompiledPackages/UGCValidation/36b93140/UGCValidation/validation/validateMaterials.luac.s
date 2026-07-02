PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        4 CALL                             R3 1 1
        5 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R0
        9 GETIMPORT                        R4 K3 [table.insert]
       11 CALL                             R4 2 0
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 LOADK                            R11 K4 ["BasePart"]
       17 NAMECALL                         R9 R8 K5 ["IsA"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+15]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K6 ["MATERIAL_WHITELIST"]
       24 GETTABLEKS                       R11 R8 K7 ["Material"]
       26 GETTABLE                         R9 R10 R11
       27 JUMPIF                           R9 ; [+8]
       28 MOVE                             R10 R2
       29 NAMECALL                         R11 R8 K8 ["GetFullName"]
       31 CALL                             R11 1 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R9 K3 [table.insert]
       35 CALL                             R9 -1 0
       36 FORGLOOP                         R4 2 ; [-21]
       38 LENGTH                           R4 R2
       39 LOADN                            R5 0
       40 JUMPIFNOTLT                      R5 R4 ; [+70]
       42 NEWTABLE                         R4 0 0
       44 NEWTABLE                         R5 0 0
       46 GETIMPORT                        R6 K10 [pairs]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K6 ["MATERIAL_WHITELIST"]
       51 CALL                             R6 1 3
       52 FORGPREP_NEXT                    R6
       53 GETTABLEKS                       R13 R9 K11 ["Name"]
       55 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       57 MOVE                             R12 R5
       58 GETIMPORT                        R11 K3 [table.insert]
       60 CALL                             R11 2 0
       61 FORGLOOP                         R6 1 ; [-9]
       63 FASTCALL2K                       TABLE_INSERT R4 K12 ; [+5]
       65 MOVE                             R7 R4
       66 LOADK                            R8 K12 ["Invalid material setup for"]
       67 GETIMPORT                        R6 K3 [table.insert]
       69 CALL                             R6 2 0
       70 GETIMPORT                        R6 K10 [pairs]
       72 MOVE                             R7 R2
       73 CALL                             R6 1 3
       74 FORGPREP_NEXT                    R6
       75 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       77 MOVE                             R12 R4
       78 MOVE                             R13 R10
       79 GETIMPORT                        R11 K3 [table.insert]
       81 CALL                             R11 2 0
       82 FORGLOOP                         R6 2 ; [-8]
       84 LOADK                            R9 K13 ["Accepted values are: "]
       85 GETIMPORT                        R10 K15 [table.concat]
       87 MOVE                             R11 R5
       88 LOADK                            R12 K16 [", "]
       89 CALL                             R10 2 1
       90 CONCAT                           R8 R9 R10
       91 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       93 MOVE                             R7 R4
       94 GETIMPORT                        R6 K3 [table.insert]
       96 CALL                             R6 2 0
       97 GETUPVAL                         R6 1
       98 GETTABLEKS                       R6 R6 K17 ["reportFailure"]
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R7 R7 K18 ["ErrorType"]
      103 GETTABLEKS                       R7 R7 K19 ["validateMaterials"]
      105 LOADNIL                          R8
      106 MOVE                             R9 R1
      107 CALL                             R6 3 0
      108 LOADB                            R6 0
      109 MOVE                             R7 R4
      110 RETURN                           R6 2
      111 LOADB                            R4 1
      112 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Constants"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K9 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
