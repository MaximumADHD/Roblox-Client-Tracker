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
       22 JUMP                             ; [+88]
       23 GETTABLEKS                       R8 R6 K0 ["type"]
       25 JUMPIFNOTEQKS                    R8 K7 ["Ref"] ; [+52]
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
       52 JUMP                             ; [+58]
       53 MOVE                             R11 R8
       54 NAMECALL                         R9 R7 K12 ["SetTemplate"]
       56 CALL                             R9 2 0
       57 JUMP                             ; [+53]
       58 GETTABLEKS                       R10 R6 K5 ["name"]
       60 JUMPIF                           R10 ; [+2]
       61 GETTABLEKS                       R10 R6 K9 ["templateId"]
       63 LOADK                            R11 K13 [" (missing)"]
       64 CONCAT                           R9 R10 R11
       65 SETTABLEKS                       R9 R7 K6 ["Name"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R9 R9 K14 ["warn"]
       70 LOADK                            R10 K15 ["Could not resolve template ID '%*'"]
       71 GETTABLEKS                       R12 R6 K9 ["templateId"]
       73 NAMECALL                         R10 R10 K16 ["format"]
       75 CALL                             R10 2 1
       76 CALL                             R9 1 0
       77 JUMP                             ; [+33]
       78 GETTABLEKS                       R8 R6 K0 ["type"]
       80 JUMPIFNOTEQKS                    R8 K2 ["Instance"] ; [+30]
       82 GETIMPORT                        R8 K4 [Instance.new]
       84 GETTABLEKS                       R9 R6 K17 ["className"]
       86 CALL                             R8 1 1
       87 MOVE                             R7 R8
       88 GETTABLEKS                       R8 R6 K5 ["name"]
       90 JUMPIF                           R8 ; [+2]
       91 GETTABLEKS                       R8 R6 K17 ["className"]
       93 SETTABLEKS                       R8 R7 K6 ["Name"]
       95 GETTABLEKS                       R8 R6 K17 ["className"]
       97 JUMPIFNOTEQKS                    R8 K18 ["StyleSheet"] ; [+13]
       99 GETIMPORT                        R8 K20 [require]
      101 GETUPVAL                         R9 5
      102 GETTABLEKS                       R9 R9 K21 ["runtime"]
      104 GETTABLEKS                       R9 R9 K22 ["populateStyles"]
      106 CALL                             R8 1 1
      107 MOVE                             R9 R8
      108 MOVE                             R10 R7
      109 MOVE                             R11 R6
      110 CALL                             R9 2 0
      111 GETTABLEKS                       R8 R6 K23 ["children"]
      113 JUMPIFNOT                        R8 ; [+5]
      114 GETUPVAL                         R8 6
      115 MOVE                             R9 R7
      116 GETTABLEKS                       R10 R6 K23 ["children"]
      118 CALL                             R8 2 0
      119 GETTABLEKS                       R9 R6 K0 ["type"]
      121 JUMPIFNOTEQKS                    R9 K1 ["Template"] ; [+4]
      123 GETTABLEKS                       R8 R6 K24 ["defaultParams"]
      125 JUMP                             ; [+2]
      126 GETTABLEKS                       R8 R6 K25 ["params"]
      128 JUMPIFNOT                        R8 ; [+100]
      129 MOVE                             R9 R8
      130 LOADNIL                          R10
      131 LOADNIL                          R11
      132 FORGPREP                         R9
      133 FASTCALL1                        TYPEOF R13 ; [+3]
      134 MOVE                             R15 R13
      135 GETIMPORT                        R14 K27 [typeof]
      137 CALL                             R14 1 1
      138 JUMPIFEQKS                       R14 K28 ["table"] ; [+52]
      140 GETTABLEKS                       R14 R6 K0 ["type"]
      142 JUMPIFEQKS                       R14 K2 ["Instance"] ; [+11]
      144 LOADK                            R16 K29 ["param_%*"]
      145 MOVE                             R18 R12
      146 NAMECALL                         R16 R16 K16 ["format"]
      148 CALL                             R16 2 1
      149 MOVE                             R17 R13
      150 NAMECALL                         R14 R7 K30 ["SetAttribute"]
      152 CALL                             R14 3 0
      153 JUMP                             ; [+73]
      154 JUMPIFNOTEQKS                    R12 K31 ["Tags"] ; [+14]
      156 GETIMPORT                        R14 K34 [string.gmatch]
      158 MOVE                             R15 R13
      159 LOADK                            R16 K35 ["%S+"]
      160 CALL                             R14 2 3
      161 FORGPREP                         R14
      162 MOVE                             R21 R17
      163 NAMECALL                         R19 R7 K36 ["AddTag"]
      165 CALL                             R19 2 0
      166 FORGLOOP                         R14 1 ; [-5]
      168 JUMP                             ; [+58]
      169 GETIMPORT                        R14 K38 [pcall]
      171 NEWCLOSURE                       R15 P0
      172 CAPTURE                          REF R7
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R13
      175 CALL                             R14 1 2
      176 JUMPIF                           R14 ; [+50]
      177 GETUPVAL                         R16 4
      178 GETTABLEKS                       R16 R16 K14 ["warn"]
      180 LOADK                            R17 K39 ["Could not assign property '%*' on '%*': %*"]
      181 MOVE                             R19 R12
      182 NAMECALL                         R20 R7 K40 ["GetFullName"]
      184 CALL                             R20 1 1
      185 MOVE                             R21 R15
      186 NAMECALL                         R17 R17 K16 ["format"]
      188 CALL                             R17 4 1
      189 CALL                             R16 1 0
      190 JUMP                             ; [+36]
      191 GETTABLEKS                       R14 R13 K0 ["type"]
      193 JUMPIFNOTEQKS                    R14 K41 ["Expr"] ; [+12]
      195 LOADK                            R16 K42 ["bind_%*"]
      196 MOVE                             R18 R12
      197 NAMECALL                         R16 R16 K16 ["format"]
      199 CALL                             R16 2 1
      200 GETTABLEKS                       R17 R13 K43 ["expr"]
      202 NAMECALL                         R14 R7 K30 ["SetAttribute"]
      204 CALL                             R14 3 0
      205 JUMP                             ; [+21]
      206 GETTABLEKS                       R14 R13 K0 ["type"]
      208 JUMPIFNOTEQKS                    R14 K1 ["Template"] ; [+18]
      210 SETTABLEKS                       R12 R13 K5 ["name"]
      212 GETIMPORT                        R15 K4 [Instance.new]
      214 GETUPVAL                         R16 0
      215 CALL                             R15 1 1
      216 GETTABLEKS                       R16 R13 K5 ["name"]
      218 SETTABLEKS                       R16 R15 K6 ["Name"]
      220 GETUPVAL                         R16 1
      221 MOVE                             R17 R13
      222 MOVE                             R18 R15
      223 CALL                             R16 2 0
      224 MOVE                             R14 R15
      225 SETTABLEKS                       R7 R14 K44 ["Parent"]
      227 FORGLOOP                         R9 2 ; [-95]
      229 SETTABLEKS                       R0 R7 K44 ["Parent"]
      231 CLOSEUPVALS                      R7
      232 FORGLOOP                         R2 2 ; [-229]
      234 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["param_%*"]
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R0 R0 K2 ["SetAttribute"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["defaultParams"]
        2 JUMPIFNOT                        R2 ; [+27]
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
       15 JUMPIF                           R7 ; [+12]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K3 ["warn"]
       19 LOADK                            R10 K4 ["Could not assign default parameter '%*' on template '%*': %*"]
       20 MOVE                             R12 R5
       21 GETTABLEKS                       R13 R1 K5 ["Name"]
       23 MOVE                             R14 R8
       24 NAMECALL                         R10 R10 K6 ["format"]
       26 CALL                             R10 4 1
       27 CALL                             R9 1 0
       28 FORGLOOP                         R2 2 ; [-21]
       30 GETTABLEKS                       R2 R0 K7 ["children"]
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETUPVAL                         R2 1
       34 MOVE                             R3 R1
       35 GETTABLEKS                       R4 R0 K7 ["children"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

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
