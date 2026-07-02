PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 3
        4 LOADK                            R7 K0 ["X"]
        5 LOADK                            R8 K1 ["Y"]
        6 LOADK                            R9 K2 ["Z"]
        7 SETLIST                          R4 R7 3 [1]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLE                         R9 R1 R8
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 LOADN                            R12 0
       16 LOADK                            R13 K3 [0.0001]
       17 CALL                             R10 3 1
       18 JUMPIFNOT                        R10 ; [+10]
       19 LOADK                            R13 K4 ["Size on "]
       20 MOVE                             R14 R8
       21 LOADK                            R15 K5 [" axis is zero"]
       22 CONCAT                           R12 R13 R15
       23 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       25 MOVE                             R11 R3
       26 GETIMPORT                        R10 K8 [table.insert]
       28 CALL                             R10 2 0
       29 FORGLOOP                         R4 2 ; [-18]
       31 LENGTH                           R4 R3
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R5 R4 ; [+19]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K9 ["Keys"]
       38 GETTABLEKS                       R6 R6 K10 ["BodyBlocking_ZeroMeshSize"]
       40 DUPTABLE                         R7 K13 [{"meshName", "details"}]
       41 SETTABLEKS                       R2 R7 K11 ["meshName"]
       43 GETIMPORT                        R8 K15 [table.concat]
       45 MOVE                             R9 R3
       46 LOADK                            R10 K16 [". "]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K12 ["details"]
       50 NAMECALL                         R4 R0 K17 ["fail"]
       52 CALL                             R4 3 0
       53 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["renderMeshesData"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R0
        7 GETTABLEKS                       R9 R6 K1 ["originalSize"]
        9 MOVE                             R10 R5
       10 CALL                             R7 3 0
       11 FORGLOOP                         R2 2 ; [-7]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["floatEquals"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K11 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigratePoseBlocking"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 3
       48 GETTABLEKS                       R8 R2 K13 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K14 ["TORSO_AND_LIMBS"]
       52 GETTABLEKS                       R9 R2 K13 ["UploadCategory"]
       54 GETTABLEKS                       R9 R9 K15 ["DYNAMIC_HEAD"]
       56 GETTABLEKS                       R10 R2 K13 ["UploadCategory"]
       58 GETTABLEKS                       R10 R10 K16 ["FULL_BODY"]
       60 SETLIST                          R7 R8 3 [1]
       62 SETTABLEKS                       R7 R6 K17 ["categories"]
       64 NEWTABLE                         R7 0 2
       66 GETTABLEKS                       R8 R2 K18 ["SharedDataMember"]
       68 GETTABLEKS                       R8 R8 K19 ["rootInstance"]
       70 GETTABLEKS                       R9 R2 K18 ["SharedDataMember"]
       72 GETTABLEKS                       R9 R9 K20 ["renderMeshesData"]
       74 SETLIST                          R7 R8 2 [1]
       76 SETTABLEKS                       R7 R6 K21 ["requiredData"]
       78 SETTABLEKS                       R5 R6 K22 ["fflag"]
       80 NEWTABLE                         R7 0 0
       82 SETTABLEKS                       R7 R6 K23 ["expectedFailures"]
       84 DUPCLOSURE                       R7 K24 [PROTO_0]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 DUPCLOSURE                       R8 K25 [PROTO_1]
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R8 R6 K26 ["run"]
       91 RETURN                           R6 1
