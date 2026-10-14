PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+13]
        4 NEWTABLE                         R1 4 0
        6 LOADK                            R2 K1 ["Denied"]
        7 SETTABLEKS                       R2 R1 K2 ["Universe.Player"]
        9 LOADK                            R2 K1 ["Denied"]
       10 SETTABLEKS                       R2 R1 K3 ["Universe.Editor"]
       12 LOADK                            R2 K1 ["Denied"]
       13 SETTABLEKS                       R2 R1 K4 ["Universe.Publisher"]
       15 RETURN                           R1 1
       16 GETIMPORT                        R1 K7 [table.find]
       18 GETUPVAL                         R2 0
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 JUMPIFNOTEQKNIL                  R1 ; [+13]
       23 NEWTABLE                         R2 4 0
       25 LOADK                            R3 K1 ["Denied"]
       26 SETTABLEKS                       R3 R2 K2 ["Universe.Player"]
       28 LOADK                            R3 K1 ["Denied"]
       29 SETTABLEKS                       R3 R2 K3 ["Universe.Editor"]
       31 LOADK                            R3 K1 ["Denied"]
       32 SETTABLEKS                       R3 R2 K4 ["Universe.Publisher"]
       34 RETURN                           R2 1
       35 NEWTABLE                         R2 0 0
       37 LOADN                            R5 1
       38 MOVE                             R3 R1
       39 LOADN                            R4 1
       40 FORNPREP                         R3
       41 GETUPVAL                         R7 0
       42 GETTABLE                         R6 R7 R5
       43 LOADK                            R7 K1 ["Denied"]
       44 SETTABLE                         R7 R2 R6
       45 FORNLOOP                         R3
       46 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+8]
        2 DUPTABLE                         R2 K2 [{"permissions"}]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K1 ["permissions"]
        8 RETURN                           R2 1
        9 NEWTABLE                         R2 1 0
       11 LOADK                            R3 K3 ["Granted"]
       12 SETTABLE                         R3 R2 R0
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 JUMPIFEQKS                       R1 K0 ["None"] ; [+5]
       17 JUMPIFEQ                         R1 R0 ; [+3]
       19 LOADK                            R3 K4 ["Denied"]
       20 SETTABLE                         R3 R2 R1
       21 DUPTABLE                         R3 K2 [{"permissions"}]
       22 SETTABLEKS                       R2 R3 K1 ["permissions"]
       24 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R6 R3
        1 JUMPIF                           R6 ; [+10]
        2 GETIMPORT                        R6 K1 [require]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K2 ["Src"]
        7 GETTABLEKS                       R7 R7 K3 ["Util"]
        9 GETTABLEKS                       R7 R7 K4 ["PermissionsConstants"]
       11 CALL                             R6 1 1
       12 GETTABLEKS                       R7 R0 K5 ["permissions"]
       14 JUMPIF                           R7 ; [+2]
       15 NEWTABLE                         R7 0 0
       17 LOADB                            R8 0
       18 LOADK                            R9 K6 ["None"]
       19 LOADN                            R10 0
       20 LOADN                            R11 0
       21 LOADN                            R12 0
       22 GETUPVAL                         R16 1
       23 LENGTH                           R15 R16
       24 LOADN                            R13 1
       25 LOADN                            R14 -1
       26 FORNPREP                         R13
       27 GETUPVAL                         R17 1
       28 GETTABLE                         R16 R17 R15
       29 GETTABLE                         R17 R7 R16
       30 JUMPIF                           R17 ; [+2]
       31 NEWTABLE                         R17 0 0
       33 GETTABLEKS                       R18 R17 K7 ["canEdit"]
       35 JUMPIFNOT                        R18 ; [+4]
       36 LOADB                            R8 1
       37 JUMPIFNOTEQKN                    R12 K8 [0] ; [+2]
       39 MOVE                             R12 R15
       40 GETTABLEKS                       R18 R17 K9 ["isGranted"]
       42 JUMPIFNOT                        R18 ; [+4]
       43 JUMPIFNOTEQKS                    R9 K6 ["None"] ; [+3]
       45 MOVE                             R9 R16
       46 MOVE                             R11 R15
       47 GETTABLEKS                       R18 R17 K9 ["isGranted"]
       49 JUMPIFNOT                        R18 ; [+5]
       50 GETTABLEKS                       R18 R17 K10 ["isGrantedByParentScope"]
       52 JUMPIFNOT                        R18 ; [+2]
       53 MOVE                             R10 R15
       54 JUMP                             ; [+1]
       55 FORNLOOP                         R13
       56 JUMPIFLT                         R12 R11 ; [+2]
       58 LOADB                            R13 0 +1
       59 LOADB                            R13 1
       60 NEWTABLE                         R14 0 0
       62 JUMPIFNOT                        R13 ; [+8]
       63 FASTCALL2                        TABLE_INSERT R14 R9 ; [+5]
       65 MOVE                             R16 R14
       66 MOVE                             R17 R9
       67 GETIMPORT                        R15 K13 [table.insert]
       69 CALL                             R15 2 0
       70 JUMP                             ; [+9]
       71 JUMPIFNOTEQKN                    R10 K8 [0] ; [+8]
       73 FASTCALL2K                       TABLE_INSERT R14 K6 ; [+5]
       75 MOVE                             R16 R14
       76 LOADK                            R17 K6 ["None"]
       77 GETIMPORT                        R15 K13 [table.insert]
       79 CALL                             R15 2 0
       80 JUMPIF                           R13 ; [+24]
       81 LOADN                            R17 1
       82 GETUPVAL                         R18 1
       83 LENGTH                           R15 R18
       84 LOADN                            R16 1
       85 FORNPREP                         R15
       86 GETUPVAL                         R19 1
       87 GETTABLE                         R18 R19 R17
       88 GETTABLE                         R19 R7 R18
       89 JUMPIF                           R19 ; [+2]
       90 NEWTABLE                         R19 0 0
       92 GETTABLEKS                       R20 R19 K7 ["canEdit"]
       94 JUMPIFNOT                        R20 ; [+9]
       95 JUMPIFNOTLE                      R10 R17 ; [+8]
       97 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
       99 MOVE                             R21 R14
      100 MOVE                             R22 R18
      101 GETIMPORT                        R20 K13 [table.insert]
      103 CALL                             R20 2 0
      104 FORNLOOP                         R15
      105 JUMPIFNOTEQKNIL                  R4 ; [+3]
      107 MOVE                             R15 R8
      108 JUMP                             ; [+1]
      109 MOVE                             R15 R4
      110 MOVE                             R16 R15
      111 JUMPIFNOT                        R16 ; [+1]
      112 NOT                              R16 R13
      113 NEWTABLE                         R17 16 0
      115 GETTABLEKS                       R18 R6 K14 ["SubjectNameKey"]
      117 GETTABLEKS                       R19 R1 K15 ["name"]
      119 SETTABLE                         R19 R17 R18
      120 GETTABLEKS                       R18 R6 K16 ["GroupNameKey"]
      122 SETTABLE                         R2 R17 R18
      123 GETTABLEKS                       R18 R6 K17 ["SubjectIdKey"]
      125 GETTABLEKS                       R19 R1 K18 ["id"]
      127 SETTABLE                         R19 R17 R18
      128 GETTABLEKS                       R18 R6 K19 ["SubjectIconColor"]
      130 GETUPVAL                         R19 2
      131 GETTABLEKS                       R20 R1 K20 ["color"]
      133 MOVE                             R21 R5
      134 CALL                             R19 2 1
      135 SETTABLE                         R19 R17 R18
      136 GETTABLEKS                       R18 R6 K21 ["IsPrivateKey"]
      138 GETTABLEKS                       R20 R1 K22 ["isPrivate"]
      140 JUMPIFEQKB                       R20 TRUE ; [+2]
      142 LOADB                            R19 0 +1
      143 LOADB                            R19 1
      144 SETTABLE                         R19 R17 R18
      145 GETTABLEKS                       R18 R6 K23 ["ActionKey"]
      147 SETTABLE                         R9 R17 R18
      148 GETTABLEKS                       R18 R6 K24 ["IsEditableKey"]
      150 SETTABLE                         R16 R17 R18
      151 GETTABLEKS                       R18 R6 K25 ["AvailableActionsKey"]
      153 SETTABLE                         R14 R17 R18
      154 GETTABLEKS                       R18 R6 K26 ["InheritedActionKey"]
      156 LOADN                            R20 0
      157 JUMPIFNOTLT                      R20 R10 ; [+4]
      159 GETUPVAL                         R20 1
      160 GETTABLE                         R19 R20 R10
      161 JUMP                             ; [+1]
      162 LOADNIL                          R19
      163 SETTABLE                         R19 R17 R18
      164 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["GetGroupRoleColor"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 0 3
       22 LOADK                            R3 K8 ["Universe.Player"]
       23 LOADK                            R4 K9 ["Universe.Editor"]
       24 LOADK                            R5 K10 ["Universe.Publisher"]
       25 SETLIST                          R2 R3 3 [1]
       27 NEWTABLE                         R3 8 0
       29 DUPCLOSURE                       R4 K11 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 DUPCLOSURE                       R5 K12 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R3 K13 ["toRequestBody"]
       35 DUPCLOSURE                       R5 K14 [PROTO_2]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R5 R3 K15 ["fromResponseBody"]
       41 LOADK                            R5 K8 ["Universe.Player"]
       42 SETTABLEKS                       R5 R3 K16 ["PLAYER_KEY"]
       44 LOADK                            R5 K9 ["Universe.Editor"]
       45 SETTABLEKS                       R5 R3 K17 ["EDITOR_KEY"]
       47 LOADK                            R5 K10 ["Universe.Publisher"]
       48 SETTABLEKS                       R5 R3 K18 ["PUBLISHER_KEY"]
       50 LOADK                            R5 K19 ["None"]
       51 SETTABLEKS                       R5 R3 K20 ["NONE_KEY"]
       53 RETURN                           R3 1
