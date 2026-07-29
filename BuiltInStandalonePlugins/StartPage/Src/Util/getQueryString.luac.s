PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K1 ["Luau: Ensure this is defined"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 FASTCALL2K                       ASSERT R1 K1 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K1 ["Luau: Ensure this is defined"]
       15 GETIMPORT                        R2 K3 [assert]
       17 CALL                             R2 2 0
       18 MOVE                             R3 R0
       19 LOADK                            R4 K4 ["?"]
       20 CONCAT                           R2 R3 R4
       21 NEWTABLE                         R3 0 0
       23 GETTABLEKS                       R4 R1 K5 ["search"]
       25 JUMPIFNOT                        R4 ; [+10]
       26 LOADK                            R7 K6 ["search="]
       27 GETTABLEKS                       R8 R1 K5 ["search"]
       29 CONCAT                           R6 R7 R8
       30 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R4 K9 [table.insert]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R1 K10 ["creatorType"]
       38 JUMPIFNOT                        R4 ; [+10]
       39 LOADK                            R7 K11 ["creatorType="]
       40 GETTABLEKS                       R8 R1 K10 ["creatorType"]
       42 CONCAT                           R6 R7 R8
       43 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       45 MOVE                             R5 R3
       46 GETIMPORT                        R4 K9 [table.insert]
       48 CALL                             R4 2 0
       49 GETTABLEKS                       R4 R1 K12 ["creatorTargetId"]
       51 JUMPIFNOT                        R4 ; [+14]
       52 LOADK                            R7 K13 ["creatorTargetId="]
       53 GETTABLEKS                       R9 R1 K12 ["creatorTargetId"]
       55 FASTCALL1                        TOSTRING R9 ; [+2]
       56 GETIMPORT                        R8 K15 [tostring]
       58 CALL                             R8 1 1
       59 CONCAT                           R6 R7 R8
       60 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       62 MOVE                             R5 R3
       63 GETIMPORT                        R4 K9 [table.insert]
       65 CALL                             R4 2 0
       66 GETTABLEKS                       R4 R1 K16 ["isPublic"]
       68 JUMPIFNOT                        R4 ; [+7]
       69 FASTCALL2K                       TABLE_INSERT R3 K17 ; [+5]
       71 MOVE                             R5 R3
       72 LOADK                            R6 K17 ["isPublic=true"]
       73 GETIMPORT                        R4 K9 [table.insert]
       75 CALL                             R4 2 0
       76 GETTABLEKS                       R4 R1 K18 ["isArchived"]
       78 JUMPIFNOT                        R4 ; [+7]
       79 FASTCALL2K                       TABLE_INSERT R3 K19 ; [+5]
       81 MOVE                             R5 R3
       82 LOADK                            R6 K19 ["isArchived=true"]
       83 GETIMPORT                        R4 K9 [table.insert]
       85 CALL                             R4 2 0
       86 GETTABLEKS                       R4 R1 K20 ["sortParam"]
       88 JUMPIFNOT                        R4 ; [+10]
       89 LOADK                            R7 K21 ["sortParam="]
       90 GETTABLEKS                       R8 R1 K20 ["sortParam"]
       92 CONCAT                           R6 R7 R8
       93 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       95 MOVE                             R5 R3
       96 GETIMPORT                        R4 K9 [table.insert]
       98 CALL                             R4 2 0
       99 GETTABLEKS                       R4 R1 K22 ["sortOrder"]
      101 JUMPIFNOT                        R4 ; [+10]
      102 LOADK                            R7 K23 ["sortOrder="]
      103 GETTABLEKS                       R8 R1 K22 ["sortOrder"]
      105 CONCAT                           R6 R7 R8
      106 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      108 MOVE                             R5 R3
      109 GETIMPORT                        R4 K9 [table.insert]
      111 CALL                             R4 2 0
      112 GETUPVAL                         R4 0
      113 JUMPIFNOT                        R4 ; [+35]
      114 GETTABLEKS                       R4 R1 K24 ["pageIndex"]
      116 JUMPIFEQKNIL                     R4 ; [+32]
      118 GETTABLEKS                       R4 R1 K25 ["pageSize"]
      120 JUMPIFNOT                        R4 ; [+14]
      121 LOADK                            R7 K26 ["pageSize="]
      122 GETTABLEKS                       R9 R1 K25 ["pageSize"]
      124 FASTCALL1                        TOSTRING R9 ; [+2]
      125 GETIMPORT                        R8 K15 [tostring]
      127 CALL                             R8 1 1
      128 CONCAT                           R6 R7 R8
      129 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      131 MOVE                             R5 R3
      132 GETIMPORT                        R4 K9 [table.insert]
      134 CALL                             R4 2 0
      135 LOADK                            R7 K27 ["pageIndex="]
      136 GETTABLEKS                       R9 R1 K24 ["pageIndex"]
      138 FASTCALL1                        TOSTRING R9 ; [+2]
      139 GETIMPORT                        R8 K15 [tostring]
      141 CALL                             R8 1 1
      142 CONCAT                           R6 R7 R8
      143 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      145 MOVE                             R5 R3
      146 GETIMPORT                        R4 K9 [table.insert]
      148 CALL                             R4 2 0
      149 MOVE                             R5 R2
      150 GETIMPORT                        R6 K29 [table.concat]
      152 MOVE                             R7 R3
      153 LOADK                            R8 K30 ["&"]
      154 CALL                             R6 2 1
      155 CONCAT                           R4 R5 R6
      156 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["SharedFlags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaStartPageNewListView"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 DUPCLOSURE                       R3 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
