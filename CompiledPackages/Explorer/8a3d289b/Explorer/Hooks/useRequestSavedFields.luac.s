PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["rememberedFields"]
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K1 ["fieldKey"]
       14 GETTABLE                         R6 R7 R8
       15 JUMPIFNOTEQKNIL                  R6 ; [+2]
       17 LOADB                            R8 0 +1
       18 LOADB                            R8 1
       19 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       21 LOADK                            R9 K2 ["Couldn't find remembered field"]
       22 GETIMPORT                        R7 K4 [assert]
       24 CALL                             R7 2 0
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K5 ["addField"]
       28 MOVE                             R8 R6
       29 GETTABLEKS                       R9 R5 K6 ["parameters"]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R1 2 ; [-22]
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R0
       17 JUMPIFNOT                        R5 ; [+2]
       18 GETTABLEKS                       R5 R0 K3 ["addField"]
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["AllFields"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K13 ["SettingsContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 RETURN                           R5 1
