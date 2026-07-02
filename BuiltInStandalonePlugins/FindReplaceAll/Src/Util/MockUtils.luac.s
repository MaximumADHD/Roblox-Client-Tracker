PROTO_0:
        0 JUMPIF                           R2 ; [+2]
        1 LOADN                            R3 0
        2 JUMP                             ; [+1]
        3 MOVE                             R3 R2
        4 NAMECALL                         R4 R0 K0 ["GetChildren"]
        6 CALL                             R4 1 1
        7 GETIMPORT                        R5 K2 [ipairs]
        9 MOVE                             R6 R4
       10 CALL                             R5 1 3
       11 FORGPREP_INEXT                   R5
       12 MOVE                             R10 R1
       13 MOVE                             R11 R9
       14 CALL                             R10 1 1
       15 JUMPIFNOT                        R10 ; [+1]
       16 RETURN                           R9 1
       17 GETUPVAL                         R10 0
       18 MOVE                             R11 R9
       19 MOVE                             R12 R1
       20 ADDK                             R13 R3 K3 [1]
       21 CALL                             R10 3 1
       22 JUMPIFEQKNIL                     R10 ; [+2]
       24 RETURN                           R10 1
       25 FORGLOOP                         R5 2 [inext] ; [-14]
       27 LOADNIL                          R5
       28 RETURN                           R5 1

PROTO_1:
        0 JUMPIF                           R3 ; [+2]
        1 LOADN                            R4 0
        2 JUMP                             ; [+1]
        3 MOVE                             R4 R3
        4 NAMECALL                         R5 R0 K0 ["GetChildren"]
        6 CALL                             R5 1 1
        7 GETIMPORT                        R6 K2 [ipairs]
        9 MOVE                             R7 R5
       10 CALL                             R6 1 3
       11 FORGPREP_INEXT                   R6
       12 MOVE                             R11 R1
       13 MOVE                             R12 R10
       14 CALL                             R11 1 1
       15 JUMPIFNOT                        R11 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       18 MOVE                             R12 R2
       19 MOVE                             R13 R10
       20 GETIMPORT                        R11 K5 [table.insert]
       22 CALL                             R11 2 0
       23 GETUPVAL                         R11 0
       24 MOVE                             R12 R10
       25 MOVE                             R13 R1
       26 MOVE                             R14 R2
       27 ADDK                             R15 R4 K6 [1]
       28 CALL                             R11 4 0
       29 FORGLOOP                         R6 2 [inext] ; [-18]
       31 RETURN                           R2 1

PROTO_2:
        0 JUMPIF                           R1 ; [+2]
        1 LOADN                            R2 0
        2 JUMP                             ; [+1]
        3 MOVE                             R2 R1
        4 NAMECALL                         R3 R0 K0 ["GetChildren"]
        6 CALL                             R3 1 1
        7 GETIMPORT                        R4 K2 [ipairs]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 3
       11 FORGPREP_INEXT                   R4
       12 GETIMPORT                        R9 K5 [string.rep]
       14 LOADK                            R10 K6 ["--"]
       15 MOVE                             R11 R2
       16 CALL                             R9 2 1
       17 GETIMPORT                        R10 K8 [print]
       19 LOADK                            R12 K9 ["%* %*> %* (%*)"]
       20 MOVE                             R14 R2
       21 MOVE                             R15 R9
       22 GETTABLEKS                       R16 R8 K10 ["Name"]
       24 GETTABLEKS                       R17 R8 K11 ["ClassName"]
       26 NAMECALL                         R12 R12 K12 ["format"]
       28 CALL                             R12 5 1
       29 MOVE                             R11 R12
       30 CALL                             R10 1 0
       31 GETUPVAL                         R10 0
       32 MOVE                             R11 R8
       33 ADDK                             R12 R2 K13 [1]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R4 2 [inext] ; [-24]
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K11 [{[1] = 4, ["NumAllScripts"] = 2, ["NumAllElements"] = 6, ["BaseIndex"] = -1, ["QueryId"] = 1, ["Results"]}]
        2 NEWTABLE                         R1 0 2
        4 DUPTABLE                         R2 K22 [{["Guid"] = "1234", ["Name"] = "Workspace.Baseplate.Script", ["Type"] = 0, ["NumMatches"] = 2, ["Id"] = 0, ["Matches"], ["Lines"]}]
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K23 ["Item 1.1"]
        8 LOADK                            R5 K24 ["Item 1.2"]
        9 SETLIST                          R3 R4 2 [1]
       11 SETTABLEKS                       R3 R2 K20 ["Matches"]
       13 NEWTABLE                         R3 0 2
       15 LOADN                            R4 1
       16 LOADN                            R5 2
       17 SETLIST                          R3 R4 2 [1]
       19 SETTABLEKS                       R3 R2 K21 ["Lines"]
       21 DUPTABLE                         R3 K27 [{["Guid"] = "5678", ["Name"] = "ReplacatedStorage.Modules.MyGreatModuleScript", ["Type"] = 2, ["NumMatches"] = 2, ["Id"] = 1, ["Matches"], ["Lines"]}]
       22 NEWTABLE                         R4 0 2
       24 LOADK                            R5 K28 ["Item 2.1"]
       25 LOADK                            R6 K29 ["Item 2.2"]
       26 SETLIST                          R4 R5 2 [1]
       28 SETTABLEKS                       R4 R3 K20 ["Matches"]
       30 NEWTABLE                         R4 0 2
       32 LOADN                            R5 42
       33 LOADN                            R6 142
       34 SETLIST                          R4 R5 2 [1]
       36 SETTABLEKS                       R4 R3 K21 ["Lines"]
       38 SETLIST                          R1 R2 2 [1]
       40 SETTABLEKS                       R1 R0 K10 ["Results"]
       42 DUPCLOSURE                       R1 K30 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 DUPCLOSURE                       R2 K31 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 DUPCLOSURE                       R3 K32 [PROTO_2]
       47 CAPTURE                          VAL R3
       48 DUPTABLE                         R4 K37 [{"testFindResults", "findFirstDescendant", "findDescendants", "printAllDescendants"}]
       49 SETTABLEKS                       R0 R4 K33 ["testFindResults"]
       51 SETTABLEKS                       R1 R4 K34 ["findFirstDescendant"]
       53 SETTABLEKS                       R2 R4 K35 ["findDescendants"]
       55 SETTABLEKS                       R3 R4 K36 ["printAllDescendants"]
       57 RETURN                           R4 1
