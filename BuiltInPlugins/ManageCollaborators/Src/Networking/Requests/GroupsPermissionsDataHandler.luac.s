PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+2]
        2 RETURN                           R0 1
        3 GETIMPORT                        R1 K1 [pcall]
        5 DUPCLOSURE                       R2 K2 [PROTO_0]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+5]
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 GETTABLEKS                       R3 R2 K3 ["Name"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFEQKS                       R3 K4 ["Dark"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 JUMP                             ; [+15]
        4 GETIMPORT                        R2 K1 [pcall]
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+5]
        9 JUMPIFEQKNIL                     R3 ; [+4]
       11 GETTABLEKS                       R4 R3 K3 ["Name"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 JUMPIFEQKS                       R4 K4 ["Dark"] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["default"]
       24 RETURN                           R1 2
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K5 ["default"]
       29 RETURN                           R1 2

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       17 JUMPIFEQKNIL                     R5 ; [+3]
       19 MOVE                             R10 R5
       20 JUMP                             ; [+15]
       21 GETIMPORT                        R11 K7 [pcall]
       23 DUPCLOSURE                       R12 K8 [PROTO_0]
       24 CALL                             R11 1 2
       25 JUMPIFNOT                        R11 ; [+5]
       26 JUMPIFEQKNIL                     R12 ; [+4]
       28 GETTABLEKS                       R13 R12 K9 ["Name"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R13
       32 JUMPIFEQKS                       R13 K10 ["Dark"] ; [+2]
       34 LOADB                            R10 0 +1
       35 LOADB                            R10 1
       36 JUMPIFNOT                        R10 ; [+5]
       37 GETUPVAL                         R8 1
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R9 R9 K11 ["default"]
       41 JUMP                             ; [+4]
       42 GETUPVAL                         R8 3
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K11 ["default"]
       46 LOADB                            R10 0
       47 LOADK                            R11 K12 ["None"]
       48 LOADN                            R12 0
       49 LOADN                            R13 0
       50 LOADN                            R14 0
       51 GETUPVAL                         R18 5
       52 LENGTH                           R17 R18
       53 LOADN                            R15 1
       54 LOADN                            R16 -1
       55 FORNPREP                         R15
       56 GETUPVAL                         R19 5
       57 GETTABLE                         R18 R19 R17
       58 GETTABLE                         R19 R7 R18
       59 JUMPIF                           R19 ; [+2]
       60 NEWTABLE                         R19 0 0
       62 GETTABLEKS                       R20 R19 K13 ["canEdit"]
       64 JUMPIFNOT                        R20 ; [+4]
       65 LOADB                            R10 1
       66 JUMPIFNOTEQKN                    R14 K14 [0] ; [+2]
       68 MOVE                             R14 R17
       69 GETTABLEKS                       R20 R19 K15 ["isGranted"]
       71 JUMPIFNOT                        R20 ; [+4]
       72 JUMPIFNOTEQKS                    R11 K12 ["None"] ; [+3]
       74 MOVE                             R11 R18
       75 MOVE                             R13 R17
       76 GETTABLEKS                       R20 R19 K15 ["isGranted"]
       78 JUMPIFNOT                        R20 ; [+5]
       79 GETTABLEKS                       R20 R19 K16 ["isGrantedByParentScope"]
       81 JUMPIFNOT                        R20 ; [+2]
       82 MOVE                             R12 R17
       83 JUMP                             ; [+1]
       84 FORNLOOP                         R15
       85 JUMPIFLT                         R14 R13 ; [+2]
       87 LOADB                            R15 0 +1
       88 LOADB                            R15 1
       89 NEWTABLE                         R16 0 0
       91 JUMPIFNOT                        R15 ; [+8]
       92 FASTCALL2                        TABLE_INSERT R16 R11 ; [+5]
       94 MOVE                             R18 R16
       95 MOVE                             R19 R11
       96 GETIMPORT                        R17 K19 [table.insert]
       98 CALL                             R17 2 0
       99 JUMP                             ; [+9]
      100 JUMPIFNOTEQKN                    R12 K14 [0] ; [+8]
      102 FASTCALL2K                       TABLE_INSERT R16 K12 ; [+5]
      104 MOVE                             R18 R16
      105 LOADK                            R19 K12 ["None"]
      106 GETIMPORT                        R17 K19 [table.insert]
      108 CALL                             R17 2 0
      109 JUMPIF                           R15 ; [+24]
      110 LOADN                            R19 1
      111 GETUPVAL                         R20 5
      112 LENGTH                           R17 R20
      113 LOADN                            R18 1
      114 FORNPREP                         R17
      115 GETUPVAL                         R21 5
      116 GETTABLE                         R20 R21 R19
      117 GETTABLE                         R21 R7 R20
      118 JUMPIF                           R21 ; [+2]
      119 NEWTABLE                         R21 0 0
      121 GETTABLEKS                       R22 R21 K13 ["canEdit"]
      123 JUMPIFNOT                        R22 ; [+9]
      124 JUMPIFNOTLE                      R12 R19 ; [+8]
      126 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
      128 MOVE                             R23 R16
      129 MOVE                             R24 R20
      130 GETIMPORT                        R22 K19 [table.insert]
      132 CALL                             R22 2 0
      133 FORNLOOP                         R17
      134 JUMPIFNOTEQKNIL                  R4 ; [+3]
      136 MOVE                             R17 R10
      137 JUMP                             ; [+1]
      138 MOVE                             R17 R4
      139 MOVE                             R18 R17
      140 JUMPIFNOT                        R18 ; [+1]
      141 NOT                              R18 R15
      142 NEWTABLE                         R19 8 0
      144 GETTABLEKS                       R20 R6 K20 ["SubjectNameKey"]
      146 GETTABLEKS                       R21 R1 K21 ["name"]
      148 SETTABLE                         R21 R19 R20
      149 GETTABLEKS                       R20 R6 K22 ["GroupNameKey"]
      151 SETTABLE                         R2 R19 R20
      152 GETTABLEKS                       R20 R6 K23 ["SubjectIdKey"]
      154 GETTABLEKS                       R21 R1 K24 ["id"]
      156 SETTABLE                         R21 R19 R20
      157 GETTABLEKS                       R20 R6 K25 ["SubjectIconColor"]
      159 GETTABLEKS                       R23 R1 K26 ["color"]
      161 GETTABLE                         R22 R8 R23
      162 OR                               R21 R22 R9
      163 SETTABLE                         R21 R19 R20
      164 GETTABLEKS                       R20 R6 K27 ["ActionKey"]
      166 SETTABLE                         R11 R19 R20
      167 GETTABLEKS                       R20 R6 K28 ["IsEditableKey"]
      169 SETTABLE                         R18 R19 R20
      170 GETTABLEKS                       R20 R6 K29 ["AvailableActionsKey"]
      172 SETTABLE                         R16 R19 R20
      173 GETTABLEKS                       R20 R6 K30 ["InheritedActionKey"]
      175 LOADN                            R22 0
      176 JUMPIFNOTLT                      R22 R12 ; [+4]
      178 GETUPVAL                         R22 5
      179 GETTABLE                         R21 R22 R12
      180 JUMP                             ; [+1]
      181 LOADNIL                          R21
      182 SETTABLE                         R21 R19 R20
      183 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETIMPORT                        R2 K1 [script]
       15 GETTABLEKS                       R2 R2 K2 ["Parent"]
       17 GETTABLEKS                       R2 R2 K5 ["Constants"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R1 R1 K6 ["granularCollaboratorUpdatedLightModeColorsMap"]
       22 GETIMPORT                        R2 K4 [require]
       24 GETIMPORT                        R3 K1 [script]
       26 GETTABLEKS                       R3 R3 K2 ["Parent"]
       28 GETTABLEKS                       R3 R3 K5 ["Constants"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R2 R2 K7 ["granularCollaboratorUpdatedDarkModeColorsMap"]
       33 NEWTABLE                         R3 32 0
       35 LOADN                            R4 0
       36 GETTABLEKS                       R5 R1 K8 ["default"]
       38 SETTABLE                         R5 R3 R4
       39 GETTABLEKS                       R4 R1 K9 ["Blue"]
       41 SETTABLEN                        R4 R3 1
       42 GETTABLEKS                       R4 R1 K10 ["Green"]
       44 SETTABLEN                        R4 R3 2
       45 GETTABLEKS                       R4 R1 K11 ["Purple"]
       47 SETTABLEN                        R4 R3 3
       48 GETTABLEKS                       R4 R1 K12 ["Yellow"]
       50 SETTABLEN                        R4 R3 4
       51 GETTABLEKS                       R4 R1 K13 ["Orange"]
       53 SETTABLEN                        R4 R3 5
       54 GETTABLEKS                       R4 R1 K14 ["Red"]
       56 SETTABLEN                        R4 R3 6
       57 GETTABLEKS                       R4 R1 K15 ["Magenta"]
       59 SETTABLEN                        R4 R3 7
       60 GETTABLEKS                       R4 R1 K16 ["Teal"]
       62 SETTABLEN                        R4 R3 8
       63 GETTABLEKS                       R4 R1 K17 ["Turquoise"]
       65 SETTABLEN                        R4 R3 9
       66 GETTABLEKS                       R4 R1 K18 ["Rust"]
       68 SETTABLEN                        R4 R3 10
       69 GETTABLEKS                       R4 R1 K19 ["Pistachio"]
       71 SETTABLEN                        R4 R3 11
       72 GETTABLEKS                       R4 R1 K20 ["Midnight"]
       74 SETTABLEN                        R4 R3 12
       75 GETTABLEKS                       R4 R1 K21 ["Lavender"]
       77 SETTABLEN                        R4 R3 13
       78 GETTABLEKS                       R4 R1 K22 ["Pink"]
       80 SETTABLEN                        R4 R3 14
       81 GETTABLEKS                       R4 R1 K23 ["Crimson"]
       83 SETTABLEN                        R4 R3 15
       84 GETTABLEKS                       R4 R1 K24 ["Plum"]
       86 SETTABLEN                        R4 R3 16
       87 NEWTABLE                         R4 32 0
       89 LOADN                            R5 0
       90 GETTABLEKS                       R6 R2 K8 ["default"]
       92 SETTABLE                         R6 R4 R5
       93 GETTABLEKS                       R5 R2 K9 ["Blue"]
       95 SETTABLEN                        R5 R4 1
       96 GETTABLEKS                       R5 R2 K10 ["Green"]
       98 SETTABLEN                        R5 R4 2
       99 GETTABLEKS                       R5 R2 K11 ["Purple"]
      101 SETTABLEN                        R5 R4 3
      102 GETTABLEKS                       R5 R2 K12 ["Yellow"]
      104 SETTABLEN                        R5 R4 4
      105 GETTABLEKS                       R5 R2 K13 ["Orange"]
      107 SETTABLEN                        R5 R4 5
      108 GETTABLEKS                       R5 R2 K14 ["Red"]
      110 SETTABLEN                        R5 R4 6
      111 GETTABLEKS                       R5 R2 K15 ["Magenta"]
      113 SETTABLEN                        R5 R4 7
      114 GETTABLEKS                       R5 R2 K16 ["Teal"]
      116 SETTABLEN                        R5 R4 8
      117 GETTABLEKS                       R5 R2 K17 ["Turquoise"]
      119 SETTABLEN                        R5 R4 9
      120 GETTABLEKS                       R5 R2 K18 ["Rust"]
      122 SETTABLEN                        R5 R4 10
      123 GETTABLEKS                       R5 R2 K19 ["Pistachio"]
      125 SETTABLEN                        R5 R4 11
      126 GETTABLEKS                       R5 R2 K20 ["Midnight"]
      128 SETTABLEN                        R5 R4 12
      129 GETTABLEKS                       R5 R2 K21 ["Lavender"]
      131 SETTABLEN                        R5 R4 13
      132 GETTABLEKS                       R5 R2 K22 ["Pink"]
      134 SETTABLEN                        R5 R4 14
      135 GETTABLEKS                       R5 R2 K23 ["Crimson"]
      137 SETTABLEN                        R5 R4 15
      138 GETTABLEKS                       R5 R2 K24 ["Plum"]
      140 SETTABLEN                        R5 R4 16
      141 NEWTABLE                         R5 0 3
      143 LOADK                            R6 K25 ["Universe.Player"]
      144 LOADK                            R7 K26 ["Universe.Editor"]
      145 LOADK                            R8 K27 ["Universe.Publisher"]
      146 SETLIST                          R5 R6 3 [1]
      148 NEWTABLE                         R6 8 0
      150 DUPCLOSURE                       R7 K28 [PROTO_1]
      151 DUPCLOSURE                       R8 K29 [PROTO_2]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R1
      156 DUPCLOSURE                       R9 K30 [PROTO_3]
      157 CAPTURE                          VAL R5
      158 DUPCLOSURE                       R10 K31 [PROTO_4]
      159 CAPTURE                          VAL R9
      160 SETTABLEKS                       R10 R6 K32 ["toRequestBody"]
      162 DUPCLOSURE                       R10 K33 [PROTO_5]
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R10 R6 K34 ["fromResponseBody"]
      171 LOADK                            R10 K25 ["Universe.Player"]
      172 SETTABLEKS                       R10 R6 K35 ["PLAYER_KEY"]
      174 LOADK                            R10 K26 ["Universe.Editor"]
      175 SETTABLEKS                       R10 R6 K36 ["EDITOR_KEY"]
      177 LOADK                            R10 K27 ["Universe.Publisher"]
      178 SETTABLEKS                       R10 R6 K37 ["PUBLISHER_KEY"]
      180 LOADK                            R10 K38 ["None"]
      181 SETTABLEKS                       R10 R6 K39 ["NONE_KEY"]
      183 RETURN                           R6 1
