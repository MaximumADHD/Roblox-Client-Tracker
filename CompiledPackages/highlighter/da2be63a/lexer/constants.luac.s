MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 NEWTABLE                         R4 0 0
       11 LOADN                            R7 0
       12 LOADN                            R5 255
       13 LOADN                            R6 1
       14 FORNPREP                         R5
       15 FASTCALL1                        STRING_CHAR R7 ; [+3]
       16 MOVE                             R9 R7
       17 GETIMPORT                        R8 K2 [string.char]
       19 CALL                             R8 1 1
       20 GETIMPORT                        R10 K4 [string.find]
       22 MOVE                             R11 R8
       23 LOADK                            R12 K5 ["[%c%s]"]
       24 CALL                             R10 2 1
       25 JUMPIFNOTEQKNIL                  R10 ; [+2]
       27 LOADB                            R9 0 +1
       28 LOADB                            R9 1
       29 SETTABLE                         R9 R0 R7
       30 GETIMPORT                        R10 K4 [string.find]
       32 MOVE                             R11 R8
       33 LOADK                            R12 K6 ["%d"]
       34 CALL                             R10 2 1
       35 JUMPIFNOTEQKNIL                  R10 ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 SETTABLE                         R9 R1 R7
       40 LOADB                            R9 1
       41 GETIMPORT                        R10 K4 [string.find]
       43 MOVE                             R11 R8
       44 LOADK                            R12 K7 ["[%a_]"]
       45 CALL                             R10 2 1
       46 JUMPIFNOTEQKNIL                  R10 ; [+6]
       48 LOADN                            R10 128
       49 JUMPIFLE                         R10 R7 ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 SETTABLE                         R9 R2 R7
       54 LOADB                            R9 1
       55 GETIMPORT                        R10 K4 [string.find]
       57 MOVE                             R11 R8
       58 LOADK                            R12 K8 ["[%w_]"]
       59 CALL                             R10 2 1
       60 JUMPIFNOTEQKNIL                  R10 ; [+6]
       62 LOADN                            R10 128
       63 JUMPIFLE                         R10 R7 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 SETTABLE                         R9 R3 R7
       68 GETIMPORT                        R10 K4 [string.find]
       70 MOVE                             R11 R8
       71 LOADK                            R12 K8 ["[%w_]"]
       72 CALL                             R10 2 1
       73 JUMPIFNOTEQKNIL                  R10 ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 SETTABLE                         R9 R4 R7
       78 FORNLOOP                         R5
       79 NEWTABLE                         R5 64 0
       81 LOADN                            R6 10
       82 SETTABLEKS                       R6 R5 K9 ["BYTE_NEWLINE"]
       84 LOADN                            R6 13
       85 SETTABLEKS                       R6 R5 K10 ["BYTE_RETURN"]
       87 LOADN                            R6 34
       88 SETTABLEKS                       R6 R5 K11 ["BYTE_QUOTE"]
       90 LOADN                            R6 39
       91 SETTABLEKS                       R6 R5 K12 ["BYTE_APOSTROPHE"]
       93 LOADN                            R6 96
       94 SETTABLEKS                       R6 R5 K13 ["BYTE_BACKTICK"]
       96 LOADN                            R6 92
       97 SETTABLEKS                       R6 R5 K14 ["BYTE_BACKSLASH"]
       99 LOADN                            R6 45
      100 SETTABLEKS                       R6 R5 K15 ["BYTE_DASH"]
      102 LOADN                            R6 43
      103 SETTABLEKS                       R6 R5 K16 ["BYTE_PLUS"]
      105 LOADN                            R6 42
      106 SETTABLEKS                       R6 R5 K17 ["BYTE_STAR"]
      108 LOADN                            R6 47
      109 SETTABLEKS                       R6 R5 K18 ["BYTE_SLASH"]
      111 LOADN                            R6 37
      112 SETTABLEKS                       R6 R5 K19 ["BYTE_PERCENT"]
      114 LOADN                            R6 94
      115 SETTABLEKS                       R6 R5 K20 ["BYTE_CARET"]
      117 LOADN                            R6 35
      118 SETTABLEKS                       R6 R5 K21 ["BYTE_HASH"]
      120 LOADN                            R6 126
      121 SETTABLEKS                       R6 R5 K22 ["BYTE_TILDE"]
      123 LOADN                            R6 46
      124 SETTABLEKS                       R6 R5 K23 ["BYTE_DOT"]
      126 LOADN                            R6 44
      127 SETTABLEKS                       R6 R5 K24 ["BYTE_COMMA"]
      129 LOADN                            R6 58
      130 SETTABLEKS                       R6 R5 K25 ["BYTE_COLON"]
      132 LOADN                            R6 59
      133 SETTABLEKS                       R6 R5 K26 ["BYTE_SEMICOLON"]
      135 LOADN                            R6 63
      136 SETTABLEKS                       R6 R5 K27 ["BYTE_QUESTION"]
      138 LOADN                            R6 124
      139 SETTABLEKS                       R6 R5 K28 ["BYTE_PIPE"]
      141 LOADN                            R6 38
      142 SETTABLEKS                       R6 R5 K29 ["BYTE_AMPERSAND"]
      144 LOADN                            R6 95
      145 SETTABLEKS                       R6 R5 K30 ["BYTE_UNDERSCORE"]
      147 LOADN                            R6 61
      148 SETTABLEKS                       R6 R5 K31 ["BYTE_EQUALS"]
      150 LOADN                            R6 40
      151 SETTABLEKS                       R6 R5 K32 ["BYTE_OPEN_PAREN"]
      153 LOADN                            R6 41
      154 SETTABLEKS                       R6 R5 K33 ["BYTE_CLOSE_PAREN"]
      156 LOADN                            R6 123
      157 SETTABLEKS                       R6 R5 K34 ["BYTE_OPEN_BRACE"]
      159 LOADN                            R6 125
      160 SETTABLEKS                       R6 R5 K35 ["BYTE_CLOSE_BRACE"]
      162 LOADN                            R6 91
      163 SETTABLEKS                       R6 R5 K36 ["BYTE_OPEN_BRACKET"]
      165 LOADN                            R6 93
      166 SETTABLEKS                       R6 R5 K37 ["BYTE_CLOSE_BRACKET"]
      168 LOADN                            R6 60
      169 SETTABLEKS                       R6 R5 K38 ["BYTE_LESS_THAN"]
      171 LOADN                            R6 62
      172 SETTABLEKS                       R6 R5 K39 ["BYTE_GREATER_THAN"]
      174 LOADN                            R6 64
      175 SETTABLEKS                       R6 R5 K40 ["BYTE_AT"]
      177 LOADN                            R6 101
      178 SETTABLEKS                       R6 R5 K41 ["BYTE_LOWER_E"]
      180 LOADN                            R6 69
      181 SETTABLEKS                       R6 R5 K42 ["BYTE_UPPER_E"]
      183 LOADN                            R6 117
      184 SETTABLEKS                       R6 R5 K43 ["BYTE_LOWER_U"]
      186 LOADN                            R6 122
      187 SETTABLEKS                       R6 R5 K44 ["BYTE_LOWER_Z"]
      189 SETTABLEKS                       R0 R5 K45 ["IS_SPACE"]
      191 SETTABLEKS                       R1 R5 K46 ["IS_DIGIT"]
      193 SETTABLEKS                       R2 R5 K47 ["IS_IDEN_START"]
      195 SETTABLEKS                       R3 R5 K48 ["IS_IDEN_CHAR"]
      197 SETTABLEKS                       R4 R5 K49 ["IS_NUMBER_TAIL"]
      199 RETURN                           R5 1
