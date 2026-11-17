PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFEQKS                       R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R8 R0
        1 LOADK                            R11 K0 ["UploadTable"]
        2 MOVE                             R12 R1
        3 DUPTABLE                         R13 K5 [{"key", "source", "context", "example"}]
        4 LOADK                            R15 K6 ["\""]
        5 MOVE                             R16 R3
        6 LOADK                            R17 K6 ["\""]
        7 CONCAT                           R14 R15 R17
        8 SETTABLEKS                       R14 R13 K1 ["key"]
       10 LOADK                            R15 K6 ["\""]
       11 MOVE                             R16 R4
       12 LOADK                            R17 K6 ["\""]
       13 CONCAT                           R14 R15 R17
       14 SETTABLEKS                       R14 R13 K2 ["source"]
       16 LOADK                            R15 K6 ["\""]
       17 MOVE                             R16 R5
       18 LOADK                            R17 K6 ["\""]
       19 CONCAT                           R14 R15 R17
       20 SETTABLEKS                       R14 R13 K3 ["context"]
       22 LOADK                            R15 K6 ["\""]
       23 MOVE                             R16 R6
       24 LOADK                            R17 K6 ["\""]
       25 CONCAT                           R14 R15 R17
       26 SETTABLEKS                       R14 R13 K4 ["example"]
       28 NAMECALL                         R9 R2 K7 ["getText"]
       30 CALL                             R9 4 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R7 K10 [table.insert]
       34 CALL                             R7 -1 0
       35 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFEQKS                       R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADK                            R1 K0 [""]
        9 RETURN                           R1 1
       10 JUMPIFEQKNIL                     R0 ; [+2]
       12 RETURN                           R0 1
       13 LOADK                            R1 K0 [""]
       14 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R7 1
        1 JUMPIFEQKNIL                     R4 ; [+5]
        3 JUMPIFEQKS                       R4 K0 [""] ; [+2]
        5 LOADB                            R7 0 +1
        6 LOADB                            R7 1
        7 JUMPIFNOT                        R7 ; [+2]
        8 LOADK                            R6 K0 [""]
        9 JUMP                             ; [+5]
       10 JUMPIFEQKNIL                     R4 ; [+3]
       12 MOVE                             R6 R4
       13 JUMP                             ; [+1]
       14 LOADK                            R6 K0 [""]
       15 LOADB                            R8 1
       16 JUMPIFEQKNIL                     R2 ; [+5]
       18 JUMPIFEQKS                       R2 K0 [""] ; [+2]
       20 LOADB                            R8 0 +1
       21 LOADB                            R8 1
       22 JUMPIFNOT                        R8 ; [+2]
       23 LOADK                            R7 K0 [""]
       24 JUMP                             ; [+5]
       25 JUMPIFEQKNIL                     R2 ; [+3]
       27 MOVE                             R7 R2
       28 JUMP                             ; [+1]
       29 LOADK                            R7 K0 [""]
       30 LOADB                            R9 1
       31 JUMPIFEQKNIL                     R5 ; [+5]
       33 JUMPIFEQKS                       R5 K0 [""] ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 JUMPIFNOT                        R9 ; [+2]
       38 LOADK                            R8 K0 [""]
       39 JUMP                             ; [+5]
       40 JUMPIFEQKNIL                     R5 ; [+3]
       42 MOVE                             R8 R5
       43 JUMP                             ; [+1]
       44 LOADK                            R8 K0 [""]
       45 LOADB                            R10 1
       46 JUMPIFEQKNIL                     R3 ; [+5]
       48 JUMPIFEQKS                       R3 K0 [""] ; [+2]
       50 LOADB                            R10 0 +1
       51 LOADB                            R10 1
       52 JUMPIFNOT                        R10 ; [+2]
       53 LOADK                            R9 K0 [""]
       54 JUMP                             ; [+5]
       55 JUMPIFEQKNIL                     R3 ; [+3]
       57 MOVE                             R9 R3
       58 JUMP                             ; [+1]
       59 LOADK                            R9 K0 [""]
       60 GETIMPORT                        R10 K3 [utf8.len]
       62 MOVE                             R11 R6
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K3 [utf8.len]
       66 MOVE                             R12 R7
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K3 [utf8.len]
       70 MOVE                             R13 R8
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K3 [utf8.len]
       74 MOVE                             R14 R9
       75 CALL                             R13 1 1
       76 FASTCALL1                        TYPE R10 ; [+3]
       77 MOVE                             R15 R10
       78 GETIMPORT                        R14 K5 [type]
       80 CALL                             R14 1 1
       81 JUMPIFNOTEQKS                    R14 K6 ["number"] ; [+9]
       83 GETIMPORT                        R14 K8 [game]
       85 LOADK                            R16 K9 ["LocalizationToolsCloudTableContextLength"]
       86 NAMECALL                         R14 R14 K10 ["GetFastInt"]
       88 CALL                             R14 2 1
       89 JUMPIFNOTLT                      R14 R10 ; [+10]
       91 GETUPVAL                         R14 0
       92 MOVE                             R15 R0
       93 LOADK                            R16 K11 ["ContextTooLong"]
       94 MOVE                             R17 R1
       95 MOVE                             R18 R7
       96 MOVE                             R19 R9
       97 MOVE                             R20 R6
       98 MOVE                             R21 R8
       99 CALL                             R14 7 0
      100 FASTCALL1                        TYPE R11 ; [+3]
      101 MOVE                             R15 R11
      102 GETIMPORT                        R14 K5 [type]
      104 CALL                             R14 1 1
      105 JUMPIFNOTEQKS                    R14 K6 ["number"] ; [+9]
      107 GETIMPORT                        R14 K8 [game]
      109 LOADK                            R16 K12 ["LocalizationToolsCloudTableKeyLength"]
      110 NAMECALL                         R14 R14 K10 ["GetFastInt"]
      112 CALL                             R14 2 1
      113 JUMPIFNOTLT                      R14 R11 ; [+10]
      115 GETUPVAL                         R14 0
      116 MOVE                             R15 R0
      117 LOADK                            R16 K13 ["KeyTooLong"]
      118 MOVE                             R17 R1
      119 MOVE                             R18 R7
      120 MOVE                             R19 R9
      121 MOVE                             R20 R6
      122 MOVE                             R21 R8
      123 CALL                             R14 7 0
      124 FASTCALL1                        TYPE R12 ; [+3]
      125 MOVE                             R15 R12
      126 GETIMPORT                        R14 K5 [type]
      128 CALL                             R14 1 1
      129 JUMPIFNOTEQKS                    R14 K6 ["number"] ; [+9]
      131 GETIMPORT                        R14 K8 [game]
      133 LOADK                            R16 K14 ["LocalizationToolsCloudTableExampleLength"]
      134 NAMECALL                         R14 R14 K10 ["GetFastInt"]
      136 CALL                             R14 2 1
      137 JUMPIFNOTLT                      R14 R12 ; [+10]
      139 GETUPVAL                         R14 0
      140 MOVE                             R15 R0
      141 LOADK                            R16 K15 ["ExampleTooLong"]
      142 MOVE                             R17 R1
      143 MOVE                             R18 R7
      144 MOVE                             R19 R9
      145 MOVE                             R20 R6
      146 MOVE                             R21 R8
      147 CALL                             R14 7 0
      148 FASTCALL1                        TYPE R13 ; [+3]
      149 MOVE                             R15 R13
      150 GETIMPORT                        R14 K5 [type]
      152 CALL                             R14 1 1
      153 JUMPIFNOTEQKS                    R14 K6 ["number"] ; [+9]
      155 GETIMPORT                        R14 K8 [game]
      157 LOADK                            R16 K16 ["LocalizationToolsCloudTableSourceLength"]
      158 NAMECALL                         R14 R14 K10 ["GetFastInt"]
      160 CALL                             R14 2 1
      161 JUMPIFNOTLT                      R14 R13 ; [+10]
      163 GETUPVAL                         R14 0
      164 MOVE                             R15 R0
      165 LOADK                            R16 K17 ["SourceTooLong"]
      166 MOVE                             R17 R1
      167 MOVE                             R18 R7
      168 MOVE                             R19 R9
      169 MOVE                             R20 R6
      170 MOVE                             R21 R8
      171 CALL                             R14 7 0
      172 MOVE                             R14 R7
      173 MOVE                             R15 R9
      174 MOVE                             R16 R6
      175 MOVE                             R17 R8
      176 RETURN                           R14 4

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K1 [ipairs]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 3
        8 FORGPREP_INEXT                   R4
        9 GETTABLEKS                       R9 R8 K2 ["Values"]
       11 JUMPIFEQKNIL                     R9 ; [+93]
       13 GETIMPORT                        R9 K4 [pairs]
       15 GETTABLEKS                       R10 R8 K2 ["Values"]
       17 CALL                             R9 1 3
       18 FORGPREP_NEXT                    R9
       19 GETIMPORT                        R14 K7 [utf8.len]
       21 MOVE                             R15 R12
       22 CALL                             R14 1 1
       23 FASTCALL1                        TYPE R14 ; [+3]
       24 MOVE                             R16 R14
       25 GETIMPORT                        R15 K9 [type]
       27 CALL                             R15 1 1
       28 JUMPIFNOTEQKS                    R15 K10 ["number"] ; [+9]
       30 GETIMPORT                        R15 K12 [game]
       32 LOADK                            R17 K13 ["LocalizationToolsCloudTableLocaleLength"]
       33 NAMECALL                         R15 R15 K14 ["GetFastInt"]
       35 CALL                             R15 2 1
       36 JUMPIFNOTLT                      R15 R14 ; [+24]
       38 MOVE                             R16 R3
       39 LOADK                            R19 K15 ["UploadTable"]
       40 LOADK                            R20 K16 ["LocaleTooLong"]
       41 DUPTABLE                         R21 K19 [{"locale", "translation"}]
       42 LOADK                            R23 K20 ["\""]
       43 MOVE                             R24 R12
       44 LOADK                            R25 K20 ["\""]
       45 CONCAT                           R22 R23 R25
       46 SETTABLEKS                       R22 R21 K17 ["locale"]
       48 LOADK                            R23 K20 ["\""]
       49 MOVE                             R24 R13
       50 LOADK                            R25 K20 ["\""]
       51 CONCAT                           R22 R23 R25
       52 SETTABLEKS                       R22 R21 K18 ["translation"]
       54 NAMECALL                         R17 R1 K21 ["getText"]
       56 CALL                             R17 4 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R15 K24 [table.insert]
       60 CALL                             R15 -1 0
       61 GETIMPORT                        R15 K7 [utf8.len]
       63 MOVE                             R16 R13
       64 CALL                             R15 1 1
       65 FASTCALL1                        TYPE R15 ; [+3]
       66 MOVE                             R17 R15
       67 GETIMPORT                        R16 K9 [type]
       69 CALL                             R16 1 1
       70 JUMPIFNOTEQKS                    R16 K10 ["number"] ; [+9]
       72 GETIMPORT                        R16 K12 [game]
       74 LOADK                            R18 K25 ["LocalizationToolsCloudTableTranslationLength"]
       75 NAMECALL                         R16 R16 K14 ["GetFastInt"]
       77 CALL                             R16 2 1
       78 JUMPIFNOTLT                      R16 R15 ; [+24]
       80 MOVE                             R17 R3
       81 LOADK                            R20 K15 ["UploadTable"]
       82 LOADK                            R21 K26 ["TranslationTooLong"]
       83 DUPTABLE                         R22 K19 [{"locale", "translation"}]
       84 LOADK                            R24 K20 ["\""]
       85 MOVE                             R25 R12
       86 LOADK                            R26 K20 ["\""]
       87 CONCAT                           R23 R24 R26
       88 SETTABLEKS                       R23 R22 K17 ["locale"]
       90 LOADK                            R24 K20 ["\""]
       91 MOVE                             R25 R13
       92 LOADK                            R26 K20 ["\""]
       93 CONCAT                           R23 R24 R26
       94 SETTABLEKS                       R23 R22 K18 ["translation"]
       96 NAMECALL                         R18 R1 K21 ["getText"]
       98 CALL                             R18 4 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R16 K24 [table.insert]
      102 CALL                             R16 -1 0
      103 FORGLOOP                         R9 2 ; [-85]
      105 GETUPVAL                         R9 0
      106 MOVE                             R10 R3
      107 MOVE                             R11 R1
      108 GETTABLEKS                       R12 R8 K27 ["Key"]
      110 GETTABLEKS                       R13 R8 K28 ["Source"]
      112 GETTABLEKS                       R14 R8 K29 ["Context"]
      114 GETTABLEKS                       R15 R8 K30 ["Example"]
      116 CALL                             R9 6 4
      117 LOADB                            R13 1
      118 JUMPIFEQKNIL                     R10 ; [+5]
      120 JUMPIFEQKS                       R10 K31 [""] ; [+2]
      122 LOADB                            R13 0 +1
      123 LOADB                            R13 1
      124 JUMPIFNOT                        R13 ; [+30]
      125 MOVE                             R14 R3
      126 LOADK                            R17 K15 ["UploadTable"]
      127 LOADK                            R18 K32 ["EmptySourceError"]
      128 DUPTABLE                         R19 K36 [{"key", "source", "context"}]
      129 LOADK                            R21 K20 ["\""]
      130 MOVE                             R22 R9
      131 LOADK                            R23 K20 ["\""]
      132 CONCAT                           R20 R21 R23
      133 SETTABLEKS                       R20 R19 K33 ["key"]
      135 LOADK                            R21 K20 ["\""]
      136 MOVE                             R22 R10
      137 LOADK                            R23 K20 ["\""]
      138 CONCAT                           R20 R21 R23
      139 SETTABLEKS                       R20 R19 K34 ["source"]
      141 LOADK                            R21 K20 ["\""]
      142 MOVE                             R22 R11
      143 LOADK                            R23 K20 ["\""]
      144 CONCAT                           R20 R21 R23
      145 SETTABLEKS                       R20 R19 K35 ["context"]
      147 NAMECALL                         R15 R1 K21 ["getText"]
      149 CALL                             R15 4 -1
      150 FASTCALL                         TABLE_INSERT ; [+2]
      151 GETIMPORT                        R13 K24 [table.insert]
      153 CALL                             R13 -1 0
      154 JUMP                             ; [+46]
      155 GETTABLE                         R13 R2 R10
      156 JUMPIFEQKNIL                     R13 ; [+35]
      158 GETTABLE                         R14 R2 R10
      159 GETTABLE                         R13 R14 R11
      160 JUMPIFEQKNIL                     R13 ; [+31]
      162 MOVE                             R14 R3
      163 LOADK                            R17 K15 ["UploadTable"]
      164 LOADK                            R18 K37 ["DuplicateSourceContextError"]
      165 DUPTABLE                         R19 K36 [{"key", "source", "context"}]
      166 LOADK                            R21 K20 ["\""]
      167 MOVE                             R22 R9
      168 LOADK                            R23 K20 ["\""]
      169 CONCAT                           R20 R21 R23
      170 SETTABLEKS                       R20 R19 K33 ["key"]
      172 LOADK                            R21 K20 ["\""]
      173 MOVE                             R22 R10
      174 LOADK                            R23 K20 ["\""]
      175 CONCAT                           R20 R21 R23
      176 SETTABLEKS                       R20 R19 K34 ["source"]
      178 LOADK                            R21 K20 ["\""]
      179 MOVE                             R22 R11
      180 LOADK                            R23 K20 ["\""]
      181 CONCAT                           R20 R21 R23
      182 SETTABLEKS                       R20 R19 K35 ["context"]
      184 NAMECALL                         R15 R1 K21 ["getText"]
      186 CALL                             R15 4 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R13 K24 [table.insert]
      190 CALL                             R13 -1 0
      191 JUMP                             ; [+9]
      192 GETTABLE                         R13 R2 R10
      193 JUMPIFNOTEQKNIL                  R13 ; [+4]
      195 NEWTABLE                         R13 0 0
      197 SETTABLE                         R13 R2 R10
      198 GETTABLE                         R13 R2 R10
      199 LOADB                            R14 1
      200 SETTABLE                         R14 R13 R11
      201 FORGLOOP                         R4 2 [inext] ; [-193]
      203 LENGTH                           R5 R3
      204 JUMPIFNOTEQKN                    R5 K38 [0] ; [+2]
      206 LOADB                            R4 0 +1
      207 LOADB                            R4 1
      208 MOVE                             R5 R3
      209 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 DUPCLOSURE                       R4 K4 [PROTO_4]
        6 CAPTURE                          VAL R2
        7 DUPCLOSURE                       R5 K5 [PROTO_5]
        8 CAPTURE                          VAL R4
        9 DUPTABLE                         R6 K8 [{"isTableEmpty", "tableContainsInvalidEntries"}]
       10 SETTABLEKS                       R0 R6 K6 ["isTableEmpty"]
       12 SETTABLEKS                       R5 R6 K7 ["tableContainsInvalidEntries"]
       14 RETURN                           R6 1
