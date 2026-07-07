PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["integrations cannot be nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 NEWTABLE                         R1 0 0
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K3 ["label"]
       15 SETTABLE                         R6 R1 R7
       16 FORGLOOP                         R2 2 ; [-4]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["get"]
       10 CALL                             R1 0 1
       11 GETTABLEKS                       R1 R1 K2 ["EventLogger"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["current"]
       16 JUMPIF                           R2 ; [+37]
       17 GETUPVAL                         R2 1
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R10 R6 K3 ["label"]
       24 GETTABLE                         R8 R9 R10
       25 JUMPIFEQKB                       R8 TRUE ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 GETTABLEKS                       R8 R1 K4 ["logIntegrationEvent"]
       31 DUPTABLE                         R9 K7 [{"action", "label", "url"}]
       32 JUMPIFNOT                        R7 ; [+2]
       33 LOADK                            R10 K8 ["INTEGRATION_LOADED_DISABLED"]
       34 JUMP                             ; [+1]
       35 LOADK                            R10 K9 ["INTEGRATION_LOADED_ENABLED"]
       36 SETTABLEKS                       R10 R9 K5 ["action"]
       38 GETTABLEKS                       R10 R6 K3 ["label"]
       40 SETTABLEKS                       R10 R9 K3 ["label"]
       42 GETTABLEKS                       R10 R6 K6 ["url"]
       44 SETTABLEKS                       R10 R9 K6 ["url"]
       46 CALL                             R8 1 0
       47 FORGLOOP                         R2 2 ; [-27]
       49 GETUPVAL                         R2 0
       50 GETUPVAL                         R3 1
       51 SETTABLEKS                       R3 R2 K0 ["current"]
       53 RETURN                           R0 0
       54 JUMPIFNOTEQKNIL                  R0 ; [+6]
       56 GETUPVAL                         R2 0
       57 GETUPVAL                         R3 1
       58 SETTABLEKS                       R3 R2 K0 ["current"]
       60 RETURN                           R0 0
       61 FASTCALL2K                       ASSERT R0 K10 ; [+5]
       63 MOVE                             R4 R0
       64 LOADK                            R5 K10 ["integrations cannot be nil"]
       65 GETIMPORT                        R3 K12 [assert]
       67 CALL                             R3 2 0
       68 NEWTABLE                         R3 0 0
       70 MOVE                             R4 R0
       71 LOADNIL                          R5
       72 LOADNIL                          R6
       73 FORGPREP                         R4
       74 GETTABLEKS                       R9 R8 K3 ["label"]
       76 SETTABLE                         R8 R3 R9
       77 FORGLOOP                         R4 2 ; [-4]
       79 MOVE                             R2 R3
       80 GETUPVAL                         R4 1
       81 FASTCALL2K                       ASSERT R4 K10 ; [+5]
       83 MOVE                             R6 R4
       84 LOADK                            R7 K10 ["integrations cannot be nil"]
       85 GETIMPORT                        R5 K12 [assert]
       87 CALL                             R5 2 0
       88 NEWTABLE                         R5 0 0
       90 MOVE                             R6 R4
       91 LOADNIL                          R7
       92 LOADNIL                          R8
       93 FORGPREP                         R6
       94 GETTABLEKS                       R11 R10 K3 ["label"]
       96 SETTABLE                         R10 R5 R11
       97 FORGLOOP                         R6 2 ; [-4]
       99 MOVE                             R3 R5
      100 MOVE                             R4 R3
      101 LOADNIL                          R5
      102 LOADNIL                          R6
      103 FORGPREP                         R4
      104 GETTABLE                         R9 R2 R7
      105 JUMPIF                           R9 ; [+10]
      106 GETTABLEKS                       R9 R1 K4 ["logIntegrationEvent"]
      108 DUPTABLE                         R10 K14 [{["action"] = "INTEGRATION_ADDED", ["label"], ["url"]}]
      109 SETTABLEKS                       R7 R10 K3 ["label"]
      111 GETTABLEKS                       R11 R8 K6 ["url"]
      113 SETTABLEKS                       R11 R10 K6 ["url"]
      115 CALL                             R9 1 0
      116 FORGLOOP                         R4 2 ; [-13]
      118 MOVE                             R4 R2
      119 LOADNIL                          R5
      120 LOADNIL                          R6
      121 FORGPREP                         R4
      122 GETTABLE                         R9 R3 R7
      123 JUMPIF                           R9 ; [+10]
      124 GETTABLEKS                       R9 R1 K4 ["logIntegrationEvent"]
      126 DUPTABLE                         R10 K16 [{["action"] = "INTEGRATION_DELETED", ["label"], ["url"]}]
      127 SETTABLEKS                       R7 R10 K3 ["label"]
      129 GETTABLEKS                       R11 R8 K6 ["url"]
      131 SETTABLEKS                       R11 R10 K6 ["url"]
      133 CALL                             R9 1 0
      134 FORGLOOP                         R4 2 ; [-13]
      136 GETUPVAL                         R4 0
      137 GETUPVAL                         R5 1
      138 SETTABLEKS                       R5 R4 K0 ["current"]
      140 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["IntegrationManagement"]
       20 GETTABLEKS                       R3 R3 K10 ["IntegrationTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K21 [{["Added"] = "INTEGRATION_ADDED", ["Deleted"] = "INTEGRATION_DELETED", ["LoadedEnabled"] = "INTEGRATION_LOADED_ENABLED", ["LoadedDisabled"] = "INTEGRATION_LOADED_DISABLED"}]
       31 DUPCLOSURE                       R5 K22 [PROTO_0]
       32 DUPCLOSURE                       R6 K23 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 RETURN                           R6 1
