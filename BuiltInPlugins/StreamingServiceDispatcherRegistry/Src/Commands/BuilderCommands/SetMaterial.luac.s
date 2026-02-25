PROTO_0:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R2 R1 K2 ["BaseMaterial"]
        7 SETTABLEKS                       R2 R0 K3 ["Material"]
        9 GETTABLEKS                       R2 R1 K4 ["Name"]
       11 SETTABLEKS                       R2 R0 K5 ["MaterialVariant"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 GETTABLEKS                       R3 R1 K1 ["applicationTargetInstanceId"]
        5 GETTABLEKS                       R4 R0 K2 ["requestId"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+10]
        9 GETIMPORT                        R3 K4 [error]
       11 LOADK                            R5 K5 ["Failed to find target for id %*"]
       12 GETTABLEKS                       R7 R1 K1 ["applicationTargetInstanceId"]
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       21 MOVE                             R4 R2
       22 LOADK                            R5 K7 ["Luau"]
       23 GETIMPORT                        R3 K9 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["get"]
       29 GETTABLEKS                       R4 R1 K10 ["materialId"]
       31 GETTABLEKS                       R5 R0 K2 ["requestId"]
       33 CALL                             R3 2 1
       34 JUMPIF                           R3 ; [+10]
       35 GETIMPORT                        R4 K4 [error]
       37 LOADK                            R6 K11 ["Failed to find material for id %*"]
       38 GETTABLEKS                       R8 R1 K10 ["materialId"]
       40 NAMECALL                         R6 R6 K6 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 CALL                             R4 1 0
       45 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       47 MOVE                             R5 R3
       48 LOADK                            R6 K7 ["Luau"]
       49 GETIMPORT                        R4 K9 [assert]
       51 CALL                             R4 2 0
       52 LOADK                            R6 K12 ["MaterialVariant"]
       53 NAMECALL                         R4 R3 K13 ["IsA"]
       55 CALL                             R4 2 1
       56 JUMPIF                           R4 ; [+12]
       57 GETIMPORT                        R4 K4 [error]
       59 LOADK                            R6 K14 ["Bad materialVariant instance from id %*, expected class of MaterialVariant, got %*"]
       60 GETTABLEKS                       R8 R1 K10 ["materialId"]
       62 GETTABLEKS                       R9 R3 K15 ["ClassName"]
       64 NAMECALL                         R6 R6 K6 ["format"]
       66 CALL                             R6 3 1
       67 MOVE                             R5 R6
       68 CALL                             R4 1 0
       69 LOADK                            R7 K12 ["MaterialVariant"]
       70 NAMECALL                         R5 R3 K13 ["IsA"]
       72 CALL                             R5 2 1
       73 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       75 LOADK                            R6 K7 ["Luau"]
       76 GETIMPORT                        R4 K9 [assert]
       78 CALL                             R4 2 0
       79 LOADK                            R6 K16 ["BasePart"]
       80 NAMECALL                         R4 R2 K13 ["IsA"]
       82 CALL                             R4 2 1
       83 JUMPIFNOT                        R4 ; [+8]
       84 GETTABLEKS                       R4 R3 K17 ["BaseMaterial"]
       86 SETTABLEKS                       R4 R2 K18 ["Material"]
       88 GETTABLEKS                       R4 R3 K19 ["Name"]
       90 SETTABLEKS                       R4 R2 K12 ["MaterialVariant"]
       92 NAMECALL                         R4 R2 K20 ["GetDescendants"]
       94 CALL                             R4 1 3
       95 FORGPREP                         R4
       96 LOADK                            R11 K16 ["BasePart"]
       97 NAMECALL                         R9 R8 K13 ["IsA"]
       99 CALL                             R9 2 1
      100 JUMPIFNOT                        R9 ; [+8]
      101 GETTABLEKS                       R9 R3 K17 ["BaseMaterial"]
      103 SETTABLEKS                       R9 R8 K18 ["Material"]
      105 GETTABLEKS                       R9 R3 K19 ["Name"]
      107 SETTABLEKS                       R9 R8 K12 ["MaterialVariant"]
      109 FORGLOOP                         R4 2 ; [-14]
      111 LOADK                            R5 K21 ["Applied %* to"]
      112 GETTABLEKS                       R7 R3 K19 ["Name"]
      114 NAMECALL                         R5 R5 K6 ["format"]
      116 CALL                             R5 2 1
      117 MOVE                             R4 R5
      118 GETUPVAL                         R6 1
      119 GETTABLEKS                       R5 R6 K22 ["modifyChatWithInstanceLink"]
      121 GETTABLEKS                       R6 R0 K2 ["requestId"]
      123 MOVE                             R7 R2
      124 MOVE                             R8 R4
      125 LOADK                            R10 K23 ["set_material_"]
      126 GETTABLEKS                       R11 R0 K2 ["requestId"]
      128 CONCAT                           R9 R10 R11
      129 CALL                             R5 4 0
      130 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETTABLEKS                       R5 R1 K1 ["applicationTargetInstanceId"]
        4 FASTCALL1                        TYPE R5 ; [+2]
        5 GETIMPORT                        R4 K3 [type]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       14 LOADK                            R4 K5 ["Bad request.applicationTargetInstanceId"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R5 R1 K8 ["materialId"]
       20 FASTCALL1                        TYPE R5 ; [+2]
       21 GETIMPORT                        R4 K3 [type]
       23 CALL                             R4 1 1
       24 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       30 LOADK                            R4 K9 ["Bad request.materialId"]
       31 GETIMPORT                        R2 K7 [assert]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K10 ["StartRecordingActions"]
       37 GETTABLEKS                       R3 R0 K11 ["requestId"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 1
       41 MOVE                             R3 R0
       42 MOVE                             R4 R1
       43 CALL                             R2 2 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K12 ["EndRecordingActions"]
       47 GETTABLEKS                       R3 R0 K11 ["requestId"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R4 K10 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Utils"]
       31 GETTABLEKS                       R4 R5 K11 ["Utils"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 DUPCLOSURE                       R5 K13 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R6 K14 [PROTO_2]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 RETURN                           R6 1
