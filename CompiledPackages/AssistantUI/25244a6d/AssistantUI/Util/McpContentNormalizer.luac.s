PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+7]
        4 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
        5 GETTABLEKS                       R3 R0 K1 ["text"]
        7 SETTABLEKS                       R3 R2 K1 ["text"]
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R1 K3 ["image"] ; [+11]
       12 DUPTABLE                         R2 K6 [{[1] = "image", ["data"], ["mimeType"]}]
       13 GETTABLEKS                       R3 R0 K4 ["data"]
       15 SETTABLEKS                       R3 R2 K4 ["data"]
       17 GETTABLEKS                       R3 R0 K5 ["mimeType"]
       19 SETTABLEKS                       R3 R2 K5 ["mimeType"]
       21 RETURN                           R2 1
       22 JUMPIFNOTEQKS                    R1 K7 ["audio"] ; [+12]
       24 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
       25 LOADK                            R4 K8 ["[Audio content (%*)]"]
       26 GETTABLEKS                       R6 R0 K5 ["mimeType"]
       28 NAMECALL                         R4 R4 K9 ["format"]
       30 CALL                             R4 2 1
       31 MOVE                             R3 R4
       32 SETTABLEKS                       R3 R2 K1 ["text"]
       34 RETURN                           R2 1
       35 JUMPIFNOTEQKS                    R1 K10 ["resource"] ; [+67]
       37 GETTABLEKS                       R2 R0 K10 ["resource"]
       39 GETTABLEKS                       R3 R2 K5 ["mimeType"]
       41 GETTABLEKS                       R4 R2 K11 ["blob"]
       43 JUMPIFNOT                        R4 ; [+12]
       44 JUMPIFNOT                        R3 ; [+11]
       45 GETUPVAL                         R5 0
       46 GETTABLE                         R4 R5 R3
       47 JUMPIFNOT                        R4 ; [+8]
       48 DUPTABLE                         R4 K6 [{[1] = "image", ["data"], ["mimeType"]}]
       49 GETTABLEKS                       R5 R2 K11 ["blob"]
       51 SETTABLEKS                       R5 R4 K4 ["data"]
       53 SETTABLEKS                       R3 R4 K5 ["mimeType"]
       55 RETURN                           R4 1
       56 GETTABLEKS                       R4 R2 K1 ["text"]
       58 JUMPIFNOT                        R4 ; [+15]
       59 GETTABLEKS                       R5 R2 K13 ["uri"]
       61 ORK                              R4 R5 K12 ["unknown"]
       62 DUPTABLE                         R5 K2 [{[1] = "text", ["text"]}]
       63 LOADK                            R7 K14 ["[Resource: %*]\n%*"]
       64 MOVE                             R9 R4
       65 GETTABLEKS                       R10 R2 K1 ["text"]
       67 NAMECALL                         R7 R7 K9 ["format"]
       69 CALL                             R7 3 1
       70 MOVE                             R6 R7
       71 SETTABLEKS                       R6 R5 K1 ["text"]
       73 RETURN                           R5 1
       74 GETTABLEKS                       R4 R2 K11 ["blob"]
       76 JUMPIFNOT                        R4 ; [+14]
       77 GETTABLEKS                       R5 R2 K13 ["uri"]
       79 ORK                              R4 R5 K12 ["unknown"]
       80 DUPTABLE                         R5 K2 [{[1] = "text", ["text"]}]
       81 LOADK                            R7 K15 ["[Binary resource: %* (%*)]"]
       82 MOVE                             R9 R4
       83 ORK                              R10 R3 K12 ["unknown"]
       84 NAMECALL                         R7 R7 K9 ["format"]
       86 CALL                             R7 3 1
       87 MOVE                             R6 R7
       88 SETTABLEKS                       R6 R5 K1 ["text"]
       90 RETURN                           R5 1
       91 DUPTABLE                         R4 K2 [{[1] = "text", ["text"]}]
       92 LOADK                            R6 K16 ["[Resource: %*]"]
       93 GETTABLEKS                       R9 R2 K13 ["uri"]
       95 ORK                              R8 R9 K12 ["unknown"]
       96 NAMECALL                         R6 R6 K9 ["format"]
       98 CALL                             R6 2 1
       99 MOVE                             R5 R6
      100 SETTABLEKS                       R5 R4 K1 ["text"]
      102 RETURN                           R4 1
      103 JUMPIFNOTEQKS                    R1 K17 ["resource_link"] ; [+25]
      105 GETTABLEKS                       R3 R0 K18 ["name"]
      107 JUMPIFNOT                        R3 ; [+10]
      108 LOADK                            R3 K19 ["[Resource link: %* (%*)]"]
      109 GETTABLEKS                       R5 R0 K18 ["name"]
      111 GETTABLEKS                       R6 R0 K13 ["uri"]
      113 NAMECALL                         R3 R3 K9 ["format"]
      115 CALL                             R3 3 1
      116 MOVE                             R2 R3
      117 JUMP                             ; [+7]
      118 LOADK                            R3 K20 ["[Resource link: %*]"]
      119 GETTABLEKS                       R5 R0 K13 ["uri"]
      121 NAMECALL                         R3 R3 K9 ["format"]
      123 CALL                             R3 2 1
      124 MOVE                             R2 R3
      125 DUPTABLE                         R3 K2 [{[1] = "text", ["text"]}]
      126 SETTABLEKS                       R2 R3 K1 ["text"]
      128 RETURN                           R3 1
      129 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
      130 LOADK                            R4 K21 ["[Unsupported content type: %*]"]
      131 FASTCALL1                        TOSTRING R1 ; [+3]
      132 MOVE                             R7 R1
      133 GETIMPORT                        R6 K23 [tostring]
      135 CALL                             R6 1 1
      136 NAMECALL                         R4 R4 K9 ["format"]
      138 CALL                             R4 2 1
      139 MOVE                             R3 R4
      140 SETTABLEKS                       R3 R2 K1 ["text"]
      142 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R6
        8 CALL                             R9 1 1
        9 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K2 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 4 0
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K7 ["image/png"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K8 ["image/jpeg"]
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K9 ["image/gif"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K10 ["image/webp"]
       26 DUPCLOSURE                       R3 K11 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 DUPTABLE                         R5 K15 [{"normalizeContent", "normalizeContentArray"}]
       31 SETTABLEKS                       R3 R5 K13 ["normalizeContent"]
       33 SETTABLEKS                       R4 R5 K14 ["normalizeContentArray"]
       35 RETURN                           R5 1
