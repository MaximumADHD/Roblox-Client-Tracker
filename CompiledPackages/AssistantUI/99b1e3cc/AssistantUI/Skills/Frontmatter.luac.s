PROTO_0:
        0 LOADK                            R3 K0 ["\n---\n"]
        1 LOADN                            R4 4
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 2
        6 JUMPIFNOT                        R1 ; [+4]
        7 JUMPIFNOT                        R2 ; [+3]
        8 MOVE                             R3 R1
        9 ADDK                             R4 R2 K2 [1]
       10 RETURN                           R3 2
       11 LENGTH                           R3 R0
       12 LOADN                            R4 7
       13 JUMPIFNOTLE                      R4 R3 ; [+13]
       15 LOADN                            R5 -4
       16 NAMECALL                         R3 R0 K3 ["sub"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKS                    R3 K4 ["\n---"] ; [+7]
       21 LENGTH                           R5 R0
       22 SUBK                             R4 R5 K5 [4]
       23 ADDK                             R3 R4 K2 [1]
       24 LENGTH                           R5 R0
       25 ADDK                             R4 R5 K2 [1]
       26 RETURN                           R3 2
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 RETURN                           R3 2

PROTO_1:
        0 LOADK                            R3 K0 ["\r"]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 LOADK                            R3 K2 ["\r\n"]
        8 LOADK                            R4 K3 ["\n"]
        9 NAMECALL                         R1 R0 K4 ["gsub"]
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 LOADN                            R3 1
       14 LOADN                            R4 4
       15 NAMECALL                         R1 R0 K5 ["sub"]
       17 CALL                             R1 3 1
       18 JUMPIFEQKS                       R1 K6 ["---\n"] ; [+4]
       20 LOADNIL                          R1
       21 LOADK                            R2 K7 ["Missing opening frontmatter delimiter (expected file to start with '---\\n')"]
       22 RETURN                           R1 2
       23 MOVE                             R3 R0
       24 LOADK                            R6 K8 ["\n---\n"]
       25 LOADN                            R7 4
       26 LOADB                            R8 1
       27 NAMECALL                         R4 R3 K1 ["find"]
       29 CALL                             R4 4 2
       30 JUMPIFNOT                        R4 ; [+4]
       31 JUMPIFNOT                        R5 ; [+3]
       32 MOVE                             R1 R4
       33 ADDK                             R2 R5 K9 [1]
       34 JUMP                             ; [+18]
       35 LENGTH                           R6 R3
       36 LOADN                            R7 7
       37 JUMPIFNOTLE                      R7 R6 ; [+13]
       39 LOADN                            R8 -4
       40 NAMECALL                         R6 R3 K5 ["sub"]
       42 CALL                             R6 2 1
       43 JUMPIFNOTEQKS                    R6 K10 ["\n---"] ; [+7]
       45 LENGTH                           R7 R3
       46 SUBK                             R6 R7 K11 [4]
       47 ADDK                             R1 R6 K9 [1]
       48 LENGTH                           R6 R3
       49 ADDK                             R2 R6 K9 [1]
       50 JUMP                             ; [+2]
       51 LOADNIL                          R1
       52 LOADNIL                          R2
       53 JUMPIFEQKNIL                     R1 ; [+3]
       55 JUMPIFNOTEQKNIL                  R2 ; [+4]
       57 LOADNIL                          R3
       58 LOADK                            R4 K12 ["Missing closing frontmatter delimiter"]
       59 RETURN                           R3 2
       60 LOADN                            R5 5
       61 SUBK                             R6 R1 K9 [1]
       62 NAMECALL                         R3 R0 K5 ["sub"]
       64 CALL                             R3 3 1
       65 LENGTH                           R5 R0
       66 JUMPIFNOTLE                      R2 R5 ; [+6]
       68 MOVE                             R6 R2
       69 NAMECALL                         R4 R0 K5 ["sub"]
       71 CALL                             R4 2 1
       72 JUMP                             ; [+1]
       73 LOADK                            R4 K13 [""]
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 LOADNIL                          R7
       77 NEWTABLE                         R8 0 0
       79 LOADK                            R11 K14 ["[^\n]+"]
       80 NAMECALL                         R9 R3 K15 ["gmatch"]
       82 CALL                             R9 2 3
       83 FORGPREP                         R9
       84 LOADK                            R16 K16 ["%S"]
       85 NAMECALL                         R14 R12 K17 ["match"]
       87 CALL                             R14 2 1
       88 JUMPIFNOT                        R14 ; [+42]
       89 LOADK                            R16 K18 ["^%s*([%w_%-]+)%s*:%s*(.-)%s*$"]
       90 NAMECALL                         R14 R12 K17 ["match"]
       92 CALL                             R14 2 2
       93 JUMPIFEQKNIL                     R14 ; [+3]
       95 JUMPIFNOTEQKNIL                  R15 ; [+8]
       97 LOADNIL                          R16
       98 LOADK                            R17 K19 ["Invalid frontmatter line: \"%*\""]
       99 MOVE                             R19 R12
      100 NAMECALL                         R17 R17 K20 ["format"]
      102 CALL                             R17 2 1
      103 RETURN                           R16 2
      104 JUMPIFNOTEQKS                    R14 K21 ["name"] ; [+3]
      106 MOVE                             R5 R15
      107 JUMP                             ; [+23]
      108 JUMPIFNOTEQKS                    R14 K22 ["description"] ; [+3]
      110 MOVE                             R6 R15
      111 JUMP                             ; [+19]
      112 JUMPIFNOTEQKS                    R14 K23 ["enabled"] ; [+17]
      114 JUMPIFNOTEQKS                    R15 K24 ["true"] ; [+3]
      116 LOADB                            R7 1
      117 JUMP                             ; [+13]
      118 JUMPIFNOTEQKS                    R15 K25 ["false"] ; [+3]
      120 LOADB                            R7 0
      121 JUMP                             ; [+9]
      122 LOADNIL                          R16
      123 LOADK                            R17 K26 ["Invalid value for 'enabled': \"%*\" (expected 'true' or 'false')"]
      124 MOVE                             R19 R15
      125 NAMECALL                         R17 R17 K20 ["format"]
      127 CALL                             R17 2 1
      128 RETURN                           R16 2
      129 JUMP                             ; [+1]
      130 SETTABLE                         R15 R8 R14
      131 FORGLOOP                         R9 1 ; [-48]
      133 JUMPIFEQKNIL                     R5 ; [+3]
      135 JUMPIFNOTEQKS                    R5 K13 [""] ; [+4]
      137 LOADNIL                          R9
      138 LOADK                            R10 K27 ["Missing required field: name"]
      139 RETURN                           R9 2
      140 JUMPIFEQKNIL                     R6 ; [+3]
      142 JUMPIFNOTEQKS                    R6 K13 [""] ; [+4]
      144 LOADNIL                          R9
      145 LOADK                            R10 K28 ["Missing required field: description"]
      146 RETURN                           R9 2
      147 DUPTABLE                         R9 K32 [{"frontmatter", "extras", "body"}]
      148 DUPTABLE                         R10 K33 [{"name", "description", "enabled"}]
      149 SETTABLEKS                       R5 R10 K21 ["name"]
      151 SETTABLEKS                       R6 R10 K22 ["description"]
      153 SETTABLEKS                       R7 R10 K23 ["enabled"]
      155 SETTABLEKS                       R10 R9 K29 ["frontmatter"]
      157 SETTABLEKS                       R8 R9 K30 ["extras"]
      159 SETTABLEKS                       R4 R9 K31 ["body"]
      161 RETURN                           R9 1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["---"]
        3 SETLIST                          R1 R2 1 [1]
        5 LOADK                            R4 K1 ["name: %*"]
        6 GETTABLEKS                       R6 R0 K2 ["frontmatter"]
        8 GETTABLEKS                       R6 R6 K3 ["name"]
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K7 [table.insert]
       18 CALL                             R2 2 0
       19 LOADK                            R4 K8 ["description: %*"]
       20 GETTABLEKS                       R6 R0 K2 ["frontmatter"]
       22 GETTABLEKS                       R6 R6 K9 ["description"]
       24 NAMECALL                         R4 R4 K4 ["format"]
       26 CALL                             R4 2 1
       27 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       29 MOVE                             R3 R1
       30 GETIMPORT                        R2 K7 [table.insert]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R0 K2 ["frontmatter"]
       35 GETTABLEKS                       R2 R2 K10 ["enabled"]
       37 JUMPIFEQKNIL                     R2 ; [+19]
       39 LOADK                            R4 K11 ["enabled: %*"]
       40 GETTABLEKS                       R7 R0 K2 ["frontmatter"]
       42 GETTABLEKS                       R7 R7 K10 ["enabled"]
       44 FASTCALL1                        TOSTRING R7 ; [+2]
       45 GETIMPORT                        R6 K13 [tostring]
       47 CALL                             R6 1 1
       48 NAMECALL                         R4 R4 K4 ["format"]
       50 CALL                             R4 2 1
       51 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       53 MOVE                             R3 R1
       54 GETIMPORT                        R2 K7 [table.insert]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R2 R0 K14 ["extras"]
       59 LOADNIL                          R3
       60 LOADNIL                          R4
       61 FORGPREP                         R2
       62 LOADK                            R9 K15 ["%*: %*"]
       63 MOVE                             R11 R5
       64 MOVE                             R12 R6
       65 NAMECALL                         R9 R9 K4 ["format"]
       67 CALL                             R9 3 1
       68 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       70 MOVE                             R8 R1
       71 GETIMPORT                        R7 K7 [table.insert]
       73 CALL                             R7 2 0
       74 FORGLOOP                         R2 2 ; [-13]
       76 FASTCALL2K                       TABLE_INSERT R1 K0 ; [+5]
       78 MOVE                             R3 R1
       79 LOADK                            R4 K0 ["---"]
       80 GETIMPORT                        R2 K7 [table.insert]
       82 CALL                             R2 2 0
       83 GETIMPORT                        R6 K17 [table.concat]
       85 MOVE                             R7 R1
       86 LOADK                            R8 K18 ["\n"]
       87 CALL                             R6 2 1
       88 MOVE                             R3 R6
       89 LOADK                            R4 K18 ["\n"]
       90 GETTABLEKS                       R5 R0 K19 ["body"]
       92 CONCAT                           R2 R3 R5
       93 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["parse"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 SETTABLEKS                       R2 R0 K4 ["serialize"]
       10 RETURN                           R0 1
