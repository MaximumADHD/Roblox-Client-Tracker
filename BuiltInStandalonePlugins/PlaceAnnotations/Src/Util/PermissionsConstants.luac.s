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
        3 GETIMPORT                        R2 K21 [newproxy]
        5 LOADB                            R3 1
        6 CALL                             R2 1 1
        7 FASTCALL1                        GETMETATABLE R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K23 [getmetatable]
       11 CALL                             R3 1 1
       12 LOADK                            R5 K24 ["NoAccessPermission"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R5
       15 SETTABLEKS                       R4 R3 K25 ["__tostring"]
       17 SETTABLEKS                       R2 R1 K1 ["NoAccessKey"]
       19 GETIMPORT                        R2 K21 [newproxy]
       21 LOADB                            R3 1
       22 CALL                             R2 1 1
       23 FASTCALL1                        GETMETATABLE R2 ; [+3]
       24 MOVE                             R4 R2
       25 GETIMPORT                        R3 K23 [getmetatable]
       27 CALL                             R3 1 1
       28 LOADK                            R5 K26 ["PlayPermission"]
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R5
       31 SETTABLEKS                       R4 R3 K25 ["__tostring"]
       33 SETTABLEKS                       R2 R1 K2 ["PlayKey"]
       35 GETIMPORT                        R2 K21 [newproxy]
       37 LOADB                            R3 1
       38 CALL                             R2 1 1
       39 FASTCALL1                        GETMETATABLE R2 ; [+3]
       40 MOVE                             R4 R2
       41 GETIMPORT                        R3 K23 [getmetatable]
       43 CALL                             R3 1 1
       44 LOADK                            R5 K27 ["EditPermission"]
       45 NEWCLOSURE                       R4 P1
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R4 R3 K25 ["__tostring"]
       49 SETTABLEKS                       R2 R1 K3 ["EditKey"]
       51 GETIMPORT                        R2 K21 [newproxy]
       53 LOADB                            R3 1
       54 CALL                             R2 1 1
       55 FASTCALL1                        GETMETATABLE R2 ; [+3]
       56 MOVE                             R4 R2
       57 GETIMPORT                        R3 K23 [getmetatable]
       59 CALL                             R3 1 1
       60 LOADK                            R5 K28 ["UserSubjectType"]
       61 NEWCLOSURE                       R4 P1
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R4 R3 K25 ["__tostring"]
       65 SETTABLEKS                       R2 R1 K4 ["UserSubjectKey"]
       67 GETIMPORT                        R2 K21 [newproxy]
       69 LOADB                            R3 1
       70 CALL                             R2 1 1
       71 FASTCALL1                        GETMETATABLE R2 ; [+3]
       72 MOVE                             R4 R2
       73 GETIMPORT                        R3 K23 [getmetatable]
       75 CALL                             R3 1 1
       76 LOADK                            R5 K29 ["GroupSubjectType"]
       77 NEWCLOSURE                       R4 P1
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R4 R3 K25 ["__tostring"]
       81 SETTABLEKS                       R2 R1 K5 ["GroupSubjectKey"]
       83 GETIMPORT                        R2 K21 [newproxy]
       85 LOADB                            R3 1
       86 CALL                             R2 1 1
       87 FASTCALL1                        GETMETATABLE R2 ; [+3]
       88 MOVE                             R4 R2
       89 GETIMPORT                        R3 K23 [getmetatable]
       91 CALL                             R3 1 1
       92 LOADK                            R5 K30 ["RoleSubjectType"]
       93 NEWCLOSURE                       R4 P1
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R4 R3 K25 ["__tostring"]
       97 SETTABLEKS                       R2 R1 K6 ["RoleSubjectKey"]
       99 GETIMPORT                        R2 K21 [newproxy]
      101 LOADB                            R3 1
      102 CALL                             R2 1 1
      103 FASTCALL1                        GETMETATABLE R2 ; [+3]
      104 MOVE                             R4 R2
      105 GETIMPORT                        R3 K23 [getmetatable]
      107 CALL                             R3 1 1
      108 LOADK                            R5 K31 ["Action"]
      109 NEWCLOSURE                       R4 P1
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R4 R3 K25 ["__tostring"]
      113 SETTABLEKS                       R2 R1 K7 ["ActionKey"]
      115 GETIMPORT                        R2 K21 [newproxy]
      117 LOADB                            R3 1
      118 CALL                             R2 1 1
      119 FASTCALL1                        GETMETATABLE R2 ; [+3]
      120 MOVE                             R4 R2
      121 GETIMPORT                        R3 K23 [getmetatable]
      123 CALL                             R3 1 1
      124 LOADK                            R5 K32 ["SubjectId"]
      125 NEWCLOSURE                       R4 P1
      126 CAPTURE                          VAL R5
      127 SETTABLEKS                       R4 R3 K25 ["__tostring"]
      129 SETTABLEKS                       R2 R1 K8 ["SubjectIdKey"]
      131 GETIMPORT                        R2 K21 [newproxy]
      133 LOADB                            R3 1
      134 CALL                             R2 1 1
      135 FASTCALL1                        GETMETATABLE R2 ; [+3]
      136 MOVE                             R4 R2
      137 GETIMPORT                        R3 K23 [getmetatable]
      139 CALL                             R3 1 1
      140 LOADK                            R5 K33 ["SubjectName"]
      141 NEWCLOSURE                       R4 P1
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R4 R3 K25 ["__tostring"]
      145 SETTABLEKS                       R2 R1 K9 ["SubjectNameKey"]
      147 GETIMPORT                        R2 K21 [newproxy]
      149 LOADB                            R3 1
      150 CALL                             R2 1 1
      151 FASTCALL1                        GETMETATABLE R2 ; [+3]
      152 MOVE                             R4 R2
      153 GETIMPORT                        R3 K23 [getmetatable]
      155 CALL                             R3 1 1
      156 LOADK                            R5 K34 ["SubjectRank"]
      157 NEWCLOSURE                       R4 P1
      158 CAPTURE                          VAL R5
      159 SETTABLEKS                       R4 R3 K25 ["__tostring"]
      161 SETTABLEKS                       R2 R1 K10 ["SubjectRankKey"]
      163 GETIMPORT                        R2 K21 [newproxy]
      165 LOADB                            R3 1
      166 CALL                             R2 1 1
      167 FASTCALL1                        GETMETATABLE R2 ; [+3]
      168 MOVE                             R4 R2
      169 GETIMPORT                        R3 K23 [getmetatable]
      171 CALL                             R3 1 1
      172 LOADK                            R5 K35 ["GroupId"]
      173 NEWCLOSURE                       R4 P1
      174 CAPTURE                          VAL R5
      175 SETTABLEKS                       R4 R3 K25 ["__tostring"]
      177 SETTABLEKS                       R2 R1 K11 ["GroupIdKey"]
      179 GETIMPORT                        R2 K21 [newproxy]
      181 LOADB                            R3 1
      182 CALL                             R2 1 1
      183 FASTCALL1                        GETMETATABLE R2 ; [+3]
      184 MOVE                             R4 R2
      185 GETIMPORT                        R3 K23 [getmetatable]
      187 CALL                             R3 1 1
      188 LOADK                            R5 K36 ["IsFriend"]
      189 NEWCLOSURE                       R4 P1
      190 CAPTURE                          VAL R5
      191 SETTABLEKS                       R4 R3 K25 ["__tostring"]
      193 SETTABLEKS                       R2 R1 K12 ["IsFriendKey"]
      195 RETURN                           R1 1
