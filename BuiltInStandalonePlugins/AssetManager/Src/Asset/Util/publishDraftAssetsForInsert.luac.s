PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["not available for this component"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Name"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["CreatorId"]
        2 FASTCALL1                        TYPE R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["number"] ; [+5]
        9 JUMPIFEQKN                       R3 K4 [0] ; [+3]
       11 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
       13 LOADB                            R4 0
       14 RETURN                           R4 1
       15 GETTABLEKS                       R5 R0 K5 ["CreatorType"]
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K7 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K8 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R4 R5 K9 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R5 ; [+3]
       28 MOVE                             R7 R5
       29 GETIMPORT                        R6 K2 [type]
       31 CALL                             R6 1 1
       32 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+3]
       34 MOVE                             R4 R5
       35 JUMP                             ; [+1]
       36 LOADNIL                          R4
       37 FASTCALL1                        TYPEOF R1 ; [+3]
       38 MOVE                             R7 R1
       39 GETIMPORT                        R6 K7 [typeof]
       41 CALL                             R6 1 1
       42 JUMPIFNOTEQKS                    R6 K8 ["EnumItem"] ; [+4]
       44 GETTABLEKS                       R5 R1 K9 ["Name"]
       46 JUMP                             ; [+10]
       47 FASTCALL1                        TYPE R1 ; [+3]
       48 MOVE                             R7 R1
       49 GETIMPORT                        R6 K2 [type]
       51 CALL                             R6 1 1
       52 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+3]
       54 MOVE                             R5 R1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 JUMPIFEQKNIL                     R4 ; [+3]
       59 JUMPIFNOTEQKNIL                  R5 ; [+3]
       61 LOADB                            R6 0
       62 RETURN                           R6 1
       63 GETUPVAL                         R7 0
       64 GETTABLE                         R6 R7 R4
       65 JUMPIFNOT                        R6 ; [+3]
       66 GETUPVAL                         R7 0
       67 GETTABLE                         R6 R7 R5
       68 JUMPIF                           R6 ; [+2]
       69 LOADB                            R6 0
       70 RETURN                           R6 1
       71 LOADB                            R6 0
       72 JUMPIFNOTEQ                      R4 R5 ; [+5]
       74 JUMPIFEQ                         R3 R2 ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 RETURN                           R6 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R2 1
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLE                         R8 R1 R6
       10 JUMPIFEQKNIL                     R8 ; [+11]
       12 DUPTABLE                         R9 K2 [{"CreatorType", "CreatorId"}]
       13 GETTABLEKS                       R10 R8 K3 ["Type"]
       15 SETTABLEKS                       R10 R9 K0 ["CreatorType"]
       17 GETTABLEKS                       R10 R8 K4 ["Id"]
       19 SETTABLEKS                       R10 R9 K1 ["CreatorId"]
       21 SETTABLE                         R9 R2 R7
       22 FORGLOOP                         R3 2 ; [-14]
       24 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishLatestDraftsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 1
        4 JUMPIF                           R6 ; [+4]
        5 GETUPVAL                         R6 1
        6 LOADK                            R7 K0 ["publish: gate is off (FFlagAmrPublishDraftAssetsOnInsert)"]
        7 CALL                             R6 1 0
        8 RETURN                           R5 1
        9 GETUPVAL                         R6 1
       10 LOADK                            R10 K1 ["publish: gate entered for %* asset(s), destination is "]
       11 LENGTH                           R12 R1
       12 NAMECALL                         R10 R10 K2 ["format"]
       14 CALL                             R10 2 1
       15 MOVE                             R8 R10
       16 LOADK                            R9 K3 ["%*:%*"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R14 R2
       19 GETIMPORT                        R13 K6 [typeof]
       21 CALL                             R13 1 1
       22 JUMPIFNOTEQKS                    R13 K7 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R12 R2 K8 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R14 R2
       29 GETIMPORT                        R13 K10 [type]
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K11 ["string"] ; [+3]
       34 MOVE                             R12 R2
       35 JUMP                             ; [+1]
       36 LOADNIL                          R12
       37 ORK                              R11 R12 K4 ["unknown"]
       38 MOVE                             R12 R3
       39 NAMECALL                         R9 R9 K2 ["format"]
       41 CALL                             R9 3 1
       42 CONCAT                           R7 R8 R9
       43 CALL                             R6 1 0
       44 JUMPIFNOT                        R0 ; [+3]
       45 LENGTH                           R6 R1
       46 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       48 GETUPVAL                         R6 1
       49 LOADK                            R7 K13 ["publish: skipped, no AssetAccessController or no asset ids"]
       50 CALL                             R6 1 0
       51 RETURN                           R5 1
       52 NEWTABLE                         R6 0 0
       54 GETUPVAL                         R7 2
       55 MOVE                             R8 R1
       56 MOVE                             R9 R4
       57 CALL                             R7 2 1
       58 MOVE                             R8 R1
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 FORGPREP                         R8
       62 GETTABLE                         R13 R7 R12
       63 JUMPIFEQKNIL                     R13 ; [+7]
       65 GETUPVAL                         R14 3
       66 MOVE                             R15 R13
       67 MOVE                             R16 R2
       68 MOVE                             R17 R3
       69 CALL                             R14 3 1
       70 JUMPIF                           R14 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       73 MOVE                             R15 R6
       74 MOVE                             R16 R12
       75 GETIMPORT                        R14 K16 [table.insert]
       77 CALL                             R14 2 0
       78 FORGLOOP                         R8 2 ; [-17]
       80 GETUPVAL                         R8 1
       81 LOADK                            R12 K17 ["publish: %* of %* asset(s) need publish state, "]
       82 LENGTH                           R14 R6
       83 LENGTH                           R15 R1
       84 NAMECALL                         R12 R12 K2 ["format"]
       86 CALL                             R12 3 1
       87 MOVE                             R10 R12
       88 LOADK                            R11 K18 ["%* already known to be same account"]
       89 LENGTH                           R14 R1
       90 LENGTH                           R15 R6
       91 SUB                              R13 R14 R15
       92 NAMECALL                         R11 R11 K2 ["format"]
       94 CALL                             R11 2 1
       95 CONCAT                           R9 R10 R11
       96 CALL                             R8 1 0
       97 LENGTH                           R8 R6
       98 JUMPIFNOTEQKN                    R8 K12 [0] ; [+5]
      100 GETUPVAL                         R8 1
      101 LOADK                            R9 K19 ["publish: nothing to do, every asset is owned by this experience's account"]
      102 CALL                             R8 1 0
      103 RETURN                           R5 1
      104 LOADN                            R10 1
      105 LENGTH                           R8 R6
      106 LOADN                            R9 50
      107 FORNPREP                         R8
      108 GETIMPORT                        R11 K21 [table.move]
      110 MOVE                             R12 R6
      111 MOVE                             R13 R10
      112 ADDK                             R16 R10 K23 [50]
      113 SUBK                             R15 R16 K22 [1]
      114 LENGTH                           R16 R6
      115 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      117 GETIMPORT                        R14 K26 [math.min]
      119 CALL                             R14 2 1
      120 LOADN                            R15 1
      121 NEWTABLE                         R16 0 0
      123 CALL                             R11 5 1
      124 GETUPVAL                         R12 1
      125 LOADK                            R13 K27 ["publish: publishing drafts among %* asset(s), waiting for each to settle"]
      126 LENGTH                           R15 R11
      127 NAMECALL                         R13 R13 K2 ["format"]
      129 CALL                             R13 2 1
      130 CALL                             R12 1 0
      131 GETIMPORT                        R12 K29 [pcall]
      133 NEWCLOSURE                       R13 P0
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R11
      136 CALL                             R12 1 2
      137 JUMPIFNOT                        R12 ; [+7]
      138 FASTCALL1                        TYPE R13 ; [+3]
      139 MOVE                             R15 R13
      140 GETIMPORT                        R14 K10 [type]
      142 CALL                             R14 1 1
      143 JUMPIFEQKS                       R14 K14 ["table"] ; [+34]
      145 LOADB                            R14 0
      146 FASTCALL1                        TYPE R13 ; [+3]
      147 MOVE                             R16 R13
      148 GETIMPORT                        R15 K10 [type]
      150 CALL                             R15 1 1
      151 JUMPIFNOTEQKS                    R15 K11 ["string"] ; [+12]
      153 GETIMPORT                        R15 K31 [string.find]
      155 MOVE                             R16 R13
      156 LOADK                            R17 K32 ["not available for this component"]
      157 LOADN                            R18 1
      158 LOADB                            R19 1
      159 CALL                             R15 4 1
      160 JUMPIFNOTEQKNIL                  R15 ; [+2]
      162 LOADB                            R14 0 +1
      163 LOADB                            R14 1
      164 JUMPIFNOT                        R14 ; [+4]
      165 GETUPVAL                         R14 1
      166 LOADK                            R15 K33 ["publish: skipped, PublishLatestDraftsAndWaitAsync is not registered on this Studio"]
      167 CALL                             R14 1 0
      168 RETURN                           R5 1
      169 GETIMPORT                        R14 K35 [warn]
      171 LOADK                            R15 K36 ["Failed to publish draft assets before insertion: %*"]
      172 MOVE                             R17 R13
      173 NAMECALL                         R15 R15 K2 ["format"]
      175 CALL                             R15 2 1
      176 CALL                             R14 1 0
      177 JUMP                             ; [+15]
      178 MOVE                             R14 R13
      179 LOADNIL                          R15
      180 LOADNIL                          R16
      181 FORGPREP                         R14
      182 FASTCALL1                        TYPE R18 ; [+3]
      183 MOVE                             R20 R18
      184 GETIMPORT                        R19 K10 [type]
      186 CALL                             R19 1 1
      187 JUMPIFNOTEQKS                    R19 K37 ["number"] ; [+3]
      189 LOADB                            R19 1
      190 SETTABLE                         R19 R5 R18
      191 FORGLOOP                         R14 2 ; [-10]
      193 FORNLOOP                         R8
      194 LOADN                            R8 0
      195 MOVE                             R9 R5
      196 LOADNIL                          R10
      197 LOADNIL                          R11
      198 FORGPREP                         R9
      199 ADDK                             R8 R8 K22 [1]
      200 FORGLOOP                         R9 1 ; [-2]
      202 JUMPIFNOTEQKN                    R8 K12 [0] ; [+5]
      204 GETUPVAL                         R9 1
      205 LOADK                            R10 K38 ["publish: every asset is publishable and servable, proceeding to the grant"]
      206 CALL                             R9 1 0
      207 RETURN                           R5 1
      208 GETIMPORT                        R9 K35 [warn]
      210 LOADK                            R10 K39 ["%* asset(s) could not be published and will not be inserted"]
      211 MOVE                             R12 R8
      212 NAMECALL                         R10 R10 K2 ["format"]
      214 CALL                             R10 2 1
      215 CALL                             R9 1 0
      216 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["logIfDebug"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K15 [{["User"] = True, ["Group"] = True}]
       33 DUPCLOSURE                       R5 K16 [PROTO_0]
       34 DUPCLOSURE                       R6 K17 [PROTO_1]
       35 DUPCLOSURE                       R7 K18 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 DUPCLOSURE                       R8 K19 [PROTO_3]
       38 DUPCLOSURE                       R9 K20 [PROTO_5]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R7
       43 RETURN                           R9 1
