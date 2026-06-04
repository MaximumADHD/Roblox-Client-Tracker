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
        0 LOADK                            R3 K0 ["\r\n"]
        1 LOADK                            R4 K1 ["\n"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 LOADN                            R3 1
        7 LOADN                            R4 4
        8 NAMECALL                         R1 R0 K3 ["sub"]
       10 CALL                             R1 3 1
       11 JUMPIFEQKS                       R1 K4 ["---\n"] ; [+4]
       13 LOADNIL                          R1
       14 LOADK                            R2 K5 ["Missing opening frontmatter delimiter (expected file to start with '---\\n')"]
       15 RETURN                           R1 2
       16 MOVE                             R3 R0
       17 LOADK                            R6 K6 ["\n---\n"]
       18 LOADN                            R7 4
       19 LOADB                            R8 1
       20 NAMECALL                         R4 R3 K7 ["find"]
       22 CALL                             R4 4 2
       23 JUMPIFNOT                        R4 ; [+4]
       24 JUMPIFNOT                        R5 ; [+3]
       25 MOVE                             R1 R4
       26 ADDK                             R2 R5 K8 [1]
       27 JUMP                             ; [+18]
       28 LENGTH                           R6 R3
       29 LOADN                            R7 7
       30 JUMPIFNOTLE                      R7 R6 ; [+13]
       32 LOADN                            R8 252
       33 NAMECALL                         R6 R3 K3 ["sub"]
       35 CALL                             R6 2 1
       36 JUMPIFNOTEQKS                    R6 K9 ["\n---"] ; [+7]
       38 LENGTH                           R7 R3
       39 SUBK                             R6 R7 K10 [4]
       40 ADDK                             R1 R6 K8 [1]
       41 LENGTH                           R6 R3
       42 ADDK                             R2 R6 K8 [1]
       43 JUMP                             ; [+2]
       44 LOADNIL                          R1
       45 LOADNIL                          R2
       46 JUMPIFEQKNIL                     R1 ; [+3]
       48 JUMPIFNOTEQKNIL                  R2 ; [+4]
       50 LOADNIL                          R3
       51 LOADK                            R4 K11 ["Missing closing frontmatter delimiter"]
       52 RETURN                           R3 2
       53 LOADN                            R5 5
       54 SUBK                             R6 R1 K8 [1]
       55 NAMECALL                         R3 R0 K3 ["sub"]
       57 CALL                             R3 3 1
       58 LENGTH                           R5 R0
       59 JUMPIFNOTLE                      R2 R5 ; [+6]
       61 MOVE                             R6 R2
       62 NAMECALL                         R4 R0 K3 ["sub"]
       64 CALL                             R4 2 1
       65 JUMP                             ; [+1]
       66 LOADK                            R4 K12 [""]
       67 LOADNIL                          R5
       68 LOADNIL                          R6
       69 LOADNIL                          R7
       70 NEWTABLE                         R8 0 0
       72 LOADK                            R11 K13 ["[^\n]+"]
       73 NAMECALL                         R9 R3 K14 ["gmatch"]
       75 CALL                             R9 2 3
       76 FORGPREP                         R9
       77 LOADK                            R16 K15 ["%S"]
       78 NAMECALL                         R14 R12 K16 ["match"]
       80 CALL                             R14 2 1
       81 JUMPIFNOT                        R14 ; [+44]
       82 LOADK                            R16 K17 ["^%s*([%w_%-]+)%s*:%s*(.-)%s*$"]
       83 NAMECALL                         R14 R12 K16 ["match"]
       85 CALL                             R14 2 2
       86 JUMPIFEQKNIL                     R14 ; [+3]
       88 JUMPIFNOTEQKNIL                  R15 ; [+9]
       90 LOADNIL                          R16
       91 LOADK                            R18 K18 ["Invalid frontmatter line: \"%*\""]
       92 MOVE                             R20 R12
       93 NAMECALL                         R18 R18 K19 ["format"]
       95 CALL                             R18 2 1
       96 MOVE                             R17 R18
       97 RETURN                           R16 2
       98 JUMPIFNOTEQKS                    R14 K20 ["name"] ; [+3]
      100 MOVE                             R5 R15
      101 JUMP                             ; [+24]
      102 JUMPIFNOTEQKS                    R14 K21 ["description"] ; [+3]
      104 MOVE                             R6 R15
      105 JUMP                             ; [+20]
      106 JUMPIFNOTEQKS                    R14 K22 ["enabled"] ; [+18]
      108 JUMPIFNOTEQKS                    R15 K23 ["true"] ; [+3]
      110 LOADB                            R7 1
      111 JUMP                             ; [+14]
      112 JUMPIFNOTEQKS                    R15 K24 ["false"] ; [+3]
      114 LOADB                            R7 0
      115 JUMP                             ; [+10]
      116 LOADNIL                          R16
      117 LOADK                            R18 K25 ["Invalid value for 'enabled': \"%*\" (expected 'true' or 'false')"]
      118 MOVE                             R20 R15
      119 NAMECALL                         R18 R18 K19 ["format"]
      121 CALL                             R18 2 1
      122 MOVE                             R17 R18
      123 RETURN                           R16 2
      124 JUMP                             ; [+1]
      125 SETTABLE                         R15 R8 R14
      126 FORGLOOP                         R9 1 ; [-50]
      128 JUMPIFEQKNIL                     R5 ; [+3]
      130 JUMPIFNOTEQKS                    R5 K12 [""] ; [+4]
      132 LOADNIL                          R9
      133 LOADK                            R10 K26 ["Missing required field: name"]
      134 RETURN                           R9 2
      135 JUMPIFEQKNIL                     R6 ; [+3]
      137 JUMPIFNOTEQKS                    R6 K12 [""] ; [+4]
      139 LOADNIL                          R9
      140 LOADK                            R10 K27 ["Missing required field: description"]
      141 RETURN                           R9 2
      142 DUPTABLE                         R9 K31 [{"frontmatter", "extras", "body"}]
      143 DUPTABLE                         R10 K32 [{"name", "description", "enabled"}]
      144 SETTABLEKS                       R5 R10 K20 ["name"]
      146 SETTABLEKS                       R6 R10 K21 ["description"]
      148 SETTABLEKS                       R7 R10 K22 ["enabled"]
      150 SETTABLEKS                       R10 R9 K28 ["frontmatter"]
      152 SETTABLEKS                       R8 R9 K29 ["extras"]
      154 SETTABLEKS                       R4 R9 K30 ["body"]
      156 RETURN                           R9 1

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
