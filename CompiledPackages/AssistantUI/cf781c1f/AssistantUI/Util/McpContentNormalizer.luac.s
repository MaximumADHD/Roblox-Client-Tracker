PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+10]
        4 DUPTABLE                         R2 K2 [{"type", "text"}]
        5 LOADK                            R3 K1 ["text"]
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R0 K1 ["text"]
       10 SETTABLEKS                       R3 R2 K1 ["text"]
       12 RETURN                           R2 1
       13 JUMPIFNOTEQKS                    R1 K3 ["image"] ; [+14]
       15 DUPTABLE                         R2 K6 [{"type", "data", "mimeType"}]
       16 LOADK                            R3 K3 ["image"]
       17 SETTABLEKS                       R3 R2 K0 ["type"]
       19 GETTABLEKS                       R3 R0 K4 ["data"]
       21 SETTABLEKS                       R3 R2 K4 ["data"]
       23 GETTABLEKS                       R3 R0 K5 ["mimeType"]
       25 SETTABLEKS                       R3 R2 K5 ["mimeType"]
       27 RETURN                           R2 1
       28 JUMPIFNOTEQKS                    R1 K7 ["audio"] ; [+15]
       30 DUPTABLE                         R2 K2 [{"type", "text"}]
       31 LOADK                            R3 K1 ["text"]
       32 SETTABLEKS                       R3 R2 K0 ["type"]
       34 LOADK                            R4 K8 ["[Audio content (%*)]"]
       35 GETTABLEKS                       R6 R0 K5 ["mimeType"]
       37 NAMECALL                         R4 R4 K9 ["format"]
       39 CALL                             R4 2 1
       40 MOVE                             R3 R4
       41 SETTABLEKS                       R3 R2 K1 ["text"]
       43 RETURN                           R2 1
       44 JUMPIFNOTEQKS                    R1 K10 ["resource"] ; [+79]
       46 GETTABLEKS                       R2 R0 K10 ["resource"]
       48 GETTABLEKS                       R3 R2 K5 ["mimeType"]
       50 GETTABLEKS                       R4 R2 K11 ["blob"]
       52 JUMPIFNOT                        R4 ; [+15]
       53 JUMPIFNOT                        R3 ; [+14]
       54 GETUPVAL                         R5 0
       55 GETTABLE                         R4 R5 R3
       56 JUMPIFNOT                        R4 ; [+11]
       57 DUPTABLE                         R4 K6 [{"type", "data", "mimeType"}]
       58 LOADK                            R5 K3 ["image"]
       59 SETTABLEKS                       R5 R4 K0 ["type"]
       61 GETTABLEKS                       R5 R2 K11 ["blob"]
       63 SETTABLEKS                       R5 R4 K4 ["data"]
       65 SETTABLEKS                       R3 R4 K5 ["mimeType"]
       67 RETURN                           R4 1
       68 GETTABLEKS                       R4 R2 K1 ["text"]
       70 JUMPIFNOT                        R4 ; [+18]
       71 GETTABLEKS                       R5 R2 K13 ["uri"]
       73 ORK                              R4 R5 K12 ["unknown"]
       74 DUPTABLE                         R5 K2 [{"type", "text"}]
       75 LOADK                            R6 K1 ["text"]
       76 SETTABLEKS                       R6 R5 K0 ["type"]
       78 LOADK                            R7 K14 ["[Resource: %*]\n%*"]
       79 MOVE                             R9 R4
       80 GETTABLEKS                       R10 R2 K1 ["text"]
       82 NAMECALL                         R7 R7 K9 ["format"]
       84 CALL                             R7 3 1
       85 MOVE                             R6 R7
       86 SETTABLEKS                       R6 R5 K1 ["text"]
       88 RETURN                           R5 1
       89 GETTABLEKS                       R4 R2 K11 ["blob"]
       91 JUMPIFNOT                        R4 ; [+17]
       92 GETTABLEKS                       R5 R2 K13 ["uri"]
       94 ORK                              R4 R5 K12 ["unknown"]
       95 DUPTABLE                         R5 K2 [{"type", "text"}]
       96 LOADK                            R6 K1 ["text"]
       97 SETTABLEKS                       R6 R5 K0 ["type"]
       99 LOADK                            R7 K15 ["[Binary resource: %* (%*)]"]
      100 MOVE                             R9 R4
      101 ORK                              R10 R3 K12 ["unknown"]
      102 NAMECALL                         R7 R7 K9 ["format"]
      104 CALL                             R7 3 1
      105 MOVE                             R6 R7
      106 SETTABLEKS                       R6 R5 K1 ["text"]
      108 RETURN                           R5 1
      109 DUPTABLE                         R4 K2 [{"type", "text"}]
      110 LOADK                            R5 K1 ["text"]
      111 SETTABLEKS                       R5 R4 K0 ["type"]
      113 LOADK                            R6 K16 ["[Resource: %*]"]
      114 GETTABLEKS                       R9 R2 K13 ["uri"]
      116 ORK                              R8 R9 K12 ["unknown"]
      117 NAMECALL                         R6 R6 K9 ["format"]
      119 CALL                             R6 2 1
      120 MOVE                             R5 R6
      121 SETTABLEKS                       R5 R4 K1 ["text"]
      123 RETURN                           R4 1
      124 JUMPIFNOTEQKS                    R1 K17 ["resource_link"] ; [+28]
      126 GETTABLEKS                       R3 R0 K18 ["name"]
      128 JUMPIFNOT                        R3 ; [+10]
      129 LOADK                            R3 K19 ["[Resource link: %* (%*)]"]
      130 GETTABLEKS                       R5 R0 K18 ["name"]
      132 GETTABLEKS                       R6 R0 K13 ["uri"]
      134 NAMECALL                         R3 R3 K9 ["format"]
      136 CALL                             R3 3 1
      137 MOVE                             R2 R3
      138 JUMP                             ; [+7]
      139 LOADK                            R3 K20 ["[Resource link: %*]"]
      140 GETTABLEKS                       R5 R0 K13 ["uri"]
      142 NAMECALL                         R3 R3 K9 ["format"]
      144 CALL                             R3 2 1
      145 MOVE                             R2 R3
      146 DUPTABLE                         R3 K2 [{"type", "text"}]
      147 LOADK                            R4 K1 ["text"]
      148 SETTABLEKS                       R4 R3 K0 ["type"]
      150 SETTABLEKS                       R2 R3 K1 ["text"]
      152 RETURN                           R3 1
      153 DUPTABLE                         R2 K2 [{"type", "text"}]
      154 LOADK                            R3 K1 ["text"]
      155 SETTABLEKS                       R3 R2 K0 ["type"]
      157 LOADK                            R4 K21 ["[Unsupported content type: %*]"]
      158 FASTCALL1                        TOSTRING R1 ; [+3]
      159 MOVE                             R7 R1
      160 GETIMPORT                        R6 K23 [tostring]
      162 CALL                             R6 1 1
      163 NAMECALL                         R4 R4 K9 ["format"]
      165 CALL                             R4 2 1
      166 MOVE                             R3 R4
      167 SETTABLEKS                       R3 R2 K1 ["text"]
      169 RETURN                           R2 1

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
