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
       22 JUMPIFNOTEQKS                    R1 K7 ["audio"] ; [+11]
       24 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
       25 LOADK                            R3 K8 ["[Audio content (%*)]"]
       26 GETTABLEKS                       R5 R0 K5 ["mimeType"]
       28 NAMECALL                         R3 R3 K9 ["format"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K1 ["text"]
       33 RETURN                           R2 1
       34 JUMPIFNOTEQKS                    R1 K10 ["resource"] ; [+64]
       36 GETTABLEKS                       R2 R0 K10 ["resource"]
       38 GETTABLEKS                       R3 R2 K5 ["mimeType"]
       40 GETTABLEKS                       R4 R2 K11 ["blob"]
       42 JUMPIFNOT                        R4 ; [+12]
       43 JUMPIFNOT                        R3 ; [+11]
       44 GETUPVAL                         R5 0
       45 GETTABLE                         R4 R5 R3
       46 JUMPIFNOT                        R4 ; [+8]
       47 DUPTABLE                         R4 K6 [{[1] = "image", ["data"], ["mimeType"]}]
       48 GETTABLEKS                       R5 R2 K11 ["blob"]
       50 SETTABLEKS                       R5 R4 K4 ["data"]
       52 SETTABLEKS                       R3 R4 K5 ["mimeType"]
       54 RETURN                           R4 1
       55 GETTABLEKS                       R4 R2 K1 ["text"]
       57 JUMPIFNOT                        R4 ; [+14]
       58 GETTABLEKS                       R5 R2 K13 ["uri"]
       60 ORK                              R4 R5 K12 ["unknown"]
       61 DUPTABLE                         R5 K2 [{[1] = "text", ["text"]}]
       62 LOADK                            R6 K14 ["[Resource: %*]\n%*"]
       63 MOVE                             R8 R4
       64 GETTABLEKS                       R9 R2 K1 ["text"]
       66 NAMECALL                         R6 R6 K9 ["format"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K1 ["text"]
       71 RETURN                           R5 1
       72 GETTABLEKS                       R4 R2 K11 ["blob"]
       74 JUMPIFNOT                        R4 ; [+13]
       75 GETTABLEKS                       R5 R2 K13 ["uri"]
       77 ORK                              R4 R5 K12 ["unknown"]
       78 DUPTABLE                         R5 K2 [{[1] = "text", ["text"]}]
       79 LOADK                            R6 K15 ["[Binary resource: %* (%*)]"]
       80 MOVE                             R8 R4
       81 ORK                              R9 R3 K12 ["unknown"]
       82 NAMECALL                         R6 R6 K9 ["format"]
       84 CALL                             R6 3 1
       85 SETTABLEKS                       R6 R5 K1 ["text"]
       87 RETURN                           R5 1
       88 DUPTABLE                         R4 K2 [{[1] = "text", ["text"]}]
       89 LOADK                            R5 K16 ["[Resource: %*]"]
       90 GETTABLEKS                       R8 R2 K13 ["uri"]
       92 ORK                              R7 R8 K12 ["unknown"]
       93 NAMECALL                         R5 R5 K9 ["format"]
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R4 K1 ["text"]
       98 RETURN                           R4 1
       99 JUMPIFNOTEQKS                    R1 K17 ["resource_link"] ; [+23]
      101 GETTABLEKS                       R3 R0 K18 ["name"]
      103 JUMPIFNOT                        R3 ; [+9]
      104 LOADK                            R2 K19 ["[Resource link: %* (%*)]"]
      105 GETTABLEKS                       R4 R0 K18 ["name"]
      107 GETTABLEKS                       R5 R0 K13 ["uri"]
      109 NAMECALL                         R2 R2 K9 ["format"]
      111 CALL                             R2 3 1
      112 JUMP                             ; [+6]
      113 LOADK                            R2 K20 ["[Resource link: %*]"]
      114 GETTABLEKS                       R4 R0 K13 ["uri"]
      116 NAMECALL                         R2 R2 K9 ["format"]
      118 CALL                             R2 2 1
      119 DUPTABLE                         R3 K2 [{[1] = "text", ["text"]}]
      120 SETTABLEKS                       R2 R3 K1 ["text"]
      122 RETURN                           R3 1
      123 DUPTABLE                         R2 K2 [{[1] = "text", ["text"]}]
      124 LOADK                            R3 K21 ["[Unsupported content type: %*]"]
      125 FASTCALL1                        TOSTRING R1 ; [+3]
      126 MOVE                             R6 R1
      127 GETIMPORT                        R5 K23 [tostring]
      129 CALL                             R5 1 1
      130 NAMECALL                         R3 R3 K9 ["format"]
      132 CALL                             R3 2 1
      133 SETTABLEKS                       R3 R2 K1 ["text"]
      135 RETURN                           R2 1

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
