PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Action %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Close activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["controls"]
        4 GETTABLEKS                       R2 R2 K1 ["actionCount"]
        6 LOADN                            R5 1
        7 MOVE                             R3 R2
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 DUPTABLE                         R8 K5 [{"text", "variant", "onActivated"}]
       11 LOADK                            R10 K6 ["Action %*"]
       12 MOVE                             R12 R5
       13 NAMECALL                         R10 R10 K7 ["format"]
       15 CALL                             R10 2 1
       16 MOVE                             R9 R10
       17 SETTABLEKS                       R9 R8 K2 ["text"]
       19 JUMPIFNOTEQ                      R5 R2 ; [+5]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K8 ["Standard"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K9 ["Utility"]
       28 SETTABLEKS                       R9 R8 K3 ["variant"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R5
       33 SETTABLEKS                       R9 R8 K4 ["onActivated"]
       35 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       37 MOVE                             R7 R1
       38 GETIMPORT                        R6 K12 [table.insert]
       40 CALL                             R6 2 0
       41 FORNLOOP                         R3
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K13 ["createElement"]
       45 GETUPVAL                         R4 3
       46 DUPTABLE                         R5 K19 [{"title", "description", "variant", "severity", "actions", "onClose"}]
       47 GETTABLEKS                       R6 R0 K0 ["controls"]
       49 GETTABLEKS                       R6 R6 K14 ["title"]
       51 SETTABLEKS                       R6 R5 K14 ["title"]
       53 GETTABLEKS                       R7 R0 K0 ["controls"]
       55 GETTABLEKS                       R7 R7 K15 ["description"]
       57 JUMPIFEQKS                       R7 K20 [""] ; [+6]
       59 GETTABLEKS                       R6 R0 K0 ["controls"]
       61 GETTABLEKS                       R6 R6 K15 ["description"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R6
       65 SETTABLEKS                       R6 R5 K15 ["description"]
       67 GETTABLEKS                       R6 R0 K0 ["controls"]
       69 GETTABLEKS                       R6 R6 K3 ["variant"]
       71 SETTABLEKS                       R6 R5 K3 ["variant"]
       73 GETUPVAL                         R6 4
       74 SETTABLEKS                       R6 R5 K16 ["severity"]
       76 LENGTH                           R7 R1
       77 LOADN                            R8 0
       78 JUMPIFNOTLT                      R8 R7 ; [+3]
       80 MOVE                             R6 R1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R6
       83 SETTABLEKS                       R6 R5 K17 ["actions"]
       85 GETTABLEKS                       R7 R0 K0 ["controls"]
       87 GETTABLEKS                       R7 R7 K21 ["hasCloseAffordance"]
       89 JUMPIFNOT                        R7 ; [+3]
       90 NEWCLOSURE                       R6 P1
       91 CAPTURE                          UPVAL U1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R6
       94 SETTABLEKS                       R6 R5 K18 ["onClose"]
       96 CALL                             R3 2 -1
       97 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"name", "story"}]
        1 SETTABLEKS                       R1 R2 K0 ["name"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["story"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["AlertSeverity"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["AlertVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R7 K12 ["ButtonVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["SystemBanner"]
       46 CALL                             R7 1 1
       47 DUPTABLE                         R8 K18 [{["summary"] = "SystemBanner", ["stories"], ["controls"]}]
       48 GETTABLEKS                       R9 R2 K19 ["map"]
       50 MOVE                             R10 R4
       51 DUPCLOSURE                       R11 K20 [PROTO_3]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K16 ["stories"]
       58 DUPTABLE                         R9 K29 [{["title"] = "Hi, I'm a title", ["description"] = "I'm a description", ["variant"], ["actionCount"], ["hasCloseAffordance"] = True}]
       59 GETTABLEKS                       R10 R2 K30 ["values"]
       61 MOVE                             R11 R5
       62 CALL                             R10 1 1
       63 SETTABLEKS                       R10 R9 K25 ["variant"]
       65 NEWTABLE                         R10 0 4
       67 LOADN                            R11 0
       68 LOADN                            R12 1
       69 LOADN                            R13 2
       70 LOADN                            R14 3
       71 SETLIST                          R10 R11 4 [1]
       73 SETTABLEKS                       R10 R9 K26 ["actionCount"]
       75 SETTABLEKS                       R9 R8 K17 ["controls"]
       77 RETURN                           R8 1
