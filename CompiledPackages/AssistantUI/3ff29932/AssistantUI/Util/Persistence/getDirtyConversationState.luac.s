PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["threads"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K1 ["isDirty"]
       13 JUMPIFNOT                        R9 ; [+70]
       14 GETTABLEKS                       R9 R8 K2 ["ephemeral"]
       16 JUMPIF                           R9 ; [+67]
       17 SETTABLE                         R8 R1 R7
       18 GETIMPORT                        R9 K4 [next]
       20 GETTABLEKS                       R10 R8 K5 ["messages"]
       22 CALL                             R9 1 1
       23 JUMPIFEQKNIL                     R9 ; [+60]
       25 NEWTABLE                         R9 0 0
       27 NEWTABLE                         R10 0 0
       29 GETTABLEKS                       R11 R8 K5 ["messages"]
       31 LOADNIL                          R12
       32 LOADNIL                          R13
       33 FORGPREP                         R11
       34 GETTABLEKS                       R16 R15 K1 ["isDirty"]
       36 JUMPIFNOT                        R16 ; [+31]
       37 GETTABLEKS                       R16 R15 K2 ["ephemeral"]
       39 JUMPIF                           R16 ; [+28]
       40 SETTABLE                         R15 R9 R14
       41 GETTABLEKS                       R16 R15 K6 ["contents"]
       43 JUMPIFNOT                        R16 ; [+24]
       44 GETIMPORT                        R16 K4 [next]
       46 GETTABLEKS                       R17 R15 K6 ["contents"]
       48 CALL                             R16 1 1
       49 JUMPIFEQKNIL                     R16 ; [+18]
       51 NEWTABLE                         R16 0 0
       53 GETTABLEKS                       R17 R15 K6 ["contents"]
       55 LOADNIL                          R18
       56 LOADNIL                          R19
       57 FORGPREP                         R17
       58 GETTABLEKS                       R22 R21 K1 ["isDirty"]
       60 JUMPIFNOT                        R22 ; [+4]
       61 GETTABLEKS                       R22 R21 K2 ["ephemeral"]
       63 JUMPIF                           R22 ; [+1]
       64 SETTABLE                         R21 R16 R20
       65 FORGLOOP                         R17 2 ; [-8]
       67 SETTABLE                         R16 R10 R14
       68 FORGLOOP                         R11 2 ; [-35]
       70 GETIMPORT                        R11 K4 [next]
       72 MOVE                             R12 R9
       73 CALL                             R11 1 1
       74 JUMPIFEQKNIL                     R11 ; [+2]
       76 SETTABLE                         R9 R2 R7
       77 GETIMPORT                        R11 K4 [next]
       79 MOVE                             R12 R10
       80 CALL                             R11 1 1
       81 JUMPIFEQKNIL                     R11 ; [+2]
       83 SETTABLE                         R10 R3 R7
       84 FORGLOOP                         R4 2 ; [-74]
       86 DUPTABLE                         R4 K7 [{"threads", "messages", "contents"}]
       87 SETTABLEKS                       R1 R4 K0 ["threads"]
       89 SETTABLEKS                       R2 R4 K5 ["messages"]
       91 SETTABLEKS                       R3 R4 K6 ["contents"]
       93 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
