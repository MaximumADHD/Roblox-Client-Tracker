PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 DUPTABLE                         R3 K5 [{[1], ["watching"], ["stale"], ["thread"] = }]
       11 SETTABLEKS                       R1 R3 K0 ["roots"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K1 ["watching"]
       17 NEWTABLE                         R4 0 0
       19 SETTABLEKS                       R4 R3 K2 ["stale"]
       21 GETUPVAL                         R4 0
       22 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       24 GETIMPORT                        R2 K7 [setmetatable]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addFile"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["roots"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R8 R1
        8 NAMECALL                         R9 R5 K1 ["GetFullName"]
       10 CALL                             R9 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R7 K4 [table.insert]
       14 CALL                             R7 -1 0
       15 FORGLOOP                         R2 2 ; [-9]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K5 ["log"]
       20 LOADK                            R3 K6 ["TemplateMonitor"]
       21 LOADK                            R4 K7 ["Monitoring roots for template refs:"]
       22 GETIMPORT                        R5 K9 [table.concat]
       24 MOVE                             R6 R1
       25 LOADK                            R7 K10 [", "]
       26 CALL                             R5 2 -1
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 1
       29 LOADK                            R4 K11 ["template-file"]
       30 NAMECALL                         R2 R2 K12 ["GetTagged"]
       32 CALL                             R2 2 1
       33 MOVE                             R3 R2
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R0 K13 ["addFile"]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 ; [-5]
       43 GETUPVAL                         R3 1
       44 LOADK                            R5 K11 ["template-file"]
       45 NAMECALL                         R3 R3 K14 ["GetInstanceAddedSignal"]
       47 CALL                             R3 2 1
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R3 R3 K15 ["Connect"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R0 K16 ["connection"]
       55 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["connection"]
       11 GETTABLEKS                       R1 R0 K2 ["thread"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETIMPORT                        R1 K5 [task.cancel]
       16 GETTABLEKS                       R2 R0 K2 ["thread"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["thread"]
       22 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["ModuleScript"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETTABLEKS                       R4 R0 K3 ["roots"]
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 GETTABLEKS                       R2 R2 K2 ["Parent"]
       18 JUMPBACK                         ; [-10]
       19 LOADB                            R3 0
       20 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["flush"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["thread"]
        8 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["isValid"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["log"]
        9 LOADK                            R3 K2 ["TemplateMonitor"]
       10 LOADK                            R4 K3 ["Watching template file:"]
       11 NAMECALL                         R5 R1 K4 ["GetFullName"]
       13 CALL                             R5 1 -1
       14 CALL                             R2 -1 0
       15 GETTABLEKS                       R2 R0 K5 ["watching"]
       17 LOADB                            R3 1
       18 SETTABLE                         R3 R2 R1
       19 GETTABLEKS                       R2 R0 K6 ["stale"]
       21 LOADB                            R3 1
       22 SETTABLE                         R3 R2 R1
       23 GETTABLEKS                       R2 R0 K7 ["thread"]
       25 JUMPIF                           R2 ; [+7]
       26 GETIMPORT                        R2 K10 [task.defer]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          VAL R0
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R0 K7 ["thread"]
       33 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [debug]
        2 GETTABLEKS                       R1 R1 K2 ["loadmodule"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [getfenv]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETIMPORT                        R3 K6 [setfenv]
       12 MOVE                             R4 R1
       13 DUPTABLE                         R6 K8 [{"require"}]
       14 GETUPVAL                         R7 0
       15 SETTABLEKS                       R7 R6 K7 ["require"]
       17 DUPTABLE                         R7 K10 [{"__index"}]
       18 SETTABLEKS                       R2 R7 K9 ["__index"]
       20 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       22 GETIMPORT                        R5 K12 [setmetatable]
       24 CALL                             R5 2 1
       25 CALL                             R3 2 0
       26 MOVE                             R3 R1
       27 CALL                             R3 0 -1
       28 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCustomFolder"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["watching"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R9 R5 K2 ["Name"]
       11 NAMECALL                         R7 R1 K3 ["FindFirstChild"]
       13 CALL                             R7 2 1
       14 JUMPIF                           R7 ; [+16]
       15 GETIMPORT                        R7 K6 [Instance.new]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K7 ["DISABLE_TEMPLATE_CLASSES"]
       20 JUMPIFNOT                        R9 ; [+2]
       21 LOADK                            R8 K8 ["Folder"]
       22 JUMP                             ; [+1]
       23 LOADK                            R8 K9 ["Template"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R8 R5 K2 ["Name"]
       27 SETTABLEKS                       R8 R7 K2 ["Name"]
       29 SETTABLEKS                       R1 R7 K10 ["Parent"]
       31 FORGLOOP                         R2 2 ; [-23]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          VAL R2
       35 GETTABLEKS                       R3 R0 K1 ["watching"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 GETTABLEKS                       R9 R0 K11 ["stale"]
       42 GETTABLE                         R8 R9 R6
       43 JUMPIFNOT                        R8 ; [+62]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K12 ["log"]
       47 LOADK                            R9 K13 ["TemplateMonitor"]
       48 LOADK                            R10 K14 ["Generate template tree:"]
       49 NAMECALL                         R11 R6 K15 ["GetFullName"]
       51 CALL                             R11 1 -1
       52 CALL                             R8 -1 0
       53 GETTABLEKS                       R10 R6 K2 ["Name"]
       55 NAMECALL                         R8 R1 K3 ["FindFirstChild"]
       57 CALL                             R8 2 1
       58 NAMECALL                         R9 R8 K16 ["ClearAllChildren"]
       60 CALL                             R9 1 0
       61 MOVE                             R9 R2
       62 MOVE                             R10 R6
       63 CALL                             R9 1 1
       64 GETUPVAL                         R10 2
       65 MOVE                             R11 R9
       66 MOVE                             R12 R8
       67 CALL                             R10 2 0
       68 GETTABLEKS                       R10 R6 K17 ["Source"]
       70 LOADK                            R12 K18 ["-- BEGIN CONTROLLER"]
       71 NAMECALL                         R10 R10 K19 ["find"]
       73 CALL                             R10 2 1
       74 GETTABLEKS                       R11 R6 K17 ["Source"]
       76 LOADK                            R13 K20 ["-- END CONTROLLER"]
       77 NAMECALL                         R11 R11 K19 ["find"]
       79 CALL                             R11 2 1
       80 JUMPIFNOT                        R10 ; [+25]
       81 JUMPIFNOT                        R11 ; [+24]
       82 GETTABLEKS                       R12 R6 K17 ["Source"]
       84 ADDK                             R14 R10 K21 [19]
       85 SUBK                             R15 R11 K22 [1]
       86 NAMECALL                         R12 R12 K23 ["sub"]
       88 CALL                             R12 3 1
       89 GETIMPORT                        R13 K6 [Instance.new]
       91 LOADK                            R14 K24 ["ModuleScript"]
       92 CALL                             R13 1 1
       93 LOADK                            R14 K25 ["controller"]
       94 SETTABLEKS                       R14 R13 K2 ["Name"]
       96 LOADK                            R15 K26 ["return function(ctx, api)%*\nend"]
       97 MOVE                             R17 R12
       98 NAMECALL                         R15 R15 K27 ["format"]
      100 CALL                             R15 2 1
      101 MOVE                             R14 R15
      102 SETTABLEKS                       R14 R13 K17 ["Source"]
      104 SETTABLEKS                       R8 R13 K10 ["Parent"]
      106 FORGLOOP                         R3 2 ; [-67]
      108 NEWTABLE                         R3 0 0
      110 SETTABLEKS                       R3 R0 K11 ["stale"]
      112 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [script]
        7 GETTABLEKS                       R1 R1 K3 ["Parent"]
        9 GETTABLEKS                       R1 R1 K3 ["Parent"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Debug"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K9 [game]
       23 LOADK                            R6 K10 ["CollectionService"]
       24 NAMECALL                         R4 R4 K11 ["GetService"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETIMPORT                        R6 K2 [script]
       31 GETTABLEKS                       R6 R6 K3 ["Parent"]
       33 GETTABLEKS                       R6 R6 K12 ["TemplateRegistry"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETIMPORT                        R7 K2 [script]
       40 GETTABLEKS                       R7 R7 K3 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["updateTemplateFromAst"]
       44 CALL                             R6 1 1
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R7 R0 K14 ["new"]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R0 K15 ["watch"]
       54 NEWCLOSURE                       R7 P2
       55 SETTABLEKS                       R7 R0 K16 ["stop"]
       57 NEWCLOSURE                       R7 P3
       58 SETTABLEKS                       R7 R0 K17 ["isValid"]
       60 NEWCLOSURE                       R7 P4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R7 R0 K18 ["addFile"]
       64 NEWCLOSURE                       R7 P5
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R7 R0 K19 ["flush"]
       70 RETURN                           R0 1
