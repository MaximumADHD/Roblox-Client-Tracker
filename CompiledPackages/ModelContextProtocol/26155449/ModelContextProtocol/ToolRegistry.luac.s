PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 MOVE                             R3 R1
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+5]
        7 GETUPVAL                         R4 0
        8 LOADNIL                          R5
        9 SETTABLE                         R5 R4 R0
       10 JUMP                             ; [+2]
       11 GETUPVAL                         R4 0
       12 SETTABLE                         R3 R4 R0
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K0 ["toolsChanged"]
       16 CALL                             R4 0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K1 [error]
        3 LOADK                            R3 K2 ["Tool already exists: "]
        4 GETUPVAL                         R4 0
        5 CONCAT                           R2 R3 R4
        6 CALL                             R1 1 0
        7 DUPTABLE                         R1 K5 [{"tool", "disabled"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["tool"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K4 ["disabled"]
       14 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["definition"]
        2 GETTABLEKS                       R1 R2 K1 ["name"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R1
        9 MOVE                             R4 R2
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKNIL                  R4 ; [+5]
       14 GETUPVAL                         R5 0
       15 LOADNIL                          R6
       16 SETTABLE                         R6 R5 R1
       17 JUMP                             ; [+2]
       18 GETUPVAL                         R5 0
       19 SETTABLE                         R4 R5 R1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K2 ["toolsChanged"]
       23 CALL                             R5 0 0
       24 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["disabled"]
        4 RETURN                           R0 1
        5 GETIMPORT                        R1 K2 [error]
        7 LOADK                            R3 K3 ["Tool not found: "]
        8 GETUPVAL                         R4 1
        9 CONCAT                           R2 R3 R4
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R3
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKNIL                  R4 ; [+5]
       10 GETUPVAL                         R5 0
       11 LOADNIL                          R6
       12 SETTABLE                         R6 R5 R0
       13 JUMP                             ; [+2]
       14 GETUPVAL                         R5 0
       15 SETTABLE                         R4 R5 R0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K0 ["toolsChanged"]
       19 CALL                             R5 0 0
       20 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [error]
        5 LOADK                            R3 K2 ["Tool not found: "]
        6 GETUPVAL                         R4 0
        7 CONCAT                           R2 R3 R4
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 MOVE                             R3 R1
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+5]
        9 GETUPVAL                         R4 0
       10 LOADNIL                          R5
       11 SETTABLE                         R5 R4 R0
       12 JUMP                             ; [+2]
       13 GETUPVAL                         R4 0
       14 SETTABLE                         R3 R4 R0
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K0 ["toolsChanged"]
       18 CALL                             R4 0 0
       19 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["tool"]
        8 GETTABLEKS                       R7 R5 K1 ["disabled"]
       10 JUMPIF                           R7 ; [+11]
       11 GETTABLEKS                       R7 R6 K2 ["mcpDisabled"]
       13 JUMPIF                           R7 ; [+8]
       14 GETTABLEKS                       R9 R6 K3 ["definition"]
       16 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       18 MOVE                             R8 R0
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R1 2 ; [-17]
       24 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R2 R1 K0 ["disabled"]
        5 JUMPIF                           R2 ; [+5]
        6 GETTABLEKS                       R3 R1 K1 ["tool"]
        8 GETTABLEKS                       R2 R3 K2 ["handler"]
       10 RETURN                           R2 1
       11 GETIMPORT                        R2 K4 [error]
       13 LOADK                            R4 K5 ["Tool not found: "]
       14 MOVE                             R5 R0
       15 CONCAT                           R3 R4 R5
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["ServerRegistry"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 NEWTABLE                         R3 8 0
       19 NEWTABLE                         R4 0 0
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R1
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          REF R4
       26 SETTABLEKS                       R6 R3 K8 ["hasTool"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          REF R4
       30 SETTABLEKS                       R6 R3 K9 ["clear"]
       32 NEWCLOSURE                       R6 P3
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R6 R3 K10 ["addTool"]
       37 NEWCLOSURE                       R6 P4
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R6 R3 K11 ["setToolDisabled"]
       42 NEWCLOSURE                       R6 P5
       43 CAPTURE                          REF R4
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R6 R3 K12 ["removeTool"]
       47 NEWCLOSURE                       R6 P6
       48 CAPTURE                          REF R4
       49 SETTABLEKS                       R6 R3 K13 ["getDefinitions"]
       51 NEWCLOSURE                       R6 P7
       52 CAPTURE                          REF R4
       53 SETTABLEKS                       R6 R3 K14 ["getHandler"]
       55 CLOSEUPVALS                      R4
       56 RETURN                           R3 1
