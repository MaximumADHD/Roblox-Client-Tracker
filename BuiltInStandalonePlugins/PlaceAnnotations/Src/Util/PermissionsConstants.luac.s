PROTO_0:
        0 LOADK                            R1 K0 ["Symbol("]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K1 [")"]
        3 CONCAT                           R0 R1 R3
        4 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [newproxy]
        2 LOADB                            R2 1
        3 CALL                             R1 1 1
        4 FASTCALL1                        GETMETATABLE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [getmetatable]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R2 K4 ["__tostring"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPTABLE                         R1 K19 [{["NoAccessKey"], ["PlayKey"], ["EditKey"], ["UserSubjectKey"], ["GroupSubjectKey"], ["RoleSubjectKey"], ["ActionKey"], ["SubjectIdKey"], ["SubjectNameKey"], ["SubjectRankKey"], ["GroupIdKey"], ["IsFriendKey"], ["UserSubject"] = "User", ["OwnerSubject"] = "Owner", ["GroupSubject"] = "Group"}]
        3 GETIMPORT                        R3 K21 [newproxy]
        5 LOADB                            R4 1
        6 CALL                             R3 1 1
        7 FASTCALL1                        GETMETATABLE R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K23 [getmetatable]
       11 CALL                             R4 1 1
       12 LOADK                            R6 K24 ["NoAccessPermission"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R6
       15 SETTABLEKS                       R5 R4 K25 ["__tostring"]
       17 MOVE                             R2 R3
       18 SETTABLEKS                       R2 R1 K1 ["NoAccessKey"]
       20 GETIMPORT                        R3 K21 [newproxy]
       22 LOADB                            R4 1
       23 CALL                             R3 1 1
       24 FASTCALL1                        GETMETATABLE R3 ; [+3]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K23 [getmetatable]
       28 CALL                             R4 1 1
       29 LOADK                            R6 K26 ["PlayPermission"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R6
       32 SETTABLEKS                       R5 R4 K25 ["__tostring"]
       34 MOVE                             R2 R3
       35 SETTABLEKS                       R2 R1 K2 ["PlayKey"]
       37 GETIMPORT                        R3 K21 [newproxy]
       39 LOADB                            R4 1
       40 CALL                             R3 1 1
       41 FASTCALL1                        GETMETATABLE R3 ; [+3]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K23 [getmetatable]
       45 CALL                             R4 1 1
       46 LOADK                            R6 K27 ["EditPermission"]
       47 NEWCLOSURE                       R5 P1
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R5 R4 K25 ["__tostring"]
       51 MOVE                             R2 R3
       52 SETTABLEKS                       R2 R1 K3 ["EditKey"]
       54 GETIMPORT                        R3 K21 [newproxy]
       56 LOADB                            R4 1
       57 CALL                             R3 1 1
       58 FASTCALL1                        GETMETATABLE R3 ; [+3]
       59 MOVE                             R5 R3
       60 GETIMPORT                        R4 K23 [getmetatable]
       62 CALL                             R4 1 1
       63 LOADK                            R6 K28 ["UserSubjectType"]
       64 NEWCLOSURE                       R5 P1
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R5 R4 K25 ["__tostring"]
       68 MOVE                             R2 R3
       69 SETTABLEKS                       R2 R1 K4 ["UserSubjectKey"]
       71 GETIMPORT                        R3 K21 [newproxy]
       73 LOADB                            R4 1
       74 CALL                             R3 1 1
       75 FASTCALL1                        GETMETATABLE R3 ; [+3]
       76 MOVE                             R5 R3
       77 GETIMPORT                        R4 K23 [getmetatable]
       79 CALL                             R4 1 1
       80 LOADK                            R6 K29 ["GroupSubjectType"]
       81 NEWCLOSURE                       R5 P1
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R5 R4 K25 ["__tostring"]
       85 MOVE                             R2 R3
       86 SETTABLEKS                       R2 R1 K5 ["GroupSubjectKey"]
       88 GETIMPORT                        R3 K21 [newproxy]
       90 LOADB                            R4 1
       91 CALL                             R3 1 1
       92 FASTCALL1                        GETMETATABLE R3 ; [+3]
       93 MOVE                             R5 R3
       94 GETIMPORT                        R4 K23 [getmetatable]
       96 CALL                             R4 1 1
       97 LOADK                            R6 K30 ["RoleSubjectType"]
       98 NEWCLOSURE                       R5 P1
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      102 MOVE                             R2 R3
      103 SETTABLEKS                       R2 R1 K6 ["RoleSubjectKey"]
      105 GETIMPORT                        R3 K21 [newproxy]
      107 LOADB                            R4 1
      108 CALL                             R3 1 1
      109 FASTCALL1                        GETMETATABLE R3 ; [+3]
      110 MOVE                             R5 R3
      111 GETIMPORT                        R4 K23 [getmetatable]
      113 CALL                             R4 1 1
      114 LOADK                            R6 K31 ["Action"]
      115 NEWCLOSURE                       R5 P1
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      119 MOVE                             R2 R3
      120 SETTABLEKS                       R2 R1 K7 ["ActionKey"]
      122 GETIMPORT                        R3 K21 [newproxy]
      124 LOADB                            R4 1
      125 CALL                             R3 1 1
      126 FASTCALL1                        GETMETATABLE R3 ; [+3]
      127 MOVE                             R5 R3
      128 GETIMPORT                        R4 K23 [getmetatable]
      130 CALL                             R4 1 1
      131 LOADK                            R6 K32 ["SubjectId"]
      132 NEWCLOSURE                       R5 P1
      133 CAPTURE                          VAL R6
      134 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      136 MOVE                             R2 R3
      137 SETTABLEKS                       R2 R1 K8 ["SubjectIdKey"]
      139 GETIMPORT                        R3 K21 [newproxy]
      141 LOADB                            R4 1
      142 CALL                             R3 1 1
      143 FASTCALL1                        GETMETATABLE R3 ; [+3]
      144 MOVE                             R5 R3
      145 GETIMPORT                        R4 K23 [getmetatable]
      147 CALL                             R4 1 1
      148 LOADK                            R6 K33 ["SubjectName"]
      149 NEWCLOSURE                       R5 P1
      150 CAPTURE                          VAL R6
      151 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      153 MOVE                             R2 R3
      154 SETTABLEKS                       R2 R1 K9 ["SubjectNameKey"]
      156 GETIMPORT                        R3 K21 [newproxy]
      158 LOADB                            R4 1
      159 CALL                             R3 1 1
      160 FASTCALL1                        GETMETATABLE R3 ; [+3]
      161 MOVE                             R5 R3
      162 GETIMPORT                        R4 K23 [getmetatable]
      164 CALL                             R4 1 1
      165 LOADK                            R6 K34 ["SubjectRank"]
      166 NEWCLOSURE                       R5 P1
      167 CAPTURE                          VAL R6
      168 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      170 MOVE                             R2 R3
      171 SETTABLEKS                       R2 R1 K10 ["SubjectRankKey"]
      173 GETIMPORT                        R3 K21 [newproxy]
      175 LOADB                            R4 1
      176 CALL                             R3 1 1
      177 FASTCALL1                        GETMETATABLE R3 ; [+3]
      178 MOVE                             R5 R3
      179 GETIMPORT                        R4 K23 [getmetatable]
      181 CALL                             R4 1 1
      182 LOADK                            R6 K35 ["GroupId"]
      183 NEWCLOSURE                       R5 P1
      184 CAPTURE                          VAL R6
      185 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      187 MOVE                             R2 R3
      188 SETTABLEKS                       R2 R1 K11 ["GroupIdKey"]
      190 GETIMPORT                        R3 K21 [newproxy]
      192 LOADB                            R4 1
      193 CALL                             R3 1 1
      194 FASTCALL1                        GETMETATABLE R3 ; [+3]
      195 MOVE                             R5 R3
      196 GETIMPORT                        R4 K23 [getmetatable]
      198 CALL                             R4 1 1
      199 LOADK                            R6 K36 ["IsFriend"]
      200 NEWCLOSURE                       R5 P1
      201 CAPTURE                          VAL R6
      202 SETTABLEKS                       R5 R4 K25 ["__tostring"]
      204 MOVE                             R2 R3
      205 SETTABLEKS                       R2 R1 K12 ["IsFriendKey"]
      207 RETURN                           R1 1
