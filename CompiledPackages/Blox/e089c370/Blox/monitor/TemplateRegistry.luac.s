PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+15]
        5 GETIMPORT                        R3 K3 [Instance.new]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["DISABLE_TEMPLATE_CLASSES"]
       10 JUMPIFNOT                        R5 ; [+2]
       11 LOADK                            R4 K5 ["Folder"]
       12 JUMP                             ; [+1]
       13 LOADK                            R4 K6 ["Template"]
       14 CALL                             R3 1 1
       15 MOVE                             R2 R3
       16 SETTABLEKS                       R1 R2 K7 ["Name"]
       18 SETTABLEKS                       R0 R2 K8 ["Parent"]
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["Templates"]
        2 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+16]
        6 GETIMPORT                        R3 K4 [Instance.new]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K5 ["DISABLE_TEMPLATE_CLASSES"]
       11 JUMPIFNOT                        R5 ; [+2]
       12 LOADK                            R4 K6 ["Folder"]
       13 JUMP                             ; [+1]
       14 LOADK                            R4 K7 ["Template"]
       15 CALL                             R3 1 1
       16 MOVE                             R2 R3
       17 LOADK                            R3 K0 ["Templates"]
       18 SETTABLEKS                       R3 R2 K8 ["Name"]
       20 SETTABLEKS                       R1 R2 K9 ["Parent"]
       22 MOVE                             R0 R2
       23 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTemplatesFolder"]
        3 CALL                             R1 0 1
        4 LOADK                            R4 K1 ["custom"]
        5 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+16]
        9 GETIMPORT                        R3 K5 [Instance.new]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K6 ["DISABLE_TEMPLATE_CLASSES"]
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADK                            R4 K7 ["Folder"]
       16 JUMP                             ; [+1]
       17 LOADK                            R4 K8 ["Template"]
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 LOADK                            R3 K1 ["custom"]
       21 SETTABLEKS                       R3 R2 K9 ["Name"]
       23 SETTABLEKS                       R1 R2 K10 ["Parent"]
       25 MOVE                             R0 R2
       26 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTemplatesFolder"]
        3 CALL                             R1 0 1
        4 LOADK                            R4 K1 ["std"]
        5 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+16]
        9 GETIMPORT                        R3 K5 [Instance.new]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K6 ["DISABLE_TEMPLATE_CLASSES"]
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADK                            R4 K7 ["Folder"]
       16 JUMP                             ; [+1]
       17 LOADK                            R4 K8 ["Template"]
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 LOADK                            R3 K1 ["std"]
       21 SETTABLEKS                       R3 R2 K9 ["Name"]
       23 SETTABLEKS                       R1 R2 K10 ["Parent"]
       25 MOVE                             R0 R2
       26 RETURN                           R0 1

PROTO_4:
        0 LOADN                            R5 1
        1 LOADN                            R6 1
        2 NAMECALL                         R3 R0 K0 ["sub"]
        4 CALL                             R3 3 1
        5 JUMPIFEQKS                       R3 K1 ["/"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       11 LOADK                            R3 K2 ["Template ID must start with '/'"]
       12 GETIMPORT                        R1 K4 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["getTemplatesFolder"]
       18 CALL                             R1 0 1
       19 LOADN                            R4 2
       20 NAMECALL                         R2 R0 K0 ["sub"]
       22 CALL                             R2 2 1
       23 LOADK                            R4 K6 ["[^/]+"]
       24 NAMECALL                         R2 R2 K7 ["gmatch"]
       26 CALL                             R2 2 3
       27 FORGPREP                         R2
       28 MOVE                             R9 R5
       29 NAMECALL                         R7 R1 K8 ["FindFirstChild"]
       31 CALL                             R7 2 1
       32 JUMPIF                           R7 ; [+2]
       33 LOADNIL                          R8
       34 RETURN                           R8 1
       35 MOVE                             R1 R7
       36 FORGLOOP                         R2 1 ; [-9]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K9 ["DISABLE_TEMPLATE_CLASSES"]
       41 JUMPIFNOT                        R6 ; [+2]
       42 LOADK                            R5 K10 ["Folder"]
       43 JUMP                             ; [+1]
       44 LOADK                            R5 K11 ["Template"]
       45 NAMECALL                         R3 R1 K12 ["IsA"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+2]
       49 MOVE                             R2 R1
       50 RETURN                           R2 1
       51 LOADNIL                          R2
       52 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetAttributes"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADN                            R9 1
        7 LOADN                            R10 6
        8 NAMECALL                         R7 R5 K1 ["sub"]
       10 CALL                             R7 3 1
       11 JUMPIFNOTEQKS                    R7 K2 ["param_"] ; [+7]
       13 LOADN                            R9 7
       14 NAMECALL                         R7 R5 K1 ["sub"]
       16 CALL                             R7 2 1
       17 SETTABLE                         R6 R1 R7
       18 JUMP                             ; [+18]
       19 LOADN                            R9 1
       20 LOADN                            R10 5
       21 NAMECALL                         R7 R5 K1 ["sub"]
       23 CALL                             R7 3 1
       24 JUMPIFNOTEQKS                    R7 K3 ["bind_"] ; [+12]
       26 LOADN                            R9 6
       27 NAMECALL                         R7 R5 K1 ["sub"]
       29 CALL                             R7 2 1
       30 DUPTABLE                         R8 K6 [{"type", "expr"}]
       31 LOADK                            R9 K7 ["Expr"]
       32 SETTABLEKS                       R9 R8 K4 ["type"]
       34 SETTABLEKS                       R6 R8 K5 ["expr"]
       36 SETTABLE                         R8 R1 R7
       37 FORGLOOP                         R2 2 ; [-32]
       39 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["getTemplatesFolder"]
        7 CALL                             R3 0 1
        8 JUMPIFEQ                         R2 R3 ; [+13]
       10 LOADN                            R5 1
       11 GETTABLEKS                       R6 R2 K1 ["Name"]
       13 FASTCALL3                        TABLE_INSERT R1 R5 R6
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K4 [table.insert]
       18 CALL                             R3 3 0
       19 GETTABLEKS                       R2 R2 K5 ["Parent"]
       21 JUMPBACK                         ; [-19]
       22 LOADK                            R4 K6 ["/"]
       23 GETIMPORT                        R5 K8 [table.concat]
       25 MOVE                             R6 R1
       26 LOADK                            R7 K6 ["/"]
       27 CALL                             R5 2 1
       28 CONCAT                           R3 R4 R5
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 GETTABLEKS                       R2 R2 K9 ["Debug"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R4 R2 K12 ["getTemplatesFolder"]
       27 DUPCLOSURE                       R4 K13 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R2 K14 ["getCustomFolder"]
       32 DUPCLOSURE                       R4 K15 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R2 K16 ["getStdFolder"]
       37 DUPCLOSURE                       R4 K17 [PROTO_4]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R2 K18 ["getTemplate"]
       42 DUPCLOSURE                       R4 K19 [PROTO_5]
       43 SETTABLEKS                       R4 R2 K20 ["getParams"]
       45 DUPCLOSURE                       R4 K21 [PROTO_6]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R4 R2 K22 ["getId"]
       49 RETURN                           R2 1
