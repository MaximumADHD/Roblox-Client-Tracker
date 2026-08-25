PROTO_0:
        0 LOADK                            R1 K0 ["TextureGen-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["hintImage"]
       17 GETTABLEKS                       R5 R0 K7 ["textPrompt"]
       19 FASTCALL1                        TYPEOF R5 ; [+2]
       20 GETIMPORT                        R4 K1 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K8 ["string"] ; [+8]
       25 LOADB                            R3 1
       26 GETTABLEKS                       R5 R0 K7 ["textPrompt"]
       28 LENGTH                           R4 R5
       29 LOADN                            R5 0
       30 JUMPIFLT                         R5 R4 ; [+5]
       32 JUMPIFNOTEQKNIL                  R1 ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       38 LOADK                            R4 K9 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       39 GETIMPORT                        R2 K5 [assert]
       41 CALL                             R2 2 0
       42 GETTABLEKS                       R2 R0 K10 ["isManualRun"]
       44 JUMPIFEQKNIL                     R2 ; [+16]
       46 FASTCALL1                        TYPEOF R2 ; [+3]
       47 MOVE                             R6 R2
       48 GETIMPORT                        R5 K1 [typeof]
       50 CALL                             R5 1 1
       51 JUMPIFEQKS                       R5 K11 ["boolean"] ; [+2]
       53 LOADB                            R4 0 +1
       54 LOADB                            R4 1
       55 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       57 LOADK                            R5 K12 ["isManualRun must be a boolean"]
       58 GETIMPORT                        R3 K5 [assert]
       60 CALL                             R3 2 0
       61 GETTABLEKS                       R3 R0 K13 ["selectedInstanceRef"]
       63 LOADNIL                          R4
       64 JUMPIFEQKNIL                     R3 ; [+34]
       66 FASTCALL1                        TYPEOF R3 ; [+3]
       67 MOVE                             R8 R3
       68 GETIMPORT                        R7 K1 [typeof]
       70 CALL                             R7 1 1
       71 JUMPIFEQKS                       R7 K2 ["table"] ; [+2]
       73 LOADB                            R6 0 +1
       74 LOADB                            R6 1
       75 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       77 LOADK                            R7 K14 ["selectedInstanceRef must be a table"]
       78 GETIMPORT                        R5 K5 [assert]
       80 CALL                             R5 2 0
       81 GETTABLEKS                       R8 R3 K15 ["uniqueId"]
       83 FASTCALL1                        TYPEOF R8 ; [+2]
       84 GETIMPORT                        R7 K1 [typeof]
       86 CALL                             R7 1 1
       87 JUMPIFEQKS                       R7 K8 ["string"] ; [+2]
       89 LOADB                            R6 0 +1
       90 LOADB                            R6 1
       91 FASTCALL2K                       ASSERT R6 K16 ; [+4]
       93 LOADK                            R7 K16 ["selectedInstanceRef.uniqueId must be a string"]
       94 GETIMPORT                        R5 K5 [assert]
       96 CALL                             R5 2 0
       97 GETTABLEKS                       R4 R3 K15 ["uniqueId"]
       99 JUMPIFNOTEQKNIL                  R4 ; [+2]
      101 LOADB                            R6 0 +1
      102 LOADB                            R6 1
      103 FASTCALL2K                       ASSERT R6 K17 ; [+4]
      105 LOADK                            R7 K17 ["selectedInstanceRef must be provided — texture generation requires a source MeshPart or Model"]
      106 GETIMPORT                        R5 K5 [assert]
      108 CALL                             R5 2 0
      109 DUPTABLE                         R5 K19 [{"textPrompt", "hintImage", "isManualRun", "selectedUniqueId"}]
      110 GETTABLEKS                       R6 R0 K7 ["textPrompt"]
      112 SETTABLEKS                       R6 R5 K7 ["textPrompt"]
      114 SETTABLEKS                       R1 R5 K6 ["hintImage"]
      116 SETTABLEKS                       R2 R5 K10 ["isManualRun"]
      118 SETTABLEKS                       R4 R5 K18 ["selectedUniqueId"]
      120 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateTextureAsync"]
        3 DUPTABLE                         R1 K5 [{"requestId", "textPrompt", "hintImage", "selectedUniqueId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["textPrompt"]
       10 SETTABLEKS                       R2 R1 K2 ["textPrompt"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["hintImage"]
       15 SETTABLEKS                       R2 R1 K3 ["hintImage"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["selectedUniqueId"]
       20 SETTABLEKS                       R2 R1 K4 ["selectedUniqueId"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertTexturedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["bridges"]
        6 GETTABLEKS                       R2 R2 K1 ["TextureGen"]
        8 GETTABLEKS                       R2 R2 K2 ["createGuestContext"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R2 R2 K3 ["bridge"]
       15 LOADK                            R4 K4 ["TextureGen-"]
       16 GETUPVAL                         R5 2
       17 LOADB                            R7 0
       18 NAMECALL                         R5 R5 K5 ["GenerateGUID"]
       20 CALL                             R5 2 1
       21 CONCAT                           R3 R4 R5
       22 GETIMPORT                        R4 K7 [pcall]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CALL                             R4 1 2
       29 JUMPIF                           R4 ; [+11]
       30 GETIMPORT                        R6 K9 [error]
       32 LOADK                            R8 K10 ["Texture generation failed with error: "]
       33 FASTCALL1                        TOSTRING R5 ; [+3]
       34 MOVE                             R10 R5
       35 GETIMPORT                        R9 K12 [tostring]
       37 CALL                             R9 1 1
       38 CONCAT                           R7 R8 R9
       39 LOADN                            R8 0
       40 CALL                             R6 2 0
       41 GETTABLEKS                       R6 R1 K13 ["isManualRun"]
       43 JUMPIFNOT                        R6 ; [+15]
       44 DUPTABLE                         R6 K17 [{"tag", "requestId", "generationName"}]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K18 ["getLinkTag"]
       48 MOVE                             R8 R3
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K14 ["tag"]
       52 SETTABLEKS                       R3 R6 K15 ["requestId"]
       54 GETTABLEKS                       R7 R1 K19 ["textPrompt"]
       56 SETTABLEKS                       R7 R6 K16 ["generationName"]
       58 RETURN                           R6 1
       59 GETIMPORT                        R6 K7 [pcall]
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CALL                             R6 1 2
       65 JUMPIF                           R6 ; [+19]
       66 GETIMPORT                        R8 K7 [pcall]
       68 GETTABLEKS                       R9 R2 K20 ["cancelGenerationAsync"]
       70 DUPTABLE                         R10 K21 [{"requestId"}]
       71 SETTABLEKS                       R3 R10 K15 ["requestId"]
       73 CALL                             R8 2 0
       74 GETIMPORT                        R8 K9 [error]
       76 LOADK                            R10 K22 ["Failed to insert textured model with error: "]
       77 FASTCALL1                        TOSTRING R7 ; [+3]
       78 MOVE                             R12 R7
       79 GETIMPORT                        R11 K12 [tostring]
       81 CALL                             R11 1 1
       82 CONCAT                           R9 R10 R11
       83 LOADN                            R10 0
       84 CALL                             R8 2 0
       85 DUPTABLE                         R8 K17 [{"tag", "requestId", "generationName"}]
       86 GETUPVAL                         R9 3
       87 GETTABLEKS                       R9 R9 K18 ["getLinkTag"]
       89 MOVE                             R10 R3
       90 CALL                             R9 1 1
       91 SETTABLEKS                       R9 R8 K14 ["tag"]
       93 SETTABLEKS                       R3 R8 K15 ["requestId"]
       95 GETTABLEKS                       R9 R1 K19 ["textPrompt"]
       97 SETTABLEKS                       R9 R8 K16 ["generationName"]
       99 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+25]
        9 FASTCALL1                        TOSTRING R4 ; [+3]
       10 MOVE                             R6 R4
       11 GETIMPORT                        R5 K3 [tostring]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 MOVE                             R8 R5
       17 NAMECALL                         R6 R6 K4 ["addText"]
       19 CALL                             R6 2 1
       20 DUPTABLE                         R8 K6 [{"errorMessage"}]
       21 SETTABLEKS                       R5 R8 K5 ["errorMessage"]
       23 NAMECALL                         R6 R6 K7 ["setStructuredContent"]
       25 CALL                             R6 2 1
       26 LOADB                            R8 1
       27 NAMECALL                         R6 R6 K8 ["setError"]
       29 CALL                             R6 2 1
       30 NAMECALL                         R6 R6 K9 ["build"]
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1
       34 GETUPVAL                         R5 2
       35 CALL                             R5 0 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K10 ["toString"]
       39 DUPTABLE                         R8 K13 [{"tag", "generationName"}]
       40 GETTABLEKS                       R9 R4 K11 ["tag"]
       42 SETTABLEKS                       R9 R8 K11 ["tag"]
       44 GETTABLEKS                       R9 R4 K12 ["generationName"]
       46 SETTABLEKS                       R9 R8 K12 ["generationName"]
       48 CALL                             R7 1 -1
       49 NAMECALL                         R5 R5 K4 ["addText"]
       51 CALL                             R5 -1 1
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K7 ["setStructuredContent"]
       55 CALL                             R5 2 1
       56 NAMECALL                         R5 R5 K9 ["build"]
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["TextureGen"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 LOADNIL                          R2
       13 GETIMPORT                        R3 K5 [pcall]
       15 GETTABLEKS                       R4 R1 K6 ["getSelectedMeshRef"]
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+19]
       19 JUMPIFNOT                        R4 ; [+18]
       20 DUPTABLE                         R5 K11 [{"uniqueId", "name", "className", "isValid"}]
       21 GETTABLEKS                       R6 R4 K7 ["uniqueId"]
       23 SETTABLEKS                       R6 R5 K7 ["uniqueId"]
       25 GETTABLEKS                       R6 R4 K8 ["name"]
       27 SETTABLEKS                       R6 R5 K8 ["name"]
       29 GETTABLEKS                       R6 R4 K9 ["className"]
       31 SETTABLEKS                       R6 R5 K9 ["className"]
       33 GETTABLEKS                       R6 R4 K12 ["isTextureable"]
       35 SETTABLEKS                       R6 R5 K10 ["isValid"]
       37 MOVE                             R2 R5
       38 NEWTABLE                         R5 0 3
       40 DUPTABLE                         R6 K15 [{"name", "inputType", "initialValue"}]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K16 ["SelectedInstanceRef"]
       44 SETTABLEKS                       R7 R6 K8 ["name"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K17 ["Instance"]
       49 SETTABLEKS                       R7 R6 K13 ["inputType"]
       51 SETTABLEKS                       R2 R6 K14 ["initialValue"]
       53 DUPTABLE                         R7 K15 [{"name", "inputType", "initialValue"}]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K18 ["TextPrompt"]
       57 SETTABLEKS                       R8 R7 K8 ["name"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K19 ["String"]
       62 SETTABLEKS                       R8 R7 K13 ["inputType"]
       64 GETUPVAL                         R8 3
       65 SETTABLEKS                       R8 R7 K14 ["initialValue"]
       67 DUPTABLE                         R8 K15 [{"name", "inputType", "initialValue"}]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K20 ["HintImage"]
       71 SETTABLEKS                       R9 R8 K8 ["name"]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K21 ["Image"]
       76 SETTABLEKS                       R9 R8 K13 ["inputType"]
       78 GETUPVAL                         R10 4
       79 JUMPIFNOT                        R10 ; [+6]
       80 GETUPVAL                         R9 5
       81 GETTABLEKS                       R9 R9 K22 ["getImage"]
       83 GETUPVAL                         R10 4
       84 CALL                             R9 1 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R9
       87 SETTABLEKS                       R9 R8 K14 ["initialValue"]
       89 SETLIST                          R5 R6 3 [1]
       91 DUPTABLE                         R6 K26 [{"formId", "fields", "validation"}]
       92 GETUPVAL                         R7 6
       93 GETTABLEKS                       R7 R7 K23 ["formId"]
       95 SETTABLEKS                       R7 R6 K23 ["formId"]
       97 SETTABLEKS                       R5 R6 K24 ["fields"]
       99 GETUPVAL                         R7 7
      100 DUPTABLE                         R8 K29 [{"kind", "rules"}]
      101 GETUPVAL                         R9 8
      102 GETTABLEKS                       R9 R9 K30 ["All"]
      104 SETTABLEKS                       R9 R8 K27 ["kind"]
      106 NEWTABLE                         R9 0 3
      108 GETUPVAL                         R10 7
      109 DUPTABLE                         R11 K32 [{"kind", "field"}]
      110 GETUPVAL                         R12 8
      111 GETTABLEKS                       R12 R12 K33 ["Present"]
      113 SETTABLEKS                       R12 R11 K27 ["kind"]
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R12 R12 K16 ["SelectedInstanceRef"]
      118 SETTABLEKS                       R12 R11 K31 ["field"]
      120 CALL                             R10 1 1
      121 GETUPVAL                         R11 7
      122 DUPTABLE                         R12 K35 [{"kind", "rule"}]
      123 GETUPVAL                         R13 8
      124 GETTABLEKS                       R13 R13 K36 ["Not"]
      126 SETTABLEKS                       R13 R12 K27 ["kind"]
      128 GETUPVAL                         R13 7
      129 DUPTABLE                         R14 K39 [{["kind"], ["field"], ["value"] = False}]
      130 GETUPVAL                         R15 8
      131 GETTABLEKS                       R15 R15 K40 ["Equals"]
      133 SETTABLEKS                       R15 R14 K27 ["kind"]
      135 GETUPVAL                         R15 1
      136 GETTABLEKS                       R15 R15 K41 ["SelectedInstanceRefIsValid"]
      138 SETTABLEKS                       R15 R14 K31 ["field"]
      140 CALL                             R13 1 1
      141 SETTABLEKS                       R13 R12 K34 ["rule"]
      143 CALL                             R11 1 1
      144 GETUPVAL                         R12 7
      145 DUPTABLE                         R13 K29 [{"kind", "rules"}]
      146 GETUPVAL                         R14 8
      147 GETTABLEKS                       R14 R14 K42 ["Any"]
      149 SETTABLEKS                       R14 R13 K27 ["kind"]
      151 NEWTABLE                         R14 0 2
      153 GETUPVAL                         R15 7
      154 DUPTABLE                         R16 K32 [{"kind", "field"}]
      155 GETUPVAL                         R17 8
      156 GETTABLEKS                       R17 R17 K33 ["Present"]
      158 SETTABLEKS                       R17 R16 K27 ["kind"]
      160 GETUPVAL                         R17 1
      161 GETTABLEKS                       R17 R17 K18 ["TextPrompt"]
      163 SETTABLEKS                       R17 R16 K31 ["field"]
      165 CALL                             R15 1 1
      166 GETUPVAL                         R16 7
      167 DUPTABLE                         R17 K32 [{"kind", "field"}]
      168 GETUPVAL                         R18 8
      169 GETTABLEKS                       R18 R18 K33 ["Present"]
      171 SETTABLEKS                       R18 R17 K27 ["kind"]
      173 GETUPVAL                         R18 1
      174 GETTABLEKS                       R18 R18 K20 ["HintImage"]
      176 SETTABLEKS                       R18 R17 K31 ["field"]
      178 CALL                             R16 1 -1
      179 SETLIST                          R14 R15 -1 [1]
      181 SETTABLEKS                       R14 R13 K28 ["rules"]
      183 CALL                             R12 1 -1
      184 SETLIST                          R9 R10 -1 [1]
      186 SETTABLEKS                       R9 R8 K28 ["rules"]
      188 CALL                             R7 1 1
      189 SETTABLEKS                       R7 R6 K25 ["validation"]
      191 DUPTABLE                         R7 K44 [{"name", "arguments"}]
      192 GETUPVAL                         R8 9
      193 GETTABLEKS                       R8 R8 K45 ["AskInput"]
      195 SETTABLEKS                       R8 R7 K8 ["name"]
      197 SETTABLEKS                       R6 R7 K43 ["arguments"]
      199 RETURN                           R7 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["HintImage"]
        9 GETTABLE                         R2 R1 R3
       10 LOADNIL                          R3
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K3 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+8]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["getImage"]
       21 MOVE                             R5 R2
       22 CALL                             R4 1 1
       23 MOVE                             R3 R4
       24 JUMP                             ; [+8]
       25 FASTCALL1                        TYPEOF R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K3 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+2]
       32 MOVE                             R3 R2
       33 DUPTABLE                         R4 K12 [{["textPrompt"], ["hintImage"], ["isManualRun"] = True, ["selectedInstanceRef"]}]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K13 ["TextPrompt"]
       37 GETTABLE                         R5 R1 R6
       38 SETTABLEKS                       R5 R4 K7 ["textPrompt"]
       40 SETTABLEKS                       R3 R4 K8 ["hintImage"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K14 ["SelectedInstanceRef"]
       45 GETTABLE                         R5 R1 R6
       46 SETTABLEKS                       R5 R4 K11 ["selectedInstanceRef"]
       48 DUPTABLE                         R5 K17 [{"name", "arguments"}]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K18 ["TextureGen"]
       52 SETTABLEKS                       R6 R5 K15 ["name"]
       54 SETTABLEKS                       R4 R5 K16 ["arguments"]
       56 RETURN                           R5 1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 DUPCLOSURE                       R2 K0 [PROTO_8]
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U8
       16 NEWTABLE                         R3 0 2
       18 MOVE                             R4 R1
       19 MOVE                             R5 R2
       20 SETLIST                          R3 R4 2 [1]
       22 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [buffer.fromstring]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K3 ["imageBase64"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K4 ["Base64Decode"]
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["selectedInstanceRef"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETIMPORT                        R3 K2 [pcall]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["captureSourceInstanceImageAsync"]
       11 DUPTABLE                         R5 K5 [{"selectedUniqueId"}]
       12 GETTABLEKS                       R6 R2 K6 ["uniqueId"]
       14 SETTABLEKS                       R6 R5 K4 ["selectedUniqueId"]
       16 CALL                             R3 2 2
       17 JUMPIFNOT                        R3 ; [+2]
       18 JUMPIFNOTEQKNIL                  R4 ; [+3]
       20 LOADNIL                          R5
       21 RETURN                           R5 1
       22 GETIMPORT                        R5 K2 [pcall]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R4
       27 CALL                             R5 1 2
       28 JUMPIF                           R5 ; [+2]
       29 LOADNIL                          R7
       30 RETURN                           R7 1
       31 DUPTABLE                         R7 K8 [{"imageBytes"}]
       32 SETTABLEKS                       R6 R7 K7 ["imageBytes"]
       34 RETURN                           R7 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["build"]
        3 DUPTABLE                         R2 K8 [{["promptKey"] = "textPrompt", ["wizardMode"], ["model"], ["modelFlow"] = "texture", ["resolveSeedImageAsync"]}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
        7 SETTABLEKS                       R3 R2 K3 ["wizardMode"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K10 ["FStringAssistantMeshGenImageGenModelOverride"]
       12 SETTABLEKS                       R3 R2 K4 ["model"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R3 R2 K7 ["resolveSeedImageAsync"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_13:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+3]
        6 GETTABLEN                        R2 R1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 DUPTABLE                         R2 K5 [{[1], ["hintImage"] = , ["isManualRun"], ["selectedInstanceRef"] = }]
       11 SETTABLEKS                       R0 R2 K0 ["textPrompt"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
       16 SETTABLEKS                       R3 R2 K3 ["isManualRun"]
       18 DUPTABLE                         R3 K9 [{"name", "arguments"}]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K10 ["TextureGen"]
       22 SETTABLEKS                       R4 R3 K7 ["name"]
       24 SETTABLEKS                       R2 R3 K8 ["arguments"]
       26 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["isValid"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K1 ["TextureGen"]
        8 LOADK                            R4 K2 ["RequiresSingleMeshPart"]
        9 NAMECALL                         R1 R1 K3 ["getText"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_15:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["isTextureableInstance"]
        5 DUPTABLE                         R3 K4 [{"uniqueId"}]
        6 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
        8 SETTABLEKS                       R4 R3 K3 ["uniqueId"]
       10 CALL                             R1 2 2
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+4]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_16:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_17:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["storeImage"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["textPrompt"]
        3 FASTCALL1                        TYPEOF R3 ; [+2]
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+9]
        9 GETTABLEKS                       R3 R0 K0 ["textPrompt"]
       11 LENGTH                           R2 R3
       12 LOADN                            R3 0
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 GETTABLEKS                       R3 R0 K4 ["hintImage"]
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 GETTABLEKS                       R3 R0 K5 ["selectedInstanceRef"]
       25 LOADB                            R4 0
       26 JUMPIFEQKNIL                     R3 ; [+7]
       28 GETTABLEKS                       R5 R3 K6 ["isValid"]
       30 JUMPIFEQKB                       R5 TRUE ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 JUMPIF                           R1 ; [+2]
       35 MOVE                             R5 R2
       36 JUMPIFNOT                        R5 ; [+1]
       37 MOVE                             R5 R4
       38 RETURN                           R5 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["TextureGen"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 LOADNIL                          R1
       13 GETIMPORT                        R2 K5 [pcall]
       15 GETTABLEKS                       R3 R0 K6 ["getSelectedMeshRef"]
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R1 R3
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R4 K8 [warn]
       23 LOADK                            R5 K9 ["[TextureGen] getSelectedMeshRef failed:"]
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R7 R3
       26 GETIMPORT                        R6 K11 [tostring]
       28 CALL                             R6 1 1
       29 CALL                             R4 2 0
       30 JUMPIFNOT                        R1 ; [+18]
       31 DUPTABLE                         R4 K16 [{"uniqueId", "name", "className", "isValid"}]
       32 GETTABLEKS                       R5 R1 K12 ["uniqueId"]
       34 SETTABLEKS                       R5 R4 K12 ["uniqueId"]
       36 GETTABLEKS                       R5 R1 K13 ["name"]
       38 SETTABLEKS                       R5 R4 K13 ["name"]
       40 GETTABLEKS                       R5 R1 K14 ["className"]
       42 SETTABLEKS                       R5 R4 K14 ["className"]
       44 GETTABLEKS                       R5 R1 K17 ["isTextureable"]
       46 SETTABLEKS                       R5 R4 K15 ["isValid"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R4
       50 NEWTABLE                         R5 0 0
       52 MOVE                             R7 R5
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K18 ["createInstanceRowDefinition"]
       56 DUPTABLE                         R9 K25 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["validate"], ["resolveValidityAsync"]}]
       57 GETUPVAL                         R10 2
       58 LOADK                            R12 K1 ["TextureGen"]
       59 LOADK                            R13 K26 ["InputSelectedMesh"]
       60 NAMECALL                         R10 R10 K27 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K19 ["label"]
       65 SETTABLEKS                       R4 R9 K22 ["initialValue"]
       67 DUPCLOSURE                       R10 K28 [PROTO_14]
       68 CAPTURE                          UPVAL U2
       69 SETTABLEKS                       R10 R9 K23 ["validate"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R10 R9 K24 ["resolveValidityAsync"]
       75 CALL                             R8 1 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R6 K31 [table.insert]
       79 CALL                             R6 -1 0
       80 MOVE                             R7 R5
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K32 ["createStringRowDefinition"]
       84 DUPTABLE                         R9 K38 [{["label"], ["prop"] = "textPrompt", ["initialValue"], ["multiLine"] = True, ["placeholder"], ["onChanged"]}]
       85 GETUPVAL                         R10 2
       86 LOADK                            R12 K1 ["TextureGen"]
       87 LOADK                            R13 K39 ["InputPromptTitle"]
       88 NAMECALL                         R10 R10 K27 ["getText"]
       90 CALL                             R10 3 1
       91 SETTABLEKS                       R10 R9 K19 ["label"]
       93 GETUPVAL                         R10 3
       94 SETTABLEKS                       R10 R9 K22 ["initialValue"]
       96 GETUPVAL                         R10 2
       97 LOADK                            R12 K1 ["TextureGen"]
       98 LOADK                            R13 K40 ["InputPromptPlaceholder"]
       99 NAMECALL                         R10 R10 K27 ["getText"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K36 ["placeholder"]
      104 NEWCLOSURE                       R10 P2
      105 CAPTURE                          UPVAL U3
      106 SETTABLEKS                       R10 R9 K37 ["onChanged"]
      108 CALL                             R8 1 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R6 K31 [table.insert]
      112 CALL                             R6 -1 0
      113 MOVE                             R7 R5
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R8 R8 K41 ["createHintImageRowDefinition"]
      117 DUPTABLE                         R9 K43 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["onChanged"]}]
      118 GETUPVAL                         R10 2
      119 LOADK                            R12 K1 ["TextureGen"]
      120 LOADK                            R13 K44 ["InputHintImageTitle"]
      121 NAMECALL                         R10 R10 K27 ["getText"]
      123 CALL                             R10 3 1
      124 SETTABLEKS                       R10 R9 K19 ["label"]
      126 GETUPVAL                         R11 4
      127 JUMPIFNOT                        R11 ; [+6]
      128 GETUPVAL                         R10 5
      129 GETTABLEKS                       R10 R10 K45 ["getImage"]
      131 GETUPVAL                         R11 4
      132 CALL                             R10 1 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R10
      135 SETTABLEKS                       R10 R9 K22 ["initialValue"]
      137 NEWCLOSURE                       R10 P3
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          UPVAL U5
      140 SETTABLEKS                       R10 R9 K37 ["onChanged"]
      142 CALL                             R8 1 -1
      143 FASTCALL                         TABLE_INSERT ; [+2]
      144 GETIMPORT                        R6 K31 [table.insert]
      146 CALL                             R6 -1 0
      147 DUPTABLE                         R6 K51 [{"description", "confirmButtonText", "propertyRows", "canConfirm", "imageSelection"}]
      148 GETUPVAL                         R7 2
      149 LOADK                            R9 K1 ["TextureGen"]
      150 LOADK                            R10 K52 ["InputDisclaimer"]
      151 NAMECALL                         R7 R7 K27 ["getText"]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K46 ["description"]
      156 GETUPVAL                         R7 2
      157 LOADK                            R9 K1 ["TextureGen"]
      158 LOADK                            R10 K53 ["InputGenerateTexture"]
      159 NAMECALL                         R7 R7 K27 ["getText"]
      161 CALL                             R7 3 1
      162 SETTABLEKS                       R7 R6 K47 ["confirmButtonText"]
      164 SETTABLEKS                       R5 R6 K48 ["propertyRows"]
      166 DUPCLOSURE                       R7 K54 [PROTO_18]
      167 SETTABLEKS                       R7 R6 K49 ["canConfirm"]
      169 GETUPVAL                         R8 6
      170 GETTABLEKS                       R8 R8 K55 ["EngineFeatureAssistantGen3dImagePreview"]
      172 JUMPIFNOT                        R8 ; [+4]
      173 GETUPVAL                         R7 7
      174 MOVE                             R8 R0
      175 CALL                             R7 1 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R7
      178 SETTABLEKS                       R7 R6 K50 ["imageSelection"]
      180 RETURN                           R6 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["TextureGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_22:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U4
        9 GETUPVAL                         R3 5
       10 GETTABLEKS                       R3 R3 K0 ["define"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 6
       14 GETTABLEKS                       R5 R5 K1 ["TextureGen"]
       16 NAMECALL                         R3 R3 K2 ["setName"]
       18 CALL                             R3 2 1
       19 LOADK                            R5 K3 ["Re-textures an existing mesh using AI, given a text prompt describing the desired look. Requires a source MeshPart or Model. Replaces the source in place."]
       20 NAMECALL                         R3 R3 K4 ["setDescription"]
       22 CALL                             R3 2 1
       23 LOADK                            R5 K5 ["textPrompt"]
       24 DUPTABLE                         R6 K10 [{["type"] = "string", ["description"] = "Text description of the desired texture/appearance, e.g. \"rusty metal\"."}]
       25 NAMECALL                         R3 R3 K11 ["addArgument"]
       27 CALL                             R3 3 1
       28 LOADK                            R5 K12 ["hintImage"]
       29 DUPTABLE                         R6 K15 [{["type"] = "object", ["description"] = "Optional reference image guiding the texture style. When provided, textPrompt may be an empty string."}]
       30 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       32 CALL                             R3 3 1
       33 LOADK                            R5 K17 ["selectedInstanceRef"]
       34 DUPTABLE                         R6 K21 [{["type"] = "object", ["description"] = "The source mesh: an InstanceRef pointing to a MeshPart or to a Model containing the mesh to re-texture.", ["properties"], ["required"]}]
       35 DUPTABLE                         R7 K23 [{"uniqueId"}]
       36 DUPTABLE                         R8 K25 [{["type"] = "string", ["description"] = "Unique instance id of the source MeshPart or Model."}]
       37 SETTABLEKS                       R8 R7 K22 ["uniqueId"]
       39 SETTABLEKS                       R7 R6 K19 ["properties"]
       41 NEWTABLE                         R7 0 1
       43 LOADK                            R8 K22 ["uniqueId"]
       44 SETLIST                          R7 R8 1 [1]
       46 SETTABLEKS                       R7 R6 K20 ["required"]
       48 NAMECALL                         R3 R3 K11 ["addArgument"]
       50 CALL                             R3 3 1
       51 DUPTABLE                         R5 K33 [{["title"] = "Texture Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       52 NAMECALL                         R3 R3 K34 ["setAnnotations"]
       54 CALL                             R3 2 1
       55 MOVE                             R5 R2
       56 NAMECALL                         R3 R3 K35 ["setHandler"]
       58 CALL                             R3 2 1
       59 NAMECALL                         R3 R3 K36 ["build"]
       61 CALL                             R3 1 1
       62 LOADK                            R4 K37 [""]
       63 LOADNIL                          R5
       64 NEWCLOSURE                       R6 P2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          REF R5
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U12
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U13
       75 DUPCLOSURE                       R7 K38 [PROTO_12]
       76 CAPTURE                          UPVAL U14
       77 CAPTURE                          UPVAL U15
       78 CAPTURE                          UPVAL U16
       79 NEWCLOSURE                       R8 P4
       80 CAPTURE                          REF R4
       81 CAPTURE                          REF R5
       82 CAPTURE                          UPVAL U15
       83 CAPTURE                          UPVAL U6
       84 NEWCLOSURE                       R9 P5
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U17
       87 CAPTURE                          UPVAL U18
       88 CAPTURE                          REF R4
       89 CAPTURE                          REF R5
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          UPVAL U15
       92 CAPTURE                          VAL R7
       93 DUPTABLE                         R10 K45 [{["command"] = "generate_texture", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
       94 DUPCLOSURE                       R11 K46 [PROTO_20]
       95 CAPTURE                          UPVAL U18
       96 SETTABLEKS                       R11 R10 K41 ["getDescription"]
       98 GETUPVAL                         R12 19
       99 GETTABLEKS                       R12 R12 K47 ["getIsAskInputToolEnabled"]
      101 CALL                             R12 0 1
      102 JUMPIFNOT                        R12 ; [+2]
      103 MOVE                             R11 R6
      104 JUMP                             ; [+1]
      105 LOADNIL                          R11
      106 SETTABLEKS                       R11 R10 K42 ["runToolChain"]
      108 GETUPVAL                         R12 19
      109 GETTABLEKS                       R12 R12 K47 ["getIsAskInputToolEnabled"]
      111 CALL                             R12 0 1
      112 JUMPIFNOT                        R12 ; [+2]
      113 LOADNIL                          R11
      114 JUMP                             ; [+1]
      115 MOVE                             R11 R8
      116 SETTABLEKS                       R11 R10 K43 ["mapToToolCall"]
      118 GETUPVAL                         R12 19
      119 GETTABLEKS                       R12 R12 K47 ["getIsAskInputToolEnabled"]
      121 CALL                             R12 0 1
      122 JUMPIFNOT                        R12 ; [+2]
      123 LOADNIL                          R11
      124 JUMP                             ; [+1]
      125 MOVE                             R11 R9
      126 SETTABLEKS                       R11 R10 K44 ["getInputRequestArguments"]
      128 DUPTABLE                         R11 K52 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      129 SETTABLEKS                       R3 R11 K48 ["definition"]
      131 GETUPVAL                         R13 15
      132 GETTABLEKS                       R13 R13 K53 ["FFlagAssistantTextureGenTool"]
      134 JUMPIFNOT                        R13 ; [+6]
      135 NEWTABLE                         R12 0 1
      137 MOVE                             R13 R10
      138 SETLIST                          R12 R13 1 [1]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R12
      142 SETTABLEKS                       R12 R11 K49 ["slashCommands"]
      144 DUPCLOSURE                       R12 K54 [PROTO_21]
      145 SETTABLEKS                       R12 R11 K50 ["getPreExecuteWarning"]
      147 DUPTABLE                         R12 K57 [{["resetTimeoutOnProgress"] = True}]
      148 SETTABLEKS                       R12 R11 K51 ["toolCallOptions"]
      150 CLOSEUPVALS                      R4
      151 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AskInput"]
       19 GETTABLEKS                       R3 R3 K12 ["AskInputTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Components"]
       26 GETTABLEKS                       R4 R4 K14 ["DEPRECATED_PropertyRows"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["FlagUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Flags"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K17 ["Parent"]
       43 GETTABLEKS                       R7 R7 K18 ["ModelContextProtocol"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Util"]
       50 GETTABLEKS                       R8 R8 K19 ["SlashCommandConfiguration"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K20 ["Tools"]
       57 GETTABLEKS                       R9 R9 K21 ["ToolTypes"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Util"]
       64 GETTABLEKS                       R10 R10 K22 ["ToolUtils"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R0 K23 ["Resources"]
       71 GETTABLEKS                       R11 R11 K24 ["Localization"]
       73 GETTABLEKS                       R11 R11 K25 ["Translator"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R0 K26 ["Types"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [game]
       83 LOADK                            R14 K27 ["EncodingService"]
       84 NAMECALL                         R12 R12 K7 ["GetService"]
       86 CALL                             R12 2 1
       87 GETIMPORT                        R13 K9 [require]
       89 GETTABLEKS                       R14 R0 K10 ["Util"]
       91 GETTABLEKS                       R14 R14 K28 ["ImageContentStore"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K9 [require]
       96 GETTABLEKS                       R15 R0 K13 ["Components"]
       98 GETTABLEKS                       R15 R15 K29 ["ImageSelection"]
      100 GETTABLEKS                       R15 R15 K30 ["ImageSelectionConfigBuilder"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K9 [require]
      105 GETTABLEKS                       R16 R0 K31 ["Bridges"]
      107 GETTABLEKS                       R16 R16 K32 ["createTextureGenBridge"]
      109 GETTABLEKS                       R16 R16 K33 ["TextureGenBridgeTypes"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K9 [require]
      114 GETTABLEKS                       R17 R0 K10 ["Util"]
      116 GETTABLEKS                       R17 R17 K34 ["TextureGen"]
      118 GETTABLEKS                       R17 R17 K35 ["TextureGenTypes"]
      120 CALL                             R16 1 1
      121 GETTABLEKS                       R17 R6 K10 ["Util"]
      123 GETTABLEKS                       R17 R17 K36 ["ToolBuilder"]
      125 GETTABLEKS                       R18 R6 K10 ["Util"]
      127 GETTABLEKS                       R18 R18 K37 ["ToolResult"]
      129 GETTABLEKS                       R19 R8 K38 ["ToolNames"]
      131 GETTABLEKS                       R20 R2 K39 ["INPUT_TYPE"]
      133 GETTABLEKS                       R21 R2 K40 ["RULE_KIND"]
      135 GETTABLEKS                       R22 R2 K41 ["rule"]
      137 GETTABLEKS                       R23 R7 K42 ["Configs"]
      139 GETTABLEKS                       R23 R23 K34 ["TextureGen"]
      141 GETTABLEKS                       R24 R23 K43 ["row"]
      143 DUPCLOSURE                       R25 K44 [PROTO_0]
      144 CAPTURE                          VAL R1
      145 DUPCLOSURE                       R26 K45 [PROTO_1]
      146 DUPCLOSURE                       R27 K46 [PROTO_22]
      147 CAPTURE                          VAL R26
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R4
      167 RETURN                           R27 1
