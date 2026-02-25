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
        1 DUPTABLE                         R0 K6 [{"NumAllResults", "NumAllScripts", "NumAllElements", "BaseIndex", "QueryId", "Results"}]
        2 LOADN                            R1 4
        3 SETTABLEKS                       R1 R0 K0 ["NumAllResults"]
        5 LOADN                            R1 2
        6 SETTABLEKS                       R1 R0 K1 ["NumAllScripts"]
        8 LOADN                            R1 6
        9 SETTABLEKS                       R1 R0 K2 ["NumAllElements"]
       11 LOADN                            R1 255
       12 SETTABLEKS                       R1 R0 K3 ["BaseIndex"]
       14 LOADN                            R1 1
       15 SETTABLEKS                       R1 R0 K4 ["QueryId"]
       17 NEWTABLE                         R1 0 2
       19 DUPTABLE                         R2 K14 [{"Guid", "Name", "Type", "NumMatches", "Id", "Matches", "Lines"}]
       20 LOADK                            R3 K15 ["1234"]
       21 SETTABLEKS                       R3 R2 K7 ["Guid"]
       23 LOADK                            R3 K16 ["Workspace.Baseplate.Script"]
       24 SETTABLEKS                       R3 R2 K8 ["Name"]
       26 LOADN                            R3 0
       27 SETTABLEKS                       R3 R2 K9 ["Type"]
       29 LOADN                            R3 2
       30 SETTABLEKS                       R3 R2 K10 ["NumMatches"]
       32 LOADN                            R3 0
       33 SETTABLEKS                       R3 R2 K11 ["Id"]
       35 NEWTABLE                         R3 0 2
       37 LOADK                            R4 K17 ["Item 1.1"]
       38 LOADK                            R5 K18 ["Item 1.2"]
       39 SETLIST                          R3 R4 2 [1]
       41 SETTABLEKS                       R3 R2 K12 ["Matches"]
       43 NEWTABLE                         R3 0 2
       45 LOADN                            R4 1
       46 LOADN                            R5 2
       47 SETLIST                          R3 R4 2 [1]
       49 SETTABLEKS                       R3 R2 K13 ["Lines"]
       51 DUPTABLE                         R3 K14 [{"Guid", "Name", "Type", "NumMatches", "Id", "Matches", "Lines"}]
       52 LOADK                            R4 K19 ["5678"]
       53 SETTABLEKS                       R4 R3 K7 ["Guid"]
       55 LOADK                            R4 K20 ["ReplacatedStorage.Modules.MyGreatModuleScript"]
       56 SETTABLEKS                       R4 R3 K8 ["Name"]
       58 LOADN                            R4 2
       59 SETTABLEKS                       R4 R3 K9 ["Type"]
       61 LOADN                            R4 2
       62 SETTABLEKS                       R4 R3 K10 ["NumMatches"]
       64 LOADN                            R4 1
       65 SETTABLEKS                       R4 R3 K11 ["Id"]
       67 NEWTABLE                         R4 0 2
       69 LOADK                            R5 K21 ["Item 2.1"]
       70 LOADK                            R6 K22 ["Item 2.2"]
       71 SETLIST                          R4 R5 2 [1]
       73 SETTABLEKS                       R4 R3 K12 ["Matches"]
       75 NEWTABLE                         R4 0 2
       77 LOADN                            R5 42
       78 LOADN                            R6 142
       79 SETLIST                          R4 R5 2 [1]
       81 SETTABLEKS                       R4 R3 K13 ["Lines"]
       83 SETLIST                          R1 R2 2 [1]
       85 SETTABLEKS                       R1 R0 K5 ["Results"]
       87 DUPCLOSURE                       R1 K23 [PROTO_0]
       88 CAPTURE                          VAL R1
       89 DUPCLOSURE                       R2 K24 [PROTO_1]
       90 CAPTURE                          VAL R2
       91 DUPCLOSURE                       R3 K25 [PROTO_2]
       92 CAPTURE                          VAL R3
       93 DUPTABLE                         R4 K30 [{"testFindResults", "findFirstDescendant", "findDescendants", "printAllDescendants"}]
       94 SETTABLEKS                       R0 R4 K26 ["testFindResults"]
       96 SETTABLEKS                       R1 R4 K27 ["findFirstDescendant"]
       98 SETTABLEKS                       R2 R4 K28 ["findDescendants"]
      100 SETTABLEKS                       R3 R4 K29 ["printAllDescendants"]
      102 RETURN                           R4 1
