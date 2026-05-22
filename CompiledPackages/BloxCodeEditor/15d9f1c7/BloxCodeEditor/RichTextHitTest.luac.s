PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+15]
        2 GETIMPORT                        R3 K2 [Instance.new]
        4 LOADK                            R4 K3 ["GetTextBoundsParams"]
        5 CALL                             R3 1 1
        6 FASTCALL2K                       ASSERT R3 K4 ; [+5]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K4 ["GetTextBoundsParams constructor failed"]
       10 GETIMPORT                        R4 K6 [assert]
       12 CALL                             R4 2 0
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K7 ["RichText"]
       16 SETUPVAL                         R3 0
       17 GETUPVAL                         R3 0
       18 SETTABLEKS                       R1 R3 K8 ["Font"]
       20 SETTABLEKS                       R2 R3 K9 ["Size"]
       22 SETTABLEKS                       R0 R3 K10 ["Text"]
       24 GETIMPORT                        R4 K12 [pcall]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R3
       29 CALL                             R4 1 2
       30 JUMPIFNOT                        R4 ; [+3]
       31 GETTABLEKS                       R6 R5 K13 ["X"]
       33 RETURN                           R6 1
       34 LENGTH                           R8 R0
       35 MUL                              R7 R8 R2
       36 MULK                             R6 R7 K14 [0.5]
       37 RETURN                           R6 1

PROTO_2:
        0 LOADK                            R3 K0 ["%*|%*"]
        1 MOVE                             R5 R1
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R7 R0
        4 GETIMPORT                        R6 K2 [tostring]
        6 CALL                             R6 1 1
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+1]
       14 RETURN                           R3 1
       15 GETUPVAL                         R4 1
       16 LOADK                            R5 K4 ["|"]
       17 MOVE                             R6 R0
       18 MOVE                             R7 R1
       19 CALL                             R4 3 1
       20 GETUPVAL                         R5 0
       21 SETTABLE                         R4 R5 R2
       22 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R4 K0 ["%*|%*"]
        1 MOVE                             R6 R2
        2 MOVE                             R7 R0
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 GETUPVAL                         R5 0
        8 GETTABLE                         R4 R5 R3
        9 JUMPIFEQKNIL                     R4 ; [+2]
       11 RETURN                           R4 1
       12 GETUPVAL                         R6 1
       13 MOVE                             R8 R0
       14 LOADK                            R9 K2 ["|"]
       15 CONCAT                           R7 R8 R9
       16 MOVE                             R8 R1
       17 MOVE                             R9 R2
       18 CALL                             R6 3 1
       19 LOADK                            R9 K0 ["%*|%*"]
       20 MOVE                             R11 R2
       21 FASTCALL1                        TOSTRING R1 ; [+3]
       22 MOVE                             R13 R1
       23 GETIMPORT                        R12 K4 [tostring]
       25 CALL                             R12 1 1
       26 NAMECALL                         R9 R9 K1 ["format"]
       28 CALL                             R9 3 1
       29 MOVE                             R8 R9
       30 GETUPVAL                         R10 2
       31 GETTABLE                         R9 R10 R8
       32 JUMPIFNOT                        R9 ; [+2]
       33 MOVE                             R7 R9
       34 JUMP                             ; [+8]
       35 GETUPVAL                         R10 1
       36 LOADK                            R11 K2 ["|"]
       37 MOVE                             R12 R1
       38 MOVE                             R13 R2
       39 CALL                             R10 3 1
       40 GETUPVAL                         R11 2
       41 SETTABLE                         R10 R11 R8
       42 MOVE                             R7 R10
       43 SUB                              R5 R6 R7
       44 GETUPVAL                         R6 0
       45 SETTABLE                         R5 R6 R3
       46 RETURN                           R5 1

PROTO_4:
        0 LOADK                            R3 K0 ["[&<>\"']"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["&amp;"]
        4 SETTABLEKS                       R5 R4 K2 ["&"]
        6 LOADK                            R5 K3 ["&lt;"]
        7 SETTABLEKS                       R5 R4 K4 ["<"]
        9 LOADK                            R5 K5 ["&gt;"]
       10 SETTABLEKS                       R5 R4 K6 [">"]
       12 LOADK                            R5 K7 ["&quot;"]
       13 SETTABLEKS                       R5 R4 K8 ["\""]
       15 LOADK                            R5 K9 ["&apos;"]
       16 SETTABLEKS                       R5 R4 K10 ["'"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_5:
        0 LOADK                            R5 K0 ["[&<>\"']"]
        1 NEWTABLE                         R6 8 0
        3 LOADK                            R7 K1 ["&amp;"]
        4 SETTABLEKS                       R7 R6 K2 ["&"]
        6 LOADK                            R7 K3 ["&lt;"]
        7 SETTABLEKS                       R7 R6 K4 ["<"]
        9 LOADK                            R7 K5 ["&gt;"]
       10 SETTABLEKS                       R7 R6 K6 [">"]
       12 LOADK                            R7 K7 ["&quot;"]
       13 SETTABLEKS                       R7 R6 K8 ["\""]
       15 LOADK                            R7 K9 ["&apos;"]
       16 SETTABLEKS                       R7 R6 K10 ["'"]
       18 NAMECALL                         R3 R0 K11 ["gsub"]
       20 CALL                             R3 3 1
       21 GETTABLEKS                       R4 R1 K12 ["bold"]
       23 JUMPIFNOT                        R4 ; [+6]
       24 LOADK                            R4 K13 ["<b>%*</b>"]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K14 ["format"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 GETTABLEKS                       R4 R1 K15 ["italic"]
       32 JUMPIFNOT                        R4 ; [+6]
       33 LOADK                            R4 K16 ["<i>%*</i>"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K14 ["format"]
       37 CALL                             R4 2 1
       38 MOVE                             R3 R4
       39 GETTABLEKS                       R4 R1 K17 ["strike"]
       41 JUMPIFNOT                        R4 ; [+6]
       42 LOADK                            R4 K18 ["<s>%*</s>"]
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R4 K14 ["format"]
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 GETTABLEKS                       R4 R1 K19 ["linkUrl"]
       50 JUMPIFNOT                        R4 ; [+21]
       51 LOADB                            R4 0
       52 JUMPIFEQKNIL                     R2 ; [+7]
       54 GETTABLEKS                       R5 R1 K19 ["linkUrl"]
       56 JUMPIFEQ                         R5 R2 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 JUMPIFNOT                        R4 ; [+2]
       61 LOADK                            R5 K20 ["#6BB5FF"]
       62 JUMP                             ; [+1]
       63 LOADK                            R5 K21 ["#4A90D9"]
       64 LOADK                            R6 K22 ["<font color=\"%*\"><u>%*</u></font>"]
       65 MOVE                             R8 R5
       66 MOVE                             R9 R3
       67 NAMECALL                         R6 R6 K14 ["format"]
       69 CALL                             R6 3 1
       70 MOVE                             R3 R6
       71 RETURN                           R3 1
       72 GETTABLEKS                       R4 R1 K23 ["color"]
       74 JUMPIFNOT                        R4 ; [+8]
       75 LOADK                            R4 K24 ["<font color=\"%*\">%*</font>"]
       76 GETTABLEKS                       R6 R1 K23 ["color"]
       78 MOVE                             R7 R3
       79 NAMECALL                         R4 R4 K14 ["format"]
       81 CALL                             R4 3 1
       82 MOVE                             R3 R4
       83 RETURN                           R3 1

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["globalIndex"]
        8 JUMPIFNOTEQ                      R9 R1 ; [+100]
       10 JUMPIFNOT                        R2 ; [+189]
       11 LOADN                            R9 0
       12 JUMPIFNOTLT                      R9 R2 ; [+187]
       14 GETTABLEKS                       R9 R8 K1 ["type"]
       16 JUMPIFNOTEQKS                    R9 K2 ["text"] ; [+183]
       18 GETTABLEKS                       R9 R8 K2 ["text"]
       20 JUMPIFNOT                        R9 ; [+179]
       21 GETTABLEKS                       R9 R8 K2 ["text"]
       23 JUMPIFEQKS                       R9 K3 ["\n"] ; [+176]
       25 GETTABLEKS                       R12 R8 K2 ["text"]
       27 LOADN                            R14 1
       28 MOVE                             R15 R2
       29 NAMECALL                         R12 R12 K4 ["sub"]
       31 CALL                             R12 3 1
       32 LOADK                            R15 K5 ["[&<>\"']"]
       33 NEWTABLE                         R16 8 0
       35 LOADK                            R17 K6 ["&amp;"]
       36 SETTABLEKS                       R17 R16 K7 ["&"]
       38 LOADK                            R17 K8 ["&lt;"]
       39 SETTABLEKS                       R17 R16 K9 ["<"]
       41 LOADK                            R17 K10 ["&gt;"]
       42 SETTABLEKS                       R17 R16 K11 [">"]
       44 LOADK                            R17 K12 ["&quot;"]
       45 SETTABLEKS                       R17 R16 K13 ["\""]
       47 LOADK                            R17 K14 ["&apos;"]
       48 SETTABLEKS                       R17 R16 K15 ["'"]
       50 NAMECALL                         R13 R12 K16 ["gsub"]
       52 CALL                             R13 3 1
       53 GETTABLEKS                       R14 R8 K17 ["bold"]
       55 JUMPIFNOT                        R14 ; [+6]
       56 LOADK                            R14 K18 ["<b>%*</b>"]
       57 MOVE                             R16 R13
       58 NAMECALL                         R14 R14 K19 ["format"]
       60 CALL                             R14 2 1
       61 MOVE                             R13 R14
       62 GETTABLEKS                       R14 R8 K20 ["italic"]
       64 JUMPIFNOT                        R14 ; [+6]
       65 LOADK                            R14 K21 ["<i>%*</i>"]
       66 MOVE                             R16 R13
       67 NAMECALL                         R14 R14 K19 ["format"]
       69 CALL                             R14 2 1
       70 MOVE                             R13 R14
       71 GETTABLEKS                       R14 R8 K22 ["strike"]
       73 JUMPIFNOT                        R14 ; [+6]
       74 LOADK                            R14 K23 ["<s>%*</s>"]
       75 MOVE                             R16 R13
       76 NAMECALL                         R14 R14 K19 ["format"]
       78 CALL                             R14 2 1
       79 MOVE                             R13 R14
       80 GETTABLEKS                       R14 R8 K24 ["linkUrl"]
       82 JUMPIFNOT                        R14 ; [+7]
       83 LOADK                            R14 K25 ["<font color=\"#4A90D9\"><u>%*</u></font>"]
       84 MOVE                             R16 R13
       85 NAMECALL                         R14 R14 K19 ["format"]
       87 CALL                             R14 2 1
       88 MOVE                             R13 R14
       89 JUMP                             ; [+11]
       90 GETTABLEKS                       R14 R8 K26 ["color"]
       92 JUMPIFNOT                        R14 ; [+8]
       93 LOADK                            R14 K27 ["<font color=\"%*\">%*</font>"]
       94 GETTABLEKS                       R16 R8 K26 ["color"]
       96 MOVE                             R17 R13
       97 NAMECALL                         R14 R14 K19 ["format"]
       99 CALL                             R14 3 1
      100 MOVE                             R13 R14
      101 MOVE                             R11 R13
      102 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      104 MOVE                             R10 R3
      105 GETIMPORT                        R9 K30 [table.insert]
      107 CALL                             R9 2 0
      108 JUMP                             ; [+91]
      109 GETTABLEKS                       R9 R8 K1 ["type"]
      111 JUMPIFNOTEQKS                    R9 K2 ["text"] ; [+86]
      113 GETTABLEKS                       R9 R8 K2 ["text"]
      115 JUMPIFNOT                        R9 ; [+82]
      116 GETTABLEKS                       R9 R8 K2 ["text"]
      118 JUMPIFEQKS                       R9 K3 ["\n"] ; [+79]
      120 GETTABLEKS                       R12 R8 K2 ["text"]
      122 LOADK                            R15 K5 ["[&<>\"']"]
      123 NEWTABLE                         R16 8 0
      125 LOADK                            R17 K6 ["&amp;"]
      126 SETTABLEKS                       R17 R16 K7 ["&"]
      128 LOADK                            R17 K8 ["&lt;"]
      129 SETTABLEKS                       R17 R16 K9 ["<"]
      131 LOADK                            R17 K10 ["&gt;"]
      132 SETTABLEKS                       R17 R16 K11 [">"]
      134 LOADK                            R17 K12 ["&quot;"]
      135 SETTABLEKS                       R17 R16 K13 ["\""]
      137 LOADK                            R17 K14 ["&apos;"]
      138 SETTABLEKS                       R17 R16 K15 ["'"]
      140 NAMECALL                         R13 R12 K16 ["gsub"]
      142 CALL                             R13 3 1
      143 GETTABLEKS                       R14 R8 K17 ["bold"]
      145 JUMPIFNOT                        R14 ; [+6]
      146 LOADK                            R14 K18 ["<b>%*</b>"]
      147 MOVE                             R16 R13
      148 NAMECALL                         R14 R14 K19 ["format"]
      150 CALL                             R14 2 1
      151 MOVE                             R13 R14
      152 GETTABLEKS                       R14 R8 K20 ["italic"]
      154 JUMPIFNOT                        R14 ; [+6]
      155 LOADK                            R14 K21 ["<i>%*</i>"]
      156 MOVE                             R16 R13
      157 NAMECALL                         R14 R14 K19 ["format"]
      159 CALL                             R14 2 1
      160 MOVE                             R13 R14
      161 GETTABLEKS                       R14 R8 K22 ["strike"]
      163 JUMPIFNOT                        R14 ; [+6]
      164 LOADK                            R14 K23 ["<s>%*</s>"]
      165 MOVE                             R16 R13
      166 NAMECALL                         R14 R14 K19 ["format"]
      168 CALL                             R14 2 1
      169 MOVE                             R13 R14
      170 GETTABLEKS                       R14 R8 K24 ["linkUrl"]
      172 JUMPIFNOT                        R14 ; [+7]
      173 LOADK                            R14 K25 ["<font color=\"#4A90D9\"><u>%*</u></font>"]
      174 MOVE                             R16 R13
      175 NAMECALL                         R14 R14 K19 ["format"]
      177 CALL                             R14 2 1
      178 MOVE                             R13 R14
      179 JUMP                             ; [+11]
      180 GETTABLEKS                       R14 R8 K26 ["color"]
      182 JUMPIFNOT                        R14 ; [+8]
      183 LOADK                            R14 K27 ["<font color=\"%*\">%*</font>"]
      184 GETTABLEKS                       R16 R8 K26 ["color"]
      186 MOVE                             R17 R13
      187 NAMECALL                         R14 R14 K19 ["format"]
      189 CALL                             R14 3 1
      190 MOVE                             R13 R14
      191 MOVE                             R11 R13
      192 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      194 MOVE                             R10 R3
      195 GETIMPORT                        R9 K30 [table.insert]
      197 CALL                             R9 2 0
      198 FORGLOOP                         R4 2 ; [-193]
      200 GETIMPORT                        R4 K32 [table.concat]
      202 MOVE                             R5 R3
      203 CALL                             R4 1 -1
      204 RETURN                           R4 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLE                      R2 R3 ; [+47]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R0 K0 ["sub"]
        9 CALL                             R3 2 1
       10 LOADK                            R6 K1 ["^(%s*%S+%s*)"]
       11 NAMECALL                         R4 R3 K2 ["match"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+10]
       15 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R4
       19 GETIMPORT                        R5 K5 [table.insert]
       21 CALL                             R5 2 0
       22 LENGTH                           R5 R4
       23 ADD                              R2 R2 R5
       24 JUMP                             ; [+26]
       25 LOADK                            R7 K6 ["^(%s+)"]
       26 NAMECALL                         R5 R3 K2 ["match"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+22]
       30 LENGTH                           R6 R1
       31 LOADN                            R7 0
       32 JUMPIFNOTLT                      R7 R6 ; [+7]
       34 LENGTH                           R6 R1
       35 GETTABLE                         R8 R1 R6
       36 MOVE                             R9 R5
       37 CONCAT                           R7 R8 R9
       38 SETTABLE                         R7 R1 R6
       39 JUMP                             ; [+7]
       40 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R5
       44 GETIMPORT                        R6 K5 [table.insert]
       46 CALL                             R6 2 0
       47 LENGTH                           R6 R5
       48 ADD                              R2 R2 R6
       49 JUMP                             ; [+1]
       50 RETURN                           R1 1
       51 JUMPBACK                         ; [-49]
       52 RETURN                           R1 1

PROTO_8:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["name"]
        6 JUMPIFNOTEQKS                    R7 K1 ["TEXT"] ; [+101]
        8 GETTABLEKS                       R8 R6 K3 ["text"]
       10 ORK                              R7 R8 K2 [""]
       11 LENGTH                           R8 R7
       12 JUMPIFNOTEQKN                    R8 K4 [0] ; [+43]
       14 GETUPVAL                         R9 0
       15 DUPTABLE                         R10 K14 [{"type", "text", "bold", "italic", "strike", "color", "linkUrl", "width", "sourceNode", "sourceOffset"}]
       16 LOADK                            R11 K3 ["text"]
       17 SETTABLEKS                       R11 R10 K5 ["type"]
       19 LOADK                            R11 K2 [""]
       20 SETTABLEKS                       R11 R10 K3 ["text"]
       22 GETTABLEKS                       R11 R1 K6 ["bold"]
       24 SETTABLEKS                       R11 R10 K6 ["bold"]
       26 GETTABLEKS                       R11 R1 K7 ["italic"]
       28 SETTABLEKS                       R11 R10 K7 ["italic"]
       30 GETTABLEKS                       R11 R1 K8 ["strike"]
       32 SETTABLEKS                       R11 R10 K8 ["strike"]
       34 GETTABLEKS                       R11 R1 K9 ["color"]
       36 SETTABLEKS                       R11 R10 K9 ["color"]
       38 GETTABLEKS                       R11 R1 K10 ["linkUrl"]
       40 SETTABLEKS                       R11 R10 K10 ["linkUrl"]
       42 LOADN                            R11 0
       43 SETTABLEKS                       R11 R10 K11 ["width"]
       45 SETTABLEKS                       R6 R10 K12 ["sourceNode"]
       47 LOADN                            R11 0
       48 SETTABLEKS                       R11 R10 K13 ["sourceOffset"]
       50 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       52 GETIMPORT                        R8 K17 [table.insert]
       54 CALL                             R8 2 0
       55 JUMP                             ; [+276]
       56 GETUPVAL                         R8 1
       57 MOVE                             R9 R7
       58 CALL                             R8 1 1
       59 LOADN                            R9 0
       60 MOVE                             R10 R8
       61 LOADNIL                          R11
       62 LOADNIL                          R12
       63 FORGPREP                         R10
       64 GETUPVAL                         R16 0
       65 DUPTABLE                         R17 K14 [{"type", "text", "bold", "italic", "strike", "color", "linkUrl", "width", "sourceNode", "sourceOffset"}]
       66 LOADK                            R18 K3 ["text"]
       67 SETTABLEKS                       R18 R17 K5 ["type"]
       69 SETTABLEKS                       R14 R17 K3 ["text"]
       71 GETTABLEKS                       R18 R1 K6 ["bold"]
       73 SETTABLEKS                       R18 R17 K6 ["bold"]
       75 GETTABLEKS                       R18 R1 K7 ["italic"]
       77 SETTABLEKS                       R18 R17 K7 ["italic"]
       79 GETTABLEKS                       R18 R1 K8 ["strike"]
       81 SETTABLEKS                       R18 R17 K8 ["strike"]
       83 GETTABLEKS                       R18 R1 K9 ["color"]
       85 SETTABLEKS                       R18 R17 K9 ["color"]
       87 GETTABLEKS                       R18 R1 K10 ["linkUrl"]
       89 SETTABLEKS                       R18 R17 K10 ["linkUrl"]
       91 LOADN                            R18 0
       92 SETTABLEKS                       R18 R17 K11 ["width"]
       94 SETTABLEKS                       R6 R17 K12 ["sourceNode"]
       96 SETTABLEKS                       R9 R17 K13 ["sourceOffset"]
       98 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
      100 GETIMPORT                        R15 K17 [table.insert]
      102 CALL                             R15 2 0
      103 LENGTH                           R15 R14
      104 ADD                              R9 R9 R15
      105 FORGLOOP                         R10 2 ; [-42]
      107 JUMP                             ; [+224]
      108 GETTABLEKS                       R7 R6 K0 ["name"]
      110 JUMPIFNOTEQKS                    R7 K18 ["STYLED_TEXT"] ; [+44]
      112 GETIMPORT                        R7 K20 [table.clone]
      114 MOVE                             R8 R1
      115 CALL                             R7 1 1
      116 GETTABLEKS                       R8 R6 K21 ["attributes"]
      118 JUMPIFNOT                        R8 ; [+4]
      119 GETTABLEKS                       R8 R6 K21 ["attributes"]
      121 GETTABLEKS                       R8 R8 K22 ["style"]
      123 JUMPIFNOTEQKS                    R8 K23 ["BOLD"] ; [+5]
      125 LOADB                            R9 1
      126 SETTABLEKS                       R9 R7 K6 ["bold"]
      128 JUMP                             ; [+17]
      129 JUMPIFNOTEQKS                    R8 K24 ["ITALIC"] ; [+5]
      131 LOADB                            R9 1
      132 SETTABLEKS                       R9 R7 K7 ["italic"]
      134 JUMP                             ; [+11]
      135 JUMPIFNOTEQKS                    R8 K25 ["STRIKE"] ; [+5]
      137 LOADB                            R9 1
      138 SETTABLEKS                       R9 R7 K8 ["strike"]
      140 JUMP                             ; [+5]
      141 JUMPIFNOTEQKS                    R8 K26 ["INLINE_CODE"] ; [+4]
      143 LOADK                            R9 K27 ["#d63384"]
      144 SETTABLEKS                       R9 R7 K9 ["color"]
      146 GETUPVAL                         R9 2
      147 GETTABLEKS                       R10 R6 K28 ["children"]
      149 JUMPIF                           R10 ; [+2]
      150 NEWTABLE                         R10 0 0
      152 MOVE                             R11 R7
      153 CALL                             R9 2 0
      154 JUMP                             ; [+177]
      155 GETTABLEKS                       R7 R6 K0 ["name"]
      157 JUMPIFNOTEQKS                    R7 K29 ["LINK"] ; [+90]
      159 GETIMPORT                        R7 K20 [table.clone]
      161 MOVE                             R8 R1
      162 CALL                             R7 1 1
      163 GETTABLEKS                       R9 R6 K21 ["attributes"]
      165 JUMPIFNOT                        R9 ; [+5]
      166 GETTABLEKS                       R8 R6 K21 ["attributes"]
      168 GETTABLEKS                       R8 R8 K30 ["url"]
      170 JUMPIF                           R8 ; [+4]
      171 GETTABLEKS                       R8 R6 K30 ["url"]
      173 JUMPIF                           R8 ; [+1]
      174 LOADK                            R8 K2 [""]
      175 SETTABLEKS                       R8 R7 K10 ["linkUrl"]
      177 GETTABLEKS                       R8 R6 K28 ["children"]
      179 JUMPIFNOT                        R8 ; [+12]
      180 GETTABLEKS                       R9 R6 K28 ["children"]
      182 LENGTH                           R8 R9
      183 LOADN                            R9 0
      184 JUMPIFNOTLT                      R9 R8 ; [+7]
      186 GETUPVAL                         R8 2
      187 GETTABLEKS                       R9 R6 K28 ["children"]
      189 MOVE                             R10 R7
      190 CALL                             R8 2 0
      191 JUMP                             ; [+140]
      192 GETTABLEKS                       R8 R6 K3 ["text"]
      194 JUMPIFNOT                        R8 ; [+137]
      195 GETUPVAL                         R8 1
      196 GETTABLEKS                       R9 R6 K3 ["text"]
      198 CALL                             R8 1 1
      199 LOADN                            R9 0
      200 MOVE                             R10 R8
      201 LOADNIL                          R11
      202 LOADNIL                          R12
      203 FORGPREP                         R10
      204 GETUPVAL                         R16 0
      205 DUPTABLE                         R17 K14 [{"type", "text", "bold", "italic", "strike", "color", "linkUrl", "width", "sourceNode", "sourceOffset"}]
      206 LOADK                            R18 K3 ["text"]
      207 SETTABLEKS                       R18 R17 K5 ["type"]
      209 SETTABLEKS                       R14 R17 K3 ["text"]
      211 GETTABLEKS                       R18 R7 K6 ["bold"]
      213 SETTABLEKS                       R18 R17 K6 ["bold"]
      215 GETTABLEKS                       R18 R7 K7 ["italic"]
      217 SETTABLEKS                       R18 R17 K7 ["italic"]
      219 GETTABLEKS                       R18 R7 K8 ["strike"]
      221 SETTABLEKS                       R18 R17 K8 ["strike"]
      223 GETTABLEKS                       R18 R7 K9 ["color"]
      225 SETTABLEKS                       R18 R17 K9 ["color"]
      227 GETTABLEKS                       R18 R7 K10 ["linkUrl"]
      229 SETTABLEKS                       R18 R17 K10 ["linkUrl"]
      231 LOADN                            R18 0
      232 SETTABLEKS                       R18 R17 K11 ["width"]
      234 SETTABLEKS                       R6 R17 K12 ["sourceNode"]
      236 SETTABLEKS                       R9 R17 K13 ["sourceOffset"]
      238 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
      240 GETIMPORT                        R15 K17 [table.insert]
      242 CALL                             R15 2 0
      243 LENGTH                           R15 R14
      244 ADD                              R9 R9 R15
      245 FORGLOOP                         R10 2 ; [-42]
      247 JUMP                             ; [+84]
      248 GETTABLEKS                       R7 R6 K0 ["name"]
      250 JUMPIFNOTEQKS                    R7 K31 ["IMAGE"] ; [+41]
      252 GETTABLEKS                       R8 R6 K21 ["attributes"]
      254 JUMPIFNOT                        R8 ; [+5]
      255 GETTABLEKS                       R7 R6 K21 ["attributes"]
      257 GETTABLEKS                       R7 R7 K30 ["url"]
      259 JUMPIF                           R7 ; [+1]
      260 LOADK                            R7 K2 [""]
      261 GETUPVAL                         R9 0
      262 DUPTABLE                         R10 K35 [{"type", "imageUrl", "text", "width", "imageWidth", "imageHeight", "sourceNode", "sourceOffset"}]
      263 LOADK                            R11 K36 ["image"]
      264 SETTABLEKS                       R11 R10 K5 ["type"]
      266 SETTABLEKS                       R7 R10 K32 ["imageUrl"]
      268 GETTABLEKS                       R11 R6 K3 ["text"]
      270 SETTABLEKS                       R11 R10 K3 ["text"]
      272 LOADN                            R11 0
      273 SETTABLEKS                       R11 R10 K11 ["width"]
      275 LOADN                            R11 16
      276 SETTABLEKS                       R11 R10 K33 ["imageWidth"]
      278 LOADN                            R11 16
      279 SETTABLEKS                       R11 R10 K34 ["imageHeight"]
      281 SETTABLEKS                       R6 R10 K12 ["sourceNode"]
      283 LOADN                            R11 0
      284 SETTABLEKS                       R11 R10 K13 ["sourceOffset"]
      286 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      288 GETIMPORT                        R8 K17 [table.insert]
      290 CALL                             R8 2 0
      291 JUMP                             ; [+40]
      292 GETTABLEKS                       R7 R6 K0 ["name"]
      294 JUMPIFNOTEQKS                    R7 K37 ["BREAK"] ; [+23]
      296 GETUPVAL                         R8 0
      297 DUPTABLE                         R9 K38 [{"type", "text", "width", "sourceNode", "sourceOffset"}]
      298 LOADK                            R10 K3 ["text"]
      299 SETTABLEKS                       R10 R9 K5 ["type"]
      301 LOADK                            R10 K39 ["\n"]
      302 SETTABLEKS                       R10 R9 K3 ["text"]
      304 LOADN                            R10 0
      305 SETTABLEKS                       R10 R9 K11 ["width"]
      307 SETTABLEKS                       R6 R9 K12 ["sourceNode"]
      309 LOADN                            R10 0
      310 SETTABLEKS                       R10 R9 K13 ["sourceOffset"]
      312 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      314 GETIMPORT                        R7 K17 [table.insert]
      316 CALL                             R7 2 0
      317 JUMP                             ; [+14]
      318 GETTABLEKS                       R7 R6 K28 ["children"]
      320 JUMPIFNOT                        R7 ; [+11]
      321 GETTABLEKS                       R8 R6 K28 ["children"]
      323 LENGTH                           R7 R8
      324 LOADN                            R8 0
      325 JUMPIFNOTLT                      R8 R7 ; [+6]
      327 GETUPVAL                         R7 2
      328 GETTABLEKS                       R8 R6 K28 ["children"]
      330 MOVE                             R9 R1
      331 CALL                             R7 2 0
      332 FORGLOOP                         R2 2 ; [-329]
      334 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R4
       10 MOVE                             R5 R4
       11 MOVE                             R6 R0
       12 MOVE                             R7 R3
       13 CALL                             R5 2 0
       14 MOVE                             R5 R2
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 SETTABLEKS                       R8 R9 K0 ["globalIndex"]
       20 FORGLOOP                         R5 2 ; [-3]
       22 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [string.split]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 ["\n"]
        6 CALL                             R3 2 1
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 DUPTABLE                         R11 K7 [{"name", "children", "text"}]
       12 LOADK                            R12 K8 ["TEXT"]
       13 SETTABLEKS                       R12 R11 K4 ["name"]
       15 NEWTABLE                         R12 0 0
       17 SETTABLEKS                       R12 R11 K5 ["children"]
       19 SETTABLEKS                       R8 R11 K6 ["text"]
       21 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K11 [table.insert]
       26 CALL                             R9 2 0
       27 LENGTH                           R9 R3
       28 JUMPIFNOTLT                      R7 R9 ; [+15]
       30 DUPTABLE                         R11 K12 [{"name", "children"}]
       31 LOADK                            R12 K13 ["BREAK"]
       32 SETTABLEKS                       R12 R11 K4 ["name"]
       34 NEWTABLE                         R12 0 0
       36 SETTABLEKS                       R12 R11 K5 ["children"]
       38 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       40 MOVE                             R10 R2
       41 GETIMPORT                        R9 K11 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-34]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K14 ["buildSegments"]
       49 MOVE                             R5 R2
       50 MOVE                             R6 R1
       51 CALL                             R4 2 -1
       52 RETURN                           R4 -1

PROTO_11:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["type"]
        6 JUMPIFNOTEQKS                    R8 K1 ["image"] ; [+7]
        8 GETTABLEKS                       R9 R7 K3 ["imageWidth"]
       10 ORK                              R8 R9 K2 [16]
       11 SETTABLEKS                       R8 R7 K4 ["width"]
       13 JUMP                             ; [+131]
       14 GETTABLEKS                       R8 R7 K5 ["text"]
       16 JUMPIFNOTEQKS                    R8 K6 ["\n"] ; [+5]
       18 LOADN                            R8 0
       19 SETTABLEKS                       R8 R7 K4 ["width"]
       21 JUMP                             ; [+123]
       22 GETTABLEKS                       R11 R7 K5 ["text"]
       24 ORK                              R10 R11 K7 [""]
       25 LOADK                            R13 K8 ["[&<>\"']"]
       26 NEWTABLE                         R14 8 0
       28 LOADK                            R15 K9 ["&amp;"]
       29 SETTABLEKS                       R15 R14 K10 ["&"]
       31 LOADK                            R15 K11 ["&lt;"]
       32 SETTABLEKS                       R15 R14 K12 ["<"]
       34 LOADK                            R15 K13 ["&gt;"]
       35 SETTABLEKS                       R15 R14 K14 [">"]
       37 LOADK                            R15 K15 ["&quot;"]
       38 SETTABLEKS                       R15 R14 K16 ["\""]
       40 LOADK                            R15 K17 ["&apos;"]
       41 SETTABLEKS                       R15 R14 K18 ["'"]
       43 NAMECALL                         R11 R10 K19 ["gsub"]
       45 CALL                             R11 3 1
       46 GETTABLEKS                       R12 R7 K20 ["bold"]
       48 JUMPIFNOT                        R12 ; [+6]
       49 LOADK                            R12 K21 ["<b>%*</b>"]
       50 MOVE                             R14 R11
       51 NAMECALL                         R12 R12 K22 ["format"]
       53 CALL                             R12 2 1
       54 MOVE                             R11 R12
       55 GETTABLEKS                       R12 R7 K23 ["italic"]
       57 JUMPIFNOT                        R12 ; [+6]
       58 LOADK                            R12 K24 ["<i>%*</i>"]
       59 MOVE                             R14 R11
       60 NAMECALL                         R12 R12 K22 ["format"]
       62 CALL                             R12 2 1
       63 MOVE                             R11 R12
       64 GETTABLEKS                       R12 R7 K25 ["strike"]
       66 JUMPIFNOT                        R12 ; [+6]
       67 LOADK                            R12 K26 ["<s>%*</s>"]
       68 MOVE                             R14 R11
       69 NAMECALL                         R12 R12 K22 ["format"]
       71 CALL                             R12 2 1
       72 MOVE                             R11 R12
       73 GETTABLEKS                       R12 R7 K27 ["linkUrl"]
       75 JUMPIFNOT                        R12 ; [+7]
       76 LOADK                            R12 K28 ["<font color=\"#4A90D9\"><u>%*</u></font>"]
       77 MOVE                             R14 R11
       78 NAMECALL                         R12 R12 K22 ["format"]
       80 CALL                             R12 2 1
       81 MOVE                             R11 R12
       82 JUMP                             ; [+11]
       83 GETTABLEKS                       R12 R7 K29 ["color"]
       85 JUMPIFNOT                        R12 ; [+8]
       86 LOADK                            R12 K30 ["<font color=\"%*\">%*</font>"]
       87 GETTABLEKS                       R14 R7 K29 ["color"]
       89 MOVE                             R15 R11
       90 NAMECALL                         R12 R12 K22 ["format"]
       92 CALL                             R12 3 1
       93 MOVE                             R11 R12
       94 MOVE                             R9 R11
       95 LOADK                            R11 K31 ["%*|%*"]
       96 MOVE                             R13 R2
       97 MOVE                             R14 R9
       98 NAMECALL                         R11 R11 K22 ["format"]
      100 CALL                             R11 3 1
      101 MOVE                             R10 R11
      102 GETUPVAL                         R12 0
      103 GETTABLE                         R11 R12 R10
      104 JUMPIFEQKNIL                     R11 ; [+3]
      106 MOVE                             R8 R11
      107 JUMP                             ; [+35]
      108 GETUPVAL                         R13 1
      109 MOVE                             R15 R9
      110 LOADK                            R16 K32 ["|"]
      111 CONCAT                           R14 R15 R16
      112 MOVE                             R15 R1
      113 MOVE                             R16 R2
      114 CALL                             R13 3 1
      115 LOADK                            R16 K31 ["%*|%*"]
      116 MOVE                             R18 R2
      117 FASTCALL1                        TOSTRING R1 ; [+3]
      118 MOVE                             R20 R1
      119 GETIMPORT                        R19 K34 [tostring]
      121 CALL                             R19 1 1
      122 NAMECALL                         R16 R16 K22 ["format"]
      124 CALL                             R16 3 1
      125 MOVE                             R15 R16
      126 GETUPVAL                         R17 2
      127 GETTABLE                         R16 R17 R15
      128 JUMPIFNOT                        R16 ; [+2]
      129 MOVE                             R14 R16
      130 JUMP                             ; [+8]
      131 GETUPVAL                         R17 1
      132 LOADK                            R18 K32 ["|"]
      133 MOVE                             R19 R1
      134 MOVE                             R20 R2
      135 CALL                             R17 3 1
      136 GETUPVAL                         R18 2
      137 SETTABLE                         R17 R18 R15
      138 MOVE                             R14 R17
      139 SUB                              R12 R13 R14
      140 GETUPVAL                         R13 0
      141 SETTABLE                         R12 R13 R10
      142 MOVE                             R8 R12
      143 SETTABLEKS                       R8 R7 K4 ["width"]
      145 FORGLOOP                         R3 2 ; [-142]
      147 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_13:
        0 LOADK                            R3 K0 ["%*|__lineHeight__"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R3 R4 R2
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R3 1
       10 GETUPVAL                         R4 1
       11 JUMPIF                           R4 ; [+15]
       12 GETIMPORT                        R4 K4 [Instance.new]
       14 LOADK                            R5 K5 ["GetTextBoundsParams"]
       15 CALL                             R4 1 1
       16 FASTCALL2K                       ASSERT R4 K6 ; [+5]
       18 MOVE                             R6 R4
       19 LOADK                            R7 K6 ["GetTextBoundsParams constructor failed"]
       20 GETIMPORT                        R5 K8 [assert]
       22 CALL                             R5 2 0
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K9 ["RichText"]
       26 SETUPVAL                         R4 1
       27 GETUPVAL                         R4 1
       28 SETTABLEKS                       R0 R4 K10 ["Font"]
       30 SETTABLEKS                       R1 R4 K11 ["Size"]
       32 LOADK                            R5 K12 ["Mg"]
       33 SETTABLEKS                       R5 R4 K13 ["Text"]
       35 LOADB                            R5 0
       36 SETTABLEKS                       R5 R4 K9 ["RichText"]
       38 GETIMPORT                        R5 K15 [pcall]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R4
       43 CALL                             R5 1 2
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R4 K9 ["RichText"]
       47 JUMPIFNOT                        R5 ; [+3]
       48 GETTABLEKS                       R7 R6 K16 ["Y"]
       50 JUMP                             ; [+1]
       51 MULK                             R7 R1 K17 [1.2]
       52 GETUPVAL                         R8 0
       53 SETTABLE                         R7 R8 R2
       54 RETURN                           R7 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+13]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
        9 GETIMPORT                        R0 K2 [table.insert]
       11 CALL                             R0 2 0
       12 NEWTABLE                         R0 0 0
       14 SETUPVAL                         R0 0
       15 LOADN                            R0 0
       16 SETUPVAL                         R0 2
       17 RETURN                           R0 0

PROTO_15:
        0 LOADN                            R2 0
        1 JUMPIFNOTLE                      R1 R2 ; [+7]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 LOADN                            R4 0
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R4
       18 MOVE                             R6 R0
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R11 R10 K0 ["type"]
       24 JUMPIFNOTEQKS                    R11 K1 ["text"] ; [+20]
       26 GETTABLEKS                       R11 R10 K1 ["text"]
       28 JUMPIFNOTEQKS                    R11 K2 ["\n"] ; [+16]
       30 LENGTH                           R11 R3
       31 LOADN                            R12 0
       32 JUMPIFNOTLT                      R12 R11 ; [+45]
       34 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       36 MOVE                             R12 R2
       37 MOVE                             R13 R3
       38 GETIMPORT                        R11 K5 [table.insert]
       40 CALL                             R11 2 0
       41 NEWTABLE                         R3 0 0
       43 LOADN                            R4 0
       44 JUMP                             ; [+33]
       45 GETTABLEKS                       R12 R10 K6 ["width"]
       47 ADD                              R11 R4 R12
       48 JUMPIFNOTLT                      R1 R11 ; [+19]
       50 LENGTH                           R11 R3
       51 LOADN                            R12 0
       52 JUMPIFNOTLT                      R12 R11 ; [+15]
       54 LENGTH                           R11 R3
       55 LOADN                            R12 0
       56 JUMPIFNOTLT                      R12 R11 ; [+11]
       58 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       60 MOVE                             R12 R2
       61 MOVE                             R13 R3
       62 GETIMPORT                        R11 K5 [table.insert]
       64 CALL                             R11 2 0
       65 NEWTABLE                         R3 0 0
       67 LOADN                            R4 0
       68 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       70 MOVE                             R12 R3
       71 MOVE                             R13 R10
       72 GETIMPORT                        R11 K5 [table.insert]
       74 CALL                             R11 2 0
       75 GETTABLEKS                       R11 R10 K6 ["width"]
       77 ADD                              R4 R4 R11
       78 FORGLOOP                         R6 2 ; [-57]
       80 LENGTH                           R6 R3
       81 LOADN                            R7 0
       82 JUMPIFNOTLT                      R7 R6 ; [+11]
       84 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       86 MOVE                             R7 R2
       87 MOVE                             R8 R3
       88 GETIMPORT                        R6 K5 [table.insert]
       90 CALL                             R6 2 0
       91 NEWTABLE                         R3 0 0
       93 LOADN                            R4 0
       94 CLOSEUPVALS                      R3
       95 RETURN                           R2 1

PROTO_16:
        0 LENGTH                           R5 R1
        1 JUMPIFEQKN                       R5 K0 [0] ; [+4]
        3 LOADN                            R5 0
        4 JUMPIFNOTLE                      R2 R5 ; [+3]
        6 LOADNIL                          R5
        7 RETURN                           R5 1
        8 GETTABLEKS                       R8 R0 K2 ["Y"]
       10 DIV                              R7 R8 R2
       11 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       12 GETIMPORT                        R6 K5 [math.floor]
       14 CALL                             R6 1 1
       15 ADDK                             R5 R6 K1 [1]
       16 LOADN                            R6 1
       17 JUMPIFLT                         R5 R6 ; [+4]
       19 LENGTH                           R6 R1
       20 JUMPIFNOTLT                      R6 R5 ; [+3]
       22 LOADNIL                          R6
       23 RETURN                           R6 1
       24 GETTABLE                         R6 R1 R5
       25 JUMPIFNOT                        R3 ; [+1]
       26 JUMPIF                           R4 ; [+26]
       27 LOADN                            R7 0
       28 MOVE                             R8 R6
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 FORGPREP                         R8
       32 GETTABLEKS                       R13 R0 K6 ["X"]
       34 JUMPIFNOTLE                      R7 R13 ; [+11]
       36 GETTABLEKS                       R13 R0 K6 ["X"]
       38 GETTABLEKS                       R15 R12 K7 ["width"]
       40 ADD                              R14 R7 R15
       41 JUMPIFNOTLT                      R13 R14 ; [+4]
       43 GETTABLEKS                       R13 R12 K8 ["linkUrl"]
       45 RETURN                           R13 1
       46 GETTABLEKS                       R13 R12 K7 ["width"]
       48 ADD                              R7 R7 R13
       49 FORGLOOP                         R8 2 ; [-18]
       51 LOADNIL                          R8
       52 RETURN                           R8 1
       53 MOVE                             R7 R6
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETTABLEKS                       R12 R11 K9 ["type"]
       59 JUMPIFNOTEQKS                    R12 K10 ["text"] ; [+72]
       61 GETTABLEKS                       R12 R11 K10 ["text"]
       63 JUMPIFNOT                        R12 ; [+68]
       64 GETTABLEKS                       R12 R11 K10 ["text"]
       66 JUMPIFEQKS                       R12 K11 ["\n"] ; [+65]
       68 GETTABLEKS                       R12 R11 K12 ["globalIndex"]
       70 GETUPVAL                         R13 0
       71 MOVE                             R14 R6
       72 MOVE                             R15 R12
       73 GETTABLEKS                       R17 R11 K10 ["text"]
       75 LENGTH                           R16 R17
       76 CALL                             R13 3 1
       77 LOADK                            R16 K13 ["%*|%*"]
       78 MOVE                             R18 R4
       79 MOVE                             R19 R13
       80 NAMECALL                         R16 R16 K14 ["format"]
       82 CALL                             R16 3 1
       83 MOVE                             R15 R16
       84 GETUPVAL                         R17 1
       85 GETTABLE                         R16 R17 R15
       86 JUMPIFEQKNIL                     R16 ; [+3]
       88 MOVE                             R14 R16
       89 JUMP                             ; [+35]
       90 GETUPVAL                         R18 2
       91 MOVE                             R20 R13
       92 LOADK                            R21 K15 ["|"]
       93 CONCAT                           R19 R20 R21
       94 MOVE                             R20 R3
       95 MOVE                             R21 R4
       96 CALL                             R18 3 1
       97 LOADK                            R21 K13 ["%*|%*"]
       98 MOVE                             R23 R4
       99 FASTCALL1                        TOSTRING R3 ; [+3]
      100 MOVE                             R25 R3
      101 GETIMPORT                        R24 K17 [tostring]
      103 CALL                             R24 1 1
      104 NAMECALL                         R21 R21 K14 ["format"]
      106 CALL                             R21 3 1
      107 MOVE                             R20 R21
      108 GETUPVAL                         R22 3
      109 GETTABLE                         R21 R22 R20
      110 JUMPIFNOT                        R21 ; [+2]
      111 MOVE                             R19 R21
      112 JUMP                             ; [+8]
      113 GETUPVAL                         R22 2
      114 LOADK                            R23 K15 ["|"]
      115 MOVE                             R24 R3
      116 MOVE                             R25 R4
      117 CALL                             R22 3 1
      118 GETUPVAL                         R23 3
      119 SETTABLE                         R22 R23 R20
      120 MOVE                             R19 R22
      121 SUB                              R17 R18 R19
      122 GETUPVAL                         R18 1
      123 SETTABLE                         R17 R18 R15
      124 MOVE                             R14 R17
      125 GETTABLEKS                       R15 R0 K6 ["X"]
      127 JUMPIFNOTLT                      R15 R14 ; [+4]
      129 GETTABLEKS                       R15 R11 K8 ["linkUrl"]
      131 RETURN                           R15 1
      132 FORGLOOP                         R7 2 ; [-76]
      134 LOADNIL                          R7
      135 RETURN                           R7 1

PROTO_17:
        0 LENGTH                           R5 R1
        1 JUMPIFEQKN                       R5 K0 [0] ; [+4]
        3 LOADN                            R5 0
        4 JUMPIFNOTLE                      R2 R5 ; [+4]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 RETURN                           R5 2
        9 GETTABLEKS                       R8 R0 K2 ["Y"]
       11 DIV                              R7 R8 R2
       12 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       13 GETIMPORT                        R6 K5 [math.floor]
       15 CALL                             R6 1 1
       16 ADDK                             R5 R6 K1 [1]
       17 LOADN                            R6 1
       18 JUMPIFNOTLT                      R5 R6 ; [+3]
       20 LOADN                            R5 1
       21 JUMP                             ; [+4]
       22 LENGTH                           R6 R1
       23 JUMPIFNOTLT                      R6 R5 ; [+2]
       25 LENGTH                           R5 R1
       26 GETTABLE                         R6 R1 R5
       27 GETTABLEKS                       R7 R0 K6 ["X"]
       29 LOADNIL                          R8
       30 LOADN                            R9 0
       31 MOVE                             R10 R6
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 FORGPREP                         R10
       35 GETTABLEKS                       R15 R14 K7 ["type"]
       37 JUMPIFNOTEQKS                    R15 K8 ["text"] ; [+128]
       39 GETTABLEKS                       R15 R14 K8 ["text"]
       41 JUMPIFNOT                        R15 ; [+124]
       42 GETTABLEKS                       R15 R14 K8 ["text"]
       44 JUMPIFEQKS                       R15 K9 ["\n"] ; [+121]
       46 GETTABLEKS                       R15 R14 K10 ["globalIndex"]
       48 GETUPVAL                         R16 0
       49 MOVE                             R17 R6
       50 MOVE                             R18 R15
       51 GETTABLEKS                       R20 R14 K8 ["text"]
       53 LENGTH                           R19 R20
       54 CALL                             R16 3 1
       55 LOADK                            R19 K11 ["%*|%*"]
       56 MOVE                             R21 R4
       57 MOVE                             R22 R16
       58 NAMECALL                         R19 R19 K12 ["format"]
       60 CALL                             R19 3 1
       61 MOVE                             R18 R19
       62 GETUPVAL                         R20 1
       63 GETTABLE                         R19 R20 R18
       64 JUMPIFEQKNIL                     R19 ; [+3]
       66 MOVE                             R17 R19
       67 JUMP                             ; [+35]
       68 GETUPVAL                         R21 2
       69 MOVE                             R23 R16
       70 LOADK                            R24 K13 ["|"]
       71 CONCAT                           R22 R23 R24
       72 MOVE                             R23 R3
       73 MOVE                             R24 R4
       74 CALL                             R21 3 1
       75 LOADK                            R24 K11 ["%*|%*"]
       76 MOVE                             R26 R4
       77 FASTCALL1                        TOSTRING R3 ; [+3]
       78 MOVE                             R28 R3
       79 GETIMPORT                        R27 K15 [tostring]
       81 CALL                             R27 1 1
       82 NAMECALL                         R24 R24 K12 ["format"]
       84 CALL                             R24 3 1
       85 MOVE                             R23 R24
       86 GETUPVAL                         R25 3
       87 GETTABLE                         R24 R25 R23
       88 JUMPIFNOT                        R24 ; [+2]
       89 MOVE                             R22 R24
       90 JUMP                             ; [+8]
       91 GETUPVAL                         R25 2
       92 LOADK                            R26 K13 ["|"]
       93 MOVE                             R27 R3
       94 MOVE                             R28 R4
       95 CALL                             R25 3 1
       96 GETUPVAL                         R26 3
       97 SETTABLE                         R25 R26 R23
       98 MOVE                             R22 R25
       99 SUB                              R20 R21 R22
      100 GETUPVAL                         R21 1
      101 SETTABLE                         R20 R21 R18
      102 MOVE                             R17 R20
      103 JUMPIFNOTLT                      R7 R17 ; [+62]
      105 MOVE                             R8 R14
      106 GETUPVAL                         R18 0
      107 MOVE                             R19 R6
      108 MOVE                             R20 R15
      109 LOADN                            R21 0
      110 CALL                             R18 3 1
      111 LENGTH                           R19 R18
      112 LOADN                            R20 0
      113 JUMPIFNOTLT                      R20 R19 ; [+50]
      115 LOADK                            R20 K11 ["%*|%*"]
      116 MOVE                             R22 R4
      117 MOVE                             R23 R18
      118 NAMECALL                         R20 R20 K12 ["format"]
      120 CALL                             R20 3 1
      121 MOVE                             R19 R20
      122 GETUPVAL                         R21 1
      123 GETTABLE                         R20 R21 R19
      124 JUMPIFEQKNIL                     R20 ; [+3]
      126 MOVE                             R9 R20
      127 JUMP                             ; [+40]
      128 GETUPVAL                         R22 2
      129 MOVE                             R24 R18
      130 LOADK                            R25 K13 ["|"]
      131 CONCAT                           R23 R24 R25
      132 MOVE                             R24 R3
      133 MOVE                             R25 R4
      134 CALL                             R22 3 1
      135 LOADK                            R25 K11 ["%*|%*"]
      136 MOVE                             R27 R4
      137 FASTCALL1                        TOSTRING R3 ; [+3]
      138 MOVE                             R29 R3
      139 GETIMPORT                        R28 K15 [tostring]
      141 CALL                             R28 1 1
      142 NAMECALL                         R25 R25 K12 ["format"]
      144 CALL                             R25 3 1
      145 MOVE                             R24 R25
      146 GETUPVAL                         R26 3
      147 GETTABLE                         R25 R26 R24
      148 JUMPIFNOT                        R25 ; [+2]
      149 MOVE                             R23 R25
      150 JUMP                             ; [+8]
      151 GETUPVAL                         R26 2
      152 LOADK                            R27 K13 ["|"]
      153 MOVE                             R28 R3
      154 MOVE                             R29 R4
      155 CALL                             R26 3 1
      156 GETUPVAL                         R27 3
      157 SETTABLE                         R26 R27 R24
      158 MOVE                             R23 R26
      159 SUB                              R21 R22 R23
      160 GETUPVAL                         R22 1
      161 SETTABLE                         R21 R22 R19
      162 MOVE                             R9 R21
      163 JUMP                             ; [+4]
      164 LOADN                            R9 0
      165 JUMP                             ; [+2]
      166 FORGLOOP                         R10 2 ; [-132]
      168 JUMPIF                           R8 ; [+16]
      169 LENGTH                           R11 R6
      170 GETTABLE                         R10 R6 R11
      171 JUMPIFNOT                        R10 ; [+10]
      172 GETTABLEKS                       R11 R10 K10 ["globalIndex"]
      174 JUMPIFNOT                        R11 ; [+7]
      175 GETTABLEKS                       R11 R10 K10 ["globalIndex"]
      177 GETTABLEKS                       R14 R10 K8 ["text"]
      179 ORK                              R13 R14 K16 [""]
      180 LENGTH                           R12 R13
      181 RETURN                           R11 2
      182 LOADNIL                          R11
      183 LOADNIL                          R12
      184 RETURN                           R11 2
      185 GETTABLEKS                       R10 R8 K7 ["type"]
      187 JUMPIFNOTEQKS                    R10 K8 ["text"] ; [+8]
      189 GETTABLEKS                       R10 R8 K8 ["text"]
      191 JUMPIFNOT                        R10 ; [+4]
      192 GETTABLEKS                       R10 R8 K8 ["text"]
      194 JUMPIFNOTEQKS                    R10 K9 ["\n"] ; [+5]
      196 GETTABLEKS                       R10 R8 K10 ["globalIndex"]
      198 LOADN                            R11 0
      199 RETURN                           R10 2
      200 GETTABLEKS                       R10 R8 K8 ["text"]
      202 GETTABLEKS                       R11 R8 K10 ["globalIndex"]
      204 LOADN                            R12 0
      205 LENGTH                           R13 R10
      206 JUMPIFNOTLT                      R12 R13 ; [+72]
      208 ADD                              R16 R12 R13
      209 DIVK                             R15 R16 K17 [2]
      210 FASTCALL1                        MATH_FLOOR R15 ; [+2]
      211 GETIMPORT                        R14 K5 [math.floor]
      213 CALL                             R14 1 1
      214 GETUPVAL                         R15 0
      215 MOVE                             R16 R6
      216 MOVE                             R17 R11
      217 MOVE                             R18 R14
      218 CALL                             R15 3 1
      219 LENGTH                           R17 R15
      220 LOADN                            R18 0
      221 JUMPIFNOTLT                      R18 R17 ; [+50]
      223 LOADK                            R18 K11 ["%*|%*"]
      224 MOVE                             R20 R4
      225 MOVE                             R21 R15
      226 NAMECALL                         R18 R18 K12 ["format"]
      228 CALL                             R18 3 1
      229 MOVE                             R17 R18
      230 GETUPVAL                         R19 1
      231 GETTABLE                         R18 R19 R17
      232 JUMPIFEQKNIL                     R18 ; [+3]
      234 MOVE                             R16 R18
      235 JUMP                             ; [+37]
      236 GETUPVAL                         R20 2
      237 MOVE                             R22 R15
      238 LOADK                            R23 K13 ["|"]
      239 CONCAT                           R21 R22 R23
      240 MOVE                             R22 R3
      241 MOVE                             R23 R4
      242 CALL                             R20 3 1
      243 LOADK                            R23 K11 ["%*|%*"]
      244 MOVE                             R25 R4
      245 FASTCALL1                        TOSTRING R3 ; [+3]
      246 MOVE                             R27 R3
      247 GETIMPORT                        R26 K15 [tostring]
      249 CALL                             R26 1 1
      250 NAMECALL                         R23 R23 K12 ["format"]
      252 CALL                             R23 3 1
      253 MOVE                             R22 R23
      254 GETUPVAL                         R24 3
      255 GETTABLE                         R23 R24 R22
      256 JUMPIFNOT                        R23 ; [+2]
      257 MOVE                             R21 R23
      258 JUMP                             ; [+8]
      259 GETUPVAL                         R24 2
      260 LOADK                            R25 K13 ["|"]
      261 MOVE                             R26 R3
      262 MOVE                             R27 R4
      263 CALL                             R24 3 1
      264 GETUPVAL                         R25 3
      265 SETTABLE                         R24 R25 R22
      266 MOVE                             R21 R24
      267 SUB                              R19 R20 R21
      268 GETUPVAL                         R20 1
      269 SETTABLE                         R19 R20 R17
      270 MOVE                             R16 R19
      271 JUMP                             ; [+1]
      272 LOADN                            R16 0
      273 JUMPIFNOTLT                      R16 R7 ; [+3]
      275 ADDK                             R12 R14 K1 [1]
      276 JUMP                             ; [+1]
      277 MOVE                             R13 R14
      278 JUMPBACK                         ; [-73]
      279 GETTABLEKS                       R14 R8 K10 ["globalIndex"]
      281 MOVE                             R15 R12
      282 RETURN                           R14 2

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["type"]
        8 JUMPIFEQKS                       R8 K1 ["image"] ; [+26]
       10 GETTABLEKS                       R8 R7 K2 ["text"]
       12 JUMPIFNOTEQKS                    R8 K3 ["\n"] ; [+9]
       14 FASTCALL2K                       TABLE_INSERT R2 K3 ; [+5]
       16 MOVE                             R9 R2
       17 LOADK                            R10 K3 ["\n"]
       18 GETIMPORT                        R8 K6 [table.insert]
       20 CALL                             R8 2 0
       21 JUMP                             ; [+13]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R12 R7 K2 ["text"]
       25 ORK                              R11 R12 K7 [""]
       26 MOVE                             R12 R7
       27 MOVE                             R13 R1
       28 CALL                             R10 3 1
       29 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K6 [table.insert]
       34 CALL                             R8 2 0
       35 FORGLOOP                         R3 2 ; [-30]
       37 GETIMPORT                        R3 K9 [table.concat]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 -1
       41 RETURN                           R3 -1

PROTO_19:
        0 NEWTABLE                         R9 0 0
        2 MOVE                             R10 R0
        3 LOADNIL                          R11
        4 LOADNIL                          R12
        5 FORGPREP                         R10
        6 SUBK                             R16 R13 K0 [1]
        7 MUL                              R15 R16 R1
        8 GETTABLEN                        R17 R14 1
        9 JUMPIFNOT                        R17 ; [+4]
       10 GETTABLEN                        R16 R14 1
       11 GETTABLEKS                       R16 R16 K1 ["globalIndex"]
       13 JUMPIF                           R16 ; [+1]
       14 LOADN                            R16 0
       15 LENGTH                           R19 R14
       16 GETTABLE                         R18 R14 R19
       17 JUMPIFNOT                        R18 ; [+5]
       18 LENGTH                           R18 R14
       19 GETTABLE                         R17 R14 R18
       20 GETTABLEKS                       R17 R17 K1 ["globalIndex"]
       22 JUMPIF                           R17 ; [+1]
       23 LOADN                            R17 0
       24 JUMPIFLT                         R17 R3 ; [+282]
       26 JUMPIFLT                         R5 R16 ; [+280]
       28 LOADNIL                          R18
       29 LOADNIL                          R19
       30 JUMPIFNOTLE                      R3 R16 ; [+5]
       32 JUMPIFNOTEQKN                    R4 K2 [0] ; [+3]
       34 LOADN                            R18 0
       35 JUMP                             ; [+65]
       36 JUMPIFNOTLE                      R16 R3 ; [+63]
       38 JUMPIFNOTLE                      R3 R17 ; [+61]
       40 GETUPVAL                         R20 0
       41 MOVE                             R21 R14
       42 MOVE                             R22 R3
       43 MOVE                             R23 R4
       44 CALL                             R20 3 1
       45 LENGTH                           R21 R20
       46 LOADN                            R22 0
       47 JUMPIFNOTLT                      R22 R21 ; [+50]
       49 LOADK                            R22 K3 ["%*|%*"]
       50 MOVE                             R24 R8
       51 MOVE                             R25 R20
       52 NAMECALL                         R22 R22 K4 ["format"]
       54 CALL                             R22 3 1
       55 MOVE                             R21 R22
       56 GETUPVAL                         R23 1
       57 GETTABLE                         R22 R23 R21
       58 JUMPIFEQKNIL                     R22 ; [+3]
       60 MOVE                             R18 R22
       61 JUMP                             ; [+39]
       62 GETUPVAL                         R24 2
       63 MOVE                             R26 R20
       64 LOADK                            R27 K5 ["|"]
       65 CONCAT                           R25 R26 R27
       66 MOVE                             R26 R7
       67 MOVE                             R27 R8
       68 CALL                             R24 3 1
       69 LOADK                            R27 K3 ["%*|%*"]
       70 MOVE                             R29 R8
       71 FASTCALL1                        TOSTRING R7 ; [+3]
       72 MOVE                             R31 R7
       73 GETIMPORT                        R30 K7 [tostring]
       75 CALL                             R30 1 1
       76 NAMECALL                         R27 R27 K4 ["format"]
       78 CALL                             R27 3 1
       79 MOVE                             R26 R27
       80 GETUPVAL                         R28 3
       81 GETTABLE                         R27 R28 R26
       82 JUMPIFNOT                        R27 ; [+2]
       83 MOVE                             R25 R27
       84 JUMP                             ; [+8]
       85 GETUPVAL                         R28 2
       86 LOADK                            R29 K5 ["|"]
       87 MOVE                             R30 R7
       88 MOVE                             R31 R8
       89 CALL                             R28 3 1
       90 GETUPVAL                         R29 3
       91 SETTABLE                         R28 R29 R26
       92 MOVE                             R25 R28
       93 SUB                              R23 R24 R25
       94 GETUPVAL                         R24 1
       95 SETTABLE                         R23 R24 R21
       96 MOVE                             R18 R23
       97 JUMP                             ; [+3]
       98 LOADN                            R18 0
       99 JUMP                             ; [+1]
      100 LOADN                            R18 0
      101 JUMPIFNOTLE                      R17 R5 ; [+128]
      103 LENGTH                           R21 R14
      104 GETTABLE                         R20 R14 R21
      105 JUMPIFNOTLT                      R17 R5 ; [+64]
      107 GETUPVAL                         R21 0
      108 MOVE                             R22 R14
      109 MOVE                             R23 R17
      110 GETTABLEKS                       R26 R20 K9 ["text"]
      112 ORK                              R25 R26 K8 [""]
      113 LENGTH                           R24 R25
      114 CALL                             R21 3 1
      115 LENGTH                           R22 R21
      116 LOADN                            R23 0
      117 JUMPIFNOTLT                      R23 R22 ; [+50]
      119 LOADK                            R23 K3 ["%*|%*"]
      120 MOVE                             R25 R8
      121 MOVE                             R26 R21
      122 NAMECALL                         R23 R23 K4 ["format"]
      124 CALL                             R23 3 1
      125 MOVE                             R22 R23
      126 GETUPVAL                         R24 1
      127 GETTABLE                         R23 R24 R22
      128 JUMPIFEQKNIL                     R23 ; [+3]
      130 MOVE                             R19 R23
      131 JUMP                             ; [+157]
      132 GETUPVAL                         R25 2
      133 MOVE                             R27 R21
      134 LOADK                            R28 K5 ["|"]
      135 CONCAT                           R26 R27 R28
      136 MOVE                             R27 R7
      137 MOVE                             R28 R8
      138 CALL                             R25 3 1
      139 LOADK                            R28 K3 ["%*|%*"]
      140 MOVE                             R30 R8
      141 FASTCALL1                        TOSTRING R7 ; [+3]
      142 MOVE                             R32 R7
      143 GETIMPORT                        R31 K7 [tostring]
      145 CALL                             R31 1 1
      146 NAMECALL                         R28 R28 K4 ["format"]
      148 CALL                             R28 3 1
      149 MOVE                             R27 R28
      150 GETUPVAL                         R29 3
      151 GETTABLE                         R28 R29 R27
      152 JUMPIFNOT                        R28 ; [+2]
      153 MOVE                             R26 R28
      154 JUMP                             ; [+8]
      155 GETUPVAL                         R29 2
      156 LOADK                            R30 K5 ["|"]
      157 MOVE                             R31 R7
      158 MOVE                             R32 R8
      159 CALL                             R29 3 1
      160 GETUPVAL                         R30 3
      161 SETTABLE                         R29 R30 R27
      162 MOVE                             R26 R29
      163 SUB                              R24 R25 R26
      164 GETUPVAL                         R25 1
      165 SETTABLE                         R24 R25 R22
      166 MOVE                             R19 R24
      167 JUMP                             ; [+121]
      168 LOADN                            R19 0
      169 JUMP                             ; [+119]
      170 GETUPVAL                         R21 0
      171 MOVE                             R22 R14
      172 MOVE                             R23 R5
      173 MOVE                             R24 R6
      174 CALL                             R21 3 1
      175 LENGTH                           R22 R21
      176 LOADN                            R23 0
      177 JUMPIFNOTLT                      R23 R22 ; [+50]
      179 LOADK                            R23 K3 ["%*|%*"]
      180 MOVE                             R25 R8
      181 MOVE                             R26 R21
      182 NAMECALL                         R23 R23 K4 ["format"]
      184 CALL                             R23 3 1
      185 MOVE                             R22 R23
      186 GETUPVAL                         R24 1
      187 GETTABLE                         R23 R24 R22
      188 JUMPIFEQKNIL                     R23 ; [+3]
      190 MOVE                             R19 R23
      191 JUMP                             ; [+97]
      192 GETUPVAL                         R25 2
      193 MOVE                             R27 R21
      194 LOADK                            R28 K5 ["|"]
      195 CONCAT                           R26 R27 R28
      196 MOVE                             R27 R7
      197 MOVE                             R28 R8
      198 CALL                             R25 3 1
      199 LOADK                            R28 K3 ["%*|%*"]
      200 MOVE                             R30 R8
      201 FASTCALL1                        TOSTRING R7 ; [+3]
      202 MOVE                             R32 R7
      203 GETIMPORT                        R31 K7 [tostring]
      205 CALL                             R31 1 1
      206 NAMECALL                         R28 R28 K4 ["format"]
      208 CALL                             R28 3 1
      209 MOVE                             R27 R28
      210 GETUPVAL                         R29 3
      211 GETTABLE                         R28 R29 R27
      212 JUMPIFNOT                        R28 ; [+2]
      213 MOVE                             R26 R28
      214 JUMP                             ; [+8]
      215 GETUPVAL                         R29 2
      216 LOADK                            R30 K5 ["|"]
      217 MOVE                             R31 R7
      218 MOVE                             R32 R8
      219 CALL                             R29 3 1
      220 GETUPVAL                         R30 3
      221 SETTABLE                         R29 R30 R27
      222 MOVE                             R26 R29
      223 SUB                              R24 R25 R26
      224 GETUPVAL                         R25 1
      225 SETTABLE                         R24 R25 R22
      226 MOVE                             R19 R24
      227 JUMP                             ; [+61]
      228 LOADN                            R19 0
      229 JUMP                             ; [+59]
      230 GETUPVAL                         R20 0
      231 MOVE                             R21 R14
      232 MOVE                             R22 R5
      233 MOVE                             R23 R6
      234 CALL                             R20 3 1
      235 LENGTH                           R21 R20
      236 LOADN                            R22 0
      237 JUMPIFNOTLT                      R22 R21 ; [+50]
      239 LOADK                            R22 K3 ["%*|%*"]
      240 MOVE                             R24 R8
      241 MOVE                             R25 R20
      242 NAMECALL                         R22 R22 K4 ["format"]
      244 CALL                             R22 3 1
      245 MOVE                             R21 R22
      246 GETUPVAL                         R23 1
      247 GETTABLE                         R22 R23 R21
      248 JUMPIFEQKNIL                     R22 ; [+3]
      250 MOVE                             R19 R22
      251 JUMP                             ; [+37]
      252 GETUPVAL                         R24 2
      253 MOVE                             R26 R20
      254 LOADK                            R27 K5 ["|"]
      255 CONCAT                           R25 R26 R27
      256 MOVE                             R26 R7
      257 MOVE                             R27 R8
      258 CALL                             R24 3 1
      259 LOADK                            R27 K3 ["%*|%*"]
      260 MOVE                             R29 R8
      261 FASTCALL1                        TOSTRING R7 ; [+3]
      262 MOVE                             R31 R7
      263 GETIMPORT                        R30 K7 [tostring]
      265 CALL                             R30 1 1
      266 NAMECALL                         R27 R27 K4 ["format"]
      268 CALL                             R27 3 1
      269 MOVE                             R26 R27
      270 GETUPVAL                         R28 3
      271 GETTABLE                         R27 R28 R26
      272 JUMPIFNOT                        R27 ; [+2]
      273 MOVE                             R25 R27
      274 JUMP                             ; [+8]
      275 GETUPVAL                         R28 2
      276 LOADK                            R29 K5 ["|"]
      277 MOVE                             R30 R7
      278 MOVE                             R31 R8
      279 CALL                             R28 3 1
      280 GETUPVAL                         R29 3
      281 SETTABLE                         R28 R29 R26
      282 MOVE                             R25 R28
      283 SUB                              R23 R24 R25
      284 GETUPVAL                         R24 1
      285 SETTABLE                         R23 R24 R21
      286 MOVE                             R19 R23
      287 JUMP                             ; [+1]
      288 LOADN                            R19 0
      289 JUMPIFNOTLT                      R18 R19 ; [+17]
      291 DUPTABLE                         R22 K14 [{"x", "y", "width", "height"}]
      292 SETTABLEKS                       R18 R22 K10 ["x"]
      294 SETTABLEKS                       R15 R22 K11 ["y"]
      296 SUB                              R23 R19 R18
      297 SETTABLEKS                       R23 R22 K12 ["width"]
      299 SETTABLEKS                       R1 R22 K13 ["height"]
      301 FASTCALL2                        TABLE_INSERT R9 R22 ; [+4]
      303 MOVE                             R21 R9
      304 GETIMPORT                        R20 K17 [table.insert]
      306 CALL                             R20 2 0
      307 FORGLOOP                         R10 2 ; [-302]
      309 RETURN                           R9 1

PROTO_20:
        0 LENGTH                           R6 R0
        1 JUMPIFNOTEQKN                    R6 K0 [0] ; [+11]
        3 DUPTABLE                         R6 K4 [{"x", "y", "height"}]
        4 LOADN                            R7 0
        5 SETTABLEKS                       R7 R6 K1 ["x"]
        7 LOADN                            R7 0
        8 SETTABLEKS                       R7 R6 K2 ["y"]
       10 SETTABLEKS                       R1 R6 K3 ["height"]
       12 RETURN                           R6 1
       13 MOVE                             R6 R0
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R11 R10
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 FORGPREP                         R11
       21 GETTABLEKS                       R16 R15 K5 ["globalIndex"]
       23 JUMPIFNOTEQ                      R16 R2 ; [+70]
       25 GETUPVAL                         R16 0
       26 MOVE                             R17 R10
       27 MOVE                             R18 R2
       28 MOVE                             R19 R3
       29 CALL                             R16 3 1
       30 LENGTH                           R18 R16
       31 LOADN                            R19 0
       32 JUMPIFNOTLT                      R19 R18 ; [+50]
       34 LOADK                            R19 K6 ["%*|%*"]
       35 MOVE                             R21 R5
       36 MOVE                             R22 R16
       37 NAMECALL                         R19 R19 K7 ["format"]
       39 CALL                             R19 3 1
       40 MOVE                             R18 R19
       41 GETUPVAL                         R20 1
       42 GETTABLE                         R19 R20 R18
       43 JUMPIFEQKNIL                     R19 ; [+3]
       45 MOVE                             R17 R19
       46 JUMP                             ; [+37]
       47 GETUPVAL                         R21 2
       48 MOVE                             R23 R16
       49 LOADK                            R24 K8 ["|"]
       50 CONCAT                           R22 R23 R24
       51 MOVE                             R23 R4
       52 MOVE                             R24 R5
       53 CALL                             R21 3 1
       54 LOADK                            R24 K6 ["%*|%*"]
       55 MOVE                             R26 R5
       56 FASTCALL1                        TOSTRING R4 ; [+3]
       57 MOVE                             R28 R4
       58 GETIMPORT                        R27 K10 [tostring]
       60 CALL                             R27 1 1
       61 NAMECALL                         R24 R24 K7 ["format"]
       63 CALL                             R24 3 1
       64 MOVE                             R23 R24
       65 GETUPVAL                         R25 3
       66 GETTABLE                         R24 R25 R23
       67 JUMPIFNOT                        R24 ; [+2]
       68 MOVE                             R22 R24
       69 JUMP                             ; [+8]
       70 GETUPVAL                         R25 2
       71 LOADK                            R26 K8 ["|"]
       72 MOVE                             R27 R4
       73 MOVE                             R28 R5
       74 CALL                             R25 3 1
       75 GETUPVAL                         R26 3
       76 SETTABLE                         R25 R26 R23
       77 MOVE                             R22 R25
       78 SUB                              R20 R21 R22
       79 GETUPVAL                         R21 1
       80 SETTABLE                         R20 R21 R18
       81 MOVE                             R17 R20
       82 JUMP                             ; [+1]
       83 LOADN                            R17 0
       84 DUPTABLE                         R18 K4 [{"x", "y", "height"}]
       85 SETTABLEKS                       R17 R18 K1 ["x"]
       87 SUBK                             R20 R9 K11 [1]
       88 MUL                              R19 R20 R1
       89 SETTABLEKS                       R19 R18 K2 ["y"]
       91 SETTABLEKS                       R1 R18 K3 ["height"]
       93 RETURN                           R18 1
       94 FORGLOOP                         R11 2 ; [-74]
       96 FORGLOOP                         R6 2 ; [-80]
       98 LOADNIL                          R6
       99 RETURN                           R6 1

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["type"]
        8 JUMPIFNOTEQKS                    R7 K1 ["image"] ; [+8]
       10 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 16 0
        9 NEWTABLE                         R2 0 0
       11 LOADNIL                          R3
       12 NEWTABLE                         R4 0 0
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R0
       17 DUPCLOSURE                       R6 K4 [PROTO_2]
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R5
       20 DUPCLOSURE                       R7 K5 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R4
       24 DUPCLOSURE                       R8 K6 [PROTO_4]
       25 DUPCLOSURE                       R9 K7 [PROTO_5]
       26 DUPCLOSURE                       R10 K8 [PROTO_6]
       27 DUPCLOSURE                       R11 K9 [PROTO_7]
       28 DUPCLOSURE                       R12 K10 [PROTO_9]
       29 CAPTURE                          VAL R11
       30 SETTABLEKS                       R12 R1 K11 ["buildSegments"]
       32 DUPCLOSURE                       R12 K12 [PROTO_10]
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R12 R1 K13 ["buildTextSegments"]
       36 DUPCLOSURE                       R12 K14 [PROTO_11]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R12 R1 K15 ["measureSegments"]
       42 NEWCLOSURE                       R12 P10
       43 CAPTURE                          VAL R2
       44 CAPTURE                          REF R3
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R12 R1 K16 ["measureLineHeight"]
       48 DUPCLOSURE                       R12 K17 [PROTO_15]
       49 SETTABLEKS                       R12 R1 K18 ["layoutSegments"]
       51 DUPCLOSURE                       R12 K19 [PROTO_16]
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R12 R1 K20 ["hitTest"]
       58 DUPCLOSURE                       R12 K21 [PROTO_17]
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R12 R1 K22 ["charHitTest"]
       65 DUPCLOSURE                       R12 K23 [PROTO_18]
       66 CAPTURE                          VAL R9
       67 SETTABLEKS                       R12 R1 K24 ["buildRichText"]
       69 DUPCLOSURE                       R12 K25 [PROTO_19]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R12 R1 K26 ["computeSelectionRects"]
       76 DUPCLOSURE                       R12 K27 [PROTO_20]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R12 R1 K28 ["computeCursorPosition"]
       83 DUPCLOSURE                       R12 K29 [PROTO_21]
       84 SETTABLEKS                       R12 R1 K30 ["getImageSegments"]
       86 CLOSEUPVALS                      R3
       87 RETURN                           R1 1
