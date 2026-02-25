PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["plugin"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       10 LOADK                            R4 K2 ["PluginProvider expected to be given the plugin"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K5 ["_context"]
       16 GETUPVAL                         R3 0
       17 SETTABLE                         R1 R2 R3
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["oneChild"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["Children"]
        8 GETTABLE                         R2 R3 R4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["A component must be provided"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R4 R0 K3 ["_context"]
       12 GETUPVAL                         R5 0
       13 GETTABLE                         R3 R4 R5
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       20 LOADK                            R3 K4 ["A PluginProvider was not put into the Roact tree"]
       21 GETIMPORT                        R1 K2 [assert]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R2 R0 K3 ["_context"]
       26 GETUPVAL                         R3 0
       27 GETTABLE                         R1 R2 R3
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R7 K1 [script]
       20 GETTABLEKS                       R6 R7 K2 ["Parent"]
       22 GETTABLEKS                       R5 R6 K2 ["Parent"]
       24 GETTABLEKS                       R4 R5 K7 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["Symbol"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R2 K9 ["named"]
       31 LOADK                            R4 K10 ["StudioPlugin"]
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       35 LOADK                            R6 K12 ["PluginProvider"]
       36 NAMECALL                         R4 R4 K13 ["extend"]
       38 CALL                             R4 2 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R5 R4 K17 ["render"]
       47 DUPCLOSURE                       R5 K18 [PROTO_2]
       48 CAPTURE                          VAL R3
       49 DUPTABLE                         R6 K21 [{"Provider", "getPlugin"}]
       50 SETTABLEKS                       R4 R6 K19 ["Provider"]
       52 SETTABLEKS                       R5 R6 K20 ["getPlugin"]
       54 RETURN                           R6 1
