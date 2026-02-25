PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+3]
        7 LOADB                            R7 1
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-5]
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R6 R0
       12 GETIMPORT                        R5 K3 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K4 ["Instance"] ; [+2]
       17 LOADB                            R7 0 +1
       18 LOADB                            R7 1
       19 LOADK                            R9 K5 ["Expected draft to be Instance. Got '"]
       20 MOVE                             R10 R5
       21 LOADK                            R11 K6 ["'"]
       22 CONCAT                           R8 R9 R11
       23 FASTCALL2                        ASSERT R7 R8 ; [+3]
       25 GETIMPORT                        R6 K8 [assert]
       27 CALL                             R6 2 0
       28 LOADK                            R9 K9 ["LuaSourceContainer"]
       29 NAMECALL                         R7 R0 K10 ["IsA"]
       31 CALL                             R7 2 1
       32 LOADK                            R9 K11 ["Expected draft to be a LuaSourceContainer. Got '"]
       33 GETTABLEKS                       R10 R0 K12 ["ClassName"]
       35 LOADK                            R11 K6 ["'"]
       36 CONCAT                           R8 R9 R11
       37 FASTCALL2                        ASSERT R7 R8 ; [+3]
       39 GETIMPORT                        R6 K8 [assert]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R9 0
       43 GETIMPORT                        R10 K14 [pairs]
       45 MOVE                             R11 R9
       46 CALL                             R10 1 3
       47 FORGPREP_NEXT                    R10
       48 JUMPIFNOTEQ                      R14 R1 ; [+3]
       50 LOADB                            R8 1
       51 JUMP                             ; [+3]
       52 FORGLOOP                         R10 2 ; [-5]
       54 LOADB                            R8 0
       55 JUMPIFNOTEQKNIL                  R8 ; [+2]
       57 LOADB                            R7 0 +1
       58 LOADB                            R7 1
       59 LOADK                            R9 K15 ["Expected valid DraftState. Got '"]
       60 MOVE                             R10 R3
       61 LOADK                            R11 K6 ["'"]
       62 CONCAT                           R8 R9 R11
       63 FASTCALL2                        ASSERT R7 R8 ; [+3]
       65 GETIMPORT                        R6 K8 [assert]
       67 CALL                             R6 2 0
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R6 R7 K16 ["Outdated"]
       71 JUMPIFEQ                         R1 R6 ; [+6]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K17 ["Deleted"]
       76 JUMPIFNOTEQ                      R1 R6 ; [+22]
       78 FASTCALL1                        TYPEOF R2 ; [+3]
       79 MOVE                             R7 R2
       80 GETIMPORT                        R6 K3 [typeof]
       82 CALL                             R6 1 1
       83 JUMPIFEQKS                       R6 K18 ["boolean"] ; [+2]
       85 LOADB                            R8 0 +1
       86 LOADB                            R8 1
       87 LOADK                            R10 K19 ["Expected type boolean for state type "]
       88 MOVE                             R11 R3
       89 LOADK                            R12 K20 [". Got '"]
       90 MOVE                             R13 R4
       91 LOADK                            R14 K6 ["'"]
       92 CONCAT                           R9 R10 R14
       93 FASTCALL2                        ASSERT R8 R9 ; [+3]
       95 GETIMPORT                        R7 K8 [assert]
       97 CALL                             R7 2 0
       98 JUMP                             ; [+59]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R6 R7 K21 ["Autosaved"]
      102 JUMPIFNOTEQ                      R1 R6 ; [+26]
      104 GETUPVAL                         R8 1
      105 GETIMPORT                        R9 K14 [pairs]
      107 MOVE                             R10 R8
      108 CALL                             R9 1 3
      109 FORGPREP_NEXT                    R9
      110 JUMPIFNOTEQ                      R13 R2 ; [+3]
      112 LOADB                            R7 1
      113 JUMP                             ; [+3]
      114 FORGLOOP                         R9 2 ; [-5]
      116 LOADB                            R7 0
      117 LOADK                            R9 K22 ["Expected valid "]
      118 MOVE                             R10 R3
      119 LOADK                            R11 K20 [". Got '"]
      120 MOVE                             R12 R4
      121 LOADK                            R13 K6 ["'"]
      122 CONCAT                           R8 R9 R13
      123 FASTCALL2                        ASSERT R7 R8 ; [+3]
      125 GETIMPORT                        R6 K8 [assert]
      127 CALL                             R6 2 0
      128 JUMP                             ; [+29]
      129 GETUPVAL                         R7 0
      130 GETTABLEKS                       R6 R7 K23 ["Committed"]
      132 JUMPIFNOTEQ                      R1 R6 ; [+25]
      134 GETUPVAL                         R8 2
      135 GETIMPORT                        R9 K14 [pairs]
      137 MOVE                             R10 R8
      138 CALL                             R9 1 3
      139 FORGPREP_NEXT                    R9
      140 JUMPIFNOTEQ                      R13 R2 ; [+3]
      142 LOADB                            R7 1
      143 JUMP                             ; [+3]
      144 FORGLOOP                         R9 2 ; [-5]
      146 LOADB                            R7 0
      147 LOADK                            R9 K22 ["Expected valid "]
      148 MOVE                             R10 R3
      149 LOADK                            R11 K20 [". Got '"]
      150 MOVE                             R12 R4
      151 LOADK                            R13 K6 ["'"]
      152 CONCAT                           R8 R9 R13
      153 FASTCALL2                        ASSERT R7 R8 ; [+3]
      155 GETIMPORT                        R6 K8 [assert]
      157 CALL                             R6 2 0
      158 DUPTABLE                         R6 K27 [{"Draft", "StateType", "StateValue"}]
      159 SETTABLEKS                       R0 R6 K24 ["Draft"]
      161 SETTABLEKS                       R1 R6 K25 ["StateType"]
      163 SETTABLEKS                       R2 R6 K26 ["StateValue"]
      165 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["Action"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Symbols"]
       24 GETTABLEKS                       R3 R4 K8 ["AutosaveState"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Symbols"]
       33 GETTABLEKS                       R4 R5 K9 ["CommitState"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K7 ["Symbols"]
       42 GETTABLEKS                       R5 R6 K10 ["DraftState"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K11 [PROTO_0]
       46 MOVE                             R6 R1
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R7 R8 K12 ["Name"]
       51 DUPCLOSURE                       R8 K13 [PROTO_1]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CALL                             R6 2 -1
       56 RETURN                           R6 -1
