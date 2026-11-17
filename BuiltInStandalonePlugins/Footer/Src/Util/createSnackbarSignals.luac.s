PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R0 K0 ["text"]
       14 GETTABLEKS                       R4 R1 K0 ["text"]
       16 JUMPIFEQ                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSignal"]
        3 ORK                              R2 R0 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["createSignal"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createSignal"]
       13 LOADNIL                          R6
       14 GETUPVAL                         R7 1
       15 CALL                             R5 2 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["createSignal"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K0 ["createSignal"]
       24 LOADNIL                          R10
       25 CALL                             R9 1 2
       26 GETIMPORT                        R11 K4 [table.freeze]
       28 DUPTABLE                         R12 K15 [{"getTitle", "setTitle", "getIcon", "setIcon", "getAction", "setAction", "getDuration", "setDuration", "getType", "setType"}]
       29 SETTABLEKS                       R1 R12 K5 ["getTitle"]
       31 SETTABLEKS                       R2 R12 K6 ["setTitle"]
       33 SETTABLEKS                       R3 R12 K7 ["getIcon"]
       35 SETTABLEKS                       R4 R12 K8 ["setIcon"]
       37 SETTABLEKS                       R5 R12 K9 ["getAction"]
       39 SETTABLEKS                       R6 R12 K10 ["setAction"]
       41 SETTABLEKS                       R7 R12 K11 ["getDuration"]
       43 SETTABLEKS                       R8 R12 K12 ["setDuration"]
       45 SETTABLEKS                       R9 R12 K13 ["getType"]
       47 SETTABLEKS                       R10 R12 K14 ["setType"]
       49 CALL                             R11 1 -1
       50 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
