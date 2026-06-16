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
       15 LOADN                            R5 252
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
       39 LOADN                            R8 252
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
       88 JUMPIFNOT                        R14 ; [+44]
       89 LOADK                            R16 K18 ["^%s*([%w_%-]+)%s*:%s*(.-)%s*$"]
       90 NAMECALL                         R14 R12 K17 ["match"]
       92 CALL                             R14 2 2
       93 JUMPIFEQKNIL                     R14 ; [+3]
       95 JUMPIFNOTEQKNIL                  R15 ; [+9]
       97 LOADNIL                          R16
       98 LOADK                            R18 K19 ["Invalid frontmatter line: \"%*\""]
       99 MOVE                             R20 R12
      100 NAMECALL                         R18 R18 K20 ["format"]
      102 CALL                             R18 2 1
      103 MOVE                             R17 R18
      104 RETURN                           R16 2
      105 JUMPIFNOTEQKS                    R14 K21 ["name"] ; [+3]
      107 MOVE                             R5 R15
      108 JUMP                             ; [+24]
      109 JUMPIFNOTEQKS                    R14 K22 ["description"] ; [+3]
      111 MOVE                             R6 R15
      112 JUMP                             ; [+20]
      113 JUMPIFNOTEQKS                    R14 K23 ["enabled"] ; [+18]
      115 JUMPIFNOTEQKS                    R15 K24 ["true"] ; [+3]
      117 LOADB                            R7 1
      118 JUMP                             ; [+14]
      119 JUMPIFNOTEQKS                    R15 K25 ["false"] ; [+3]
      121 LOADB                            R7 0
      122 JUMP                             ; [+10]
      123 LOADNIL                          R16
      124 LOADK                            R18 K26 ["Invalid value for 'enabled': \"%*\" (expected 'true' or 'false')"]
      125 MOVE                             R20 R15
      126 NAMECALL                         R18 R18 K20 ["format"]
      128 CALL                             R18 2 1
      129 MOVE                             R17 R18
      130 RETURN                           R16 2
      131 JUMP                             ; [+1]
      132 SETTABLE                         R15 R8 R14
      133 FORGLOOP                         R9 1 ; [-50]
      135 JUMPIFEQKNIL                     R5 ; [+3]
      137 JUMPIFNOTEQKS                    R5 K13 [""] ; [+4]
      139 LOADNIL                          R9
      140 LOADK                            R10 K27 ["Missing required field: name"]
      141 RETURN                           R9 2
      142 JUMPIFEQKNIL                     R6 ; [+3]
      144 JUMPIFNOTEQKS                    R6 K13 [""] ; [+4]
      146 LOADNIL                          R9
      147 LOADK                            R10 K28 ["Missing required field: description"]
      148 RETURN                           R9 2
      149 DUPTABLE                         R9 K32 [{"frontmatter", "extras", "body"}]
      150 DUPTABLE                         R10 K33 [{"name", "description", "enabled"}]
      151 SETTABLEKS                       R5 R10 K21 ["name"]
      153 SETTABLEKS                       R6 R10 K22 ["description"]
      155 SETTABLEKS                       R7 R10 K23 ["enabled"]
      157 SETTABLEKS                       R10 R9 K29 ["frontmatter"]
      159 SETTABLEKS                       R8 R9 K30 ["extras"]
      161 SETTABLEKS                       R4 R9 K31 ["body"]
      163 RETURN                           R9 1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["---"]
        3 SETLIST                          R1 R2 1 [1]
        5 LOADK                            R5 K1 ["name: %*"]
        6 GETTABLEKS                       R7 R0 K2 ["frontmatter"]
        8 GETTABLEKS                       R7 R7 K3 ["name"]
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K7 [table.insert]
       19 CALL                             R2 2 0
       20 LOADK                            R5 K8 ["description: %*"]
       21 GETTABLEKS                       R7 R0 K2 ["frontmatter"]
       23 GETTABLEKS                       R7 R7 K9 ["description"]
       25 NAMECALL                         R5 R5 K4 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K7 [table.insert]
       34 CALL                             R2 2 0
       35 GETTABLEKS                       R2 R0 K2 ["frontmatter"]
       37 GETTABLEKS                       R2 R2 K10 ["enabled"]
       39 JUMPIFEQKNIL                     R2 ; [+20]
       41 LOADK                            R5 K11 ["enabled: %*"]
       42 GETTABLEKS                       R8 R0 K2 ["frontmatter"]
       44 GETTABLEKS                       R8 R8 K10 ["enabled"]
       46 FASTCALL1                        TOSTRING R8 ; [+2]
       47 GETIMPORT                        R7 K13 [tostring]
       49 CALL                             R7 1 1
       50 NAMECALL                         R5 R5 K4 ["format"]
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       56 MOVE                             R3 R1
       57 GETIMPORT                        R2 K7 [table.insert]
       59 CALL                             R2 2 0
       60 GETTABLEKS                       R2 R0 K14 ["extras"]
       62 LOADNIL                          R3
       63 LOADNIL                          R4
       64 FORGPREP                         R2
       65 LOADK                            R10 K15 ["%*: %*"]
       66 MOVE                             R12 R5
       67 MOVE                             R13 R6
       68 NAMECALL                         R10 R10 K4 ["format"]
       70 CALL                             R10 3 1
       71 MOVE                             R9 R10
       72 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       74 MOVE                             R8 R1
       75 GETIMPORT                        R7 K7 [table.insert]
       77 CALL                             R7 2 0
       78 FORGLOOP                         R2 2 ; [-14]
       80 FASTCALL2K                       TABLE_INSERT R1 K0 ; [+5]
       82 MOVE                             R3 R1
       83 LOADK                            R4 K0 ["---"]
       84 GETIMPORT                        R2 K7 [table.insert]
       86 CALL                             R2 2 0
       87 GETIMPORT                        R6 K17 [table.concat]
       89 MOVE                             R7 R1
       90 LOADK                            R8 K18 ["\n"]
       91 CALL                             R6 2 1
       92 MOVE                             R3 R6
       93 LOADK                            R4 K18 ["\n"]
       94 GETTABLEKS                       R5 R0 K19 ["body"]
       96 CONCAT                           R2 R3 R5
       97 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["parse"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 SETTABLEKS                       R2 R0 K4 ["serialize"]
       10 RETURN                           R0 1
