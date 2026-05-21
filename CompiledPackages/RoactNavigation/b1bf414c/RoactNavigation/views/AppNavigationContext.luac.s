PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K2 ["AppNavigationContext.Provider requires a 'navigation' prop."]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R2 R0 K3 ["_context"]
       13 GETUPVAL                         R3 1
       14 DUPTABLE                         R4 K4 [{"navigation"}]
       15 SETTABLEKS                       R1 R4 K1 ["navigation"]
       17 SETTABLE                         R4 R2 R3
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["oneChild"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["Children"]
        8 GETTABLE                         R2 R3 R4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["render"]
        4 GETTABLEKS                       R3 R0 K2 ["_context"]
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+2]
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R3 R0 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["navigation"]
       15 JUMPIF                           R3 ; [+2]
       16 GETTABLEKS                       R3 R2 K3 ["navigation"]
       18 GETUPVAL                         R4 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 LOADK                            R6 K4 ["AppNavigationContext.Consumer requires 'render' prop."]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 LOADK                            R6 K5 ["AppNavigationContext.Consumer requires a navigation prop or context entry."]
       31 CALL                             R4 2 0
       32 MOVE                             R4 R1
       33 MOVE                             R5 R3
       34 CALL                             R4 1 -1
       35 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K2 ["join"]
        9 DUPTABLE                         R4 K4 [{"navigation"}]
       10 SETTABLEKS                       R0 R4 K3 ["navigation"]
       12 GETUPVAL                         R5 3
       13 CALL                             R3 2 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"navigation", "render"}]
        7 GETTABLEKS                       R5 R1 K2 ["navigation"]
        9 SETTABLEKS                       R5 R4 K2 ["navigation"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R5 R4 K3 ["render"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["NavigationConnection(%s)"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [tostring]
        7 CALL                             R3 1 1
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K6 ["Component"]
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K7 ["extend"]
       15 CALL                             R2 2 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R3 R2 K8 ["render"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K4 ["Parent"]
       35 GETTABLEKS                       R3 R3 K7 ["NavigationSymbol"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K1 [require]
       40 GETIMPORT                        R4 K3 [script]
       42 GETTABLEKS                       R4 R4 K4 ["Parent"]
       44 GETTABLEKS                       R4 R4 K4 ["Parent"]
       46 GETTABLEKS                       R4 R4 K8 ["utils"]
       48 GETTABLEKS                       R4 R4 K9 ["validate"]
       50 CALL                             R3 1 1
       51 MOVE                             R4 R2
       52 LOADK                            R5 K10 ["APP_NAVIGATION_CONTEXT"]
       53 CALL                             R4 1 1
       54 GETTABLEKS                       R5 R0 K11 ["Component"]
       56 LOADK                            R7 K12 ["NavigationProvider"]
       57 NAMECALL                         R5 R5 K13 ["extend"]
       59 CALL                             R5 2 1
       60 DUPCLOSURE                       R6 K14 [PROTO_0]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R6 R5 K15 ["init"]
       65 DUPCLOSURE                       R6 K16 [PROTO_1]
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R6 R5 K17 ["render"]
       69 GETTABLEKS                       R6 R0 K11 ["Component"]
       71 LOADK                            R8 K18 ["NavigationConsumer"]
       72 NAMECALL                         R6 R6 K13 ["extend"]
       74 CALL                             R6 2 1
       75 DUPCLOSURE                       R7 K19 [PROTO_2]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R7 R6 K17 ["render"]
       80 DUPCLOSURE                       R7 K20 [PROTO_5]
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R1
       84 DUPTABLE                         R8 K24 [{"Provider", "Consumer", "connect"}]
       85 SETTABLEKS                       R5 R8 K21 ["Provider"]
       87 SETTABLEKS                       R6 R8 K22 ["Consumer"]
       89 SETTABLEKS                       R7 R8 K23 ["connect"]
       91 RETURN                           R8 1
