PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["name"]
        6 SETTABLEKS                       R2 R1 K4 ["Name"]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADNIL                          R7
        5 GETTABLEKS                       R8 R6 K0 ["type"]
        7 JUMPIFNOTEQKS                    R8 K1 ["Template"] ; [+15]
        9 GETIMPORT                        R8 K4 [Instance.new]
       11 GETUPVAL                         R9 0
       12 CALL                             R8 1 1
       13 GETTABLEKS                       R9 R6 K5 ["name"]
       15 SETTABLEKS                       R9 R8 K6 ["Name"]
       17 GETUPVAL                         R9 1
       18 MOVE                             R10 R6
       19 MOVE                             R11 R8
       20 CALL                             R9 2 0
       21 MOVE                             R7 R8
       22 JUMP                             ; [+89]
       23 GETTABLEKS                       R8 R6 K0 ["type"]
       25 JUMPIFNOTEQKS                    R8 K7 ["Ref"] ; [+53]
       27 GETIMPORT                        R8 K4 [Instance.new]
       29 GETUPVAL                         R9 2
       30 CALL                             R8 1 1
       31 MOVE                             R7 R8
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K8 ["getTemplate"]
       35 GETTABLEKS                       R9 R6 K9 ["templateId"]
       37 CALL                             R8 1 1
       38 JUMPIFNOT                        R8 ; [+19]
       39 GETTABLEKS                       R9 R6 K5 ["name"]
       41 JUMPIF                           R9 ; [+2]
       42 GETTABLEKS                       R9 R8 K6 ["Name"]
       44 SETTABLEKS                       R9 R7 K6 ["Name"]
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K10 ["DISABLE_TEMPLATE_CLASSES"]
       49 JUMPIFNOT                        R9 ; [+3]
       50 SETTABLEKS                       R8 R7 K11 ["Value"]
       52 JUMP                             ; [+59]
       53 MOVE                             R11 R8
       54 NAMECALL                         R9 R7 K12 ["SetTemplate"]
       56 CALL                             R9 2 0
       57 JUMP                             ; [+54]
       58 GETTABLEKS                       R10 R6 K5 ["name"]
       60 JUMPIF                           R10 ; [+2]
       61 GETTABLEKS                       R10 R6 K9 ["templateId"]
       63 LOADK                            R11 K13 [" (missing)"]
       64 CONCAT                           R9 R10 R11
       65 SETTABLEKS                       R9 R7 K6 ["Name"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R9 R9 K14 ["warn"]
       70 LOADK                            R11 K15 ["Could not resolve template ID '%*'"]
       71 GETTABLEKS                       R13 R6 K9 ["templateId"]
       73 NAMECALL                         R11 R11 K16 ["format"]
       75 CALL                             R11 2 1
       76 MOVE                             R10 R11
       77 CALL                             R9 1 0
       78 JUMP                             ; [+33]
       79 GETTABLEKS                       R8 R6 K0 ["type"]
       81 JUMPIFNOTEQKS                    R8 K2 ["Instance"] ; [+30]
       83 GETIMPORT                        R8 K4 [Instance.new]
       85 GETTABLEKS                       R9 R6 K17 ["className"]
       87 CALL                             R8 1 1
       88 MOVE                             R7 R8
       89 GETTABLEKS                       R8 R6 K5 ["name"]
       91 JUMPIF                           R8 ; [+2]
       92 GETTABLEKS                       R8 R6 K17 ["className"]
       94 SETTABLEKS                       R8 R7 K6 ["Name"]
       96 GETTABLEKS                       R8 R6 K17 ["className"]
       98 JUMPIFNOTEQKS                    R8 K18 ["StyleSheet"] ; [+13]
      100 GETIMPORT                        R8 K20 [require]
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R9 R9 K21 ["runtime"]
      105 GETTABLEKS                       R9 R9 K22 ["populateStyles"]
      107 CALL                             R8 1 1
      108 MOVE                             R9 R8
      109 MOVE                             R10 R7
      110 MOVE                             R11 R6
      111 CALL                             R9 2 0
      112 GETTABLEKS                       R8 R6 K23 ["children"]
      114 JUMPIFNOT                        R8 ; [+5]
      115 GETUPVAL                         R8 6
      116 MOVE                             R9 R7
      117 GETTABLEKS                       R10 R6 K23 ["children"]
      119 CALL                             R8 2 0
      120 GETTABLEKS                       R9 R6 K0 ["type"]
      122 JUMPIFNOTEQKS                    R9 K1 ["Template"] ; [+4]
      124 GETTABLEKS                       R8 R6 K24 ["defaultParams"]
      126 JUMP                             ; [+2]
      127 GETTABLEKS                       R8 R6 K25 ["params"]
      129 JUMPIFNOT                        R8 ; [+103]
      130 MOVE                             R9 R8
      131 LOADNIL                          R10
      132 LOADNIL                          R11
      133 FORGPREP                         R9
      134 FASTCALL1                        TYPEOF R13 ; [+3]
      135 MOVE                             R15 R13
      136 GETIMPORT                        R14 K27 [typeof]
      138 CALL                             R14 1 1
      139 JUMPIFEQKS                       R14 K28 ["table"] ; [+54]
      141 GETTABLEKS                       R14 R6 K0 ["type"]
      143 JUMPIFEQKS                       R14 K2 ["Instance"] ; [+12]
      145 LOADK                            R17 K29 ["param_%*"]
      146 MOVE                             R19 R12
      147 NAMECALL                         R17 R17 K16 ["format"]
      149 CALL                             R17 2 1
      150 MOVE                             R16 R17
      151 MOVE                             R17 R13
      152 NAMECALL                         R14 R7 K30 ["SetAttribute"]
      154 CALL                             R14 3 0
      155 JUMP                             ; [+75]
      156 JUMPIFNOTEQKS                    R12 K31 ["Tags"] ; [+14]
      158 GETIMPORT                        R14 K34 [string.gmatch]
      160 MOVE                             R15 R13
      161 LOADK                            R16 K35 ["%S+"]
      162 CALL                             R14 2 3
      163 FORGPREP                         R14
      164 MOVE                             R21 R17
      165 NAMECALL                         R19 R7 K36 ["AddTag"]
      167 CALL                             R19 2 0
      168 FORGLOOP                         R14 1 ; [-5]
      170 JUMP                             ; [+60]
      171 GETIMPORT                        R14 K38 [pcall]
      173 NEWCLOSURE                       R15 P0
      174 CAPTURE                          REF R7
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R13
      177 CALL                             R14 1 2
      178 JUMPIF                           R14 ; [+52]
      179 GETUPVAL                         R16 4
      180 GETTABLEKS                       R16 R16 K14 ["warn"]
      182 LOADK                            R18 K39 ["Could not assign property '%*' on '%*': %*"]
      183 MOVE                             R20 R12
      184 NAMECALL                         R21 R7 K40 ["GetFullName"]
      186 CALL                             R21 1 1
      187 MOVE                             R22 R15
      188 NAMECALL                         R18 R18 K16 ["format"]
      190 CALL                             R18 4 1
      191 MOVE                             R17 R18
      192 CALL                             R16 1 0
      193 JUMP                             ; [+37]
      194 GETTABLEKS                       R14 R13 K0 ["type"]
      196 JUMPIFNOTEQKS                    R14 K41 ["Expr"] ; [+13]
      198 LOADK                            R17 K42 ["bind_%*"]
      199 MOVE                             R19 R12
      200 NAMECALL                         R17 R17 K16 ["format"]
      202 CALL                             R17 2 1
      203 MOVE                             R16 R17
      204 GETTABLEKS                       R17 R13 K43 ["expr"]
      206 NAMECALL                         R14 R7 K30 ["SetAttribute"]
      208 CALL                             R14 3 0
      209 JUMP                             ; [+21]
      210 GETTABLEKS                       R14 R13 K0 ["type"]
      212 JUMPIFNOTEQKS                    R14 K1 ["Template"] ; [+18]
      214 SETTABLEKS                       R12 R13 K5 ["name"]
      216 GETIMPORT                        R15 K4 [Instance.new]
      218 GETUPVAL                         R16 0
      219 CALL                             R15 1 1
      220 GETTABLEKS                       R16 R13 K5 ["name"]
      222 SETTABLEKS                       R16 R15 K6 ["Name"]
      224 GETUPVAL                         R16 1
      225 MOVE                             R17 R13
      226 MOVE                             R18 R15
      227 CALL                             R16 2 0
      228 MOVE                             R14 R15
      229 SETTABLEKS                       R7 R14 K44 ["Parent"]
      231 FORGLOOP                         R9 2 ; [-98]
      233 SETTABLEKS                       R0 R7 K44 ["Parent"]
      235 CLOSEUPVALS                      R7
      236 FORGLOOP                         R2 2 ; [-233]
      238 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["param_%*"]
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["defaultParams"]
        2 JUMPIFNOT                        R2 ; [+28]
        3 GETTABLEKS                       R2 R0 K0 ["defaultParams"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K2 [pcall]
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R5
       13 CAPTURE                          VAL R6
       14 CALL                             R7 1 2
       15 JUMPIF                           R7 ; [+13]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K3 ["warn"]
       19 LOADK                            R11 K4 ["Could not assign default parameter '%*' on template '%*': %*"]
       20 MOVE                             R13 R5
       21 GETTABLEKS                       R14 R1 K5 ["Name"]
       23 MOVE                             R15 R8
       24 NAMECALL                         R11 R11 K6 ["format"]
       26 CALL                             R11 4 1
       27 MOVE                             R10 R11
       28 CALL                             R9 1 0
       29 FORGLOOP                         R2 2 ; [-22]
       31 GETTABLEKS                       R2 R0 K7 ["children"]
       33 JUMPIFNOT                        R2 ; [+5]
       34 GETUPVAL                         R2 1
       35 MOVE                             R3 R1
       36 GETTABLEKS                       R4 R0 K7 ["children"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Debug"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["monitor"]
       21 GETTABLEKS                       R4 R4 K8 ["TemplateRegistry"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R5 R2 K9 ["DISABLE_TEMPLATE_CLASSES"]
       26 JUMPIFNOT                        R5 ; [+2]
       27 LOADK                            R4 K10 ["Folder"]
       28 JUMP                             ; [+1]
       29 LOADK                            R4 K11 ["Template"]
       30 GETTABLEKS                       R6 R2 K9 ["DISABLE_TEMPLATE_CLASSES"]
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADK                            R5 K12 ["ObjectValue"]
       34 JUMP                             ; [+1]
       35 LOADK                            R5 K13 ["Ref"]
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          REF R7
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          REF R6
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R2
       51 CAPTURE                          REF R6
       52 CLOSEUPVALS                      R6
       53 RETURN                           R7 1
