PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["(%S+)=(%S+)"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R5 ; [+2]
        8 JUMPIFNOT                        R6 ; [+1]
        9 SETTABLE                         R6 R1 R5
       10 FORGLOOP                         R2 2 ; [-4]
       12 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+32]
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R3 0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       14 MOVE                             R9 R2
       15 MOVE                             R10 R6
       16 GETIMPORT                        R8 K3 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R3 2 ; [-8]
       21 GETIMPORT                        R3 K5 [table.sort]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETIMPORT                        R3 K7 [error]
       27 LOADK                            R5 K8 ["Argument must be one of: %*"]
       28 GETIMPORT                        R7 K10 [table.concat]
       30 MOVE                             R8 R2
       31 LOADK                            R9 K11 [", "]
       32 CALL                             R7 2 1
       33 NAMECALL                         R5 R5 K12 ["format"]
       35 CALL                             R5 2 1
       36 MOVE                             R4 R5
       37 CALL                             R3 1 0
       38 GETUPVAL                         R4 1
       39 GETTABLE                         R3 R4 R1
       40 JUMPIFNOTEQKNIL                  R3 ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 ["Argument must be a number"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TONUMBER R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [tonumber]
        8 CALL                             R2 1 1
        9 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["Argument must be a number"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 NEWTABLE                         R3 2 0
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K9 ["true"]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K10 ["1"]
       23 GETTABLEKS                       R4 R1 K11 ["assign"]
       25 NEWTABLE                         R5 2 0
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R5 K12 ["false"]
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K13 ["0"]
       33 MOVE                             R6 R3
       34 CALL                             R4 2 1
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R6 K15 [PROTO_2]
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R7 K16 [PROTO_3]
       41 DUPCLOSURE                       R8 K17 [PROTO_4]
       42 DUPTABLE                         R9 K21 [{"parseSlashCommandArgs", "getOptionalBoolean", "getOptionalNumber"}]
       43 SETTABLEKS                       R2 R9 K18 ["parseSlashCommandArgs"]
       45 SETTABLEKS                       R6 R9 K19 ["getOptionalBoolean"]
       47 SETTABLEKS                       R8 R9 K20 ["getOptionalNumber"]
       49 RETURN                           R9 1
